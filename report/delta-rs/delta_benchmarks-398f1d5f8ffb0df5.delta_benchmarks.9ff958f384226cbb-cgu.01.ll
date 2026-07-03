inline.NumInlined: 8088
inline.NumDeleted: 2392
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec14spec_from_iterINtB4_3VecNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnEINtB2_12SpecFromIterBU_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtB2c_6filter6FilterIB28_INtNtNtB2g_5slice4iter4IterINtNtB6_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENCNvMNtNtCsjHlmExTLNuX_14datafusion_sql8relation4joinINtNtB4Y_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE10parse_joins0_0ENCB4R_s1_0EINvMs_BW_BU_9from_nameRNtNtB6_6string6StringEEE9from_iterCsdJxlLsGgtXr_16delta_benchmarks:bb.a
          cleanup
  br label %.body.i

.loopexit.split-lp.i:                             ; preds = %bb.e
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %.loopexit.split-lp.i, %.loopexit.i, %bb.g
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.af, %bb.g ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnEECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(24) %i.g) #23
          to label %bb.k unwind label %bb.j, !noalias !9873

.loopexit11.i:                                    ; preds = %.noexc9.i, %.noexc8.i, %.noexc7.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9888
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !9876
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !9881
  br label %_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtB2q_6filter6FilterIB2m_INtNtNtB2u_5slice4iter4IterINtNtB6_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENCNvMNtNtCsjHlmExTLNuX_14datafusion_sql8relation4joinINtNtB5c_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE10parse_joins0_0ENCB55_s1_0EINvMs_B13_B11_9from_nameRNtNtB6_6string6StringEEE9from_iterCsdJxlLsGgtXr_16delta_benchmarks.exit

bb.j:                                             ; preds = %.body.i, %bb.b
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #22, !noalias !9873
  unreachable

bb.k:                                             ; preds = %.body.i, %bb.b
  %.pn.i = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %i.l, %bb.b ]
  resume { ptr, i32 } %.pn.i

_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtB2q_6filter6FilterIB2m_INtNtNtB2u_5slice4iter4IterINtNtB6_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENCNvMNtNtCsjHlmExTLNuX_14datafusion_sql8relation4joinINtNtB5c_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE10parse_joins0_0ENCB55_s1_0EINvMs_B13_B11_9from_nameRNtNtB6_6string6StringEEE9from_iterCsdJxlLsGgtXr_16delta_benchmarks.exit: ; preds = %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterIBN_INtNtNtBb_5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENCNvMNtNtCsjHlmExTLNuX_14datafusion_sql8relation4joinINtNtB3d_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE10parse_joins0_0ENCB36_s1_0EINvMs_NtCsjhHCjzi9uUI_17datafusion_common6columnNtB6d_6Column9from_nameRNtNtB1R_6string6StringEENtNtNtB9_6traits8iterator8Iterator4nextCsdJxlLsGgtXr_16delta_benchmarks.exit.thread.i, %.loopexit11.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !9876
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec14spec_from_iterINtB4_3VecRINtNtB6_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEINtB2_12SpecFromIterBU_INtNtNtCsbvkFyIu7lgC_4core4iter8adapters12GenericShuntINtNtB2m_3map3MapINtNtNtB2q_5slice4iter4IterNtNtB6_6string6StringENCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB4m_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE12copy_to_plans_0EINtNtB2q_6result6ResultNtNtB2q_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEE9from_iterCsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [40 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9894)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !9897
  %i.f = tail call noundef align 8 ptr @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringENCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB2n_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE12copy_to_plans_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtNtB4_6traits8iterator8Iterator4nextCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(40) %1), !noalias !9894 ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !9897
  call void @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringENCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB2n_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE12copy_to_plans_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1), !noalias !9894
  %i.g = load i64, ptr %i.d, align 8, !noalias !9897, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !9897
  %i.h = tail call i64 @llvm.uadd.sat.i64(i64 %i.g, i64 1)
  %.sroa.0.0.i.i = tail call noundef range(i64 4, 0) i64 @llvm.umax.i64(i64 range(i64 1, 0) %i.h, i64 4) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !9897
  call void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %.sroa.0.0.i.i, i1 noundef zeroext false, i64 noundef 8, i64 noundef 8), !noalias !9894
  %i.i = load i64, ptr %i.b, align 8, !range !4, !noalias !9897, !noundef !3
  %i.j = trunc nuw i64 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.l = load i64, ptr %i.k, align 8, !range !43, !noalias !9897, !noundef !3 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.j, label %bb.c, label %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsdJxlLsGgtXr_16delta_benchmarks.exit.i, !prof !10

bb.c:                                             ; preds = %bb.b
  %i.n = load i64, ptr %i.m, align 8, !noalias !9897
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.l, i64 %i.n) #21, !noalias !9894
  unreachable

_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsdJxlLsGgtXr_16delta_benchmarks.exit.i: ; preds = %bb.b
  %i.o = load ptr, ptr %i.m, align 8, !noalias !9897, !nonnull !3, !noundef !3 ; 2 uses
  %i.p = icmp ule i64 %.sroa.0.0.i.i, %i.l
  tail call void @llvm.assume(i1 %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !9897
  store ptr %i.f, ptr %i.o, align 8, !noalias !9894
  store i64 %i.l, ptr %i.e, align 8, !noalias !9897
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr %i.o, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !9897
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 4 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !9897
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !9897
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false), !noalias !9894
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9899)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9902)
  %i.q = invoke noundef align 8 ptr @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringENCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB2n_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE12copy_to_plans_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtNtB4_6traits8iterator8Iterator4nextCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.c)
          to label %.noexc.i unwind label %.loopexit.split-lp.i, !noalias !9894 ; 2 uses

.noexc.i:                                         ; preds = %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsdJxlLsGgtXr_16delta_benchmarks.exit.i
  %.not6.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not6.i.i.i, label %_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB4_3VecRINtNtB6_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEINtB2_10SpecExtendBR_INtNtNtCsbvkFyIu7lgC_4core4iter8adapters12GenericShuntINtNtB2h_3map3MapINtNtNtB2l_5slice4iter4IterNtNtB6_6string6StringENCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB4h_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE12copy_to_plans_0EINtNtB2l_6result6ResultNtNtB2l_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEE11spec_extendCsdJxlLsGgtXr_16delta_benchmarks.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.noexc.i, %.noexc9.i
  %i.r = phi ptr [ %i.af, %.noexc9.i ], [ %i.q, %.noexc.i ]
  %i.s = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !9905, !noalias !9906, !noundef !3 ; 4 uses
  %i.t = icmp ult i64 %i.s, 1152921504606846976
  call void @llvm.assume(i1 %i.t)
  %i.u = load i64, ptr %i.e, align 8, !range !9, !alias.scope !9905, !noalias !9906, !noundef !3
  %i.v = icmp eq i64 %i.s, %i.u
  br i1 %i.v, label %bb.d, label %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecRINtNtB6_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEE7reserveCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9909
  invoke void @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringENCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB2n_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE12copy_to_plans_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.c)
          to label %.noexc7.i unwind label %.loopexit.i, !noalias !9894

.noexc7.i:                                        ; preds = %bb.d
  %i.w = load i64, ptr %i.a, align 8, !noalias !9909, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9909
  %i.x = call i64 @llvm.uadd.sat.i64(i64 %i.w, i64 1) ; 2 uses
  %i.y = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !9910, !noalias !9906, !noundef !3 ; 2 uses
  %i.z = load i64, ptr %i.e, align 8, !range !9, !alias.scope !9910, !noalias !9906, !noundef !3
  %i.aa = sub i64 %i.z, %i.y
  %i.ab = icmp ugt i64 %i.x, %i.aa
  br i1 %i.ab, label %bb.e, label %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecRINtNtB6_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEE7reserveCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i, !prof !10

bb.e:                                             ; preds = %.noexc7.i
  invoke void @_RINvNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %i.y, i64 noundef range(i64 1, 0) %i.x, i64 noundef 8, i64 noundef 8)
          to label %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecRINtNtB6_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEE7reserveCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i unwind label %.loopexit.i, !noalias !9894

_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecRINtNtB6_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEE7reserveCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i: ; preds = %bb.e, %.noexc7.i, %.lr.ph.i.i.i
  %i.ac = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !9905, !noalias !9906, !nonnull !3, !noundef !3
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.s
  store ptr %i.r, ptr %i.ad, align 8, !noalias !9894
  %i.ae = add nuw nsw i64 %i.s, 1
  store i64 %i.ae, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !9905, !noalias !9906
  %i.af = invoke noundef align 8 ptr @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringENCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB2n_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE12copy_to_plans_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtNtB4_6traits8iterator8Iterator4nextCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.c)
          to label %.noexc9.i unwind label %.loopexit.i, !noalias !9894 ; 2 uses

.noexc9.i:                                        ; preds = %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecRINtNtB6_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEE7reserveCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i
  %.not.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i, label %_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB4_3VecRINtNtB6_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEINtB2_10SpecExtendBR_INtNtNtCsbvkFyIu7lgC_4core4iter8adapters12GenericShuntINtNtB2h_3map3MapINtNtNtB2l_5slice4iter4IterNtNtB6_6string6StringENCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB4h_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE12copy_to_plans_0EINtNtB2l_6result6ResultNtNtB2l_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEE11spec_extendCsdJxlLsGgtXr_16delta_benchmarks.exit.i, label %.lr.ph.i.i.i

bb.f:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8, !alias.scope !9894, !noalias !9913
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.ag, align 8, !alias.scope !9894, !noalias !9913
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.ah, align 8, !alias.scope !9894, !noalias !9913
  br label %_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB4_3VecRINtNtB6_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEINtB2_18SpecFromIterNestedB11_INtNtNtCsbvkFyIu7lgC_4core4iter8adapters12GenericShuntINtNtB2A_3map3MapINtNtNtB2E_5slice4iter4IterNtNtB6_6string6StringENCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB4A_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE12copy_to_plans_0EINtNtB2E_6result6ResultNtNtB2E_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEE9from_iterCsdJxlLsGgtXr_16delta_benchmarks.exit

.loopexit.i:                                      ; preds = %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecRINtNtB6_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEE7reserveCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i, %bb.e, %bb.d
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

.loopexit.split-lp.i:                             ; preds = %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsdJxlLsGgtXr_16delta_benchmarks.exit.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.g:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecRINtNtB7_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecRINtNtBL_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEECsdJxlLsGgtXr_16delta_benchmarks.exit.i unwind label %bb.h, !noalias !9894

_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB4_3VecRINtNtB6_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEINtB2_10SpecExtendBR_INtNtNtCsbvkFyIu7lgC_4core4iter8adapters12GenericShuntINtNtB2h_3map3MapINtNtNtB2l_5slice4iter4IterNtNtB6_6string6StringENCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB4h_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE12copy_to_plans_0EINtNtB2l_6result6ResultNtNtB2l_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEE11spec_extendCsdJxlLsGgtXr_16delta_benchmarks.exit.i: ; preds = %.noexc9.i, %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !9897
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !9913
  br label %_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB4_3VecRINtNtB6_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEINtB2_18SpecFromIterNestedB11_INtNtNtCsbvkFyIu7lgC_4core4iter8adapters12GenericShuntINtNtB2A_3map3MapINtNtNtB2E_5slice4iter4IterNtNtB6_6string6StringENCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB4A_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE12copy_to_plans_0EINtNtB2E_6result6ResultNtNtB2E_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEE9from_iterCsdJxlLsGgtXr_16delta_benchmarks.exit

bb.h:                                             ; preds = %bb.g
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #22, !noalias !9894
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecRINtNtBL_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEECsdJxlLsGgtXr_16delta_benchmarks.exit.i: ; preds = %bb.g
  resume { ptr, i32 } %lpad.phi.i

_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB4_3VecRINtNtB6_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEINtB2_18SpecFromIterNestedB11_INtNtNtCsbvkFyIu7lgC_4core4iter8adapters12GenericShuntINtNtB2A_3map3MapINtNtNtB2E_5slice4iter4IterNtNtB6_6string6StringENCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB4A_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE12copy_to_plans_0EINtNtB2E_6result6ResultNtNtB2E_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEE9from_iterCsdJxlLsGgtXr_16delta_benchmarks.exit: ; preds = %bb.f, %_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB4_3VecRINtNtB6_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEINtB2_10SpecExtendBR_INtNtNtCsbvkFyIu7lgC_4core4iter8adapters12GenericShuntINtNtB2h_3map3MapINtNtNtB2l_5slice4iter4IterNtNtB6_6string6StringENCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB4h_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE12copy_to_plans_0EINtNtB2l_6result6ResultNtNtB2l_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEE11spec_extendCsdJxlLsGgtXr_16delta_benchmarks.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !9897
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec14spec_from_iterINtB4_3VecReEINtB2_12SpecFromIterBU_INtNtNtCsbvkFyIu7lgC_4core3str4iter5SplitcEE9from_iterCsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(72) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [72 x i8], align 8                ; 13 uses
  %i.c = alloca [24 x i8], align 8                ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9914)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9917)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !9919
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9920)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9923)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 65 ; 2 uses
  %i.e = load i8, ptr %i.d, align 1, !range !2711, !alias.scope !9926, !noalias !9914, !noundef !3
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val.i.i.i = load ptr, ptr %i.g, align 8, !alias.scope !9926, !noalias !9914, !nonnull !3, !noundef !3 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val1.i.i.i = load i64, ptr %i.h, align 8, !alias.scope !9926, !noalias !9914, !noundef !3 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9927)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !9930, !noalias !9931, !noundef !3 ; 5 uses
  %.promoted.i.i.i.i = load i64, ptr %i.i, align 8, !alias.scope !9930, !noalias !9931 ; 2 uses
  %i.l = icmp ult i64 %i.k, %.promoted.i.i.i.i
  br i1 %i.l, label %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i, label %.lr.ph.split.preheader.i.i.i.i

.lr.ph.split.preheader.i.i.i.i:                   ; preds = %bb.b
  %.not.i.i.i.i = icmp ugt i64 %i.k, %.val1.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.o = load i8, ptr %i.n, align 8, !alias.scope !9930, !noalias !9931 ; 2 uses
  %i.p = zext nneg i8 %i.o to i64                 ; 4 uses
  %i.q = icmp ult i8 %i.o, 5
  br i1 %.not.i.i.i.i, label %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i, label %.lr.ph.split.i.i.i.i

.lr.ph.split.i.i.i.i:                             ; preds = %.lr.ph.split.preheader.i.i.i.i
  %2 = getelementptr i8, ptr %i.m, i64 %i.p
  %3 = getelementptr i8, ptr %2, i64 -1
  tail call void @llvm.assume(i1 %i.q)
  %.pre.i.i.i.i = load i8, ptr %3, align 1, !alias.scope !9930, !noalias !9931 ; 2 uses
  br label %.lr.ph.split.i.i.i.i.a

.lr.ph.split.i.i.i.i.a:                           ; preds = %bb.f, %.lr.ph.split.i.i.i.i
  %i.r = phi i64 [ %.promoted.i.i.i.i, %.lr.ph.split.i.i.i.i ], [ %i.ag, %bb.f ] ; 3 uses
  %i.s = sub nuw i64 %i.k, %i.r                   ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.r ; 2 uses
  %i.u = icmp samesign ult i64 %i.s, 16
  br i1 %i.u, label %.preheader.i.i.i.i.i, label %bb.c

.preheader.i.i.i.i.i:                             ; preds = %.lr.ph.split.i.i.i.i.a
  %.not.i.i.i.i.i = icmp eq i64 %i.s, 0
  br i1 %.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

bb.c:                                             ; preds = %.lr.ph.split.i.i.i.i.a
  %i.v = tail call { i64, i64 } @_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr14memchr_aligned(i8 noundef %.pre.i.i.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.t, i64 noundef range(i64 0, -9223372036854775808) %i.s), !noalias !9933
  br label %_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr6memchr.exit.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %bb.d, %.lr.ph.i.i.i.i.i, %.preheader.i.i.i.i.i
  %.sroa.01.0.lcssa.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i ], [ %i.s, %bb.d ], [ %.sroa.01.05.i.i.i.i.i, %.lr.ph.i.i.i.i.i ]
  %.sroa.0.1.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i ], [ 0, %bb.d ], [ 1, %.lr.ph.i.i.i.i.i ]
  %i.w = insertvalue { i64, i64 } poison, i64 %.sroa.0.1.i.i.i.i.i, 0
  %i.x = insertvalue { i64, i64 } %i.w, i64 %.sroa.01.0.lcssa.i.i.i.i.i, 1
  br label %_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr6memchr.exit.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.preheader.i.i.i.i.i, %bb.d
  %.sroa.01.05.i.i.i.i.i = phi i64 [ %i.ab, %bb.d ], [ 0, %.preheader.i.i.i.i.i ] ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 %.sroa.01.05.i.i.i.i.i
  %i.z = load i8, ptr %i.y, align 1, !alias.scope !9934, !noalias !9933, !noundef !3
  %i.aa = icmp eq i8 %i.z, %.pre.i.i.i.i
  br i1 %i.aa, label %._crit_edge.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ab = add nuw nsw i64 %.sroa.01.05.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.ab, %i.s
  br i1 %exitcond.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr6memchr.exit.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i, %bb.c
  %.merged.i.i.i.i.i = phi { i64, i64 } [ %i.x, %._crit_edge.i.i.i.i.i ], [ %i.v, %bb.c ] ; 2 uses
  %i.ac = extractvalue { i64, i64 } %.merged.i.i.i.i.i, 0
  %i.ad = trunc nuw i64 %i.ac to i1
  br i1 %i.ad, label %bb.e, label %.split.us.i.i.i.i

bb.e:                                             ; preds = %_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr6memchr.exit.i.i.i.i
  %i.ae = extractvalue { i64, i64 } %.merged.i.i.i.i.i, 1
  %i.af = add i64 %i.r, 1
  %i.ag = add i64 %i.af, %i.ae                    ; 7 uses
  store i64 %i.ag, ptr %i.i, align 8, !alias.scope !9930, !noalias !9931
  %.not12.i.i.i.i = icmp ult i64 %i.ag, %i.p
  %.not13.i.i.i.i = icmp ugt i64 %i.ag, %.val1.i.i.i
  %or.cond.i.i.i.i = or i1 %.not12.i.i.i.i, %.not13.i.i.i.i
  br i1 %or.cond.i.i.i.i, label %bb.f, label %bb.g

.split.us.i.i.i.i:                                ; preds = %_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr6memchr.exit.i.i.i.i
  store i64 %i.k, ptr %i.i, align 8, !alias.scope !9930, !noalias !9931
  br label %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i

bb.f:                                             ; preds = %bb.g, %bb.e
  %i.ah = icmp ult i64 %i.k, %i.ag
  br i1 %i.ah, label %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i, label %.lr.ph.split.i.i.i.i.a

bb.g:                                             ; preds = %bb.e
  %i.ai = sub nuw i64 %i.ag, %i.p                 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.ai
  %bcmp.i.i.i.i = tail call i32 @bcmp(ptr nonnull %i.aj, ptr nonnull %i.m, i64 %i.p), !noalias !9931
  %i.ak = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %i.ak, label %_RNvXs_NtNtCsbvkFyIu7lgC_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i, label %bb.f

_RNvXs_NtNtCsbvkFyIu7lgC_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i: ; preds = %bb.g
  %i.al = load i64, ptr %1, align 8, !alias.scope !9926, !noalias !9914, !noundef !3 ; 2 uses
  %i.am = sub nuw i64 %i.ai, %i.al
  store i64 %i.ag, ptr %1, align 8, !alias.scope !9926, !noalias !9914
  br label %select.unfold.i

_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i: ; preds = %bb.f, %.split.us.i.i.i.i, %.lr.ph.split.preheader.i.i.i.i, %bb.b
  store i8 1, ptr %i.d, align 1, !alias.scope !9937, !noalias !9914
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ao = load i8, ptr %i.an, align 8, !range !2711, !alias.scope !9937, !noalias !9914, !noundef !3
  %i.ap = trunc nuw i8 %i.ao to i1
  %.pre.i2.i.i.i = load i64, ptr %1, align 8, !alias.scope !9937, !noalias !9914 ; 3 uses
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre2.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !alias.scope !9937, !noalias !9914 ; 2 uses
  %.not.i3.i.i.i = icmp ne i64 %.pre2.i.i.i.i, %.pre.i2.i.i.i
  %or.cond.not.i.i.i.i = select i1 %i.ap, i1 true, i1 %.not.i3.i.i.i
  %i.aq = sub nuw i64 %.pre2.i.i.i.i, %.pre.i2.i.i.i
  br i1 %or.cond.not.i.i.i.i, label %select.unfold.i, label %bb.n

select.unfold.i:                                  ; preds = %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i, %_RNvXs_NtNtCsbvkFyIu7lgC_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i
  %.sroa.4.1.i.i.i = phi i64 [ %i.am, %_RNvXs_NtNtCsbvkFyIu7lgC_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i ], [ %i.aq, %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i ]
  %.pn.i = phi i64 [ %i.al, %_RNvXs_NtNtCsbvkFyIu7lgC_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i ], [ %.pre.i2.i.i.i, %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9919
  call void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 4, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16), !noalias !9919
  %i.ar = load i64, ptr %i.a, align 8, !range !4, !noalias !9919, !noundef !3
  %i.as = trunc nuw i64 %i.ar to i1
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.au = load i64, ptr %i.at, align 8, !range !43, !noalias !9919, !noundef !3 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.as, label %bb.h, label %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsdJxlLsGgtXr_16delta_benchmarks.exit.i, !prof !10

bb.h:                                             ; preds = %select.unfold.i
  %i.aw = load i64, ptr %i.av, align 8, !noalias !9919
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.au, i64 %i.aw) #21, !noalias !9919
  unreachable

_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsdJxlLsGgtXr_16delta_benchmarks.exit.i: ; preds = %select.unfold.i
  %.sroa.0.1.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %.pn.i
  %i.ax = load ptr, ptr %i.av, align 8, !noalias !9919, !nonnull !3, !noundef !3 ; 5 uses
  %i.ay = icmp ugt i64 %i.au, 3
  tail call void @llvm.assume(i1 %i.ay)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9919
  store ptr %.sroa.0.1.i.i.i, ptr %i.ax, align 8, !noalias !9919
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store i64 %.sroa.4.1.i.i.i, ptr %i.az, align 8, !noalias !9919
  store i64 %i.au, ptr %i.c, align 8, !noalias !9919
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %i.ax, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !9919
  %.sroa.64.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 4 uses
  store i64 1, ptr %.sroa.64.0..sroa_idx.i, align 8, !noalias !9919
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !9919
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.b, ptr noundef nonnull align 8 dereferenceable(72) %1, i64 72, i1 false), !noalias !9914
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9940)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9943)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9945)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9948)
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 65 ; 2 uses
  %.promoted.i.i.i = load i8, ptr %i.ba, align 1, !alias.scope !9950, !noalias !9955
  %.promoted13.i.i.i = load i64, ptr %i.b, align 8, !alias.scope !9956, !noalias !9955 ; 4 uses
  %i.bb = trunc nuw i8 %.promoted.i.i.i to i1
  br i1 %i.bb, label %_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB4_3VecReEINtB2_10SpecExtendBR_INtNtNtCsbvkFyIu7lgC_4core3str4iter5SplitcEE11spec_extendCsdJxlLsGgtXr_16delta_benchmarks.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsdJxlLsGgtXr_16delta_benchmarks.exit.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.val.i.i.i.i.i = load ptr, ptr %i.bc, align 8, !alias.scope !9950, !noalias !9955, !nonnull !3, !noundef !3 ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.val1.i.i.i.i.i = load i64, ptr %i.bd, align 8, !alias.scope !9950, !noalias !9955, !noundef !3 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.bf = load i64, ptr %i.be, align 8, !alias.scope !9957, !noalias !9960, !noundef !3 ; 5 uses
  %.not.i.i.i.i.i.i = icmp ugt i64 %i.bf, %.val1.i.i.i.i.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.bi = load i8, ptr %i.bh, align 8, !alias.scope !9956, !noalias !9955 ; 2 uses
  %i.bj = zext nneg i8 %i.bi to i64               ; 4 uses
  %i.bk = icmp ult i8 %i.bi, 5
  %i.bl = getelementptr i8, ptr %i.bg, i64 %i.bj
  %i.bm = getelementptr i8, ptr %i.bl, i64 -1
  %i.bn = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.bo = load i8, ptr %i.bn, align 8, !range !2711, !alias.scope !9956, !noalias !9955
  %i.bp = trunc nuw i8 %i.bo to i1                ; 2 uses
  %.phi.trans.insert.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.pre2.i.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i.i, align 8, !alias.scope !9956, !noalias !9955 ; 4 uses
  br i1 %.not.i.i.i.i.i.i, label %.lr.ph.split.us.i.i.i, label %.lr.ph.split.preheader.i.i.i

.lr.ph.split.preheader.i.i.i:                     ; preds = %.lr.ph.i.i.i
  %i.bq = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.promoted17.i.i.i = load i64, ptr %i.bq, align 8, !alias.scope !9957, !noalias !9960
  br label %.lr.ph.split.i.i.i

.lr.ph.split.us.i.i.i:                            ; preds = %.lr.ph.i.i.i
  %.not.i3.i.i.us.i.i.i = icmp ne i64 %.pre2.i.i.i.i.i.i, %.promoted13.i.i.i
  %or.cond.not.i.i.i.us.i.i.i = select i1 %i.bp, i1 true, i1 %.not.i3.i.i.us.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9962)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9963)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9964)
  br i1 %or.cond.not.i.i.i.us.i.i.i, label %._crit_edge.split.us.split.us.i.i.i, label %_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB4_3VecReEINtB2_10SpecExtendBR_INtNtNtCsbvkFyIu7lgC_4core3str4iter5SplitcEE11spec_extendCsdJxlLsGgtXr_16delta_benchmarks.exit.i

._crit_edge.split.us.split.us.i.i.i:              ; preds = %.lr.ph.split.us.i.i.i
  %.sroa.0.1.i.i.us.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 %.promoted13.i.i.i
  %i.br = sub nuw i64 %.pre2.i.i.i.i.i.i, %.promoted13.i.i.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  store ptr %.sroa.0.1.i.i.us.i.i.i, ptr %i.bs, align 8, !noalias !9965
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  store i64 %i.br, ptr %i.bt, align 8, !noalias !9965
  store i64 2, ptr %.sroa.64.0..sroa_idx.i, align 8, !alias.scope !9966, !noalias !9965
  br label %_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB4_3VecReEINtB2_10SpecExtendBR_INtNtNtCsbvkFyIu7lgC_4core3str4iter5SplitcEE11spec_extendCsdJxlLsGgtXr_16delta_benchmarks.exit.i

.lr.ph.split.i.i.i:                               ; preds = %.lr.ph.split.preheader.i.i.i, %.noexc11.i
  %i.bu = phi i64 [ %i.cr, %.noexc11.i ], [ %.promoted17.i.i.i, %.lr.ph.split.preheader.i.i.i ] ; 3 uses
  %.lcssa111516.i.i.i = phi i64 [ %.lcssa1114.i.i.i, %.noexc11.i ], [ %.promoted13.i.i.i, %.lr.ph.split.preheader.i.i.i ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9962)
  call void @llvm.experimental.noalias.scope.decl(metadata !9963)
  call void @llvm.experimental.noalias.scope.decl(metadata !9964)
  %i.bv = icmp ult i64 %i.bf, %i.bu
  br i1 %i.bv, label %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i.i.i, label %.lr.ph.split.preheader.i.i.i.i.i.i

.lr.ph.split.preheader.i.i.i.i.i.i:               ; preds = %.lr.ph.split.i.i.i
  call void @llvm.assume(i1 %i.bk)
  %.pre.i.i.i.i.i.i = load i8, ptr %i.bm, align 1, !alias.scope !9957, !noalias !9960 ; 2 uses
  br label %.lr.ph.split.i.i.i.i.i.i

.lr.ph.split.i.i.i.i.i.i:                         ; preds = %bb.l, %.lr.ph.split.preheader.i.i.i.i.i.i
  %i.bw = phi i64 [ %i.bu, %.lr.ph.split.preheader.i.i.i.i.i.i ], [ %i.cl, %bb.l ] ; 3 uses
  %i.bx = sub nuw i64 %i.bf, %i.bw                ; 5 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 %i.bw ; 2 uses
  %i.bz = icmp samesign ult i64 %i.bx, 16
  br i1 %i.bz, label %.preheader.i.i.i.i.i.i.i, label %bb.i

.preheader.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.split.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.bx, 0
  br i1 %.not.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

bb.i:                                             ; preds = %.lr.ph.split.i.i.i.i.i.i
  %i.ca = invoke { i64, i64 } @_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr14memchr_aligned(i8 noundef %.pre.i.i.i.i.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.by, i64 noundef range(i64 0, -9223372036854775808) %i.bx)
          to label %_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr6memchr.exit.i.i.i.i.i.i unwind label %.loopexit.i, !noalias !9919

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %bb.j, %.lr.ph.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i
  %.sroa.01.0.lcssa.i.i.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i ], [ %i.bx, %bb.j ], [ %.sroa.01.05.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ]
  %.sroa.0.1.i.i.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i ], [ 0, %bb.j ], [ 1, %.lr.ph.i.i.i.i.i.i.i ]
  %i.cb = insertvalue { i64, i64 } poison, i64 %.sroa.0.1.i.i.i.i.i.i.i, 0
  %i.cc = insertvalue { i64, i64 } %i.cb, i64 %.sroa.01.0.lcssa.i.i.i.i.i.i.i, 1
  br label %_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr6memchr.exit.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.preheader.i.i.i.i.i.i.i, %bb.j
  %.sroa.01.05.i.i.i.i.i.i.i = phi i64 [ %i.cg, %bb.j ], [ 0, %.preheader.i.i.i.i.i.i.i ] ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.by, i64 %.sroa.01.05.i.i.i.i.i.i.i
  %i.ce = load i8, ptr %i.cd, align 1, !alias.scope !9967, !noalias !9970, !noundef !3
  %i.cf = icmp eq i8 %i.ce, %.pre.i.i.i.i.i.i
  br i1 %i.cf, label %._crit_edge.i.i.i.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.cg = add nuw nsw i64 %.sroa.01.05.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i = icmp eq i64 %i.cg, %i.bx
  br i1 %exitcond.not.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr6memchr.exit.i.i.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i.i.i, %bb.i
  %.merged.i.i.i.i.i.i.i = phi { i64, i64 } [ %i.cc, %._crit_edge.i.i.i.i.i.i.i ], [ %i.ca, %bb.i ] ; 2 uses
  %i.ch = extractvalue { i64, i64 } %.merged.i.i.i.i.i.i.i, 0
  %i.ci = trunc nuw i64 %i.ch to i1
  br i1 %i.ci, label %bb.k, label %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i.i.i

bb.k:                                             ; preds = %_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr6memchr.exit.i.i.i.i.i.i
  %i.cj = extractvalue { i64, i64 } %.merged.i.i.i.i.i.i.i, 1
  %i.ck = add i64 %i.bw, 1
  %i.cl = add i64 %i.ck, %i.cj                    ; 8 uses
  %.not12.i.i.i.i.i.i = icmp ult i64 %i.cl, %i.bj
  %.not13.i.i.i.i.i.i = icmp ugt i64 %i.cl, %.val1.i.i.i.i.i
  %or.cond.i.i.i.i.i.i = or i1 %.not12.i.i.i.i.i.i, %.not13.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.m, %bb.k
  %i.cm = icmp ult i64 %i.bf, %i.cl
  br i1 %i.cm, label %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i.i.i, label %.lr.ph.split.i.i.i.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.cn = sub nuw i64 %i.cl, %i.bj                ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 %i.cn
  %bcmp.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull %i.co, ptr nonnull %i.bg, i64 %i.bj), !noalias !9971
  %i.cp = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.cp, label %select.unfold.i.i.i, label %bb.l

_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i.i.i: ; preds = %bb.l, %_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr6memchr.exit.i.i.i.i.i.i, %.lr.ph.split.i.i.i
  %i.cq = phi i64 [ %i.bu, %.lr.ph.split.i.i.i ], [ %i.cl, %bb.l ], [ %i.bf, %_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr6memchr.exit.i.i.i.i.i.i ]
  store i8 1, ptr %i.ba, align 1, !alias.scope !9972, !noalias !9955
  %.not.i3.i.i.i.i.i = icmp ne i64 %.pre2.i.i.i.i.i.i, %.lcssa111516.i.i.i
  %or.cond.not.i.i.i.i.i.i = select i1 %i.bp, i1 true, i1 %.not.i3.i.i.i.i.i
  br i1 %or.cond.not.i.i.i.i.i.i, label %select.unfold.i.i.i, label %_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB4_3VecReEINtB2_10SpecExtendBR_INtNtNtCsbvkFyIu7lgC_4core3str4iter5SplitcEE11spec_extendCsdJxlLsGgtXr_16delta_benchmarks.exit.i

select.unfold.i.i.i:                              ; preds = %bb.m, %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i.i.i
  %i.cr = phi i64 [ %i.cq, %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i.i.i ], [ %i.cl, %bb.m ]
  %.lcssa1114.i.i.i = phi i64 [ %.lcssa111516.i.i.i, %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i.i.i ], [ %i.cl, %bb.m ]
  %i.cs = phi i1 [ true, %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i.i.i ], [ false, %bb.m ]
  %.pn.i.i.i = phi i64 [ %.pre2.i.i.i.i.i.i, %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i.i.i ], [ %i.cn, %bb.m ]
  %.sroa.4.1.i.i.i.i.i = sub nuw i64 %.pn.i.i.i, %.lcssa111516.i.i.i
  %.sroa.0.1.i.i.i.i9.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 %.lcssa111516.i.i.i
  %i.ct = load i64, ptr %.sroa.64.0..sroa_idx.i, align 8, !alias.scope !9966, !noalias !9965, !noundef !3 ; 5 uses
  %i.cu = icmp ult i64 %i.ct, 576460752303423488
  call void @llvm.assume(i1 %i.cu)
  %i.cv = load i64, ptr %i.c, align 8, !range !9, !alias.scope !9966, !noalias !9965, !noundef !3
  %i.cw = icmp eq i64 %i.ct, %i.cv
  br i1 %i.cw, label %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecReE7reserveCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i, label %.noexc11.i

_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecReE7reserveCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i: ; preds = %select.unfold.i.i.i
  invoke void @_RINvNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.ct, i64 noundef 1, i64 noundef 8, i64 noundef 16)
          to label %.noexc11.i unwind label %.loopexit.split-lp.i, !noalias !9919

.noexc11.i:                                       ; preds = %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecReE7reserveCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i, %select.unfold.i.i.i
  %i.cx = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !9966, !noalias !9965, !nonnull !3, !noundef !3
  %i.cy = getelementptr inbounds nuw [16 x i8], ptr %i.cx, i64 %i.ct ; 2 uses
  store ptr %.sroa.0.1.i.i.i.i9.i, ptr %i.cy, align 8, !noalias !9965
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  store i64 %.sroa.4.1.i.i.i.i.i, ptr %i.cz, align 8, !noalias !9965
  %i.da = add nuw nsw i64 %i.ct, 1
  store i64 %i.da, ptr %.sroa.64.0..sroa_idx.i, align 8, !alias.scope !9966, !noalias !9965
  br i1 %i.cs, label %_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB4_3VecReEINtB2_10SpecExtendBR_INtNtNtCsbvkFyIu7lgC_4core3str4iter5SplitcEE11spec_extendCsdJxlLsGgtXr_16delta_benchmarks.exit.i, label %.lr.ph.split.i.i.i

bb.n:                                             ; preds = %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i, %bb.a
  store i64 0, ptr %0, align 8, !alias.scope !9914, !noalias !9917
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.db, align 8, !alias.scope !9914, !noalias !9917
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.dc, align 8, !alias.scope !9914, !noalias !9917
  br label %_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB4_3VecReEINtB2_18SpecFromIterNestedB11_INtNtNtCsbvkFyIu7lgC_4core3str4iter5SplitcEE9from_iterCsdJxlLsGgtXr_16delta_benchmarks.exit

.loopexit.i:                                      ; preds = %bb.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

.loopexit.split-lp.i:                             ; preds = %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecReE7reserveCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.o:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecReENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecReEECsdJxlLsGgtXr_16delta_benchmarks.exit.i unwind label %bb.p, !noalias !9919

_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB4_3VecReEINtB2_10SpecExtendBR_INtNtNtCsbvkFyIu7lgC_4core3str4iter5SplitcEE11spec_extendCsdJxlLsGgtXr_16delta_benchmarks.exit.i: ; preds = %.noexc11.i, %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i.i.i, %._crit_edge.split.us.split.us.i.i.i, %.lr.ph.split.us.i.i.i, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsdJxlLsGgtXr_16delta_benchmarks.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !9919
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !9917
  br label %_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB4_3VecReEINtB2_18SpecFromIterNestedB11_INtNtNtCsbvkFyIu7lgC_4core3str4iter5SplitcEE9from_iterCsdJxlLsGgtXr_16delta_benchmarks.exit

bb.p:                                             ; preds = %bb.o
  %i.dd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #22, !noalias !9919
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecReEECsdJxlLsGgtXr_16delta_benchmarks.exit.i: ; preds = %bb.o
  resume { ptr, i32 } %lpad.phi.i

_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB4_3VecReEINtB2_18SpecFromIterNestedB11_INtNtNtCsbvkFyIu7lgC_4core3str4iter5SplitcEE9from_iterCsdJxlLsGgtXr_16delta_benchmarks.exit: ; preds = %bb.n, %_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB4_3VecReEINtB2_10SpecExtendBR_INtNtNtCsbvkFyIu7lgC_4core3str4iter5SplitcEE11spec_extendCsdJxlLsGgtXr_16delta_benchmarks.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !9919
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec14spec_from_iterINtB4_3VecTINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEINtNtB6_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEEINtB2_12SpecFromIterBU_INtNtNtNtB10_4iter8adapters3map3MapINtNtNtB10_5slice4iter4IterjENCNCINvMsi_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5i_9TableScan7try_newB1x_E00EE9from_iterCsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9975)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !9978
  %.val.i = load ptr, ptr %1, align 8, !alias.scope !9975, !noalias !9980, !nonnull !3, !noundef !3
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val3.i = load ptr, ptr %i.d, align 8, !alias.scope !9975, !noalias !9980, !nonnull !3, !noundef !3
  %i.e = ptrtoint ptr %.val3.i to i64
  %i.f = ptrtoint ptr %.val.i to i64
  %i.g = sub nuw i64 %i.e, %i.f
  %i.h = lshr exact i64 %i.g, 3                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !9978
  call void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.h, i1 noundef zeroext false, i64 noundef 8, i64 noundef 64), !noalias !9978
  %i.i = load i64, ptr %i.b, align 8, !range !4, !noalias !9978, !noundef !3
  %i.j = trunc nuw i64 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.l = load i64, ptr %i.k, align 8, !range !43, !noalias !9978, !noundef !3 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.j, label %bb.b, label %_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecTINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEINtNtB8_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEE14extend_trustedINtNtNtNtBM_4iter8adapters3map3MapINtNtNtBM_5slice4iter4IterjENCNCINvMsi_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB4V_9TableScan7try_newB1j_E00EECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i, !prof !10

bb.b:                                             ; preds = %bb.a
  %i.n = load i64, ptr %i.m, align 8, !noalias !9978
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.l, i64 %i.n) #21, !noalias !9978
  unreachable

_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecTINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEINtNtB8_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEE14extend_trustedINtNtNtNtBM_4iter8adapters3map3MapINtNtNtBM_5slice4iter4IterjENCNCINvMsi_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB4V_9TableScan7try_newB1j_E00EECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i: ; preds = %bb.a
  %i.o = load ptr, ptr %i.m, align 8, !noalias !9978, !nonnull !3, !noundef !3 ; 2 uses
  %i.p = icmp ule i64 %i.h, %i.l
  tail call void @llvm.assume(i1 %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !9978
  store i64 %i.l, ptr %i.c, align 8, !noalias !9978
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.o, ptr %i.q, align 8, !noalias !9978
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 0, ptr %i.r, align 8, !noalias !9978
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9981
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.o, ptr %i.s, align 8, !noalias !9981
  store ptr %i.r, ptr %i.a, align 8, !noalias !9981
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %i.t, align 8, !noalias !9981
  invoke void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterjENCNCINvMsi_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB1A_9TableScan7try_newNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceE00ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB42_8for_each4callTINtNtBc_6option6OptionB2Q_EINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENCINvMsj_NtB5C_3vecINtB6Y_3VecB55_E14extend_trustedBN_E0E0ECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB6_3VecTINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEINtNtB8_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEEINtB4_18SpecFromIterNestedB13_INtNtNtNtB19_4iter8adapters3map3MapINtNtNtB19_5slice4iter4IterjENCNCINvMsi_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5y_9TableScan7try_newB1G_E00EE9from_iterCsdJxlLsGgtXr_16delta_benchmarks.exit unwind label %bb.c, !noalias !9980

bb.c:                                             ; preds = %_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecTINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEINtNtB8_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEE14extend_trustedINtNtNtNtBM_4iter8adapters3map3MapINtNtNtBM_5slice4iter4IterjENCNCINvMsi_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB4V_9TableScan7try_newB1j_E00EECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecTINtNtB4_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEINtNtBL_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEEECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(24) %i.c) #23
          to label %bb.e unwind label %bb.d, !noalias !9978

bb.d:                                             ; preds = %bb.c
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #22, !noalias !9978
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.u

_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB6_3VecTINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEINtNtB8_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEEINtB4_18SpecFromIterNestedB13_INtNtNtNtB19_4iter8adapters3map3MapINtNtNtB19_5slice4iter4IterjENCNCINvMsi_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5y_9TableScan7try_newB1G_E00EE9from_iterCsdJxlLsGgtXr_16delta_benchmarks.exit: ; preds = %_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecTINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEINtNtB8_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEE14extend_trustedINtNtNtNtBM_4iter8adapters3map3MapINtNtNtBM_5slice4iter4IterjENCNCINvMsi_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB4V_9TableScan7try_newB1j_E00EECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9981
end_hunk_0
begin_hunk_1_@_RNvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast3dmlNtB5_6InsertNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone:bb.a
  %i.es = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  store i32 %i.ep, ptr %i.es, align 8, !alias.scope !10285, !noalias !10288
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !10281
  %i.et = getelementptr inbounds nuw i8, ptr %1, i64 1032
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast4ExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.et)
          to label %bb.bw unwind label %bb.br, !noalias !10291, !inline_history !10292

bb.br:                                            ; preds = %.noexc39
  %i.eu = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.k)
          to label %.body40 unwind label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.ev = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #22, !noalias !10291, !inline_history !10292
  unreachable

bb.bt:                                            ; preds = %bb.bo, %bb.bw
  %.sroa.02.0 = phi i64 [ %.sroa.072.0.copyload, %bb.bw ], [ -9223372036854775808, %bb.bo ]
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 1070
  store i8 %i.ad, ptr %i.ew, align 2
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 1064
  store i8 %i.af, ptr %i.ex, align 8
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 1065
  store i8 %i.ah, ptr %i.ey, align 1
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 384
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %i.ez, ptr noundef nonnull align 8 dereferenceable(328) %i.ab, i64 328, i1 false)
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 784
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.fa, ptr noundef nonnull align 8 dereferenceable(64) %i.aa, i64 64, i1 false)
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 712
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fb, ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 24, i1 false)
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 1066
  store i8 %i.bc, ptr %i.fc, align 2
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 1056
  store ptr %storemerge, ptr %i.fd, align 8
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 736
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fe, ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 24, i1 false)
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 848
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ff, ptr noundef nonnull align 8 dereferenceable(24) %i.x, i64 24, i1 false)
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 760
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fg, ptr noundef nonnull align 8 dereferenceable(24) %i.w, i64 24, i1 false)
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 1067
  store i8 %i.bt, ptr %i.fh, align 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull align 8 dereferenceable(384) %i.v, i64 384, i1 false)
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 872
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fi, ptr noundef nonnull align 8 dereferenceable(24) %i.u, i64 24, i1 false)
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 1068
  store i8 %i.dq, ptr %i.fj, align 4
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 1069
  store i8 %i.ds, ptr %i.fk, align 1
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 896
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.fl, ptr noundef nonnull align 8 dereferenceable(48) %i.t, i64 48, i1 false)
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 944
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fm, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false)
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 968
  store i64 %.sroa.02.0, ptr %i.fn, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 976
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.473, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  ret void

bb.bu:                                            ; preds = %bb.bq
  %i.fo = landingpad { ptr, i32 }
          cleanup
  br label %.body40

.body40:                                          ; preds = %bb.br, %bb.bu
  %eh.lpad-body41 = phi { ptr, i32 } [ %i.fo, %bb.bu ], [ %i.eu, %bb.br ] ; 2 uses
  %i.fp = load i64, ptr %i.s, align 8, !range !43, !alias.scope !10293, !noundef !3
  %i.fq = icmp eq i64 %i.fp, -9223372036854775808
  br i1 %i.fq, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast5query7SettingEEECsdJxlLsGgtXr_16delta_benchmarks.exit, label %bb.bv

bb.bv:                                            ; preds = %.body40
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast5query7SettingEECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast5query7SettingEEECsdJxlLsGgtXr_16delta_benchmarks.exit unwind label %bb.bx, !inline_history !5880

bb.bw:                                            ; preds = %.noexc39
  %.sroa.072.0.copyload = load i64, ptr %i.k, align 8, !noalias !10296
  %.sroa.473.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.473, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.473.0..sroa_idx, i64 56, i1 false)
  %.sroa.473.64..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.473, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.473.64..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !10281
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !10281
  br label %bb.bt

bb.bx:                                            ; preds = %bb.bv, %bb.bb, %bb.j, %bb.q, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast5query7SettingEEECsdJxlLsGgtXr_16delta_benchmarks.exit, %.body36, %.body48, %bb.y, %bb.v, %.body, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs4lawaffTVVK_9sqlparser3ast5IdentEECsdJxlLsGgtXr_16delta_benchmarks.exit
  %i.fr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #22
  unreachable

bb.by:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs4lawaffTVVK_9sqlparser3ast5IdentEECsdJxlLsGgtXr_16delta_benchmarks.exit
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB7_3VecINtCsbpG6u9KFjWn_8indexmap6BucketNtNtB9_6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEEINtB5_10SpecExtendRBU_INtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterBU_EE11spec_extendCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10297)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10300)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !10297
  store ptr %1, ptr %i.c, align 8, !noalias !10303
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %2, ptr %i.d, align 8, !noalias !10303
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !10303
  call void @_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterINtCsbpG6u9KFjWn_8indexmap6BucketNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEEENtNtNtB8_6traits8iterator8Iterator9size_hintCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.c), !noalias !10303
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load i64, ptr %i.e, align 8, !range !4, !noalias !10303, !noundef !3
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.h = load i64, ptr %i.g, align 8, !noalias !10303 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !10303
  %i.i = trunc nuw i64 %i.f to i1
  br i1 %i.i, label %bb.b, label %bb.d, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !10304, !noundef !3 ; 3 uses
  %i.l = load i64, ptr %0, align 8, !range !9, !alias.scope !10304, !noundef !3
  %i.m = sub i64 %i.l, %i.k
  %i.n = icmp ugt i64 %i.h, %i.m
  br i1 %i.n, label %bb.c, label %_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB6_3VecINtCsbpG6u9KFjWn_8indexmap6BucketNtNtB8_6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEEINtB4_10SpecExtendBT_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6cloned6ClonedINtNtNtB37_5slice4iter4IterBT_EEE11spec_extendCsdJxlLsGgtXr_16delta_benchmarks.exit, !prof !10

bb.c:                                             ; preds = %bb.b
  call void @_RINvNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.k, i64 noundef %i.h, i64 noundef 8, i64 noundef 128)
  %.pre.i.i = load i64, ptr %i.j, align 8, !alias.scope !10303
  br label %_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB6_3VecINtCsbpG6u9KFjWn_8indexmap6BucketNtNtB8_6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEEINtB4_10SpecExtendBT_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6cloned6ClonedINtNtNtB37_5slice4iter4IterBT_EEE11spec_extendCsdJxlLsGgtXr_16delta_benchmarks.exit

bb.d:                                             ; preds = %bb.a
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @2, ptr noundef nonnull inttoptr (i64 35 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #21, !noalias !10303
  unreachable

_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB6_3VecINtCsbpG6u9KFjWn_8indexmap6BucketNtNtB8_6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEEINtB4_10SpecExtendBT_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6cloned6ClonedINtNtNtB37_5slice4iter4IterBT_EEE11spec_extendCsdJxlLsGgtXr_16delta_benchmarks.exit: ; preds = %bb.b, %bb.c
  %i.o = phi i64 [ %i.k, %bb.b ], [ %.pre.i.i, %bb.c ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !10303, !nonnull !3, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10307
  store ptr %i.j, ptr %i.a, align 8, !noalias !10303
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.o, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !10303
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.q, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !10303
  call void @_RINvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters6clonedINtB5_6ClonedINtNtNtBb_5slice4iter4IterINtCsbpG6u9KFjWn_8indexmap6BucketNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvB3u_8for_each4callB1s_NCINvMsj_NtB23_3vecINtB4K_3VecB1s_E14extend_trustedBP_E0E0ECsdJxlLsGgtXr_16delta_benchmarks(ptr noundef nonnull %1, ptr noundef %2, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !noalias !10310
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !10307
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !10297
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs4lawaffTVVK_9sqlparser3ast11FunctionArgEINtNtBb_6result6ResultNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENCNvMs_NtCsjHlmExTLNuX_14datafusion_sql8relationINtNtB4P_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE23create_default_relation0ENtNtNtB9_6traits8iterator8Iterator4nextCsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 16 captures(none) dereferenceable(112) %0, ptr noalias nofree noundef nonnull align 16 captures(none) dereferenceable(272) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [112 x i8], align 16              ; 5 uses
  %.sroa.9.i = alloca [104 x i8], align 8         ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [56 x i8], align 8                ; 9 uses
  %i.j = alloca [328 x i8], align 8               ; 5 uses
  %i.k = alloca [664 x i8], align 8               ; 10 uses
  %i.l = alloca [112 x i8], align 16              ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10311)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10314)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.i)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.n = load ptr, ptr %i.m, align 16, !alias.scope !10316, !noalias !10319, !noundef !3
  %.not.i28.i = icmp eq ptr %i.n, null
  br i1 %.not.i28.i, label %_RNvXs9_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs4lawaffTVVK_9sqlparser3ast11FunctionArgENCNvMs_NtCsjHlmExTLNuX_14datafusion_sql8relationINtNtB2V_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE23create_default_relation0EEINtB5_8FuseImplBY_E4nextCsdJxlLsGgtXr_16delta_benchmarks.exit.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 232 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 256
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 264
  %.sroa.44.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %.sroa.47.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.58.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.412.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.416.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.2.0..sroa_idx.i.i.i.i.a = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %i.i, i64 48 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.i, i64 24 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 3 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %.promoted.i = load ptr, ptr %i.p, align 8, !alias.scope !10321, !noalias !10327 ; 2 uses
  %.pre.i = load ptr, ptr %i.o, align 8, !alias.scope !10321, !noalias !10327 ; 2 uses
  %.val.i.i.i = load ptr, ptr %i.q, align 16, !alias.scope !10314, !noalias !10311 ; 2 uses
  %.val1.i.i.i = load ptr, ptr %i.r, align 8, !alias.scope !10314, !noalias !10311 ; 2 uses
  %i.z = icmp eq ptr %.promoted.i, %.pre.i
  br i1 %i.z, label %_RNvXs9_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs4lawaffTVVK_9sqlparser3ast11FunctionArgENCNvMs_NtCsjHlmExTLNuX_14datafusion_sql8relationINtNtB2V_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE23create_default_relation0EEINtB5_8FuseImplBY_E4nextCsdJxlLsGgtXr_16delta_benchmarks.exit.thread.i, label %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs4lawaffTVVK_9sqlparser3ast11FunctionArgENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i

_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs4lawaffTVVK_9sqlparser3ast11FunctionArgENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i: ; preds = %.lr.ph.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECsdJxlLsGgtXr_16delta_benchmarks.exit4.i
  %i.aa = phi ptr [ %i.ab, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECsdJxlLsGgtXr_16delta_benchmarks.exit4.i ], [ %.promoted.i, %.lr.ph.i ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10330)
  call void @llvm.experimental.noalias.scope.decl(metadata !10331)
  call void @llvm.experimental.noalias.scope.decl(metadata !10332)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 664 ; 3 uses
  store ptr %i.ab, ptr %i.p, align 8, !alias.scope !10321, !noalias !10327
  %.sroa.0.0.copyload2.i.i.i = load i64, ptr %i.aa, align 8, !noalias !10333 ; 4 uses
  %.sroa.6.0..sroa_idx3.i.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq i64 %.sroa.0.0.copyload2.i.i.i, 72
  br i1 %.not.i.i.i, label %_RNvXs9_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs4lawaffTVVK_9sqlparser3ast11FunctionArgENCNvMs_NtCsjHlmExTLNuX_14datafusion_sql8relationINtNtB2V_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE23create_default_relation0EEINtB5_8FuseImplBY_E4nextCsdJxlLsGgtXr_16delta_benchmarks.exit.thread.i, label %bb.b

bb.b:                                             ; preds = %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs4lawaffTVVK_9sqlparser3ast11FunctionArgENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !10334
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(656) %.sroa.4.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(656) %.sroa.6.0..sroa_idx3.i.i.i, i64 656, i1 false), !noalias !10334
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !10334
  store i64 %.sroa.0.0.copyload2.i.i.i, ptr %i.k, align 8, !noalias !10334
  call void @llvm.experimental.noalias.scope.decl(metadata !10335)
  call void @llvm.experimental.noalias.scope.decl(metadata !10338)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !10334
  %i.ac = icmp ne i64 %.sroa.0.0.copyload2.i.i.i, 70
  call void @llvm.assume(i1 %i.ac)
  %i.ad = icmp eq i64 %.sroa.0.0.copyload2.i.i.i, 71
  %i.ae = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !range !172, !noalias !10334
  %i.af = icmp samesign ult i64 %i.ae, 69
  %or.cond.i.i.i = select i1 %i.ad, i1 %i.af, i1 false
  br i1 %or.cond.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !10340
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !10340
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !10340
  store ptr %i.k, ptr %i.e, align 8, !noalias !10340
  store ptr @_RNvXs1w_NtCs4lawaffTVVK_9sqlparser3astNtB6_11FunctionArgNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.44.0..sroa_idx.i.i.i.i, align 8, !noalias !10340
  invoke void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noundef nonnull @4, ptr noundef nonnull %i.e)
          to label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i.i unwind label %bb.r, !noalias !10341

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !10340
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %i.j, ptr noundef nonnull align 8 dereferenceable(328) %.sroa.6.0..sroa_idx3.i.i.i, i64 328, i1 false), !noalias !10334
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !10340
  invoke void @_RNvMNtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB2_8DFSchema5empty(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.i)
          to label %bb.f unwind label %bb.q, !noalias !10340

bb.e:                                             ; preds = %bb.m
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i.i.i.i

bb.f:                                             ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i.i) ]
  invoke void @_RNvMNtCsjHlmExTLNuX_14datafusion_sql4exprINtNtB4_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE24sql_expr_to_logical_exprCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(none) dereferenceable(112) %i.l, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.val.i.i.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(328) %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.i, ptr noalias noundef nonnull align 8 dereferenceable(80) %.val1.i.i.i)
          to label %bb.h unwind label %bb.g, !noalias !10342

bb.g:                                             ; preds = %bb.f
  %i.ah = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(56) %i.i) #23
          to label %.thread.i.i.i.i unwind label %bb.p, !noalias !10340

bb.h:                                             ; preds = %bb.f
  call void @llvm.experimental.noalias.scope.decl(metadata !10343)
  call void @llvm.experimental.noalias.scope.decl(metadata !10346)
  call void @llvm.experimental.noalias.scope.decl(metadata !10349)
  %i.ai = load ptr, ptr %i.w, align 8, !alias.scope !10352, !noalias !10340, !nonnull !3, !noundef !3
  %i.aj = atomicrmw sub ptr %i.ai, i64 1 release, align 8, !noalias !10353
  %i.ak = icmp eq i64 %i.aj, 1
  br i1 %i.ak, label %bb.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i.i.i

bb.i:                                             ; preds = %bb.h
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaE9drop_slowCs1N9T06jgEdt_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.w) #27
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i.i.i unwind label %bb.j, !noalias !10340

bb.j:                                             ; preds = %bb.i
  %i.al = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB4_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEEECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.i) #23
          to label %bb.k unwind label %bb.n, !noalias !10340

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i.i.i: ; preds = %bb.i, %bb.h
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB4_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEEECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.i)
          to label %bb.m unwind label %bb.l, !noalias !10340

bb.k:                                             ; preds = %bb.l, %bb.j
  %.pn.i.i.i.i.i = phi { ptr, i32 } [ %i.am, %bb.l ], [ %i.al, %bb.j ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies20FunctionalDependenceEECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %.thread.i.i.i.i unwind label %bb.n, !noalias !10340

bb.l:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i.i.i
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.m:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i.i.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies20FunctionalDependenceEECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i.i unwind label %bb.e, !noalias !10340

bb.n:                                             ; preds = %bb.k, %bb.j
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #22, !noalias !10340
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i.i: ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !10340
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !10340
  br label %bb.o

bb.o:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsdJxlLsGgtXr_16delta_benchmarks.exit30.i.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i.i
  %i.ao = load i64, ptr %i.k, align 8, !range !267, !alias.scope !10338, !noalias !10341, !noundef !3 ; 2 uses
  %i.ap = icmp ne i64 %i.ao, 70
  call void @llvm.assume(i1 %i.ap)
  %i.aq = icmp eq i64 %i.ao, 71
  br i1 %i.aq, label %bb.w, label %bb.x

bb.p:                                             ; preds = %bb.ae, %bb.ad, %bb.v, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsdJxlLsGgtXr_16delta_benchmarks.exit28.i.i.i.i, %bb.q, %bb.g
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #22, !noalias !10341
  unreachable

.thread.i.i.i.i:                                  ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsdJxlLsGgtXr_16delta_benchmarks.exit28.i.i.i.i, %bb.r, %bb.q, %bb.k, %bb.g, %bb.e
  %.pn21.pn.i.i.i.i = phi { ptr, i32 } [ %i.av, %bb.q ], [ %i.ag, %bb.e ], [ %.pn.i.i.i.i.i, %bb.k ], [ %i.aw, %bb.r ], [ %i.ah, %bb.g ], [ %.pn.i.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsdJxlLsGgtXr_16delta_benchmarks.exit28.i.i.i.i ] ; 3 uses
  %i.as = load i64, ptr %i.k, align 8, !range !267, !alias.scope !10338, !noalias !10341, !noundef !3 ; 2 uses
  %i.at = icmp ne i64 %i.as, 70
  call void @llvm.assume(i1 %i.at)
  %i.au = icmp eq i64 %i.as, 71
  br i1 %i.au, label %bb.ac, label %bb.ad

bb.q:                                             ; preds = %bb.d
  %i.av = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast4ExprECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(328) %i.j) #23
          to label %.thread.i.i.i.i unwind label %bb.p, !noalias !10340

bb.r:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsdJxlLsGgtXr_16delta_benchmarks.exit29.i.i.i.i, %bb.c
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i.i.i.i

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i.i: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !10340
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !10340
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !10340
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !10340
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !10340
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef 0, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.s unwind label %.loopexit.i, !noalias !10341

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsdJxlLsGgtXr_16delta_benchmarks.exit28.i.i.i.i: ; preds = %bb.v, %.loopexit.split-lp.i, %.loopexit.i
  %.pn.i.i.i.i = phi { ptr, i32 } [ %i.bc, %bb.v ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %.thread.i.i.i.i unwind label %bb.p, !noalias !10341

.loopexit.i:                                      ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsdJxlLsGgtXr_16delta_benchmarks.exit27.i.i.i.i, %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsdJxlLsGgtXr_16delta_benchmarks.exit28.i.i.i.i

.loopexit.split-lp.i:                             ; preds = %bb.t
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsdJxlLsGgtXr_16delta_benchmarks.exit28.i.i.i.i

bb.s:                                             ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i.i
  %i.ax = load i64, ptr %i.b, align 8, !range !4, !noalias !10340, !noundef !3
  %i.ay = trunc nuw i64 %i.ax to i1
  %i.az = load i64, ptr %i.s, align 8, !range !43, !noalias !10340, !noundef !3 ; 2 uses
  br i1 %i.ay, label %bb.t, label %bb.u, !prof !10

bb.t:                                             ; preds = %bb.s
  %i.ba = load i64, ptr %i.t, align 8, !noalias !10340
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.az, i64 %i.ba) #21
          to label %bb.ab unwind label %.loopexit.split-lp.i, !noalias !10341

bb.u:                                             ; preds = %bb.s
  %i.bb = load ptr, ptr %i.t, align 8, !noalias !10340, !nonnull !3, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !10340
  store i64 %i.az, ptr %i.d, align 8, !noalias !10340
  store ptr %i.bb, ptr %.sroa.47.0..sroa_idx.i.i.i.i, align 8, !noalias !10340
  store i64 0, ptr %.sroa.58.0..sroa_idx.i.i.i.i, align 8, !noalias !10340
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !10340
  store ptr %i.g, ptr %i.c, align 8, !noalias !10340
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.412.0..sroa_idx.i.i.i.i, align 8, !noalias !10340
  store ptr %i.d, ptr %i.u, align 8, !noalias !10340
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.416.0..sroa_idx.i.i.i.i, align 8, !noalias !10340
  invoke void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noundef nonnull @5, ptr noundef nonnull %i.c)
          to label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsdJxlLsGgtXr_16delta_benchmarks.exit27.i.i.i.i unwind label %bb.v, !noalias !10341

bb.v:                                             ; preds = %bb.u
  %i.bc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsdJxlLsGgtXr_16delta_benchmarks.exit28.i.i.i.i unwind label %bb.p, !noalias !10341

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsdJxlLsGgtXr_16delta_benchmarks.exit27.i.i.i.i: ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !10340
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsdJxlLsGgtXr_16delta_benchmarks.exit29.i.i.i.i unwind label %.loopexit.i, !noalias !10341

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsdJxlLsGgtXr_16delta_benchmarks.exit29.i.i.i.i: ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsdJxlLsGgtXr_16delta_benchmarks.exit27.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !10340
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsdJxlLsGgtXr_16delta_benchmarks.exit30.i.i.i.i unwind label %bb.r, !noalias !10341

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsdJxlLsGgtXr_16delta_benchmarks.exit30.i.i.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsdJxlLsGgtXr_16delta_benchmarks.exit29.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !10340
  store i64 7, ptr %.sroa.2.0..sroa_idx.i.i.i.i.a, align 8, !alias.scope !10335, !noalias !10342
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.v, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !noalias !10342
  store i64 37, ptr %i.l, align 16, !alias.scope !10335, !noalias !10342
  br label %bb.o

bb.w:                                             ; preds = %bb.o
  %i.bd = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !range !172, !alias.scope !10338, !noalias !10341, !noundef !3
  %cond.i.i.i.i = icmp eq i64 %i.bd, 69
  br i1 %cond.i.i.i.i, label %bb.y, label %_RNvXs9_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs4lawaffTVVK_9sqlparser3ast11FunctionArgENCNvMs_NtCsjHlmExTLNuX_14datafusion_sql8relationINtNtB2V_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE23create_default_relation0EEINtB5_8FuseImplBY_E4nextCsdJxlLsGgtXr_16delta_benchmarks.exit.i

bb.x:                                             ; preds = %bb.o
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast11FunctionArgECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(664) %i.k), !noalias !10341
  br label %_RNvXs9_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs4lawaffTVVK_9sqlparser3ast11FunctionArgENCNvMs_NtCsjHlmExTLNuX_14datafusion_sql8relationINtNtB2V_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE23create_default_relation0EEINtB5_8FuseImplBY_E4nextCsdJxlLsGgtXr_16delta_benchmarks.exit.i

bb.y:                                             ; preds = %bb.w
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.y) #25
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i.i.i unwind label %bb.z, !noalias !10341, !inline_history !10354

bb.z:                                             ; preds = %bb.y
  %i.be = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %common.resume.i.i.i.i unwind label %bb.aa, !noalias !10341, !inline_history !1791

bb.aa:                                            ; preds = %bb.z
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #22, !noalias !10341, !inline_history !10354
  unreachable

common.resume.i.i.i.i:                            ; preds = %bb.ae, %bb.ad, %bb.ac, %bb.z
  %common.resume.op.i.i.i.i = phi { ptr, i32 } [ %i.be, %bb.z ], [ %.pn21.pn.i.i.i.i, %bb.ae ], [ %.pn21.pn.i.i.i.i, %bb.ad ], [ %.pn21.pn.i.i.i.i, %bb.ac ]
  resume { ptr, i32 } %common.resume.op.i.i.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i.i.i: ; preds = %bb.y
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.y), !noalias !10341, !inline_history !1791
  br label %_RNvXs9_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs4lawaffTVVK_9sqlparser3ast11FunctionArgENCNvMs_NtCsjHlmExTLNuX_14datafusion_sql8relationINtNtB2V_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE23create_default_relation0EEINtB5_8FuseImplBY_E4nextCsdJxlLsGgtXr_16delta_benchmarks.exit.i

bb.ab:                                            ; preds = %bb.t
  unreachable

bb.ac:                                            ; preds = %.thread.i.i.i.i
  %i.bg = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !range !172, !alias.scope !10338, !noalias !10341, !noundef !3
  %i.bh = icmp samesign ult i64 %i.bg, 69
  br i1 %i.bh, label %common.resume.i.i.i.i, label %bb.ae

bb.ad:                                            ; preds = %.thread.i.i.i.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast11FunctionArgECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(664) %i.k) #23
          to label %common.resume.i.i.i.i unwind label %bb.p, !noalias !10341

bb.ae:                                            ; preds = %bb.ac
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast15FunctionArgExprECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(328) %.sroa.4.0..sroa_idx.i.i.i) #23
          to label %common.resume.i.i.i.i unwind label %bb.p, !noalias !10341

_RNvXs9_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs4lawaffTVVK_9sqlparser3ast11FunctionArgENCNvMs_NtCsjHlmExTLNuX_14datafusion_sql8relationINtNtB2V_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE23create_default_relation0EEINtB5_8FuseImplBY_E4nextCsdJxlLsGgtXr_16delta_benchmarks.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i.i.i, %bb.x, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !10334
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !10334
  %.sroa.0.0.copyload5.i = load i64, ptr %i.l, align 16, !noalias !10355 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.9.i, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.2.0..sroa_idx.i.i.i.i.a, i64 104, i1 false), !noalias !10356
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !10334
  %.not.i = icmp eq i64 %.sroa.0.0.copyload5.i, 38
  br i1 %.not.i, label %_RNvXs9_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs4lawaffTVVK_9sqlparser3ast11FunctionArgENCNvMs_NtCsjHlmExTLNuX_14datafusion_sql8relationINtNtB2V_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE23create_default_relation0EEINtB5_8FuseImplBY_E4nextCsdJxlLsGgtXr_16delta_benchmarks.exit.thread.i, label %bb.af

bb.af:                                            ; preds = %_RNvXs9_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs4lawaffTVVK_9sqlparser3ast11FunctionArgENCNvMs_NtCsjHlmExTLNuX_14datafusion_sql8relationINtNtB2V_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE23create_default_relation0EEINtB5_8FuseImplBY_E4nextCsdJxlLsGgtXr_16delta_benchmarks.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10357
  store i64 %.sroa.0.0.copyload5.i, ptr %i.a, align 16, !noalias !10361
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.2.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.9.i, i64 104, i1 false), !noalias !10356
  %i.bi = icmp eq i64 %.sroa.0.0.copyload5.i, 37
  br i1 %i.bi, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECsdJxlLsGgtXr_16delta_benchmarks.exit4.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECsdJxlLsGgtXr_16delta_benchmarks.exit2.i

_RNvXs9_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs4lawaffTVVK_9sqlparser3ast11FunctionArgENCNvMs_NtCsjHlmExTLNuX_14datafusion_sql8relationINtNtB2V_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE23create_default_relation0EEINtB5_8FuseImplBY_E4nextCsdJxlLsGgtXr_16delta_benchmarks.exit.thread.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECsdJxlLsGgtXr_16delta_benchmarks.exit4.i, %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs4lawaffTVVK_9sqlparser3ast11FunctionArgENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i, %_RNvXs9_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs4lawaffTVVK_9sqlparser3ast11FunctionArgENCNvMs_NtCsjHlmExTLNuX_14datafusion_sql8relationINtNtB2V_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE23create_default_relation0EEINtB5_8FuseImplBY_E4nextCsdJxlLsGgtXr_16delta_benchmarks.exit.i, %.lr.ph.i, %bb.a
  store i64 37, ptr %0, align 16, !alias.scope !10311, !noalias !10314
  br label %_RNvXsI_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs4lawaffTVVK_9sqlparser3ast11FunctionArgENCNvMs_NtCsjHlmExTLNuX_14datafusion_sql8relationINtNtB38_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE23create_default_relation0EINtNtBb_6result8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEENtNtNtB9_6traits8iterator8Iterator4nextCsdJxlLsGgtXr_16delta_benchmarks.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECsdJxlLsGgtXr_16delta_benchmarks.exit2.i: ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !10357
  store i64 %.sroa.0.0.copyload5.i, ptr %0, align 16, !alias.scope !10311, !noalias !10314
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.6.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.9.i, i64 104, i1 false), !noalias !10314
  br label %_RNvXsI_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs4lawaffTVVK_9sqlparser3ast11FunctionArgENCNvMs_NtCsjHlmExTLNuX_14datafusion_sql8relationINtNtB38_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE23create_default_relation0EINtNtBb_6result8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEENtNtNtB9_6traits8iterator8Iterator4nextCsdJxlLsGgtXr_16delta_benchmarks.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECsdJxlLsGgtXr_16delta_benchmarks.exit4.i: ; preds = %bb.af
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(40) %.sroa.2.0..sroa_idx.i), !noalias !10357
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !10357
  %i.bj = icmp eq ptr %i.ab, %.pre.i
  br i1 %i.bj, label %_RNvXs9_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs4lawaffTVVK_9sqlparser3ast11FunctionArgENCNvMs_NtCsjHlmExTLNuX_14datafusion_sql8relationINtNtB2V_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE23create_default_relation0EEINtB5_8FuseImplBY_E4nextCsdJxlLsGgtXr_16delta_benchmarks.exit.thread.i, label %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs4lawaffTVVK_9sqlparser3ast11FunctionArgENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i

_RNvXsI_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs4lawaffTVVK_9sqlparser3ast11FunctionArgENCNvMs_NtCsjHlmExTLNuX_14datafusion_sql8relationINtNtB38_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE23create_default_relation0EINtNtBb_6result8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEENtNtNtB9_6traits8iterator8Iterator4nextCsdJxlLsGgtXr_16delta_benchmarks.exit: ; preds = %_RNvXs9_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs4lawaffTVVK_9sqlparser3ast11FunctionArgENCNvMs_NtCsjHlmExTLNuX_14datafusion_sql8relationINtNtB2V_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE23create_default_relation0EEINtB5_8FuseImplBY_E4nextCsdJxlLsGgtXr_16delta_benchmarks.exit.thread.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECsdJxlLsGgtXr_16delta_benchmarks.exit2.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs1f_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_20AlterPolicyOperationNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(680) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(680) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [328 x i8], align 8               ; 5 uses
  %i.b = alloca [328 x i8], align 8               ; 4 uses
  %.sroa.5 = alloca [320 x i8], align 8           ; 4 uses
  %i.c = alloca [328 x i8], align 8               ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [64 x i8], align 8                ; 6 uses
  %i.f = load i64, ptr %1, align 8, !range !172, !noundef !3 ; 2 uses
  %.not = icmp eq i64 %i.f, 70
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 656 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !range !43, !noundef !3
  %.not4 = icmp eq i64 %i.h, -9223372036854775808
  br i1 %.not4, label %bb.f, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10362)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10365)
  call void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(64) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.i)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.k = load i32, ptr %i.j, align 8, !range !7691, !alias.scope !10365, !noalias !10362, !noundef !3
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.m, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.l, i64 32, i1 false), !alias.scope !10367
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  store i32 %i.k, ptr %i.n, align 8, !alias.scope !10362, !noalias !10365
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.o, ptr noundef nonnull align 8 dereferenceable(64) %i.e, i64 64, i1 false)
  store i64 70, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.d

bb.d:                                             ; preds = %bb.o, %bb.c
  ret void

bb.e:                                             ; preds = %bb.b
  call void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast3ddl5OwnerENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.g)
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  store i64 -9223372036854775808, ptr %i.d, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %.not5 = icmp eq i64 %i.f, 69
  br i1 %.not5, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke fastcc void @_RNvXs6H_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(328) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %1)
          to label %bb.m unwind label %bb.l

bb.i:                                             ; preds = %bb.g
  store i64 69, ptr %i.c, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.m, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 328 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !range !69, !noundef !3
  %.not6 = icmp eq i64 %i.q, 69
  br i1 %.not6, label %bb.o, label %bb.n

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEECsdJxlLsGgtXr_16delta_benchmarks.exit: ; preds = %bb.p, %bb.q, %bb.l
  %.pn = phi { ptr, i32 } [ %i.t, %bb.l ], [ %i.w, %bb.q ], [ %i.w, %bb.p ]
  %i.r = load i64, ptr %i.d, align 8, !range !43, !alias.scope !10368, !noundef !3
  %i.s = icmp eq i64 %i.r, -9223372036854775808
  br i1 %i.s, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast3ddl5OwnerEEECsdJxlLsGgtXr_16delta_benchmarks.exit, label %bb.k

bb.k:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEECsdJxlLsGgtXr_16delta_benchmarks.exit
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast3ddl5OwnerEECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast3ddl5OwnerEEECsdJxlLsGgtXr_16delta_benchmarks.exit unwind label %bb.s

bb.l:                                             ; preds = %bb.h
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEECsdJxlLsGgtXr_16delta_benchmarks.exit

bb.m:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %i.c, ptr noundef nonnull align 8 dereferenceable(328) %i.b, i64 328, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.j

bb.n:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke fastcc void @_RNvXs6H_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(328) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.p)
          to label %bb.r unwind label %bb.p

bb.o:                                             ; preds = %bb.j, %bb.r
  %.sroa.0.0 = phi i64 [ %.sroa.0.0.copyload1, %bb.r ], [ 69, %bb.j ]
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 656
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %0, ptr noundef nonnull align 8 dereferenceable(328) %i.c, i64 328, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 328
  store i64 %.sroa.0.0, ptr %i.v, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 336
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(320) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(320) %.sroa.5, i64 320, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.d

bb.p:                                             ; preds = %bb.n
  %i.w = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.x = load i64, ptr %i.c, align 8, !range !69, !alias.scope !10371, !noundef !3
  %i.y = icmp eq i64 %i.x, 69
  br i1 %i.y, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEECsdJxlLsGgtXr_16delta_benchmarks.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast4ExprECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(328) %i.c)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEECsdJxlLsGgtXr_16delta_benchmarks.exit unwind label %bb.s, !inline_history !1865

bb.r:                                             ; preds = %bb.n
  %.sroa.0.0.copyload1 = load i64, ptr %i.a, align 8
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(320) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(320) %.sroa.5.0..sroa_idx2, i64 320, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.o

bb.s:                                             ; preds = %bb.q, %bb.k
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast3ddl5OwnerEEECsdJxlLsGgtXr_16delta_benchmarks.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEECsdJxlLsGgtXr_16delta_benchmarks.exit, %bb.k
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRINtNtCs6Po7BT7Nknu_5alloc3vec3VecIBx_NtNtCs4lawaffTVVK_9sqlparser3ast4ExprEENtB6_5Debug3fmtCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !3, !align !1750, !noundef !3 ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 8
  %.val = load ptr, ptr %i.c, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.d = getelementptr i8, ptr %i.b, i64 16
  %.val1 = load i64, ptr %i.d, align 8, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10374
  call void @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter10debug_list(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !10380
  %i.e = getelementptr inbounds nuw [24 x i8], ptr %.val, i64 %.val1
  %i.f = call noundef nonnull align 8 ptr @_RINvMs5_NtNtCsbvkFyIu7lgC_4core3fmt8buildersNtB6_9DebugList7entriesRINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEINtNtNtBa_5slice4iter4IterB14_EECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull readonly align 8 %.val, ptr noundef nonnull readonly %i.e)
  %i.g = call noundef zeroext i1 @_RNvMs5_NtNtCsbvkFyIu7lgC_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !10374
  ret i1 %i.g
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRINtNtCs6Po7BT7Nknu_5alloc3vec3VecIBx_NtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEENtB6_5Debug3fmtCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !3, !align !1750, !noundef !3 ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 8
  %.val = load ptr, ptr %i.c, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.d = getelementptr i8, ptr %i.b, i64 16
  %.val1 = load i64, ptr %i.d, align 8, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10381
  call void @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter10debug_list(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !10387
end_hunk_1
