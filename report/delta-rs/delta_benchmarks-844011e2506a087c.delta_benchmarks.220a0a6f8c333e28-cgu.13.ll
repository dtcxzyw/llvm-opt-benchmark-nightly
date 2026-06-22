inline.NumInlined: 4003
inline.NumDeleted: 1574
begin_hunk_0_@_RINvMs2_NtNtCskQDtHcQtBkN_5tokio4util17idle_notified_setINtB6_15IdleNotifiedSetINtNtNtNtBa_7runtime4task4join10JoinHandleTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEE5drainNCNvXs0_NtNtBa_4task8join_setINtB5j_7JoinSetB1V_ENtNtNtB22_3ops4drop4Drop4drop0ECs2VbMhdeEr66_16delta_benchmarks:bb.a
; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs3_NtNtCskQDtHcQtBkN_5tokio4util17idle_notified_setINtB6_20EntryInOneOfTheListsINtNtNtNtBa_7runtime4task4join10JoinHandleTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEE22with_value_and_contextNCNvMs_NtNtBa_4task8join_setINtB5F_7JoinSetB20_E14poll_join_next0INtNtNtB27_4task4poll4PollIB23_B20_NtNtB1p_5error9JoinErrorEEECs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = load ptr, ptr %1, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr @3, ptr %i.b, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.d, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.b, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr null, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  call void @_RNvXs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4joinINtB5_10JoinHandleTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEENtNtNtB1c_6future6future6Future4pollCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.h, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs3_NtNtCskQDtHcQtBkN_5tokio4util17idle_notified_setINtB6_20EntryInOneOfTheListsINtNtNtNtBa_7runtime4task4join10JoinHandleTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEE22with_value_and_contextNCNvMs_NtNtBa_4task8join_setINtB5F_7JoinSetB20_E6insert0uECs2VbMhdeEr66_16delta_benchmarks(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load ptr, ptr %0, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr @3, ptr %i.a, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.c, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  call void @_RNvMs2_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4joinINtB5_10JoinHandleTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEE14set_join_wakerCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCs8VI8w5SIoU4_15datafusion_expr13expr_rewriter14normalize_colsNtNtB4_4expr4ExprINtNtCs6Po7BT7Nknu_5alloc3vec3VecB14_EECs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(320) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 6 uses
  %.sroa.03.0.copyload.i = load i64, ptr %1, align 8, !alias.scope !32, !noalias !35
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.44.0.copyload.i = load ptr, ptr %.sroa.44.0..sroa_idx.i, align 8, !alias.scope !32, !noalias !35, !nonnull !11, !noundef !11 ; 3 uses
  %.sroa.55.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.55.0.copyload.i = load i64, ptr %.sroa.55.0..sroa_idx.i, align 8, !alias.scope !32, !noalias !35 ; 2 uses
  %i.b = icmp ult i64 %.sroa.55.0.copyload.i, 82351536043346213
  tail call void @llvm.assume(i1 %i.b)
  %i.c = getelementptr inbounds nuw [112 x i8], ptr %.sroa.44.0.copyload.i, i64 %.sroa.55.0.copyload.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37)
  store ptr %.sroa.44.0.copyload.i, ptr %i.a, align 8, !alias.scope !40, !noalias !42
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.sroa.44.0.copyload.i, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !40, !noalias !42
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %.sroa.03.0.copyload.i, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !40, !noalias !42
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.c, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !40, !noalias !42
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %2, ptr %i.d, align 8, !alias.scope !44, !noalias !45
  call void @_RINvNtNtCsbvkFyIu7lgC_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENCINvNtB1Y_13expr_rewriter14normalize_colsB1U_INtB1b_3VecB1U_EE0EB1U_INtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENCINvXso_B3O_IB3M_B3o_B4y_EINtNtNtB4_6traits7collect12FromIteratorIB3M_B1U_B4y_EE9from_iterBQ_E0B3o_ECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCs8VI8w5SIoU4_15datafusion_expr13expr_rewriter15normalize_sortsNtNtB4_4expr4SortINtNtCs6Po7BT7Nknu_5alloc3vec3VecB15_EECs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(320) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 6 uses
  %.sroa.03.0.copyload.i = load i64, ptr %1, align 8, !alias.scope !46, !noalias !49
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.44.0.copyload.i = load ptr, ptr %.sroa.44.0..sroa_idx.i, align 8, !alias.scope !46, !noalias !49, !nonnull !11, !noundef !11 ; 3 uses
  %.sroa.55.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.55.0.copyload.i = load i64, ptr %.sroa.55.0..sroa_idx.i, align 8, !alias.scope !46, !noalias !49 ; 2 uses
  %i.b = icmp ult i64 %.sroa.55.0.copyload.i, 72057594037927936
  tail call void @llvm.assume(i1 %i.b)
  %i.c = getelementptr inbounds nuw [128 x i8], ptr %.sroa.44.0.copyload.i, i64 %.sroa.55.0.copyload.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51)
  store ptr %.sroa.44.0.copyload.i, ptr %i.a, align 8, !alias.scope !54, !noalias !56
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.sroa.44.0.copyload.i, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !54, !noalias !56
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %.sroa.03.0.copyload.i, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !54, !noalias !56
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.c, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !54, !noalias !56
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %2, ptr %i.d, align 8, !alias.scope !58, !noalias !59
  call void @_RINvNtNtCsbvkFyIu7lgC_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortENCINvNtB1Y_13expr_rewriter15normalize_sortsB1U_INtB1b_3VecB1U_EE0EB1U_INtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENCINvXso_B3P_IB3N_B3p_B4z_EINtNtNtB4_6traits7collect12FromIteratorIB3N_B1U_B4z_EE9from_iterBQ_E0B3p_ECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeANtNtCs8VI8w5SIoU4_15datafusion_expr4expr4Exprj2_ECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 16 dereferenceable(224) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 16 dereferenceable(112) %0)
          to label %bb.b unwind label %.peel.begin

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 16 dereferenceable(112) %i.a)
          to label %bb.c unwind label %.peel.begin

bb.c:                                             ; preds = %bb.b
  ret void

.peel.begin:                                      ; preds = %bb.b, %bb.a
  %i.b = phi i1 [ false, %bb.a ], [ true, %bb.b ]
  %i.c = landingpad { ptr, i32 }
          cleanup
  br i1 %i.b, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %.peel.begin
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 112
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 16 dereferenceable(112) %i.d) #30
          to label %.loopexit unwind label %bb.e

.loopexit:                                        ; preds = %bb.d, %.peel.begin
  resume { ptr, i32 } %i.c

bb.e:                                             ; preds = %bb.d
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #29
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtCsbpG6u9KFjWn_8indexmap6BucketNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan16ColumnUnnestListEEEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(136) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(104) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan16ColumnUnnestListEEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(24) %i.b) #30
          to label %common.resume unwind label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 4 uses
  %i.d = load i64, ptr %i.c, align 8, !range !60, !alias.scope !61, !noundef !11
  %i.e = icmp eq i64 %i.d, -9223372036854775808
  br i1 %i.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan16ColumnUnnestListEEECs2VbMhdeEr66_16delta_benchmarks.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan16ColumnUnnestListENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan16ColumnUnnestListEECs2VbMhdeEr66_16delta_benchmarks.exit.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan16ColumnUnnestListENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %common.resume unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #29
  unreachable

common.resume:                                    ; preds = %bb.b, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.f, %bb.e ], [ %i.a, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan16ColumnUnnestListEECs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %bb.d
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan16ColumnUnnestListENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan16ColumnUnnestListEEECs2VbMhdeEr66_16delta_benchmarks.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan16ColumnUnnestListEEECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.c, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan16ColumnUnnestListEECs2VbMhdeEr66_16delta_benchmarks.exit.i
  ret void

bb.g:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #29
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4m0Tg8nAduX_20datafusion_execution6stream17RecordBatchStreamp4ItemINtNtB4_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.a = load ptr, ptr %.8.val, align 8, !invariant.load !11 ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  invoke void %i.a(ptr noundef nonnull %.0.val)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.c = load i64, ptr %i.b, align 8, !range !64, !invariant.load !11 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4m0Tg8nAduX_20datafusion_execution6stream17RecordBatchStreamp4ItemINtNtB4_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EECs2VbMhdeEr66_16delta_benchmarks.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.f = load i64, ptr %i.e, align 8, !range !65, !invariant.load !11
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, -9223372036854775808) %i.c, i64 noundef range(i64 1, 536870913) %i.f) #31
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4m0Tg8nAduX_20datafusion_execution6stream17RecordBatchStreamp4ItemINtNtB4_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EECs2VbMhdeEr66_16delta_benchmarks.exit

bb.e:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !64, !invariant.load !11 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCs4m0Tg8nAduX_20datafusion_execution6stream17RecordBatchStreamp4ItemINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB1X_6marker4SendEL_ENtNtNtB1X_3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks.exit4.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !65, !invariant.load !11
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, -9223372036854775808) %i.i, i64 noundef range(i64 1, 536870913) %i.l) #31
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCs4m0Tg8nAduX_20datafusion_execution6stream17RecordBatchStreamp4ItemINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB1X_6marker4SendEL_ENtNtNtB1X_3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks.exit4.i

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCs4m0Tg8nAduX_20datafusion_execution6stream17RecordBatchStreamp4ItemINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB1X_6marker4SendEL_ENtNtNtB1X_3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks.exit4.i: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.g

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4m0Tg8nAduX_20datafusion_execution6stream17RecordBatchStreamp4ItemINtNtB4_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.c, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB4_6option6OptionINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.a = load ptr, ptr %.8.val, align 8, !invariant.load !11 ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  invoke void %i.a(ptr noundef nonnull %.0.val)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.c = load i64, ptr %i.b, align 8, !range !64, !invariant.load !11 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB4_6option6OptionINtNtBL_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EECs2VbMhdeEr66_16delta_benchmarks.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.f = load i64, ptr %i.e, align 8, !range !65, !invariant.load !11
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, -9223372036854775808) %i.c, i64 noundef range(i64 1, 536870913) %i.f) #31
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB4_6option6OptionINtNtBL_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EECs2VbMhdeEr66_16delta_benchmarks.exit

bb.e:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !64, !invariant.load !11 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtNtCsbvkFyIu7lgC_4core6future6future6Futurep6OutputINtNtBO_6result6ResultINtNtBO_6option6OptionINtNtB7_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtBO_6marker4SendEL_ENtNtNtBO_3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks.exit4.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !65, !invariant.load !11
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, -9223372036854775808) %i.i, i64 noundef range(i64 1, 536870913) %i.l) #31
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtNtCsbvkFyIu7lgC_4core6future6future6Futurep6OutputINtNtBO_6result6ResultINtNtBO_6option6OptionINtNtB7_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtBO_6marker4SendEL_ENtNtNtBO_3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks.exit4.i

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtNtCsbvkFyIu7lgC_4core6future6future6Futurep6OutputINtNtBO_6result6ResultINtNtBO_6option6OptionINtNtB7_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtBO_6marker4SendEL_ENtNtNtBO_3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks.exit4.i: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.g

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB4_6option6OptionINtNtBL_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.c, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs4lawaffTVVK_9sqlparser3ast17WrappedCollectionINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtB15_4ExprEEEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !66, !noundef !11 ; 2 uses
  %i.b = icmp eq i64 %i.a, 2
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs4lawaffTVVK_9sqlparser3ast17WrappedCollectionINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtBJ_4ExprEEECs2VbMhdeEr66_16delta_benchmarks.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.c = icmp eq i64 %i.a, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  br i1 %i.c, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast4ExprENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs4lawaffTVVK_9sqlparser3ast17WrappedCollectionINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtBJ_4ExprEEECs2VbMhdeEr66_16delta_benchmarks.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs4lawaffTVVK_9sqlparser3ast4ExprENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %common.resume.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #29
  unreachable

common.resume.i:                                  ; preds = %bb.h, %bb.e
  %common.resume.op.i = phi { ptr, i32 } [ %i.e, %bb.e ], [ %i.g, %bb.h ]
  resume { ptr, i32 } %common.resume.op.i

bb.g:                                             ; preds = %bb.c
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast4ExprENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs4lawaffTVVK_9sqlparser3ast17WrappedCollectionINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtBJ_4ExprEEECs2VbMhdeEr66_16delta_benchmarks.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs4lawaffTVVK_9sqlparser3ast4ExprENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %common.resume.i unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs4lawaffTVVK_9sqlparser3ast17WrappedCollectionINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtBJ_4ExprEEECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.d, %bb.g
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs4lawaffTVVK_9sqlparser3ast4ExprENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs4lawaffTVVK_9sqlparser3ast19OneOrManyWithParensNtB15_4ExprEEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(328) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !67, !noundef !11
  switch i64 %i.a, label %bb.b [
    i64 70, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs4lawaffTVVK_9sqlparser3ast19OneOrManyWithParensNtBJ_4ExprEECs2VbMhdeEr66_16delta_benchmarks.exit
    i64 69, label %bb.c
  ]

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs4lawaffTVVK_9sqlparser3ast19OneOrManyWithParensNtBJ_4ExprEECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.a, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEECs2VbMhdeEr66_16delta_benchmarks.exit.i, %bb.b
  ret void

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast4ExprECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(328) %0) #32, !inline_history !68
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs4lawaffTVVK_9sqlparser3ast19OneOrManyWithParensNtBJ_4ExprEECs2VbMhdeEr66_16delta_benchmarks.exit

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast4ExprENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEECs2VbMhdeEr66_16delta_benchmarks.exit.i unwind label %bb.d, !inline_history !68

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs4lawaffTVVK_9sqlparser3ast4ExprENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i unwind label %bb.e, !inline_history !68

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #29, !inline_history !68
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEECs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %bb.c
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs4lawaffTVVK_9sqlparser3ast4ExprENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b), !inline_history !68
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs4lawaffTVVK_9sqlparser3ast19OneOrManyWithParensNtBJ_4ExprEECs2VbMhdeEr66_16delta_benchmarks.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtB17_6string6StringEEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !60, !noundef !11
  %i.b = icmp eq i64 %i.a, -9223372036854775808
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringEECs2VbMhdeEr66_16delta_benchmarks.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringEECs2VbMhdeEr66_16delta_benchmarks.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecNtNtBL_6string6StringEECs2VbMhdeEr66_16delta_benchmarks.exit.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecNtNtBL_6string6StringEECs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringEECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameEEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !60, !noundef !11
  %i.b = icmp eq i64 %i.a, -9223372036854775808
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameEECs2VbMhdeEr66_16delta_benchmarks.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameEECs2VbMhdeEr66_16delta_benchmarks.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameEECs2VbMhdeEr66_16delta_benchmarks.exit.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameEECs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameEECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs4lawaffTVVK_9sqlparser3ast12ContactEntryEEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !60, !noundef !11
  %i.b = icmp eq i64 %i.a, -9223372036854775808
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs4lawaffTVVK_9sqlparser3ast12ContactEntryEECs2VbMhdeEr66_16delta_benchmarks.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
end_hunk_0
begin_hunk_1_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast9data_type8DataTypeEECs2VbMhdeEr66_16delta_benchmarks:bb.a
; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs4s1dLWtJWRF_12clap_builder4util9any_value8AnyValueEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCs4s1dLWtJWRF_12clap_builder4util9any_value8AnyValueENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtNtCs4s1dLWtJWRF_12clap_builder4util9any_value8AnyValueENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecNtNtNtCs4s1dLWtJWRF_12clap_builder4util9any_value8AnyValueEECs2VbMhdeEr66_16delta_benchmarks.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtNtCs4s1dLWtJWRF_12clap_builder4util9any_value8AnyValueENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecNtNtNtCs4s1dLWtJWRF_12clap_builder4util9any_value8AnyValueEECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferEECs2VbMhdeEr66_16delta_benchmarks.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferEECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecTINtNtBL_5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEB1e_EEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecTINtNtB7_5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEBG_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecTINtNtB7_5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEBN_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecTINtNtBL_5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEB1l_EEECs2VbMhdeEr66_16delta_benchmarks.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecTINtNtB7_5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEBN_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecTINtNtBL_5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEB1l_EEECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbEEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbEEECs2VbMhdeEr66_16delta_benchmarks.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbEEECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(8) %0) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !215)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !215, !nonnull !11, !noundef !11
  %i.b = atomicrmw sub ptr %i.a, i64 1 release, align 8, !noalias !215
  %i.c = icmp eq i64 %i.b, 1
  br i1 %i.c, label %bb.b, label %_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks.exit

bb.b:                                             ; preds = %bb.a
  fence acquire
  tail call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaE9drop_slowCs1N9T06jgEdt_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %0) #34
  br label %_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks.exit

_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(8) %0) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !218)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !218, !nonnull !11, !noundef !11
  %i.b = atomicrmw sub ptr %i.a, i64 1 release, align 8, !noalias !218
  %i.c = icmp eq i64 %i.b, 1
  br i1 %i.c, label %bb.b, label %_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks.exit

bb.b:                                             ; preds = %bb.a
  fence acquire
  tail call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaE9drop_slowCs8VI8w5SIoU4_15datafusion_expr(ptr noalias noundef nonnull align 8 dereferenceable(8) %0) #34
  br label %_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks.exit

_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync8ArcInnerNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !221)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !224)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !227, !noundef !11 ; 3 uses
  %i.c = icmp ne ptr %i.b, null
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !227 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  %or.cond.i.i = select i1 %i.c, i1 true, i1 %i.f
  br i1 %or.cond.i.i, label %_RNvXs1_NtCs7xHNgVo2C7m_12arrow_buffer5bytesNtB5_5BytesNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop.exit.i, label %_RNvXs1_NtCs7xHNgVo2C7m_12arrow_buffer5bytesNtB5_5BytesNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop.exit.thread.i

_RNvXs1_NtCs7xHNgVo2C7m_12arrow_buffer5bytesNtB5_5BytesNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop.exit.thread.i: ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = load ptr, ptr %i.g, align 8, !alias.scope !227, !nonnull !11, !noundef !11
  %i.j = load i64, ptr %i.h, align 8, !range !228, !alias.scope !227, !noundef !11
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.i, i64 noundef %i.e, i64 noundef %i.j) #31, !noalias !227
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesECs2VbMhdeEr66_16delta_benchmarks.exit

_RNvXs1_NtCs7xHNgVo2C7m_12arrow_buffer5bytesNtB5_5BytesNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop.exit.i: ; preds = %bb.a
  %i.k = icmp eq ptr %i.b, null
  br i1 %i.k, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesECs2VbMhdeEr66_16delta_benchmarks.exit, label %bb.b

bb.b:                                             ; preds = %_RNvXs1_NtCs7xHNgVo2C7m_12arrow_buffer5bytesNtB5_5BytesNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop.exit.i
  %i.l = atomicrmw sub ptr %i.b, i64 1 release, align 8, !noalias !229
  %i.m = icmp eq i64 %i.l, 1
  br i1 %i.m, label %bb.c, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesECs2VbMhdeEr66_16delta_benchmarks.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  tail call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs7xHNgVo2C7m_12arrow_buffer5alloc10AllocationEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a) #34
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesECs2VbMhdeEr66_16delta_benchmarks.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %_RNvXs1_NtCs7xHNgVo2C7m_12arrow_buffer5bytesNtB5_5BytesNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop.exit.thread.i, %_RNvXs1_NtCs7xHNgVo2C7m_12arrow_buffer5bytesNtB5_5BytesNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop.exit.i, %bb.b, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs2VbMhdeEr66_16delta_benchmarks(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.a = load ptr, ptr %.8.val, align 8, !invariant.load !11 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  invoke void %i.a(ptr noundef nonnull %.0.val)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.c = load i64, ptr %i.b, align 8, !range !64, !invariant.load !11 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtBM_6marker4SyncNtB1j_4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.f = load i64, ptr %i.e, align 8, !range !65, !invariant.load !11
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, -9223372036854775808) %i.c, i64 noundef range(i64 1, 536870913) %i.f) #31
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtBM_6marker4SyncNtB1j_4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks.exit

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtBM_6marker4SyncNtB1j_4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.c, %bb.d
  ret void

bb.e:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !64, !invariant.load !11 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtBM_6marker4SyncNtB1j_4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks.exit4, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !65, !invariant.load !11
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, -9223372036854775808) %i.i, i64 noundef range(i64 1, 536870913) %i.l) #31
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtBM_6marker4SyncNtB1j_4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks.exit4

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtBM_6marker4SyncNtB1j_4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks.exit4: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.g
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtB4_6option6OptionNtNtBL_6string6StringEEECs2VbMhdeEr66_16delta_benchmarks(ptr %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = load i64, ptr %.0.val, align 8, !range !60, !alias.scope !236, !noundef !11
  %i.b = icmp eq i64 %i.a, -9223372036854775808
  br i1 %i.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs2VbMhdeEr66_16delta_benchmarks.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %.0.val)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %.0.val)
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %bb.b
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %.0.val)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs2VbMhdeEr66_16delta_benchmarks.exit unwind label %bb.e

bb.e:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit.i
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.a, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit.i
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 24, i64 noundef 8) #31
  ret void

bb.f:                                             ; preds = %bb.e, %bb.c
  %eh.lpad-body = phi { ptr, i32 } [ %i.e, %bb.e ], [ %i.c, %bb.c ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 24, i64 noundef 8) #31
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !11, !noundef !11 ; 3 uses
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast4ExprECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(328) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 328, i64 noundef 8) #31
  ret void

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 328, i64 noundef 8) #31
  resume { ptr, i32 } %i.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs4lawaffTVVK_9sqlparser3ast9StatementEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !11, !noundef !11 ; 3 uses
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast9StatementECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(2688) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 2688, i64 noundef 8) #31
  ret void

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 2688, i64 noundef 8) #31
  resume { ptr, i32 } %i.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr15WildcardOptionsEECs2VbMhdeEr66_16delta_benchmarks(ptr nonnull %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr4expr15WildcardOptionsECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(352) %.0.val)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 352, i64 noundef 8) #31
  ret void

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 352, i64 noundef 8) #31
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !11, !noundef !11 ; 3 uses
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 16 dereferenceable(112) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 112, i64 noundef 16) #31
  ret void

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 112, i64 noundef 16) #31
  resume { ptr, i32 } %i.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs2VbMhdeEr66_16delta_benchmarks(ptr nonnull %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(144) %.0.val)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(144) %.0.val)
          to label %.body.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i: ; preds = %bb.a
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(144) %.0.val)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit.i unwind label %bb.d

bb.d:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.d, %bb.b
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.c, %bb.d ], [ %i.a, %bb.b ]
  %i.d = getelementptr inbounds nuw i8, ptr %.0.val, i64 24
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbpG6u9KFjWn_8indexmap3map8IndexMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(72) %i.d) #30
          to label %.body2.i unwind label %bb.j

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %.0.val, i64 24 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.0.val, i64 48
  %i.g = getelementptr inbounds nuw i8, ptr %.0.val, i64 80
  invoke void @_RINvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tablejNtNtNtNtCsc8g9ilNZkOD_14allocator_api26stable5alloc6global6GlobalECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.f, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.g, i64 noundef 8, i64 noundef 16)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs2HSpDNxY7OE_9hashbrown5table9HashTablejEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i unwind label %bb.e

bb.e:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit.i
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtCsbpG6u9KFjWn_8indexmap6BucketNtNtBL_6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.e) #30
          to label %.body2.i unwind label %bb.h

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs2HSpDNxY7OE_9hashbrown5table9HashTablejEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit.i
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtCsbpG6u9KFjWn_8indexmap6BucketNtNtB7_6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.e)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbpG6u9KFjWn_8indexmap5inner4CoreNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i unwind label %bb.f

bb.f:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs2HSpDNxY7OE_9hashbrown5table9HashTablejEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtCsbpG6u9KFjWn_8indexmap6BucketNtNtB7_6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.e)
          to label %.body2.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #29
  unreachable

end_hunk_1
begin_hunk_2_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec13in_place_drop11InPlaceDropNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnEECs2VbMhdeEr66_16delta_benchmarks:bb.a
  %i.h = icmp eq i64 %i.g, %i.b
  br i1 %i.h, label %._crit_edge, label %.lr.ph3

bb.d:                                             ; preds = %.lr.ph
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = icmp eq i64 %i.f, %i.b
  br i1 %i.j, label %._crit_edge, label %.lr.ph3

.lr.ph3:                                          ; preds = %bb.d, %bb.c
  %.sroa.0.1.i.i2 = phi i64 [ %i.g, %bb.c ], [ %i.f, %bb.d ] ; 2 uses
  %i.k = getelementptr inbounds nuw [104 x i8], ptr %i.a, i64 %.sroa.0.1.i.i2
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(104) %i.k) #30
          to label %bb.c unwind label %bb.e

._crit_edge:                                      ; preds = %bb.c, %bb.d
  resume { ptr, i32 } %i.i

bb.e:                                             ; preds = %.lr.ph3
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #29
  unreachable

_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec13in_place_dropINtB4_11InPlaceDropNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec13in_place_drop11InPlaceDropNtNtNtCs4lawaffTVVK_9sqlparser3ast5query11OrderByExprEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !alias.scope !359, !noundef !11 ; 2 uses
  %i.b = tail call noundef i64 @_RNvMNtNtCs6Po7BT7Nknu_5alloc3vec13in_place_dropINtB2_11InPlaceDropNtNtNtCs4lawaffTVVK_9sqlparser3ast5query11OrderByExprE3lenCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %0) ; 4 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec13in_place_dropINtB4_11InPlaceDropNtNtNtCs4lawaffTVVK_9sqlparser3ast5query11OrderByExprENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks.exit, label %.lr.ph

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4lawaffTVVK_9sqlparser3ast5query11OrderByExprECs2VbMhdeEr66_16delta_benchmarks.exit.i.i: ; preds = %bb.c
  %i.d = icmp eq i64 %i.f, %i.b
  br i1 %i.d, label %_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec13in_place_dropINtB4_11InPlaceDropNtNtNtCs4lawaffTVVK_9sqlparser3ast5query11OrderByExprENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4lawaffTVVK_9sqlparser3ast5query11OrderByExprECs2VbMhdeEr66_16delta_benchmarks.exit.i.i
  %.sroa.0.0.i.i13 = phi i64 [ %i.f, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4lawaffTVVK_9sqlparser3ast5query11OrderByExprECs2VbMhdeEr66_16delta_benchmarks.exit.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw [1320 x i8], ptr %i.a, i64 %.sroa.0.0.i.i13 ; 3 uses
  %i.f = add i64 %.sroa.0.0.i.i13, 1              ; 4 uses
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast4ExprECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(1320) %i.e)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 328
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs4lawaffTVVK_9sqlparser3ast5query8WithFillEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(984) %i.h) #30
          to label %.body.i.i unwind label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 328
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs4lawaffTVVK_9sqlparser3ast5query8WithFillEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(984) %i.i)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4lawaffTVVK_9sqlparser3ast5query11OrderByExprECs2VbMhdeEr66_16delta_benchmarks.exit.i.i unwind label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #29
  unreachable

bb.e:                                             ; preds = %.lr.ph15
  %i.k = add i64 %.sroa.0.1.i.i14, 1              ; 2 uses
  %i.l = icmp eq i64 %i.k, %i.b
  br i1 %i.l, label %._crit_edge, label %.lr.ph15

bb.f:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.f, %bb.b
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.m, %bb.f ], [ %i.g, %bb.b ]
  %i.n = icmp eq i64 %i.f, %i.b
  br i1 %i.n, label %._crit_edge, label %.lr.ph15

.lr.ph15:                                         ; preds = %.body.i.i, %bb.e
  %.sroa.0.1.i.i14 = phi i64 [ %i.k, %bb.e ], [ %i.f, %.body.i.i ] ; 2 uses
  %i.o = getelementptr inbounds nuw [1320 x i8], ptr %i.a, i64 %.sroa.0.1.i.i14
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4lawaffTVVK_9sqlparser3ast5query11OrderByExprECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(1320) %i.o) #30
          to label %bb.e unwind label %bb.g

._crit_edge:                                      ; preds = %bb.e, %.body.i.i
  resume { ptr, i32 } %eh.lpad-body.i.i

bb.g:                                             ; preds = %.lr.ph15
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #29
  unreachable

_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec13in_place_dropINtB4_11InPlaceDropNtNtNtCs4lawaffTVVK_9sqlparser3ast5query11OrderByExprENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4lawaffTVVK_9sqlparser3ast5query11OrderByExprECs2VbMhdeEr66_16delta_benchmarks.exit.i.i, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec13in_place_drop11InPlaceDropTINtNtBN_5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEB1E_EEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !alias.scope !362, !noundef !11 ; 2 uses
  %i.b = tail call noundef i64 @_RNvMNtNtCs6Po7BT7Nknu_5alloc3vec13in_place_dropINtB2_11InPlaceDropTINtNtB6_5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEB13_EE3lenCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %0) ; 4 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec13in_place_dropINtB4_11InPlaceDropTINtNtB8_5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEB15_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks.exit, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.d = icmp eq i64 %i.f, %i.b
  br i1 %i.d, label %_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec13in_place_dropINtB4_11InPlaceDropTINtNtB8_5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEB15_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i1 = phi i64 [ %i.f, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %.sroa.0.0.i.i1
  %i.f = add i64 %.sroa.0.0.i.i1, 1               ; 4 uses
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEBH_EECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef readonly align 8 dereferenceable(16) %i.e)
          to label %bb.b unwind label %bb.d

bb.c:                                             ; preds = %.lr.ph3
  %i.g = add i64 %.sroa.0.1.i.i2, 1               ; 2 uses
  %i.h = icmp eq i64 %i.g, %i.b
  br i1 %i.h, label %._crit_edge, label %.lr.ph3

bb.d:                                             ; preds = %.lr.ph
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = icmp eq i64 %i.f, %i.b
  br i1 %i.j, label %._crit_edge, label %.lr.ph3

.lr.ph3:                                          ; preds = %bb.d, %bb.c
  %.sroa.0.1.i.i2 = phi i64 [ %i.g, %bb.c ], [ %i.f, %bb.d ] ; 2 uses
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %.sroa.0.1.i.i2
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEBH_EECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef readonly align 8 dereferenceable(16) %i.k) #30
          to label %bb.c unwind label %bb.e

._crit_edge:                                      ; preds = %bb.c, %bb.d
  resume { ptr, i32 } %i.i

bb.e:                                             ; preds = %.lr.ph3
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #29, !noalias !365
  unreachable

_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec13in_place_dropINtB4_11InPlaceDropTINtNtB8_5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEB15_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtB4_3pin3PinINtNtBN_5boxed3BoxDNtNtCs4m0Tg8nAduX_20datafusion_execution6stream17RecordBatchStreamp4ItemINtNtB4_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !368)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.c, align 8, !alias.scope !368, !nonnull !11, !noundef !11 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i = load ptr, ptr %i.d, align 8, !alias.scope !368, !nonnull !11, !noundef !11 ; 2 uses
  %i.e = ptrtoint ptr %.val1.i to i64
  %i.f = ptrtoint ptr %.val.i to i64
  %i.g = sub nuw i64 %i.e, %i.f
  %i.h = lshr exact i64 %i.g, 4                   ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !371)
  %i.i = icmp eq ptr %.val1.i, %.val.i
  br i1 %i.i, label %_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtB9_5boxed3BoxDNtNtCs4m0Tg8nAduX_20datafusion_execution6stream17RecordBatchStreamp4ItemINtNtB11_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB11_6marker4SendEL_EEENtNtNtB11_3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks.exit, label %.lr.ph.i.i

.body.i:                                          ; preds = %bb.g, %.body.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !368
  %i.j = load ptr, ptr %0, align 8, !alias.scope !368, !nonnull !11, !noundef !11
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !368, !noundef !11
  store i64 %i.l, ptr %i.b, align 8, !noalias !368
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.j, ptr %i.m, align 8, !noalias !368
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtB7_5boxed3BoxDNtNtCs4m0Tg8nAduX_20datafusion_execution6stream17RecordBatchStreamp4ItemINtNtBR_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtBR_6marker4SendEL_EEENtNtNtBR_3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b)
          to label %bb.j unwind label %bb.i, !noalias !368

.lr.ph.i.i:                                       ; preds = %bb.a, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4m0Tg8nAduX_20datafusion_execution6stream17RecordBatchStreamp4ItemINtNtB4_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i
  %.sroa.0.010.i.i = phi i64 [ %i.o, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4m0Tg8nAduX_20datafusion_execution6stream17RecordBatchStreamp4ItemINtNtB4_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %.val.i, i64 %.sroa.0.010.i.i ; 2 uses
  %i.o = add nuw i64 %.sroa.0.010.i.i, 1          ; 4 uses
  %.val8.i.i = load ptr, ptr %i.n, align 8, !alias.scope !371, !noalias !368 ; 5 uses
  %i.p = getelementptr i8, ptr %i.n, i64 8
  %.val9.i.i = load ptr, ptr %i.p, align 8, !alias.scope !371, !noalias !368, !nonnull !11, !align !69, !noundef !11 ; 5 uses
  %i.q = load ptr, ptr %.val9.i.i, align 8, !invariant.load !11, !noalias !374 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val8.i.i) ]
  invoke void %i.q(ptr noundef nonnull %.val8.i.i)
          to label %bb.c unwind label %bb.e, !noalias !374

bb.c:                                             ; preds = %bb.b, %.lr.ph.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %.val9.i.i, i64 8
  %i.s = load i64, ptr %i.r, align 8, !range !64, !invariant.load !11, !noalias !374 ; 2 uses
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4m0Tg8nAduX_20datafusion_execution6stream17RecordBatchStreamp4ItemINtNtB4_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val8.i.i) ]
  %i.u = getelementptr inbounds nuw i8, ptr %.val9.i.i, i64 16
  %i.v = load i64, ptr %i.u, align 8, !range !65, !invariant.load !11, !noalias !374
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.s, i64 noundef range(i64 1, 536870913) %i.v) #31, !noalias !374
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4m0Tg8nAduX_20datafusion_execution6stream17RecordBatchStreamp4ItemINtNtB4_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i

bb.e:                                             ; preds = %bb.b
  %i.w = landingpad { ptr, i32 }
          cleanup
  %i.x = getelementptr inbounds nuw i8, ptr %.val9.i.i, i64 8
  %i.y = load i64, ptr %i.x, align 8, !range !64, !invariant.load !11, !noalias !374 ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %.body.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %.val9.i.i, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !range !65, !invariant.load !11, !noalias !374
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.y, i64 noundef range(i64 1, 536870913) %i.ab) #31, !noalias !374
  br label %.body.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4m0Tg8nAduX_20datafusion_execution6stream17RecordBatchStreamp4ItemINtNtB4_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i: ; preds = %bb.d, %bb.c
  %i.ac = icmp eq i64 %i.o, %i.h
  br i1 %i.ac, label %_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtB9_5boxed3BoxDNtNtCs4m0Tg8nAduX_20datafusion_execution6stream17RecordBatchStreamp4ItemINtNtB11_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB11_6marker4SendEL_EEENtNtNtB11_3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks.exit, label %.lr.ph.i.i

bb.g:                                             ; preds = %.lr.ph
  %i.ad = add i64 %.sroa.0.1.i.i16, 1             ; 2 uses
  %i.ae = icmp eq i64 %i.ad, %i.h
  br i1 %i.ae, label %.body.i, label %.lr.ph

.body.i.i:                                        ; preds = %bb.f, %bb.e
  %i.af = icmp eq i64 %i.o, %i.h
  br i1 %i.af, label %.body.i, label %.lr.ph

.lr.ph:                                           ; preds = %.body.i.i, %bb.g
  %.sroa.0.1.i.i16 = phi i64 [ %i.ad, %bb.g ], [ %i.o, %.body.i.i ] ; 2 uses
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %.val.i, i64 %.sroa.0.1.i.i16 ; 2 uses
  %.val.i.i = load ptr, ptr %i.ag, align 8, !alias.scope !371, !noalias !368
  %i.ah = getelementptr i8, ptr %i.ag, i64 8
  %.val7.i.i = load ptr, ptr %i.ah, align 8, !alias.scope !371, !noalias !368, !nonnull !11, !align !69, !noundef !11
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4m0Tg8nAduX_20datafusion_execution6stream17RecordBatchStreamp4ItemINtNtB4_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks(ptr %.val.i.i, ptr nonnull %.val7.i.i) #30
          to label %bb.g unwind label %bb.h, !noalias !374

bb.h:                                             ; preds = %.lr.ph
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #29, !noalias !374
  unreachable

bb.i:                                             ; preds = %.body.i
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #29, !noalias !368
  unreachable

bb.j:                                             ; preds = %.body.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !368
  resume { ptr, i32 } %i.w

_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtB9_5boxed3BoxDNtNtCs4m0Tg8nAduX_20datafusion_execution6stream17RecordBatchStreamp4ItemINtNtB11_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB11_6marker4SendEL_EEENtNtNtB11_3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4m0Tg8nAduX_20datafusion_execution6stream17RecordBatchStreamp4ItemINtNtB4_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !368
  %i.ak = load ptr, ptr %0, align 8, !alias.scope !368, !nonnull !11, !noundef !11
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.am = load i64, ptr %i.al, align 8, !alias.scope !368, !noundef !11
  store i64 %i.am, ptr %i.a, align 8, !noalias !368
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.ak, ptr %i.an, align 8, !noalias !368
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtB7_5boxed3BoxDNtNtCs4m0Tg8nAduX_20datafusion_execution6stream17RecordBatchStreamp4ItemINtNtBR_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtBR_6marker4SendEL_EEENtNtNtBR_3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a), !noalias !368
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !368
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtBN_6string6StringEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !375)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.c, align 8, !alias.scope !375, !nonnull !11, !noundef !11 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i = load ptr, ptr %i.d, align 8, !alias.scope !375, !nonnull !11, !noundef !11 ; 2 uses
  %i.e = ptrtoint ptr %.val1.i to i64
  %i.f = ptrtoint ptr %.val.i to i64
  %i.g = sub nuw i64 %i.e, %i.f
  %i.h = udiv exact i64 %i.g, 24                  ; 3 uses
  %i.i = icmp eq ptr %.val1.i, %.val.i
  br i1 %i.i, label %_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks.exit, label %.lr.ph

.body.i:                                          ; preds = %bb.d, %.body.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !375
  %i.j = load ptr, ptr %0, align 8, !alias.scope !375, !nonnull !11, !noundef !11
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !375, !noundef !11
  store i64 %i.l, ptr %i.b, align 8, !noalias !375
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.j, ptr %i.m, align 8, !noalias !375
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b)
          to label %bb.h unwind label %bb.g, !noalias !375

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i
  %i.n = icmp eq i64 %i.p, %i.h
  br i1 %i.n, label %_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit.i.i
  %.sroa.0.0.i.i13 = phi i64 [ %i.p, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %.val.i, i64 %.sroa.0.0.i.i13 ; 3 uses
  %i.p = add nuw nsw i64 %.sroa.0.0.i.i13, 1      ; 4 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i unwind label %bb.b, !noalias !375

bb.b:                                             ; preds = %.lr.ph
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %.body.i.i unwind label %bb.c, !noalias !375

bb.c:                                             ; preds = %bb.b
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #29, !noalias !375
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i: ; preds = %.lr.ph
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit.i.i unwind label %bb.e, !noalias !375

bb.d:                                             ; preds = %.lr.ph15
  %i.s = add i64 %.sroa.0.1.i.i14, 1              ; 2 uses
  %i.t = icmp eq i64 %i.s, %i.h
  br i1 %i.t, label %.body.i, label %.lr.ph15

bb.e:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.e, %bb.b
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.u, %bb.e ], [ %i.q, %bb.b ]
  %i.v = icmp eq i64 %i.p, %i.h
  br i1 %i.v, label %.body.i, label %.lr.ph15

.lr.ph15:                                         ; preds = %.body.i.i, %bb.d
  %.sroa.0.1.i.i14 = phi i64 [ %i.s, %bb.d ], [ %i.p, %.body.i.i ] ; 2 uses
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %.val.i, i64 %.sroa.0.1.i.i14
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.w) #30
          to label %bb.d unwind label %bb.f, !noalias !375

bb.f:                                             ; preds = %.lr.ph15
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #29, !noalias !375
  unreachable

bb.g:                                             ; preds = %.body.i
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #29, !noalias !375
  unreachable

bb.h:                                             ; preds = %.body.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !375
  resume { ptr, i32 } %eh.lpad-body.i.i

_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit.i.i, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !375
  %i.z = load ptr, ptr %0, align 8, !alias.scope !375, !nonnull !11, !noundef !11
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !alias.scope !375, !noundef !11
  store i64 %i.ab, ptr %i.a, align 8, !noalias !375
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.z, ptr %i.ac, align 8, !noalias !375
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a), !noalias !375
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !375
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan16ColumnUnnestListEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !378)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.c, align 8, !alias.scope !378, !nonnull !11, !noundef !11 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i = load ptr, ptr %i.d, align 8, !alias.scope !378, !nonnull !11, !noundef !11 ; 2 uses
  %i.e = ptrtoint ptr %.val1.i to i64
  %i.f = ptrtoint ptr %.val.i to i64
  %i.g = sub nuw i64 %i.e, %i.f
  %i.h = udiv exact i64 %i.g, 112                 ; 3 uses
  %i.i = icmp eq ptr %.val1.i, %.val.i
  br i1 %i.i, label %_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan16ColumnUnnestListENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks.exit, label %.lr.ph

.body.i:                                          ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan16ColumnUnnestListECs2VbMhdeEr66_16delta_benchmarks.exit7.i.i, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !378
  %i.j = load ptr, ptr %0, align 8, !alias.scope !378, !nonnull !11, !noundef !11
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !378, !noundef !11
  store i64 %i.l, ptr %i.b, align 8, !noalias !378
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.j, ptr %i.m, align 8, !noalias !378
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan16ColumnUnnestListENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b)
          to label %bb.e unwind label %bb.d, !noalias !378

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan16ColumnUnnestListECs2VbMhdeEr66_16delta_benchmarks.exit.i.i: ; preds = %.lr.ph
  %i.n = icmp eq i64 %i.p, %i.h
  br i1 %i.n, label %_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan16ColumnUnnestListENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan16ColumnUnnestListECs2VbMhdeEr66_16delta_benchmarks.exit.i.i
  %.sroa.0.0.i.i1 = phi i64 [ %i.p, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan16ColumnUnnestListECs2VbMhdeEr66_16delta_benchmarks.exit.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.o = getelementptr inbounds nuw [112 x i8], ptr %.val.i, i64 %.sroa.0.0.i.i1
  %i.p = add nuw nsw i64 %.sroa.0.0.i.i1, 1       ; 4 uses
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.o)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan16ColumnUnnestListECs2VbMhdeEr66_16delta_benchmarks.exit.i.i unwind label %bb.b, !noalias !378

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan16ColumnUnnestListECs2VbMhdeEr66_16delta_benchmarks.exit7.i.i: ; preds = %.lr.ph3
  %i.q = add i64 %.sroa.0.1.i.i2, 1               ; 2 uses
  %i.r = icmp eq i64 %i.q, %i.h
  br i1 %i.r, label %.body.i, label %.lr.ph3

bb.b:                                             ; preds = %.lr.ph
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = icmp eq i64 %i.p, %i.h
  br i1 %i.t, label %.body.i, label %.lr.ph3

.lr.ph3:                                          ; preds = %bb.b, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan16ColumnUnnestListECs2VbMhdeEr66_16delta_benchmarks.exit7.i.i
  %.sroa.0.1.i.i2 = phi i64 [ %i.q, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan16ColumnUnnestListECs2VbMhdeEr66_16delta_benchmarks.exit7.i.i ], [ %i.p, %bb.b ] ; 2 uses
  %i.u = getelementptr inbounds nuw [112 x i8], ptr %.val.i, i64 %.sroa.0.1.i.i2
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.u)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan16ColumnUnnestListECs2VbMhdeEr66_16delta_benchmarks.exit7.i.i unwind label %bb.c, !noalias !378

bb.c:                                             ; preds = %.lr.ph3
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #29, !noalias !378
  unreachable

bb.d:                                             ; preds = %.body.i
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #29, !noalias !378
  unreachable

bb.e:                                             ; preds = %.body.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !378
  resume { ptr, i32 } %i.s

_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan16ColumnUnnestListENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan16ColumnUnnestListECs2VbMhdeEr66_16delta_benchmarks.exit.i.i, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !378
  %i.x = load ptr, ptr %0, align 8, !alias.scope !378, !nonnull !11, !noundef !11
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.z = load i64, ptr %i.y, align 8, !alias.scope !378, !noundef !11
  store i64 %i.z, ptr %i.a, align 8, !noalias !378
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.x, ptr %i.aa, align 8, !noalias !378
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan16ColumnUnnestListENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a), !noalias !378
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !378
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNvMs2_NtNtCskQDtHcQtBkN_5tokio4util17idle_notified_setINtBP_15IdleNotifiedSetpE5drain10AllEntriesINtNtNtNtBT_7runtime4task4join10JoinHandleTjINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEINvNtB4_3mem4dropB2i_EEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = tail call noundef ptr @_RNvMs3_NtNtCskQDtHcQtBkN_5tokio4util11linked_listINtB5_10LinkedListINtNtB7_17idle_notified_set9ListEntryINtNtNtNtB9_7runtime4task4join10JoinHandleTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEB13_E8pop_backCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(16) %0) ; 2 uses
  %.not.i.not2.i = icmp eq ptr %i.c, null
  br i1 %.not.i.not2.i, label %_RNvXs_NvMs2_NtNtCskQDtHcQtBkN_5tokio4util17idle_notified_setINtBa_15IdleNotifiedSetpE5drainINtB4_10AllEntriesINtNtNtNtBe_7runtime4task4join10JoinHandleTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEINvNtB2w_3mem4dropB1J_EENtNtNtB2w_3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_RNvMNvMs2_NtNtCskQDtHcQtBkN_5tokio4util17idle_notified_setINtB8_15IdleNotifiedSetpE5drainINtB2_10AllEntriesINtNtNtNtBc_7runtime4task4join10JoinHandleTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEINvNtB2u_3mem4dropB1H_EE8pop_nextCs2VbMhdeEr66_16delta_benchmarks.exit.i
  %i.d = phi ptr [ %i.m, %_RNvMNvMs2_NtNtCskQDtHcQtBkN_5tokio4util17idle_notified_setINtB8_15IdleNotifiedSetpE5drainINtB2_10AllEntriesINtNtNtNtBc_7runtime4task4join10JoinHandleTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEINvNtB2u_3mem4dropB1H_EE8pop_nextCs2VbMhdeEr66_16delta_benchmarks.exit.i ], [ %i.c, %bb.a ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !381
  store ptr %i.d, ptr %i.b, align 8, !noalias !381
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !11, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !381
  store ptr %i.f, ptr %i.a, align 8, !noalias !381
  invoke void @_RNvXs5_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4joinINtB5_10JoinHandleTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEENtNtNtB1c_3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = atomicrmw sub ptr %i.d, i64 1 release, align 8, !noalias !386
  %i.i = icmp eq i64 %i.h, 1
  br i1 %i.i, label %bb.c, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtCskQDtHcQtBkN_5tokio4util17idle_notified_set9ListEntryINtNtNtNtB1l_7runtime4task4join10JoinHandleTjINtNtB4_6result6ResultINtNtBL_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtCskQDtHcQtBkN_5tokio4util17idle_notified_set9ListEntryINtNtNtNtBN_7runtime4task4join10JoinHandleTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB7_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEE9drop_slowCs5wg436RVUAP_24datafusion_physical_plan(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b) #34
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtCskQDtHcQtBkN_5tokio4util17idle_notified_set9ListEntryINtNtNtNtB1l_7runtime4task4join10JoinHandleTjINtNtB4_6result6ResultINtNtBL_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i unwind label %bb.f

bb.d:                                             ; preds = %.lr.ph.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !381
  %i.j = atomicrmw sub ptr %i.d, i64 1 release, align 8, !noalias !391
  %i.k = icmp eq i64 %i.j, 1
  br i1 %i.k, label %bb.e, label %_RNvMNvMs2_NtNtCskQDtHcQtBkN_5tokio4util17idle_notified_setINtB8_15IdleNotifiedSetpE5drainINtB2_10AllEntriesINtNtNtNtBc_7runtime4task4join10JoinHandleTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEINvNtB2u_3mem4dropB1H_EE8pop_nextCs2VbMhdeEr66_16delta_benchmarks.exit.i

bb.e:                                             ; preds = %bb.d
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtCskQDtHcQtBkN_5tokio4util17idle_notified_set9ListEntryINtNtNtNtBN_7runtime4task4join10JoinHandleTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB7_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEE9drop_slowCs5wg436RVUAP_24datafusion_physical_plan(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b) #34
  br label %_RNvMNvMs2_NtNtCskQDtHcQtBkN_5tokio4util17idle_notified_setINtB8_15IdleNotifiedSetpE5drainINtB2_10AllEntriesINtNtNtNtBc_7runtime4task4join10JoinHandleTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEINvNtB2u_3mem4dropB1H_EE8pop_nextCs2VbMhdeEr66_16delta_benchmarks.exit.i

bb.f:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtCskQDtHcQtBkN_5tokio4util17idle_notified_set9ListEntryINtNtNtNtB1l_7runtime4task4join10JoinHandleTjINtNtB4_6result6ResultINtNtBL_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i: ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.g

_RNvMNvMs2_NtNtCskQDtHcQtBkN_5tokio4util17idle_notified_setINtB8_15IdleNotifiedSetpE5drainINtB2_10AllEntriesINtNtNtNtBc_7runtime4task4join10JoinHandleTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEINvNtB2u_3mem4dropB1H_EE8pop_nextCs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !381
  %i.m = call noundef ptr @_RNvMs3_NtNtCskQDtHcQtBkN_5tokio4util11linked_listINtB5_10LinkedListINtNtB7_17idle_notified_set9ListEntryINtNtNtNtB9_7runtime4task4join10JoinHandleTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEB13_E8pop_backCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(16) %0) ; 2 uses
  %.not.i.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i.not.i, label %_RNvXs_NvMs2_NtNtCskQDtHcQtBkN_5tokio4util17idle_notified_setINtBa_15IdleNotifiedSetpE5drainINtB4_10AllEntriesINtNtNtNtBe_7runtime4task4join10JoinHandleTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEINvNtB2w_3mem4dropB1J_EENtNtNtB2w_3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks.exit, label %.lr.ph.i

_RNvXs_NvMs2_NtNtCskQDtHcQtBkN_5tokio4util17idle_notified_setINtBa_15IdleNotifiedSetpE5drainINtB4_10AllEntriesINtNtNtNtBe_7runtime4task4join10JoinHandleTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEINvNtB2w_3mem4dropB1J_EENtNtNtB2w_3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %_RNvMNvMs2_NtNtCskQDtHcQtBkN_5tokio4util17idle_notified_setINtB8_15IdleNotifiedSetpE5drainINtB2_10AllEntriesINtNtNtNtBc_7runtime4task4join10JoinHandleTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEINvNtB2u_3mem4dropB1H_EE8pop_nextCs2VbMhdeEr66_16delta_benchmarks.exit.i, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvYNtNtCsanCXJAiNsO_18datafusion_catalog18information_schema25InformationSchemaProviderNtNtBP_6schema14SchemaProvider10table_type0ECs2VbMhdeEr66_16delta_benchmarks(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i8, ptr %i.a, align 8, !range !396, !noundef !11
  %cond = icmp eq i8 %i.b, 3
  br i1 %cond, label %bb.b, label %common.ret

common.ret:                                       ; preds = %bb.e, %bb.d, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val = load ptr, ptr %i.c, align 8             ; 5 uses
  %i.d = getelementptr i8, ptr %0, i64 32
  %.val1 = load ptr, ptr %i.d, align 8, !nonnull !11, !align !69, !noundef !11 ; 5 uses
  %i.e = load ptr, ptr %.val1, align 8, !invariant.load !11 ; 2 uses
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.e(ptr noundef nonnull %.val)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !range !64, !invariant.load !11 ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %common.ret, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.i = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.j = load i64, ptr %i.i, align 8, !range !65, !invariant.load !11
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, -9223372036854775808) %i.g, i64 noundef range(i64 1, 536870913) %i.j) #31
  br label %common.ret

bb.f:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.m = load i64, ptr %i.l, align 8, !range !64, !invariant.load !11 ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtNtCsbvkFyIu7lgC_4core6future6future6Futurep6OutputINtNtBO_6result6ResultINtNtBO_6option6OptionINtNtB7_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtBO_6marker4SendEL_ENtNtNtBO_3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks.exit4.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.p = load i64, ptr %i.o, align 8, !range !65, !invariant.load !11
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, -9223372036854775808) %i.m, i64 noundef range(i64 1, 536870913) %i.p) #31
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtNtCsbvkFyIu7lgC_4core6future6future6Futurep6OutputINtNtBO_6result6ResultINtNtBO_6option6OptionINtNtB7_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtBO_6marker4SendEL_ENtNtNtBO_3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks.exit4.i.i

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtNtCsbvkFyIu7lgC_4core6future6future6Futurep6OutputINtNtBO_6result6ResultINtNtBO_6option6OptionINtNtB7_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtBO_6marker4SendEL_ENtNtNtBO_3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks.exit4.i.i: ; preds = %bb.g, %bb.f
  resume { ptr, i32 } %i.k
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvYNtNtNtCsanCXJAiNsO_18datafusion_catalog6memory6schema20MemorySchemaProviderNtNtBR_6schema14SchemaProvider10table_type0ECs2VbMhdeEr66_16delta_benchmarks(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i8, ptr %i.a, align 8, !range !396, !noundef !11
  %cond = icmp eq i8 %i.b, 3
  br i1 %cond, label %bb.b, label %common.ret

common.ret:                                       ; preds = %bb.e, %bb.d, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val = load ptr, ptr %i.c, align 8             ; 5 uses
  %i.d = getelementptr i8, ptr %0, i64 32
  %.val1 = load ptr, ptr %i.d, align 8, !nonnull !11, !align !69, !noundef !11 ; 5 uses
  %i.e = load ptr, ptr %.val1, align 8, !invariant.load !11 ; 2 uses
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.e(ptr noundef nonnull %.val)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !range !64, !invariant.load !11 ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %common.ret, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.i = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.j = load i64, ptr %i.i, align 8, !range !65, !invariant.load !11
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, -9223372036854775808) %i.g, i64 noundef range(i64 1, 536870913) %i.j) #31
  br label %common.ret

bb.f:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.m = load i64, ptr %i.l, align 8, !range !64, !invariant.load !11 ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtNtCsbvkFyIu7lgC_4core6future6future6Futurep6OutputINtNtBO_6result6ResultINtNtBO_6option6OptionINtNtB7_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtBO_6marker4SendEL_ENtNtNtBO_3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks.exit4.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.p = load i64, ptr %i.o, align 8, !range !65, !invariant.load !11
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, -9223372036854775808) %i.m, i64 noundef range(i64 1, 536870913) %i.p) #31
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtNtCsbvkFyIu7lgC_4core6future6future6Futurep6OutputINtNtBO_6result6ResultINtNtBO_6option6OptionINtNtB7_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtBO_6marker4SendEL_ENtNtNtBO_3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks.exit4.i.i

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtNtCsbvkFyIu7lgC_4core6future6future6Futurep6OutputINtNtBO_6result6ResultINtNtBO_6option6OptionINtNtB7_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtBO_6marker4SendEL_ENtNtNtBO_3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks.exit4.i.i: ; preds = %bb.g, %bb.f
  resume { ptr, i32 } %i.k
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !397)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !400)
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !403, !nonnull !11, !noundef !11
  %i.c = atomicrmw sub ptr %i.b, i64 1 release, align 8, !noalias !403
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs2VbMhdeEr66_16delta_benchmarks.exit

bb.b:                                             ; preds = %bb.a
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaE9drop_slowCs1N9T06jgEdt_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a) #34
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs2VbMhdeEr66_16delta_benchmarks.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtBL_4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(24) %0) #30
          to label %common.resume unwind label %bb.f

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.a, %bb.b
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtBL_4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit unwind label %bb.d

bb.d:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs2VbMhdeEr66_16delta_benchmarks.exit
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtB7_4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %common.resume unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #29
  unreachable

common.resume:                                    ; preds = %bb.c, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.f, %bb.d ], [ %i.e, %bb.c ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtBL_4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs2VbMhdeEr66_16delta_benchmarks.exit
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtB7_4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  ret void

bb.f:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #29
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs3v6NujDNJcu_10arrow_data4data16ArrayDataBuilderECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(184) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(24) %i.a)
          to label %bb.e unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !404)
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !404, !noundef !11 ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferEECs2VbMhdeEr66_16delta_benchmarks.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = atomicrmw sub ptr %i.d, i64 1 release, align 8, !noalias !407
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.d, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferEECs2VbMhdeEr66_16delta_benchmarks.exit

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #34
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferEECs2VbMhdeEr66_16delta_benchmarks.exit unwind label %bb.t

bb.e:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !414)
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !414, !noundef !11 ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferEECs2VbMhdeEr66_16delta_benchmarks.exit7, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = atomicrmw sub ptr %i.i, i64 1 release, align 8, !noalias !417
  %i.l = icmp eq i64 %i.k, 1
  br i1 %i.l, label %bb.g, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferEECs2VbMhdeEr66_16delta_benchmarks.exit7

bb.g:                                             ; preds = %bb.f
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h) #34
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferEECs2VbMhdeEr66_16delta_benchmarks.exit7 unwind label %bb.j

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferEECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.c, %bb.b, %bb.d, %bb.j
  %.pn = phi { ptr, i32 } [ %i.r, %bb.j ], [ %i.b, %bb.d ], [ %i.b, %bb.b ], [ %i.b, %bb.c ] ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !424)
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !424, !noundef !11 ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferEECs2VbMhdeEr66_16delta_benchmarks.exit, label %bb.h

bb.h:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferEECs2VbMhdeEr66_16delta_benchmarks.exit
  %i.p = atomicrmw sub ptr %i.n, i64 1 release, align 8, !noalias !427
  %i.q = icmp eq i64 %i.p, 1
  br i1 %i.q, label %bb.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferEECs2VbMhdeEr66_16delta_benchmarks.exit

bb.i:                                             ; preds = %bb.h
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.m) #34
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferEECs2VbMhdeEr66_16delta_benchmarks.exit unwind label %bb.t

bb.j:                                             ; preds = %bb.g
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferEECs2VbMhdeEr66_16delta_benchmarks.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferEECs2VbMhdeEr66_16delta_benchmarks.exit7: ; preds = %bb.f, %bb.e, %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !438)
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !438, !noundef !11 ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferEECs2VbMhdeEr66_16delta_benchmarks.exit10, label %bb.k

bb.k:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferEECs2VbMhdeEr66_16delta_benchmarks.exit7
  %i.v = atomicrmw sub ptr %i.t, i64 1 release, align 8, !noalias !441
  %i.w = icmp eq i64 %i.v, 1
  br i1 %i.w, label %bb.l, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferEECs2VbMhdeEr66_16delta_benchmarks.exit10

bb.l:                                             ; preds = %bb.k
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.s) #34
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferEECs2VbMhdeEr66_16delta_benchmarks.exit10 unwind label %bb.m

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferEECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.h, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferEECs2VbMhdeEr66_16delta_benchmarks.exit, %bb.i, %bb.m
  %.pn2 = phi { ptr, i32 } [ %i.y, %bb.m ], [ %.pn, %bb.i ], [ %.pn, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferEECs2VbMhdeEr66_16delta_benchmarks.exit ], [ %.pn, %bb.h ]
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(24) %i.x) #30
          to label %.body unwind label %bb.t

bb.m:                                             ; preds = %bb.l
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferEECs2VbMhdeEr66_16delta_benchmarks.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferEECs2VbMhdeEr66_16delta_benchmarks.exit10: ; preds = %bb.k, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferEECs2VbMhdeEr66_16delta_benchmarks.exit7, %bb.l
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.z)
          to label %bb.o unwind label %bb.n

bb.n:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferEECs2VbMhdeEr66_16delta_benchmarks.exit10
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.z)
          to label %.body unwind label %bb.p

bb.o:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferEECs2VbMhdeEr66_16delta_benchmarks.exit10
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.z)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferEECs2VbMhdeEr66_16delta_benchmarks.exit unwind label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #29
  unreachable

.body:                                            ; preds = %bb.q, %bb.n, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferEECs2VbMhdeEr66_16delta_benchmarks.exit
  %.pn4 = phi { ptr, i32 } [ %.pn2, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferEECs2VbMhdeEr66_16delta_benchmarks.exit ], [ %i.ad, %bb.q ], [ %i.aa, %bb.n ]
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 40
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs3v6NujDNJcu_10arrow_data4data9ArrayDataEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(24) %i.ac) #30
          to label %common.resume unwind label %bb.t

bb.q:                                             ; preds = %bb.o
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %.body

end_hunk_2
begin_hunk_3_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common5error11SchemaErrorECs2VbMhdeEr66_16delta_benchmarks:bb.a
.body5:                                           ; preds = %bb.e
  %i.f = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3, i64 noundef 56, i64 noundef 8) #31
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g) #30
          to label %common.resume unwind label %bb.m

bb.f:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %common.resume unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.f
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  br label %bb.i

bb.i:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnEECs2VbMhdeEr66_16delta_benchmarks.exit, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit8, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnEECs2VbMhdeEr66_16delta_benchmarks.exit4
  ret void

bb.j:                                             ; preds = %bb.e
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3, i64 noundef 56, i64 noundef 8) #31
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit8 unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %common.resume unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit8: ; preds = %bb.j
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
  br label %bb.i

bb.m:                                             ; preds = %.body, %.body5
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #29
  unreachable

bb.n:                                             ; preds = %bb.b
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2, i64 noundef 104, i64 noundef 8) #31
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnEECs2VbMhdeEr66_16delta_benchmarks.exit unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %common.resume unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnEECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.n
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
  br label %bb.i
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !1524, !noundef !11
  switch i64 %i.a, label %bb.b [
    i64 0, label %bb.e
    i64 1, label %bb.bh
    i64 2, label %bb.cc
    i64 3, label %bb.gd
    i64 4, label %bb.ge
    i64 5, label %bb.gm
    i64 6, label %bb.gp
    i64 7, label %bb.gs
    i64 8, label %bb.gv
    i64 9, label %bb.gy
    i64 10, label %bb.gz
    i64 11, label %bb.hc
    i64 12, label %bb.hk
    i64 13, label %bb.hn
    i64 14, label %bb.ht
    i64 15, label %bb.hw
    i64 16, label %bb.hz
    i64 17, label %bb.il
    i64 18, label %bb.io
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %common.resume unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #29
  unreachable

common.resume:                                    ; preds = %bb.ix, %.body, %.body26, %.body43, %.body53, %.body36, %bb.is, %bb.im, %bb.hx, %bb.hr, %bb.hs, %bb.hl, %bb.ha, %bb.gw, %bb.gt, %bb.gq, %bb.gn, %bb.c, %bb.ji, %bb.jg, %bb.je, %bb.hj, %bb.gc, %bb.cb
  %common.resume.op = phi { ptr, i32 } [ %i.pn, %bb.ji ], [ %eh.lpad-body.i16, %bb.cb ], [ %eh.lpad-body.i18, %bb.gc ], [ %i.c, %bb.c ], [ %i.ln, %bb.gn ], [ %i.lq, %bb.gq ], [ %i.lt, %bb.gt ], [ %i.lw, %bb.gw ], [ %i.mo, %bb.hj ], [ %i.mc, %bb.ha ], [ %i.mv, %bb.hl ], [ %i.nf, %bb.hr ], [ %i.np, %bb.hx ], [ %i.oj, %bb.im ], [ %i.os, %bb.is ], [ %eh.lpad-body.i51, %.body53 ], [ %eh.lpad-body.i58, %bb.je ], [ %i.pk, %bb.jg ], [ %i.nf, %bb.hs ], [ %eh.lpad-body.i, %.body ], [ %eh.lpad-body.i25, %.body26 ], [ %i.lz, %.body36 ], [ %eh.lpad-body44, %.body43 ], [ %i.oy, %bb.ix ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.b
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs2VbMhdeEr66_16delta_benchmarks.exit

bb.e:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val4 = load ptr, ptr %i.e, align 8, !nonnull !11, !noundef !11 ; 24 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1525)
  %i.f = load i64, ptr %.val4, align 8, !range !1528, !alias.scope !1525, !noundef !11 ; 3 uses
  %i.g = icmp ne i64 %i.f, -9223372036854775796
  tail call void @llvm.assume(i1 %i.g)
  %i.h = xor i64 %i.f, -9223372036854775808
  %i.i = icmp slt i64 %i.f, 0
  %i.j = select i1 %i.i, i64 %i.h, i64 12
  switch i64 %i.j, label %bb.iq [
    i64 0, label %bb.f
    i64 1, label %bb.i
    i64 2, label %bb.o
    i64 3, label %bb.r
    i64 4, label %bb.u
    i64 5, label %bb.x
    i64 6, label %bb.aa
    i64 8, label %bb.ad
    i64 9, label %bb.ag
    i64 10, label %bb.aj
    i64 11, label %bb.am
    i64 12, label %bb.ap
    i64 13, label %bb.as
    i64 14, label %bb.av
    i64 15, label %bb.ay
    i64 16, label %bb.bb
  ]

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %.val4, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit35.i.invoke.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %.body unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #29
  unreachable

bb.i:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %.val4, i64 8
  %.val.i.i = load ptr, ptr %i.n, align 8, !alias.scope !1525 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.val4, i64 16
  %.val1.i.i = load ptr, ptr %i.o, align 8, !alias.scope !1525, !nonnull !11, !align !69, !noundef !11 ; 5 uses
  %i.p = load ptr, ptr %.val1.i.i, align 8, !invariant.load !11, !noalias !1525 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  invoke void %i.p(ptr noundef nonnull %.val.i.i)
          to label %bb.k unwind label %bb.m, !noalias !1525

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.q = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.r = load i64, ptr %i.q, align 8, !range !64, !invariant.load !11, !noalias !1525 ; 2 uses
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %bb.iq, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  %i.t = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.u = load i64, ptr %i.t, align 8, !range !65, !invariant.load !11, !noalias !1525
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.r, i64 noundef range(i64 1, 536870913) %i.u) #31, !noalias !1525
  br label %bb.iq

bb.m:                                             ; preds = %bb.j
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.x = load i64, ptr %i.w, align 8, !range !64, !invariant.load !11, !noalias !1525 ; 2 uses
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %.body, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.z = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !range !65, !invariant.load !11, !noalias !1525
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.x, i64 noundef range(i64 1, 536870913) %i.aa) #31, !noalias !1525
  br label %.body

bb.o:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %.val4, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ab)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit35.i.invoke.i unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ac = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ab)
          to label %.body unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #29
  unreachable

bb.r:                                             ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %.val4, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ae)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit35.i.invoke.i unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.af = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ae)
          to label %.body unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #29
  unreachable

bb.u:                                             ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %.val4, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ah)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit35.i.invoke.i unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ai = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ah)
          to label %.body unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #29
  unreachable

bb.x:                                             ; preds = %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %.val4, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ak)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit35.i.invoke.i unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.al = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ak)
          to label %.body unwind label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #29
  unreachable

bb.aa:                                            ; preds = %bb.e
  %i.an = getelementptr inbounds nuw i8, ptr %.val4, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.an)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit35.i.invoke.i unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ao = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.an)
          to label %.body unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #29
  unreachable

bb.ad:                                            ; preds = %bb.e
  %i.aq = getelementptr inbounds nuw i8, ptr %.val4, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aq)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit35.i.invoke.i unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ar = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aq)
          to label %.body unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #29
  unreachable

bb.ag:                                            ; preds = %bb.e
  %i.at = getelementptr inbounds nuw i8, ptr %.val4, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.at)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit35.i.invoke.i unwind label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.au = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.at)
          to label %.body unwind label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #29
  unreachable

bb.aj:                                            ; preds = %bb.e
  %i.aw = getelementptr inbounds nuw i8, ptr %.val4, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aw)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit35.i.invoke.i unwind label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ax = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aw)
          to label %.body unwind label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ay = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #29
  unreachable

bb.am:                                            ; preds = %bb.e
  %i.az = getelementptr inbounds nuw i8, ptr %.val4, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.az)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit35.i.invoke.i unwind label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ba = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.az)
          to label %.body unwind label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.bb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #29
  unreachable

bb.ap:                                            ; preds = %bb.e
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(32) %.val4)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i unwind label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.bc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(32) %.val4)
          to label %.body.i.i unwind label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.bd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i: ; preds = %bb.ap
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(32) %.val4)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit23.i.i unwind label %bb.be

bb.as:                                            ; preds = %bb.e
  %i.be = getelementptr inbounds nuw i8, ptr %.val4, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.be)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit35.i.invoke.i unwind label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.bf = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.be)
          to label %.body unwind label %bb.au
end_hunk_3
begin_hunk_4_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorECs2VbMhdeEr66_16delta_benchmarks:bb.a

bb.av:                                            ; preds = %bb.e
  %i.bh = getelementptr inbounds nuw i8, ptr %.val4, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bh)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit35.i.invoke.i unwind label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.bi = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bh)
          to label %.body unwind label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.bj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #29
  unreachable

bb.ay:                                            ; preds = %bb.e
  %i.bk = getelementptr inbounds nuw i8, ptr %.val4, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bk)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit35.i.invoke.i unwind label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.bl = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bk)
          to label %.body unwind label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.bm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #29
  unreachable

bb.bb:                                            ; preds = %bb.e
  %i.bn = getelementptr inbounds nuw i8, ptr %.val4, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bn)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit35.i.invoke.i unwind label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.bo = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bn)
          to label %.body unwind label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.bp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit35.i.invoke.i: ; preds = %bb.bb, %bb.ay, %bb.av, %bb.as, %bb.am, %bb.aj, %bb.ag, %bb.ad, %bb.aa, %bb.x, %bb.u, %bb.r, %bb.o, %bb.f
  %i.bq = phi ptr [ %i.bk, %bb.ay ], [ %i.bh, %bb.av ], [ %i.be, %bb.as ], [ %i.az, %bb.am ], [ %i.aw, %bb.aj ], [ %i.at, %bb.ag ], [ %i.aq, %bb.ad ], [ %i.an, %bb.aa ], [ %i.ak, %bb.x ], [ %i.ah, %bb.u ], [ %i.ae, %bb.r ], [ %i.ab, %bb.o ], [ %i.k, %bb.f ], [ %i.bn, %bb.bb ]
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bq)
          to label %bb.iq unwind label %bb.bg

bb.be:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.be, %bb.aq
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.br, %bb.be ], [ %i.bc, %bb.aq ]
  %i.bs = getelementptr inbounds nuw i8, ptr %.val4, i64 24
  %.val3.i.i = load ptr, ptr %i.bs, align 8, !alias.scope !1525, !nonnull !11, !noundef !11
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs2VbMhdeEr66_16delta_benchmarks(ptr nonnull %.val3.i.i) #30
          to label %.body unwind label %bb.bf

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit23.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i
  %i.bt = getelementptr inbounds nuw i8, ptr %.val4, i64 24
  %.val2.i.i = load ptr, ptr %i.bt, align 8, !alias.scope !1525, !nonnull !11, !noundef !11
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs2VbMhdeEr66_16delta_benchmarks(ptr nonnull %.val2.i.i)
          to label %bb.iq unwind label %bb.bg

bb.bf:                                            ; preds = %.body.i.i
  %i.bu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #29
  unreachable

bb.bg:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit23.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit35.i.invoke.i
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.bg, %.body.i.i, %bb.bc, %bb.az, %bb.aw, %bb.at, %bb.an, %bb.ak, %bb.ah, %bb.ae, %bb.ab, %bb.y, %bb.v, %bb.s, %bb.p, %bb.n, %bb.m, %bb.g
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.bv, %bb.bg ], [ %i.bo, %bb.bc ], [ %i.l, %bb.g ], [ %i.v, %bb.m ], [ %i.ac, %bb.p ], [ %i.af, %bb.s ], [ %i.ai, %bb.v ], [ %i.al, %bb.y ], [ %i.ao, %bb.ab ], [ %i.ar, %bb.ae ], [ %i.au, %bb.ah ], [ %i.ax, %bb.ak ], [ %i.ba, %bb.an ], [ %i.bf, %bb.at ], [ %i.bi, %bb.aw ], [ %i.bl, %bb.az ], [ %i.v, %bb.n ], [ %eh.lpad-body.i.i, %.body.i.i ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4, i64 noundef 32, i64 noundef 8) #31
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(24) %i.bw) #30
          to label %common.resume unwind label %bb.iu

bb.bh:                                            ; preds = %bb.a
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val5 = load ptr, ptr %i.bx, align 8, !nonnull !11, !noundef !11 ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1529)
  %i.by = load i64, ptr %.val5, align 8, !range !1532, !alias.scope !1529, !noundef !11
  switch i64 %i.by, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs4tdlwR1I4n2_7parquet6errors12ParquetErrorEECs2VbMhdeEr66_16delta_benchmarks.exit [
    i64 0, label %bb.bi
    i64 1, label %bb.bl
    i64 2, label %bb.bo
    i64 3, label %bb.br
    i64 5, label %bb.bu
  ]

bb.bi:                                            ; preds = %bb.bh
  %i.bz = getelementptr inbounds nuw i8, ptr %.val5, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bz)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit7.i.invoke.i unwind label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.ca = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bz)
          to label %bb.cb unwind label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.cb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #29
  unreachable

bb.bl:                                            ; preds = %bb.bh
  %i.cc = getelementptr inbounds nuw i8, ptr %.val5, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cc)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit7.i.invoke.i unwind label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.cd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cc)
          to label %bb.cb unwind label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.ce = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #29
  unreachable

bb.bo:                                            ; preds = %bb.bh
  %i.cf = getelementptr inbounds nuw i8, ptr %.val5, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cf)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit7.i.invoke.i unwind label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.cg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cf)
          to label %bb.cb unwind label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.ch = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #29
  unreachable

bb.br:                                            ; preds = %bb.bh
  %i.ci = getelementptr inbounds nuw i8, ptr %.val5, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ci)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit7.i.invoke.i unwind label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.cj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ci)
          to label %bb.cb unwind label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.ck = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit7.i.invoke.i: ; preds = %bb.br, %bb.bo, %bb.bl, %bb.bi
  %i.cl = phi ptr [ %i.cf, %bb.bo ], [ %i.cc, %bb.bl ], [ %i.bz, %bb.bi ], [ %i.ci, %bb.br ]
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cl)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs4tdlwR1I4n2_7parquet6errors12ParquetErrorEECs2VbMhdeEr66_16delta_benchmarks.exit unwind label %bb.ca

bb.bu:                                            ; preds = %bb.bh
  %i.cm = getelementptr inbounds nuw i8, ptr %.val5, i64 8
  %.val.i.i13 = load ptr, ptr %i.cm, align 8, !alias.scope !1529 ; 5 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.val5, i64 16
  %.val1.i.i14 = load ptr, ptr %i.cn, align 8, !alias.scope !1529, !nonnull !11, !align !69, !noundef !11 ; 5 uses
  %i.co = load ptr, ptr %.val1.i.i14, align 8, !invariant.load !11, !noalias !1529 ; 2 uses
  %.not.i.i.i15 = icmp eq ptr %i.co, null
  br i1 %.not.i.i.i15, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i13) ]
  invoke void %i.co(ptr noundef nonnull %.val.i.i13)
          to label %bb.bw unwind label %bb.by, !noalias !1529

bb.bw:                                            ; preds = %bb.bv, %bb.bu
  %i.cp = getelementptr inbounds nuw i8, ptr %.val1.i.i14, i64 8
  %i.cq = load i64, ptr %i.cp, align 8, !range !64, !invariant.load !11, !noalias !1529 ; 2 uses
  %i.cr = icmp eq i64 %i.cq, 0
  br i1 %i.cr, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs4tdlwR1I4n2_7parquet6errors12ParquetErrorEECs2VbMhdeEr66_16delta_benchmarks.exit, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i13) ]
  %i.cs = getelementptr inbounds nuw i8, ptr %.val1.i.i14, i64 16
  %i.ct = load i64, ptr %i.cs, align 8, !range !65, !invariant.load !11, !noalias !1529
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i13, i64 noundef range(i64 1, -9223372036854775808) %i.cq, i64 noundef range(i64 1, 536870913) %i.ct) #31, !noalias !1529
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs4tdlwR1I4n2_7parquet6errors12ParquetErrorEECs2VbMhdeEr66_16delta_benchmarks.exit

bb.by:                                            ; preds = %bb.bv
  %i.cu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.val1.i.i14, i64 8
  %i.cw = load i64, ptr %i.cv, align 8, !range !64, !invariant.load !11, !noalias !1529 ; 2 uses
  %i.cx = icmp eq i64 %i.cw, 0
  br i1 %i.cx, label %bb.cb, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.cy = getelementptr inbounds nuw i8, ptr %.val1.i.i14, i64 16
  %i.cz = load i64, ptr %i.cy, align 8, !range !65, !invariant.load !11, !noalias !1529
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i13, i64 noundef range(i64 1, -9223372036854775808) %i.cw, i64 noundef range(i64 1, 536870913) %i.cz) #31, !noalias !1529
  br label %bb.cb

bb.ca:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit7.i.invoke.i
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz, %bb.by, %bb.bs, %bb.bp, %bb.bm, %bb.bj
  %eh.lpad-body.i16 = phi { ptr, i32 } [ %i.da, %bb.ca ], [ %i.cj, %bb.bs ], [ %i.ca, %bb.bj ], [ %i.cd, %bb.bm ], [ %i.cg, %bb.bp ], [ %i.cu, %bb.bz ], [ %i.cu, %bb.by ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5, i64 noundef 32, i64 noundef 8) #31
  br label %common.resume

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs4tdlwR1I4n2_7parquet6errors12ParquetErrorEECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.bh, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit7.i.invoke.i, %bb.bw, %bb.bx
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5, i64 noundef 32, i64 noundef 8) #31
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs2VbMhdeEr66_16delta_benchmarks.exit

bb.cc:                                            ; preds = %bb.a
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val6 = load ptr, ptr %i.db, align 8, !nonnull !11, !noundef !11 ; 54 uses
  %i.dc = load i64, ptr %.val6, align 8, !range !1533, !alias.scope !1534, !noundef !11 ; 6 uses
  %i.dd = icmp ne i64 %i.dc, -9223372036854775800
  tail call void @llvm.assume(i1 %i.dd)
  %i.de = add nsw i64 %i.dc, 9223372036854775802
  %i.df = icmp ugt i64 %i.dc, -9223372036854775803
  %i.dg = select i1 %i.df, i64 %i.de, i64 2
  switch i64 %i.dg, label %bb.cd [
    i64 0, label %bb.cg
    i64 1, label %bb.cm
    i64 2, label %bb.cp
    i64 3, label %bb.do
    i64 4, label %bb.dv
    i64 5, label %bb.eb
    i64 6, label %bb.ee
    i64 7, label %bb.eh
    i64 8, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtCsjyY8HP3IvQ6_12object_store5ErrorEECs2VbMhdeEr66_16delta_benchmarks.exit
    i64 9, label %bb.ek
    i64 10, label %bb.en
  ]

bb.cd:                                            ; preds = %bb.cc
  %i.dh = getelementptr inbounds nuw i8, ptr %.val6, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dh)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit21.i.i.invoke.i unwind label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.di = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dh)
          to label %bb.gc unwind label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.dj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #29
  unreachable

bb.cg:                                            ; preds = %bb.cc
  %i.dk = getelementptr inbounds nuw i8, ptr %.val6, i64 24
  %.val27.i.i = load ptr, ptr %i.dk, align 8, !alias.scope !1534 ; 5 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.val6, i64 32
  %.val28.i.i = load ptr, ptr %i.dl, align 8, !alias.scope !1534, !nonnull !11, !align !69, !noundef !11 ; 5 uses
  %i.dm = load ptr, ptr %.val28.i.i, align 8, !invariant.load !11 ; 2 uses
  %.not.i.i.i24 = icmp eq ptr %i.dm, null
  br i1 %.not.i.i.i24, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val27.i.i) ]
  invoke void %i.dm(ptr noundef nonnull %.val27.i.i)
          to label %bb.ci unwind label %bb.ck

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  %i.dn = getelementptr inbounds nuw i8, ptr %.val28.i.i, i64 8
  %i.do = load i64, ptr %i.dn, align 8, !range !64, !invariant.load !11 ; 2 uses
  %i.dp = icmp eq i64 %i.do, 0
  br i1 %i.dp, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtCsjyY8HP3IvQ6_12object_store5ErrorEECs2VbMhdeEr66_16delta_benchmarks.exit, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val27.i.i) ]
  %i.dq = getelementptr inbounds nuw i8, ptr %.val28.i.i, i64 16
  %i.dr = load i64, ptr %i.dq, align 8, !range !65, !invariant.load !11
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val27.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.do, i64 noundef range(i64 1, 536870913) %i.dr) #31
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtCsjyY8HP3IvQ6_12object_store5ErrorEECs2VbMhdeEr66_16delta_benchmarks.exit

bb.ck:                                            ; preds = %bb.ch
  %i.ds = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.val28.i.i, i64 8
  %i.du = load i64, ptr %i.dt, align 8, !range !64, !invariant.load !11 ; 2 uses
  %i.dv = icmp eq i64 %i.du, 0
  br i1 %i.dv, label %bb.gc, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.dw = getelementptr inbounds nuw i8, ptr %.val28.i.i, i64 16
  %i.dx = load i64, ptr %i.dw, align 8, !range !65, !invariant.load !11
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val27.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.du, i64 noundef range(i64 1, 536870913) %i.dx) #31
  br label %bb.gc

bb.cm:                                            ; preds = %bb.cc
  %i.dy = getelementptr inbounds nuw i8, ptr %.val6, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dy)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i23 unwind label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.dz = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dy)
          to label %.body.i.i21 unwind label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.ea = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i23: ; preds = %bb.cm
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dy)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit32.i.i unwind label %bb.eq

bb.cp:                                            ; preds = %bb.cc
  %i.eb = icmp ne i64 %i.dc, -9223372036854775807
  tail call void @llvm.assume(i1 %i.eb)
  %i.ec = xor i64 %i.dc, -9223372036854775808
  %i.ed = icmp slt i64 %i.dc, 0
  %i.ee = select i1 %i.ed, i64 %i.ec, i64 1
  switch i64 %i.ee, label %bb.cq [
    i64 0, label %bb.ct
    i64 1, label %bb.cw
    i64 2, label %bb.cz
    i64 3, label %bb.dc
    i64 4, label %bb.df
  ]

bb.cq:                                            ; preds = %bb.cp
  %i.ef = getelementptr inbounds nuw i8, ptr %.val6, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ef)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i unwind label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.eg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ef)
          to label %.body.i.i.i unwind label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.eh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i: ; preds = %bb.cq
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ef)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i unwind label %bb.dl

bb.ct:                                            ; preds = %bb.cp
  %i.ei = getelementptr inbounds nuw i8, ptr %.val6, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ei)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit21.i.i.invoke.i unwind label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.ej = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ei)
          to label %bb.gc unwind label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.ek = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #29
  unreachable

bb.cw:                                            ; preds = %bb.cp
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %.val6)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i7.i.i.i unwind label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.el = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %.val6)
          to label %.body8.i.i.i unwind label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.em = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i7.i.i.i: ; preds = %bb.cw
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %.val6)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit10.i.i.i unwind label %bb.di

bb.cz:                                            ; preds = %bb.cp
  %i.en = getelementptr inbounds nuw i8, ptr %.val6, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.en)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i unwind label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.eo = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.en)
          to label %.body11.i.i.i unwind label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.ep = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i: ; preds = %bb.cz
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.en)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std4path7PathBufECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i unwind label %bb.dk

bb.dc:                                            ; preds = %bb.cp
  %i.eq = getelementptr inbounds nuw i8, ptr %.val6, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.eq)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit21.i.i.invoke.i unwind label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.er = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.eq)
          to label %bb.gc unwind label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.es = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #29
  unreachable

bb.df:                                            ; preds = %bb.cp
  %i.et = getelementptr inbounds nuw i8, ptr %.val6, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.et)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit21.i.i.invoke.i unwind label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.eu = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.et)
          to label %bb.gc unwind label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.ev = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #29
  unreachable

bb.di:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i7.i.i.i
  %i.ew = landingpad { ptr, i32 }
          cleanup
  br label %.body8.i.i.i

.body8.i.i.i:                                     ; preds = %bb.di, %bb.cx
  %eh.lpad-body9.i.i.i = phi { ptr, i32 } [ %i.ew, %bb.di ], [ %i.el, %bb.cx ]
  %i.ex = getelementptr inbounds nuw i8, ptr %.val6, i64 24
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts11InvalidPartECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(48) %i.ex) #30
          to label %bb.gc unwind label %bb.dj

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit10.i.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i7.i.i.i
  %i.ey = getelementptr inbounds nuw i8, ptr %.val6, i64 24
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts11InvalidPartECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(48) %i.ey)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtCsjyY8HP3IvQ6_12object_store5ErrorEECs2VbMhdeEr66_16delta_benchmarks.exit unwind label %bb.gb

bb.dj:                                            ; preds = %.body.i.i.i, %.body11.i.i.i, %.body8.i.i.i
  %i.ez = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #29
  unreachable

bb.dk:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i
  %i.fa = landingpad { ptr, i32 }
          cleanup
  br label %.body11.i.i.i

.body11.i.i.i:                                    ; preds = %bb.dk, %bb.da
  %eh.lpad-body12.i.i.i = phi { ptr, i32 } [ %i.fa, %bb.dk ], [ %i.eo, %bb.da ]
  %i.fb = getelementptr inbounds nuw i8, ptr %.val6, i64 32
  %.val2.i.i.i = load ptr, ptr %i.fb, align 8, !alias.scope !1537, !nonnull !11, !noundef !11
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs2VbMhdeEr66_16delta_benchmarks(ptr nonnull %.val2.i.i.i) #30
          to label %bb.gc unwind label %bb.dj

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std4path7PathBufECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i
  %i.fc = getelementptr inbounds nuw i8, ptr %.val6, i64 32
  %.val.i.i.i = load ptr, ptr %i.fc, align 8, !alias.scope !1537, !nonnull !11, !noundef !11
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs2VbMhdeEr66_16delta_benchmarks(ptr nonnull %.val.i.i.i)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtCsjyY8HP3IvQ6_12object_store5ErrorEECs2VbMhdeEr66_16delta_benchmarks.exit unwind label %bb.gb

bb.dl:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i
  %i.fd = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.dl, %bb.cr
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.fd, %bb.dl ], [ %i.eg, %bb.cr ]
  %i.fe = getelementptr inbounds nuw i8, ptr %.val6, i64 32
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.fe) #30
          to label %bb.gc unwind label %bb.dj

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i
  %i.ff = getelementptr inbounds nuw i8, ptr %.val6, i64 32 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ff)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit21.i.i.invoke.i unwind label %bb.dm

bb.dm:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i
  %i.fg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ff)
          to label %bb.gc unwind label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.fh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit21.i.i.invoke.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i, %bb.df, %bb.dc, %bb.ct, %bb.cd
  %i.fi = phi ptr [ %i.et, %bb.df ], [ %i.eq, %bb.dc ], [ %i.ei, %bb.ct ], [ %i.dh, %bb.cd ], [ %i.ff, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ]
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.fi)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtCsjyY8HP3IvQ6_12object_store5ErrorEECs2VbMhdeEr66_16delta_benchmarks.exit unwind label %bb.gb

bb.do:                                            ; preds = %bb.cc
  %i.fj = getelementptr inbounds nuw i8, ptr %.val6, i64 16
  %.val29.i.i = load ptr, ptr %i.fj, align 8, !alias.scope !1534, !noundef !11 ; 4 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %.val6, i64 24
  %.val30.i.i = load ptr, ptr %i.fk, align 8, !alias.scope !1534 ; 6 uses
  %i.fl = icmp eq ptr %.val29.i.i, null
  br i1 %i.fl, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtCsjyY8HP3IvQ6_12object_store5ErrorEECs2VbMhdeEr66_16delta_benchmarks.exit, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val30.i.i) ]
  %i.fm = load ptr, ptr %.val30.i.i, align 8, !invariant.load !11 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.fm, null
  br i1 %.not.i.i.i.i.i.i, label %bb.dr, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  invoke void %i.fm(ptr noundef nonnull %.val29.i.i)
          to label %bb.dr unwind label %bb.dt

bb.dr:                                            ; preds = %bb.dq, %bb.dp
  %i.fn = getelementptr inbounds nuw i8, ptr %.val30.i.i, i64 8
  %i.fo = load i64, ptr %i.fn, align 8, !range !64, !invariant.load !11 ; 2 uses
  %i.fp = icmp eq i64 %i.fo, 0
  br i1 %i.fp, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtCsjyY8HP3IvQ6_12object_store5ErrorEECs2VbMhdeEr66_16delta_benchmarks.exit, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.fq = getelementptr inbounds nuw i8, ptr %.val30.i.i, i64 16
  %i.fr = load i64, ptr %i.fq, align 8, !range !65, !invariant.load !11
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val29.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.fo, i64 noundef range(i64 1, 536870913) %i.fr) #31
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtCsjyY8HP3IvQ6_12object_store5ErrorEECs2VbMhdeEr66_16delta_benchmarks.exit

bb.dt:                                            ; preds = %bb.dq
  %i.fs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %.val30.i.i, i64 8
  %i.fu = load i64, ptr %i.ft, align 8, !range !64, !invariant.load !11 ; 2 uses
  %i.fv = icmp eq i64 %i.fu, 0
  br i1 %i.fv, label %bb.gc, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.fw = getelementptr inbounds nuw i8, ptr %.val30.i.i, i64 16
  %i.fx = load i64, ptr %i.fw, align 8, !range !65, !invariant.load !11
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val29.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.fu, i64 noundef range(i64 1, 536870913) %i.fx) #31
  br label %bb.gc

bb.dv:                                            ; preds = %bb.cc
  %i.fy = getelementptr inbounds nuw i8, ptr %.val6, i64 8
  %.val25.i.i = load ptr, ptr %i.fy, align 8, !alias.scope !1534 ; 5 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %.val6, i64 16
  %.val26.i.i = load ptr, ptr %i.fz, align 8, !alias.scope !1534, !nonnull !11, !align !69, !noundef !11 ; 5 uses
  %i.ga = load ptr, ptr %.val26.i.i, align 8, !invariant.load !11 ; 2 uses
  %.not.i33.i.i = icmp eq ptr %i.ga, null
  br i1 %.not.i33.i.i, label %bb.dx, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val25.i.i) ]
  invoke void %i.ga(ptr noundef nonnull %.val25.i.i)
          to label %bb.dx unwind label %bb.dz

bb.dx:                                            ; preds = %bb.dw, %bb.dv
  %i.gb = getelementptr inbounds nuw i8, ptr %.val26.i.i, i64 8
  %i.gc = load i64, ptr %i.gb, align 8, !range !64, !invariant.load !11 ; 2 uses
  %i.gd = icmp eq i64 %i.gc, 0
  br i1 %i.gd, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtCsjyY8HP3IvQ6_12object_store5ErrorEECs2VbMhdeEr66_16delta_benchmarks.exit, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val25.i.i) ]
  %i.ge = getelementptr inbounds nuw i8, ptr %.val26.i.i, i64 16
  %i.gf = load i64, ptr %i.ge, align 8, !range !65, !invariant.load !11
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val25.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.gc, i64 noundef range(i64 1, 536870913) %i.gf) #31
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtCsjyY8HP3IvQ6_12object_store5ErrorEECs2VbMhdeEr66_16delta_benchmarks.exit

bb.dz:                                            ; preds = %bb.dw
  %i.gg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %.val26.i.i, i64 8
  %i.gi = load i64, ptr %i.gh, align 8, !range !64, !invariant.load !11 ; 2 uses
  %i.gj = icmp eq i64 %i.gi, 0
  br i1 %i.gj, label %bb.gc, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.gk = getelementptr inbounds nuw i8, ptr %.val26.i.i, i64 16
  %i.gl = load i64, ptr %i.gk, align 8, !range !65, !invariant.load !11
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val25.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.gi, i64 noundef range(i64 1, 536870913) %i.gl) #31
  br label %bb.gc

bb.eb:                                            ; preds = %bb.cc
  %i.gm = getelementptr inbounds nuw i8, ptr %.val6, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.gm)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i37.i.i unwind label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.gn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.gm)
          to label %.body38.i.i unwind label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.go = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i37.i.i: ; preds = %bb.eb
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.gm)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit40.i.i unwind label %bb.ex

bb.ee:                                            ; preds = %bb.cc
  %i.gp = getelementptr inbounds nuw i8, ptr %.val6, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.gp)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i42.i.i unwind label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.gq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.gp)
          to label %.body43.i.i unwind label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.gr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i42.i.i: ; preds = %bb.ee
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.gp)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit45.i.i unwind label %bb.fd

bb.eh:                                            ; preds = %bb.cc
  %i.gs = getelementptr inbounds nuw i8, ptr %.val6, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.gs)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i47.i.i unwind label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.gt = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.gs)
          to label %.body48.i.i unwind label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.gu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i47.i.i: ; preds = %bb.eh
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.gs)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit50.i.i unwind label %bb.fj

bb.ek:                                            ; preds = %bb.cc
  %i.gv = getelementptr inbounds nuw i8, ptr %.val6, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.gv)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i52.i.i unwind label %bb.el

bb.el:                                            ; preds = %bb.ek
  %i.gw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.gv)
          to label %.body53.i.i unwind label %bb.em

bb.em:                                            ; preds = %bb.el
  %i.gx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i52.i.i: ; preds = %bb.ek
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.gv)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit55.i.i unwind label %bb.fp

bb.en:                                            ; preds = %bb.cc
  %i.gy = getelementptr inbounds nuw i8, ptr %.val6, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.gy)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i57.i.i unwind label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.gz = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.gy)
          to label %.body58.i.i unwind label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.ha = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i57.i.i: ; preds = %bb.en
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.gy)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit60.i.i unwind label %bb.fv

bb.eq:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i23
  %i.hb = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i21

.body.i.i21:                                      ; preds = %bb.eq, %bb.cn
  %eh.lpad-body.i.i22 = phi { ptr, i32 } [ %i.hb, %bb.eq ], [ %i.dz, %bb.cn ]
  %i.hc = getelementptr inbounds nuw i8, ptr %.val6, i64 32
  %.val23.i.i = load ptr, ptr %i.hc, align 8, !alias.scope !1534
  %i.hd = getelementptr inbounds nuw i8, ptr %.val6, i64 40
  %.val24.i.i = load ptr, ptr %i.hd, align 8, !alias.scope !1534, !nonnull !11, !align !69, !noundef !11
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs2VbMhdeEr66_16delta_benchmarks(ptr %.val23.i.i, ptr nonnull %.val24.i.i) #30
          to label %bb.gc unwind label %bb.ew

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit32.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i23
  %i.he = getelementptr inbounds nuw i8, ptr %.val6, i64 32
  %.val21.i.i = load ptr, ptr %i.he, align 8, !alias.scope !1534 ; 5 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %.val6, i64 40
  %.val22.i.i = load ptr, ptr %i.hf, align 8, !alias.scope !1534, !nonnull !11, !align !69, !noundef !11 ; 5 uses
  %i.hg = load ptr, ptr %.val22.i.i, align 8, !invariant.load !11 ; 2 uses
  %.not.i61.i.i = icmp eq ptr %i.hg, null
  br i1 %.not.i61.i.i, label %bb.es, label %bb.er

bb.er:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit32.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val21.i.i) ]
  invoke void %i.hg(ptr noundef nonnull %.val21.i.i)
          to label %bb.es unwind label %bb.eu

bb.es:                                            ; preds = %bb.er, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit32.i.i
  %i.hh = getelementptr inbounds nuw i8, ptr %.val22.i.i, i64 8
  %i.hi = load i64, ptr %i.hh, align 8, !range !64, !invariant.load !11 ; 2 uses
  %i.hj = icmp eq i64 %i.hi, 0
  br i1 %i.hj, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtCsjyY8HP3IvQ6_12object_store5ErrorEECs2VbMhdeEr66_16delta_benchmarks.exit, label %bb.et

bb.et:                                            ; preds = %bb.es
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val21.i.i) ]
  %i.hk = getelementptr inbounds nuw i8, ptr %.val22.i.i, i64 16
  %i.hl = load i64, ptr %i.hk, align 8, !range !65, !invariant.load !11
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val21.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.hi, i64 noundef range(i64 1, 536870913) %i.hl) #31
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtCsjyY8HP3IvQ6_12object_store5ErrorEECs2VbMhdeEr66_16delta_benchmarks.exit

bb.eu:                                            ; preds = %bb.er
  %i.hm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %.val22.i.i, i64 8
  %i.ho = load i64, ptr %i.hn, align 8, !range !64, !invariant.load !11 ; 2 uses
  %i.hp = icmp eq i64 %i.ho, 0
  br i1 %i.hp, label %bb.gc, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %i.hq = getelementptr inbounds nuw i8, ptr %.val22.i.i, i64 16
  %i.hr = load i64, ptr %i.hq, align 8, !range !65, !invariant.load !11
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val21.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.ho, i64 noundef range(i64 1, 536870913) %i.hr) #31
  br label %bb.gc

bb.ew:                                            ; preds = %.body58.i.i, %.body53.i.i, %.body48.i.i, %.body43.i.i, %.body38.i.i, %.body.i.i21
  %i.hs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #29
  unreachable

bb.ex:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i37.i.i
  %i.ht = landingpad { ptr, i32 }
          cleanup
  br label %.body38.i.i

.body38.i.i:                                      ; preds = %bb.ex, %bb.ec
  %eh.lpad-body39.i.i = phi { ptr, i32 } [ %i.ht, %bb.ex ], [ %i.gn, %bb.ec ]
  %i.hu = getelementptr inbounds nuw i8, ptr %.val6, i64 32
  %.val19.i.i = load ptr, ptr %i.hu, align 8, !alias.scope !1534
  %i.hv = getelementptr inbounds nuw i8, ptr %.val6, i64 40
  %.val20.i.i = load ptr, ptr %i.hv, align 8, !alias.scope !1534, !nonnull !11, !align !69, !noundef !11
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs2VbMhdeEr66_16delta_benchmarks(ptr %.val19.i.i, ptr nonnull %.val20.i.i) #30
          to label %bb.gc unwind label %bb.ew

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit40.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i37.i.i
  %i.hw = getelementptr inbounds nuw i8, ptr %.val6, i64 32
  %.val17.i.i = load ptr, ptr %i.hw, align 8, !alias.scope !1534 ; 5 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %.val6, i64 40
  %.val18.i.i = load ptr, ptr %i.hx, align 8, !alias.scope !1534, !nonnull !11, !align !69, !noundef !11 ; 5 uses
  %i.hy = load ptr, ptr %.val18.i.i, align 8, !invariant.load !11 ; 2 uses
  %.not.i64.i.i = icmp eq ptr %i.hy, null
  br i1 %.not.i64.i.i, label %bb.ez, label %bb.ey

bb.ey:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit40.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val17.i.i) ]
  invoke void %i.hy(ptr noundef nonnull %.val17.i.i)
          to label %bb.ez unwind label %bb.fb

bb.ez:                                            ; preds = %bb.ey, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit40.i.i
  %i.hz = getelementptr inbounds nuw i8, ptr %.val18.i.i, i64 8
  %i.ia = load i64, ptr %i.hz, align 8, !range !64, !invariant.load !11 ; 2 uses
  %i.ib = icmp eq i64 %i.ia, 0
  br i1 %i.ib, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtCsjyY8HP3IvQ6_12object_store5ErrorEECs2VbMhdeEr66_16delta_benchmarks.exit, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val17.i.i) ]
  %i.ic = getelementptr inbounds nuw i8, ptr %.val18.i.i, i64 16
  %i.id = load i64, ptr %i.ic, align 8, !range !65, !invariant.load !11
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val17.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.ia, i64 noundef range(i64 1, 536870913) %i.id) #31
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtCsjyY8HP3IvQ6_12object_store5ErrorEECs2VbMhdeEr66_16delta_benchmarks.exit

bb.fb:                                            ; preds = %bb.ey
  %i.ie = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %.val18.i.i, i64 8
  %i.ig = load i64, ptr %i.if, align 8, !range !64, !invariant.load !11 ; 2 uses
  %i.ih = icmp eq i64 %i.ig, 0
  br i1 %i.ih, label %bb.gc, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  %i.ii = getelementptr inbounds nuw i8, ptr %.val18.i.i, i64 16
  %i.ij = load i64, ptr %i.ii, align 8, !range !65, !invariant.load !11
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val17.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.ig, i64 noundef range(i64 1, 536870913) %i.ij) #31
  br label %bb.gc

bb.fd:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i42.i.i
  %i.ik = landingpad { ptr, i32 }
          cleanup
  br label %.body43.i.i

.body43.i.i:                                      ; preds = %bb.fd, %bb.ef
  %eh.lpad-body44.i.i = phi { ptr, i32 } [ %i.ik, %bb.fd ], [ %i.gq, %bb.ef ]
  %i.il = getelementptr inbounds nuw i8, ptr %.val6, i64 32
  %.val15.i.i = load ptr, ptr %i.il, align 8, !alias.scope !1534
  %i.im = getelementptr inbounds nuw i8, ptr %.val6, i64 40
  %.val16.i.i = load ptr, ptr %i.im, align 8, !alias.scope !1534, !nonnull !11, !align !69, !noundef !11
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs2VbMhdeEr66_16delta_benchmarks(ptr %.val15.i.i, ptr nonnull %.val16.i.i) #30
          to label %bb.gc unwind label %bb.ew

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit45.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i42.i.i
  %i.in = getelementptr inbounds nuw i8, ptr %.val6, i64 32
  %.val13.i.i = load ptr, ptr %i.in, align 8, !alias.scope !1534 ; 5 uses
  %i.io = getelementptr inbounds nuw i8, ptr %.val6, i64 40
  %.val14.i.i = load ptr, ptr %i.io, align 8, !alias.scope !1534, !nonnull !11, !align !69, !noundef !11 ; 5 uses
  %i.ip = load ptr, ptr %.val14.i.i, align 8, !invariant.load !11 ; 2 uses
  %.not.i67.i.i = icmp eq ptr %i.ip, null
  br i1 %.not.i67.i.i, label %bb.ff, label %bb.fe

bb.fe:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit45.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val13.i.i) ]
  invoke void %i.ip(ptr noundef nonnull %.val13.i.i)
          to label %bb.ff unwind label %bb.fh

bb.ff:                                            ; preds = %bb.fe, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit45.i.i
  %i.iq = getelementptr inbounds nuw i8, ptr %.val14.i.i, i64 8
  %i.ir = load i64, ptr %i.iq, align 8, !range !64, !invariant.load !11 ; 2 uses
  %i.is = icmp eq i64 %i.ir, 0
  br i1 %i.is, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtCsjyY8HP3IvQ6_12object_store5ErrorEECs2VbMhdeEr66_16delta_benchmarks.exit, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val13.i.i) ]
  %i.it = getelementptr inbounds nuw i8, ptr %.val14.i.i, i64 16
  %i.iu = load i64, ptr %i.it, align 8, !range !65, !invariant.load !11
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val13.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.ir, i64 noundef range(i64 1, 536870913) %i.iu) #31
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtCsjyY8HP3IvQ6_12object_store5ErrorEECs2VbMhdeEr66_16delta_benchmarks.exit

bb.fh:                                            ; preds = %bb.fe
  %i.iv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %.val14.i.i, i64 8
  %i.ix = load i64, ptr %i.iw, align 8, !range !64, !invariant.load !11 ; 2 uses
  %i.iy = icmp eq i64 %i.ix, 0
  br i1 %i.iy, label %bb.gc, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  %i.iz = getelementptr inbounds nuw i8, ptr %.val14.i.i, i64 16
  %i.ja = load i64, ptr %i.iz, align 8, !range !65, !invariant.load !11
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val13.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.ix, i64 noundef range(i64 1, 536870913) %i.ja) #31
  br label %bb.gc

bb.fj:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i47.i.i
  %i.jb = landingpad { ptr, i32 }
          cleanup
  br label %.body48.i.i

.body48.i.i:                                      ; preds = %bb.fj, %bb.ei
  %eh.lpad-body49.i.i = phi { ptr, i32 } [ %i.jb, %bb.fj ], [ %i.gt, %bb.ei ]
  %i.jc = getelementptr inbounds nuw i8, ptr %.val6, i64 32
  %.val11.i.i = load ptr, ptr %i.jc, align 8, !alias.scope !1534
  %i.jd = getelementptr inbounds nuw i8, ptr %.val6, i64 40
  %.val12.i.i = load ptr, ptr %i.jd, align 8, !alias.scope !1534, !nonnull !11, !align !69, !noundef !11
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs2VbMhdeEr66_16delta_benchmarks(ptr %.val11.i.i, ptr nonnull %.val12.i.i) #30
          to label %bb.gc unwind label %bb.ew

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit50.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i47.i.i
  %i.je = getelementptr inbounds nuw i8, ptr %.val6, i64 32
  %.val9.i.i = load ptr, ptr %i.je, align 8, !alias.scope !1534 ; 5 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %.val6, i64 40
  %.val10.i.i = load ptr, ptr %i.jf, align 8, !alias.scope !1534, !nonnull !11, !align !69, !noundef !11 ; 5 uses
  %i.jg = load ptr, ptr %.val10.i.i, align 8, !invariant.load !11 ; 2 uses
  %.not.i70.i.i = icmp eq ptr %i.jg, null
  br i1 %.not.i70.i.i, label %bb.fl, label %bb.fk

bb.fk:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit50.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i.i) ]
  invoke void %i.jg(ptr noundef nonnull %.val9.i.i)
          to label %bb.fl unwind label %bb.fn

bb.fl:                                            ; preds = %bb.fk, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit50.i.i
  %i.jh = getelementptr inbounds nuw i8, ptr %.val10.i.i, i64 8
  %i.ji = load i64, ptr %i.jh, align 8, !range !64, !invariant.load !11 ; 2 uses
  %i.jj = icmp eq i64 %i.ji, 0
  br i1 %i.jj, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtCsjyY8HP3IvQ6_12object_store5ErrorEECs2VbMhdeEr66_16delta_benchmarks.exit, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i.i) ]
  %i.jk = getelementptr inbounds nuw i8, ptr %.val10.i.i, i64 16
  %i.jl = load i64, ptr %i.jk, align 8, !range !65, !invariant.load !11
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.ji, i64 noundef range(i64 1, 536870913) %i.jl) #31
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtCsjyY8HP3IvQ6_12object_store5ErrorEECs2VbMhdeEr66_16delta_benchmarks.exit

bb.fn:                                            ; preds = %bb.fk
  %i.jm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %.val10.i.i, i64 8
  %i.jo = load i64, ptr %i.jn, align 8, !range !64, !invariant.load !11 ; 2 uses
  %i.jp = icmp eq i64 %i.jo, 0
  br i1 %i.jp, label %bb.gc, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  %i.jq = getelementptr inbounds nuw i8, ptr %.val10.i.i, i64 16
  %i.jr = load i64, ptr %i.jq, align 8, !range !65, !invariant.load !11
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.jo, i64 noundef range(i64 1, 536870913) %i.jr) #31
  br label %bb.gc

bb.fp:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i52.i.i
  %i.js = landingpad { ptr, i32 }
          cleanup
  br label %.body53.i.i

.body53.i.i:                                      ; preds = %bb.fp, %bb.el
  %eh.lpad-body54.i.i = phi { ptr, i32 } [ %i.js, %bb.fp ], [ %i.gw, %bb.el ]
  %i.jt = getelementptr inbounds nuw i8, ptr %.val6, i64 32
  %.val7.i.i = load ptr, ptr %i.jt, align 8, !alias.scope !1534
  %i.ju = getelementptr inbounds nuw i8, ptr %.val6, i64 40
  %.val8.i.i = load ptr, ptr %i.ju, align 8, !alias.scope !1534, !nonnull !11, !align !69, !noundef !11
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs2VbMhdeEr66_16delta_benchmarks(ptr %.val7.i.i, ptr nonnull %.val8.i.i) #30
          to label %bb.gc unwind label %bb.ew

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit55.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i52.i.i
  %i.jv = getelementptr inbounds nuw i8, ptr %.val6, i64 32
  %.val5.i.i = load ptr, ptr %i.jv, align 8, !alias.scope !1534 ; 5 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %.val6, i64 40
  %.val6.i.i = load ptr, ptr %i.jw, align 8, !alias.scope !1534, !nonnull !11, !align !69, !noundef !11 ; 5 uses
  %i.jx = load ptr, ptr %.val6.i.i, align 8, !invariant.load !11 ; 2 uses
  %.not.i73.i.i = icmp eq ptr %i.jx, null
  br i1 %.not.i73.i.i, label %bb.fr, label %bb.fq

bb.fq:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit55.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val5.i.i) ]
  invoke void %i.jx(ptr noundef nonnull %.val5.i.i)
          to label %bb.fr unwind label %bb.ft

bb.fr:                                            ; preds = %bb.fq, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit55.i.i
  %i.jy = getelementptr inbounds nuw i8, ptr %.val6.i.i, i64 8
  %i.jz = load i64, ptr %i.jy, align 8, !range !64, !invariant.load !11 ; 2 uses
  %i.ka = icmp eq i64 %i.jz, 0
  br i1 %i.ka, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtCsjyY8HP3IvQ6_12object_store5ErrorEECs2VbMhdeEr66_16delta_benchmarks.exit, label %bb.fs

bb.fs:                                            ; preds = %bb.fr
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val5.i.i) ]
  %i.kb = getelementptr inbounds nuw i8, ptr %.val6.i.i, i64 16
  %i.kc = load i64, ptr %i.kb, align 8, !range !65, !invariant.load !11
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.jz, i64 noundef range(i64 1, 536870913) %i.kc) #31
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtCsjyY8HP3IvQ6_12object_store5ErrorEECs2VbMhdeEr66_16delta_benchmarks.exit

bb.ft:                                            ; preds = %bb.fq
  %i.kd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %.val6.i.i, i64 8
  %i.kf = load i64, ptr %i.ke, align 8, !range !64, !invariant.load !11 ; 2 uses
  %i.kg = icmp eq i64 %i.kf, 0
  br i1 %i.kg, label %bb.gc, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  %i.kh = getelementptr inbounds nuw i8, ptr %.val6.i.i, i64 16
  %i.ki = load i64, ptr %i.kh, align 8, !range !65, !invariant.load !11
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.kf, i64 noundef range(i64 1, 536870913) %i.ki) #31
  br label %bb.gc

bb.fv:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i57.i.i
  %i.kj = landingpad { ptr, i32 }
          cleanup
  br label %.body58.i.i

.body58.i.i:                                      ; preds = %bb.fv, %bb.eo
  %eh.lpad-body59.i.i = phi { ptr, i32 } [ %i.kj, %bb.fv ], [ %i.gz, %bb.eo ]
  %i.kk = getelementptr inbounds nuw i8, ptr %.val6, i64 32
  %.val3.i.i17 = load ptr, ptr %i.kk, align 8, !alias.scope !1534
  %i.kl = getelementptr inbounds nuw i8, ptr %.val6, i64 40
  %.val4.i.i = load ptr, ptr %i.kl, align 8, !alias.scope !1534, !nonnull !11, !align !69, !noundef !11
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs2VbMhdeEr66_16delta_benchmarks(ptr %.val3.i.i17, ptr nonnull %.val4.i.i) #30
          to label %bb.gc unwind label %bb.ew

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit60.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i57.i.i
  %i.km = getelementptr inbounds nuw i8, ptr %.val6, i64 32
  %.val.i.i19 = load ptr, ptr %i.km, align 8, !alias.scope !1534 ; 5 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %.val6, i64 40
  %.val2.i.i20 = load ptr, ptr %i.kn, align 8, !alias.scope !1534, !nonnull !11, !align !69, !noundef !11 ; 5 uses
  %i.ko = load ptr, ptr %.val2.i.i20, align 8, !invariant.load !11 ; 2 uses
  %.not.i76.i.i = icmp eq ptr %i.ko, null
  br i1 %.not.i76.i.i, label %bb.fx, label %bb.fw

bb.fw:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit60.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i19) ]
  invoke void %i.ko(ptr noundef nonnull %.val.i.i19)
          to label %bb.fx unwind label %bb.fz

bb.fx:                                            ; preds = %bb.fw, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit60.i.i
  %i.kp = getelementptr inbounds nuw i8, ptr %.val2.i.i20, i64 8
  %i.kq = load i64, ptr %i.kp, align 8, !range !64, !invariant.load !11 ; 2 uses
  %i.kr = icmp eq i64 %i.kq, 0
  br i1 %i.kr, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtCsjyY8HP3IvQ6_12object_store5ErrorEECs2VbMhdeEr66_16delta_benchmarks.exit, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i19) ]
  %i.ks = getelementptr inbounds nuw i8, ptr %.val2.i.i20, i64 16
  %i.kt = load i64, ptr %i.ks, align 8, !range !65, !invariant.load !11
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i19, i64 noundef range(i64 1, -9223372036854775808) %i.kq, i64 noundef range(i64 1, 536870913) %i.kt) #31
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtCsjyY8HP3IvQ6_12object_store5ErrorEECs2VbMhdeEr66_16delta_benchmarks.exit

bb.fz:                                            ; preds = %bb.fw
  %i.ku = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %.val2.i.i20, i64 8
  %i.kw = load i64, ptr %i.kv, align 8, !range !64, !invariant.load !11 ; 2 uses
  %i.kx = icmp eq i64 %i.kw, 0
  br i1 %i.kx, label %bb.gc, label %bb.ga

bb.ga:                                            ; preds = %bb.fz
  %i.ky = getelementptr inbounds nuw i8, ptr %.val2.i.i20, i64 16
  %i.kz = load i64, ptr %i.ky, align 8, !range !65, !invariant.load !11
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i19, i64 noundef range(i64 1, -9223372036854775808) %i.kw, i64 noundef range(i64 1, 536870913) %i.kz) #31
  br label %bb.gc

bb.gb:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit21.i.i.invoke.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std4path7PathBufECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit10.i.i.i
  %i.la = landingpad { ptr, i32 }
          cleanup
  br label %bb.gc

bb.gc:                                            ; preds = %bb.gb, %bb.ga, %bb.fz, %.body58.i.i, %bb.fu, %bb.ft, %.body53.i.i, %bb.fo, %bb.fn, %.body48.i.i, %bb.fi, %bb.fh, %.body43.i.i, %bb.fc, %bb.fb, %.body38.i.i, %bb.ev, %bb.eu, %.body.i.i21, %bb.ea, %bb.dz, %bb.du, %bb.dt, %bb.dm, %.body.i.i.i, %.body11.i.i.i, %.body8.i.i.i, %bb.dg, %bb.dd, %bb.cu, %bb.cl, %bb.ck, %bb.ce
  %eh.lpad-body.i18 = phi { ptr, i32 } [ %i.la, %bb.gb ], [ %i.kd, %bb.ft ], [ %i.di, %bb.ce ], [ %i.ds, %bb.ck ], [ %i.fg, %bb.dm ], [ %i.fs, %bb.dt ], [ %i.gg, %bb.dz ], [ %i.hm, %bb.eu ], [ %eh.lpad-body59.i.i, %.body58.i.i ], [ %i.ie, %bb.fb ], [ %i.iv, %bb.fh ], [ %i.jm, %bb.fn ], [ %i.ds, %bb.cl ], [ %eh.lpad-body12.i.i.i, %.body11.i.i.i ], [ %i.ej, %bb.cu ], [ %i.er, %bb.dd ], [ %i.eu, %bb.dg ], [ %eh.lpad-body.i.i.i, %.body.i.i.i ], [ %eh.lpad-body9.i.i.i, %.body8.i.i.i ], [ %i.fs, %bb.du ], [ %i.gg, %bb.ea ], [ %i.hm, %bb.ev ], [ %eh.lpad-body.i.i22, %.body.i.i21 ], [ %eh.lpad-body39.i.i, %.body38.i.i ], [ %eh.lpad-body44.i.i, %.body43.i.i ], [ %eh.lpad-body49.i.i, %.body48.i.i ], [ %eh.lpad-body54.i.i, %.body53.i.i ], [ %i.ie, %bb.fc ], [ %i.iv, %bb.fi ], [ %i.jm, %bb.fo ], [ %i.kd, %bb.fu ], [ %i.ku, %bb.ga ], [ %i.ku, %bb.fz ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val6, i64 noundef 72, i64 noundef 8) #31
  br label %common.resume

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtCsjyY8HP3IvQ6_12object_store5ErrorEECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.cc, %bb.ci, %bb.cj, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit10.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std4path7PathBufECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit21.i.i.invoke.i, %bb.do, %bb.dr, %bb.ds, %bb.dx, %bb.dy, %bb.es, %bb.et, %bb.ez, %bb.fa, %bb.ff, %bb.fg, %bb.fl, %bb.fm, %bb.fr, %bb.fs, %bb.fx, %bb.fy
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val6, i64 noundef 72, i64 noundef 8) #31
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs2VbMhdeEr66_16delta_benchmarks.exit

bb.gd:                                            ; preds = %bb.a
  %i.lb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val3 = load ptr, ptr %i.lb, align 8, !nonnull !11, !noundef !11
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs2VbMhdeEr66_16delta_benchmarks(ptr nonnull %.val3)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs2VbMhdeEr66_16delta_benchmarks.exit

bb.ge:                                            ; preds = %bb.a
  %i.lc = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val7 = load ptr, ptr %i.lc, align 8, !nonnull !11, !noundef !11 ; 5 uses
  %i.ld = load i64, ptr %.val7, align 8, !range !66, !alias.scope !1540, !noundef !11
  switch i64 %i.ld, label %bb.iv [
    i64 0, label %bb.gf
    i64 1, label %bb.gi
  ]

.sink.split.i.i:                                  ; preds = %bb.gi, %bb.gf
  %.sink.i.i = phi ptr [ %i.le, %bb.gf ], [ %i.lh, %bb.gi ]
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %.sink.i.i)
          to label %bb.iv unwind label %bb.gl

bb.gf:                                            ; preds = %bb.ge
  %i.le = getelementptr inbounds nuw i8, ptr %.val7, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.le)
          to label %.sink.split.i.i unwind label %bb.gg

bb.gg:                                            ; preds = %bb.gf
  %i.lf = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.le)
          to label %.body26 unwind label %bb.gh

bb.gh:                                            ; preds = %bb.gg
  %i.lg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #29
  unreachable

bb.gi:                                            ; preds = %bb.ge
  %i.lh = getelementptr inbounds nuw i8, ptr %.val7, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.lh)
          to label %.sink.split.i.i unwind label %bb.gj

bb.gj:                                            ; preds = %bb.gi
  %i.li = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.lh)
          to label %.body26 unwind label %bb.gk

bb.gk:                                            ; preds = %bb.gj
  %i.lj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #29
  unreachable

bb.gl:                                            ; preds = %.sink.split.i.i
  %i.lk = landingpad { ptr, i32 }
          cleanup
  br label %.body26

.body26:                                          ; preds = %bb.gl, %bb.gj, %bb.gg
  %eh.lpad-body.i25 = phi { ptr, i32 } [ %i.lk, %bb.gl ], [ %i.lf, %bb.gg ], [ %i.li, %bb.gj ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val7, i64 noundef 32, i64 noundef 8) #31
  %i.ll = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(24) %i.ll) #30
          to label %common.resume unwind label %bb.iu

bb.gm:                                            ; preds = %bb.a
  %i.lm = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.lm)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit29 unwind label %bb.gn

bb.gn:                                            ; preds = %bb.gm
  %i.ln = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.lm)
          to label %common.resume unwind label %bb.go

bb.go:                                            ; preds = %bb.gn
  %i.lo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit29: ; preds = %bb.gm
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.lm)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs2VbMhdeEr66_16delta_benchmarks.exit

bb.gp:                                            ; preds = %bb.a
  %i.lp = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.lp)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit31 unwind label %bb.gq

bb.gq:                                            ; preds = %bb.gp
  %i.lq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.lp)
          to label %common.resume unwind label %bb.gr

bb.gr:                                            ; preds = %bb.gq
  %i.lr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit31: ; preds = %bb.gp
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.lp)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs2VbMhdeEr66_16delta_benchmarks.exit

bb.gs:                                            ; preds = %bb.a
  %i.ls = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ls)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit33 unwind label %bb.gt

bb.gt:                                            ; preds = %bb.gs
  %i.lt = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ls)
          to label %common.resume unwind label %bb.gu

bb.gu:                                            ; preds = %bb.gt
  %i.lu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit33: ; preds = %bb.gs
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ls)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs2VbMhdeEr66_16delta_benchmarks.exit

bb.gv:                                            ; preds = %bb.a
  %i.lv = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.lv)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit35 unwind label %bb.gw

bb.gw:                                            ; preds = %bb.gv
  %i.lw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.lv)
          to label %common.resume unwind label %bb.gx

bb.gx:                                            ; preds = %bb.gw
  %i.lx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit35: ; preds = %bb.gv
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.lv)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs2VbMhdeEr66_16delta_benchmarks.exit

bb.gy:                                            ; preds = %bb.a
  %i.ly = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val8 = load ptr, ptr %i.ly, align 8, !nonnull !11, !noundef !11 ; 3 uses
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common5error11SchemaErrorECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(40) %.val8)
          to label %bb.iz unwind label %.body36

.body36:                                          ; preds = %bb.gy
  %i.lz = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8, i64 noundef 40, i64 noundef 8) #31
  %i.ma = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val12 = load ptr, ptr %i.ma, align 8, !nonnull !11, !noundef !11
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtB4_6option6OptionNtNtBL_6string6StringEEECs2VbMhdeEr66_16delta_benchmarks(ptr nonnull %.val12) #30
          to label %common.resume unwind label %bb.iu

bb.gz:                                            ; preds = %bb.a
  %i.mb = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.mb)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit39 unwind label %bb.ha

bb.ha:                                            ; preds = %bb.gz
  %i.mc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.mb)
          to label %common.resume unwind label %bb.hb

bb.hb:                                            ; preds = %bb.ha
  %i.md = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit39: ; preds = %bb.gz
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.mb)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs2VbMhdeEr66_16delta_benchmarks.exit

bb.hc:                                            ; preds = %bb.a
  %i.me = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val9 = load ptr, ptr %i.me, align 8, !nonnull !11, !noundef !11 ; 4 uses
  %i.mf = getelementptr i8, ptr %.val9, i64 8
  %.val.i = load ptr, ptr %i.mf, align 8, !noundef !11 ; 4 uses
  %i.mg = getelementptr i8, ptr %.val9, i64 16
  %.val1.i = load ptr, ptr %i.mg, align 8         ; 6 uses
  %i.mh = icmp eq ptr %.val.i, null
  br i1 %i.mh, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEECs2VbMhdeEr66_16delta_benchmarks.exit, label %bb.hd

bb.hd:                                            ; preds = %bb.hc
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i) ]
  %i.mi = load ptr, ptr %.val1.i, align 8, !invariant.load !11 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.mi, null
  br i1 %.not.i.i.i.i.i, label %bb.hf, label %bb.he

bb.he:                                            ; preds = %bb.hd
  invoke void %i.mi(ptr noundef nonnull %.val.i)
          to label %bb.hf unwind label %bb.hh

bb.hf:                                            ; preds = %bb.he, %bb.hd
  %i.mj = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.mk = load i64, ptr %i.mj, align 8, !range !64, !invariant.load !11 ; 2 uses
  %i.ml = icmp eq i64 %i.mk, 0
  br i1 %i.ml, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEECs2VbMhdeEr66_16delta_benchmarks.exit, label %bb.hg

bb.hg:                                            ; preds = %bb.hf
  %i.mm = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.mn = load i64, ptr %i.mm, align 8, !range !65, !invariant.load !11
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.mk, i64 noundef range(i64 1, 536870913) %i.mn) #31
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEECs2VbMhdeEr66_16delta_benchmarks.exit

bb.hh:                                            ; preds = %bb.he
  %i.mo = landingpad { ptr, i32 }
          cleanup
  %i.mp = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.mq = load i64, ptr %i.mp, align 8, !range !64, !invariant.load !11 ; 2 uses
  %i.mr = icmp eq i64 %i.mq, 0
  br i1 %i.mr, label %bb.hj, label %bb.hi

bb.hi:                                            ; preds = %bb.hh
  %i.ms = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.mt = load i64, ptr %i.ms, align 8, !range !65, !invariant.load !11
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.mq, i64 noundef range(i64 1, 536870913) %i.mt) #31
  br label %bb.hj

bb.hj:                                            ; preds = %bb.hi, %bb.hh
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9, i64 noundef 24, i64 noundef 8) #31
  br label %common.resume

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.hc, %bb.hf, %bb.hg
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9, i64 noundef 24, i64 noundef 8) #31
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs2VbMhdeEr66_16delta_benchmarks.exit

bb.hk:                                            ; preds = %bb.a
  %i.mu = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.mu)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit41 unwind label %bb.hl

bb.hl:                                            ; preds = %bb.hk
  %i.mv = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.mu)
          to label %common.resume unwind label %bb.hm

bb.hm:                                            ; preds = %bb.hl
  %i.mw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit41: ; preds = %bb.hk
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.mu)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs2VbMhdeEr66_16delta_benchmarks.exit

bb.hn:                                            ; preds = %bb.a
  %i.mx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.mx, align 8            ; 5 uses
  %i.my = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val2 = load ptr, ptr %i.my, align 8, !nonnull !11, !align !69, !noundef !11 ; 5 uses
  %i.mz = load ptr, ptr %.val2, align 8, !invariant.load !11 ; 2 uses
  %.not.i = icmp eq ptr %i.mz, null
  br i1 %.not.i, label %bb.hp, label %bb.ho

bb.ho:                                            ; preds = %bb.hn
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.mz(ptr noundef nonnull %.val)
          to label %bb.hp unwind label %bb.hr

bb.hp:                                            ; preds = %bb.ho, %bb.hn
  %i.na = getelementptr inbounds nuw i8, ptr %.val2, i64 8
  %i.nb = load i64, ptr %i.na, align 8, !range !64, !invariant.load !11 ; 2 uses
  %i.nc = icmp eq i64 %i.nb, 0
  br i1 %i.nc, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs2VbMhdeEr66_16delta_benchmarks.exit, label %bb.hq

bb.hq:                                            ; preds = %bb.hp
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.nd = getelementptr inbounds nuw i8, ptr %.val2, i64 16
  %i.ne = load i64, ptr %i.nd, align 8, !range !65, !invariant.load !11
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, -9223372036854775808) %i.nb, i64 noundef range(i64 1, 536870913) %i.ne) #31
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs2VbMhdeEr66_16delta_benchmarks.exit

bb.hr:                                            ; preds = %bb.ho
  %i.nf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %.val2, i64 8
  %i.nh = load i64, ptr %i.ng, align 8, !range !64, !invariant.load !11 ; 2 uses
  %i.ni = icmp eq i64 %i.nh, 0
  br i1 %i.ni, label %common.resume, label %bb.hs

bb.hs:                                            ; preds = %bb.hr
  %i.nj = getelementptr inbounds nuw i8, ptr %.val2, i64 16
  %i.nk = load i64, ptr %i.nj, align 8, !range !65, !invariant.load !11
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, -9223372036854775808) %i.nh, i64 noundef range(i64 1, 536870913) %i.nk) #31
  br label %common.resume

bb.ht:                                            ; preds = %bb.a
  %i.nl = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.nl)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i unwind label %bb.hu

bb.hu:                                            ; preds = %bb.ht
  %i.nm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.nl)
          to label %.body43 unwind label %bb.hv

bb.hv:                                            ; preds = %bb.hu
  %i.nn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %bb.ht
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.nl)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit45 unwind label %bb.jf

bb.hw:                                            ; preds = %bb.a
  %i.no = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.no)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit48 unwind label %bb.hx

bb.hx:                                            ; preds = %bb.hw
  %i.np = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.no)
          to label %common.resume unwind label %bb.hy

bb.hy:                                            ; preds = %bb.hx
  %i.nq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit48: ; preds = %bb.hw
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.no)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs2VbMhdeEr66_16delta_benchmarks.exit

bb.hz:                                            ; preds = %bb.a
  %i.nr = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val10 = load ptr, ptr %i.nr, align 8, !nonnull !11, !noundef !11 ; 7 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %.val10, i64 40 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ns)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i52 unwind label %bb.ia

bb.ia:                                            ; preds = %bb.hz
  %i.nt = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ns)
          to label %.body.i.i49 unwind label %bb.ib

bb.ib:                                            ; preds = %bb.ia
  %i.nu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i52: ; preds = %bb.hz
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ns)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit.i.i unwind label %bb.ic

bb.ic:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i52
  %i.nv = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i49

.body.i.i49:                                      ; preds = %bb.ic, %bb.ia
  %eh.lpad-body.i.i50 = phi { ptr, i32 } [ %i.nv, %bb.ic ], [ %i.nt, %bb.ia ]
  %i.nw = getelementptr inbounds nuw i8, ptr %.val10, i64 64
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common10diagnostic14DiagnosticNoteEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(24) %i.nw) #30
          to label %.body2.i.i unwind label %bb.ij

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i52
  %i.nx = getelementptr inbounds nuw i8, ptr %.val10, i64 64 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCsjhHCjzi9uUI_17datafusion_common10diagnostic14DiagnosticNoteENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.nx)
          to label %bb.ie unwind label %bb.id

bb.id:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit.i.i
  %i.ny = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCsjhHCjzi9uUI_17datafusion_common10diagnostic14DiagnosticNoteENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.nx)
          to label %.body2.i.i unwind label %bb.if

bb.ie:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit.i.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCsjhHCjzi9uUI_17datafusion_common10diagnostic14DiagnosticNoteENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.nx)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common10diagnostic14DiagnosticNoteEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i unwind label %bb.ig

bb.if:                                            ; preds = %bb.id
  %i.nz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #29
  unreachable

.body2.i.i:                                       ; preds = %bb.ig, %bb.id, %.body.i.i49
  %.pn.i.i = phi { ptr, i32 } [ %eh.lpad-body.i.i50, %.body.i.i49 ], [ %i.ob, %bb.ig ], [ %i.ny, %bb.id ]
  %i.oa = getelementptr inbounds nuw i8, ptr %.val10, i64 88
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common10diagnostic14DiagnosticHelpEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(24) %i.oa) #30
          to label %.body53 unwind label %bb.ij

bb.ig:                                            ; preds = %bb.ie
  %i.ob = landingpad { ptr, i32 }
          cleanup
  br label %.body2.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common10diagnostic14DiagnosticNoteEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i: ; preds = %bb.ie
  %i.oc = getelementptr inbounds nuw i8, ptr %.val10, i64 88 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCsjhHCjzi9uUI_17datafusion_common10diagnostic14DiagnosticHelpENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.oc)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common10diagnostic14DiagnosticHelpEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i unwind label %bb.ih

bb.ih:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common10diagnostic14DiagnosticNoteEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i
  %i.od = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCsjhHCjzi9uUI_17datafusion_common10diagnostic14DiagnosticHelpENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.oc)
          to label %.body53 unwind label %bb.ii

bb.ii:                                            ; preds = %bb.ih
  %i.oe = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common10diagnostic14DiagnosticHelpEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common10diagnostic14DiagnosticNoteEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCsjhHCjzi9uUI_17datafusion_common10diagnostic14DiagnosticHelpENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.oc)
          to label %bb.jh unwind label %bb.ik

bb.ij:                                            ; preds = %.body2.i.i, %.body.i.i49
  %i.of = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #29
  unreachable

bb.ik:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common10diagnostic14DiagnosticHelpEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i
  %i.og = landingpad { ptr, i32 }
          cleanup
  br label %.body53

.body53:                                          ; preds = %bb.ik, %bb.ih, %.body2.i.i
  %eh.lpad-body.i51 = phi { ptr, i32 } [ %i.og, %bb.ik ], [ %i.od, %bb.ih ], [ %.pn.i.i, %.body2.i.i ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val10, i64 noundef 120, i64 noundef 8) #31
  %i.oh = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(8) %i.oh) #30
          to label %common.resume unwind label %bb.iu

bb.il:                                            ; preds = %bb.a
  %i.oi = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.oi)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs2VbMhdeEr66_16delta_benchmarks.exit unwind label %bb.im

bb.im:                                            ; preds = %bb.il
  %i.oj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.oi)
          to label %common.resume unwind label %bb.in

bb.in:                                            ; preds = %bb.im
  %i.ok = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.il
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.oi)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs2VbMhdeEr66_16delta_benchmarks.exit

bb.io:                                            ; preds = %bb.a
  %i.ol = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1543)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1546)
  %i.om = load ptr, ptr %i.ol, align 8, !alias.scope !1549, !nonnull !11, !noundef !11
  %i.on = atomicrmw sub ptr %i.om, i64 1 release, align 8, !noalias !1549
  %i.oo = icmp eq i64 %i.on, 1
  br i1 %i.oo, label %bb.ip, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs2VbMhdeEr66_16delta_benchmarks.exit

bb.ip:                                            ; preds = %bb.io
  fence acquire
  tail call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ol) #34
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs2VbMhdeEr66_16delta_benchmarks.exit

bb.iq:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit23.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit35.i.invoke.i, %bb.l, %bb.k, %bb.e
end_hunk_4
begin_hunk_5_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueECs2VbMhdeEr66_16delta_benchmarks:bb.a

bb.bd:                                            ; preds = %bb.bc
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcSTaIBx_NtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEE9drop_slowBR_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.cm) #34
          to label %common.resume unwind label %bb.bf

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionTaINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEEEECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.ba, %bb.bb
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1675)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1678)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1681)
  %i.cr = load ptr, ptr %i.cq, align 16, !alias.scope !1684, !nonnull !11, !noundef !11
  %i.cs = atomicrmw sub ptr %i.cr, i64 1 release, align 8, !noalias !1684
  %i.ct = icmp eq i64 %i.cs, 1
  br i1 %i.ct, label %bb.be, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs2VbMhdeEr66_16delta_benchmarks.exit

bb.be:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionTaINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEEEECs2VbMhdeEr66_16delta_benchmarks.exit
  fence acquire
  tail call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcSTaIBx_NtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEE9drop_slowBR_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.cq) #34
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs2VbMhdeEr66_16delta_benchmarks.exit

bb.bf:                                            ; preds = %bb.bd, %.body
  %i.cu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #29
  unreachable

bb.bg:                                            ; preds = %bb.b
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.h, i64 noundef 24, i64 noundef 8) #31, !noalias !1570, !inline_history !1381
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1685)
  %i.cw = load ptr, ptr %i.cv, align 8, !alias.scope !1685, !nonnull !11, !noundef !11 ; 3 uses
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 16 dereferenceable(64) %i.cw)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEECs2VbMhdeEr66_16delta_benchmarks.exit unwind label %bb.bh, !noalias !1685, !inline_history !1688

bb.bh:                                            ; preds = %bb.bg
  %i.cx = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cw, i64 noundef 64, i64 noundef 16) #31, !noalias !1685
  br label %common.resume

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.bg
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cw, i64 noundef 64, i64 noundef 16) #31, !noalias !1685
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs2VbMhdeEr66_16delta_benchmarks.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common6unnest13UnnestOptionsECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCsjhHCjzi9uUI_17datafusion_common6unnest21RecursionUnnestOptionENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common6unnest21RecursionUnnestOptionEECs2VbMhdeEr66_16delta_benchmarks.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCsjhHCjzi9uUI_17datafusion_common6unnest21RecursionUnnestOptionENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecNtNtCsjhHCjzi9uUI_17datafusion_common6unnest21RecursionUnnestOptionEECs2VbMhdeEr66_16delta_benchmarks.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecNtNtCsjhHCjzi9uUI_17datafusion_common6unnest21RecursionUnnestOptionEECs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common6unnest21RecursionUnnestOptionEECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCsjhHCjzi9uUI_17datafusion_common6unnest21RecursionUnnestOptionENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(56) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1689)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1692)
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !1695, !nonnull !11, !noundef !11
  %i.c = atomicrmw sub ptr %i.b, i64 1 release, align 8, !noalias !1695
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs2VbMhdeEr66_16delta_benchmarks.exit

bb.b:                                             ; preds = %bb.a
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaE9drop_slowCs1N9T06jgEdt_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a) #34
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs2VbMhdeEr66_16delta_benchmarks.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB4_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) #30
          to label %.body unwind label %bb.j

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.a, %bb.b
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEENtNtNtBK_3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs2VbMhdeEr66_16delta_benchmarks.exit
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEENtNtNtBR_3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %.body unwind label %bb.f

bb.e:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs2VbMhdeEr66_16delta_benchmarks.exit
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEENtNtNtBR_3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB4_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEEECs2VbMhdeEr66_16delta_benchmarks.exit unwind label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #29
  unreachable

.body:                                            ; preds = %bb.g, %bb.d, %bb.c
  %.pn = phi { ptr, i32 } [ %i.e, %bb.c ], [ %i.i, %bb.g ], [ %i.f, %bb.d ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies22FunctionalDependenciesECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(24) %i.h) #30
          to label %common.resume unwind label %bb.j

bb.g:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB4_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEEECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies20FunctionalDependenceENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies22FunctionalDependenciesECs2VbMhdeEr66_16delta_benchmarks.exit unwind label %bb.h

bb.h:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB4_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEEECs2VbMhdeEr66_16delta_benchmarks.exit
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies20FunctionalDependenceENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %common.resume unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #29
  unreachable

common.resume:                                    ; preds = %.body, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.k, %bb.h ], [ %.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies22FunctionalDependenciesECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB4_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEEECs2VbMhdeEr66_16delta_benchmarks.exit
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies20FunctionalDependenceENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
  ret void

bb.j:                                             ; preds = %.body, %bb.c
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #29
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs2VbMhdeEr66_16delta_benchmarks(ptr %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = ptrtoint ptr %.0.val to i64
  %i.b = and i64 %i.a, 3
  switch i64 %i.b, label %default.unreachable [
    i64 2, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std2io5error14repr_bitpacked4ReprECs2VbMhdeEr66_16delta_benchmarks.exit
    i64 3, label %bb.b
    i64 0, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std2io5error14repr_bitpacked4ReprECs2VbMhdeEr66_16delta_benchmarks.exit
    i64 1, label %bb.c
  ], !prof !1696

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ult ptr %.0.val, inttoptr (i64 180388626432 to ptr)
  tail call void @llvm.assume(i1 %i.c)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std2io5error14repr_bitpacked4ReprECs2VbMhdeEr66_16delta_benchmarks.exit

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %.0.val, i64 -1    ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.d) ]
  %.val.i.i.i.i = load ptr, ptr %i.d, align 8     ; 5 uses
  %i.e = getelementptr i8, ptr %.0.val, i64 7
  %.val1.i.i.i.i = load ptr, ptr %i.e, align 8, !nonnull !11, !align !69, !noundef !11 ; 5 uses
  %i.f = load ptr, ptr %.val1.i.i.i.i, align 8, !invariant.load !11 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i) ]
  invoke void %i.f(ptr noundef nonnull %.val.i.i.i.i)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 8
  %i.h = load i64, ptr %i.g, align 8, !range !64, !invariant.load !11 ; 2 uses
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtCs2pqxYH9ZEk8_3std2io5error6CustomEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i) ]
  %i.j = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 16
  %i.k = load i64, ptr %i.j, align 8, !range !65, !invariant.load !11
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.h, i64 noundef range(i64 1, 536870913) %i.k) #31
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtCs2pqxYH9ZEk8_3std2io5error6CustomEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i

bb.g:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 8
  %i.n = load i64, ptr %i.m, align 8, !range !64, !invariant.load !11 ; 2 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 16
  %i.q = load i64, ptr %i.p, align 8, !range !65, !invariant.load !11
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.n, i64 noundef range(i64 1, 536870913) %i.q) #31
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef 24, i64 noundef 8) #31
  resume { ptr, i32 } %i.l

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtCs2pqxYH9ZEk8_3std2io5error6CustomEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i: ; preds = %bb.f, %bb.e
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef 24, i64 noundef 8) #31
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std2io5error14repr_bitpacked4ReprECs2VbMhdeEr66_16delta_benchmarks.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std2io5error14repr_bitpacked4ReprECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.a, %bb.a, %bb.b, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtCs2pqxYH9ZEk8_3std2io5error6CustomEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std3sys6os_str5bytes3BufECs2VbMhdeEr66_16delta_benchmarks.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std3sys6os_str5bytes3BufECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4lawaffTVVK_9sqlparser3ast3dcl11ResetConfigECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !60, !noundef !11
  %i.b = icmp eq i64 %i.a, -9223372036854775808
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameECs2VbMhdeEr66_16delta_benchmarks.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameECs2VbMhdeEr66_16delta_benchmarks.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4lawaffTVVK_9sqlparser3ast3dcl18AlterRoleOperationECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(376) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !1697, !noundef !11 ; 3 uses
  %i.b = icmp ne i64 %i.a, 75
  tail call void @llvm.assume(i1 %i.b)
  %i.c = add nsw i64 %i.a, -71
  %i.d = icmp samesign ugt i64 %i.a, 70
  %i.e = select i1 %i.d, i64 %i.c, i64 4
  switch i64 %i.e, label %bb.b [
    i64 0, label %bb.f
    i64 1, label %bb.i
    i64 2, label %bb.l
    i64 3, label %bb.o
    i64 4, label %bb.r
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.g = load i64, ptr %i.f, align 8, !range !60, !alias.scope !1698, !noundef !11
  %i.h = icmp eq i64 %i.g, -9223372036854775808
  br i1 %i.h, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4lawaffTVVK_9sqlparser3ast3dcl11ResetConfigECs2VbMhdeEr66_16delta_benchmarks.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameECs2VbMhdeEr66_16delta_benchmarks.exit.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.body unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameECs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %bb.c
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4lawaffTVVK_9sqlparser3ast3dcl11ResetConfigECs2VbMhdeEr66_16delta_benchmarks.exit unwind label %bb.ac

bb.f:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.k)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast5IdentECs2VbMhdeEr66_16delta_benchmarks.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.k)
          to label %common.resume unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #29
  unreachable

common.resume:                                    ; preds = %bb.ae, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4lawaffTVVK_9sqlparser3ast3dcl14SetConfigValueECs2VbMhdeEr66_16delta_benchmarks.exit, %.body, %bb.z, %bb.p, %bb.m, %bb.j, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %.pn, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4lawaffTVVK_9sqlparser3ast3dcl14SetConfigValueECs2VbMhdeEr66_16delta_benchmarks.exit ], [ %i.l, %bb.g ], [ %i.o, %bb.j ], [ %i.r, %bb.m ], [ %i.u, %bb.p ], [ %i.aj, %bb.z ], [ %eh.lpad-body, %.body ], [ %i.ar, %bb.ae ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast5IdentECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.f
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.k)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameEECs2VbMhdeEr66_16delta_benchmarks.exit

bb.i:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.n)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast5IdentECs2VbMhdeEr66_16delta_benchmarks.exit5 unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.n)
          to label %common.resume unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast5IdentECs2VbMhdeEr66_16delta_benchmarks.exit5: ; preds = %bb.i
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.n)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameEECs2VbMhdeEr66_16delta_benchmarks.exit

bb.l:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.q)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast5IdentECs2VbMhdeEr66_16delta_benchmarks.exit7 unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.q)
          to label %common.resume unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast5IdentECs2VbMhdeEr66_16delta_benchmarks.exit7: ; preds = %bb.l
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.q)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameEECs2VbMhdeEr66_16delta_benchmarks.exit

bb.o:                                             ; preds = %bb.a
end_hunk_5
begin_hunk_6_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtNtB4_6option6OptionNtNtBL_9arguments12ArgumentNameEEECs2VbMhdeEr66_16delta_benchmarks:bb.a
bb.d:                                             ; preds = %bb.c
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr9arguments12ArgumentNameECs2VbMhdeEr66_16delta_benchmarks.exit.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %common.resume unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #29
  unreachable

common.resume:                                    ; preds = %bb.b, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.f, %bb.e ], [ %i.a, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr9arguments12ArgumentNameECs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %bb.d
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs8VI8w5SIoU4_15datafusion_expr9arguments12ArgumentNameEECs2VbMhdeEr66_16delta_benchmarks.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs8VI8w5SIoU4_15datafusion_expr9arguments12ArgumentNameEECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.c, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr9arguments12ArgumentNameECs2VbMhdeEr66_16delta_benchmarks.exit.i
  ret void

bb.g:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #29
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTaINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2464)
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !2464, !nonnull !11, !noundef !11 ; 3 uses
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 16 dereferenceable(64) %i.b)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEECs2VbMhdeEr66_16delta_benchmarks.exit unwind label %bb.b, !noalias !2464, !inline_history !1688

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef 64, i64 noundef 16) #31, !noalias !2464
  resume { ptr, i32 } %i.c

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.a
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef 64, i64 noundef 16) #31, !noalias !2464
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTdNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i: ; preds = %bb.b
  resume { ptr, i32 } %i.b

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTjINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEECs2VbMhdeEr66_16delta_benchmarks.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEECs2VbMhdeEr66_16delta_benchmarks.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEECs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.b

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCsbvkFyIu7lgC_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias nofree noundef nonnull writeonly captures(none) %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias noundef nonnull readonly captures(none) %2, i64 noundef range(i64 0, -9223372036854775808) %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4) unnamed_addr #0 {
bb.a:
  %.not = icmp eq i64 %1, %3
  br i1 %.not, label %bb.c, label %bb.b, !prof !31

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNvNtCsbvkFyIu7lgC_4core5slice20copy_from_slice_impl17len_mismatch_fail(i64 noundef %1, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4) #35
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %0, ptr nonnull align 1 %2, i64 %1, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCsjhHCjzi9uUI_17datafusion_common10hash_utils13create_hashesRAINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_Ej1_RB14_ECs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %2, ptr noalias noundef nonnull align 8 %3, i64 noundef range(i64 0, 1152921504606846976) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load ptr, ptr %1, align 8, !nonnull !11, !noundef !11
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !11, !align !69, !noundef !11 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load i64, ptr %i.e, align 8, !range !65, !invariant.load !11
  %i.g = add nsw i64 %i.f, -1
  %i.h = and i64 %i.g, -16
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  call void @_RNvNtCsjhHCjzi9uUI_17datafusion_common10hash_utils17hash_single_array(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.a, ptr noundef nonnull %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2, ptr noalias noundef nonnull align 8 %3, i64 noundef %4, i1 noundef zeroext false)
  %i.k = load i64, ptr %i.a, align 8, !range !2467, !noundef !11
  %.not5 = icmp eq i64 %i.k, 20
  br i1 %.not5, label %bb.d, label %bb.c

bb.b:                                             ; preds = %bb.c, %bb.d
  ret void

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.a, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %3, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %4, ptr %i.m, align 8
  store i64 20, ptr %0, align 8
  br label %bb.b
}

; Function Attrs: noinline nonlazybind uwtable
define hidden noundef ptr @_RINvNtNtCs2pqxYH9ZEk8_3std3sys9backtrace28___rust_begin_short_backtraceFEINtNtCsbvkFyIu7lgC_4core6result6ResultuNtCsb2ODgYNwnRL_6anyhow5ErrorEB19_ECs2VbMhdeEr66_16delta_benchmarks(ptr nofree noundef nonnull readonly captures(none) %0) unnamed_addr #2 {
bb.a:
  %i.a = tail call noundef ptr %0(), !inline_history !2468
  tail call void asm sideeffect "", "~{memory}"() #31, !srcloc !2469
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs8VI8w5SIoU4_15datafusion_expr13expr_rewriter8order_by25rewrite_sort_cols_by_aggsNtNtB6_4expr4SortINtNtCs6Po7BT7Nknu_5alloc3vec3VecB1q_EECs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(320) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 6 uses
  %.sroa.03.0.copyload.i = load i64, ptr %1, align 8, !alias.scope !2470, !noalias !2473
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.44.0.copyload.i = load ptr, ptr %.sroa.44.0..sroa_idx.i, align 8, !alias.scope !2470, !noalias !2473, !nonnull !11, !noundef !11 ; 3 uses
  %.sroa.55.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.55.0.copyload.i = load i64, ptr %.sroa.55.0..sroa_idx.i, align 8, !alias.scope !2470, !noalias !2473 ; 2 uses
  %i.b = icmp ult i64 %.sroa.55.0.copyload.i, 72057594037927936
  tail call void @llvm.assume(i1 %i.b)
  %i.c = getelementptr inbounds nuw [128 x i8], ptr %.sroa.44.0.copyload.i, i64 %.sroa.55.0.copyload.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2475)
  store ptr %.sroa.44.0.copyload.i, ptr %i.a, align 8, !alias.scope !2478, !noalias !2480
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.sroa.44.0.copyload.i, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !2478, !noalias !2480
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %.sroa.03.0.copyload.i, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !2478, !noalias !2480
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.c, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !2478, !noalias !2480
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %2, ptr %i.d, align 8, !alias.scope !2482, !noalias !2483
  call void @_RINvNtNtCsbvkFyIu7lgC_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortENCINvNtNtB1Y_13expr_rewriter8order_by25rewrite_sort_cols_by_aggsB1U_INtB1b_3VecB1U_EE0EB1U_INtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENCINvXso_B4a_IB48_B3K_B4U_EINtNtNtB4_6traits7collect12FromIteratorIB48_B1U_B4U_EE9from_iterBQ_E0B3K_ECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtNtCskQDtHcQtBkN_5tokio4util4wake12drop_arc_rawINtNtB4_17idle_notified_set9ListEntryINtNtNtNtB6_7runtime4task4join10JoinHandleTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEECs2VbMhdeEr66_16delta_benchmarks(ptr noundef %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = tail call noundef i64 @_RINvNtCs6Po7BT7Nknu_5alloc4sync11data_offsetINtNtNtCskQDtHcQtBkN_5tokio4util17idle_notified_set9ListEntryINtNtNtNtBN_7runtime4task4join10JoinHandleTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB4_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEECs2VbMhdeEr66_16delta_benchmarks(ptr noundef %0)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  %1 = sub nsw i64 0, %i.b
  %2 = getelementptr inbounds i8, ptr %0, i64 %1  ; 2 uses
  store ptr %2, ptr %i.a, align 8
  %i.c = atomicrmw sub ptr %2, i64 1 release, align 8, !noalias !2484
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtCskQDtHcQtBkN_5tokio4util17idle_notified_set9ListEntryINtNtNtNtB1l_7runtime4task4join10JoinHandleTjINtNtB4_6result6ResultINtNtBL_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEEECs2VbMhdeEr66_16delta_benchmarks.exit

bb.b:                                             ; preds = %bb.a
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtCskQDtHcQtBkN_5tokio4util17idle_notified_set9ListEntryINtNtNtNtBN_7runtime4task4join10JoinHandleTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB7_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEE9drop_slowCs5wg436RVUAP_24datafusion_physical_plan(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a) #34
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtCskQDtHcQtBkN_5tokio4util17idle_notified_set9ListEntryINtNtNtNtB1l_7runtime4task4join10JoinHandleTjINtNtB4_6result6ResultINtNtBL_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEEECs2VbMhdeEr66_16delta_benchmarks.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtCskQDtHcQtBkN_5tokio4util17idle_notified_set9ListEntryINtNtNtNtB1l_7runtime4task4join10JoinHandleTjINtNtB4_6result6ResultINtNtBL_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEEECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtNtCskQDtHcQtBkN_5tokio4util4wake12wake_arc_rawINtNtB4_17idle_notified_set9ListEntryINtNtNtNtB6_7runtime4task4join10JoinHandleTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEECs2VbMhdeEr66_16delta_benchmarks(ptr noundef %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = tail call noundef i64 @_RINvNtCs6Po7BT7Nknu_5alloc4sync11data_offsetINtNtNtCskQDtHcQtBkN_5tokio4util17idle_notified_set9ListEntryINtNtNtNtBN_7runtime4task4join10JoinHandleTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB4_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEECs2VbMhdeEr66_16delta_benchmarks(ptr noundef %0)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  %1 = sub nsw i64 0, %i.b
  %2 = getelementptr inbounds i8, ptr %0, i64 %1  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %2, ptr %i.a, align 8
  invoke fastcc void @_RNvXs5_NtNtCskQDtHcQtBkN_5tokio4util17idle_notified_setINtB5_9ListEntryINtNtNtNtB9_7runtime4task4join10JoinHandleTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEENtNtB7_4wake4Wake11wake_by_refCs2VbMhdeEr66_16delta_benchmarks(ptr nonnull %2)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  %i.d = atomicrmw sub ptr %2, i64 1 release, align 8, !noalias !2489
  %i.e = icmp eq i64 %i.d, 1
  br i1 %i.e, label %bb.c, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtCskQDtHcQtBkN_5tokio4util17idle_notified_set9ListEntryINtNtNtNtB1l_7runtime4task4join10JoinHandleTjINtNtB4_6result6ResultINtNtBL_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEEECs2VbMhdeEr66_16delta_benchmarks.exit.i

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtCskQDtHcQtBkN_5tokio4util17idle_notified_set9ListEntryINtNtNtNtBN_7runtime4task4join10JoinHandleTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB7_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEE9drop_slowCs5wg436RVUAP_24datafusion_physical_plan(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a) #34
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtCskQDtHcQtBkN_5tokio4util17idle_notified_set9ListEntryINtNtNtNtB1l_7runtime4task4join10JoinHandleTjINtNtB4_6result6ResultINtNtBL_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEEECs2VbMhdeEr66_16delta_benchmarks.exit.i unwind label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.f = atomicrmw sub ptr %2, i64 1 release, align 8, !noalias !2494
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.e, label %_RNvXs5_NtNtCskQDtHcQtBkN_5tokio4util17idle_notified_setINtB5_9ListEntryINtNtNtNtB9_7runtime4task4join10JoinHandleTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEENtNtB7_4wake4Wake4wakeCs2VbMhdeEr66_16delta_benchmarks.exit

bb.e:                                             ; preds = %bb.d
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtCskQDtHcQtBkN_5tokio4util17idle_notified_set9ListEntryINtNtNtNtBN_7runtime4task4join10JoinHandleTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB7_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEE9drop_slowCs5wg436RVUAP_24datafusion_physical_plan(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a) #34
  br label %_RNvXs5_NtNtCskQDtHcQtBkN_5tokio4util17idle_notified_setINtB5_9ListEntryINtNtNtNtB9_7runtime4task4join10JoinHandleTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEENtNtB7_4wake4Wake4wakeCs2VbMhdeEr66_16delta_benchmarks.exit

bb.f:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtCskQDtHcQtBkN_5tokio4util17idle_notified_set9ListEntryINtNtNtNtB1l_7runtime4task4join10JoinHandleTjINtNtB4_6result6ResultINtNtBL_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEEECs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.c

_RNvXs5_NtNtCskQDtHcQtBkN_5tokio4util17idle_notified_setINtB5_9ListEntryINtNtNtNtB9_7runtime4task4join10JoinHandleTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEENtNtB7_4wake4Wake4wakeCs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_RINvNtNtCskQDtHcQtBkN_5tokio4util4wake13clone_arc_rawINtNtB4_17idle_notified_set9ListEntryINtNtNtNtB6_7runtime4task4join10JoinHandleTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEECs2VbMhdeEr66_16delta_benchmarks(ptr noundef %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef i64 @_RINvNtCs6Po7BT7Nknu_5alloc4sync11data_offsetINtNtNtCskQDtHcQtBkN_5tokio4util17idle_notified_set9ListEntryINtNtNtNtBN_7runtime4task4join10JoinHandleTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB4_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEECs2VbMhdeEr66_16delta_benchmarks(ptr noundef %0)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  %1 = sub nsw i64 0, %i.a
  %2 = getelementptr inbounds i8, ptr %0, i64 %1
  %i.b = atomicrmw add ptr %2, i64 1 monotonic, align 8
  %i.c = icmp slt i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtCskQDtHcQtBkN_5tokio4util17idle_notified_set9ListEntryINtNtNtNtBN_7runtime4task4join10JoinHandleTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB7_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEE25increment_strong_count_inCs2VbMhdeEr66_16delta_benchmarks.exit

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtCskQDtHcQtBkN_5tokio4util17idle_notified_set9ListEntryINtNtNtNtBN_7runtime4task4join10JoinHandleTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB7_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEE25increment_strong_count_inCs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.a
  %i.d = insertvalue { ptr, ptr } { ptr @3, ptr poison }, ptr %0, 1
  ret { ptr, ptr } %i.d
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtNtCskQDtHcQtBkN_5tokio4util4wake19wake_by_ref_arc_rawINtNtB4_17idle_notified_set9ListEntryINtNtNtNtB6_7runtime4task4join10JoinHandleTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEECs2VbMhdeEr66_16delta_benchmarks(ptr noundef %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef i64 @_RINvNtCs6Po7BT7Nknu_5alloc4sync11data_offsetINtNtNtCskQDtHcQtBkN_5tokio4util17idle_notified_set9ListEntryINtNtNtNtBN_7runtime4task4join10JoinHandleTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB4_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEECs2VbMhdeEr66_16delta_benchmarks(ptr noundef %0)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  %1 = sub nsw i64 0, %i.a
  %2 = getelementptr inbounds i8, ptr %0, i64 %1
  tail call fastcc void @_RNvXs5_NtNtCskQDtHcQtBkN_5tokio4util17idle_notified_setINtB5_9ListEntryINtNtNtNtB9_7runtime4task4join10JoinHandleTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEENtNtB7_4wake4Wake11wake_by_refCs2VbMhdeEr66_16delta_benchmarks(ptr nonnull %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCskQDtHcQtBkN_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB22_8snapshotNtB3c_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB1t_4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB51_5error5ErrorEEs_0EENtNtBR_8schedule16BlockingScheduleECs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef align 8 %1, ptr noundef %2, ptr %3, i64 noundef range(i64 1, 0) %4) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 128 ptr @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CellINtNtNtB9_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB2e_8snapshotNtB3o_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB1F_4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB5d_5error5ErrorEEs_0EENtNtB13_8schedule16BlockingScheduleE3newCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 %1, ptr noundef %2, ptr %3, i64 noundef 204, i64 noundef %4) ; 3 uses
  store ptr %i.a, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %i.c, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCskQDtHcQtBkN_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCINvNtNtB6_2fs10create_dir10create_dirRNtNtCs2pqxYH9ZEk8_3std4path7PathBufE00EENtNtBR_8schedule16BlockingScheduleECs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef align 8 %1, ptr noundef %2, ptr %3, i64 noundef range(i64 1, 0) %4) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 128 ptr @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CellINtNtNtB9_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCINvNtNtBb_2fs10create_dir10create_dirRNtNtCs2pqxYH9ZEk8_3std4path7PathBufE00EENtNtB13_8schedule16BlockingScheduleE3newCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 %1, ptr noundef %2, ptr %3, i64 noundef 204, i64 noundef %4) ; 3 uses
  store ptr %i.a, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %i.c, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCskQDtHcQtBkN_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB1t_8snapshotNtB2D_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB4I_5error5ErrorEEs_0ENtNtBR_8schedule16BlockingScheduleECs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(184) %1, ptr noundef %2, ptr %3, i64 noundef range(i64 1, 0) %4) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 128 ptr @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CellINtNtNtB9_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB1F_8snapshotNtB2P_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB4U_5error5ErrorEEs_0ENtNtB13_8schedule16BlockingScheduleE3newCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(184) %1, ptr noundef %2, ptr %3, i64 noundef 204, i64 noundef %4) ; 3 uses
  store ptr %i.a, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %i.c, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCskQDtHcQtBkN_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNCINvNtNtB6_2fs10create_dir10create_dirRNtNtCs2pqxYH9ZEk8_3std4path7PathBufE00ENtNtBR_8schedule16BlockingScheduleECs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %1, ptr noundef %2, ptr %3, i64 noundef range(i64 1, 0) %4) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 128 ptr @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CellINtNtNtB9_8blocking4task12BlockingTaskNCNCINvNtNtBb_2fs10create_dir10create_dirRNtNtCs2pqxYH9ZEk8_3std4path7PathBufE00ENtNtB13_8schedule16BlockingScheduleE3newCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %1, ptr noundef %2, ptr %3, i64 noundef 204, i64 noundef %4) ; 3 uses
  store ptr %i.a, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %i.c, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB6_8IntoIterANtNtCs8VI8w5SIoU4_15datafusion_expr4expr4Exprj2_ENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4folduNCINvNvMsg_NtNtB1R_8adapters7flattenINtB2X_13FlattenCompatppE9iter_fold7flattenBX_uNCINvNvXsi_B2X_B3m_B1L_4fold7flattenINtNtNtB1T_5array4iter8IntoIterBY_KB1H_EuNCINvNvB1L_8for_each4callBY_NCINvMsj_B8_INtB8_3VecBY_E14extend_trustedINtB2X_7FlattenBI_EE0E0E0E0ECs2VbMhdeEr66_16delta_benchmarks(ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [240 x i8], align 16              ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.d, align 8        ; 2 uses
  %.not2 = icmp eq ptr %.promoted, %i.c
  br i1 %.not2, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.e, align 8, !alias.scope !2499, !noalias !2508, !noundef !11
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %.promoted3 = load i64, ptr %i.f, align 8, !alias.scope !2499, !noalias !2508
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %i.i = phi i64 [ %.promoted3, %.lr.ph ], [ %i.n, %bb.d ] ; 2 uses
  %i.j = phi ptr [ %.promoted, %.lr.ph ], [ %i.k, %bb.d ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2525
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(224) %.sroa.5.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(224) %i.j, i64 224, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 224 ; 3 uses
  store ptr %i.k, ptr %i.d, align 8
  store i64 2, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !2525
  call void @llvm.experimental.noalias.scope.decl(metadata !2526)
  call void @llvm.experimental.noalias.scope.decl(metadata !2527)
  call void @llvm.experimental.noalias.scope.decl(metadata !2528)
  call void @llvm.experimental.noalias.scope.decl(metadata !2529)
  call void @llvm.experimental.noalias.scope.decl(metadata !2530)
  %i.l = getelementptr inbounds nuw [112 x i8], ptr %i.g, i64 %i.i ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.l, ptr noundef nonnull align 16 dereferenceable(112) %.sroa.5.0..sroa_idx.i, i64 112, i1 false), !noalias !2531
  %i.m = getelementptr i8, ptr %i.l, i64 112
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.m, ptr noundef nonnull align 16 dereferenceable(112) %i.h, i64 112, i1 false), !noalias !2531
  %i.n = add i64 %i.i, 2                          ; 2 uses
  store i64 %i.n, ptr %i.f, align 8, !alias.scope !2499, !noalias !2508
  store i64 2, ptr %i.a, align 16, !alias.scope !2532, !noalias !2533
  invoke void @_RNvXs_NtNtNtCsbvkFyIu7lgC_4core5array4iter10iter_innerAINtNtNtBa_3mem12maybe_uninit11MaybeUninitNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEj2_NtB4_11PartialDrop12partial_dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 16 dereferenceable(224) %.sroa.5.0..sroa_idx.i, i64 noundef 2, i64 noundef 2)
          to label %bb.d unwind label %bb.c

._crit_edge:                                      ; preds = %bb.d, %bb.a
  call void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterANtNtCs8VI8w5SIoU4_15datafusion_expr4expr4Exprj2_ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %0)
  ret void

bb.c:                                             ; preds = %bb.b
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterANtNtCs8VI8w5SIoU4_15datafusion_expr4expr4Exprj2_ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterANtNtCs8VI8w5SIoU4_15datafusion_expr4expr4Exprj2_EECs2VbMhdeEr66_16delta_benchmarks.exit unwind label %bb.e

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2525
  %.not = icmp eq ptr %i.k, %i.c
  br i1 %.not, label %._crit_edge, label %bb.b

bb.e:                                             ; preds = %bb.c
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterANtNtCs8VI8w5SIoU4_15datafusion_expr4expr4Exprj2_EECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.c
  resume { ptr, i32 } %i.o
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB6_8IntoIterINtB8_3VecNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropIBY_NtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEENCINvNtNtB1Q_8adapters3map12map_try_foldBX_INtNtB1S_6result6ResultB3o_NtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEB2O_INtNtNtB1S_3ops12control_flow11ControlFlowIB4V_B2O_zEB2O_ENCNvMNtCsjHlmExTLNuX_14datafusion_sql6valuesINtNtB7r_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE18sql_values_to_plan0NCINvXB4k_INtB4k_12GenericShuntINtB4i_3MapBI_B7k_EIB4V_NtNtB1S_7convert10InfallibleB5l_EEB1K_8try_foldB2O_NCINvNtB8_16in_place_collect24write_in_place_with_dropB3o_E0B74_E0E0B6o_ECs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noundef %2, ptr noundef %3, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [56 x i8], align 8                ; 9 uses
  %i.c = alloca [40 x i8], align 8                ; 7 uses
  %i.d = alloca [16 x i8], align 8                ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.g, align 8        ; 2 uses
  %.not21 = icmp eq ptr %.promoted, %i.f
  br i1 %.not21, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.val2 = load ptr, ptr %i.h, align 8, !nonnull !11, !align !69, !noundef !11 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %.val2, i64 16
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.53.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.6.16..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %.sroa.9.16..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.k
  %.sroa.4.022 = phi ptr [ %3, %.lr.ph ], [ %i.ab, %bb.k ] ; 5 uses
  %i.m = phi ptr [ %.promoted, %.lr.ph ], [ %i.n, %bb.k ] ; 4 uses
  %.sroa.013.0.copyload = load i64, ptr %i.m, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !nonnull !11, !noundef !11 ; 3 uses
  %.sroa.314.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.sroa.314.0.copyload = load i64, ptr %.sroa.314.0..sroa_idx, align 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24 ; 3 uses
  store ptr %i.n, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2534
  store ptr %2, ptr %i.d, align 8, !noalias !2534
  store ptr %.sroa.4.022, ptr %i.i, align 8, !noalias !2534
  call void @llvm.experimental.noalias.scope.decl(metadata !2538)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2534
  %i.o = icmp ult i64 %.sroa.314.0.copyload, 28120036697727976
  call void @llvm.assume(i1 %i.o)
  %i.p = getelementptr inbounds nuw [328 x i8], ptr %.sroa.2.0.copyload, i64 %.sroa.314.0.copyload
  %i.q = load ptr, ptr %i.j, align 8, !alias.scope !2538, !noalias !2541, !nonnull !11, !align !69, !noundef !11
  store ptr %.sroa.2.0.copyload, ptr %i.b, align 8, !noalias !2544
  store ptr %.sroa.2.0.copyload, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !2544
  store i64 %.sroa.013.0.copyload, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !2544
  store ptr %i.p, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !noalias !2544
  %i.r = load <2 x ptr>, ptr %.val2, align 8, !alias.scope !2538, !noalias !2541
  store <2 x ptr> %i.r, ptr %i.k, align 8, !noalias !2544
  store ptr %i.q, ptr %.sroa.53.0..sroa_idx.i.i, align 8, !noalias !2544
  invoke void @_RINvNtNtCsbvkFyIu7lgC_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs4lawaffTVVK_9sqlparser3ast4ExprENCNCNvMNtCsjHlmExTLNuX_14datafusion_sql6valuesINtNtB2F_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE18sql_values_to_plan00ENtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENCINvXso_B69_IB67_INtB1b_3VecB5n_EB6T_EINtNtNtB4_6traits7collect12FromIteratorIB67_B5n_B6T_EE9from_iterBQ_E0B8a_ECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.c, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.b)
          to label %bb.c unwind label %bb.h, !noalias !2534

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2534
  %.sroa.4.16.copyload.i = load i64, ptr %i.c, align 8, !noalias !2534 ; 3 uses
  %.sroa.9.16.copyload.i = load i64, ptr %.sroa.9.16..sroa_idx.i, align 8, !noalias !2534 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2534
  store ptr %2, ptr %i.a, align 8, !noalias !2545
  store ptr %.sroa.4.022, ptr %i.l, align 8, !noalias !2545
  %.not.i.i.i = icmp eq i64 %.sroa.4.16.copyload.i, 20
  br i1 %.not.i.i.i, label %bb.k, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.val.le = load ptr, ptr %i.s, align 8, !nonnull !11, !noundef !11 ; 8 uses
  %i.t = load i64, ptr %.val.le, align 8, !range !2467, !alias.scope !2549, !noalias !2545, !noundef !11
  %i.u = icmp eq i64 %i.t, 20
  br i1 %i.u, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(40) %.val.le)
          to label %bb.j unwind label %bb.f, !noalias !2545
end_hunk_6
begin_hunk_7_@_RINvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB6_8IntoIterNtNtCs4lawaffTVVK_9sqlparser3ast18OperateFunctionArgENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1U_8adapters3map12map_try_foldBX_INtNtB1W_6result6ResultNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddl18OperateFunctionArgNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtB1W_3ops12control_flow11ControlFlowIB6b_B3X_EENCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB78_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE39sql_statement_to_plan_with_context_impls9_0NCINvXB30_INtB30_12GenericShuntINtB2Y_3MapBI_B71_EIB3B_NtNtB1W_7convert10InfallibleB5a_EEB1O_8try_folduNCINvNvB1O_12try_for_each4callB3X_B6Q_NcNtB6Q_5Break0E0B6Q_E0E0B6a_ECs2VbMhdeEr66_16delta_benchmarks:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2959
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  invoke fastcc void @_RNvXs2_NtCsfYVtenZkBsn_12arrow_schema8datatypeNtB5_8DataTypeNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.z)
          to label %bb.r unwind label %bb.p, !noalias !2962

bb.i:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i, %bb.k
  %.sroa.026.2.i.i = phi i1 [ false, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i ], [ true, %bb.k ]
  %.pn.i.i = phi { ptr, i32 } [ %i.ak, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i ], [ %i.ad, %bb.k ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2964)
  call void @llvm.experimental.noalias.scope.decl(metadata !2967)
  %i.aa = load ptr, ptr %i.g, align 8, !alias.scope !2970, !noalias !2959, !nonnull !11, !noundef !11
  %i.ab = atomicrmw sub ptr %i.aa, i64 1 release, align 8, !noalias !2971
  %i.ac = icmp eq i64 %i.ab, 1
  br i1 %i.ac, label %bb.j, label %.noexc.i.i

bb.j:                                             ; preds = %bb.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.g) #34
          to label %.noexc.i.i unwind label %bb.t, !noalias !2962

bb.k:                                             ; preds = %bb.g
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.l:                                             ; preds = %bb.g
  %i.ae = load i64, ptr %i.d, align 16, !range !2741, !noalias !2959, !noundef !11 ; 2 uses
  %i.af = icmp eq i64 %i.ae, 37
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.617.i.sroa.0.0.copyload11.i = load i64, ptr %i.ag, align 8, !noalias !2959 ; 3 uses
  %.sroa.617.i.sroa.7.0..sroa_idx13.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.617.i.sroa.7.0.copyload14.i = load ptr, ptr %.sroa.617.i.sroa.7.0..sroa_idx13.i, align 16, !noalias !2959 ; 3 uses
  %.sroa.617.i.sroa.8.0..sroa_idx15.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.617.i.sroa.8.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.617.i.sroa.8.0..sroa_idx15.i, i64 24, i1 false), !noalias !2959
  br i1 %i.af, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2959
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.617.i.sroa.8.i, i64 24, i1 false), !noalias !2963
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.617.i.sroa.8.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !2972)
  call void @llvm.experimental.noalias.scope.decl(metadata !2975)
  %i.ah = load ptr, ptr %i.g, align 8, !alias.scope !2978, !noalias !2959, !nonnull !11, !noundef !11
  %i.ai = atomicrmw sub ptr %i.ah, i64 1 release, align 8, !noalias !2979
  %i.aj = icmp eq i64 %i.ai, 1
  br i1 %i.aj, label %bb.n, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs2VbMhdeEr66_16delta_benchmarks.exit46.i.i

bb.n:                                             ; preds = %bb.m
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.g) #34
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs2VbMhdeEr66_16delta_benchmarks.exit46.i.i unwind label %.thread.i.i, !noalias !2962

bb.o:                                             ; preds = %bb.l
  %.sroa.636.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %.sroa.222.i.sroa.6.i, ptr noundef nonnull align 16 dereferenceable(64) %.sroa.636.0..sroa_idx.i.i, i64 64, i1 false), !noalias !2959
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2959
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.222.i.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.617.i.sroa.8.i, i64 24, i1 false), !noalias !2959
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.617.i.sroa.8.i)
  %.pre.i.i = load ptr, ptr %i.g, align 8, !noalias !2959
  br label %bb.h

bb.p:                                             ; preds = %bb.h
  %i.ak = landingpad { ptr, i32 }
          cleanup
  %i.al = icmp eq i64 %.sroa.016.0.copyload.i, 37
  br i1 %i.al, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 16 dereferenceable(112) %i.b)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i unwind label %bb.t, !noalias !2962

bb.r:                                             ; preds = %bb.h
  %.sroa.718.112..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.718.i, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %.sroa.718.112..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(64) %i.c, i64 64, i1 false), !noalias !2950
  %.sroa.718.176..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.718.i, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.718.176..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !2950
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.222.i.sroa.5.i, i64 24, i1 false), !noalias !2950
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %.sroa.718.i, ptr noundef nonnull align 16 dereferenceable(64) %.sroa.222.i.sroa.6.i, i64 64, i1 false), !noalias !2950
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2959
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2959
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2959
  call void @llvm.experimental.noalias.scope.decl(metadata !2980)
  call void @llvm.experimental.noalias.scope.decl(metadata !2983)
  %i.am = load ptr, ptr %i.g, align 8, !alias.scope !2986, !noalias !2959, !nonnull !11, !noundef !11
  %i.an = atomicrmw sub ptr %i.am, i64 1 release, align 8, !noalias !2987
  %i.ao = icmp eq i64 %i.an, 1
  br i1 %i.ao, label %bb.s, label %bb.aj

bb.s:                                             ; preds = %bb.r
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.g) #34
          to label %bb.aj unwind label %bb.c, !noalias !2962

bb.t:                                             ; preds = %bb.ag, %bb.ae, %bb.ad, %bb.ac, %.body.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i, %bb.q, %bb.j
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #29, !noalias !2962
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i: ; preds = %bb.q, %bb.p
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs4lawaffTVVK_9sqlparser3ast5IdentEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(64) %i.c) #30
          to label %bb.i unwind label %bb.t, !noalias !2962

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs2VbMhdeEr66_16delta_benchmarks.exit46.i.i: ; preds = %bb.n, %bb.m, %bb.e
  %.sroa.9.0.i = phi ptr [ %.sroa.529.0.copyload.i.i, %bb.e ], [ %.sroa.617.i.sroa.7.0.copyload14.i, %bb.n ], [ %.sroa.617.i.sroa.7.0.copyload14.i, %bb.m ] ; 2 uses
  %.sroa.6.0.i = phi i64 [ %i.r, %bb.e ], [ %.sroa.617.i.sroa.0.0.copyload11.i, %bb.n ], [ %.sroa.617.i.sroa.0.0.copyload11.i, %bb.m ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2959
  %i.aq = getelementptr inbounds nuw i8, ptr %i.h, i64 328 ; 4 uses
  %i.ar = load i64, ptr %i.aq, align 8, !range !60, !alias.scope !2988, !noalias !2962, !noundef !11
  %i.as = icmp eq i64 %i.ar, -9223372036854775808
  br i1 %i.as, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs4lawaffTVVK_9sqlparser3ast5IdentEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i, label %bb.u

bb.u:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs2VbMhdeEr66_16delta_benchmarks.exit46.i.i
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.aq)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast5IdentECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i unwind label %bb.v, !noalias !2962

bb.v:                                             ; preds = %bb.u
  %i.at = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.aq)
          to label %.body.i.i unwind label %bb.w, !noalias !2962

bb.w:                                             ; preds = %bb.v
  %i.au = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #29, !noalias !2962
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast5IdentECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i: ; preds = %bb.u
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.aq)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs4lawaffTVVK_9sqlparser3ast5IdentEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i unwind label %bb.x, !noalias !2962

bb.x:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast5IdentECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.x, %bb.v
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.av, %bb.x ], [ %i.at, %bb.v ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4lawaffTVVK_9sqlparser3ast9data_type8DataTypeECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.q) #30
          to label %bb.y unwind label %bb.t, !noalias !2962

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs4lawaffTVVK_9sqlparser3ast5IdentEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast5IdentECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs2VbMhdeEr66_16delta_benchmarks.exit46.i.i
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4lawaffTVVK_9sqlparser3ast9data_type8DataTypeECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.q)
          to label %bb.aa unwind label %bb.z, !noalias !2962

bb.y:                                             ; preds = %bb.z, %.body.i.i
  %.pn42.i.i = phi { ptr, i32 } [ %i.ay, %bb.z ], [ %eh.lpad-body.i.i, %.body.i.i ] ; 2 uses
  %i.aw = load i64, ptr %i.h, align 8, !range !168, !alias.scope !2957, !noalias !2962, !noundef !11
  %i.ax = icmp ne i64 %i.aw, 69
  %or.cond3.i.i = and i1 %.not.i.i, %i.ax
  br i1 %or.cond3.i.i, label %bb.ac, label %common.resume.i

bb.z:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs4lawaffTVVK_9sqlparser3ast5IdentEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.aa:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs4lawaffTVVK_9sqlparser3ast5IdentEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i
  %i.az = load i64, ptr %i.h, align 8, !range !168, !alias.scope !2957, !noalias !2962, !noundef !11
  %i.ba = icmp ne i64 %i.az, 69
  %or.cond.i.i = and i1 %.not.i.i, %i.ba
  br i1 %or.cond.i.i, label %bb.ab, label %bb.ah

bb.ab:                                            ; preds = %bb.aa
  call void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast4ExprECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(456) %i.h), !noalias !2962
  br label %bb.ah

common.resume.i:                                  ; preds = %bb.ak, %bb.ag, %bb.af, %bb.ac, %bb.y
  %common.resume.op.i = phi { ptr, i32 } [ %i.bg, %bb.ak ], [ %.pn42.i.i, %bb.ac ], [ %.pn42.i.i, %bb.y ], [ %.pn4053.i.i, %bb.ag ], [ %.pn4053.i.i, %bb.af ]
  resume { ptr, i32 } %common.resume.op.i

bb.ac:                                            ; preds = %bb.y
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast4ExprECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(456) %i.h) #30
          to label %common.resume.i unwind label %bb.t, !noalias !2962

bb.ad:                                            ; preds = %bb.ae, %bb.c, %.noexc.i.i
  %.pn4053.i.i = phi { ptr, i32 } [ %lpad.thr_comm.split-lp.i.i, %bb.c ], [ %.pn4054.i.i, %bb.ae ], [ %.pn.i.i, %.noexc.i.i ] ; 2 uses
  %.sroa.023.051.i.i = phi i1 [ %.not38.i.i, %bb.c ], [ %.sroa.023.052.i.i, %bb.ae ], [ %.not38.i.i, %.noexc.i.i ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4lawaffTVVK_9sqlparser3ast9data_type8DataTypeECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.q) #30
          to label %bb.af unwind label %bb.t, !noalias !2962

bb.ae:                                            ; preds = %.thread.i.i, %.noexc.i.i
  %.pn4054.i.i = phi { ptr, i32 } [ %lpad.thr_comm.i.i, %.thread.i.i ], [ %.pn.i.i, %.noexc.i.i ]
  %.sroa.023.052.i.i = phi i1 [ %.sroa.023.1.ph.i.i, %.thread.i.i ], [ %.not38.i.i, %.noexc.i.i ]
  %i.bb = getelementptr inbounds nuw i8, ptr %i.h, i64 328
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs4lawaffTVVK_9sqlparser3ast5IdentEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(64) %i.bb) #30
          to label %bb.ad unwind label %bb.t, !noalias !2962

bb.af:                                            ; preds = %bb.ad
  %i.bc = load i64, ptr %i.h, align 8, !range !168, !alias.scope !2957, !noalias !2962, !noundef !11
  %i.bd = icmp ne i64 %i.bc, 69
  %or.cond5.i.i = and i1 %.sroa.023.051.i.i, %i.bd
  br i1 %or.cond5.i.i, label %bb.ag, label %common.resume.i

bb.ag:                                            ; preds = %bb.af
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast4ExprECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(456) %i.h) #30
          to label %common.resume.i unwind label %bb.t, !noalias !2962

bb.ah:                                            ; preds = %bb.ab, %bb.aa
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.222.i.sroa.5.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.222.i.sroa.6.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2950
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !2950
  %i.be = load i64, ptr %.val, align 8, !range !2467, !alias.scope !2991, !noalias !2994, !noundef !11
  %i.bf = icmp eq i64 %i.be, 20
  br i1 %i.bf, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(40) %.val)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i unwind label %bb.ak, !noalias !2994

bb.aj:                                            ; preds = %bb.s, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2959
  call void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4lawaffTVVK_9sqlparser3ast9data_type8DataTypeECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.q), !noalias !2962
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.222.i.sroa.5.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.222.i.sroa.6.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2950
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !2950
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %.sroa.10, ptr noundef nonnull align 16 dereferenceable(160) %.sroa.718.i, i64 160, i1 false)
  br label %bb.an

bb.ak:                                            ; preds = %bb.ai
  %i.bg = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.6.0.i, ptr %.val, align 8, !noalias !2998
  %.sroa.4.sroa.6.0..8.val.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.val, i64 8
  store ptr %.sroa.9.0.i, ptr %.sroa.4.sroa.6.0..8.val.sroa_idx.i, align 8, !noalias !2998
  %.sroa.4.sroa.7.0..8.val.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.val, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.sroa.7.0..8.val.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.i, i64 24, i1 false), !noalias !2950
  br label %common.resume.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i: ; preds = %bb.ai, %bb.ah
  store i64 %.sroa.6.0.i, ptr %.val, align 8, !noalias !2998
  %.sroa.4.sroa.6.0..8.val.sroa_idx7.i = getelementptr inbounds nuw i8, ptr %.val, i64 8
  store ptr %.sroa.9.0.i, ptr %.sroa.4.sroa.6.0..8.val.sroa_idx7.i, align 8, !noalias !2998
  %.sroa.4.sroa.7.0..8.val.sroa_idx9.i = getelementptr inbounds nuw i8, ptr %.val, i64 16
  br label %bb.an

bb.al:                                            ; preds = %bb.a
  store i64 39, ptr %0, align 16, !alias.scope !2999
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.an
  ret void

bb.an:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i, %bb.aj
  %.sroa.4.sroa.7.0..8.val.sroa_idx9.i.sink = phi ptr [ %.sroa.4.sroa.7.0..8.val.sroa_idx9.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i ], [ %.sroa.9, %bb.aj ]
  %.sroa.8.1 = phi ptr [ undef, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i ], [ %.sroa.5.0.copyload.i, %bb.aj ]
  %.sroa.6.1 = phi i64 [ undef, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i ], [ %.sroa.4.0.copyload.i, %bb.aj ]
  %.sroa.06.0 = phi i64 [ 38, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i ], [ %.sroa.016.0.copyload.i, %bb.aj ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.sroa.7.0..8.val.sroa_idx9.i.sink, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.i, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.718.i)
  store i64 %.sroa.06.0, ptr %0, align 16, !alias.scope !3002
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.6.1, ptr %.sroa.2.0..sroa_idx, align 8, !alias.scope !3002
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.8.1, ptr %.sroa.3.0..sroa_idx, align 16, !alias.scope !3002
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9, i64 24, i1 false)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(160) %.sroa.10, i64 160, i1 false)
  br label %bb.am
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB6_8IntoIterNtNtCs4lawaffTVVK_9sqlparser3ast4ExprENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1F_8adapters3map12map_try_foldBX_INtNtB1H_6result6ResultNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtB1H_3ops12control_flow11ControlFlowIB5s_B3I_EENCNCNvMNtCsjHlmExTLNuX_14datafusion_sql6valuesINtNtB6r_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE18sql_values_to_plan00NCINvXB2L_INtB2L_12GenericShuntINtB2J_3MapBI_B6i_EIB3m_NtNtB1H_7convert10InfallibleB4r_EEB1z_8try_folduNCINvNvB1z_12try_for_each4callB3I_B67_NcNtB67_5Break0E0B67_E0E0B5r_ECs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 16 captures(none) dereferenceable(112) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.4.i.i = alloca [104 x i8], align 8       ; 3 uses
  %i.a = alloca [328 x i8], align 8               ; 4 uses
  %i.b = alloca [112 x i8], align 16              ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.e, align 8        ; 2 uses
  %.not19 = icmp eq ptr %.promoted, %i.d
  br i1 %.not19, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val3 = load ptr, ptr %i.f, align 8, !nonnull !11, !align !69, !noundef !11 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.val3, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %.val3, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.4.48..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.i.i, i64 40
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %i.k = phi ptr [ %.promoted, %.lr.ph ], [ %i.l, %bb.f ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3006
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %i.a, ptr noundef nonnull align 8 dereferenceable(328) %i.k, i64 328, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 328 ; 3 uses
  store ptr %i.l, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.experimental.noalias.scope.decl(metadata !3010)
  %i.m = load ptr, ptr %.val3, align 8, !alias.scope !3010, !noalias !3013, !nonnull !11, !align !69, !noundef !11
  %i.n = load ptr, ptr %i.h, align 8, !alias.scope !3010, !noalias !3013, !nonnull !11, !align !69, !noundef !11
  %i.o = load ptr, ptr %i.n, align 8, !noalias !3016, !nonnull !11, !noundef !11
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.i, align 8, !alias.scope !3010, !noalias !3013, !nonnull !11, !align !69, !noundef !11
  call void @_RNvMNtCsjHlmExTLNuX_14datafusion_sql4exprINtNtB4_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE11sql_to_exprCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(none) dereferenceable(112) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.m, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(328) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.p, ptr noalias noundef nonnull align 8 dereferenceable(80) %i.q), !noalias !3006
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3006
  %.sroa.0.0.copyload.i = load i64, ptr %i.b, align 16, !noalias !3006 ; 3 uses
  %i.r = icmp eq i64 %.sroa.0.0.copyload.i, 37
  br i1 %i.r, label %bb.c, label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldNtNtCs4lawaffTVVK_9sqlparser3ast4ExprINtNtBa_6result6ResultNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3G_B1W_EENCNCNvMNtCsjHlmExTLNuX_14datafusion_sql6valuesINtNtB4E_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE18sql_values_to_plan00NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterBZ_EB4v_EIB1B_NtNtBa_7convert10InfallibleB2F_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB9x_12try_for_each4callB1W_B4k_NcNtB4k_5Break0E0B4k_E0E0Cs2VbMhdeEr66_16delta_benchmarks.exit

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val.le = load ptr, ptr %i.s, align 8, !nonnull !11, !noundef !11 ; 4 uses
  %i.t = load i64, ptr %.val.le, align 8, !range !2467, !alias.scope !3017, !noalias !3020, !noundef !11
  %i.u = icmp eq i64 %i.t, 20
  br i1 %i.u, label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldNtNtCs4lawaffTVVK_9sqlparser3ast4ExprINtNtBa_6result6ResultNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3G_B1W_EENCNCNvMNtCsjHlmExTLNuX_14datafusion_sql6valuesINtNtB4E_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE18sql_values_to_plan00NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterBZ_EB4v_EIB1B_NtNtBa_7convert10InfallibleB2F_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB9x_12try_for_each4callB1W_B4k_NcNtB4k_5Break0E0B4k_E0E0Cs2VbMhdeEr66_16delta_benchmarks.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(40) %.val.le)
          to label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldNtNtCs4lawaffTVVK_9sqlparser3ast4ExprINtNtBa_6result6ResultNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3G_B1W_EENCNCNvMNtCsjHlmExTLNuX_14datafusion_sql6valuesINtNtB4E_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE18sql_values_to_plan00NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterBZ_EB4v_EIB1B_NtNtBa_7convert10InfallibleB2F_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB9x_12try_for_each4callB1W_B4k_NcNtB4k_5Break0E0B4k_E0E0Cs2VbMhdeEr66_16delta_benchmarks.exit.thread unwind label %bb.e, !noalias !3020

bb.e:                                             ; preds = %bb.d
  %i.v = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.val.le, ptr noundef nonnull align 8 dereferenceable(40) %i.g, i64 40, i1 false), !noalias !3006
  resume { ptr, i32 } %i.v

_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldNtNtCs4lawaffTVVK_9sqlparser3ast4ExprINtNtBa_6result6ResultNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3G_B1W_EENCNCNvMNtCsjHlmExTLNuX_14datafusion_sql6valuesINtNtB4E_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE18sql_values_to_plan00NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterBZ_EB4v_EIB1B_NtNtBa_7convert10InfallibleB2F_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB9x_12try_for_each4callB1W_B4k_NcNtB4k_5Break0E0B4k_E0E0Cs2VbMhdeEr66_16delta_benchmarks.exit.thread: ; preds = %bb.c, %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.val.le, ptr noundef nonnull align 8 dereferenceable(40) %i.g, i64 40, i1 false), !noalias !3006
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.loopexit

_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldNtNtCs4lawaffTVVK_9sqlparser3ast4ExprINtNtBa_6result6ResultNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3G_B1W_EENCNCNvMNtCsjHlmExTLNuX_14datafusion_sql6valuesINtNtB4E_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE18sql_values_to_plan00NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterBZ_EB4v_EIB1B_NtNtBa_7convert10InfallibleB2F_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB9x_12try_for_each4callB1W_B4k_NcNtB4k_5Break0E0B4k_E0E0Cs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4.i.i, ptr noundef nonnull align 8 dereferenceable(40) %i.g, i64 40, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.4.48..sroa_idx.i.i, ptr noundef nonnull align 16 dereferenceable(64) %i.j, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not.i = icmp eq i64 %.sroa.0.0.copyload.i, 38
  br i1 %.not.i, label %bb.f, label %.loopexit

._crit_edge:                                      ; preds = %bb.f, %bb.a, %.loopexit
  %storemerge = phi i64 [ %.sroa.0.0.copyload.i, %.loopexit ], [ 38, %bb.a ], [ 38, %bb.f ]
  store i64 %storemerge, ptr %0, align 16
  ret void

.loopexit:                                        ; preds = %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldNtNtCs4lawaffTVVK_9sqlparser3ast4ExprINtNtBa_6result6ResultNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3G_B1W_EENCNCNvMNtCsjHlmExTLNuX_14datafusion_sql6valuesINtNtB4E_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE18sql_values_to_plan00NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterBZ_EB4v_EIB1B_NtNtBa_7convert10InfallibleB2F_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB9x_12try_for_each4callB1W_B4k_NcNtB4k_5Break0E0B4k_E0E0Cs2VbMhdeEr66_16delta_benchmarks.exit, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldNtNtCs4lawaffTVVK_9sqlparser3ast4ExprINtNtBa_6result6ResultNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3G_B1W_EENCNCNvMNtCsjHlmExTLNuX_14datafusion_sql6valuesINtNtB4E_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE18sql_values_to_plan00NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterBZ_EB4v_EIB1B_NtNtBa_7convert10InfallibleB2F_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB9x_12try_for_each4callB1W_B4k_NcNtB4k_5Break0E0B4k_E0E0Cs2VbMhdeEr66_16delta_benchmarks.exit.thread
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.2.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.4.i.i, i64 104, i1 false)
  br label %._crit_edge

bb.f:                                             ; preds = %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldNtNtCs4lawaffTVVK_9sqlparser3ast4ExprINtNtBa_6result6ResultNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3G_B1W_EENCNCNvMNtCsjHlmExTLNuX_14datafusion_sql6valuesINtNtB4E_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE18sql_values_to_plan00NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterBZ_EB4v_EIB1B_NtNtBa_7convert10InfallibleB2F_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB9x_12try_for_each4callB1W_B4k_NcNtB4k_5Break0E0B4k_E0E0Cs2VbMhdeEr66_16delta_benchmarks.exit
  %.not = icmp eq ptr %i.l, %i.d
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB6_8IntoIterNtNtCs4lawaffTVVK_9sqlparser3ast4ExprENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1F_8adapters3map12map_try_foldBX_INtNtB1H_6result6ResultNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtB1H_3ops12control_flow11ControlFlowIB5s_B3I_EENCNCNvMNtNtCsjHlmExTLNuX_14datafusion_sql4expr12grouping_setINtNtB6t_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE25sql_grouping_sets_to_expr00NCINvXB2L_INtB2L_12GenericShuntINtB2J_3MapBI_B6i_EIB3m_NtNtB1H_7convert10InfallibleB4r_EEB1z_8try_folduNCINvNvB1z_12try_for_each4callB3I_B67_NcNtB67_5Break0E0B67_E0E0B5r_ECs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 16 captures(none) dereferenceable(112) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.4.i.i = alloca [104 x i8], align 8       ; 3 uses
  %i.a = alloca [328 x i8], align 8               ; 4 uses
  %i.b = alloca [112 x i8], align 16              ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.e, align 8        ; 2 uses
  %.not19 = icmp eq ptr %.promoted, %i.d
  br i1 %.not19, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val3 = load ptr, ptr %i.f, align 8, !nonnull !11, !align !69, !noundef !11 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.val3, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %.val3, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.4.48..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.i.i, i64 40
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %i.k = phi ptr [ %.promoted, %.lr.ph ], [ %i.l, %bb.f ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3024
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %i.a, ptr noundef nonnull align 8 dereferenceable(328) %i.k, i64 328, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 328 ; 3 uses
  store ptr %i.l, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.m = load ptr, ptr %.val3, align 8, !alias.scope !3028, !noalias !3031, !nonnull !11, !align !69, !noundef !11
  %i.n = load ptr, ptr %i.h, align 8, !alias.scope !3028, !noalias !3031, !nonnull !11, !align !69, !noundef !11
  %i.o = load ptr, ptr %i.i, align 8, !alias.scope !3028, !noalias !3031, !nonnull !11, !align !69, !noundef !11
  call void @_RNvMNtCsjHlmExTLNuX_14datafusion_sql4exprINtNtB4_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE24sql_expr_to_logical_exprCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(none) dereferenceable(112) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.m, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(328) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.n, ptr noalias noundef nonnull align 8 dereferenceable(80) %i.o), !noalias !3024
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3024
  %.sroa.0.0.copyload.i = load i64, ptr %i.b, align 16, !noalias !3024 ; 3 uses
  %i.p = icmp eq i64 %.sroa.0.0.copyload.i, 37
  br i1 %i.p, label %bb.c, label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldNtNtCs4lawaffTVVK_9sqlparser3ast4ExprINtNtBa_6result6ResultNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3G_B1W_EENCNCNvMNtNtCsjHlmExTLNuX_14datafusion_sql4expr12grouping_setINtNtB4G_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE25sql_grouping_sets_to_expr00NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterBZ_EB4v_EIB1B_NtNtBa_7convert10InfallibleB2F_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB9S_12try_for_each4callB1W_B4k_NcNtB4k_5Break0E0B4k_E0E0Cs2VbMhdeEr66_16delta_benchmarks.exit

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val.le = load ptr, ptr %i.q, align 8, !nonnull !11, !noundef !11 ; 4 uses
  %i.r = load i64, ptr %.val.le, align 8, !range !2467, !alias.scope !3034, !noalias !3037, !noundef !11
  %i.s = icmp eq i64 %i.r, 20
  br i1 %i.s, label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldNtNtCs4lawaffTVVK_9sqlparser3ast4ExprINtNtBa_6result6ResultNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3G_B1W_EENCNCNvMNtNtCsjHlmExTLNuX_14datafusion_sql4expr12grouping_setINtNtB4G_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE25sql_grouping_sets_to_expr00NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterBZ_EB4v_EIB1B_NtNtBa_7convert10InfallibleB2F_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB9S_12try_for_each4callB1W_B4k_NcNtB4k_5Break0E0B4k_E0E0Cs2VbMhdeEr66_16delta_benchmarks.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(40) %.val.le)
          to label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldNtNtCs4lawaffTVVK_9sqlparser3ast4ExprINtNtBa_6result6ResultNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3G_B1W_EENCNCNvMNtNtCsjHlmExTLNuX_14datafusion_sql4expr12grouping_setINtNtB4G_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE25sql_grouping_sets_to_expr00NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterBZ_EB4v_EIB1B_NtNtBa_7convert10InfallibleB2F_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB9S_12try_for_each4callB1W_B4k_NcNtB4k_5Break0E0B4k_E0E0Cs2VbMhdeEr66_16delta_benchmarks.exit.thread unwind label %bb.e, !noalias !3037

bb.e:                                             ; preds = %bb.d
  %i.t = landingpad { ptr, i32 }
end_hunk_7
begin_hunk_8_@_RINvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB6_8IntoIterNtNtCs4lawaffTVVK_9sqlparser3ast4ExprENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1F_8adapters3map12map_try_foldBX_INtNtB1H_6result6ResultNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtB1H_3ops12control_flow11ControlFlowIB5s_B3I_EENCNvMNtNtCsjHlmExTLNuX_14datafusion_sql4expr5valueINtNtB6r_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE17sql_array_literal0NCINvXB2L_INtB2L_12GenericShuntINtB2J_3MapBI_B6i_EIB3m_NtNtB1H_7convert10InfallibleB4r_EEB1z_8try_folduNCINvNvB1z_12try_for_each4callB3I_B67_NcNtB67_5Break0E0B67_E0E0B5r_ECs2VbMhdeEr66_16delta_benchmarks:bb.a
  %.sroa.4.i.i = alloca [104 x i8], align 8       ; 3 uses
  %i.a = alloca [80 x i8], align 8                ; 6 uses
  %i.b = alloca [328 x i8], align 8               ; 5 uses
  %i.c = alloca [112 x i8], align 16              ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.f, align 8        ; 2 uses
  %.not20 = icmp eq ptr %.promoted, %i.e
  br i1 %.not20, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val3 = load ptr, ptr %i.g, align 8, !nonnull !11, !align !69, !noundef !11 ; 2 uses
  %i.h = getelementptr i8, ptr %.val3, i64 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %.sroa.4.48..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.i.i, i64 40
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.j
  %i.i = phi ptr [ %.promoted, %.lr.ph ], [ %i.j, %bb.j ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3218
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %i.b, ptr noundef nonnull align 8 dereferenceable(328) %i.i, i64 328, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 328 ; 3 uses
  store ptr %i.j, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %.val.i = load ptr, ptr %.val3, align 8, !noalias !3225, !nonnull !11, !align !69, !noundef !11
  %.val2.i = load ptr, ptr %i.h, align 8, !noalias !3225, !nonnull !11, !align !69, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3218
  invoke void @_RNvMs7_NtCsjHlmExTLNuX_14datafusion_sql7plannerNtB5_14PlannerContext3new(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.a)
          to label %bb.c unwind label %bb.f, !noalias !3218

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvMNtCsjHlmExTLNuX_14datafusion_sql4exprINtNtB4_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE24sql_expr_to_logical_exprCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(none) dereferenceable(112) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.val.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(328) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.val2.i, ptr noalias noundef nonnull align 8 dereferenceable(80) %i.a)
          to label %_RNCNvMNtNtCsjHlmExTLNuX_14datafusion_sql4expr5valueINtNtB8_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE17sql_array_literal0Cs2VbMhdeEr66_16delta_benchmarks.exit.i unwind label %bb.d, !noalias !3225

bb.d:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjHlmExTLNuX_14datafusion_sql7planner14PlannerContextECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(80) %i.a) #30
          to label %common.resume.i unwind label %bb.e, !noalias !3218

bb.e:                                             ; preds = %bb.f, %bb.d
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #29, !noalias !3218
  unreachable

common.resume.i:                                  ; preds = %bb.i, %bb.f, %bb.d
  %common.resume.op.i = phi { ptr, i32 } [ %i.r, %bb.i ], [ %i.k, %bb.d ], [ %i.m, %bb.f ]
  resume { ptr, i32 } %common.resume.op.i

bb.f:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast4ExprECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(328) %i.b) #30
          to label %common.resume.i unwind label %bb.e, !noalias !3218

_RNCNvMNtNtCsjHlmExTLNuX_14datafusion_sql4expr5valueINtNtB8_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE17sql_array_literal0Cs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %bb.c
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjHlmExTLNuX_14datafusion_sql7planner14PlannerContextECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(80) %i.a), !noalias !3218
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3218
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3218
  %.sroa.0.0.copyload.i = load i64, ptr %i.c, align 16, !noalias !3225 ; 3 uses
  %i.n = icmp eq i64 %.sroa.0.0.copyload.i, 37
  br i1 %i.n, label %bb.g, label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldNtNtCs4lawaffTVVK_9sqlparser3ast4ExprINtNtBa_6result6ResultNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3G_B1W_EENCNvMNtNtCsjHlmExTLNuX_14datafusion_sql4expr5valueINtNtB4E_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE17sql_array_literal0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterBZ_EB4v_EIB1B_NtNtBa_7convert10InfallibleB2F_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB9z_12try_for_each4callB1W_B4k_NcNtB4k_5Break0E0B4k_E0E0Cs2VbMhdeEr66_16delta_benchmarks.exit

bb.g:                                             ; preds = %_RNCNvMNtNtCsjHlmExTLNuX_14datafusion_sql4expr5valueINtNtB8_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE17sql_array_literal0Cs2VbMhdeEr66_16delta_benchmarks.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val.le = load ptr, ptr %i.o, align 8, !nonnull !11, !noundef !11 ; 4 uses
  %i.p = load i64, ptr %.val.le, align 8, !range !2467, !alias.scope !3226, !noalias !3229, !noundef !11
  %i.q = icmp eq i64 %i.p, 20
  br i1 %i.q, label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldNtNtCs4lawaffTVVK_9sqlparser3ast4ExprINtNtBa_6result6ResultNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3G_B1W_EENCNvMNtNtCsjHlmExTLNuX_14datafusion_sql4expr5valueINtNtB4E_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE17sql_array_literal0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterBZ_EB4v_EIB1B_NtNtBa_7convert10InfallibleB2F_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB9z_12try_for_each4callB1W_B4k_NcNtB4k_5Break0E0B4k_E0E0Cs2VbMhdeEr66_16delta_benchmarks.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(40) %.val.le)
          to label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldNtNtCs4lawaffTVVK_9sqlparser3ast4ExprINtNtBa_6result6ResultNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3G_B1W_EENCNvMNtNtCsjHlmExTLNuX_14datafusion_sql4expr5valueINtNtB4E_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE17sql_array_literal0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterBZ_EB4v_EIB1B_NtNtBa_7convert10InfallibleB2F_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB9z_12try_for_each4callB1W_B4k_NcNtB4k_5Break0E0B4k_E0E0Cs2VbMhdeEr66_16delta_benchmarks.exit.thread unwind label %bb.i, !noalias !3229

bb.i:                                             ; preds = %bb.h
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.val.le, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4.0..sroa_idx.i, i64 40, i1 false), !noalias !3225
  br label %common.resume.i

_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldNtNtCs4lawaffTVVK_9sqlparser3ast4ExprINtNtBa_6result6ResultNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3G_B1W_EENCNvMNtNtCsjHlmExTLNuX_14datafusion_sql4expr5valueINtNtB4E_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE17sql_array_literal0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterBZ_EB4v_EIB1B_NtNtBa_7convert10InfallibleB2F_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB9z_12try_for_each4callB1W_B4k_NcNtB4k_5Break0E0B4k_E0E0Cs2VbMhdeEr66_16delta_benchmarks.exit.thread: ; preds = %bb.g, %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.val.le, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4.0..sroa_idx.i, i64 40, i1 false), !noalias !3225
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %.loopexit

_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldNtNtCs4lawaffTVVK_9sqlparser3ast4ExprINtNtBa_6result6ResultNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3G_B1W_EENCNvMNtNtCsjHlmExTLNuX_14datafusion_sql4expr5valueINtNtB4E_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE17sql_array_literal0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterBZ_EB4v_EIB1B_NtNtBa_7convert10InfallibleB2F_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB9z_12try_for_each4callB1W_B4k_NcNtB4k_5Break0E0B4k_E0E0Cs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %_RNCNvMNtNtCsjHlmExTLNuX_14datafusion_sql4expr5valueINtNtB8_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE17sql_array_literal0Cs2VbMhdeEr66_16delta_benchmarks.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4.0..sroa_idx.i, i64 40, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.4.48..sroa_idx.i.i, ptr noundef nonnull align 16 dereferenceable(64) %.sroa.7.0..sroa_idx.i, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.not.i = icmp eq i64 %.sroa.0.0.copyload.i, 38
  br i1 %.not.i, label %bb.j, label %.loopexit

._crit_edge:                                      ; preds = %bb.j, %bb.a, %.loopexit
  %storemerge = phi i64 [ %.sroa.0.0.copyload.i, %.loopexit ], [ 38, %bb.a ], [ 38, %bb.j ]
  store i64 %storemerge, ptr %0, align 16
  ret void

.loopexit:                                        ; preds = %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldNtNtCs4lawaffTVVK_9sqlparser3ast4ExprINtNtBa_6result6ResultNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3G_B1W_EENCNvMNtNtCsjHlmExTLNuX_14datafusion_sql4expr5valueINtNtB4E_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE17sql_array_literal0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterBZ_EB4v_EIB1B_NtNtBa_7convert10InfallibleB2F_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB9z_12try_for_each4callB1W_B4k_NcNtB4k_5Break0E0B4k_E0E0Cs2VbMhdeEr66_16delta_benchmarks.exit, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldNtNtCs4lawaffTVVK_9sqlparser3ast4ExprINtNtBa_6result6ResultNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3G_B1W_EENCNvMNtNtCsjHlmExTLNuX_14datafusion_sql4expr5valueINtNtB4E_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE17sql_array_literal0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterBZ_EB4v_EIB1B_NtNtBa_7convert10InfallibleB2F_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB9z_12try_for_each4callB1W_B4k_NcNtB4k_5Break0E0B4k_E0E0Cs2VbMhdeEr66_16delta_benchmarks.exit.thread
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.2.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.4.i.i, i64 104, i1 false)
  br label %._crit_edge

bb.j:                                             ; preds = %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldNtNtCs4lawaffTVVK_9sqlparser3ast4ExprINtNtBa_6result6ResultNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3G_B1W_EENCNvMNtNtCsjHlmExTLNuX_14datafusion_sql4expr5valueINtNtB4E_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE17sql_array_literal0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterBZ_EB4v_EIB1B_NtNtBa_7convert10InfallibleB2F_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB9z_12try_for_each4callB1W_B4k_NcNtB4k_5Break0E0B4k_E0E0Cs2VbMhdeEr66_16delta_benchmarks.exit
  %.not = icmp eq ptr %i.j, %i.e
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB6_8IntoIterNtNtCs4lawaffTVVK_9sqlparser3ast4ExprENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1F_8adapters3map12map_try_foldBX_INtNtB1H_6result6ResultNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtB1H_3ops12control_flow11ControlFlowIB5s_B3I_EENCNvMs_NtCsjHlmExTLNuX_14datafusion_sql8relationINtNtB6r_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE23create_default_relations_0NCINvXB2L_INtB2L_12GenericShuntINtB2J_3MapBI_B6i_EIB3m_NtNtB1H_7convert10InfallibleB4r_EEB1z_8try_folduNCINvNvB1z_12try_for_each4callB3I_B67_NcNtB67_5Break0E0B67_E0E0B5r_ECs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 16 captures(none) dereferenceable(112) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [112 x i8], align 16              ; 4 uses
  %i.b = alloca [40 x i8], align 8                ; 6 uses
  %i.c = alloca [112 x i8], align 16              ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.e = alloca [112 x i8], align 16              ; 11 uses
  %i.f = alloca [328 x i8], align 8               ; 5 uses
  %.sroa.10.i = alloca [96 x i8], align 16        ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !11, !noundef !11
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !11, !noundef !11 ; 3 uses
  %.not = icmp eq ptr %i.j, %i.h
  br i1 %.not, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !3233
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %i.f, ptr noundef nonnull align 8 dereferenceable(328) %i.j, i64 328, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 328
  store ptr %i.k, ptr %i.i, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val = load ptr, ptr %i.l, align 8             ; 7 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val3 = load ptr, ptr %i.m, align 8, !nonnull !11, !align !69, !noundef !11 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3237)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !3240
  %i.n = load ptr, ptr %.val3, align 8, !alias.scope !3237, !noalias !3243, !nonnull !11, !align !69, !noundef !11
  %i.o = getelementptr inbounds nuw i8, ptr %.val3, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !3237, !noalias !3243, !nonnull !11, !align !69, !noundef !11 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.val3, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !3237, !noalias !3243, !nonnull !11, !align !69, !noundef !11
  call void @_RNvMNtCsjHlmExTLNuX_14datafusion_sql4exprINtNtB4_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE24sql_expr_to_logical_exprCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(none) dereferenceable(112) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.n, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(328) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.p, ptr noalias noundef nonnull align 8 dereferenceable(80) %i.r)
  %i.s = load i64, ptr %i.c, align 16, !range !2741, !noundef !11 ; 2 uses
  %i.t = icmp eq i64 %i.s, 37
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.6.i.sroa.0.0.copyload8.i = load ptr, ptr %i.u, align 8 ; 2 uses
  br i1 %i.t, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.sroa.10.i, ptr noundef nonnull align 16 dereferenceable(32) %i.d, i64 32, i1 false)
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  %.sroa.611.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %.sroa.5.0..sroa_idx.i.i, ptr noundef nonnull align 16 dereferenceable(64) %.sroa.611.0..sroa_idx.i.i, i64 64, i1 false)
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %.sroa.6.i.sroa.0.0.copyload8.i, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !3240
  %.sroa.6.i.sroa.7.0..sroa.4.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.sroa.6.i.sroa.7.0..sroa.4.0..sroa_idx.i.sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(32) %i.d, i64 32, i1 false)
  store i64 %i.s, ptr %i.e, align 16, !noalias !3240
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3240
  invoke void @_RNvMs_NtNtCsjHlmExTLNuX_14datafusion_sql4expr8functionINtNtB8_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE16check_unnest_argCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.b, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.p)
          to label %bb.e unwind label %bb.g, !noalias !3240

bb.e:                                             ; preds = %bb.d
  %i.v = load i64, ptr %i.b, align 8, !range !2467, !noalias !3240, !noundef !11 ; 2 uses
  %.not.i.i = icmp eq i64 %i.v, 20
  br i1 %.not.i.i, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = inttoptr i64 %i.v to ptr
  %.sroa.10.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.sroa.10.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.10.8..sroa_idx.i, i64 32, i1 false), !noalias !3233
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3240
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 16 dereferenceable(112) %i.e), !noalias !3240
  br label %bb.i

common.resume.i:                                  ; preds = %bb.l, %bb.g
  %common.resume.op.i = phi { ptr, i32 } [ %i.ac, %bb.l ], [ %i.x, %bb.g ]
  resume { ptr, i32 } %common.resume.op.i

bb.g:                                             ; preds = %bb.d
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 16 dereferenceable(112) %i.e) #30
          to label %common.resume.i unwind label %bb.h, !noalias !3240

bb.h:                                             ; preds = %bb.g
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #29, !noalias !3240
  unreachable

bb.i:                                             ; preds = %bb.f, %bb.c
  %.sroa.6.0.ph.i = phi ptr [ %i.w, %bb.f ], [ %.sroa.6.i.sroa.0.0.copyload8.i, %bb.c ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !3240
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !3233
  %i.z = load i64, ptr %.val, align 8, !range !2467, !alias.scope !3244, !noalias !3247, !noundef !11
  %i.aa = icmp eq i64 %i.z, 20
  br i1 %i.aa, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(40) %.val)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i unwind label %bb.l, !noalias !3247

bb.k:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3240
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3240
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.a, ptr noundef nonnull align 16 dereferenceable(112) %i.e, i64 112, i1 false), !noalias !3240
  %i.ab = call noundef nonnull align 16 ptr @_RNvMs7_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB5_6Unnest3new(ptr noalias noundef nonnull align 16 captures(address) dereferenceable(112) %i.a), !noalias !3240
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3240
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !3240
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !3233
  br label %bb.o

bb.l:                                             ; preds = %bb.j
  %i.ac = landingpad { ptr, i32 }
          cleanup
  store ptr %.sroa.6.0.ph.i, ptr %.val, align 8, !noalias !3251
  %.sroa.4.sroa.6.0..8.val.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.val, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4.sroa.6.0..8.val.sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(32) %.sroa.10.i, i64 32, i1 false), !noalias !3233
  br label %common.resume.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i: ; preds = %bb.j, %bb.i
  store ptr %.sroa.6.0.ph.i, ptr %.val, align 8, !noalias !3251
  %.sroa.4.sroa.6.0..8.val.sroa_idx6.i = getelementptr inbounds nuw i8, ptr %.val, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4.sroa.6.0..8.val.sroa_idx6.i, ptr noundef nonnull align 16 dereferenceable(32) %.sroa.10.i, i64 32, i1 false), !noalias !3233
  br label %bb.o

bb.m:                                             ; preds = %bb.a
  store i64 38, ptr %0, align 16, !alias.scope !3252
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.o
  ret void

bb.o:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i, %bb.k
  %.sroa.6.1 = phi ptr [ undef, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i ], [ %i.ab, %bb.k ]
  %.sroa.06.0 = phi i64 [ 37, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i ], [ 36, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i)
  store i64 %.sroa.06.0, ptr %0, align 16, !alias.scope !3255
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.6.1, ptr %.sroa.2.0..sroa_idx, align 8, !alias.scope !3255
  br label %bb.n
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB6_8IntoIterNtNtCs4lawaffTVVK_9sqlparser3ast4ExprENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1F_8adapters6filter15filter_try_foldBX_uINtNtNtB1H_3ops12control_flow11ControlFlowIB3t_NtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEENCNvMs_NtNtCsjHlmExTLNuX_14datafusion_sql4expr8functionINtNtB59_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE20sql_function_to_exprs1_0NCINvNtB2L_3map12map_try_foldBX_INtNtB1H_6result6ResultB4d_NtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuB3s_NCB50_s2_0NCINvXB2L_INtB2L_12GenericShuntINtB86_3MapINtB2J_6FilterBI_B4Y_EBa2_EIB8y_NtNtB1H_7convert10InfallibleB8Y_EEB1z_8try_folduNCINvNvB1z_12try_for_each4callB4d_B48_NcNtB48_5Break0E0B48_E0E0E0B3s_ECs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 16 captures(none) dereferenceable(112) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.4.i.i.i = alloca [104 x i8], align 8     ; 3 uses
  %i.a = alloca [328 x i8], align 8               ; 4 uses
  %i.b = alloca [112 x i8], align 16              ; 7 uses
  %i.c = alloca [328 x i8], align 8               ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.f, align 8        ; 2 uses
  %.not24 = icmp eq ptr %.promoted, %i.e
  br i1 %.not24, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.val3 = load ptr, ptr %i.g, align 8            ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.val3, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %.val3, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.4.48..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.i.i.i, i64 40
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %i.l = phi ptr [ %.promoted, %.lr.ph ], [ %i.m, %bb.f ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %i.c, ptr noundef nonnull align 8 dereferenceable(328) %i.l, i64 328, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 328 ; 3 uses
  store ptr %i.m, ptr %i.f, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !3259)
  %.val.i = load i64, ptr %i.c, align 8, !range !701, !alias.scope !3259, !noalias !3262, !noundef !11 ; 2 uses
  %i.n = icmp ne i64 %.val.i, 48
  call void @llvm.assume(i1 %i.n)
  %.not.i = icmp eq i64 %.val.i, 45
  br i1 %.not.i, label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6filter15filter_try_foldNtNtCs4lawaffTVVK_9sqlparser3ast4ExpruINtNtNtBa_3ops12control_flow11ControlFlowIB1I_NtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEENCNvMs_NtNtCsjHlmExTLNuX_14datafusion_sql4expr8functionINtNtB3n_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE20sql_function_to_exprs1_0NCINvNtB6_3map12map_try_foldB15_INtNtBa_6result6ResultB2r_NtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuB1H_NCB3e_s2_0NCINvXB6_INtB6_12GenericShuntINtB6k_3MapINtB4_6FilterINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterB15_EB3c_EB8f_EIB6M_NtNtBa_7convert10InfallibleB7b_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvBaV_12try_for_each4callB2r_B2m_NcNtB2m_5Break0E0B2m_E0E0E0Cs2VbMhdeEr66_16delta_benchmarks.exit.thread, label %.noexc.i

.noexc.i:                                         ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val3) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3264
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %i.a, ptr noundef nonnull align 8 dereferenceable(328) %i.l, i64 328, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3268
  %i.o = load ptr, ptr %.val3, align 8, !alias.scope !3269, !noalias !3272, !nonnull !11, !align !69, !noundef !11
  %i.p = load ptr, ptr %i.i, align 8, !alias.scope !3269, !noalias !3272, !nonnull !11, !align !69, !noundef !11
  %i.q = load ptr, ptr %i.j, align 8, !alias.scope !3269, !noalias !3272, !nonnull !11, !align !69, !noundef !11
  call void @_RNvMNtCsjHlmExTLNuX_14datafusion_sql4exprINtNtB4_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE24sql_expr_to_logical_exprCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(none) dereferenceable(112) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.o, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(328) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.p, ptr noalias noundef nonnull align 8 dereferenceable(80) %i.q), !noalias !3268
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3264
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.b, align 16, !noalias !3264 ; 3 uses
  %i.r = icmp eq i64 %.sroa.0.0.copyload.i.i, 37
  br i1 %i.r, label %bb.c, label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6filter15filter_try_foldNtNtCs4lawaffTVVK_9sqlparser3ast4ExpruINtNtNtBa_3ops12control_flow11ControlFlowIB1I_NtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEENCNvMs_NtNtCsjHlmExTLNuX_14datafusion_sql4expr8functionINtNtB3n_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE20sql_function_to_exprs1_0NCINvNtB6_3map12map_try_foldB15_INtNtBa_6result6ResultB2r_NtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuB1H_NCB3e_s2_0NCINvXB6_INtB6_12GenericShuntINtB6k_3MapINtB4_6FilterINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterB15_EB3c_EB8f_EIB6M_NtNtBa_7convert10InfallibleB7b_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvBaV_12try_for_each4callB2r_B2m_NcNtB2m_5Break0E0B2m_E0E0E0Cs2VbMhdeEr66_16delta_benchmarks.exit

bb.c:                                             ; preds = %.noexc.i
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val.le = load ptr, ptr %i.s, align 8, !nonnull !11, !noundef !11 ; 4 uses
  %i.t = load i64, ptr %.val.le, align 8, !range !2467, !alias.scope !3275, !noalias !3278, !noundef !11
  %i.u = icmp eq i64 %i.t, 20
  br i1 %i.u, label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6filter15filter_try_foldNtNtCs4lawaffTVVK_9sqlparser3ast4ExpruINtNtNtBa_3ops12control_flow11ControlFlowIB1I_NtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEENCNvMs_NtNtCsjHlmExTLNuX_14datafusion_sql4expr8functionINtNtB3n_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE20sql_function_to_exprs1_0NCINvNtB6_3map12map_try_foldB15_INtNtBa_6result6ResultB2r_NtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuB1H_NCB3e_s2_0NCINvXB6_INtB6_12GenericShuntINtB6k_3MapINtB4_6FilterINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterB15_EB3c_EB8f_EIB6M_NtNtBa_7convert10InfallibleB7b_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvBaV_12try_for_each4callB2r_B2m_NcNtB2m_5Break0E0B2m_E0E0E0Cs2VbMhdeEr66_16delta_benchmarks.exit.thread13, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(40) %.val.le)
          to label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6filter15filter_try_foldNtNtCs4lawaffTVVK_9sqlparser3ast4ExpruINtNtNtBa_3ops12control_flow11ControlFlowIB1I_NtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEENCNvMs_NtNtCsjHlmExTLNuX_14datafusion_sql4expr8functionINtNtB3n_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE20sql_function_to_exprs1_0NCINvNtB6_3map12map_try_foldB15_INtNtBa_6result6ResultB2r_NtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuB1H_NCB3e_s2_0NCINvXB6_INtB6_12GenericShuntINtB6k_3MapINtB4_6FilterINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterB15_EB3c_EB8f_EIB6M_NtNtBa_7convert10InfallibleB7b_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvBaV_12try_for_each4callB2r_B2m_NcNtB2m_5Break0E0B2m_E0E0E0Cs2VbMhdeEr66_16delta_benchmarks.exit.thread13 unwind label %bb.e, !noalias !3278

bb.e:                                             ; preds = %bb.d
  %i.v = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.val.le, ptr noundef nonnull align 8 dereferenceable(40) %i.h, i64 40, i1 false), !noalias !3264
  resume { ptr, i32 } %i.v

_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6filter15filter_try_foldNtNtCs4lawaffTVVK_9sqlparser3ast4ExpruINtNtNtBa_3ops12control_flow11ControlFlowIB1I_NtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEENCNvMs_NtNtCsjHlmExTLNuX_14datafusion_sql4expr8functionINtNtB3n_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE20sql_function_to_exprs1_0NCINvNtB6_3map12map_try_foldB15_INtNtBa_6result6ResultB2r_NtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuB1H_NCB3e_s2_0NCINvXB6_INtB6_12GenericShuntINtB6k_3MapINtB4_6FilterINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterB15_EB3c_EB8f_EIB6M_NtNtBa_7convert10InfallibleB7b_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvBaV_12try_for_each4callB2r_B2m_NcNtB2m_5Break0E0B2m_E0E0E0Cs2VbMhdeEr66_16delta_benchmarks.exit.thread13: ; preds = %bb.c, %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.val.le, ptr noundef nonnull align 8 dereferenceable(40) %i.h, i64 40, i1 false), !noalias !3264
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3268
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %.loopexit

_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6filter15filter_try_foldNtNtCs4lawaffTVVK_9sqlparser3ast4ExpruINtNtNtBa_3ops12control_flow11ControlFlowIB1I_NtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEENCNvMs_NtNtCsjHlmExTLNuX_14datafusion_sql4expr8functionINtNtB3n_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE20sql_function_to_exprs1_0NCINvNtB6_3map12map_try_foldB15_INtNtBa_6result6ResultB2r_NtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuB1H_NCB3e_s2_0NCINvXB6_INtB6_12GenericShuntINtB6k_3MapINtB4_6FilterINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterB15_EB3c_EB8f_EIB6M_NtNtBa_7convert10InfallibleB7b_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvBaV_12try_for_each4callB2r_B2m_NcNtB2m_5Break0E0B2m_E0E0E0Cs2VbMhdeEr66_16delta_benchmarks.exit.thread: ; preds = %bb.b
  call void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast4ExprECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(328) %i.c), !noalias !3262
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.f

_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6filter15filter_try_foldNtNtCs4lawaffTVVK_9sqlparser3ast4ExpruINtNtNtBa_3ops12control_flow11ControlFlowIB1I_NtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEENCNvMs_NtNtCsjHlmExTLNuX_14datafusion_sql4expr8functionINtNtB3n_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE20sql_function_to_exprs1_0NCINvNtB6_3map12map_try_foldB15_INtNtBa_6result6ResultB2r_NtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuB1H_NCB3e_s2_0NCINvXB6_INtB6_12GenericShuntINtB6k_3MapINtB4_6FilterINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterB15_EB3c_EB8f_EIB6M_NtNtBa_7convert10InfallibleB7b_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvBaV_12try_for_each4callB2r_B2m_NcNtB2m_5Break0E0B2m_E0E0E0Cs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %.noexc.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %i.h, i64 40, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.4.48..sroa_idx.i.i.i, ptr noundef nonnull align 16 dereferenceable(64) %i.k, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3268
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.not.i4 = icmp eq i64 %.sroa.0.0.copyload.i.i, 38
  br i1 %.not.i4, label %bb.f, label %.loopexit

._crit_edge:                                      ; preds = %bb.f, %bb.a, %.loopexit
  %storemerge = phi i64 [ %.sroa.0.0.copyload.i.i, %.loopexit ], [ 38, %bb.a ], [ 38, %bb.f ]
  store i64 %storemerge, ptr %0, align 16
  ret void

.loopexit:                                        ; preds = %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6filter15filter_try_foldNtNtCs4lawaffTVVK_9sqlparser3ast4ExpruINtNtNtBa_3ops12control_flow11ControlFlowIB1I_NtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEENCNvMs_NtNtCsjHlmExTLNuX_14datafusion_sql4expr8functionINtNtB3n_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE20sql_function_to_exprs1_0NCINvNtB6_3map12map_try_foldB15_INtNtBa_6result6ResultB2r_NtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuB1H_NCB3e_s2_0NCINvXB6_INtB6_12GenericShuntINtB6k_3MapINtB4_6FilterINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterB15_EB3c_EB8f_EIB6M_NtNtBa_7convert10InfallibleB7b_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvBaV_12try_for_each4callB2r_B2m_NcNtB2m_5Break0E0B2m_E0E0E0Cs2VbMhdeEr66_16delta_benchmarks.exit, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6filter15filter_try_foldNtNtCs4lawaffTVVK_9sqlparser3ast4ExpruINtNtNtBa_3ops12control_flow11ControlFlowIB1I_NtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEENCNvMs_NtNtCsjHlmExTLNuX_14datafusion_sql4expr8functionINtNtB3n_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE20sql_function_to_exprs1_0NCINvNtB6_3map12map_try_foldB15_INtNtBa_6result6ResultB2r_NtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuB1H_NCB3e_s2_0NCINvXB6_INtB6_12GenericShuntINtB6k_3MapINtB4_6FilterINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterB15_EB3c_EB8f_EIB6M_NtNtBa_7convert10InfallibleB7b_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvBaV_12try_for_each4callB2r_B2m_NcNtB2m_5Break0E0B2m_E0E0E0Cs2VbMhdeEr66_16delta_benchmarks.exit.thread13
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.2.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.4.i.i.i, i64 104, i1 false)
  br label %._crit_edge

bb.f:                                             ; preds = %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6filter15filter_try_foldNtNtCs4lawaffTVVK_9sqlparser3ast4ExpruINtNtNtBa_3ops12control_flow11ControlFlowIB1I_NtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEENCNvMs_NtNtCsjHlmExTLNuX_14datafusion_sql4expr8functionINtNtB3n_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE20sql_function_to_exprs1_0NCINvNtB6_3map12map_try_foldB15_INtNtBa_6result6ResultB2r_NtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuB1H_NCB3e_s2_0NCINvXB6_INtB6_12GenericShuntINtB6k_3MapINtB4_6FilterINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterB15_EB3c_EB8f_EIB6M_NtNtBa_7convert10InfallibleB7b_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvBaV_12try_for_each4callB2r_B2m_NcNtB2m_5Break0E0B2m_E0E0E0Cs2VbMhdeEr66_16delta_benchmarks.exit.thread, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6filter15filter_try_foldNtNtCs4lawaffTVVK_9sqlparser3ast4ExpruINtNtNtBa_3ops12control_flow11ControlFlowIB1I_NtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEENCNvMs_NtNtCsjHlmExTLNuX_14datafusion_sql4expr8functionINtNtB3n_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE20sql_function_to_exprs1_0NCINvNtB6_3map12map_try_foldB15_INtNtBa_6result6ResultB2r_NtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuB1H_NCB3e_s2_0NCINvXB6_INtB6_12GenericShuntINtB6k_3MapINtB4_6FilterINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterB15_EB3c_EB8f_EIB6M_NtNtBa_7convert10InfallibleB7b_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvBaV_12try_for_each4callB2r_B2m_NcNtB2m_5Break0E0B2m_E0E0E0Cs2VbMhdeEr66_16delta_benchmarks.exit
  %.not = icmp eq ptr %i.m, %i.e
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB6_8IntoIterNtNtCs4lawaffTVVK_9sqlparser3ast4ExprENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_folduNCINvNvXs_NtNtB1F_8adapters9enumerateINtB2O_9EnumeratepEB1z_8try_fold9enumerateBX_uINtNtNtB1H_3ops12control_flow11ControlFlowIB40_ANtNtCs8VI8w5SIoU4_15datafusion_expr4expr4Exprj2_EENCINvNtB2Q_3map12map_try_foldTjBX_EINtNtB1H_6result6ResultB4K_NtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuB3Z_NCNvMNtCsjHlmExTLNuX_14datafusion_sql4exprINtNtB7K_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE24create_named_struct_expr0NCINvXB2Q_INtB2Q_12GenericShuntINtB5E_3MapIB3g_BI_EB7D_EIB69_NtNtB1H_7convert10InfallibleB6z_EEB1z_8try_folduNCINvNvB1z_12try_for_each4callB4K_B4F_NcNtB4F_5Break0E0B4F_E0E0E0B3Z_ECs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([224 x i8]) align 16 captures(none) dereferenceable(224) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.4.i.sroa.0.i.i = alloca [104 x i8], align 8 ; 3 uses
  %i.a = alloca [328 x i8], align 8               ; 4 uses
  %i.b = alloca [112 x i8], align 16              ; 7 uses
  %.sroa.613.i.i.i = alloca [40 x i8], align 8    ; 6 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 12 uses
  %i.f = alloca [112 x i8], align 16              ; 9 uses
  %i.g = alloca [328 x i8], align 8               ; 4 uses
  %i.h = alloca [112 x i8], align 16              ; 7 uses
  %.sroa.6.i.i.i = alloca [40 x i8], align 8      ; 6 uses
  %i.i = alloca [112 x i8], align 16              ; 9 uses
  %i.j = alloca [64 x i8], align 8                ; 12 uses
  %.sroa.05.i.sroa.6.i.i = alloca [40 x i8], align 8 ; 7 uses
  %.sroa.05.i.sroa.8.i.i = alloca [64 x i8], align 16 ; 7 uses
  %.sroa.68.i.i.i = alloca [40 x i8], align 8     ; 7 uses
  %.sroa.7.i.i.i = alloca [64 x i8], align 16     ; 7 uses
  %i.k = alloca [328 x i8], align 8               ; 13 uses
  %i.l = alloca [8 x i8], align 8                 ; 5 uses
  %.sroa.73.i.i = alloca [40 x i8], align 8       ; 9 uses
  %.sroa.10.i.i = alloca [64 x i8], align 16      ; 5 uses
  %.sroa.13.i.i = alloca [40 x i8], align 8       ; 5 uses
  %.sroa.15.i.i = alloca [64 x i8], align 16      ; 5 uses
  %.sroa.7.i = alloca [40 x i8], align 8          ; 2 uses
  %.sroa.8.i = alloca [64 x i8], align 16         ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.n, align 8        ; 2 uses
  %i.o = load ptr, ptr %i.m, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %.not29 = icmp eq ptr %.promoted, %i.o
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !3282, !noalias !3285, !nonnull !11, !align !69, !noundef !11 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val.i = load ptr, ptr %i.r, align 8, !alias.scope !3282, !noalias !3285 ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val1.i = load ptr, ptr %i.s, align 8, !alias.scope !3282, !noalias !3285, !nonnull !11, !align !69, !noundef !11 ; 4 uses
  %.sroa.427.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.632.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.05.i.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.05.i.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 72
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.623.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %.sroa.05.i.sroa.6.0..sroa_idx9.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.05.i.sroa.8.0..sroa_idx10.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %.sroa.4.i.sroa.0.40..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.i.sroa.0.i.i, i64 40
  %.pre = load i64, ptr %i.q, align 8, !noalias !3288
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.ar
  %i.y = phi i64 [ %.pre, %.lr.ph ], [ %i.bs, %bb.ar ]
  %i.z = phi ptr [ %.promoted, %.lr.ph ], [ %i.aa, %bb.ar ] ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 328 ; 3 uses
  store ptr %i.aa, ptr %i.n, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !3282)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.73.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.13.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.15.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !3289)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.05.i.sroa.6.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.05.i.sroa.8.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.68.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !3292
  store i64 %i.y, ptr %i.l, align 8, !noalias !3292
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !3292
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %i.k, ptr noundef nonnull align 8 dereferenceable(328) %i.z, i64 328, i1 false)
  %i.ab = load i64, ptr %i.k, align 8, !range !701, !noalias !3292, !noundef !11 ; 2 uses
  %i.ac = icmp ne i64 %i.ab, 48
  call void @llvm.assume(i1 %i.ac)
  %i.ad = icmp eq i64 %i.ab, 57
  br i1 %i.ad, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ae = load ptr, ptr %i.w, align 8, !noalias !3292, !nonnull !11, !align !69, !noundef !11 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !3292
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.j, ptr noundef nonnull align 8 dereferenceable(64) %i.af, i64 64, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !3292
  invoke void @_RNvXs_NtCs8VI8w5SIoU4_15datafusion_expr7literalNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB4_7Literal3lit(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(none) dereferenceable(112) %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.j)
          to label %bb.g unwind label %bb.f, !noalias !3292

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !3292
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !3292
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !3292
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3292
  store ptr %i.l, ptr %i.c, align 8, !noalias !3292
  store ptr @_RNvXsi_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.427.0..sroa_idx.i.i.i, align 8, !noalias !3292
  invoke void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noundef nonnull @10, ptr noundef nonnull %i.c)
          to label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i unwind label %.body47.i.i.i, !noalias !3292

bb.e:                                             ; preds = %bb.h, %bb.f
  %.sroa.021.0.i.i.i = phi i1 [ %.sroa.021.1.i.i.i, %bb.f ], [ false, %bb.h ]
  %.pn35.i.i.i = phi { ptr, i32 } [ %i.ag, %bb.f ], [ %i.ak, %bb.h ] ; 2 uses
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast5IdentECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.j) #30
          to label %bb.n unwind label %bb.u, !noalias !3292

bb.f:                                             ; preds = %bb.j, %bb.c
  %.sroa.021.1.i.i.i = phi i1 [ false, %bb.j ], [ true, %bb.c ]
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.g:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !3292
  %i.ah = load ptr, ptr %.val1.i, align 8, !alias.scope !3289, !noalias !3298, !nonnull !11, !align !69, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !3292
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %i.g, ptr noundef nonnull align 8 dereferenceable(328) %i.ae, i64 328, i1 false), !noalias !3292
  %i.ai = load ptr, ptr %i.t, align 8, !alias.scope !3289, !noalias !3298, !nonnull !11, !align !69, !noundef !11
  %i.aj = load ptr, ptr %i.u, align 8, !alias.scope !3289, !noalias !3298, !nonnull !11, !align !69, !noundef !11
  invoke void @_RNvMNtCsjHlmExTLNuX_14datafusion_sql4exprINtNtB4_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE24sql_expr_to_logical_exprCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(none) dereferenceable(112) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ah, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(328) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ai, ptr noalias noundef nonnull align 8 dereferenceable(80) %i.aj)
          to label %bb.i unwind label %bb.h, !noalias !3292

bb.h:                                             ; preds = %bb.g
  %i.ak = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 16 dereferenceable(112) %i.i) #30
          to label %bb.e unwind label %bb.u, !noalias !3292

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !3292
  %i.al = load i64, ptr %i.h, align 16, !range !2741, !noalias !3292, !noundef !11 ; 3 uses
  %i.am = icmp eq i64 %i.al, 37
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %i.x, i64 40, i1 false), !noalias !3292
  br i1 %i.am, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !3292
end_hunk_8
begin_hunk_9_@_RINvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB6_8IntoIterNtNtCs4lawaffTVVK_9sqlparser3ast5IdentENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropINtNtBa_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENCINvNvXs_NtNtB1G_8adapters9enumerateINtB4p_9EnumeratepEB1A_8try_fold9enumerateBX_B2E_INtNtNtB1I_3ops12control_flow11ControlFlowINtNtB1I_6result6ResultB2E_zEB2E_ENCINvNtB4r_3map12map_try_foldTjBX_EIB6k_B3e_NtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEB2E_B5D_NCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB8N_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE14insert_to_plan0NCINvXB4r_INtB4r_12GenericShuntINtB6W_3MapIB4R_BI_EB8G_EIB6k_NtNtB1I_7convert10InfallibleB7z_EEB1A_8try_foldB2E_NCINvNtB8_16in_place_collect24write_in_place_with_dropB3e_E0B6j_E0E0E0B5D_ECs2VbMhdeEr66_16delta_benchmarks:bb.a
bb.u:                                             ; preds = %bb.t
  %i.bi = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d) #30
          to label %.body.i.i.i unwind label %bb.v, !noalias !3328

bb.v:                                             ; preds = %bb.u
  %i.bj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #29, !noalias !3328
  unreachable

.thread15.i.i:                                    ; preds = %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bg, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !3328
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3328
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !3328
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !3321
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3321
  store ptr %2, ptr %i.a, align 8, !noalias !3339
  store ptr %.sroa.4.052, ptr %i.s, align 8, !noalias !3339
  br label %bb.ag

bb.w:                                             ; preds = %bb.ad, %.body.i.i.i
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #29, !noalias !3328
  unreachable

bb.x:                                             ; preds = %bb.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store i64 1, ptr %i.aq, align 8, !noalias !3328
  store i64 %i.u, ptr %i.bl, align 8, !noalias !3328
  %i.bm = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  %i.bn = load ptr, ptr %i.bm, align 8, !noalias !3328, !nonnull !11, !noundef !11 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %i.bp = load i64, ptr %i.bo, align 8, !noalias !3328, !noundef !11 ; 2 uses
  %i.bq = icmp ult i64 %i.ae, %i.bp
  br i1 %i.bq, label %bb.y, label %.invoke.i.i.i

bb.y:                                             ; preds = %bb.x
  %i.br = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bs = load ptr, ptr %i.br, align 8, !noalias !3328, !nonnull !11, !noundef !11
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %i.ae
  %i.bv = load ptr, ptr %i.bu, align 8, !noalias !3328, !nonnull !11, !noundef !11 ; 2 uses
  %i.bw = atomicrmw add ptr %i.bv, i64 1 monotonic, align 8, !noalias !3328
  %i.bx = icmp slt i64 %i.bw, 0
  br i1 %i.bx, label %bb.ac, label %bb.z

.invoke.i.i.i:                                    ; preds = %bb.x, %bb.d
  %i.by = phi i64 [ %i.ai, %bb.d ], [ %i.bp, %bb.x ]
  %i.bz = phi ptr [ @17, %bb.d ], [ @19, %bb.x ]
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.ae, i64 noundef %i.by, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bz) #36
          to label %.cont.i.i.i unwind label %.loopexit.split-lp, !noalias !3328

.cont.i.i.i:                                      ; preds = %.invoke.i.i.i
  unreachable

bb.z:                                             ; preds = %bb.y
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit44.i.i.i unwind label %bb.aa, !noalias !3328

bb.aa:                                            ; preds = %bb.z
  %i.ca = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %bb.ak unwind label %bb.ab, !noalias !3328

bb.ab:                                            ; preds = %bb.aa
  %i.cb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #29, !noalias !3328
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit44.i.i.i: ; preds = %bb.z
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.thread.i.i unwind label %bb.ae, !noalias !3321

.thread.i.i:                                      ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit44.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !3328
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !3321
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3321
  br label %bb.an

bb.ac:                                            ; preds = %bb.y
  call void @llvm.trap()
  unreachable

.loopexit:                                        ; preds = %.noexc.i.i, %bb.e
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

.loopexit.split-lp:                               ; preds = %.invoke.i.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.ad:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f) #30
          to label %bb.ak unwind label %bb.w, !noalias !3328

bb.ae:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit44.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i, %bb.b
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.af:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !3328
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !3321
  %i.cd = inttoptr i64 %.sroa.67.0.copyload.i.i.i to ptr ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.sroa.5.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13.i.i, i64 16, i1 false), !noalias !3321
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3321
  store ptr %2, ptr %i.a, align 8, !noalias !3343
  store ptr %.sroa.4.052, ptr %i.s, align 8, !noalias !3343
  %.not.i.i.i.i = icmp eq i64 %.sroa.05.0.copyload.i.i.i, 20
  br i1 %.not.i.i.i.i, label %bb.an, label %.loopexit14

.loopexit14:                                      ; preds = %bb.af
  %i.ce = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.val.i.le49 = load ptr, ptr %i.ce, align 8, !alias.scope !3314, !noalias !3317
  br label %bb.ag

bb.ag:                                            ; preds = %.loopexit14, %.thread15.i.i
  %.val.i39 = phi ptr [ %.val.i.le, %.thread15.i.i ], [ %.val.i.le49, %.loopexit14 ] ; 11 uses
  %i.cf = phi ptr [ %i.au, %.thread15.i.i ], [ %i.cd, %.loopexit14 ] ; 2 uses
  %.sroa.10.021.i.i = phi ptr [ %i.bg, %.thread15.i.i ], [ %.sroa.10.16.copyload.i.i, %.loopexit14 ] ; 2 uses
  %.sroa.01.020.i.i = phi i64 [ 9, %.thread15.i.i ], [ %.sroa.05.0.copyload.i.i.i, %.loopexit14 ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i39) ]
  %i.cg = load i64, ptr %.val.i39, align 8, !range !2467, !alias.scope !3346, !noalias !3343, !noundef !11
  %i.ch = icmp eq i64 %i.cg, 20
  br i1 %i.ch, label %bb.am, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(40) %.val.i39)
          to label %bb.am unwind label %bb.ai, !noalias !3343

bb.ai:                                            ; preds = %bb.ah
  %i.ci = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.01.020.i.i, ptr %.val.i39, align 8, !noalias !3343
  %.sroa.5.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i39, i64 8
  store ptr %i.cf, ptr %.sroa.5.0..8.val.sroa_idx.i.i.i, align 8, !noalias !3343
  %.sroa.610.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i39, i64 16
  store ptr %.sroa.10.021.i.i, ptr %.sroa.610.0..8.val.sroa_idx.i.i.i, align 8, !noalias !3349
  %.sroa.7.sroa.5.0..sroa.610.0..8.val.sroa_idx.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.val.i39, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.sroa.5.0..sroa.610.0..8.val.sroa_idx.i.sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.sroa.5.i.i, i64 16, i1 false), !noalias !3349
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec13in_place_drop11InPlaceDropINtNtBN_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(16) %i.a) #30
          to label %.body.i.i unwind label %bb.aj, !noalias !3343

bb.aj:                                            ; preds = %bb.ai
  %i.cj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #29, !noalias !3343
  unreachable

.body.i.i:                                        ; preds = %bb.ak, %bb.ai
  %eh.lpad-body9.i.i = phi { ptr, i32 } [ %eh.lpad-body.ph.i.i, %bb.ak ], [ %i.ci, %bb.ai ]
  resume { ptr, i32 } %eh.lpad-body9.i.i

bb.ak:                                            ; preds = %bb.ae, %bb.ad, %bb.aa, %.body.i.i.i, %bb.m, %bb.g
  %eh.lpad-body.ph.i.i = phi { ptr, i32 } [ %i.cc, %bb.ae ], [ %lpad.phi, %bb.ad ], [ %i.aw, %bb.m ], [ %i.am, %bb.g ], [ %i.ca, %bb.aa ], [ %eh.lpad-body.i.i.i, %.body.i.i.i ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec13in_place_drop11InPlaceDropINtNtBN_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(16) %i.h) #30
          to label %.body.i.i unwind label %bb.al, !noalias !3321

bb.al:                                            ; preds = %bb.ak
  %i.ck = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #29, !noalias !3321
  unreachable

._crit_edge:                                      ; preds = %bb.an, %bb.a, %bb.am
  %.sroa.4.0.lcssa.sink = phi ptr [ %.sroa.4.052, %bb.am ], [ %3, %bb.a ], [ %i.cq, %bb.an ]
  %storemerge = phi i64 [ 1, %bb.am ], [ 0, %bb.a ], [ 0, %bb.an ]
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.cl, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.4.0.lcssa.sink, ptr %i.cm, align 8
  store i64 %storemerge, ptr %0, align 8
  ret void

bb.am:                                            ; preds = %bb.ag, %bb.ah
  store i64 %.sroa.01.020.i.i, ptr %.val.i39, align 8, !noalias !3343
  %.sroa.5.0..8.val.sroa_idx8.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i39, i64 8
  store ptr %i.cf, ptr %.sroa.5.0..8.val.sroa_idx8.i.i.i, align 8, !noalias !3343
  %.sroa.610.0..8.val.sroa_idx11.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i39, i64 16
  store ptr %.sroa.10.021.i.i, ptr %.sroa.610.0..8.val.sroa_idx11.i.i.i, align 8, !noalias !3349
  %.sroa.7.sroa.5.0..sroa.610.0..8.val.sroa_idx11.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.val.i39, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.sroa.5.0..sroa.610.0..8.val.sroa_idx11.i.sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.sroa.5.i.i, i64 16, i1 false), !noalias !3349
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3321
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !3321
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.sroa.5.i.i)
  %i.cn = load i64, ptr %i.m, align 8, !noalias !3320, !noundef !11
  %i.co = add i64 %i.cn, 1
  store i64 %i.co, ptr %i.m, align 8, !noalias !3320
  br label %._crit_edge

bb.an:                                            ; preds = %bb.af, %.thread.i.i
  %i.cp = phi ptr [ %i.bv, %.thread.i.i ], [ %i.cd, %bb.af ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cp) ]
  store ptr %i.cp, ptr %.sroa.4.052, align 8, !noalias !3343
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.4.052, i64 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3321
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !3321
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.sroa.5.i.i)
  %i.cr = load i64, ptr %i.m, align 8, !noalias !3320, !noundef !11
  %i.cs = add i64 %i.cr, 1                        ; 2 uses
  store i64 %i.cs, ptr %i.m, align 8, !noalias !3320
  %.not = icmp eq ptr %i.w, %i.j
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RINvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB6_8IntoIterNtNtCs4lawaffTVVK_9sqlparser3ast5IdentENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropNtNtBa_6string6StringENCINvNtNtB1G_8adapters3map12map_try_foldBX_B3e_B2E_INtNtB1I_6result6ResultB2E_zENCNvMNtNtCsjHlmExTLNuX_14datafusion_sql4expr10identifierINtNtB51_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE31sql_compound_identifier_to_exprs2_0NCINvNtB8_16in_place_collect24write_in_place_with_dropB3e_E0E0B4p_ECs2VbMhdeEr66_16delta_benchmarks(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %3, ptr nofree noundef readnone captures(none) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.f, align 8        ; 2 uses
  %.not12 = icmp eq ptr %.promoted, %i.e
  br i1 %.not12, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.val.i = load ptr, ptr %3, align 8, !noalias !3350, !nonnull !11, !align !69, !noundef !11
  %i.h = getelementptr inbounds nuw i8, ptr %.val.i, i64 15
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldNtNtCs4lawaffTVVK_9sqlparser3ast5IdentNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtB1F_3vec13in_place_drop11InPlaceDropB1B_EINtNtBa_6result6ResultB2d_zENCNvMNtNtCsjHlmExTLNuX_14datafusion_sql4expr10identifierINtNtB3A_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE31sql_compound_identifier_to_exprs2_0NCINvNtB2i_16in_place_collect24write_in_place_with_dropB1B_E0E0Cs2VbMhdeEr66_16delta_benchmarks.exit
  %.sroa.4.013 = phi ptr [ %2, %.lr.ph ], [ %i.m, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldNtNtCs4lawaffTVVK_9sqlparser3ast5IdentNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtB1F_3vec13in_place_drop11InPlaceDropB1B_EINtNtBa_6result6ResultB2d_zENCNvMNtNtCsjHlmExTLNuX_14datafusion_sql4expr10identifierINtNtB3A_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE31sql_compound_identifier_to_exprs2_0NCINvNtB2i_16in_place_collect24write_in_place_with_dropB1B_E0E0Cs2VbMhdeEr66_16delta_benchmarks.exit ] ; 3 uses
  %i.i = phi ptr [ %.promoted, %.lr.ph ], [ %i.j, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldNtNtCs4lawaffTVVK_9sqlparser3ast5IdentNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtB1F_3vec13in_place_drop11InPlaceDropB1B_EINtNtBa_6result6ResultB2d_zENCNvMNtNtCsjHlmExTLNuX_14datafusion_sql4expr10identifierINtNtB3A_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE31sql_compound_identifier_to_exprs2_0NCINvNtB2i_16in_place_collect24write_in_place_with_dropB1B_E0E0Cs2VbMhdeEr66_16delta_benchmarks.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3350
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef nonnull align 8 dereferenceable(64) %i.i, i64 64, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 64 ; 3 uses
  store ptr %i.j, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3350
  store ptr %1, ptr %i.c, align 8, !noalias !3350
  store ptr %.sroa.4.013, ptr %i.g, align 8, !noalias !3350
  invoke void @_RNvMs5_NtCsjHlmExTLNuX_14datafusion_sql7plannerNtB5_15IdentNormalizer9normalize(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.h, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %i.a)
          to label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldNtNtCs4lawaffTVVK_9sqlparser3ast5IdentNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtB1F_3vec13in_place_drop11InPlaceDropB1B_EINtNtBa_6result6ResultB2d_zENCNvMNtNtCsjHlmExTLNuX_14datafusion_sql4expr10identifierINtNtB3A_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE31sql_compound_identifier_to_exprs2_0NCINvNtB2i_16in_place_collect24write_in_place_with_dropB1B_E0E0Cs2VbMhdeEr66_16delta_benchmarks.exit unwind label %bb.d, !noalias !3350

bb.c:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.k

bb.d:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec13in_place_drop11InPlaceDropNtNtBN_6string6StringEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(16) %i.c) #30
          to label %bb.c unwind label %bb.e, !noalias !3350

bb.e:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #29, !noalias !3350
  unreachable

_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldNtNtCs4lawaffTVVK_9sqlparser3ast5IdentNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtB1F_3vec13in_place_drop11InPlaceDropB1B_EINtNtBa_6result6ResultB2d_zENCNvMNtNtCsjHlmExTLNuX_14datafusion_sql4expr10identifierINtNtB3A_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE31sql_compound_identifier_to_exprs2_0NCINvNtB2i_16in_place_collect24write_in_place_with_dropB1B_E0E0Cs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3350
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.013, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !3350
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.4.013, i64 24 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3350
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not = icmp eq ptr %i.j, %i.e
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldNtNtCs4lawaffTVVK_9sqlparser3ast5IdentNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtB1F_3vec13in_place_drop11InPlaceDropB1B_EINtNtBa_6result6ResultB2d_zENCNvMNtNtCsjHlmExTLNuX_14datafusion_sql4expr10identifierINtNtB3A_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE31sql_compound_identifier_to_exprs2_0NCINvNtB2i_16in_place_collect24write_in_place_with_dropB1B_E0E0Cs2VbMhdeEr66_16delta_benchmarks.exit, %bb.a
  %.sroa.4.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.m, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldNtNtCs4lawaffTVVK_9sqlparser3ast5IdentNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtB1F_3vec13in_place_drop11InPlaceDropB1B_EINtNtBa_6result6ResultB2d_zENCNvMNtNtCsjHlmExTLNuX_14datafusion_sql4expr10identifierINtNtB3A_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE31sql_compound_identifier_to_exprs2_0NCINvNtB2i_16in_place_collect24write_in_place_with_dropB1B_E0E0Cs2VbMhdeEr66_16delta_benchmarks.exit ]
  %i.n = insertvalue { ptr, ptr } poison, ptr %1, 0
  %i.o = insertvalue { ptr, ptr } %i.n, ptr %.sroa.4.0.lcssa, 1
  ret { ptr, ptr } %i.o
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RINvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB6_8IntoIterNtNtCs4lawaffTVVK_9sqlparser3ast5IdentENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropNtNtBa_6string6StringENCINvNtNtB1G_8adapters3map12map_try_foldBX_B3e_B2E_INtNtB1I_6result6ResultB2E_zENCNvMNtNtCsjHlmExTLNuX_14datafusion_sql4expr10identifierINtNtB51_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE31sql_compound_identifier_to_exprs_0NCINvNtB8_16in_place_collect24write_in_place_with_dropB3e_E0E0B4p_ECs2VbMhdeEr66_16delta_benchmarks(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %3, ptr nofree noundef readnone captures(none) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.f, align 8        ; 2 uses
  %.not12 = icmp eq ptr %.promoted, %i.e
  br i1 %.not12, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.val.i = load ptr, ptr %3, align 8, !noalias !3353, !nonnull !11, !align !69, !noundef !11
  %i.h = getelementptr inbounds nuw i8, ptr %.val.i, i64 15
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldNtNtCs4lawaffTVVK_9sqlparser3ast5IdentNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtB1F_3vec13in_place_drop11InPlaceDropB1B_EINtNtBa_6result6ResultB2d_zENCNvMNtNtCsjHlmExTLNuX_14datafusion_sql4expr10identifierINtNtB3A_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE31sql_compound_identifier_to_exprs_0NCINvNtB2i_16in_place_collect24write_in_place_with_dropB1B_E0E0Cs2VbMhdeEr66_16delta_benchmarks.exit
  %.sroa.4.013 = phi ptr [ %2, %.lr.ph ], [ %i.m, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldNtNtCs4lawaffTVVK_9sqlparser3ast5IdentNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtB1F_3vec13in_place_drop11InPlaceDropB1B_EINtNtBa_6result6ResultB2d_zENCNvMNtNtCsjHlmExTLNuX_14datafusion_sql4expr10identifierINtNtB3A_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE31sql_compound_identifier_to_exprs_0NCINvNtB2i_16in_place_collect24write_in_place_with_dropB1B_E0E0Cs2VbMhdeEr66_16delta_benchmarks.exit ] ; 3 uses
  %i.i = phi ptr [ %.promoted, %.lr.ph ], [ %i.j, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldNtNtCs4lawaffTVVK_9sqlparser3ast5IdentNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtB1F_3vec13in_place_drop11InPlaceDropB1B_EINtNtBa_6result6ResultB2d_zENCNvMNtNtCsjHlmExTLNuX_14datafusion_sql4expr10identifierINtNtB3A_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE31sql_compound_identifier_to_exprs_0NCINvNtB2i_16in_place_collect24write_in_place_with_dropB1B_E0E0Cs2VbMhdeEr66_16delta_benchmarks.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3353
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef nonnull align 8 dereferenceable(64) %i.i, i64 64, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 64 ; 3 uses
  store ptr %i.j, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3353
  store ptr %1, ptr %i.c, align 8, !noalias !3353
  store ptr %.sroa.4.013, ptr %i.g, align 8, !noalias !3353
  invoke void @_RNvMs5_NtCsjHlmExTLNuX_14datafusion_sql7plannerNtB5_15IdentNormalizer9normalize(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.h, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %i.a)
          to label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldNtNtCs4lawaffTVVK_9sqlparser3ast5IdentNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtB1F_3vec13in_place_drop11InPlaceDropB1B_EINtNtBa_6result6ResultB2d_zENCNvMNtNtCsjHlmExTLNuX_14datafusion_sql4expr10identifierINtNtB3A_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE31sql_compound_identifier_to_exprs_0NCINvNtB2i_16in_place_collect24write_in_place_with_dropB1B_E0E0Cs2VbMhdeEr66_16delta_benchmarks.exit unwind label %bb.d, !noalias !3353

bb.c:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.k

bb.d:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec13in_place_drop11InPlaceDropNtNtBN_6string6StringEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(16) %i.c) #30
          to label %bb.c unwind label %bb.e, !noalias !3353

bb.e:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #29, !noalias !3353
  unreachable

_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldNtNtCs4lawaffTVVK_9sqlparser3ast5IdentNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtB1F_3vec13in_place_drop11InPlaceDropB1B_EINtNtBa_6result6ResultB2d_zENCNvMNtNtCsjHlmExTLNuX_14datafusion_sql4expr10identifierINtNtB3A_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE31sql_compound_identifier_to_exprs_0NCINvNtB2i_16in_place_collect24write_in_place_with_dropB1B_E0E0Cs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3353
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.013, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !3353
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.4.013, i64 24 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3353
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not = icmp eq ptr %i.j, %i.e
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldNtNtCs4lawaffTVVK_9sqlparser3ast5IdentNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtB1F_3vec13in_place_drop11InPlaceDropB1B_EINtNtBa_6result6ResultB2d_zENCNvMNtNtCsjHlmExTLNuX_14datafusion_sql4expr10identifierINtNtB3A_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE31sql_compound_identifier_to_exprs_0NCINvNtB2i_16in_place_collect24write_in_place_with_dropB1B_E0E0Cs2VbMhdeEr66_16delta_benchmarks.exit, %bb.a
  %.sroa.4.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.m, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldNtNtCs4lawaffTVVK_9sqlparser3ast5IdentNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtB1F_3vec13in_place_drop11InPlaceDropB1B_EINtNtBa_6result6ResultB2d_zENCNvMNtNtCsjHlmExTLNuX_14datafusion_sql4expr10identifierINtNtB3A_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE31sql_compound_identifier_to_exprs_0NCINvNtB2i_16in_place_collect24write_in_place_with_dropB1B_E0E0Cs2VbMhdeEr66_16delta_benchmarks.exit ]
  %i.n = insertvalue { ptr, ptr } poison, ptr %1, 0
  %i.o = insertvalue { ptr, ptr } %i.n, ptr %.sroa.4.0.lcssa, 1
  ret { ptr, ptr } %i.o
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB6_8IntoIterNtNtCs4lawaffTVVK_9sqlparser3ast8CaseWhenENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropTINtNtBa_5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEB3i_EENCINvNtNtB1J_8adapters3map12map_try_foldBX_INtNtB1L_6result6ResultB3h_NtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEB2H_INtNtNtB1L_3ops12control_flow11ControlFlowIB58_B2H_zEB2H_ENCNvMNtNtCsjHlmExTLNuX_14datafusion_sql4expr10identifierINtNtB7G_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE27sql_case_identifier_to_expr0NCINvXB4x_INtB4x_12GenericShuntINtB4v_3MapBI_B7x_EIB58_NtNtB1L_7convert10InfallibleB5y_EEB1D_8try_foldB2H_NCINvNtB8_16in_place_collect24write_in_place_with_dropB3h_E0B7h_E0E0B6B_ECs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noundef %2, ptr noundef %3, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 7 uses
  %i.b = alloca [112 x i8], align 16              ; 11 uses
  %i.c = alloca [328 x i8], align 8               ; 4 uses
  %i.d = alloca [112 x i8], align 16              ; 10 uses
  %.sroa.6.i.sroa.9.i = alloca [16 x i8], align 8 ; 6 uses
  %i.e = alloca [112 x i8], align 16              ; 11 uses
  %i.f = alloca [328 x i8], align 8               ; 4 uses
  %i.g = alloca [112 x i8], align 16              ; 10 uses
  %.sroa.7.i.sroa.10.i = alloca [16 x i8], align 8 ; 7 uses
  %i.h = alloca [8 x i8], align 8                 ; 7 uses
  %i.i = alloca [656 x i8], align 8               ; 5 uses
  %.sroa.10.i = alloca [16 x i8], align 8         ; 7 uses
  %i.j = alloca [16 x i8], align 8                ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.l, align 8        ; 2 uses
  %i.m = load ptr, ptr %i.k, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %.not31 = icmp eq ptr %.promoted, %i.m
  br i1 %.not31, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.val2 = load ptr, ptr %i.n, align 8, !nonnull !11, !align !69, !noundef !11 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %.val2, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %.val2, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.7.i.sroa.8.0..sroa_idx10.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.7.i.sroa.9.0..sroa_idx13.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.sroa.7.i.sroa.10.0..sroa_idx15.i = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %.sroa.610.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %.sroa.9.0..sroa_idx3.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %.sroa.7.0..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.7.i.sroa.8.0..sroa.7.0..sroa_idx2.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.7.i.sroa.9.0..sroa.7.0..sroa_idx2.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.sroa.7.i.sroa.10.0..sroa.7.0..sroa_idx2.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 328 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.6.i.sroa.7.0..sroa_idx19.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.6.i.sroa.8.0..sroa_idx22.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.6.i.sroa.9.0..sroa_idx24.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.sroa.613.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %.sroa.8.0..sroa_idx7.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.6.0..sroa_idx6.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.6.i.sroa.7.0..sroa.6.0..sroa_idx6.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.6.i.sroa.8.0..sroa.6.0..sroa_idx6.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.6.i.sroa.9.0..sroa.6.0..sroa_idx6.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.ac
  %.sroa.4.032 = phi ptr [ %3, %.lr.ph ], [ %i.ba, %bb.ac ] ; 6 uses
  %i.v = phi ptr [ %.promoted, %.lr.ph ], [ %i.w, %bb.ac ] ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 656 ; 3 uses
  store ptr %i.w, ptr %i.l, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10.i)
end_hunk_9
begin_hunk_10_@_RINvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB6_8IntoIterNtNtCs4lawaffTVVK_9sqlparser3ast8CaseWhenENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropTINtNtBa_5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEB3i_EENCINvNtNtB1J_8adapters3map12map_try_foldBX_INtNtB1L_6result6ResultB3h_NtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEB2H_INtNtNtB1L_3ops12control_flow11ControlFlowIB58_B2H_zEB2H_ENCNvMNtNtCsjHlmExTLNuX_14datafusion_sql4expr10identifierINtNtB7G_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE27sql_case_identifier_to_expr0NCINvXB4x_INtB4x_12GenericShuntINtB4v_3MapBI_B7x_EIB58_NtNtB1L_7convert10InfallibleB5y_EEB1D_8try_foldB2H_NCINvNtB8_16in_place_collect24write_in_place_with_dropB3h_E0B7h_E0E0B6B_ECs2VbMhdeEr66_16delta_benchmarks:bb.a

.noexc.i.i:                                       ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.ag = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 16 dereferenceable(112) %i.e) #30
          to label %.thread28.i.i unwind label %bb.i, !noalias !3363

bb.i:                                             ; preds = %bb.h
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #29, !noalias !3363
  unreachable

bb.j:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.ae, ptr noundef nonnull align 16 dereferenceable(112) %i.e, i64 112, i1 false), !noalias !3363
  store ptr %i.ae, ptr %i.h, align 8, !noalias !3363
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.sroa.9.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !3363
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3363
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %i.c, ptr noundef nonnull align 8 dereferenceable(328) %i.s, i64 328, i1 false), !noalias !3373
  invoke void @_RNvMNtCsjHlmExTLNuX_14datafusion_sql4exprINtNtB4_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE24sql_expr_to_logical_exprCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(none) dereferenceable(112) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.x, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(328) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.y, ptr noalias noundef nonnull align 8 dereferenceable(80) %i.z)
          to label %bb.l unwind label %bb.k, !noalias !3363

bb.k:                                             ; preds = %bb.j
  %i.ai = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.h) #30
          to label %bb.z unwind label %bb.r, !noalias !3363

bb.l:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3363
  %i.aj = load i64, ptr %i.d, align 16, !range !2741, !noalias !3363, !noundef !11 ; 2 uses
  %i.ak = icmp eq i64 %i.aj, 37
  %.sroa.6.i.sroa.0.0.copyload17.i = load i64, ptr %i.t, align 8, !noalias !3363 ; 2 uses
  %.sroa.6.i.sroa.7.0.copyload20.i = load ptr, ptr %.sroa.6.i.sroa.7.0..sroa_idx19.i, align 16, !noalias !3363 ; 2 uses
  %.sroa.6.i.sroa.8.0.copyload23.i = load ptr, ptr %.sroa.6.i.sroa.8.0..sroa_idx22.i, align 8, !noalias !3363 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.sroa.9.i, ptr noundef nonnull align 16 dereferenceable(16) %.sroa.6.i.sroa.9.0..sroa_idx24.i, i64 16, i1 false), !noalias !3363
  br i1 %i.ak, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3363
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.sroa.9.i, i64 16, i1 false), !noalias !3356
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 16 dereferenceable(112) %i.ae) #32
          to label %bb.s unwind label %bb.c, !noalias !3367, !inline_history !78

bb.n:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %.sroa.8.0..sroa_idx7.i.i, ptr noundef nonnull align 16 dereferenceable(64) %.sroa.613.0..sroa_idx.i.i, i64 64, i1 false), !noalias !3363
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3363
  store i64 %i.aj, ptr %i.b, align 16, !noalias !3363
  store i64 %.sroa.6.i.sroa.0.0.copyload17.i, ptr %.sroa.6.0..sroa_idx6.i.i, align 8, !noalias !3363
  store ptr %.sroa.6.i.sroa.7.0.copyload20.i, ptr %.sroa.6.i.sroa.7.0..sroa.6.0..sroa_idx6.i.sroa_idx.i, align 16, !noalias !3363
  store ptr %.sroa.6.i.sroa.8.0.copyload23.i, ptr %.sroa.6.i.sroa.8.0..sroa.6.0..sroa_idx6.i.sroa_idx.i, align 8, !noalias !3363
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.6.i.sroa.9.0..sroa.6.0..sroa_idx6.i.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.sroa.9.i, i64 16, i1 false), !noalias !3363
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #31, !noalias !3374
  %i.al = call noundef align 16 dereferenceable_or_null(112) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 16, 137) 112, i64 noundef range(i64 8, 17) 16) #31, !noalias !3374 ; 3 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %bb.o, label %.thread.i, !prof !2595

bb.o:                                             ; preds = %bb.n
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef 112) #36
          to label %.noexc23.i.i unwind label %bb.p, !noalias !3363

.noexc23.i.i:                                     ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %bb.o
  %i.an = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 16 dereferenceable(112) %i.b) #30
          to label %.body.i.i unwind label %bb.q, !noalias !3363

bb.q:                                             ; preds = %bb.p
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #29, !noalias !3363
  unreachable

.body.i.i:                                        ; preds = %bb.p
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.h) #30
          to label %bb.z unwind label %bb.r, !noalias !3363

.thread.i:                                        ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.al, ptr noundef nonnull align 16 dereferenceable(112) %i.b, i64 112, i1 false), !noalias !3363
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !3363
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.sroa.9.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.sroa.10.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3356
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !3356
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !3356
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3356
  br label %bb.ac

bb.r:                                             ; preds = %.thread28.i.i, %.body.i.i, %bb.k
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #29, !noalias !3373
  unreachable

bb.s:                                             ; preds = %bb.m
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ae, i64 noundef 112, i64 noundef 16) #31, !noalias !3367, !inline_history !78
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !3363
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.sroa.9.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.sroa.10.i)
  br label %bb.u

.thread28.i.i:                                    ; preds = %bb.h, %.thread32.i.i
  %eh.lpad-body1831.i.i = phi { ptr, i32 } [ %i.ab, %.thread32.i.i ], [ %i.ag, %bb.h ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast4ExprECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(328) %i.s) #30
          to label %bb.z unwind label %bb.r, !noalias !3373

bb.t:                                             ; preds = %bb.e
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.u:                                             ; preds = %bb.s, %bb.e
  %.sroa.85.0.i = phi ptr [ %.sroa.7.i.sroa.9.0.copyload14.i, %bb.e ], [ %.sroa.6.i.sroa.8.0.copyload23.i, %bb.s ] ; 3 uses
  %.sroa.63.0.i = phi ptr [ %.sroa.7.i.sroa.8.0.copyload11.i, %bb.e ], [ %.sroa.6.i.sroa.7.0.copyload20.i, %bb.s ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ %.sroa.7.i.sroa.0.0.copyload8.i, %bb.e ], [ %.sroa.6.i.sroa.0.0.copyload17.i, %bb.s ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3356
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !3356
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !3356
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3356
  store ptr %2, ptr %i.a, align 8, !noalias !3377
  store ptr %.sroa.4.032, ptr %i.u, align 8, !noalias !3377
  %.not.i.i.i = icmp eq i64 %.sroa.01.0.i, 20
  br i1 %.not.i.i.i, label %bb.ac, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.val.le = load ptr, ptr %i.ar, align 8, !nonnull !11, !noundef !11 ; 10 uses
  %i.as = load i64, ptr %.val.le, align 8, !range !2467, !alias.scope !3381, !noalias !3377, !noundef !11
  %i.at = icmp eq i64 %i.as, 20
  br i1 %i.at, label %bb.ab, label %bb.w

bb.w:                                             ; preds = %bb.v
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(40) %.val.le)
          to label %bb.ab unwind label %bb.x, !noalias !3377

bb.x:                                             ; preds = %bb.w
  %i.au = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.01.0.i, ptr %.val.le, align 8, !noalias !3377
  %.sroa.5.0..8.val.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.val.le, i64 8
  store ptr %.sroa.63.0.i, ptr %.sroa.5.0..8.val.sroa_idx.i.i, align 8, !noalias !3377
  %.sroa.612.0..8.val.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.val.le, i64 16
  store ptr %.sroa.85.0.i, ptr %.sroa.612.0..8.val.sroa_idx.i.i, align 8, !noalias !3377
  %.sroa.7.0..8.val.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.val.le, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..8.val.sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.i, i64 16, i1 false), !noalias !3356
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec13in_place_drop11InPlaceDropTINtNtBN_5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEB1E_EEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(16) %i.a) #30
          to label %.body.i unwind label %bb.y, !noalias !3377

bb.y:                                             ; preds = %bb.x
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #29, !noalias !3377
  unreachable

.body.i:                                          ; preds = %bb.z, %bb.x
  %eh.lpad-body27.i = phi { ptr, i32 } [ %eh.lpad-body.ph.i, %bb.z ], [ %i.au, %bb.x ]
  resume { ptr, i32 } %eh.lpad-body27.i

bb.z:                                             ; preds = %bb.t, %.thread28.i.i, %.body.i.i, %bb.k, %bb.c
  %eh.lpad-body.ph.i = phi { ptr, i32 } [ %i.aq, %bb.t ], [ %i.ai, %bb.k ], [ %eh.lpad-body1831.i.i, %.thread28.i.i ], [ %i.aa, %bb.c ], [ %i.an, %.body.i.i ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec13in_place_drop11InPlaceDropTINtNtBN_5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEB1E_EEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(16) %i.j) #30
          to label %.body.i unwind label %bb.aa, !noalias !3356

bb.aa:                                            ; preds = %bb.z
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #29, !noalias !3356
  unreachable

._crit_edge:                                      ; preds = %bb.ac, %bb.a, %bb.ab
  %.sroa.4.0.lcssa.sink = phi ptr [ %.sroa.4.032, %bb.ab ], [ %3, %bb.a ], [ %i.ba, %bb.ac ]
  %storemerge = phi i64 [ 1, %bb.ab ], [ 0, %bb.a ], [ 0, %bb.ac ]
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.ax, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.4.0.lcssa.sink, ptr %i.ay, align 8
  store i64 %storemerge, ptr %0, align 8
  ret void

bb.ab:                                            ; preds = %bb.v, %bb.w
  store i64 %.sroa.01.0.i, ptr %.val.le, align 8, !noalias !3377
  %.sroa.5.0..8.val.sroa_idx10.i.i = getelementptr inbounds nuw i8, ptr %.val.le, i64 8
  store ptr %.sroa.63.0.i, ptr %.sroa.5.0..8.val.sroa_idx10.i.i, align 8, !noalias !3377
  %.sroa.612.0..8.val.sroa_idx13.i.i = getelementptr inbounds nuw i8, ptr %.val.le, i64 16
  store ptr %.sroa.85.0.i, ptr %.sroa.612.0..8.val.sroa_idx13.i.i, align 8, !noalias !3377
  %.sroa.7.0..8.val.sroa_idx15.i.i = getelementptr inbounds nuw i8, ptr %.val.le, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..8.val.sroa_idx15.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.i, i64 16, i1 false), !noalias !3356
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3356
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !3356
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i)
  br label %._crit_edge

bb.ac:                                            ; preds = %bb.u, %.thread.i
  %.sroa.63.034.i = phi ptr [ %i.ae, %.thread.i ], [ %.sroa.63.0.i, %bb.u ] ; 2 uses
  %.sroa.85.033.i = phi ptr [ %i.al, %.thread.i ], [ %.sroa.85.0.i, %bb.u ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.63.034.i), "nonnull"(ptr %.sroa.85.033.i) ]
  store ptr %.sroa.63.034.i, ptr %.sroa.4.032, align 8, !noalias !3384
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.4.032, i64 8
  store ptr %.sroa.85.033.i, ptr %i.az, align 8, !noalias !3384
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.4.032, i64 16 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3356
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !3356
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i)
  %.not = icmp eq ptr %i.w, %i.m
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB6_8IntoIterNtNtCs4lawaffTVVK_9sqlparser3ast8MapEntryENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1J_8adapters3map12map_try_foldBX_IBJ_INtNtBa_5boxed3BoxNtBZ_4ExprEEuINtNtNtB1L_3ops12control_flow11ControlFlowIB3Z_NtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEENCNvMNtCsjHlmExTLNuX_14datafusion_sql4exprINtNtB5B_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE20try_plan_map_literal0NCINvNvMsg_NtB2P_7flattenINtB8s_13FlattenCompatppE13iter_try_fold7flattenB3p_uB3Y_NCINvNvXsi_B8s_B8G_B1D_8try_fold7flattenB3p_uB3Y_NCIB2L_B3t_INtNtB1L_6result6ResultB4J_NtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuB3Y_NCB5w_s_0NCINvXB2P_INtB2P_12GenericShuntINtB2N_3MapINtB8s_7FlatMapBI_B3p_B5u_EBc4_EIBaA_NtNtB1L_7convert10InfallibleBb0_EEB1D_8try_folduNCINvNvB1D_12try_for_each4callB4J_B4E_NcNtB4E_5Break0E0B4E_E0E0E0E0E0B3Y_ECs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 16 captures(none) dereferenceable(112) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [112 x i8], align 16              ; 10 uses
  %i.b = alloca [8 x i8], align 8                 ; 6 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.f, align 8        ; 2 uses
  %.not21 = icmp eq ptr %.promoted, %i.e
  br i1 %.not21, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.val = load ptr, ptr %2, align 8               ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val3 = load ptr, ptr %i.g, align 8            ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %.sroa.53.0..8.val.sroa_idx4.i = getelementptr inbounds nuw i8, ptr %.val3, i64 8 ; 3 uses
  %.sroa.66.0..8.val.sroa_idx7.i = getelementptr inbounds nuw i8, ptr %.val3, i64 16 ; 2 uses
  %.sroa.7.0..8.val.sroa_idx9.i = getelementptr inbounds nuw i8, ptr %.val3, i64 24 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.j
  %i.i = phi ptr [ %.promoted, %.lr.ph ], [ %i.m, %bb.j ] ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !11, !align !69, !noundef !11 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !11, !align !69, !noundef !11 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 3 uses
  store ptr %i.m, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3388
  store ptr %i.j, ptr %i.c, align 8, !noalias !3393
  store ptr %i.l, ptr %i.h, align 8, !noalias !3393
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #31, !noalias !3398
  %i.n = call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 16, 137) 16, i64 noundef range(i64 8, 17) 8) #31, !noalias !3398 ; 8 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.c, label %_RNCNvMNtCsjHlmExTLNuX_14datafusion_sql4exprINtNtB6_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE20try_plan_map_literal0Cs2VbMhdeEr66_16delta_benchmarks.exit.i, !prof !2595

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #36
          to label %.noexc.i.i unwind label %bb.d, !noalias !3398

.noexc.i.i:                                       ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c) #30
          to label %bb.f unwind label %bb.e, !noalias !3398

bb.e:                                             ; preds = %bb.f, %bb.d
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #29, !noalias !3398
  unreachable

bb.f:                                             ; preds = %bb.d
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.h) #30
          to label %common.resume.i unwind label %bb.e, !noalias !3398

common.resume.i:                                  ; preds = %bb.h, %bb.f
  %common.resume.op.i = phi { ptr, i32 } [ %i.v, %bb.h ], [ %i.p, %bb.f ]
  resume { ptr, i32 } %common.resume.op.i

_RNCNvMNtCsjHlmExTLNuX_14datafusion_sql4exprINtNtB6_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE20try_plan_map_literal0Cs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val), "nonnull"(ptr %.val3) ]
  store ptr %i.j, ptr %i.n, align 8, !noalias !3398
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 3 uses
  store ptr %i.l, ptr %i.r, align 8, !noalias !3398
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3388
  call void @llvm.experimental.noalias.scope.decl(metadata !3399)
  %i.t = load ptr, ptr %.val3, align 8, !alias.scope !3402, !noalias !3406, !noundef !11
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %_RNvMNtCsbvkFyIu7lgC_4core6optionINtB2_6OptionINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtBO_5boxed3BoxNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEEE6insertCs2VbMhdeEr66_16delta_benchmarks.exit.i.i, label %bb.g

bb.g:                                             ; preds = %_RNCNvMNtCsjHlmExTLNuX_14datafusion_sql4exprINtNtB6_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE20try_plan_map_literal0Cs2VbMhdeEr66_16delta_benchmarks.exit.i
  invoke void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterINtNtB9_5boxed3BoxNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %.val3)
          to label %._RNvMNtCsbvkFyIu7lgC_4core6optionINtB2_6OptionINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtBO_5boxed3BoxNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEEE6insertCs2VbMhdeEr66_16delta_benchmarks.exit.i_crit_edge.i unwind label %bb.h, !noalias !3410

._RNvMNtCsbvkFyIu7lgC_4core6optionINtB2_6OptionINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtBO_5boxed3BoxNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEEE6insertCs2VbMhdeEr66_16delta_benchmarks.exit.i_crit_edge.i: ; preds = %bb.g
  %.pre.i = load ptr, ptr %i.n, align 8, !noalias !3411
  br label %_RNvMNtCsbvkFyIu7lgC_4core6optionINtB2_6OptionINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtBO_5boxed3BoxNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEEE6insertCs2VbMhdeEr66_16delta_benchmarks.exit.i.i

bb.h:                                             ; preds = %bb.g
  %i.v = landingpad { ptr, i32 }
          cleanup
  store ptr %i.n, ptr %.val3, align 8, !alias.scope !3418, !noalias !3419
  store ptr %i.n, ptr %.sroa.53.0..8.val.sroa_idx4.i, align 8, !alias.scope !3418, !noalias !3419
  store i64 2, ptr %.sroa.66.0..8.val.sroa_idx7.i, align 8, !alias.scope !3418, !noalias !3419
  store ptr %i.s, ptr %.sroa.7.0..8.val.sroa_idx9.i, align 8, !alias.scope !3418, !noalias !3419
  br label %common.resume.i

_RNvMNtCsbvkFyIu7lgC_4core6optionINtB2_6OptionINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtBO_5boxed3BoxNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEEE6insertCs2VbMhdeEr66_16delta_benchmarks.exit.i.i: ; preds = %._RNvMNtCsbvkFyIu7lgC_4core6optionINtB2_6OptionINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtBO_5boxed3BoxNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEEE6insertCs2VbMhdeEr66_16delta_benchmarks.exit.i_crit_edge.i, %_RNCNvMNtCsjHlmExTLNuX_14datafusion_sql4exprINtNtB6_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE20try_plan_map_literal0Cs2VbMhdeEr66_16delta_benchmarks.exit.i
  %i.w = phi ptr [ %.pre.i, %._RNvMNtCsbvkFyIu7lgC_4core6optionINtB2_6OptionINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtBO_5boxed3BoxNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEEE6insertCs2VbMhdeEr66_16delta_benchmarks.exit.i_crit_edge.i ], [ %i.j, %_RNCNvMNtCsjHlmExTLNuX_14datafusion_sql4exprINtNtB6_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE20try_plan_map_literal0Cs2VbMhdeEr66_16delta_benchmarks.exit.i ]
  store ptr %i.n, ptr %.val3, align 8, !alias.scope !3418, !noalias !3419
  store i64 2, ptr %.sroa.66.0..8.val.sroa_idx7.i, align 8, !alias.scope !3418, !noalias !3419
  store ptr %i.s, ptr %.sroa.7.0..8.val.sroa_idx9.i, align 8, !alias.scope !3418, !noalias !3419
  call void @llvm.experimental.noalias.scope.decl(metadata !3420)
  call void @llvm.experimental.noalias.scope.decl(metadata !3421)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3422
  store ptr %.val, ptr %i.b, align 8, !noalias !3424
  store ptr %i.r, ptr %.sroa.53.0..8.val.sroa_idx4.i, align 8, !alias.scope !3426, !noalias !3427
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3424
  call void @_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters3map12map_try_foldINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEINtNtBb_6result6ResultNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtB9_12control_flow11ControlFlowIB4P_B35_EENCNvMNtCsjHlmExTLNuX_14datafusion_sql4exprINtNtB5F_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE20try_plan_map_literals_0NCINvXBV_INtBV_12GenericShuntINtBT_3MapINtNtBV_7flatten7FlatMapINtNtNtB1D_3vec9into_iter8IntoIterNtB29_8MapEntryEIB9p_B1y_ENCB5A_0EB5y_EIB2K_NtNtBb_7convert10InfallibleB3O_EENtNtNtBX_6traits8iterator8Iterator8try_folduNCINvNvBbb_12try_for_each4callB35_B5n_NcNtB5n_5Break0E0B5n_E0E0INtB7_5FnMutTuB1y_EE8call_mutCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(address) dereferenceable(112) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b, ptr noalias noundef nonnull align 8 %i.w), !noalias !3411
  %i.x = load i64, ptr %i.a, align 16, !range !2639, !alias.scope !3428, !noalias !3431, !noundef !11 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.x, 38
  br i1 %.not.i.i.i.i.i, label %.lr.ph.i.i.i.1.i, label %bb.i

.lr.ph.i.i.i.1.i:                                 ; preds = %_RNvMNtCsbvkFyIu7lgC_4core6optionINtB2_6OptionINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtBO_5boxed3BoxNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEEE6insertCs2VbMhdeEr66_16delta_benchmarks.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3424
  %i.y = load ptr, ptr %i.r, align 8, !noalias !3411, !nonnull !11, !align !69, !noundef !11
  store ptr %i.s, ptr %.sroa.53.0..8.val.sroa_idx4.i, align 8, !alias.scope !3426, !noalias !3427
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3424
  call void @_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters3map12map_try_foldINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEINtNtBb_6result6ResultNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtB9_12control_flow11ControlFlowIB4P_B35_EENCNvMNtCsjHlmExTLNuX_14datafusion_sql4exprINtNtB5F_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE20try_plan_map_literals_0NCINvXBV_INtBV_12GenericShuntINtBT_3MapINtNtBV_7flatten7FlatMapINtNtNtB1D_3vec9into_iter8IntoIterNtB29_8MapEntryEIB9p_B1y_ENCB5A_0EB5y_EIB2K_NtNtBb_7convert10InfallibleB3O_EENtNtNtBX_6traits8iterator8Iterator8try_folduNCINvNvBbb_12try_for_each4callB35_B5n_NcNtB5n_5Break0E0B5n_E0E0INtB7_5FnMutTuB1y_EE8call_mutCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(address) dereferenceable(112) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b, ptr noalias noundef nonnull align 8 %i.y), !noalias !3411
  %i.z = load i64, ptr %i.a, align 16, !range !2639, !alias.scope !3428, !noalias !3431, !noundef !11 ; 2 uses
  %.not.i.i.i.i.1.i = icmp eq i64 %i.z, 38
  br i1 %.not.i.i.i.i.1.i, label %bb.j, label %bb.i

._crit_edge:                                      ; preds = %bb.j, %bb.a, %bb.i
  %storemerge = phi i64 [ %.lcssa.i, %bb.i ], [ 38, %bb.a ], [ 38, %bb.j ]
  store i64 %storemerge, ptr %0, align 16
  ret void

bb.i:                                             ; preds = %.lr.ph.i.i.i.1.i, %_RNvMNtCsbvkFyIu7lgC_4core6optionINtB2_6OptionINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtBO_5boxed3BoxNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEEE6insertCs2VbMhdeEr66_16delta_benchmarks.exit.i.i
  %.lcssa.i = phi i64 [ %i.x, %_RNvMNtCsbvkFyIu7lgC_4core6optionINtB2_6OptionINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtBO_5boxed3BoxNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEEE6insertCs2VbMhdeEr66_16delta_benchmarks.exit.i.i ], [ %i.z, %.lr.ph.i.i.i.1.i ]
  %.sroa.7.0..sroa_idx4.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.2.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.7.0..sroa_idx4.i.i.i.i, i64 104, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3424
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3422
  br label %._crit_edge

bb.j:                                             ; preds = %.lr.ph.i.i.i.1.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3424
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3422
  %.not = icmp eq ptr %i.m, %i.e
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB6_8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr11select_expr10SelectExprENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4folduNCINvNvB1W_8for_each4callBX_NCINvMsj_B8_INtB8_3VecBX_E14extend_trustedINtNtNtB22_8adapters5chain5ChainINtNtNtB22_7sources4once4OnceBX_EBI_EE0E0ECs2VbMhdeEr66_16delta_benchmarks(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !11, !noundef !11 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.promoted = load ptr, ptr %i.e, align 8        ; 3 uses
  %.not7 = icmp eq ptr %.promoted, %i.d
  br i1 %.not7, label %._crit_edge14, label %.lr.ph

._crit_edge14:                                    ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val5.pre = load i64, ptr %.phi.trans.insert, align 8
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !3433, !noalias !3438, !noundef !11
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.promoted10 = load i64, ptr %i.h, align 8, !alias.scope !3433, !noalias !3438
  br label %bb.e

._crit_edge:                                      ; preds = %bb.e, %._crit_edge14
  %.val5 = phi i64 [ %.val5.pre, %._crit_edge14 ], [ %i.aa, %bb.e ]
  %.lcssa = phi ptr [ %.promoted, %._crit_edge14 ], [ %i.y, %bb.e ] ; 2 uses
  %.val4 = load ptr, ptr %1, align 8, !nonnull !11, !align !69, !noundef !11
  store i64 %.val5, ptr %.val4, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3441)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3444)
  %i.i = ptrtoint ptr %i.d to i64
  %i.j = ptrtoint ptr %.lcssa to i64
  %i.k = sub nuw i64 %i.i, %i.j
  %i.l = udiv exact i64 %i.k, 416
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeSNtNtCs8VI8w5SIoU4_15datafusion_expr11select_expr10SelectExprECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 16 %.lcssa, i64 noundef %i.l)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr11select_expr10SelectExprEECs2VbMhdeEr66_16delta_benchmarks.exit unwind label %bb.b, !noalias !3447

bb.b:                                             ; preds = %._crit_edge
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3447
  %i.n = load ptr, ptr %0, align 8, !alias.scope !3447, !nonnull !11, !noundef !11
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load i64, ptr %i.o, align 8, !alias.scope !3447, !noundef !11
  store i64 %i.p, ptr %i.b, align 8, !noalias !3447
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.n, ptr %i.q, align 8, !noalias !3447
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs8VI8w5SIoU4_15datafusion_expr11select_expr10SelectExprENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b)
          to label %bb.d unwind label %bb.c, !noalias !3447

bb.c:                                             ; preds = %bb.b
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #29, !noalias !3447
  unreachable

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3447
  resume { ptr, i32 } %i.m

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr11select_expr10SelectExprEECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3447
  %i.s = load ptr, ptr %0, align 8, !alias.scope !3447, !nonnull !11, !noundef !11
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !3447, !noundef !11
  store i64 %i.u, ptr %i.a, align 8, !noalias !3447
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.s, ptr %i.v, align 8, !noalias !3447
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs8VI8w5SIoU4_15datafusion_expr11select_expr10SelectExprENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a), !noalias !3447
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3447
  ret void

bb.e:                                             ; preds = %.lr.ph, %bb.e
  %i.w = phi i64 [ %.promoted10, %.lr.ph ], [ %i.aa, %bb.e ] ; 2 uses
  %i.x = phi ptr [ %.promoted, %.lr.ph ], [ %i.y, %bb.e ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 416 ; 3 uses
  %i.z = getelementptr inbounds nuw [416 x i8], ptr %i.g, i64 %i.w
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(416) %i.z, ptr noundef nonnull align 16 dereferenceable(416) %i.x, i64 416, i1 false)
  %i.aa = add i64 %i.w, 1                         ; 2 uses
  %.not = icmp eq ptr %i.y, %i.d
  br i1 %.not, label %._crit_edge, label %bb.e
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RINvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB6_8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr11select_expr10SelectExprENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropNtNtB11_4expr4ExprENCINvNtNtB22_8adapters10filter_map19filter_map_try_foldBX_B3A_B30_INtNtB24_6result6ResultB30_zENCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB5x_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE21plan_wildcard_optionss_0NCINvNtB8_16in_place_collect24write_in_place_with_dropB3A_E0E0B4X_ECs2VbMhdeEr66_16delta_benchmarks(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noalias nofree noundef nonnull readnone captures(none) %3, ptr nofree noundef readnone captures(none) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [416 x i8], align 16              ; 8 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %.sroa.410 = alloca [416 x i8], align 16        ; 4 uses
  %i.c = alloca [416 x i8], align 16              ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.f = load ptr, ptr %i.d, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %i.g = load ptr, ptr %i.e, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %.not13 = icmp eq ptr %i.g, %i.f
  br i1 %.not13, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.410.40..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.410, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 360
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map19filter_map_try_foldNtNtCs8VI8w5SIoU4_15datafusion_expr11select_expr10SelectExprNtNtB1i_4expr4ExprINtNtNtCs6Po7BT7Nknu_5alloc3vec13in_place_drop11InPlaceDropB2c_EINtNtBa_6result6ResultB2u_zENCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB45_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE21plan_wildcard_optionss_0NCINvNtB2z_16in_place_collect24write_in_place_with_dropB2c_E0E0Cs2VbMhdeEr66_16delta_benchmarks.exit
  %i.l = phi ptr [ %i.f, %.lr.ph ], [ %i.v, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map19filter_map_try_foldNtNtCs8VI8w5SIoU4_15datafusion_expr11select_expr10SelectExprNtNtB1i_4expr4ExprINtNtNtCs6Po7BT7Nknu_5alloc3vec13in_place_drop11InPlaceDropB2c_EINtNtBa_6result6ResultB2u_zENCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB45_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE21plan_wildcard_optionss_0NCINvNtB2z_16in_place_collect24write_in_place_with_dropB2c_E0E0Cs2VbMhdeEr66_16delta_benchmarks.exit ] ; 2 uses
  %i.m = phi ptr [ %i.g, %.lr.ph ], [ %i.u, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map19filter_map_try_foldNtNtCs8VI8w5SIoU4_15datafusion_expr11select_expr10SelectExprNtNtB1i_4expr4ExprINtNtNtCs6Po7BT7Nknu_5alloc3vec13in_place_drop11InPlaceDropB2c_EINtNtBa_6result6ResultB2u_zENCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB45_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE21plan_wildcard_optionss_0NCINvNtB2z_16in_place_collect24write_in_place_with_dropB2c_E0E0Cs2VbMhdeEr66_16delta_benchmarks.exit ] ; 2 uses
  %.sroa.4.014 = phi ptr [ %2, %.lr.ph ], [ %.pn9.i, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map19filter_map_try_foldNtNtCs8VI8w5SIoU4_15datafusion_expr11select_expr10SelectExprNtNtB1i_4expr4ExprINtNtNtCs6Po7BT7Nknu_5alloc3vec13in_place_drop11InPlaceDropB2c_EINtNtBa_6result6ResultB2u_zENCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB45_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE21plan_wildcard_optionss_0NCINvNtB2z_16in_place_collect24write_in_place_with_dropB2c_E0E0Cs2VbMhdeEr66_16delta_benchmarks.exit ] ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(416) %i.c, ptr noundef nonnull align 16 dereferenceable(416) %i.m, i64 416, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 416 ; 3 uses
  store ptr %i.n, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.410)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(416) %.sroa.410, ptr noundef nonnull align 16 dereferenceable(416) %i.c, i64 416, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %1, ptr %i.b, align 8, !noalias !3448
  store ptr %.sroa.4.014, ptr %i.h, align 8, !noalias !3448
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3448
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(416) %i.a, ptr noundef nonnull align 16 dereferenceable(416) %i.c, i64 416, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !3451)
  %i.o = load i64, ptr %i.a, align 16, !range !66, !alias.scope !3454, !noalias !3456, !noundef !11
  switch i64 %i.o, label %bb.c [
    i64 2, label %_RNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB6_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE21plan_wildcard_optionss_0Cs2VbMhdeEr66_16delta_benchmarks.exit.i
    i64 0, label %.invoke.i
  ]

bb.c:                                             ; preds = %bb.b
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(56) %i.j)
          to label %.invoke.i unwind label %bb.d, !noalias !3456

end_hunk_10
begin_hunk_11_@_RINvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB6_8IntoIterNtNtNtCs4lawaffTVVK_9sqlparser3ast5query23ExprWithAliasAndOrderByENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB27_8adapters3map12map_try_foldBX_INtNtB29_6result6ResultNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtB29_3ops12control_flow11ControlFlowIB5U_B4a_EENCNvMNtCsjHlmExTLNuX_14datafusion_sql5queryINtNtB6R_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE23pipe_operator_aggregates0_0NCINvXB3d_INtB3d_12GenericShuntINtB3b_3MapBI_B6K_EIB3O_NtNtB29_7convert10InfallibleB4T_EEB21_8try_folduNCINvNvB21_12try_for_each4callB4a_B6z_NcNtB6z_5Break0E0B6z_E0E0B5T_ECs2VbMhdeEr66_16delta_benchmarks:bb.a
  %.val.i.i = load ptr, ptr %.val.i, align 8, !noalias !3635, !nonnull !11, !align !69, !noundef !11
  %i.m = getelementptr i8, ptr %.val.i, i64 8
  %.val1.i.i = load ptr, ptr %i.m, align 8, !noalias !3635, !nonnull !11, !align !69, !noundef !11
  call fastcc void @_RNCNvMNtCsjHlmExTLNuX_14datafusion_sql5queryINtNtB6_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE23pipe_operator_aggregate0Cs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 16 captures(address) dereferenceable(112) %i.b, ptr %.val.i.i, ptr nonnull %.val1.i.i, ptr noalias noundef align 8 captures(address) dereferenceable(400) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(80) %.val2.i) #37, !noalias !3642
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3635
  %.sroa.0.0.copyload.i = load i64, ptr %i.b, align 16, !noalias !3642 ; 3 uses
  %i.n = icmp eq i64 %.sroa.0.0.copyload.i, 37
  br i1 %i.n, label %bb.c, label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldNtNtNtCs4lawaffTVVK_9sqlparser3ast5query23ExprWithAliasAndOrderByINtNtBa_6result6ResultNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB48_B2o_EENCNvMNtCsjHlmExTLNuX_14datafusion_sql5queryINtNtB54_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE23pipe_operator_aggregates0_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterBZ_EB4X_EIB23_NtNtBa_7convert10InfallibleB37_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvBa3_12try_for_each4callB2o_B4M_NcNtB4M_5Break0E0B4M_E0E0Cs2VbMhdeEr66_16delta_benchmarks.exit

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val.le = load ptr, ptr %i.o, align 8, !nonnull !11, !noundef !11 ; 4 uses
  %i.p = load i64, ptr %.val.le, align 8, !range !2467, !alias.scope !3643, !noalias !3646, !noundef !11
  %i.q = icmp eq i64 %i.p, 20
  br i1 %i.q, label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldNtNtNtCs4lawaffTVVK_9sqlparser3ast5query23ExprWithAliasAndOrderByINtNtBa_6result6ResultNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB48_B2o_EENCNvMNtCsjHlmExTLNuX_14datafusion_sql5queryINtNtB54_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE23pipe_operator_aggregates0_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterBZ_EB4X_EIB23_NtNtBa_7convert10InfallibleB37_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvBa3_12try_for_each4callB2o_B4M_NcNtB4M_5Break0E0B4M_E0E0Cs2VbMhdeEr66_16delta_benchmarks.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(40) %.val.le)
          to label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldNtNtNtCs4lawaffTVVK_9sqlparser3ast5query23ExprWithAliasAndOrderByINtNtBa_6result6ResultNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB48_B2o_EENCNvMNtCsjHlmExTLNuX_14datafusion_sql5queryINtNtB54_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE23pipe_operator_aggregates0_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterBZ_EB4X_EIB23_NtNtBa_7convert10InfallibleB37_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvBa3_12try_for_each4callB2o_B4M_NcNtB4M_5Break0E0B4M_E0E0Cs2VbMhdeEr66_16delta_benchmarks.exit.thread unwind label %bb.e, !noalias !3646

bb.e:                                             ; preds = %bb.d
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.val.le, ptr noundef nonnull align 8 dereferenceable(40) %i.g, i64 40, i1 false), !noalias !3642
  resume { ptr, i32 } %i.r

_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldNtNtNtCs4lawaffTVVK_9sqlparser3ast5query23ExprWithAliasAndOrderByINtNtBa_6result6ResultNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB48_B2o_EENCNvMNtCsjHlmExTLNuX_14datafusion_sql5queryINtNtB54_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE23pipe_operator_aggregates0_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterBZ_EB4X_EIB23_NtNtBa_7convert10InfallibleB37_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvBa3_12try_for_each4callB2o_B4M_NcNtB4M_5Break0E0B4M_E0E0Cs2VbMhdeEr66_16delta_benchmarks.exit.thread: ; preds = %bb.c, %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.val.le, ptr noundef nonnull align 8 dereferenceable(40) %i.g, i64 40, i1 false), !noalias !3642
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.loopexit

_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldNtNtNtCs4lawaffTVVK_9sqlparser3ast5query23ExprWithAliasAndOrderByINtNtBa_6result6ResultNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB48_B2o_EENCNvMNtCsjHlmExTLNuX_14datafusion_sql5queryINtNtB54_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE23pipe_operator_aggregates0_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterBZ_EB4X_EIB23_NtNtBa_7convert10InfallibleB37_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvBa3_12try_for_each4callB2o_B4M_NcNtB4M_5Break0E0B4M_E0E0Cs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4.i.i, ptr noundef nonnull align 8 dereferenceable(40) %i.g, i64 40, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.4.48..sroa_idx.i.i, ptr noundef nonnull align 16 dereferenceable(64) %i.j, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not.i = icmp eq i64 %.sroa.0.0.copyload.i, 38
  br i1 %.not.i, label %bb.f, label %.loopexit

._crit_edge:                                      ; preds = %bb.f, %bb.a, %.loopexit
  %storemerge = phi i64 [ %.sroa.0.0.copyload.i, %.loopexit ], [ 38, %bb.a ], [ 38, %bb.f ]
  store i64 %storemerge, ptr %0, align 16
  ret void

.loopexit:                                        ; preds = %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldNtNtNtCs4lawaffTVVK_9sqlparser3ast5query23ExprWithAliasAndOrderByINtNtBa_6result6ResultNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB48_B2o_EENCNvMNtCsjHlmExTLNuX_14datafusion_sql5queryINtNtB54_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE23pipe_operator_aggregates0_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterBZ_EB4X_EIB23_NtNtBa_7convert10InfallibleB37_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvBa3_12try_for_each4callB2o_B4M_NcNtB4M_5Break0E0B4M_E0E0Cs2VbMhdeEr66_16delta_benchmarks.exit, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldNtNtNtCs4lawaffTVVK_9sqlparser3ast5query23ExprWithAliasAndOrderByINtNtBa_6result6ResultNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB48_B2o_EENCNvMNtCsjHlmExTLNuX_14datafusion_sql5queryINtNtB54_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE23pipe_operator_aggregates0_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterBZ_EB4X_EIB23_NtNtBa_7convert10InfallibleB37_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvBa3_12try_for_each4callB2o_B4M_NcNtB4M_5Break0E0B4M_E0E0Cs2VbMhdeEr66_16delta_benchmarks.exit.thread
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.2.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.4.i.i, i64 104, i1 false)
  br label %._crit_edge

bb.f:                                             ; preds = %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldNtNtNtCs4lawaffTVVK_9sqlparser3ast5query23ExprWithAliasAndOrderByINtNtBa_6result6ResultNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB48_B2o_EENCNvMNtCsjHlmExTLNuX_14datafusion_sql5queryINtNtB54_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE23pipe_operator_aggregates0_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterBZ_EB4X_EIB23_NtNtBa_7convert10InfallibleB37_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvBa3_12try_for_each4callB2o_B4M_NcNtB4M_5Break0E0B4M_E0E0Cs2VbMhdeEr66_16delta_benchmarks.exit
  %.not = icmp eq ptr %i.l, %i.d
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB6_8IntoIterNtNtNtCs4lawaffTVVK_9sqlparser3ast5query23ExprWithAliasAndOrderByENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB27_8adapters3map12map_try_foldBX_INtNtB29_6result6ResultNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtB29_3ops12control_flow11ControlFlowIB5U_B4a_EENCNvMNtCsjHlmExTLNuX_14datafusion_sql5queryINtNtB6R_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE23pipe_operator_aggregates_0NCINvXB3d_INtB3d_12GenericShuntINtB3b_3MapBI_B6K_EIB3O_NtNtB29_7convert10InfallibleB4T_EEB21_8try_folduNCINvNvB21_12try_for_each4callB4a_B6z_NcNtB6z_5Break0E0B6z_E0E0B5T_ECs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 16 captures(none) dereferenceable(112) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.4.i.i = alloca [104 x i8], align 8       ; 3 uses
  %i.a = alloca [408 x i8], align 8               ; 5 uses
  %i.b = alloca [112 x i8], align 16              ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.e, align 8        ; 2 uses
  %.not19 = icmp eq ptr %.promoted, %i.d
  br i1 %.not19, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val3 = load ptr, ptr %i.f, align 8, !nonnull !11, !align !69, !noundef !11 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.h = getelementptr i8, ptr %.val3, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 400
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.4.48..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.i.i, i64 40
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %i.k = phi ptr [ %.promoted, %.lr.ph ], [ %i.l, %bb.f ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3650
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(400) %i.a, ptr noundef nonnull align 8 dereferenceable(400) %i.k, i64 400, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 400 ; 3 uses
  store ptr %i.l, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %.val.i = load ptr, ptr %.val3, align 8, !noalias !3657, !nonnull !11, !align !69, !noundef !11 ; 2 uses
  %.val2.i = load ptr, ptr %i.h, align 8, !noalias !3657, !nonnull !11, !align !69, !noundef !11 ; 2 uses
  store ptr %.val2.i, ptr %i.i, align 8, !noalias !3650
  %.val.i.i = load ptr, ptr %.val.i, align 8, !noalias !3650, !nonnull !11, !align !69, !noundef !11
  %i.m = getelementptr i8, ptr %.val.i, i64 8
  %.val1.i.i = load ptr, ptr %i.m, align 8, !noalias !3650, !nonnull !11, !align !69, !noundef !11
  call fastcc void @_RNCNvMNtCsjHlmExTLNuX_14datafusion_sql5queryINtNtB6_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE23pipe_operator_aggregate0Cs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 16 captures(address) dereferenceable(112) %i.b, ptr %.val.i.i, ptr nonnull %.val1.i.i, ptr noalias noundef align 8 captures(address) dereferenceable(400) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(80) %.val2.i) #37, !noalias !3657
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3650
  %.sroa.0.0.copyload.i = load i64, ptr %i.b, align 16, !noalias !3657 ; 3 uses
  %i.n = icmp eq i64 %.sroa.0.0.copyload.i, 37
  br i1 %i.n, label %bb.c, label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldNtNtNtCs4lawaffTVVK_9sqlparser3ast5query23ExprWithAliasAndOrderByINtNtBa_6result6ResultNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB48_B2o_EENCNvMNtCsjHlmExTLNuX_14datafusion_sql5queryINtNtB54_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE23pipe_operator_aggregates_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterBZ_EB4X_EIB23_NtNtBa_7convert10InfallibleB37_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvBa2_12try_for_each4callB2o_B4M_NcNtB4M_5Break0E0B4M_E0E0Cs2VbMhdeEr66_16delta_benchmarks.exit

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val.le = load ptr, ptr %i.o, align 8, !nonnull !11, !noundef !11 ; 4 uses
  %i.p = load i64, ptr %.val.le, align 8, !range !2467, !alias.scope !3658, !noalias !3661, !noundef !11
  %i.q = icmp eq i64 %i.p, 20
  br i1 %i.q, label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldNtNtNtCs4lawaffTVVK_9sqlparser3ast5query23ExprWithAliasAndOrderByINtNtBa_6result6ResultNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB48_B2o_EENCNvMNtCsjHlmExTLNuX_14datafusion_sql5queryINtNtB54_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE23pipe_operator_aggregates_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterBZ_EB4X_EIB23_NtNtBa_7convert10InfallibleB37_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvBa2_12try_for_each4callB2o_B4M_NcNtB4M_5Break0E0B4M_E0E0Cs2VbMhdeEr66_16delta_benchmarks.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(40) %.val.le)
          to label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldNtNtNtCs4lawaffTVVK_9sqlparser3ast5query23ExprWithAliasAndOrderByINtNtBa_6result6ResultNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB48_B2o_EENCNvMNtCsjHlmExTLNuX_14datafusion_sql5queryINtNtB54_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE23pipe_operator_aggregates_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterBZ_EB4X_EIB23_NtNtBa_7convert10InfallibleB37_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvBa2_12try_for_each4callB2o_B4M_NcNtB4M_5Break0E0B4M_E0E0Cs2VbMhdeEr66_16delta_benchmarks.exit.thread unwind label %bb.e, !noalias !3661

bb.e:                                             ; preds = %bb.d
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.val.le, ptr noundef nonnull align 8 dereferenceable(40) %i.g, i64 40, i1 false), !noalias !3657
  resume { ptr, i32 } %i.r

_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldNtNtNtCs4lawaffTVVK_9sqlparser3ast5query23ExprWithAliasAndOrderByINtNtBa_6result6ResultNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB48_B2o_EENCNvMNtCsjHlmExTLNuX_14datafusion_sql5queryINtNtB54_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE23pipe_operator_aggregates_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterBZ_EB4X_EIB23_NtNtBa_7convert10InfallibleB37_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvBa2_12try_for_each4callB2o_B4M_NcNtB4M_5Break0E0B4M_E0E0Cs2VbMhdeEr66_16delta_benchmarks.exit.thread: ; preds = %bb.c, %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.val.le, ptr noundef nonnull align 8 dereferenceable(40) %i.g, i64 40, i1 false), !noalias !3657
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.loopexit

_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldNtNtNtCs4lawaffTVVK_9sqlparser3ast5query23ExprWithAliasAndOrderByINtNtBa_6result6ResultNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB48_B2o_EENCNvMNtCsjHlmExTLNuX_14datafusion_sql5queryINtNtB54_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE23pipe_operator_aggregates_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterBZ_EB4X_EIB23_NtNtBa_7convert10InfallibleB37_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvBa2_12try_for_each4callB2o_B4M_NcNtB4M_5Break0E0B4M_E0E0Cs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4.i.i, ptr noundef nonnull align 8 dereferenceable(40) %i.g, i64 40, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.4.48..sroa_idx.i.i, ptr noundef nonnull align 16 dereferenceable(64) %i.j, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not.i = icmp eq i64 %.sroa.0.0.copyload.i, 38
  br i1 %.not.i, label %bb.f, label %.loopexit

._crit_edge:                                      ; preds = %bb.f, %bb.a, %.loopexit
  %storemerge = phi i64 [ %.sroa.0.0.copyload.i, %.loopexit ], [ 38, %bb.a ], [ 38, %bb.f ]
  store i64 %storemerge, ptr %0, align 16
  ret void

.loopexit:                                        ; preds = %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldNtNtNtCs4lawaffTVVK_9sqlparser3ast5query23ExprWithAliasAndOrderByINtNtBa_6result6ResultNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB48_B2o_EENCNvMNtCsjHlmExTLNuX_14datafusion_sql5queryINtNtB54_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE23pipe_operator_aggregates_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterBZ_EB4X_EIB23_NtNtBa_7convert10InfallibleB37_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvBa2_12try_for_each4callB2o_B4M_NcNtB4M_5Break0E0B4M_E0E0Cs2VbMhdeEr66_16delta_benchmarks.exit, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldNtNtNtCs4lawaffTVVK_9sqlparser3ast5query23ExprWithAliasAndOrderByINtNtBa_6result6ResultNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB48_B2o_EENCNvMNtCsjHlmExTLNuX_14datafusion_sql5queryINtNtB54_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE23pipe_operator_aggregates_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterBZ_EB4X_EIB23_NtNtBa_7convert10InfallibleB37_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvBa2_12try_for_each4callB2o_B4M_NcNtB4M_5Break0E0B4M_E0E0Cs2VbMhdeEr66_16delta_benchmarks.exit.thread
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.2.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.4.i.i, i64 104, i1 false)
  br label %._crit_edge

bb.f:                                             ; preds = %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldNtNtNtCs4lawaffTVVK_9sqlparser3ast5query23ExprWithAliasAndOrderByINtNtBa_6result6ResultNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB48_B2o_EENCNvMNtCsjHlmExTLNuX_14datafusion_sql5queryINtNtB54_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE23pipe_operator_aggregates_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterBZ_EB4X_EIB23_NtNtBa_7convert10InfallibleB37_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvBa2_12try_for_each4callB2o_B4M_NcNtB4M_5Break0E0B4M_E0E0Cs2VbMhdeEr66_16delta_benchmarks.exit
  %.not = icmp eq ptr %i.l, %i.d
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB6_8IntoIterNtNtNtCs4lawaffTVVK_9sqlparser3ast9data_type8DataTypeENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropINtNtBa_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENCINvNtNtB1V_8adapters3map12map_try_foldBX_INtNtB1X_6result6ResultB3t_NtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEB2T_INtNtNtB1X_3ops12control_flow11ControlFlowIB5c_B2T_zEB2T_ENCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB7I_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE39sql_statement_to_plan_with_context_impls1_0NCINvXB4B_INtB4B_12GenericShuntINtB4z_3MapBI_B7B_EIB5c_NtNtB1X_7convert10InfallibleB5C_EEB1P_8try_foldB2T_NCINvNtB8_16in_place_collect24write_in_place_with_dropB3t_E0B7l_E0E0B6F_ECs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noundef %2, ptr noundef %3, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [56 x i8], align 8                ; 6 uses
  %i.c = alloca [40 x i8], align 8                ; 7 uses
  %i.d = alloca [16 x i8], align 8                ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.g, align 8        ; 2 uses
  %.not20 = icmp eq ptr %.promoted, %i.f
  br i1 %.not20, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.val2 = load ptr, ptr %i.h, align 8, !nonnull !11, !align !69, !noundef !11
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.6.16..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.n
  %.sroa.4.021 = phi ptr [ %3, %.lr.ph ], [ %i.x, %bb.n ] ; 5 uses
  %i.k = phi ptr [ %.promoted, %.lr.ph ], [ %i.l, %bb.n ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3665
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.b, ptr noundef nonnull align 8 dereferenceable(56) %i.k, i64 56, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 56 ; 3 uses
  store ptr %i.l, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !3665
  store ptr %2, ptr %i.d, align 8, !noalias !3665
  store ptr %.sroa.4.021, ptr %i.i, align 8, !noalias !3665
  %.val.i = load ptr, ptr %.val2, align 8, !noalias !3665, !nonnull !11, !align !69, !noundef !11
  invoke void @_RNvMs8_NtCsjHlmExTLNuX_14datafusion_sql7plannerINtB5_8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE26convert_data_type_to_fieldCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.val.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.b)
          to label %bb.d unwind label %bb.c, !noalias !3665

bb.c:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4lawaffTVVK_9sqlparser3ast9data_type8DataTypeECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.b) #30
          to label %bb.k unwind label %bb.e, !noalias !3669

bb.d:                                             ; preds = %bb.b
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4lawaffTVVK_9sqlparser3ast9data_type8DataTypeECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.b)
          to label %_RNCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB6_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE39sql_statement_to_plan_with_context_impls1_0Cs2VbMhdeEr66_16delta_benchmarks.exit.i unwind label %bb.f, !noalias !3665

bb.e:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #29, !noalias !3669
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

_RNCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB6_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE39sql_statement_to_plan_with_context_impls1_0Cs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3665
  %.sroa.4.16.copyload.i = load i64, ptr %i.c, align 8, !noalias !3665 ; 3 uses
  %.sroa.6.16.copyload.i = load ptr, ptr %.sroa.6.16..sroa_idx.i, align 8, !noalias !3665 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3665
  store ptr %2, ptr %i.a, align 8, !noalias !3672
  store ptr %.sroa.4.021, ptr %i.j, align 8, !noalias !3672
  %.not.i.i.i = icmp eq i64 %.sroa.4.16.copyload.i, 20
  br i1 %.not.i.i.i, label %bb.n, label %bb.g

bb.g:                                             ; preds = %_RNCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB6_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE39sql_statement_to_plan_with_context_impls1_0Cs2VbMhdeEr66_16delta_benchmarks.exit.i
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.val.le = load ptr, ptr %i.p, align 8, !nonnull !11, !noundef !11 ; 8 uses
  %.sroa.7.16..sroa_idx.i.le = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.q = load i64, ptr %.val.le, align 8, !range !2467, !alias.scope !3676, !noalias !3672, !noundef !11
  %i.r = icmp eq i64 %i.q, 20
  br i1 %i.r, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bb.g
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(40) %.val.le)
          to label %bb.m unwind label %bb.i, !noalias !3672

bb.i:                                             ; preds = %bb.h
  %i.s = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.4.16.copyload.i, ptr %.val.le, align 8, !noalias !3672
  %.sroa.5.0..8.val.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.val.le, i64 8
  store ptr %.sroa.6.16.copyload.i, ptr %.sroa.5.0..8.val.sroa_idx.i.i, align 8, !noalias !3672
  %.sroa.610.0..8.val.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.val.le, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.610.0..8.val.sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.16..sroa_idx.i.le, i64 24, i1 false), !noalias !3665
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec13in_place_drop11InPlaceDropINtNtBN_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(16) %i.a) #30
          to label %.body.i unwind label %bb.j, !noalias !3672

bb.j:                                             ; preds = %bb.i
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #29, !noalias !3672
  unreachable

.body.i:                                          ; preds = %bb.k, %bb.i
  %eh.lpad-body3.i = phi { ptr, i32 } [ %eh.lpad-body.ph.i, %bb.k ], [ %i.s, %bb.i ]
  resume { ptr, i32 } %eh.lpad-body3.i

bb.k:                                             ; preds = %bb.f, %bb.c
  %eh.lpad-body.ph.i = phi { ptr, i32 } [ %i.o, %bb.f ], [ %i.m, %bb.c ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec13in_place_drop11InPlaceDropINtNtBN_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(16) %i.d) #30
          to label %.body.i unwind label %bb.l, !noalias !3665

bb.l:                                             ; preds = %bb.k
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #29, !noalias !3665
  unreachable

._crit_edge:                                      ; preds = %bb.n, %bb.a, %bb.m
  %.sroa.4.0.lcssa.sink = phi ptr [ %.sroa.4.021, %bb.m ], [ %3, %bb.a ], [ %i.x, %bb.n ]
  %storemerge = phi i64 [ 1, %bb.m ], [ 0, %bb.a ], [ 0, %bb.n ]
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.4.0.lcssa.sink, ptr %i.w, align 8
  store i64 %storemerge, ptr %0, align 8
  ret void

bb.m:                                             ; preds = %bb.g, %bb.h
  store i64 %.sroa.4.16.copyload.i, ptr %.val.le, align 8, !noalias !3672
  %.sroa.5.0..8.val.sroa_idx8.i.i = getelementptr inbounds nuw i8, ptr %.val.le, i64 8
  store ptr %.sroa.6.16.copyload.i, ptr %.sroa.5.0..8.val.sroa_idx8.i.i, align 8, !noalias !3672
  %.sroa.610.0..8.val.sroa_idx11.i.i = getelementptr inbounds nuw i8, ptr %.val.le, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.610.0..8.val.sroa_idx11.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.16..sroa_idx.i.le, i64 24, i1 false), !noalias !3665
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3665
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3665
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %._crit_edge

bb.n:                                             ; preds = %_RNCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB6_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE39sql_statement_to_plan_with_context_impls1_0Cs2VbMhdeEr66_16delta_benchmarks.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.16.copyload.i) ]
  store ptr %.sroa.6.16.copyload.i, ptr %.sroa.4.021, align 8, !noalias !3672
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.4.021, i64 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3665
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3665
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.not = icmp eq ptr %i.l, %i.f
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB6_8IntoIterNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan16ColumnUnnestListENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4foldNtNtCsjhHCjzi9uUI_17datafusion_common6unnest13UnnestOptionsNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB4e_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE18try_process_unnest0ECs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(32) %1, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(32) %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [104 x i8], align 8               ; 4 uses
  %i.b = alloca [216 x i8], align 8               ; 6 uses
  %i.c = alloca [32 x i8], align 8                ; 5 uses
  %i.d = alloca [144 x i8], align 8               ; 5 uses
  %i.e = alloca [32 x i8], align 8                ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.h, align 8        ; 2 uses
  %.not3 = icmp eq ptr %.promoted, %i.g
  br i1 %.not3, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 136
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 208
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.h
  %i.m = phi ptr [ %.promoted, %.lr.ph ], [ %i.n, %bb.h ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.i, ptr noundef nonnull align 8 dereferenceable(112) %i.m, i64 112, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 112 ; 3 uses
  store ptr %i.n, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !3679)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3682
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3682
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3682
  invoke fastcc void @_RNvXs7_NtCsjhHCjzi9uUI_17datafusion_common6columnNtB5_6ColumnNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(104) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %3)
          to label %bb.c unwind label %bb.d, !noalias !3682

bb.c:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.j, ptr noundef nonnull align 8 dereferenceable(112) %i.i, i64 104, i1 false), !noalias !3685
  %i.o = load i64, ptr %i.k, align 8, !alias.scope !3679, !noalias !3685, !noundef !11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.b, ptr noundef nonnull align 8 dereferenceable(104) %i.a, i64 104, i1 false), !noalias !3682
  store i64 %i.o, ptr %i.l, align 8, !noalias !3682
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3682
  invoke void @_RNvMs_NtCsjhHCjzi9uUI_17datafusion_common6unnestNtB4_13UnnestOptions15with_recursions(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.e, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(216) %i.b)
          to label %bb.h unwind label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common6unnest13UnnestOptionsECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(32) %i.c) #30
          to label %bb.f unwind label %bb.e, !noalias !3682

bb.e:                                             ; preds = %bb.f, %bb.d
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #29, !noalias !3685
  unreachable

bb.f:                                             ; preds = %bb.d
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.i) #30
          to label %.body unwind label %bb.e, !noalias !3685

._crit_edge:                                      ; preds = %bb.h, %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false)
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan16ColumnUnnestListEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(32) %1)
  ret void

bb.g:                                             ; preds = %bb.c
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.f, %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %i.r, %bb.g ], [ %i.p, %bb.f ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan16ColumnUnnestListEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(32) %1) #30
          to label %bb.j unwind label %bb.i

bb.h:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3682
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3682
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %.not = icmp eq ptr %i.n, %i.g
  br i1 %.not, label %._crit_edge, label %bb.b

bb.i:                                             ; preds = %.body
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #29
  unreachable

bb.j:                                             ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB6_8IntoIterNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan16ColumnUnnestListENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4foldNtNtCsjhHCjzi9uUI_17datafusion_common6unnest13UnnestOptionsNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB4e_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE27try_process_group_by_unnests_0ECs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(32) %1, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(32) %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [104 x i8], align 8               ; 4 uses
  %i.b = alloca [216 x i8], align 8               ; 6 uses
  %i.c = alloca [32 x i8], align 8                ; 5 uses
  %i.d = alloca [144 x i8], align 8               ; 5 uses
  %i.e = alloca [32 x i8], align 8                ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.h, align 8        ; 2 uses
  %.not3 = icmp eq ptr %.promoted, %i.g
  br i1 %.not3, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 136
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 208
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.h
  %i.m = phi ptr [ %.promoted, %.lr.ph ], [ %i.n, %bb.h ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.i, ptr noundef nonnull align 8 dereferenceable(112) %i.m, i64 112, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 112 ; 3 uses
  store ptr %i.n, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !3686)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3689
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3689
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3689
  invoke fastcc void @_RNvXs7_NtCsjhHCjzi9uUI_17datafusion_common6columnNtB5_6ColumnNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(104) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %3)
          to label %bb.c unwind label %bb.d, !noalias !3689

bb.c:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.j, ptr noundef nonnull align 8 dereferenceable(112) %i.i, i64 104, i1 false), !noalias !3692
  %i.o = load i64, ptr %i.k, align 8, !alias.scope !3686, !noalias !3692, !noundef !11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.b, ptr noundef nonnull align 8 dereferenceable(104) %i.a, i64 104, i1 false), !noalias !3689
  store i64 %i.o, ptr %i.l, align 8, !noalias !3689
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3689
  invoke void @_RNvMs_NtCsjhHCjzi9uUI_17datafusion_common6unnestNtB4_13UnnestOptions15with_recursions(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.e, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(216) %i.b)
          to label %bb.h unwind label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common6unnest13UnnestOptionsECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(32) %i.c) #30
          to label %bb.f unwind label %bb.e, !noalias !3689

bb.e:                                             ; preds = %bb.f, %bb.d
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #29, !noalias !3692
  unreachable

bb.f:                                             ; preds = %bb.d
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.i) #30
          to label %.body unwind label %bb.e, !noalias !3692

._crit_edge:                                      ; preds = %bb.h, %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false)
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan16ColumnUnnestListEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(32) %1)
  ret void

bb.g:                                             ; preds = %bb.c
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.f, %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %i.r, %bb.g ], [ %i.p, %bb.f ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan16ColumnUnnestListEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(32) %1) #30
          to label %bb.j unwind label %bb.i

bb.h:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3689
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3689
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %.not = icmp eq ptr %i.n, %i.g
  br i1 %.not, label %._crit_edge, label %bb.b

bb.i:                                             ; preds = %.body
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #29
  unreachable

bb.j:                                             ; preds = %.body
end_hunk_11
begin_hunk_12_@_RINvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB6_8IntoIterjENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB15_8adapters3map8map_foldjNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruNCINvMs_NtNtB2E_12logical_plan7builderNtB3s_18LogicalPlanBuilder23scan_with_filters_innerReE0NCINvNvBZ_8for_each4callB2A_NCINvMsj_B8_INtB8_3VecB2A_E14extend_trustedINtB25_3MapBI_B3k_EE0E0E0ECs2VbMhdeEr66_16delta_benchmarks:bb.a
  store i64 5, ptr %i.c, align 16, !noalias !3760
  %i.ai = getelementptr inbounds nuw [112 x i8], ptr %i.j, i64 %.val7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.ai, ptr noundef nonnull readonly align 16 dereferenceable(112) %i.c, i64 112, i1 false), !noalias !3760
  %i.aj = add i64 %.val7, 1                       ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.not = icmp eq ptr %i.n, %i.e
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldjNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruNCINvMs_NtNtBZ_12logical_plan7builderNtB1N_18LogicalPlanBuilder23scan_with_filters_innerReE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB4e_3VecBV_E14extend_trustedINtB4_3MapINtNtB4e_9into_iter8IntoIterjEB1F_EE0E0E0Cs2VbMhdeEr66_16delta_benchmarks.exit, %.._crit_edge_crit_edge
  %.val9 = phi i64 [ %.val9.pre, %.._crit_edge_crit_edge ], [ %i.aj, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldjNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruNCINvMs_NtNtBZ_12logical_plan7builderNtB1N_18LogicalPlanBuilder23scan_with_filters_innerReE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB4e_3VecBV_E14extend_trustedINtB4_3MapINtNtB4e_9into_iter8IntoIterjEB1F_EE0E0E0Cs2VbMhdeEr66_16delta_benchmarks.exit ]
  %.val8 = load ptr, ptr %1, align 8, !nonnull !11, !align !69, !noundef !11
  store i64 %.val9, ptr %.val8, align 8
  %.val4 = load ptr, ptr %0, align 8, !alias.scope !3735, !nonnull !11, !noundef !11
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val5 = load i64, ptr %i.ak, align 8, !alias.scope !3735, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3770
  store i64 %.val5, ptr %i.b, align 8, !noalias !3770
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %.val4, ptr %i.al, align 8, !noalias !3770
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecjENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b), !noalias !3770
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3770
  ret void

.loopexit:                                        ; preds = %bb.b, %_RNCINvMs_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan7builderNtB7_18LogicalPlanBuilder23scan_with_filters_innerReE0Cs2VbMhdeEr66_16delta_benchmarks.exit.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

.loopexit.split-lp:                               ; preds = %.invoke
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.d:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.val6 = load ptr, ptr %1, align 8, !nonnull !11, !align !69, !noundef !11
  store i64 %.val7, ptr %.val6, align 8
  %.val = load ptr, ptr %0, align 8, !alias.scope !3735, !nonnull !11, !noundef !11
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val3 = load i64, ptr %i.am, align 8, !alias.scope !3735, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3773
  store i64 %.val3, ptr %i.a, align 8, !noalias !3773
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.val, ptr %i.an, align 8, !noalias !3773
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecjENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #29
  unreachable

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3773
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs8_NtCs3gpiEk3WpjL_9hashbrown3setINtB6_7HashSetNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect6ExtendBO_E6extendINtNtCs6Po7BT7Nknu_5alloc3vec3VecBO_EECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.sroa.03.0.copyload.i = load i64, ptr %1, align 8, !alias.scope !3776, !noalias !3779
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.44.0.copyload.i = load ptr, ptr %.sroa.44.0..sroa_idx.i, align 8, !alias.scope !3776, !noalias !3779, !nonnull !11, !noundef !11 ; 3 uses
  %.sroa.55.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.55.0.copyload.i = load i64, ptr %.sroa.55.0..sroa_idx.i, align 8, !alias.scope !3776, !noalias !3779 ; 2 uses
  %i.b = icmp ult i64 %.sroa.55.0.copyload.i, 82351536043346213
  tail call void @llvm.assume(i1 %i.b)
  %i.c = getelementptr inbounds nuw [112 x i8], ptr %.sroa.44.0.copyload.i, i64 %.sroa.55.0.copyload.i
  store ptr %.sroa.44.0.copyload.i, ptr %i.a, align 8, !alias.scope !3781
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.sroa.44.0.copyload.i, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !3781
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %.sroa.03.0.copyload.i, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !3781
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.c, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !3781
  call void @_RINvXs1i_NtCs3gpiEk3WpjL_9hashbrown3mapINtB7_7HashMapNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect6ExtendTBP_uEE6extendINtNtNtB2u_8adapters3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterBP_ENCINvXs8_NtB9_3setINtB4X_7HashSetBP_B1z_EIB2o_BP_E6extendINtB41_3VecBP_EE0EECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs8_NtCs3gpiEk3WpjL_9hashbrown3setINtB6_7HashSetRNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect6ExtendBO_E6extendINtNtNtB2m_8adapters3map3MapINtNtNtB2o_5slice4iter4IterINtNtBT_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENCNvMNtNtCsjHlmExTLNuX_14datafusion_sql8relation4joinINtNtB5m_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE10parse_joins_0EECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  tail call void @_RINvXs1i_NtCs3gpiEk3WpjL_9hashbrown3mapINtB7_7HashMapRNtNtCs6Po7BT7Nknu_5alloc6string6StringuNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect6ExtendTBP_uEE6extendINtNtNtB2o_8adapters3map3MapIB3p_INtNtNtB2q_5slice4iter4IterINtNtBU_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENCNvMNtNtCsjHlmExTLNuX_14datafusion_sql8relation4joinINtNtB5w_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE10parse_joins_0ENCINvXs8_NtB9_3setINtB8n_7HashSetBP_B1t_EIB2i_BP_E6extendB3Q_E0EECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %1, ptr noundef %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXss_NtCs3gpiEk3WpjL_9hashbrown3setINtB6_8IntoIterRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1M_8adapters6filter11filter_foldBP_uNCNCINvMs_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan7builderNtB3B_18LogicalPlanBuilder15sort_with_limitNtNtB3F_4expr4SortINtNtCs6Po7BT7Nknu_5alloc3vec3VecB5d_EE00NCINvNtB2O_3map8map_foldBP_BQ_uNvYBQ_NtNtB1O_5clone5Clone5cloneNCIB6d_BQ_TBQ_uEuNCINvXs8_NtCsbpG6u9KFjWn_8indexmap3setINtB7B_8IndexSetBQ_EINtNtB1K_7collect6ExtendBQ_E6extendINtNtB2O_6cloned6ClonedINtB2M_6FilterINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set8IntoIterBP_EB3r_EEE0NCINvNvB1G_8for_each4callB7l_NCINvXsb_NtB7D_3mapINtBbi_8IndexMapBQ_uEIB8p_B7l_E6extendINtB6f_3MapB8X_B7s_EE0E0E0E0E0ECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(64) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias noundef align 8 dereferenceable(72) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [104 x i8], align 8               ; 4 uses
  %i.b = alloca [64 x i8], align 8                ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.b, ptr noundef nonnull align 8 dereferenceable(64) %0, i64 64, i1 false)
  %i.c = load ptr, ptr %1, align 8, !nonnull !11
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  br label %_RNCINvXss_NtCs3gpiEk3WpjL_9hashbrown3setINtB8_8IntoIterRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1O_8adapters6filter11filter_foldBR_uNCNCINvMs_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan7builderNtB3D_18LogicalPlanBuilder15sort_with_limitNtNtB3H_4expr4SortINtNtCs6Po7BT7Nknu_5alloc3vec3VecB5f_EE00NCINvNtB2Q_3map8map_foldBR_BS_uNvYBS_NtNtB1Q_5clone5Clone5cloneNCIB6f_BS_TBS_uEuNCINvXs8_NtCsbpG6u9KFjWn_8indexmap3setINtB7D_8IndexSetBS_EINtNtB1M_7collect6ExtendBS_E6extendINtNtB2Q_6cloned6ClonedINtB2O_6FilterINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set8IntoIterBR_EB3t_EEE0NCINvNvB1I_8for_each4callB7n_NCINvXsb_NtB7F_3mapINtBbk_8IndexMapBS_uEIB8r_B7n_E6extendINtB6h_3MapB8Z_B7u_EE0E0E0E0E0E0Cs2VbMhdeEr66_16delta_benchmarks.exit.i

_RNCINvXss_NtCs3gpiEk3WpjL_9hashbrown3setINtB8_8IntoIterRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1O_8adapters6filter11filter_foldBR_uNCNCINvMs_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan7builderNtB3D_18LogicalPlanBuilder15sort_with_limitNtNtB3H_4expr4SortINtNtCs6Po7BT7Nknu_5alloc3vec3VecB5f_EE00NCINvNtB2Q_3map8map_foldBR_BS_uNvYBS_NtNtB1Q_5clone5Clone5cloneNCIB6f_BS_TBS_uEuNCINvXs8_NtCsbpG6u9KFjWn_8indexmap3setINtB7D_8IndexSetBS_EINtNtB1M_7collect6ExtendBS_E6extendINtNtB2Q_6cloned6ClonedINtB2O_6FilterINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set8IntoIterBR_EB3t_EEE0NCINvNvB1I_8for_each4callB7n_NCINvXsb_NtB7F_3mapINtBbk_8IndexMapBS_uEIB8r_B7n_E6extendINtB6h_3MapB8Z_B7u_EE0E0E0E0E0E0Cs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %_RNCINvXss_NtCs3gpiEk3WpjL_9hashbrown3setINtB8_8IntoIterRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1O_8adapters6filter11filter_foldBR_uNCNCINvMs_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan7builderNtB3D_18LogicalPlanBuilder15sort_with_limitNtNtB3H_4expr4SortINtNtCs6Po7BT7Nknu_5alloc3vec3VecB5f_EE00NCINvNtB2Q_3map8map_foldBR_BS_uNvYBS_NtNtB1Q_5clone5Clone5cloneNCIB6f_BS_TBS_uEuNCINvXs8_NtCsbpG6u9KFjWn_8indexmap3setINtB7D_8IndexSetBS_EINtNtB1M_7collect6ExtendBS_E6extendINtNtB2Q_6cloned6ClonedINtB2O_6FilterINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set8IntoIterBR_EB3t_EEE0NCINvNvB1I_8for_each4callB7n_NCINvXsb_NtB7F_3mapINtBbk_8IndexMapBS_uEIB8r_B7n_E6extendINtB6h_3MapB8Z_B7u_EE0E0E0E0E0E0Cs2VbMhdeEr66_16delta_benchmarks.exit.i.backedge, %bb.a
  %i.e = invoke noundef align 8 ptr @_RNvXsE_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_11RawIntoIterTRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.b)
          to label %bb.c unwind label %bb.b, !noalias !3785 ; 3 uses

bb.b:                                             ; preds = %.noexc4.i, %bb.e, %bb.d, %_RNCINvXss_NtCs3gpiEk3WpjL_9hashbrown3setINtB8_8IntoIterRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1O_8adapters6filter11filter_foldBR_uNCNCINvMs_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan7builderNtB3D_18LogicalPlanBuilder15sort_with_limitNtNtB3H_4expr4SortINtNtCs6Po7BT7Nknu_5alloc3vec3VecB5f_EE00NCINvNtB2Q_3map8map_foldBR_BS_uNvYBS_NtNtB1Q_5clone5Clone5cloneNCIB6f_BS_TBS_uEuNCINvXs8_NtCsbpG6u9KFjWn_8indexmap3setINtB7D_8IndexSetBS_EINtNtB1M_7collect6ExtendBS_E6extendINtNtB2Q_6cloned6ClonedINtB2O_6FilterINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set8IntoIterBR_EB3t_EEE0NCINvNvB1I_8for_each4callB7n_NCINvXsb_NtB7F_3mapINtBbk_8IndexMapBS_uEIB8r_B7n_E6extendINtB6h_3MapB8Z_B7u_EE0E0E0E0E0E0Cs2VbMhdeEr66_16delta_benchmarks.exit.i
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsC_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_11RawIntoIterTRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.b)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown3raw11RawIntoIterTRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuEEECs2VbMhdeEr66_16delta_benchmarks.exit.i unwind label %bb.f, !noalias !3785

bb.c:                                             ; preds = %_RNCINvXss_NtCs3gpiEk3WpjL_9hashbrown3setINtB8_8IntoIterRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1O_8adapters6filter11filter_foldBR_uNCNCINvMs_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan7builderNtB3D_18LogicalPlanBuilder15sort_with_limitNtNtB3H_4expr4SortINtNtCs6Po7BT7Nknu_5alloc3vec3VecB5f_EE00NCINvNtB2Q_3map8map_foldBR_BS_uNvYBS_NtNtB1Q_5clone5Clone5cloneNCIB6f_BS_TBS_uEuNCINvXs8_NtCsbpG6u9KFjWn_8indexmap3setINtB7D_8IndexSetBS_EINtNtB1M_7collect6ExtendBS_E6extendINtNtB2Q_6cloned6ClonedINtB2O_6FilterINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set8IntoIterBR_EB3t_EEE0NCINvNvB1I_8for_each4callB7n_NCINvXsb_NtB7F_3mapINtBbk_8IndexMapBS_uEIB8r_B7n_E6extendINtB6h_3MapB8Z_B7u_EE0E0E0E0E0E0Cs2VbMhdeEr66_16delta_benchmarks.exit.i
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %_RINvYINtNtCs3gpiEk3WpjL_9hashbrown3raw11RawIntoIterTRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4folduNCINvXss_NtB8_3setINtB2R_8IntoIterBO_EB1H_4folduNCINvNtNtB1N_8adapters6filter11filter_foldBO_uNCNCINvMs_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan7builderNtB4o_18LogicalPlanBuilder15sort_with_limitNtNtB4s_4expr4SortINtNtCs6Po7BT7Nknu_5alloc3vec3VecB60_EE00NCINvNtB3B_3map8map_foldBO_BP_uNvYBP_NtNtB1P_5clone5Clone5cloneNCIB70_BP_TBP_uEuNCINvXs8_NtCsbpG6u9KFjWn_8indexmap3setINtB8o_8IndexSetBP_EINtNtB1L_7collect6ExtendBP_E6extendINtNtB3B_6cloned6ClonedINtB3z_6FilterINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set8IntoIterBO_EB4e_EEE0NCINvNvB1H_8for_each4callB88_NCINvXsb_NtB8q_3mapINtBc5_8IndexMapBP_uEIB9c_B88_E6extendINtB72_3MapB9K_B8f_EE0E0E0E0E0E0ECs2VbMhdeEr66_16delta_benchmarks.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = invoke noundef zeroext i1 @_RNvMNtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB2_8DFSchema10has_column(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.e)
          to label %.noexc.i unwind label %bb.b, !noalias !3785

.noexc.i:                                         ; preds = %bb.d
  br i1 %i.g, label %_RNCINvXss_NtCs3gpiEk3WpjL_9hashbrown3setINtB8_8IntoIterRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1O_8adapters6filter11filter_foldBR_uNCNCINvMs_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan7builderNtB3D_18LogicalPlanBuilder15sort_with_limitNtNtB3H_4expr4SortINtNtCs6Po7BT7Nknu_5alloc3vec3VecB5f_EE00NCINvNtB2Q_3map8map_foldBR_BS_uNvYBS_NtNtB1Q_5clone5Clone5cloneNCIB6f_BS_TBS_uEuNCINvXs8_NtCsbpG6u9KFjWn_8indexmap3setINtB7D_8IndexSetBS_EINtNtB1M_7collect6ExtendBS_E6extendINtNtB2Q_6cloned6ClonedINtB2O_6FilterINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set8IntoIterBR_EB3t_EEE0NCINvNvB1I_8for_each4callB7n_NCINvXsb_NtB7F_3mapINtBbk_8IndexMapBS_uEIB8r_B7n_E6extendINtB6h_3MapB8Z_B7u_EE0E0E0E0E0E0Cs2VbMhdeEr66_16delta_benchmarks.exit.i.backedge, label %bb.e

bb.e:                                             ; preds = %.noexc.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3788
  invoke fastcc void @_RNvXs7_NtCsjhHCjzi9uUI_17datafusion_common6columnNtB5_6ColumnNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull align 8 captures(none) dereferenceable(104) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.e) #37
          to label %.noexc4.i unwind label %bb.b, !noalias !3785

.noexc4.i:                                        ; preds = %bb.e
  %i.h = invoke { i64, i1 } @_RNvMs2_NtCsbpG6u9KFjWn_8indexmap3mapINtB5_8IndexMapNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuE11insert_fullCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %2, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(104) %i.a)
          to label %.noexc5.i unwind label %bb.b, !noalias !3785 ; 0 uses

.noexc5.i:                                        ; preds = %.noexc4.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3788
  br label %_RNCINvXss_NtCs3gpiEk3WpjL_9hashbrown3setINtB8_8IntoIterRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1O_8adapters6filter11filter_foldBR_uNCNCINvMs_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan7builderNtB3D_18LogicalPlanBuilder15sort_with_limitNtNtB3H_4expr4SortINtNtCs6Po7BT7Nknu_5alloc3vec3VecB5f_EE00NCINvNtB2Q_3map8map_foldBR_BS_uNvYBS_NtNtB1Q_5clone5Clone5cloneNCIB6f_BS_TBS_uEuNCINvXs8_NtCsbpG6u9KFjWn_8indexmap3setINtB7D_8IndexSetBS_EINtNtB1M_7collect6ExtendBS_E6extendINtNtB2Q_6cloned6ClonedINtB2O_6FilterINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set8IntoIterBR_EB3t_EEE0NCINvNvB1I_8for_each4callB7n_NCINvXsb_NtB7F_3mapINtBbk_8IndexMapBS_uEIB8r_B7n_E6extendINtB6h_3MapB8Z_B7u_EE0E0E0E0E0E0Cs2VbMhdeEr66_16delta_benchmarks.exit.i.backedge

_RNCINvXss_NtCs3gpiEk3WpjL_9hashbrown3setINtB8_8IntoIterRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1O_8adapters6filter11filter_foldBR_uNCNCINvMs_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan7builderNtB3D_18LogicalPlanBuilder15sort_with_limitNtNtB3H_4expr4SortINtNtCs6Po7BT7Nknu_5alloc3vec3VecB5f_EE00NCINvNtB2Q_3map8map_foldBR_BS_uNvYBS_NtNtB1Q_5clone5Clone5cloneNCIB6f_BS_TBS_uEuNCINvXs8_NtCsbpG6u9KFjWn_8indexmap3setINtB7D_8IndexSetBS_EINtNtB1M_7collect6ExtendBS_E6extendINtNtB2Q_6cloned6ClonedINtB2O_6FilterINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set8IntoIterBR_EB3t_EEE0NCINvNvB1I_8for_each4callB7n_NCINvXsb_NtB7F_3mapINtBbk_8IndexMapBS_uEIB8r_B7n_E6extendINtB6h_3MapB8Z_B7u_EE0E0E0E0E0E0Cs2VbMhdeEr66_16delta_benchmarks.exit.i.backedge: ; preds = %.noexc5.i, %.noexc.i
  br label %_RNCINvXss_NtCs3gpiEk3WpjL_9hashbrown3setINtB8_8IntoIterRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1O_8adapters6filter11filter_foldBR_uNCNCINvMs_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan7builderNtB3D_18LogicalPlanBuilder15sort_with_limitNtNtB3H_4expr4SortINtNtCs6Po7BT7Nknu_5alloc3vec3VecB5f_EE00NCINvNtB2Q_3map8map_foldBR_BS_uNvYBS_NtNtB1Q_5clone5Clone5cloneNCIB6f_BS_TBS_uEuNCINvXs8_NtCsbpG6u9KFjWn_8indexmap3setINtB7D_8IndexSetBS_EINtNtB1M_7collect6ExtendBS_E6extendINtNtB2Q_6cloned6ClonedINtB2O_6FilterINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set8IntoIterBR_EB3t_EEE0NCINvNvB1I_8for_each4callB7n_NCINvXsb_NtB7F_3mapINtBbk_8IndexMapBS_uEIB8r_B7n_E6extendINtB6h_3MapB8Z_B7u_EE0E0E0E0E0E0Cs2VbMhdeEr66_16delta_benchmarks.exit.i

bb.f:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #29, !noalias !3785
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown3raw11RawIntoIterTRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuEEECs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.f

_RINvYINtNtCs3gpiEk3WpjL_9hashbrown3raw11RawIntoIterTRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4folduNCINvXss_NtB8_3setINtB2R_8IntoIterBO_EB1H_4folduNCINvNtNtB1N_8adapters6filter11filter_foldBO_uNCNCINvMs_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan7builderNtB4o_18LogicalPlanBuilder15sort_with_limitNtNtB4s_4expr4SortINtNtCs6Po7BT7Nknu_5alloc3vec3VecB60_EE00NCINvNtB3B_3map8map_foldBO_BP_uNvYBP_NtNtB1P_5clone5Clone5cloneNCIB70_BP_TBP_uEuNCINvXs8_NtCsbpG6u9KFjWn_8indexmap3setINtB8o_8IndexSetBP_EINtNtB1L_7collect6ExtendBP_E6extendINtNtB3B_6cloned6ClonedINtB3z_6FilterINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set8IntoIterBO_EB4e_EEE0NCINvNvB1H_8for_each4callB88_NCINvXsb_NtB8q_3mapINtBc5_8IndexMapBP_uEIB9c_B88_E6extendINtB72_3MapB9K_B8f_EE0E0E0E0E0E0ECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.c
  call void @_RNvXsC_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_11RawIntoIterTRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.b), !noalias !3785
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtBW_9arguments12ArgumentNameEEENtNtNtNtB1G_4iter6traits8iterator8Iterator5unzipBS_B1B_INtB8_3VecBS_EIB3F_B1B_EECs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 2 uses
  %i.b = alloca [48 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 0, ptr %i.b, align 8, !alias.scope !3800
  %.sroa.4.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr inttoptr (i64 16 to ptr), ptr %.sroa.4.0..sroa_idx2.i, align 8, !alias.scope !3800
  %.sroa.5.0..sroa_idx3.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx3.i, i8 0, i64 16, i1 false), !alias.scope !3800
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.2.0..sroa_idx.i, align 8, !alias.scope !3800
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 0, ptr %.sroa.3.0..sroa_idx.i, align 8, !alias.scope !3800
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  invoke void @_RNvXs_NvNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect14default_extendTINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEIB17_INtNtBc_6option6OptionNtNtB1H_9arguments12ArgumentNameEEEINtB4_10SpecExtendINtNtB19_9into_iter8IntoIterTB1D_B2s_EEE6extendCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEIBI_INtNtB4_6option6OptionNtNtB1i_9arguments12ArgumentNameEEEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(48) %i.b) #30
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtNtB4_6option6OptionNtNtB1z_9arguments12ArgumentNameEEEECs2VbMhdeEr66_16delta_benchmarks.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtNtB4_6option6OptionNtNtB1z_9arguments12ArgumentNameEEEECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvMNtCsjHlmExTLNuX_14datafusion_sql5queryINtNtB6_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE23pipe_operator_aggregate0Cs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias noundef nonnull writable align 16 captures(none) dereferenceable(112) %0, ptr nofree nonnull readonly captures(address, read_provenance) %.0.val, ptr nofree readonly captures(none) %.8.val, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(400) %1, ptr noalias noundef nonnull align 8 dereferenceable(80) %2) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 2 uses
  %i.b = alloca [328 x i8], align 8               ; 2 uses
  %i.c = alloca [112 x i8], align 16              ; 5 uses
  %i.d = alloca [112 x i8], align 16              ; 7 uses
  %.sroa.6 = alloca [40 x i8], align 8            ; 6 uses
  %i.e = alloca [64 x i8], align 8                ; 10 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %i.b, ptr noundef nonnull align 8 dereferenceable(328) %1, i64 328, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 328 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.e, ptr noundef nonnull align 8 dereferenceable(64) %i.f, i64 64, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.g = load ptr, ptr %.8.val, align 8, !nonnull !11, !noundef !11
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  invoke void @_RNvMNtCsjHlmExTLNuX_14datafusion_sql4exprINtNtB4_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE11sql_to_exprCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(none) dereferenceable(112) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.0.val, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(328) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.h, ptr noalias noundef nonnull align 8 dereferenceable(80) %2)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.j = load i64, ptr %i.e, align 8, !range !60, !noundef !11
  %.not3 = icmp eq i64 %i.j, -9223372036854775808
  br i1 %.not3, label %common.resume, label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.k = load i64, ptr %i.d, align 16, !range !2741, !noundef !11 ; 2 uses
  %i.l = icmp eq i64 %i.k, 37
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(40) %i.m, i64 40, i1 false)
  br i1 %i.l, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.n, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6, i64 40, i1 false)
  store i64 37, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  %i.o = load i64, ptr %i.e, align 8, !range !60, !alias.scope !3803, !noundef !11
  %i.p = icmp eq i64 %i.o, -9223372036854775808
  br i1 %i.p, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs4lawaffTVVK_9sqlparser3ast5IdentEECs2VbMhdeEr66_16delta_benchmarks.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.e)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast5IdentECs2VbMhdeEr66_16delta_benchmarks.exit.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.e)
          to label %common.resume unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #29
  unreachable

common.resume:                                    ; preds = %bb.b, %bb.k, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.q, %bb.f ], [ %i.i, %bb.b ], [ %i.i, %bb.k ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast5IdentECs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %bb.e
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.e)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs4lawaffTVVK_9sqlparser3ast5IdentEECs2VbMhdeEr66_16delta_benchmarks.exit

bb.h:                                             ; preds = %bb.c
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %.sroa.8.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %.sroa.8.0..sroa_idx4, ptr noundef nonnull align 16 dereferenceable(64) %.sroa.67.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i64 %i.k, ptr %i.c, align 16
  %.sroa.6.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.0..sroa_idx3, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  %i.s = load i64, ptr %i.e, align 8, !range !60, !noundef !11
  %.not = icmp eq i64 %i.s, -9223372036854775808
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  call void @_RNvMsC_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB5_4Expr16alias_if_changed(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(none) dereferenceable(112) %0, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(112) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs4lawaffTVVK_9sqlparser3ast5IdentEECs2VbMhdeEr66_16delta_benchmarks.exit

bb.j:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %0, ptr noundef nonnull align 16 dereferenceable(112) %i.c, i64 112, i1 false)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs4lawaffTVVK_9sqlparser3ast5IdentEECs2VbMhdeEr66_16delta_benchmarks.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs4lawaffTVVK_9sqlparser3ast5IdentEECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.j, %bb.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast5IdentECs2VbMhdeEr66_16delta_benchmarks.exit.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

bb.k:                                             ; preds = %bb.b
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast5IdentECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.e) #30
          to label %common.resume unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #29
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCNvYNtNtCsanCXJAiNsO_18datafusion_catalog18information_schema25InformationSchemaProviderNtNtB8_6schema14SchemaProvider10table_type0Cs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %.sroa.7 = alloca [16 x i8], align 8            ; 2 uses
  %i.b = alloca [40 x i8], align 8                ; 9 uses
  %.sroa.4.sroa.3 = alloca [16 x i8], align 1     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.d = load i8, ptr %i.c, align 8, !range !396, !noundef !11
  switch i8 %i.d, label %default.unreachable17 [
    i8 0, label %bb.b
    i8 1, label %bb.e
    i8 2, label %bb.f
    i8 3, label %bb.h
  ]

default.unreachable17:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8, !nonnull !11, !align !69, !noundef !11
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !11, !noundef !11
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load i64, ptr %i.h, align 8, !noundef !11
  %i.j = invoke { ptr, ptr } @_RNvXso_NtCsanCXJAiNsO_18datafusion_catalog18information_schemaNtB5_25InformationSchemaProviderNtNtB7_6schema14SchemaProvider5table(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.e, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.g, i64 noundef %i.i)
          to label %bb.d unwind label %bb.c       ; 2 uses

bb.c:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.d:                                             ; preds = %bb.b
  %i.l = extractvalue { ptr, ptr } %i.j, 0
  %i.m = extractvalue { ptr, ptr } %i.j, 1
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %i.l, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %i.m, ptr %i.o, align 8
  br label %bb.h

.body:                                            ; preds = %bb.u, %bb.v, %bb.p, %bb.o, %bb.q, %bb.g, %bb.c
  %.pn = phi { ptr, i32 } [ %i.k, %bb.c ], [ %i.p, %bb.g ], [ %i.ab, %bb.o ], [ %i.ab, %bb.p ], [ %i.ah, %bb.q ], [ %i.at, %bb.v ], [ %i.at, %bb.u ]
  store i8 2, ptr %i.c, align 8
  resume { ptr, i32 } %.pn

bb.e:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #35
  unreachable

bb.f:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #35
  unreachable

bb.g:                                             ; preds = %bb.h
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.val3 = load ptr, ptr %i.r, align 8
  %i.q = getelementptr i8, ptr %1, i64 32
  %.val4 = load ptr, ptr %i.q, align 8, !nonnull !11, !align !69, !noundef !11
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB4_6option6OptionINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks(ptr %.val3, ptr nonnull %.val4) #30
          to label %.body unwind label %bb.z

bb.h:                                             ; preds = %bb.d, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  invoke void @_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultINtNtB8_6option6OptionINtNtB10_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.r, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.i unwind label %bb.g

bb.i:                                             ; preds = %bb.h
  %i.s = load i64, ptr %i.b, align 8, !range !3806, !noundef !11 ; 3 uses
  %i.t = icmp eq i64 %i.s, 21
  br i1 %i.t, label %bb.j, label %bb.k

common.ret:                                       ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultINtNtB5_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorE3mapIBJ_NtNtCs8VI8w5SIoU4_15datafusion_expr12table_source9TableTypeENCNCNvYNtNtB1H_18information_schema25InformationSchemaProviderNtNtB1H_6schema14SchemaProvider10table_type00ECs2VbMhdeEr66_16delta_benchmarks.exit, %bb.j
  %storemerge = phi i8 [ 1, %_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultINtNtB5_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorE3mapIBJ_NtNtCs8VI8w5SIoU4_15datafusion_expr12table_source9TableTypeENCNCNvYNtNtB1H_18information_schema25InformationSchemaProviderNtNtB1H_6schema14SchemaProvider10table_type00ECs2VbMhdeEr66_16delta_benchmarks.exit ], [ 3, %bb.j ]
  store i8 %storemerge, ptr %i.c, align 8
  ret void

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 21, ptr %0, align 8
  br label %common.ret

bb.k:                                             ; preds = %bb.i
  %.sroa.313.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.313.0.copyload = load ptr, ptr %.sroa.313.0..sroa_idx, align 8 ; 6 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8 ; 5 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.val = load ptr, ptr %i.r, align 8             ; 5 uses
  %i.u = getelementptr i8, ptr %1, i64 32
  %.val2 = load ptr, ptr %i.u, align 8, !nonnull !11, !align !69, !noundef !11 ; 5 uses
  %i.v = load ptr, ptr %.val2, align 8, !invariant.load !11 ; 2 uses
  %.not.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.v(ptr noundef nonnull %.val)
          to label %bb.m unwind label %bb.o

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.w = getelementptr inbounds nuw i8, ptr %.val2, i64 8
  %i.x = load i64, ptr %i.w, align 8, !range !64, !invariant.load !11 ; 2 uses
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB4_6option6OptionINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.z = getelementptr inbounds nuw i8, ptr %.val2, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !range !65, !invariant.load !11
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, -9223372036854775808) %i.x, i64 noundef range(i64 1, 536870913) %i.aa) #31
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB4_6option6OptionINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit

bb.o:                                             ; preds = %bb.l
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.val2, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !range !64, !invariant.load !11 ; 2 uses
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %.body, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.af = getelementptr inbounds nuw i8, ptr %.val2, i64 16
  %i.ag = load i64, ptr %i.af, align 8, !range !65, !invariant.load !11
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, -9223372036854775808) %i.ad, i64 noundef range(i64 1, 536870913) %i.ag) #31
  br label %.body

bb.q:                                             ; preds = %bb.x
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB4_6option6OptionINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.n, %bb.m
  call void @llvm.experimental.noalias.scope.decl(metadata !3807)
  call void @llvm.experimental.noalias.scope.decl(metadata !3810)
  %.not.i = icmp eq i64 %i.s, 20
  br i1 %.not.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB4_6option6OptionINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit
  %i.ai = ptrtoint ptr %.sroa.313.0.copyload to i64 ; 2 uses
  %.sroa.313.0.extract.trunc = trunc i64 %i.ai to i8
  %.sroa.313.1.extract.shift = lshr i64 %i.ai, 8
  %.sroa.313.1.extract.trunc = trunc nuw i64 %.sroa.313.1.extract.shift to i56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.sroa.4.sroa.3, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7, i64 16, i1 false), !alias.scope !3812
  br label %_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultINtNtB5_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorE3mapIBJ_NtNtCs8VI8w5SIoU4_15datafusion_expr12table_source9TableTypeENCNCNvYNtNtB1H_18information_schema25InformationSchemaProviderNtNtB1H_6schema14SchemaProvider10table_type00ECs2VbMhdeEr66_16delta_benchmarks.exit

bb.s:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB4_6option6OptionINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit
  %.not.i.i5 = icmp eq ptr %.sroa.313.0.copyload, null
  br i1 %.not.i.i5, label %_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultINtNtB5_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorE3mapIBJ_NtNtCs8VI8w5SIoU4_15datafusion_expr12table_source9TableTypeENCNCNvYNtNtB1H_18information_schema25InformationSchemaProviderNtNtB1H_6schema14SchemaProvider10table_type00ECs2VbMhdeEr66_16delta_benchmarks.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !3813)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3812
  store ptr %.sroa.313.0.copyload, ptr %i.a, align 8, !noalias !3816
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.sroa.6.0.copyload, ptr %i.aj, align 8, !noalias !3816
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload, i64 16
  %i.al = load i64, ptr %i.ak, align 8, !range !65, !invariant.load !11, !alias.scope !3813, !noalias !3812
  %i.am = add nsw i64 %i.al, -1
  %i.an = and i64 %i.am, -16
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.313.0.copyload, i64 %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload, i64 56
  %i.ar = load ptr, ptr %i.aq, align 8, !invariant.load !11, !alias.scope !3813, !noalias !3812, !nonnull !11
  %i.as = invoke noundef i8 %i.ar(ptr noundef nonnull %i.ap)
          to label %bb.w unwind label %bb.u, !noalias !3812

bb.u:                                             ; preds = %bb.t
  %i.at = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.au = atomicrmw sub ptr %.sroa.313.0.copyload, i64 1 release, align 8, !noalias !3817
  %i.av = icmp eq i64 %i.au, 1
  br i1 %i.av, label %bb.v, label %.body

bb.v:                                             ; preds = %bb.u
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a) #34
          to label %.body unwind label %bb.y, !noalias !3812

bb.w:                                             ; preds = %bb.t
  %i.aw = atomicrmw sub ptr %.sroa.313.0.copyload, i64 1 release, align 8, !noalias !3822
  %i.ax = icmp eq i64 %i.aw, 1
  br i1 %i.ax, label %bb.x, label %_RNCNCNCNvYNtNtCsanCXJAiNsO_18datafusion_catalog18information_schema25InformationSchemaProviderNtNtBc_6schema14SchemaProvider10table_type000Cs2VbMhdeEr66_16delta_benchmarks.exit.i.i

bb.x:                                             ; preds = %bb.w
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a) #34
          to label %_RNCNCNCNvYNtNtCsanCXJAiNsO_18datafusion_catalog18information_schema25InformationSchemaProviderNtNtBc_6schema14SchemaProvider10table_type000Cs2VbMhdeEr66_16delta_benchmarks.exit.i.i unwind label %bb.q

bb.y:                                             ; preds = %bb.v
  %i.ay = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #29, !noalias !3812
  unreachable

_RNCNCNCNvYNtNtCsanCXJAiNsO_18datafusion_catalog18information_schema25InformationSchemaProviderNtNtBc_6schema14SchemaProvider10table_type000Cs2VbMhdeEr66_16delta_benchmarks.exit.i.i: ; preds = %bb.x, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3812
  br label %_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultINtNtB5_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorE3mapIBJ_NtNtCs8VI8w5SIoU4_15datafusion_expr12table_source9TableTypeENCNCNvYNtNtB1H_18information_schema25InformationSchemaProviderNtNtB1H_6schema14SchemaProvider10table_type00ECs2VbMhdeEr66_16delta_benchmarks.exit

_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultINtNtB5_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorE3mapIBJ_NtNtCs8VI8w5SIoU4_15datafusion_expr12table_source9TableTypeENCNCNvYNtNtB1H_18information_schema25InformationSchemaProviderNtNtB1H_6schema14SchemaProvider10table_type00ECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.r, %_RNCNCNCNvYNtNtCsanCXJAiNsO_18datafusion_catalog18information_schema25InformationSchemaProviderNtNtBc_6schema14SchemaProvider10table_type000Cs2VbMhdeEr66_16delta_benchmarks.exit.i.i, %bb.s
  %.sroa.4.sroa.0.0 = phi i56 [ %.sroa.313.1.extract.trunc, %bb.r ], [ undef, %_RNCNCNCNvYNtNtCsanCXJAiNsO_18datafusion_catalog18information_schema25InformationSchemaProviderNtNtBc_6schema14SchemaProvider10table_type000Cs2VbMhdeEr66_16delta_benchmarks.exit.i.i ], [ undef, %bb.s ]
  %.sroa.4.sroa.2.0 = phi ptr [ %.sroa.6.0.copyload, %bb.r ], [ undef, %_RNCNCNCNvYNtNtCsanCXJAiNsO_18datafusion_catalog18information_schema25InformationSchemaProviderNtNtBc_6schema14SchemaProvider10table_type000Cs2VbMhdeEr66_16delta_benchmarks.exit.i.i ], [ undef, %bb.s ]
  %.sroa.3.0 = phi i8 [ %.sroa.313.0.extract.trunc, %bb.r ], [ %i.as, %_RNCNCNCNvYNtNtCsanCXJAiNsO_18datafusion_catalog18information_schema25InformationSchemaProviderNtNtBc_6schema14SchemaProvider10table_type000Cs2VbMhdeEr66_16delta_benchmarks.exit.i.i ], [ 3, %bb.s ]
  store i64 %i.s, ptr %0, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sroa.3.0, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i56 %.sroa.4.sroa.0.0, ptr %.sroa.4.0..sroa_idx, align 1
  %.sroa.4.sroa.2.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.4.sroa.2.0, ptr %.sroa.4.sroa.2.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx, ptr noundef nonnull align 1 dereferenceable(16) %.sroa.4.sroa.3, i64 16, i1 false)
  br label %common.ret

bb.z:                                             ; preds = %bb.g
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #29
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCNvYNtNtNtCsanCXJAiNsO_18datafusion_catalog6memory6schema20MemorySchemaProviderNtNtBa_6schema14SchemaProvider10table_type0Cs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %.sroa.7 = alloca [16 x i8], align 8            ; 2 uses
  %i.b = alloca [40 x i8], align 8                ; 9 uses
  %.sroa.4.sroa.3 = alloca [16 x i8], align 1     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.d = load i8, ptr %i.c, align 8, !range !396, !noundef !11
  switch i8 %i.d, label %default.unreachable17 [
    i8 0, label %bb.b
    i8 1, label %bb.e
    i8 2, label %bb.f
    i8 3, label %bb.h
  ]

default.unreachable17:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8, !nonnull !11, !align !69, !noundef !11
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !11, !noundef !11
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load i64, ptr %i.h, align 8, !noundef !11
  %i.j = invoke { ptr, ptr } @_RNvXs1_NtNtCsanCXJAiNsO_18datafusion_catalog6memory6schemaNtB5_20MemorySchemaProviderNtNtB9_6schema14SchemaProvider5table(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.e, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.g, i64 noundef %i.i)
          to label %bb.d unwind label %bb.c       ; 2 uses

bb.c:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.d:                                             ; preds = %bb.b
  %i.l = extractvalue { ptr, ptr } %i.j, 0
  %i.m = extractvalue { ptr, ptr } %i.j, 1
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %i.l, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %i.m, ptr %i.o, align 8
  br label %bb.h

.body:                                            ; preds = %bb.u, %bb.v, %bb.p, %bb.o, %bb.q, %bb.g, %bb.c
  %.pn = phi { ptr, i32 } [ %i.k, %bb.c ], [ %i.p, %bb.g ], [ %i.ab, %bb.o ], [ %i.ab, %bb.p ], [ %i.ah, %bb.q ], [ %i.at, %bb.v ], [ %i.at, %bb.u ]
  store i8 2, ptr %i.c, align 8
  resume { ptr, i32 } %.pn

bb.e:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #35
  unreachable

bb.f:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #35
  unreachable

bb.g:                                             ; preds = %bb.h
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.val3 = load ptr, ptr %i.r, align 8
  %i.q = getelementptr i8, ptr %1, i64 32
  %.val4 = load ptr, ptr %i.q, align 8, !nonnull !11, !align !69, !noundef !11
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB4_6option6OptionINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks(ptr %.val3, ptr nonnull %.val4) #30
          to label %.body unwind label %bb.z

bb.h:                                             ; preds = %bb.d, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  invoke void @_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultINtNtB8_6option6OptionINtNtB10_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.r, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.i unwind label %bb.g

bb.i:                                             ; preds = %bb.h
  %i.s = load i64, ptr %i.b, align 8, !range !3806, !noundef !11 ; 3 uses
  %i.t = icmp eq i64 %i.s, 21
  br i1 %i.t, label %bb.j, label %bb.k

common.ret:                                       ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultINtNtB5_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorE3mapIBJ_NtNtCs8VI8w5SIoU4_15datafusion_expr12table_source9TableTypeENCNCNvYNtNtNtB1H_6memory6schema20MemorySchemaProviderNtNtB1H_6schema14SchemaProvider10table_type00ECs2VbMhdeEr66_16delta_benchmarks.exit, %bb.j
  %storemerge = phi i8 [ 1, %_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultINtNtB5_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorE3mapIBJ_NtNtCs8VI8w5SIoU4_15datafusion_expr12table_source9TableTypeENCNCNvYNtNtNtB1H_6memory6schema20MemorySchemaProviderNtNtB1H_6schema14SchemaProvider10table_type00ECs2VbMhdeEr66_16delta_benchmarks.exit ], [ 3, %bb.j ]
  store i8 %storemerge, ptr %i.c, align 8
  ret void

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 21, ptr %0, align 8
  br label %common.ret

bb.k:                                             ; preds = %bb.i
  %.sroa.313.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.313.0.copyload = load ptr, ptr %.sroa.313.0..sroa_idx, align 8 ; 6 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8 ; 5 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.val = load ptr, ptr %i.r, align 8             ; 5 uses
  %i.u = getelementptr i8, ptr %1, i64 32
  %.val2 = load ptr, ptr %i.u, align 8, !nonnull !11, !align !69, !noundef !11 ; 5 uses
  %i.v = load ptr, ptr %.val2, align 8, !invariant.load !11 ; 2 uses
  %.not.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.v(ptr noundef nonnull %.val)
          to label %bb.m unwind label %bb.o

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.w = getelementptr inbounds nuw i8, ptr %.val2, i64 8
  %i.x = load i64, ptr %i.w, align 8, !range !64, !invariant.load !11 ; 2 uses
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB4_6option6OptionINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.z = getelementptr inbounds nuw i8, ptr %.val2, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !range !65, !invariant.load !11
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, -9223372036854775808) %i.x, i64 noundef range(i64 1, 536870913) %i.aa) #31
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB4_6option6OptionINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit

bb.o:                                             ; preds = %bb.l
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.val2, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !range !64, !invariant.load !11 ; 2 uses
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %.body, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.af = getelementptr inbounds nuw i8, ptr %.val2, i64 16
  %i.ag = load i64, ptr %i.af, align 8, !range !65, !invariant.load !11
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, -9223372036854775808) %i.ad, i64 noundef range(i64 1, 536870913) %i.ag) #31
  br label %.body

bb.q:                                             ; preds = %bb.x
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB4_6option6OptionINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.n, %bb.m
  call void @llvm.experimental.noalias.scope.decl(metadata !3827)
  call void @llvm.experimental.noalias.scope.decl(metadata !3830)
  %.not.i = icmp eq i64 %i.s, 20
  br i1 %.not.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB4_6option6OptionINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit
  %i.ai = ptrtoint ptr %.sroa.313.0.copyload to i64 ; 2 uses
  %.sroa.313.0.extract.trunc = trunc i64 %i.ai to i8
  %.sroa.313.1.extract.shift = lshr i64 %i.ai, 8
  %.sroa.313.1.extract.trunc = trunc nuw i64 %.sroa.313.1.extract.shift to i56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.sroa.4.sroa.3, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7, i64 16, i1 false), !alias.scope !3832
  br label %_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultINtNtB5_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorE3mapIBJ_NtNtCs8VI8w5SIoU4_15datafusion_expr12table_source9TableTypeENCNCNvYNtNtNtB1H_6memory6schema20MemorySchemaProviderNtNtB1H_6schema14SchemaProvider10table_type00ECs2VbMhdeEr66_16delta_benchmarks.exit

bb.s:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB4_6option6OptionINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit
  %.not.i.i5 = icmp eq ptr %.sroa.313.0.copyload, null
  br i1 %.not.i.i5, label %_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultINtNtB5_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorE3mapIBJ_NtNtCs8VI8w5SIoU4_15datafusion_expr12table_source9TableTypeENCNCNvYNtNtNtB1H_6memory6schema20MemorySchemaProviderNtNtB1H_6schema14SchemaProvider10table_type00ECs2VbMhdeEr66_16delta_benchmarks.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !3833)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3832
  store ptr %.sroa.313.0.copyload, ptr %i.a, align 8, !noalias !3836
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.sroa.6.0.copyload, ptr %i.aj, align 8, !noalias !3836
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload, i64 16
  %i.al = load i64, ptr %i.ak, align 8, !range !65, !invariant.load !11, !alias.scope !3833, !noalias !3832
  %i.am = add nsw i64 %i.al, -1
  %i.an = and i64 %i.am, -16
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.313.0.copyload, i64 %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload, i64 56
  %i.ar = load ptr, ptr %i.aq, align 8, !invariant.load !11, !alias.scope !3833, !noalias !3832, !nonnull !11
  %i.as = invoke noundef i8 %i.ar(ptr noundef nonnull %i.ap)
          to label %bb.w unwind label %bb.u, !noalias !3832

bb.u:                                             ; preds = %bb.t
  %i.at = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.au = atomicrmw sub ptr %.sroa.313.0.copyload, i64 1 release, align 8, !noalias !3837
  %i.av = icmp eq i64 %i.au, 1
  br i1 %i.av, label %bb.v, label %.body

bb.v:                                             ; preds = %bb.u
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a) #34
          to label %.body unwind label %bb.y, !noalias !3832

bb.w:                                             ; preds = %bb.t
  %i.aw = atomicrmw sub ptr %.sroa.313.0.copyload, i64 1 release, align 8, !noalias !3842
  %i.ax = icmp eq i64 %i.aw, 1
  br i1 %i.ax, label %bb.x, label %_RNCNCNCNvYNtNtNtCsanCXJAiNsO_18datafusion_catalog6memory6schema20MemorySchemaProviderNtNtBe_6schema14SchemaProvider10table_type000Cs2VbMhdeEr66_16delta_benchmarks.exit.i.i

bb.x:                                             ; preds = %bb.w
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a) #34
          to label %_RNCNCNCNvYNtNtNtCsanCXJAiNsO_18datafusion_catalog6memory6schema20MemorySchemaProviderNtNtBe_6schema14SchemaProvider10table_type000Cs2VbMhdeEr66_16delta_benchmarks.exit.i.i unwind label %bb.q

bb.y:                                             ; preds = %bb.v
  %i.ay = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #29, !noalias !3832
  unreachable

_RNCNCNCNvYNtNtNtCsanCXJAiNsO_18datafusion_catalog6memory6schema20MemorySchemaProviderNtNtBe_6schema14SchemaProvider10table_type000Cs2VbMhdeEr66_16delta_benchmarks.exit.i.i: ; preds = %bb.x, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3832
  br label %_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultINtNtB5_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorE3mapIBJ_NtNtCs8VI8w5SIoU4_15datafusion_expr12table_source9TableTypeENCNCNvYNtNtNtB1H_6memory6schema20MemorySchemaProviderNtNtB1H_6schema14SchemaProvider10table_type00ECs2VbMhdeEr66_16delta_benchmarks.exit

_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultINtNtB5_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorE3mapIBJ_NtNtCs8VI8w5SIoU4_15datafusion_expr12table_source9TableTypeENCNCNvYNtNtNtB1H_6memory6schema20MemorySchemaProviderNtNtB1H_6schema14SchemaProvider10table_type00ECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.r, %_RNCNCNCNvYNtNtNtCsanCXJAiNsO_18datafusion_catalog6memory6schema20MemorySchemaProviderNtNtBe_6schema14SchemaProvider10table_type000Cs2VbMhdeEr66_16delta_benchmarks.exit.i.i, %bb.s
  %.sroa.4.sroa.0.0 = phi i56 [ %.sroa.313.1.extract.trunc, %bb.r ], [ undef, %_RNCNCNCNvYNtNtNtCsanCXJAiNsO_18datafusion_catalog6memory6schema20MemorySchemaProviderNtNtBe_6schema14SchemaProvider10table_type000Cs2VbMhdeEr66_16delta_benchmarks.exit.i.i ], [ undef, %bb.s ]
  %.sroa.4.sroa.2.0 = phi ptr [ %.sroa.6.0.copyload, %bb.r ], [ undef, %_RNCNCNCNvYNtNtNtCsanCXJAiNsO_18datafusion_catalog6memory6schema20MemorySchemaProviderNtNtBe_6schema14SchemaProvider10table_type000Cs2VbMhdeEr66_16delta_benchmarks.exit.i.i ], [ undef, %bb.s ]
  %.sroa.3.0 = phi i8 [ %.sroa.313.0.extract.trunc, %bb.r ], [ %i.as, %_RNCNCNCNvYNtNtNtCsanCXJAiNsO_18datafusion_catalog6memory6schema20MemorySchemaProviderNtNtBe_6schema14SchemaProvider10table_type000Cs2VbMhdeEr66_16delta_benchmarks.exit.i.i ], [ 3, %bb.s ]
  store i64 %i.s, ptr %0, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sroa.3.0, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i56 %.sroa.4.sroa.0.0, ptr %.sroa.4.0..sroa_idx, align 1
  %.sroa.4.sroa.2.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.4.sroa.2.0, ptr %.sroa.4.sroa.2.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx, ptr noundef nonnull align 1 dereferenceable(16) %.sroa.4.sroa.3, i64 16, i1 false)
  br label %common.ret

bb.z:                                             ; preds = %bb.g
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #29
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array10byte_array16GenericByteArrayINtNtBb_5types17GenericStringTypelEENtB9_5Array9into_data6vtableCs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable sret([136 x i8]) align 8 captures(address) dereferenceable(136) %0, ptr noundef nonnull captures(address) %1) unnamed_addr #4 {
bb.a:
  tail call fastcc void @_RNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array10byte_arrayNtNtCs3v6NujDNJcu_10arrow_data4data9ArrayDataINtNtCsbvkFyIu7lgC_4core7convert4FromINtB5_16GenericByteArrayINtNtB9_5types17GenericStringTypelEEE4fromCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 captures(address) dereferenceable(136) %0, ptr noalias noundef align 8 captures(address) dereferenceable(120) %1)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_RNvMNtCsbvkFyIu7lgC_4core5sliceSh11starts_withCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull readonly captures(none) %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias noundef nonnull readonly captures(none) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #5 {
bb.a:
  %.not = icmp samesign ult i64 %1, %3
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a, %bb.c
  %.sroa.0.0 = phi i1 [ %i.a, %bb.c ], [ false, %bb.a ]
  ret i1 %.sroa.0.0

bb.c:                                             ; preds = %bb.a
  %bcmp.i = tail call i32 @bcmp(ptr nonnull readonly %2, ptr nonnull readonly %0, i64 %3)
  %i.a = icmp eq i32 %bcmp.i, 0
  br label %bb.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_RNvMNtCsbvkFyIu7lgC_4core5sliceSh9ends_withCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull readonly captures(none) %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias noundef nonnull readonly captures(none) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #5 {
bb.a:
  %.not = icmp samesign ult i64 %1, %3
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a, %bb.c
  %.sroa.0.0 = phi i1 [ %i.c, %bb.c ], [ false, %bb.a ]
  ret i1 %.sroa.0.0

bb.c:                                             ; preds = %bb.a
  %i.a = sub nuw nsw i64 %1, %3
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %i.a
  %bcmp.i = tail call i32 @bcmp(ptr nonnull readonly %2, ptr nonnull readonly %i.b, i64 %3)
  %i.c = icmp eq i32 %bcmp.i, 0
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef ptr @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4listINtB2_10OwnedTasksINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEE10bind_innerCs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull align 8 %0, ptr noundef nonnull initializes((24, 32)) %1, ptr noundef nonnull %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i64, ptr %i.c, align 8, !range !3847, !noundef !11
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %i.d, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !noalias !3848, !nonnull !11, !align !69, !noundef !11
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  %i.i = load i64, ptr %i.h, align 8, !noalias !3848, !noundef !11
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 %i.i
  %i.k = load i64, ptr %i.j, align 8, !range !3847, !noalias !3848, !noundef !11 ; 3 uses
  %i.l = load ptr, ptr %0, align 8, !noalias !3848, !nonnull !11, !noundef !11
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load i64, ptr %i.m, align 8, !noalias !3848, !noundef !11
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = load i64, ptr %i.o, align 8, !noalias !3848, !noundef !11
  %i.q = and i64 %i.p, %i.k                       ; 2 uses
  %i.r = icmp ult i64 %i.q, %i.n
  tail call void @llvm.assume(i1 %i.r)
  %i.s = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %i.q ; 10 uses
  %i.t = cmpxchg weak ptr %i.s, i8 0, i8 1 acquire monotonic, align 1, !noalias !3848
  %i.u = extractvalue { i8, i1 } %i.t, 1
  br i1 %i.u, label %bb.f, label %bb.b, !prof !31

bb.b:                                             ; preds = %bb.a
  %i.v = invoke noundef zeroext i1 @_RNvMs1_NtCs8fBJGmGoRiY_11parking_lot9raw_mutexNtB5_8RawMutex9lock_slow(ptr noundef nonnull %i.s, i64 undef, i32 noundef 1000000000)
          to label %bb.f unwind label %bb.d       ; 0 uses

.body:                                            ; preds = %bb.e, %bb.n, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCskQDtHcQtBkN_5tokio7runtime4task4TaskINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtBL_9scheduler14current_thread6HandleEEECs2VbMhdeEr66_16delta_benchmarks.exit.i, %bb.d
  %.pn = phi { ptr, i32 } [ %i.x, %bb.d ], [ %i.y, %bb.e ], [ %i.aq, %bb.n ], [ %i.aq, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCskQDtHcQtBkN_5tokio7runtime4task4TaskINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtBL_9scheduler14current_thread6HandleEEECs2VbMhdeEr66_16delta_benchmarks.exit.i ]
  %.sroa.02.0 = phi i1 [ true, %bb.d ], [ %.sroa.02.1, %bb.e ], [ false, %bb.n ], [ false, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCskQDtHcQtBkN_5tokio7runtime4task4TaskINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtBL_9scheduler14current_thread6HandleEEECs2VbMhdeEr66_16delta_benchmarks.exit.i ]
  %i.w = invoke noundef zeroext i1 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %2)
          to label %.noexc11 unwind label %bb.v

.noexc11:                                         ; preds = %.body
  br i1 %i.w, label %bb.c, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCskQDtHcQtBkN_5tokio7runtime4task8NotifiedINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtBL_9scheduler14current_thread6HandleEEECs2VbMhdeEr66_16delta_benchmarks.exit

bb.c:                                             ; preds = %.noexc11
  invoke void @_RNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task3rawNtB4_7RawTask7dealloc(ptr noundef nonnull %2)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCskQDtHcQtBkN_5tokio7runtime4task8NotifiedINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtBL_9scheduler14current_thread6HandleEEECs2VbMhdeEr66_16delta_benchmarks.exit unwind label %bb.v

bb.d:                                             ; preds = %bb.b
  %i.x = landingpad { ptr, i32 }
end_hunk_12
begin_hunk_13_@_RNvMs2_NtNtCskQDtHcQtBkN_5tokio4util17idle_notified_setINtB5_15IdleNotifiedSetINtNtNtNtB9_7runtime4task4join10JoinHandleTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEE11insert_idleCs2VbMhdeEr66_16delta_benchmarks:bb.a
  store i64 1, ptr %i.a, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store ptr %i.f, ptr %i.j, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr %1, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i8 1, ptr %.sroa.7.0..sroa_idx, align 8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #31, !noalias !3879
  %i.k = tail call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 16, 137) 56, i64 noundef range(i64 8, 17) 8) #31, !noalias !3879 ; 3 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.c, label %bb.j, !prof !2595

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #36
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.n = atomicrmw sub ptr %i.f, i64 1 release, align 8, !noalias !3882
  %i.o = icmp eq i64 %i.n, 1
  br i1 %i.o, label %bb.e, label %common.resume

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11parking_lot5MutexINtNtNtBP_4util17idle_notified_set10ListsInnerINtNtNtNtBP_7runtime4task4join10JoinHandleTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB7_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEEE9drop_slowCs5wg436RVUAP_24datafusion_physical_plan(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.j) #34
          to label %common.resume unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #29
  unreachable

common.resume:                                    ; preds = %bb.h, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11parking_lot10MutexGuardINtNtNtBP_4util17idle_notified_set10ListsInnerINtNtNtNtBP_7runtime4task4join10JoinHandleTjINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEEECs2VbMhdeEr66_16delta_benchmarks.exit, %bb.e, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.m, %bb.e ], [ %i.m, %bb.d ], [ %.pn, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11parking_lot10MutexGuardINtNtNtBP_4util17idle_notified_set10ListsInnerINtNtNtNtBP_7runtime4task4join10JoinHandleTjINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEEECs2VbMhdeEr66_16delta_benchmarks.exit ], [ %.pn, %bb.h ]
  resume { ptr, i32 } %common.resume.op

bb.g:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11parking_lot10MutexGuardINtNtNtBP_4util17idle_notified_set10ListsInnerINtNtNtNtBP_7runtime4task4join10JoinHandleTjINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEEECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.o, %bb.p, %bb.i
  %.pn = phi { ptr, i32 } [ %i.t, %bb.i ], [ %i.ac, %bb.p ], [ %i.ac, %bb.o ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3887)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3890)
  %i.q = load ptr, ptr %i.b, align 8, !alias.scope !3893, !nonnull !11, !noundef !11
  %i.r = atomicrmw sub ptr %i.q, i64 1 release, align 8, !noalias !3893
  %i.s = icmp eq i64 %i.r, 1
  br i1 %i.s, label %bb.h, label %common.resume

bb.h:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11parking_lot10MutexGuardINtNtNtBP_4util17idle_notified_set10ListsInnerINtNtNtNtBP_7runtime4task4join10JoinHandleTjINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEEECs2VbMhdeEr66_16delta_benchmarks.exit
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtCskQDtHcQtBkN_5tokio4util17idle_notified_set9ListEntryINtNtNtNtBN_7runtime4task4join10JoinHandleTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB7_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEE9drop_slowCs5wg436RVUAP_24datafusion_physical_plan(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b) #34
          to label %common.resume unwind label %bb.s

bb.i:                                             ; preds = %bb.r, %bb.k
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11parking_lot10MutexGuardINtNtNtBP_4util17idle_notified_set10ListsInnerINtNtNtNtBP_7runtime4task4join10JoinHandleTjINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEEECs2VbMhdeEr66_16delta_benchmarks.exit

bb.j:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.k, ptr noundef nonnull align 8 dereferenceable(56) %i.a, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr %i.k, ptr %i.b, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 6 uses
  %i.v = cmpxchg weak ptr %i.u, i8 0, i8 1 acquire monotonic, align 1
  %i.w = extractvalue { i8, i1 } %i.v, 1
  br i1 %i.w, label %bb.l, label %bb.k, !prof !31

bb.k:                                             ; preds = %bb.j
  %i.x = invoke noundef zeroext i1 @_RNvMs1_NtCs8fBJGmGoRiY_11parking_lot9raw_mutexNtB5_8RawMutex9lock_slow(ptr noundef nonnull %i.u, i64 undef, i32 noundef 1000000000)
          to label %bb.l unwind label %bb.i       ; 0 uses

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.y = load ptr, ptr %i.b, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %i.z = atomicrmw add ptr %i.y, i64 1 monotonic, align 8
  %i.aa = icmp slt i64 %i.z, 0
  br i1 %i.aa, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  invoke void @_RNvMs3_NtNtCskQDtHcQtBkN_5tokio4util11linked_listINtB5_10LinkedListINtNtB7_17idle_notified_set9ListEntryINtNtNtNtB9_7runtime4task4join10JoinHandleTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEB13_E10push_frontCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ab, ptr noundef nonnull %i.y)
          to label %bb.q unwind label %bb.o

bb.n:                                             ; preds = %bb.l
  tail call void @llvm.trap()
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.ac = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ad = cmpxchg ptr %i.u, i8 1, i8 0 release monotonic, align 1
  %i.ae = extractvalue { i8, i1 } %i.ad, 1
  br i1 %i.ae, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11parking_lot10MutexGuardINtNtNtBP_4util17idle_notified_set10ListsInnerINtNtNtNtBP_7runtime4task4join10JoinHandleTjINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEEECs2VbMhdeEr66_16delta_benchmarks.exit, label %bb.p, !prof !31

bb.p:                                             ; preds = %bb.o
  invoke void @_RNvMs1_NtCs8fBJGmGoRiY_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.u, i1 noundef zeroext false)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11parking_lot10MutexGuardINtNtNtBP_4util17idle_notified_set10ListsInnerINtNtNtNtBP_7runtime4task4join10JoinHandleTjINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEEECs2VbMhdeEr66_16delta_benchmarks.exit unwind label %bb.s

bb.q:                                             ; preds = %bb.m
  %i.af = cmpxchg ptr %i.u, i8 1, i8 0 release monotonic, align 1
  %i.ag = extractvalue { i8, i1 } %i.af, 1
  br i1 %i.ag, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11parking_lot10MutexGuardINtNtNtBP_4util17idle_notified_set10ListsInnerINtNtNtNtBP_7runtime4task4join10JoinHandleTjINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEEECs2VbMhdeEr66_16delta_benchmarks.exit13, label %bb.r, !prof !31

bb.r:                                             ; preds = %bb.q
  invoke void @_RNvMs1_NtCs8fBJGmGoRiY_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.u, i1 noundef zeroext false)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11parking_lot10MutexGuardINtNtNtBP_4util17idle_notified_set10ListsInnerINtNtNtNtBP_7runtime4task4join10JoinHandleTjINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEEECs2VbMhdeEr66_16delta_benchmarks.exit13 unwind label %bb.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11parking_lot10MutexGuardINtNtNtBP_4util17idle_notified_set10ListsInnerINtNtNtNtBP_7runtime4task4join10JoinHandleTjINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEEECs2VbMhdeEr66_16delta_benchmarks.exit13: ; preds = %bb.q, %bb.r
  %i.ah = load ptr, ptr %i.b, align 8, !nonnull !11, !noundef !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ai = insertvalue { ptr, ptr } poison, ptr %i.ah, 0
  %i.aj = insertvalue { ptr, ptr } %i.ai, ptr %0, 1
  ret { ptr, ptr } %i.aj

bb.s:                                             ; preds = %bb.p, %bb.h
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #29
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvMs2_NtNtCskQDtHcQtBkN_5tokio4util17idle_notified_setINtB5_15IdleNotifiedSetINtNtNtNtB9_7runtime4task4join10JoinHandleTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEE12pop_notifiedCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(16) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !11
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11parking_lot10MutexGuardINtNtNtBP_4util17idle_notified_set10ListsInnerINtNtNtNtBP_7runtime4task4join10JoinHandleTjINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEEECs2VbMhdeEr66_16delta_benchmarks.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !nonnull !11, !noundef !11 ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 8 uses
  %i.g = cmpxchg weak ptr %i.f, i8 0, i8 1 acquire monotonic, align 1
  %i.h = extractvalue { i8, i1 } %i.g, 1
  br i1 %i.h, label %bb.d, label %bb.c, !prof !31

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11parking_lot10MutexGuardINtNtNtBP_4util17idle_notified_set10ListsInnerINtNtNtNtBP_7runtime4task4join10JoinHandleTjINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEEECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.o, %bb.n, %bb.a, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11parking_lot10MutexGuardINtNtNtBP_4util17idle_notified_set10ListsInnerINtNtNtNtBP_7runtime4task4join10JoinHandleTjINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEEECs2VbMhdeEr66_16delta_benchmarks.exit20
  %.sroa.0.0 = phi ptr [ null, %bb.a ], [ %i.ar, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11parking_lot10MutexGuardINtNtNtBP_4util17idle_notified_set10ListsInnerINtNtNtNtBP_7runtime4task4join10JoinHandleTjINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEEECs2VbMhdeEr66_16delta_benchmarks.exit20 ], [ null, %bb.n ], [ null, %bb.o ]
  %i.i = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0
  %i.j = insertvalue { ptr, ptr } %i.i, ptr %0, 1
  ret { ptr, ptr } %i.j

bb.c:                                             ; preds = %bb.b
  %i.k = tail call noundef zeroext i1 @_RNvMs1_NtCs8fBJGmGoRiY_11parking_lot9raw_mutexNtB5_8RawMutex9lock_slow(ptr noundef nonnull %i.f, i64 undef, i32 noundef 1000000000) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 56 ; 4 uses
  %i.m = load ptr, ptr %i.l, align 8, !align !69, !noundef !11 ; 2 uses
  %.not = icmp eq ptr %i.m, null
  %.pre = load ptr, ptr %1, align 8               ; 2 uses
  br i1 %.not, label %._crit_edge, label %bb.e

._crit_edge:                                      ; preds = %bb.d
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre31 = load ptr, ptr %.phi.trans.insert, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !noundef !11 ; 2 uses
  %i.q = load ptr, ptr %i.n, align 8, !noundef !11
  %i.r = icmp eq ptr %i.p, %i.q
  %.not11 = icmp eq ptr %.pre, %i.m
  %or.cond = select i1 %i.r, i1 %.not11, i1 false
  br i1 %or.cond, label %bb.g, label %bb.f

bb.f:                                             ; preds = %._crit_edge, %bb.e
  %i.s = phi ptr [ %.pre31, %._crit_edge ], [ %i.p, %bb.e ]
  %i.t = load ptr, ptr %.pre, align 8, !nonnull !11, !noundef !11
  %i.u = invoke { ptr, ptr } %i.t(ptr noundef %i.s)
          to label %bb.i unwind label %bb.h       ; 2 uses

bb.g:                                             ; preds = %bb.e, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECs2VbMhdeEr66_16delta_benchmarks.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.w = invoke noundef ptr @_RNvMs3_NtNtCskQDtHcQtBkN_5tokio4util11linked_listINtB5_10LinkedListINtNtB7_17idle_notified_set9ListEntryINtNtNtNtB9_7runtime4task4join10JoinHandleTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEB13_E8pop_backCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.v)
          to label %bb.l unwind label %bb.h       ; 5 uses

.noexc18:                                         ; preds = %bb.s, %bb.r
  br i1 %.sroa.08.1, label %.thread, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11parking_lot10MutexGuardINtNtNtBP_4util17idle_notified_set10ListsInnerINtNtNtNtBP_7runtime4task4join10JoinHandleTjINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEEECs2VbMhdeEr66_16delta_benchmarks.exit22

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.i:                                             ; preds = %bb.f
  %i.y = extractvalue { ptr, ptr } %i.u, 0        ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.y) ]
  %2 = extractvalue { ptr, ptr } %i.u, 1          ; 2 uses
  %.val16 = load ptr, ptr %i.l, align 8, !align !69, !noundef !11 ; 2 uses
  %i.z = icmp eq ptr %.val16, null
  br i1 %i.z, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECs2VbMhdeEr66_16delta_benchmarks.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr i8, ptr %i.e, i64 64      ; 2 uses
  %.val17 = load ptr, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %.val16, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !nonnull !11, !noundef !11
  invoke void %i.ac(ptr noundef %.val17)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECs2VbMhdeEr66_16delta_benchmarks.exit unwind label %bb.k, !inline_history !3894

bb.k:                                             ; preds = %bb.j
  %i.ad = landingpad { ptr, i32 }
          cleanup
  store ptr %i.y, ptr %i.l, align 8
  store ptr %2, ptr %i.aa, align 8
  br label %.thread

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.i, %bb.j
  store ptr %i.y, ptr %i.l, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  store ptr %2, ptr %i.ae, align 8
  br label %bb.g

bb.l:                                             ; preds = %bb.g
  %.not12 = icmp eq ptr %i.w, null
  br i1 %.not12, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  store ptr %i.w, ptr %i.a, align 8
  %i.af = atomicrmw add ptr %i.w, i64 1 monotonic, align 8
  %i.ag = icmp slt i64 %i.af, 0
  br i1 %i.ag, label %bb.q, label %bb.p

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ah = cmpxchg ptr %i.f, i8 1, i8 0 release monotonic, align 1
  %i.ai = extractvalue { i8, i1 } %i.ah, 1
  br i1 %i.ai, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11parking_lot10MutexGuardINtNtNtBP_4util17idle_notified_set10ListsInnerINtNtNtNtBP_7runtime4task4join10JoinHandleTjINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEEECs2VbMhdeEr66_16delta_benchmarks.exit, label %bb.o, !prof !31

bb.o:                                             ; preds = %bb.n
  tail call void @_RNvMs1_NtCs8fBJGmGoRiY_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.f, i1 noundef zeroext false)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11parking_lot10MutexGuardINtNtNtBP_4util17idle_notified_set10ListsInnerINtNtNtNtBP_7runtime4task4join10JoinHandleTjINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEEECs2VbMhdeEr66_16delta_benchmarks.exit

bb.p:                                             ; preds = %bb.m
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  invoke void @_RNvMs3_NtNtCskQDtHcQtBkN_5tokio4util11linked_listINtB5_10LinkedListINtNtB7_17idle_notified_set9ListEntryINtNtNtNtB9_7runtime4task4join10JoinHandleTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEB13_E10push_frontCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.aj, ptr noundef nonnull %i.w)
          to label %bb.t unwind label %bb.r

bb.q:                                             ; preds = %bb.m
  tail call void @llvm.trap()
  unreachable

bb.r:                                             ; preds = %bb.u, %bb.p
  %.sroa.08.1 = phi i1 [ false, %bb.u ], [ true, %bb.p ]
  %i.ak = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3895)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3898)
  %i.al = load ptr, ptr %i.a, align 8, !alias.scope !3901, !nonnull !11, !noundef !11
  %i.am = atomicrmw sub ptr %i.al, i64 1 release, align 8, !noalias !3901
  %i.an = icmp eq i64 %i.am, 1
  br i1 %i.an, label %bb.s, label %.noexc18

bb.s:                                             ; preds = %bb.r
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtCskQDtHcQtBkN_5tokio4util17idle_notified_set9ListEntryINtNtNtNtBN_7runtime4task4join10JoinHandleTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB7_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEE9drop_slowCs5wg436RVUAP_24datafusion_physical_plan(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a) #34
          to label %.noexc18 unwind label %bb.v

bb.t:                                             ; preds = %bb.p
  %i.ao = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  store i8 1, ptr %i.ao, align 1
  %i.ap = cmpxchg ptr %i.f, i8 1, i8 0 release monotonic, align 1
  %i.aq = extractvalue { i8, i1 } %i.ap, 1
  br i1 %i.aq, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11parking_lot10MutexGuardINtNtNtBP_4util17idle_notified_set10ListsInnerINtNtNtNtBP_7runtime4task4join10JoinHandleTjINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEEECs2VbMhdeEr66_16delta_benchmarks.exit20, label %bb.u, !prof !31

bb.u:                                             ; preds = %bb.t
  invoke void @_RNvMs1_NtCs8fBJGmGoRiY_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.f, i1 noundef zeroext false)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11parking_lot10MutexGuardINtNtNtBP_4util17idle_notified_set10ListsInnerINtNtNtNtBP_7runtime4task4join10JoinHandleTjINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEEECs2VbMhdeEr66_16delta_benchmarks.exit20 unwind label %bb.r

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11parking_lot10MutexGuardINtNtNtBP_4util17idle_notified_set10ListsInnerINtNtNtNtBP_7runtime4task4join10JoinHandleTjINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEEECs2VbMhdeEr66_16delta_benchmarks.exit20: ; preds = %bb.t, %bb.u
  %i.ar = load ptr, ptr %i.a, align 8, !nonnull !11, !noundef !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11parking_lot10MutexGuardINtNtNtBP_4util17idle_notified_set10ListsInnerINtNtNtNtBP_7runtime4task4join10JoinHandleTjINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEEECs2VbMhdeEr66_16delta_benchmarks.exit

bb.v:                                             ; preds = %bb.w, %bb.s
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11parking_lot10MutexGuardINtNtNtBP_4util17idle_notified_set10ListsInnerINtNtNtNtBP_7runtime4task4join10JoinHandleTjINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEEECs2VbMhdeEr66_16delta_benchmarks.exit22: ; preds = %.thread, %bb.w, %.noexc18
  %.pn29 = phi { ptr, i32 } [ %i.ak, %.noexc18 ], [ %.pn30, %bb.w ], [ %.pn30, %.thread ]
  resume { ptr, i32 } %.pn29

.thread:                                          ; preds = %bb.k, %bb.h, %.noexc18
  %.pn30 = phi { ptr, i32 } [ %i.ak, %.noexc18 ], [ %i.ad, %bb.k ], [ %i.x, %bb.h ] ; 2 uses
  %i.at = cmpxchg ptr %i.f, i8 1, i8 0 release monotonic, align 1
  %i.au = extractvalue { i8, i1 } %i.at, 1
  br i1 %i.au, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11parking_lot10MutexGuardINtNtNtBP_4util17idle_notified_set10ListsInnerINtNtNtNtBP_7runtime4task4join10JoinHandleTjINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEEECs2VbMhdeEr66_16delta_benchmarks.exit22, label %bb.w, !prof !31

bb.w:                                             ; preds = %.thread
  invoke void @_RNvMs1_NtCs8fBJGmGoRiY_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.f, i1 noundef zeroext false)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11parking_lot10MutexGuardINtNtNtBP_4util17idle_notified_set10ListsInnerINtNtNtNtBP_7runtime4task4join10JoinHandleTjINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEEECs2VbMhdeEr66_16delta_benchmarks.exit22 unwind label %bb.v
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RNvMs3_NtNtCskQDtHcQtBkN_5tokio4util17idle_notified_setINtB5_20EntryInOneOfTheListsINtNtNtNtB9_7runtime4task4join10JoinHandleTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEE6removeCs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull %0, ptr noalias noundef align 8 dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 7 uses
  store ptr %0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !noundef !11
  %i.f = add i64 %i.e, -1
  store i64 %i.f, ptr %i.d, align 8
  %i.g = load ptr, ptr %1, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 6 uses
  %i.i = cmpxchg weak ptr %i.h, i8 0, i8 1 acquire monotonic, align 1
  %i.j = extractvalue { i8, i1 } %i.i, 1
  br i1 %i.j, label %bb.e, label %bb.d, !prof !31

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11parking_lot10MutexGuardINtNtNtBP_4util17idle_notified_set10ListsInnerINtNtNtNtBP_7runtime4task4join10JoinHandleTjINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEEECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.i, %bb.j, %bb.c
  %.pn = phi { ptr, i32 } [ %i.n, %bb.c ], [ %i.v, %bb.j ], [ %i.v, %bb.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !3902)
  call void @llvm.experimental.noalias.scope.decl(metadata !3905)
  call void @llvm.experimental.noalias.scope.decl(metadata !3908)
  %i.k = load ptr, ptr %i.b, align 8, !alias.scope !3911, !nonnull !11, !noundef !11
  %i.l = atomicrmw sub ptr %i.k, i64 1 release, align 8, !noalias !3911
  %i.m = icmp eq i64 %i.l, 1
  br i1 %i.m, label %bb.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCskQDtHcQtBkN_5tokio4util17idle_notified_set20EntryInOneOfTheListsINtNtNtNtBN_7runtime4task4join10JoinHandleTjINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEECs2VbMhdeEr66_16delta_benchmarks.exit

bb.b:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11parking_lot10MutexGuardINtNtNtBP_4util17idle_notified_set10ListsInnerINtNtNtNtBP_7runtime4task4join10JoinHandleTjINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEEECs2VbMhdeEr66_16delta_benchmarks.exit
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtCskQDtHcQtBkN_5tokio4util17idle_notified_set9ListEntryINtNtNtNtBN_7runtime4task4join10JoinHandleTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB7_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEE9drop_slowCs5wg436RVUAP_24datafusion_physical_plan(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b) #34
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCskQDtHcQtBkN_5tokio4util17idle_notified_set20EntryInOneOfTheListsINtNtNtNtBN_7runtime4task4join10JoinHandleTjINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEECs2VbMhdeEr66_16delta_benchmarks.exit unwind label %bb.r

bb.c:                                             ; preds = %bb.p, %bb.d
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11parking_lot10MutexGuardINtNtNtBP_4util17idle_notified_set10ListsInnerINtNtNtNtBP_7runtime4task4join10JoinHandleTjINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEEECs2VbMhdeEr66_16delta_benchmarks.exit

bb.d:                                             ; preds = %bb.a
  %i.o = invoke noundef zeroext i1 @_RNvMs1_NtCs8fBJGmGoRiY_11parking_lot9raw_mutexNtB5_8RawMutex9lock_slow(ptr noundef nonnull %i.h, i64 undef, i32 noundef 1000000000)
          to label %bb.e unwind label %bb.c       ; 0 uses

bb.e:                                             ; preds = %bb.d, %bb.a
  %i.p = load ptr, ptr %i.b, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 48 ; 2 uses
  %i.r = load i8, ptr %i.q, align 1, !range !3912, !noundef !11
  store i8 2, ptr %i.q, align 1
  switch i8 %i.r, label %default.unreachable12 [
    i8 0, label %bb.h
    i8 1, label %bb.f
    i8 2, label %bb.g
  ], !prof !3913

default.unreachable12:                            ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #36
          to label %bb.o unwind label %bb.i

bb.h:                                             ; preds = %bb.e, %bb.f
  %.sink = phi i64 [ 40, %bb.f ], [ 24, %bb.e ]
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 %.sink
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.u = invoke noundef ptr @_RNvMs3_NtNtCskQDtHcQtBkN_5tokio4util11linked_listINtB5_10LinkedListINtNtB7_17idle_notified_set9ListEntryINtNtNtNtB9_7runtime4task4join10JoinHandleTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEB13_E6removeCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef nonnull %i.t)
          to label %bb.k unwind label %bb.i       ; 3 uses

bb.i:                                             ; preds = %bb.m, %bb.n, %bb.h, %bb.g
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.w = cmpxchg ptr %i.h, i8 1, i8 0 release monotonic, align 1
  %i.x = extractvalue { i8, i1 } %i.w, 1
  br i1 %i.x, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11parking_lot10MutexGuardINtNtNtBP_4util17idle_notified_set10ListsInnerINtNtNtNtBP_7runtime4task4join10JoinHandleTjINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEEECs2VbMhdeEr66_16delta_benchmarks.exit, label %bb.j, !prof !31

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvMs1_NtCs8fBJGmGoRiY_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.h, i1 noundef zeroext false)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11parking_lot10MutexGuardINtNtNtBP_4util17idle_notified_set10ListsInnerINtNtNtNtBP_7runtime4task4join10JoinHandleTjINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEEECs2VbMhdeEr66_16delta_benchmarks.exit unwind label %bb.r

bb.k:                                             ; preds = %bb.h
  %.not = icmp eq ptr %i.u, null
  br i1 %.not, label %bb.n, label %bb.l, !prof !2595

bb.l:                                             ; preds = %bb.k
  store ptr %i.u, ptr %i.a, align 8
  %i.y = atomicrmw sub ptr %i.u, i64 1 release, align 8, !noalias !3914
  %i.z = icmp eq i64 %i.y, 1
  br i1 %i.z, label %bb.m, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtCskQDtHcQtBkN_5tokio4util17idle_notified_set9ListEntryINtNtNtNtB1l_7runtime4task4join10JoinHandleTjINtNtB4_6result6ResultINtNtBL_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEEECs2VbMhdeEr66_16delta_benchmarks.exit

bb.m:                                             ; preds = %bb.l
end_hunk_13
