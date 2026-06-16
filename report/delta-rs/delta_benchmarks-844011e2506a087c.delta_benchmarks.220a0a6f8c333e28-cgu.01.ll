inline.NumInlined: 8484
inline.NumDeleted: 2578
begin_hunk_0_@_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec14spec_from_iterINtB4_3VecNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnEINtB2_12SpecFromIterBU_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtB2c_6filter6FilterIB28_INtNtNtB2g_5slice4iter4IterINtNtB6_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENCNvMNtNtCsjHlmExTLNuX_14datafusion_sql8relation4joinINtNtB4Y_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE10parse_joins0_0ENCB4R_s1_0EINvMs_BW_BU_9from_nameRNtNtB6_6string6StringEEE9from_iterCs2VbMhdeEr66_16delta_benchmarks:bb.a
  store ptr inttoptr (i64 8 to ptr), ptr %i.j, align 8, !alias.scope !10375, !noalias !10383
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.k, align 8, !alias.scope !10375, !noalias !10383
  br label %_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtB2q_6filter6FilterIB2m_INtNtNtB2u_5slice4iter4IterINtNtB6_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENCNvMNtNtCsjHlmExTLNuX_14datafusion_sql8relation4joinINtNtB5c_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE10parse_joins0_0ENCB55_s1_0EINvMs_B13_B11_9from_nameRNtNtB6_6string6StringEEE9from_iterCs2VbMhdeEr66_16delta_benchmarks.exit

bb.b:                                             ; preds = %bb.d, %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(104) %i.f) #23
          to label %bb.k unwind label %bb.j, !noalias !10375

bb.c:                                             ; preds = %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterIBN_INtNtNtBb_5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENCNvMNtNtCsjHlmExTLNuX_14datafusion_sql8relation4joinINtNtB3d_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE10parse_joins0_0ENCB36_s1_0EINvMs_NtCsjhHCjzi9uUI_17datafusion_common6columnNtB6d_6Column9from_nameRNtNtB1R_6string6StringEENtNtNtB9_6traits8iterator8Iterator4nextCs2VbMhdeEr66_16delta_benchmarks.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !10378
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.f, ptr noundef nonnull align 8 dereferenceable(104) %i.e, i64 104, i1 false), !noalias !10378
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !10378
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef 4, i1 noundef zeroext false, i64 noundef 8, i64 noundef 104)
          to label %.noexc.i unwind label %bb.b, !noalias !10375

.noexc.i:                                         ; preds = %bb.c
  %i.m = load i64, ptr %i.c, align 8, !range !5, !noalias !10378, !noundef !4
  %i.n = trunc nuw i64 %i.m to i1
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.p = load i64, ptr %i.o, align 8, !range !43, !noalias !10378, !noundef !4 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.n, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %.noexc.i
  %i.r = load i64, ptr %i.q, align 8, !noalias !10378
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.p, i64 %i.r) #21
          to label %.noexc6.i unwind label %bb.b, !noalias !10375

.noexc6.i:                                        ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %.noexc.i
  %i.s = load ptr, ptr %i.q, align 8, !noalias !10378, !nonnull !4, !noundef !4 ; 2 uses
  %i.t = icmp ugt i64 %i.p, 3
  tail call void @llvm.assume(i1 %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !10378
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.s, ptr noundef nonnull align 8 dereferenceable(104) %i.e, i64 104, i1 false), !noalias !10375
  store i64 %i.p, ptr %i.g, align 8, !noalias !10378
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  store ptr %i.s, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !10378
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !10378
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !10378
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !10378
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !noalias !10375
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10384)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10387)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10390
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.v = invoke noundef align 8 ptr @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENCNvMNtNtCsjHlmExTLNuX_14datafusion_sql8relation4joinINtNtB2O_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE10parse_joins0_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB5x_4find5checkRNtNtB1s_6string6StringQNCB2H_s1_0E0INtNtNtBc_3ops12control_flow11ControlFlowB6B_EECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.u)
          to label %.noexc7.i unwind label %.loopexit.split-lp.i, !noalias !10375 ; 2 uses

.noexc7.i:                                        ; preds = %bb.e
  %.not.i6.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i6.i.i.i, label %.loopexit11.i, label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterIBN_INtNtNtBb_5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENCNvMNtNtCsjHlmExTLNuX_14datafusion_sql8relation4joinINtNtB3d_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE10parse_joins0_0ENCB36_s1_0EINvMs_NtCsjhHCjzi9uUI_17datafusion_common6columnNtB6d_6Column9from_nameRNtNtB1R_6string6StringEENtNtNtB9_6traits8iterator8Iterator4nextCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i

_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterIBN_INtNtNtBb_5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENCNvMNtNtCsjHlmExTLNuX_14datafusion_sql8relation4joinINtNtB3d_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE10parse_joins0_0ENCB36_s1_0EINvMs_NtCsjhHCjzi9uUI_17datafusion_common6columnNtB6d_6Column9from_nameRNtNtB1R_6string6StringEENtNtNtB9_6traits8iterator8Iterator4nextCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i: ; preds = %.noexc7.i, %.noexc9.i
  %i.w = phi ptr [ %i.ae, %.noexc9.i ], [ %i.v, %.noexc7.i ]
  invoke void @_RINvMs_NtCsjhHCjzi9uUI_17datafusion_common6columnNtB5_6Column9from_nameRNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.w)
          to label %.noexc8.i unwind label %.loopexit.i, !noalias !10375

.noexc8.i:                                        ; preds = %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterIBN_INtNtNtBb_5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENCNvMNtNtCsjHlmExTLNuX_14datafusion_sql8relation4joinINtNtB3d_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE10parse_joins0_0ENCB36_s1_0EINvMs_NtCsjhHCjzi9uUI_17datafusion_common6columnNtB6d_6Column9from_nameRNtNtB1R_6string6StringEENtNtNtB9_6traits8iterator8Iterator4nextCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i
  %.pr.i.i.i = load i64, ptr %i.a, align 8, !noalias !10392
  %.not.i.i.i = icmp eq i64 %.pr.i.i.i, 4
  br i1 %.not.i.i.i, label %.loopexit11.i, label %bb.f

bb.f:                                             ; preds = %.noexc8.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !10392
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.b, ptr noundef nonnull align 8 dereferenceable(104) %i.a, i64 104, i1 false), !noalias !10392
  %i.x = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !10394, !noalias !10395, !noundef !4 ; 5 uses
  %i.y = icmp ult i64 %i.x, 88686269585142076
  call void @llvm.assume(i1 %i.y)
  %i.z = load i64, ptr %i.g, align 8, !range !10, !alias.scope !10394, !noalias !10395, !noundef !4
  %i.aa = icmp eq i64 %i.x, %i.z
  br i1 %i.aa, label %bb.h, label %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnE7reserveCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i

_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnE7reserveCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i: ; preds = %bb.h, %bb.f
  %i.ab = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !10394, !noalias !10395, !nonnull !4, !noundef !4
  %i.ac = getelementptr inbounds nuw [104 x i8], ptr %i.ab, i64 %i.x
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.ac, ptr noundef nonnull align 8 dereferenceable(104) %i.a, i64 104, i1 false), !noalias !10375
  %i.ad = add nuw nsw i64 %i.x, 1
  store i64 %i.ad, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !10394, !noalias !10395
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !10392
  %i.ae = invoke noundef align 8 ptr @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENCNvMNtNtCsjHlmExTLNuX_14datafusion_sql8relation4joinINtNtB2O_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE10parse_joins0_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB5x_4find5checkRNtNtB1s_6string6StringQNCB2H_s1_0E0INtNtNtBc_3ops12control_flow11ControlFlowB6B_EECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.u)
          to label %.noexc9.i unwind label %.loopexit.i, !noalias !10375 ; 2 uses

.noexc9.i:                                        ; preds = %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnE7reserveCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i
  %.not.i.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i.i, label %.loopexit11.i, label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterIBN_INtNtNtBb_5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENCNvMNtNtCsjHlmExTLNuX_14datafusion_sql8relation4joinINtNtB3d_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE10parse_joins0_0ENCB36_s1_0EINvMs_NtCsjhHCjzi9uUI_17datafusion_common6columnNtB6d_6Column9from_nameRNtNtB1R_6string6StringEENtNtNtB9_6traits8iterator8Iterator4nextCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i

bb.g:                                             ; preds = %bb.h
  %i.af = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(104) %i.b) #23
          to label %.body.i unwind label %bb.i, !noalias !10375

bb.h:                                             ; preds = %bb.f
  invoke void @_RINvNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef %i.x, i64 noundef range(i64 1, 0) 1, i64 noundef 8, i64 noundef 104)
          to label %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnE7reserveCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i unwind label %bb.g, !noalias !10375

bb.i:                                             ; preds = %bb.g
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #22, !noalias !10375
  unreachable

.loopexit.i:                                      ; preds = %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnE7reserveCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i, %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterIBN_INtNtNtBb_5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENCNvMNtNtCsjHlmExTLNuX_14datafusion_sql8relation4joinINtNtB3d_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE10parse_joins0_0ENCB36_s1_0EINvMs_NtCsjhHCjzi9uUI_17datafusion_common6columnNtB6d_6Column9from_nameRNtNtB1R_6string6StringEENtNtNtB9_6traits8iterator8Iterator4nextCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.split-lp.i:                             ; preds = %bb.e
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %.loopexit.split-lp.i, %.loopexit.i, %bb.g
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.af, %bb.g ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(24) %i.g) #23
          to label %bb.k unwind label %bb.j, !noalias !10375

.loopexit11.i:                                    ; preds = %.noexc9.i, %.noexc8.i, %.noexc7.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !10390
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !10378
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !10383
  br label %_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtB2q_6filter6FilterIB2m_INtNtNtB2u_5slice4iter4IterINtNtB6_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENCNvMNtNtCsjHlmExTLNuX_14datafusion_sql8relation4joinINtNtB5c_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE10parse_joins0_0ENCB55_s1_0EINvMs_B13_B11_9from_nameRNtNtB6_6string6StringEEE9from_iterCs2VbMhdeEr66_16delta_benchmarks.exit

bb.j:                                             ; preds = %.body.i, %bb.b
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #22, !noalias !10375
  unreachable

bb.k:                                             ; preds = %.body.i, %bb.b
  %.pn.i = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %i.l, %bb.b ]
  resume { ptr, i32 } %.pn.i

_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtB2q_6filter6FilterIB2m_INtNtNtB2u_5slice4iter4IterINtNtB6_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENCNvMNtNtCsjHlmExTLNuX_14datafusion_sql8relation4joinINtNtB5c_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE10parse_joins0_0ENCB55_s1_0EINvMs_B13_B11_9from_nameRNtNtB6_6string6StringEEE9from_iterCs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterIBN_INtNtNtBb_5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENCNvMNtNtCsjHlmExTLNuX_14datafusion_sql8relation4joinINtNtB3d_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE10parse_joins0_0ENCB36_s1_0EINvMs_NtCsjhHCjzi9uUI_17datafusion_common6columnNtB6d_6Column9from_nameRNtNtB1R_6string6StringEENtNtNtB9_6traits8iterator8Iterator4nextCs2VbMhdeEr66_16delta_benchmarks.exit.thread.i, %.loopexit11.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !10378
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec14spec_from_iterINtB4_3VecNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringEINtB2_12SpecFromIterBU_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapNtNtB10_3env6ArgsOsNCNvXs_CsgcSslxFl7ZO_8clap_lexNtB3e_7RawArgsINtNtB29_7convert4FromB2O_E4from0EE9from_iterCs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10396)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10399)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !10401
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10402)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10405)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10408)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !10411, !noalias !10412, !nonnull !4, !noundef !4 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !10411, !noalias !10412, !nonnull !4, !noundef !4 ; 4 uses
  %i.j = icmp eq ptr %i.i, %i.g
  br i1 %i.j, label %bb.b, label %_RNvXsg_NtCs2pqxYH9ZEk8_3std3envNtB5_6ArgsOsNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4next.exit.i.i

_RNvXsg_NtCs2pqxYH9ZEk8_3std3envNtB5_6ArgsOsNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4next.exit.i.i: ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 24 ; 2 uses
  store ptr %i.k, ptr %i.h, align 8, !alias.scope !10411, !noalias !10412
  %.sroa.0.0.copyload1.i.i = load i64, ptr %i.i, align 8, !noalias !10416 ; 2 uses
  %.not.i.i = icmp eq i64 %.sroa.0.0.copyload1.i.i, -9223372036854775808
  br i1 %.not.i.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %_RNvXsg_NtCs2pqxYH9ZEk8_3std3envNtB5_6ArgsOsNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4next.exit.i.i, %bb.a
  store i64 0, ptr %0, align 8, !alias.scope !10396, !noalias !10399
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.l, align 8, !alias.scope !10396, !noalias !10399
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.m, align 8, !alias.scope !10396, !noalias !10399
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !10401
  tail call void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(32) %1), !noalias !10396
  br label %_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapNtNtB17_3env6ArgsOsNCNvXs_CsgcSslxFl7ZO_8clap_lexNtB3s_7RawArgsINtNtB2n_7convert4FromB32_E4from0EE9from_iterCs2VbMhdeEr66_16delta_benchmarks.exit

bb.c:                                             ; preds = %bb.e, %bb.d
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %bb.m unwind label %bb.l, !noalias !10401

bb.d:                                             ; preds = %_RNvXsg_NtCs2pqxYH9ZEk8_3std3envNtB5_6ArgsOsNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4next.exit.i.i
  %.sroa.6.0..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.6.0..sroa_idx9.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !10401
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx9.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx2.i.i, i64 16, i1 false), !noalias !10401
  store i64 %.sroa.0.0.copyload1.i.i, ptr %i.d, align 8, !noalias !10401
  %i.o = ptrtoint ptr %i.g to i64
  %i.p = ptrtoint ptr %i.k to i64
  %i.q = sub nuw i64 %i.o, %i.p
  %i.r = udiv exact i64 %i.q, 24
  %i.s = tail call i64 @llvm.umax.i64(i64 %i.r, i64 3)
  %.sroa.0.0.i.i = add nuw nsw i64 %i.s, 1        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !10401
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %.sroa.0.0.i.i, i1 noundef zeroext false, i64 noundef 8, i64 noundef 24)
          to label %.noexc.i unwind label %bb.c, !noalias !10401

.noexc.i:                                         ; preds = %bb.d
  %i.t = load i64, ptr %i.b, align 8, !range !5, !noalias !10401, !noundef !4
  %i.u = trunc nuw i64 %i.t to i1
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.w = load i64, ptr %i.v, align 8, !range !43, !noalias !10401, !noundef !4 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.u, label %bb.e, label %bb.f, !prof !11

bb.e:                                             ; preds = %.noexc.i
  %i.y = load i64, ptr %i.x, align 8, !noalias !10401
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.w, i64 %i.y) #21
          to label %.noexc6.i unwind label %bb.c, !noalias !10401

.noexc6.i:                                        ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %.noexc.i
  %i.z = load ptr, ptr %i.x, align 8, !noalias !10401, !nonnull !4, !noundef !4 ; 2 uses
  %2 = icmp ule i64 %.sroa.0.0.i.i, %i.w
  tail call void @llvm.assume(i1 %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !10401
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !10401
  store i64 %i.w, ptr %i.e, align 8, !noalias !10401
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr %i.z, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !10401
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !10401
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !10401
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !10401
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !noalias !10396
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10417)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10420)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10422)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10425)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.ac = load ptr, ptr %i.aa, align 8, !alias.scope !10427, !noalias !10434, !nonnull !4, !noundef !4 ; 3 uses
  %i.ad = load ptr, ptr %i.ab, align 8, !alias.scope !10427, !noalias !10434, !nonnull !4, !noundef !4 ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.ac
  br i1 %i.ae, label %_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringE16extend_desugaredINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapNtNtBM_3env6ArgsOsNCNvXs_CsgcSslxFl7ZO_8clap_lexNtB2U_7RawArgsINtNtB1Q_7convert4FromB2v_E4from0EECs2VbMhdeEr66_16delta_benchmarks.exit.i.i, label %_RNvXsg_NtCs2pqxYH9ZEk8_3std3envNtB5_6ArgsOsNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4next.exit.i.lr.ph.i.i.i

_RNvXsg_NtCs2pqxYH9ZEk8_3std3envNtB5_6ArgsOsNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4next.exit.i.lr.ph.i.i.i: ; preds = %bb.f
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.af = ptrtoint ptr %i.ac to i64
  br label %_RNvXsg_NtCs2pqxYH9ZEk8_3std3envNtB5_6ArgsOsNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i

_RNvXsg_NtCs2pqxYH9ZEk8_3std3envNtB5_6ArgsOsNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i: ; preds = %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringE7reserveCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i, %_RNvXsg_NtCs2pqxYH9ZEk8_3std3envNtB5_6ArgsOsNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4next.exit.i.lr.ph.i.i.i
  %i.ag = phi i64 [ 1, %_RNvXsg_NtCs2pqxYH9ZEk8_3std3envNtB5_6ArgsOsNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4next.exit.i.lr.ph.i.i.i ], [ %i.ao, %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringE7reserveCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ] ; 5 uses
  %i.ah = phi ptr [ %i.ad, %_RNvXsg_NtCs2pqxYH9ZEk8_3std3envNtB5_6ArgsOsNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4next.exit.i.lr.ph.i.i.i ], [ %i.ai, %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringE7reserveCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10438)
  call void @llvm.experimental.noalias.scope.decl(metadata !10440)
  call void @llvm.experimental.noalias.scope.decl(metadata !10442)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24 ; 5 uses
  %.sroa.0.0.copyload1.i.i.i.i = load i64, ptr %i.ah, align 8, !noalias !10444 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload1.i.i.i.i, -9223372036854775808
  br i1 %.not.i.i.i.i, label %_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringE16extend_desugaredINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapNtNtBM_3env6ArgsOsNCNvXs_CsgcSslxFl7ZO_8clap_lexNtB2U_7RawArgsINtNtB1Q_7convert4FromB2v_E4from0EECs2VbMhdeEr66_16delta_benchmarks.exit.i.loopexit.i, label %bb.g

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i: ; preds = %bb.h
  invoke void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %.body.i unwind label %bb.j, !noalias !10401

bb.g:                                             ; preds = %_RNvXsg_NtCs2pqxYH9ZEk8_3std3envNtB5_6ArgsOsNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i
  %.sroa.6.0..sroa_idx2.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10445
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx2.i.i.i.i, i64 16, i1 false), !noalias !10446
  store i64 %.sroa.0.0.copyload1.i.i.i.i, ptr %i.a, align 8, !noalias !10445
  %i.aj = icmp samesign ult i64 %i.ag, 384307168202282326
  call void @llvm.assume(i1 %i.aj)
  %i.ak = load i64, ptr %i.e, align 8, !range !10, !alias.scope !10447, !noalias !10446, !noundef !4
  %i.al = icmp eq i64 %i.ag, %i.ak
  br i1 %i.al, label %bb.i, label %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringE7reserveCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i

_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringE7reserveCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i: ; preds = %bb.i, %bb.g
  %i.am = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !10447, !noalias !10446, !nonnull !4, !noundef !4
  %i.an = getelementptr inbounds nuw [24 x i8], ptr %i.am, i64 %i.ag
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.an, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !10446
  %i.ao = add nuw nsw i64 %i.ag, 1                ; 2 uses
  store i64 %i.ao, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !10447, !noalias !10446
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !10445
  %i.ap = icmp eq ptr %i.ai, %i.ac
  br i1 %i.ap, label %_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringE16extend_desugaredINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapNtNtBM_3env6ArgsOsNCNvXs_CsgcSslxFl7ZO_8clap_lexNtB2U_7RawArgsINtNtB1Q_7convert4FromB2v_E4from0EECs2VbMhdeEr66_16delta_benchmarks.exit.i.loopexit.i, label %_RNvXsg_NtCs2pqxYH9ZEk8_3std3envNtB5_6ArgsOsNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i

bb.h:                                             ; preds = %bb.i
  %i.aq = landingpad { ptr, i32 }
          cleanup
  store ptr %i.ai, ptr %i.ab, align 8, !alias.scope !10448, !noalias !10434
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i unwind label %bb.j, !noalias !10446

bb.i:                                             ; preds = %bb.g
  %i.ar = ptrtoint ptr %i.ai to i64
  %i.as = sub nuw i64 %i.af, %i.ar
  %i.at = udiv exact i64 %i.as, 24
  %i.au = add nuw nsw i64 %i.at, 1
  invoke void @_RINvNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %i.ag, i64 noundef %i.au, i64 noundef 8, i64 noundef 24)
          to label %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringE7reserveCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i unwind label %bb.h, !noalias !10446

bb.j:                                             ; preds = %bb.h, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #22, !noalias !10401
  unreachable

_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringE16extend_desugaredINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapNtNtBM_3env6ArgsOsNCNvXs_CsgcSslxFl7ZO_8clap_lexNtB2U_7RawArgsINtNtB1Q_7convert4FromB2v_E4from0EECs2VbMhdeEr66_16delta_benchmarks.exit.i.loopexit.i: ; preds = %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringE7reserveCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i, %_RNvXsg_NtCs2pqxYH9ZEk8_3std3envNtB5_6ArgsOsNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i
  store ptr %i.ai, ptr %i.ab, align 8, !alias.scope !10448, !noalias !10434
  br label %_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringE16extend_desugaredINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapNtNtBM_3env6ArgsOsNCNvXs_CsgcSslxFl7ZO_8clap_lexNtB2U_7RawArgsINtNtB1Q_7convert4FromB2v_E4from0EECs2VbMhdeEr66_16delta_benchmarks.exit.i.i

_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringE16extend_desugaredINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapNtNtBM_3env6ArgsOsNCNvXs_CsgcSslxFl7ZO_8clap_lexNtB2U_7RawArgsINtNtB1Q_7convert4FromB2v_E4from0EECs2VbMhdeEr66_16delta_benchmarks.exit.i.i: ; preds = %_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringE16extend_desugaredINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapNtNtBM_3env6ArgsOsNCNvXs_CsgcSslxFl7ZO_8clap_lexNtB2U_7RawArgsINtNtB1Q_7convert4FromB2v_E4from0EECs2VbMhdeEr66_16delta_benchmarks.exit.i.loopexit.i, %bb.f
  invoke void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB4_3VecNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringEINtB2_10SpecExtendBR_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapNtNtBX_3env6ArgsOsNCNvXs_CsgcSslxFl7ZO_8clap_lexNtB38_7RawArgsINtNtB24_7convert4FromB2J_E4from0EE11spec_extendCs2VbMhdeEr66_16delta_benchmarks.exit.i unwind label %bb.k, !noalias !10401

bb.k:                                             ; preds = %_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringE16extend_desugaredINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapNtNtBM_3env6ArgsOsNCNvXs_CsgcSslxFl7ZO_8clap_lexNtB2U_7RawArgsINtNtB1Q_7convert4FromB2v_E4from0EECs2VbMhdeEr66_16delta_benchmarks.exit.i.i
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.k, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.aw, %bb.k ], [ %i.aq, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(24) %i.e) #23
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3map3MapNtNtCs2pqxYH9ZEk8_3std3env6ArgsOsNCNvXs_CsgcSslxFl7ZO_8clap_lexNtB1S_7RawArgsINtNtB4_7convert4FromB1e_E4from0EECs2VbMhdeEr66_16delta_benchmarks.exit.i unwind label %bb.l, !noalias !10401

_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB4_3VecNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringEINtB2_10SpecExtendBR_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapNtNtBX_3env6ArgsOsNCNvXs_CsgcSslxFl7ZO_8clap_lexNtB38_7RawArgsINtNtB24_7convert4FromB2J_E4from0EE11spec_extendCs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringE16extend_desugaredINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapNtNtBM_3env6ArgsOsNCNvXs_CsgcSslxFl7ZO_8clap_lexNtB2U_7RawArgsINtNtB1Q_7convert4FromB2v_E4from0EECs2VbMhdeEr66_16delta_benchmarks.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !10401
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !10399
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !10401
  br label %_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapNtNtB17_3env6ArgsOsNCNvXs_CsgcSslxFl7ZO_8clap_lexNtB3s_7RawArgsINtNtB2n_7convert4FromB32_E4from0EE9from_iterCs2VbMhdeEr66_16delta_benchmarks.exit

bb.l:                                             ; preds = %bb.m, %.body.i, %bb.c
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #22, !noalias !10396
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3map3MapNtNtCs2pqxYH9ZEk8_3std3env6ArgsOsNCNvXs_CsgcSslxFl7ZO_8clap_lexNtB1S_7RawArgsINtNtB4_7convert4FromB1e_E4from0EECs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %bb.m, %.body.i
  %.pn13.i = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %i.n, %bb.m ]
  resume { ptr, i32 } %.pn13.i

bb.m:                                             ; preds = %bb.c
  invoke void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3map3MapNtNtCs2pqxYH9ZEk8_3std3env6ArgsOsNCNvXs_CsgcSslxFl7ZO_8clap_lexNtB1S_7RawArgsINtNtB4_7convert4FromB1e_E4from0EECs2VbMhdeEr66_16delta_benchmarks.exit.i unwind label %bb.l, !noalias !10396

_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapNtNtB17_3env6ArgsOsNCNvXs_CsgcSslxFl7ZO_8clap_lexNtB3s_7RawArgsINtNtB2n_7convert4FromB32_E4from0EE9from_iterCs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.b, %_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB4_3VecNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringEINtB2_10SpecExtendBR_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapNtNtBX_3env6ArgsOsNCNvXs_CsgcSslxFl7ZO_8clap_lexNtB38_7RawArgsINtNtB24_7convert4FromB2J_E4from0EE11spec_extendCs2VbMhdeEr66_16delta_benchmarks.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec14spec_from_iterINtB4_3VecNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringEINtB2_12SpecFromIterBU_QINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB2a_5array4iter8IntoIterRNtNtB6_6string6StringKj1_ENvYB3k_INtNtB2a_7convert4IntoBU_E4intoEE9from_iterCs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 8 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %1, ptr %i.g, align 8, !noalias !10449
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !10449
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !10449
  call void @_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter6traits8iteratorQINtNtNtB9_8adapters3map3MapINtNtNtBb_5array4iter8IntoIterRNtNtCs6Po7BT7Nknu_5alloc6string6StringKj1_ENvYB1L_INtNtBb_7convert4IntoNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringE4intoENtB5_8Iterator9size_hintCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.g), !noalias !10453
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !5, !noalias !10449, !noundef !4
  %i.j = trunc nuw i64 %i.i to i1
  br i1 %i.j, label %bb.b, label %bb.g, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.l = load i64, ptr %i.k, align 8, !noalias !10449, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !10449
  call void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef %i.l, i1 noundef zeroext false, i64 noundef 8, i64 noundef 24), !noalias !10453
  %i.m = load i64, ptr %i.d, align 8, !range !5, !noalias !10449, !noundef !4
  %i.n = trunc nuw i64 %i.m to i1
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.p = load i64, ptr %i.o, align 8, !range !43, !noalias !10449, !noundef !4 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  br i1 %i.n, label %bb.c, label %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2VbMhdeEr66_16delta_benchmarks.exit.i, !prof !11

bb.c:                                             ; preds = %bb.b
  %i.r = load i64, ptr %i.q, align 8, !noalias !10449
  call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.p, i64 %i.r) #21, !noalias !10453
  unreachable

_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %bb.b
  %i.s = load ptr, ptr %i.q, align 8, !noalias !10449, !nonnull !4, !noundef !4 ; 2 uses
  %i.t = icmp ule i64 %i.l, %i.p
  call void @llvm.assume(i1 %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !10449
  store i64 %i.p, ptr %i.f, align 8, !noalias !10449
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  store ptr %i.s, ptr %i.u, align 8, !noalias !10449
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 3 uses
  store i64 0, ptr %i.v, align 8, !noalias !10449
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !10449
  call void @llvm.experimental.noalias.scope.decl(metadata !10454)
  call void @llvm.experimental.noalias.scope.decl(metadata !10457)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !10460
  store ptr %1, ptr %i.c, align 8, !noalias !10462
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !10462
  invoke void @_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter6traits8iteratorQINtNtNtB9_8adapters3map3MapINtNtNtBb_5array4iter8IntoIterRNtNtCs6Po7BT7Nknu_5alloc6string6StringKj1_ENvYB1L_INtNtBb_7convert4IntoNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringE4intoENtB5_8Iterator9size_hintCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c)
          to label %.noexc.i unwind label %bb.h, !noalias !10453

.noexc.i:                                         ; preds = %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2VbMhdeEr66_16delta_benchmarks.exit.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.x = load i64, ptr %i.w, align 8, !range !5, !noalias !10462, !noundef !4
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.z = load i64, ptr %i.y, align 8, !noalias !10462 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !10462
  %i.aa = trunc nuw i64 %i.x to i1
  br i1 %i.aa, label %bb.d, label %bb.f, !prof !6

bb.d:                                             ; preds = %.noexc.i
  %i.ab = icmp ugt i64 %i.z, %i.p
  br i1 %i.ab, label %bb.e, label %_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringE14extend_trustedQINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB1P_5array4iter8IntoIterRNtNtB8_6string6StringKj1_ENvYB2Z_INtNtB1P_7convert4IntoBG_E4intoEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i, !prof !11

bb.e:                                             ; preds = %bb.d
  invoke void @_RINvNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef 0, i64 noundef %i.z, i64 noundef 8, i64 noundef 24)
          to label %.noexc3.i unwind label %bb.h, !noalias !10453

.noexc3.i:                                        ; preds = %bb.e
end_hunk_0
