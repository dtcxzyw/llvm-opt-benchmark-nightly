Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_time-20ff54dc47e9578d.polars_time.1e16ca0b22b7c575-cgu.08?download=true
inline.NumInlined: 2112
inline.NumDeleted: 1201
begin_hunk_0_@_RINvXs4_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB6_8IntoIterNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1V_8adapters3map8map_foldBX_NtNtB13_6series6SeriesuNvMBZ_BX_24take_materialized_seriesNCINvNvB1P_8for_each4callB3s_NCINvMsj_B8_INtB8_3VecB3s_E14extend_trustedINtB2V_3MapBI_B3P_EE0E0E0ECs2Aa799EbAFJ_11polars_time:bb.a
bb.c:                                             ; preds = %bb.b
  %.sroa.59.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 24, !dbg !8492
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 1, !dbg !8492
  store i8 %.sroa.07.0.copyload, ptr %i.a, align 16, !dbg !8497, !noalias !8487
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.3.0..sroa_idx2.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.2.0..sroa_idx, i64 7, i1 false), !dbg !8497
  store ptr %.sroa.3.0.copyload, ptr %.sroa.33.0..sroa_idx4.i.i, align 8, !dbg !8497, !noalias !8487
  store ptr %.sroa.48.0.copyload, ptr %.sroa.4.0..sroa_idx6.i.i, align 16, !dbg !8497, !noalias !8487
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.5.0..sroa_idx8.i.i, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.59.0..sroa_idx, i64 136, i1 false), !dbg !8497
  %i.j = invoke { ptr, ptr } @_RNvMNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6scalarNtB2_12ScalarColumn24take_materialized_series(ptr noalias noundef nonnull align 16 captures(address) dereferenceable(160) %i.a)
          to label %bb.f unwind label %bb.e, !dbg !8498

bb.d:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.48.0.copyload) ]
  %i.k = insertvalue { ptr, ptr } poison, ptr %.sroa.3.0.copyload, 0, !dbg !8499
  %i.l = insertvalue { ptr, ptr } %i.k, ptr %.sroa.48.0.copyload, 1, !dbg !8499
  br label %bb.f, !dbg !8500

._crit_edge:                                      ; preds = %bb.f, %.._crit_edge_crit_edge
  %.val5 = phi i64 [ %.val5.pre, %.._crit_edge_crit_edge ], [ %i.p, %bb.f ], !dbg !8491
  %.val4 = load ptr, ptr %1, align 8, !dbg !8491, !nonnull !1017, !align !1260, !noundef !1017
  store i64 %.val5, ptr %.val4, align 8, !dbg !8501
  call void @_RNvXse_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2Aa799EbAFJ_11polars_time(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %0), !dbg !8502
  ret void, !dbg !8503

bb.e:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup
  %.val = load ptr, ptr %1, align 8, !dbg !8491, !nonnull !1017, !align !1260, !noundef !1017
  store i64 %.val3, ptr %.val, align 8, !dbg !8504
  invoke void @_RNvXse_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2Aa799EbAFJ_11polars_time(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %0)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnEECs2Aa799EbAFJ_11polars_time.exit unwind label %bb.g, !dbg !8505

bb.f:                                             ; preds = %bb.d, %bb.c
  %.pn.i.i.i = phi { ptr, ptr } [ %i.l, %bb.d ], [ %i.j, %bb.c ] ; 2 uses
  %.sroa.0.0.i.i.i = extractvalue { ptr, ptr } %.pn.i.i.i, 0, !dbg !8506 ; 2 uses
  %.sroa.3.0.i.i.i = extractvalue { ptr, ptr } %.pn.i.i.i, 1, !dbg !8506 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.i.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.0.i.i.i) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !8507, !noalias !8487
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %.val3, !dbg !8508 ; 2 uses
  store ptr %.sroa.0.0.i.i.i, ptr %i.n, align 8, !dbg !8509, !noalias !8489
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8, !dbg !8509
  store ptr %.sroa.3.0.i.i.i, ptr %i.o, align 8, !dbg !8509, !noalias !8489
  %i.p = add i64 %.val3, 1, !dbg !8510            ; 2 uses
  %.not = icmp eq ptr %i.i, %i.c, !dbg !8490
  br i1 %.not, label %._crit_edge, label %bb.b, !dbg !8481

bb.g:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #40, !dbg !8511
  unreachable, !dbg !8511

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnEECs2Aa799EbAFJ_11polars_time.exit: ; preds = %bb.e
  resume { ptr, i32 } %i.m, !dbg !8511
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB6_8IntoIterReENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB16_8adapters3map12map_try_foldBX_INtNtB18_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtB18_3ops12control_flow11ControlFlowIB4K_B39_EENCINvMNtB3d_10projectionNtB5G_23AmortizedColumnSelector15select_multipleBX_INtB8_3VecBX_EE0NCINvXB2c_INtB2c_12GenericShuntINtB2a_3MapBI_B5A_EIB2N_NtNtB18_7convert10InfallibleB40_EEB10_8try_folduNCINvNvB10_12try_for_each4callB39_B5p_NcNtB5p_5Break0E0B5p_E0E0B4J_ECs2Aa799EbAFJ_11polars_time(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([160 x i8]) align 16 captures(none) dereferenceable(160) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !8512 {
bb.a:
  %.sroa.4.i.i = alloca [159 x i8], align 1       ; 3 uses
  %i.a = alloca [72 x i8], align 8                ; 7 uses
  %i.b = alloca [160 x i8], align 16              ; 8 uses
  %.sroa.4.i = alloca [79 x i8], align 1          ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !1017, !noundef !1017 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.e, align 8        ; 2 uses
  %.not21 = icmp eq ptr %.promoted, %i.d, !dbg !8567
  br i1 %.not21, label %._crit_edge, label %.lr.ph, !dbg !8553

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val3 = load ptr, ptr %i.f, align 8, !nonnull !1017, !align !1260, !noundef !1017
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 3 uses
  %.sroa.4.80..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.i.i, i64 79
  br label %bb.b, !dbg !8553

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %i.i = phi ptr [ %.promoted, %.lr.ph ], [ %i.m, %bb.f ] ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !dbg !8568, !nonnull !1017, !noundef !1017
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !8568
  %i.l = load i64, ptr %i.k, align 8, !dbg !8568, !noundef !1017
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !8569 ; 3 uses
  store ptr %i.m, ptr %i.e, align 8, !dbg !8570
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i), !dbg !8571
  %.val.i = load ptr, ptr %.val3, align 8, !dbg !8572, !noalias !8559, !nonnull !1017, !align !1260, !noundef !1017
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !8573, !noalias !8560
  call void @_RNvMNtNtCs1LHh8CLbVkQ_11polars_core5frame10projectionNtB2_23AmortizedColumnSelector6select(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.j, i64 noundef %i.l), !dbg !8574, !noalias !8561
  %i.n = load i64, ptr %i.a, align 8, !dbg !8575, !range !1274, !noalias !8560, !noundef !1017
  %.not.i.i = icmp eq i64 %i.n, 18, !dbg !8575
  br i1 %.not.i.i, label %_RNCINvMNtNtCs1LHh8CLbVkQ_11polars_core5frame10projectionNtB5_23AmortizedColumnSelector15select_multipleReINtNtCsgZ49sUHp3tW_5alloc3vec3VecB1D_EE0Cs2Aa799EbAFJ_11polars_time.exit.i, label %_RNCINvMNtNtCs1LHh8CLbVkQ_11polars_core5frame10projectionNtB5_23AmortizedColumnSelector15select_multipleReINtNtCsgZ49sUHp3tW_5alloc3vec3VecB1D_EE0Cs2Aa799EbAFJ_11polars_time.exit.thread.i, !dbg !8576

_RNCINvMNtNtCs1LHh8CLbVkQ_11polars_core5frame10projectionNtB5_23AmortizedColumnSelector15select_multipleReINtNtCsgZ49sUHp3tW_5alloc3vec3VecB1D_EE0Cs2Aa799EbAFJ_11polars_time.exit.thread.i: ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val.le19 = load ptr, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !8577
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.p, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i64 72, i1 false), !dbg !8578, !noalias !8559
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !8579, !noalias !8560
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(79) %.sroa.4.i, ptr noundef nonnull align 1 dereferenceable(79) %.sroa.4.0..sroa_idx.i, i64 79, i1 false), !dbg !8571, !noalias !8559
  br label %bb.c, !dbg !8580

_RNCINvMNtNtCs1LHh8CLbVkQ_11polars_core5frame10projectionNtB5_23AmortizedColumnSelector15select_multipleReINtNtCsgZ49sUHp3tW_5alloc3vec3VecB1D_EE0Cs2Aa799EbAFJ_11polars_time.exit.i: ; preds = %bb.b
  %i.q = load ptr, ptr %i.h, align 8, !dbg !8581, !noalias !8560, !nonnull !1017, !align !1395, !noundef !1017
  call fastcc void @_RNvXs7_NtNtCs1LHh8CLbVkQ_11polars_core5frame6columnNtB5_6ColumnNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef nonnull align 16 captures(none) dereferenceable(160) %i.b, ptr noundef nonnull align 16 %i.q), !dbg !8582, !noalias !8562
  %.sroa.0.0.copyload.pr.i = load i8, ptr %i.b, align 16, !dbg !8571, !noalias !8559 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !8579, !noalias !8560
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(79) %.sroa.4.i, ptr noundef nonnull align 1 dereferenceable(79) %.sroa.4.0..sroa_idx.i, i64 79, i1 false), !dbg !8571, !noalias !8559
  %i.r = icmp eq i8 %.sroa.0.0.copyload.pr.i, 32, !dbg !8583
  br i1 %i.r, label %.loopexit, label %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldReINtNtBa_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB2Y_B1n_EENCINvMNtB1r_10projectionNtB3T_23AmortizedColumnSelector15select_multipleBZ_INtNtCsgZ49sUHp3tW_5alloc3vec3VecBZ_EE0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB53_9into_iter8IntoIterBZ_EB3N_EIB12_NtNtBa_7convert10InfallibleB2e_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB7t_12try_for_each4callB1n_B3C_NcNtB3C_5Break0E0B3C_E0E0Cs2Aa799EbAFJ_11polars_time.exit, !dbg !8580

.loopexit:                                        ; preds = %_RNCINvMNtNtCs1LHh8CLbVkQ_11polars_core5frame10projectionNtB5_23AmortizedColumnSelector15select_multipleReINtNtCsgZ49sUHp3tW_5alloc3vec3VecB1D_EE0Cs2Aa799EbAFJ_11polars_time.exit.i
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val.le = load ptr, ptr %i.s, align 8
  br label %bb.c

bb.c:                                             ; preds = %.loopexit, %_RNCINvMNtNtCs1LHh8CLbVkQ_11polars_core5frame10projectionNtB5_23AmortizedColumnSelector15select_multipleReINtNtCsgZ49sUHp3tW_5alloc3vec3VecB1D_EE0Cs2Aa799EbAFJ_11polars_time.exit.thread.i
  %.val17 = phi ptr [ %.val.le, %.loopexit ], [ %.val.le19, %_RNCINvMNtNtCs1LHh8CLbVkQ_11polars_core5frame10projectionNtB5_23AmortizedColumnSelector15select_multipleReINtNtCsgZ49sUHp3tW_5alloc3vec3VecB1D_EE0Cs2Aa799EbAFJ_11polars_time.exit.thread.i ] ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val17) ]
  %i.t = load i64, ptr %.val17, align 8, !dbg !8584, !range !1274, !alias.scope !8563, !noalias !8564, !noundef !1017
  %i.u = icmp eq i64 %i.t, 18, !dbg !8584
  br i1 %i.u, label %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldReINtNtBa_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB2Y_B1n_EENCINvMNtB1r_10projectionNtB3T_23AmortizedColumnSelector15select_multipleBZ_INtNtCsgZ49sUHp3tW_5alloc3vec3VecBZ_EE0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB53_9into_iter8IntoIterBZ_EB3N_EIB12_NtNtBa_7convert10InfallibleB2e_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB7t_12try_for_each4callB1n_B3C_NcNtB3C_5Break0E0B3C_E0E0Cs2Aa799EbAFJ_11polars_time.exit.thread, label %bb.d, !dbg !8584

bb.d:                                             ; preds = %bb.c
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorECs2Aa799EbAFJ_11polars_time(ptr noalias noundef nonnull align 8 dereferenceable(72) %.val17)
          to label %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldReINtNtBa_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB2Y_B1n_EENCINvMNtB1r_10projectionNtB3T_23AmortizedColumnSelector15select_multipleBZ_INtNtCsgZ49sUHp3tW_5alloc3vec3VecBZ_EE0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB53_9into_iter8IntoIterBZ_EB3N_EIB12_NtNtBa_7convert10InfallibleB2e_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB7t_12try_for_each4callB1n_B3C_NcNtB3C_5Break0E0B3C_E0E0Cs2Aa799EbAFJ_11polars_time.exit.thread unwind label %bb.e, !dbg !8585, !noalias !8565

bb.e:                                             ; preds = %bb.d
  %i.v = landingpad { ptr, i32 }
          cleanup
  %.sroa.4.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.4.i, i64 7, !dbg !8586
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.val17, ptr noundef nonnull align 1 dereferenceable(72) %.sroa.4.8..sroa_idx.i, i64 72, i1 false), !dbg !8586, !noalias !8566
  resume { ptr, i32 } %i.v, !dbg !8587

_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldReINtNtBa_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB2Y_B1n_EENCINvMNtB1r_10projectionNtB3T_23AmortizedColumnSelector15select_multipleBZ_INtNtCsgZ49sUHp3tW_5alloc3vec3VecBZ_EE0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB53_9into_iter8IntoIterBZ_EB3N_EIB12_NtNtBa_7convert10InfallibleB2e_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB7t_12try_for_each4callB1n_B3C_NcNtB3C_5Break0E0B3C_E0E0Cs2Aa799EbAFJ_11polars_time.exit.thread: ; preds = %bb.c, %bb.d
  %.sroa.4.8..sroa_idx1.i = getelementptr inbounds nuw i8, ptr %.sroa.4.i, i64 7, !dbg !8586
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.val17, ptr noundef nonnull align 1 dereferenceable(72) %.sroa.4.8..sroa_idx1.i, i64 72, i1 false), !dbg !8586, !noalias !8566
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i), !dbg !8588
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !8589
  br label %.loopexit14, !dbg !8590

_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldReINtNtBa_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB2Y_B1n_EENCINvMNtB1r_10projectionNtB3T_23AmortizedColumnSelector15select_multipleBZ_INtNtCsgZ49sUHp3tW_5alloc3vec3VecBZ_EE0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB53_9into_iter8IntoIterBZ_EB3N_EIB12_NtNtBa_7convert10InfallibleB2e_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB7t_12try_for_each4callB1n_B3C_NcNtB3C_5Break0E0B3C_E0E0Cs2Aa799EbAFJ_11polars_time.exit: ; preds = %_RNCINvMNtNtCs1LHh8CLbVkQ_11polars_core5frame10projectionNtB5_23AmortizedColumnSelector15select_multipleReINtNtCsgZ49sUHp3tW_5alloc3vec3VecB1D_EE0Cs2Aa799EbAFJ_11polars_time.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(79) %.sroa.4.i.i, ptr noundef nonnull align 1 dereferenceable(79) %.sroa.4.0..sroa_idx.i, i64 79, i1 false), !dbg !8591
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(80) %.sroa.4.80..sroa_idx.i.i, ptr noundef nonnull align 16 dereferenceable(80) %i.g, i64 80, i1 false), !dbg !8592
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i), !dbg !8588
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !8589
  %.not.i = icmp eq i8 %.sroa.0.0.copyload.pr.i, 33, !dbg !8593
  br i1 %.not.i, label %bb.f, label %.loopexit14, !dbg !8590

._crit_edge:                                      ; preds = %bb.f, %bb.a, %.loopexit14
  %storemerge = phi i8 [ %.sroa.06.011, %.loopexit14 ], [ 33, %bb.a ], [ 33, %bb.f ], !dbg !8594
  store i8 %storemerge, ptr %0, align 16, !dbg !8594
  ret void, !dbg !8595

.loopexit14:                                      ; preds = %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldReINtNtBa_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB2Y_B1n_EENCINvMNtB1r_10projectionNtB3T_23AmortizedColumnSelector15select_multipleBZ_INtNtCsgZ49sUHp3tW_5alloc3vec3VecBZ_EE0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB53_9into_iter8IntoIterBZ_EB3N_EIB12_NtNtBa_7convert10InfallibleB2e_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB7t_12try_for_each4callB1n_B3C_NcNtB3C_5Break0E0B3C_E0E0Cs2Aa799EbAFJ_11polars_time.exit, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldReINtNtBa_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB2Y_B1n_EENCINvMNtB1r_10projectionNtB3T_23AmortizedColumnSelector15select_multipleBZ_INtNtCsgZ49sUHp3tW_5alloc3vec3VecBZ_EE0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB53_9into_iter8IntoIterBZ_EB3N_EIB12_NtNtBa_7convert10InfallibleB2e_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB7t_12try_for_each4callB1n_B3C_NcNtB3C_5Break0E0B3C_E0E0Cs2Aa799EbAFJ_11polars_time.exit.thread
  %.sroa.06.011 = phi i8 [ 32, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldReINtNtBa_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB2Y_B1n_EENCINvMNtB1r_10projectionNtB3T_23AmortizedColumnSelector15select_multipleBZ_INtNtCsgZ49sUHp3tW_5alloc3vec3VecBZ_EE0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB53_9into_iter8IntoIterBZ_EB3N_EIB12_NtNtBa_7convert10InfallibleB2e_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB7t_12try_for_each4callB1n_B3C_NcNtB3C_5Break0E0B3C_E0E0Cs2Aa799EbAFJ_11polars_time.exit.thread ], [ %.sroa.0.0.copyload.pr.i, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldReINtNtBa_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB2Y_B1n_EENCINvMNtB1r_10projectionNtB3T_23AmortizedColumnSelector15select_multipleBZ_INtNtCsgZ49sUHp3tW_5alloc3vec3VecBZ_EE0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB53_9into_iter8IntoIterBZ_EB3N_EIB12_NtNtBa_7convert10InfallibleB2e_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB7t_12try_for_each4callB1n_B3C_NcNtB3C_5Break0E0B3C_E0E0Cs2Aa799EbAFJ_11polars_time.exit ]
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !8596
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(159) %.sroa.2.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(159) %.sroa.4.i.i, i64 159, i1 false), !dbg !8597
  br label %._crit_edge, !dbg !8598

bb.f:                                             ; preds = %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldReINtNtBa_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB2Y_B1n_EENCINvMNtB1r_10projectionNtB3T_23AmortizedColumnSelector15select_multipleBZ_INtNtCsgZ49sUHp3tW_5alloc3vec3VecBZ_EE0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB53_9into_iter8IntoIterBZ_EB3N_EIB12_NtNtBa_7convert10InfallibleB2e_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB7t_12try_for_each4callB1n_B3C_NcNtB3C_5Break0E0B3C_E0E0Cs2Aa799EbAFJ_11polars_time.exit
  %.not = icmp eq ptr %i.m, %i.d, !dbg !8567
  br i1 %.not, label %._crit_edge, label %bb.b, !dbg !8553
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs5_NtNtNtCscgRAwXFJnXP_4core4iter8adapters7step_byINtB6_6StepByINtNtNtBc_3ops5range5RangexEEINtB6_10StepByImplB14_E9spec_folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB38_3VecxE14extend_trustedBR_E0E0ECs2Aa799EbAFJ_11polars_time(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #5 personality ptr @rust_eh_personality !dbg !8599 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !8709
  %i.b = load i8, ptr %i.a, align 8, !dbg !8709, !range !1119, !noundef !1017
  %i.c = trunc nuw i8 %i.b to i1, !dbg !8709
  br i1 %i.c, label %bb.c, label %._crit_edge, !dbg !8709

._crit_edge:                                      ; preds = %bb.a
  %.sroa.4.0..sroa_idx.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4.0.copyload.pre = load i64, ptr %.sroa.4.0..sroa_idx.phi.trans.insert, align 8, !dbg !8710
  %.sroa.6.0..sroa_idx.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.6.0.copyload.pre = load ptr, ptr %.sroa.6.0..sroa_idx.phi.trans.insert, align 8, !dbg !8710
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !alias.scope !8686
  %.promoted.i.pre = load i64, ptr %0, align 8, !alias.scope !8686
  br label %bb.b, !dbg !8709

bb.b:                                             ; preds = %._crit_edge, %bb.d
  %.promoted.i = phi i64 [ %.promoted.i.pre, %._crit_edge ], [ %i.s, %bb.d ] ; 2 uses
  %i.d = phi i64 [ %.pre, %._crit_edge ], [ %i.q, %bb.d ] ; 2 uses
  %.sroa.6.0.copyload = phi ptr [ %.sroa.6.0.copyload.pre, %._crit_edge ], [ %i.u, %bb.d ], !dbg !8710
  %.sroa.4.0.copyload = phi i64 [ %.sroa.4.0.copyload.pre, %._crit_edge ], [ %i.y, %bb.d ], !dbg !8710 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !8711
  %i.f = load i64, ptr %i.e, align 8, !dbg !8711, !noundef !1017 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8, !dbg !8710 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8687), !dbg !8712
  %i.g = add i64 %.promoted.i, %i.f, !dbg !8713   ; 3 uses
  %.not.i.not.i.i.i.i11.i = icmp sge i64 %i.g, %.promoted.i, !dbg !8714
  %i.h = icmp slt i64 %i.g, %i.d
  %or.cond.i.i.i.i12.i = select i1 %.not.i.not.i.i.i.i11.i, i1 %i.h, i1 false, !dbg !8715
  br i1 %or.cond.i.i.i.i12.i, label %.lr.ph.i, label %.loopexit, !dbg !8716

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %i.i = phi i64 [ %i.l, %.lr.ph.i ], [ %.sroa.4.0.copyload, %bb.b ], !dbg !8717 ; 2 uses
  %i.j = phi i64 [ %i.m, %.lr.ph.i ], [ %i.g, %bb.b ] ; 2 uses
  %storemerge.i.i.i.i14.i = add nsw i64 %i.j, 1, !dbg !8715 ; 2 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %.sroa.6.0.copyload, i64 %i.i, !dbg !8718
  store i64 %i.j, ptr %i.k, align 8, !dbg !8719, !noalias !8699
  %i.l = add i64 %i.i, 1, !dbg !8720              ; 2 uses
  %i.m = add i64 %storemerge.i.i.i.i14.i, %i.f, !dbg !8713 ; 3 uses
  %.not.i.not.i.i.i.i.i = icmp sge i64 %i.m, %storemerge.i.i.i.i14.i, !dbg !8714
  %i.n = icmp slt i64 %i.m, %i.d
  %or.cond.i.i.i.i.i = select i1 %.not.i.not.i.i.i.i.i, i1 %i.n, i1 false, !dbg !8715
  br i1 %or.cond.i.i.i.i.i, label %.lr.ph.i, label %.loopexit, !dbg !8716

bb.c:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !8721
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8700), !dbg !8722
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8701), !dbg !8722
  %i.p = load i64, ptr %0, align 8, !dbg !8723, !alias.scope !8702, !noundef !1017 ; 3 uses
  %i.q = load i64, ptr %i.o, align 8, !dbg !8724, !alias.scope !8704, !noundef !1017 ; 2 uses
  %i.r = icmp slt i64 %i.p, %i.q, !dbg !8723
  br i1 %i.r, label %bb.d, label %bb.e, !dbg !8722

bb.d:                                             ; preds = %bb.c
  %i.s = add nsw i64 %i.p, 1, !dbg !8725
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8705), !dbg !8726
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8706), !dbg !8727
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !8728
  %i.u = load ptr, ptr %i.t, align 8, !dbg !8728, !alias.scope !8707, !noundef !1017 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !8729
  %i.w = load i64, ptr %i.v, align 8, !dbg !8729, !alias.scope !8707, !noundef !1017 ; 2 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.w, !dbg !8730
  store i64 %i.p, ptr %i.x, align 8, !dbg !8731, !noalias !8707
  %i.y = add i64 %i.w, 1, !dbg !8732
  br label %bb.b, !dbg !8733

bb.e:                                             ; preds = %bb.c
  %.val = load ptr, ptr %1, align 8, !dbg !8734, !nonnull !1017, !align !1260, !noundef !1017
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !8734
  %.val6 = load i64, ptr %i.z, align 8, !dbg !8734, !noundef !1017
  store i64 %.val6, ptr %.val, align 8, !dbg !8735
  br label %bb.f, !dbg !8734

bb.f:                                             ; preds = %bb.e, %.loopexit
  ret void, !dbg !8736

.loopexit:                                        ; preds = %.lr.ph.i, %bb.b
  %.val7.i = phi i64 [ %.sroa.4.0.copyload, %bb.b ], [ %i.l, %.lr.ph.i ], !dbg !8737
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val7.i, ptr %.sroa.0.0.copyload, align 8, !dbg !8738, !noalias !8708
  br label %bb.f, !dbg !8734
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6clonedINtB5_6ClonedINtNtNtCse4dvU5uQ85g_8indexmap3map4iter4KeysNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeEENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNtB7_3map12map_try_foldB1K_INtNtBb_6result6ResultNtNtNtB2F_5frame6column6ColumnNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBb_3ops12control_flow11ControlFlowIB6l_B57_EENCINvMNtB5b_10projectionNtB7g_23AmortizedColumnSelector15select_multipleB1K_BP_E0NCINvXB7_INtB7_12GenericShuntINtB4k_3MapBP_B7a_EIB4M_NtNtBb_7convert10InfallibleB5B_EEB3x_8try_folduNCINvNvB3x_12try_for_each4callB57_B6Z_NcNtB6Z_5Break0E0B6Z_E0E0B6k_ECs2Aa799EbAFJ_11polars_time(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([160 x i8]) align 16 captures(none) dereferenceable(160) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !8739 {
bb.a:
  %.sroa.4.i.i.i.i = alloca [159 x i8], align 1   ; 5 uses
  %i.a = alloca [160 x i8], align 16              ; 6 uses
  %i.b = alloca [72 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 9 uses
  %.sroa.5.i.i.i = alloca [79 x i8], align 1      ; 6 uses
  %.sroa.73.i.i.i = alloca [80 x i8], align 16    ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !8883
  %.sroa.3.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx, align 8, !dbg !8883 ; 5 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !8883
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !8883 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8859), !dbg !8884
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8860), !dbg !8884
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i.i.i)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !8861, !nonnull !1017, !noundef !1017 ; 2 uses
  %.promoted.i = load ptr, ptr %1, align 8, !alias.scope !8861 ; 2 uses
  %i.g = icmp eq ptr %.promoted.i, %i.f, !dbg !8885
  br i1 %i.g, label %_RINvYINtNtNtCse4dvU5uQ85g_8indexmap3map4iter4KeysNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB2D_8adapters6cloned14clone_try_foldBL_uINtNtNtB2F_3ops12control_flow11ControlFlowIB4q_NtNtNtB1G_5frame6column6ColumnEENCINvNtB3J_3map12map_try_foldBL_INtNtB2F_6result6ResultB5a_NtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuB4p_NCINvMNtB5e_10projectionNtB7w_23AmortizedColumnSelector15select_multipleBL_INtB3H_6ClonedB3_EE0NCINvXB3J_INtB3J_12GenericShuntINtB5L_3MapB8D_B7q_EIB6d_NtNtB2F_7convert10InfallibleB6D_EEB2x_8try_folduNCINvNvB2x_12try_for_each4callB5a_B55_NcNtB55_5Break0E0B55_E0E0E0B4p_ECs2Aa799EbAFJ_11polars_time.exit, label %.lr.ph.i, !dbg !8886

.lr.ph.i:                                         ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 23 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.5.8..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.5.i.i.i, i64 7 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %.sroa.73.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %.sroa.4.80..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.i.i.i.i, i64 79
  br label %bb.b, !dbg !8886

bb.b:                                             ; preds = %bb.t, %.lr.ph.i
  %i.k = phi ptr [ %.promoted.i, %.lr.ph.i ], [ %i.l, %bb.t ] ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 80, !dbg !8887 ; 3 uses
  store ptr %i.l, ptr %1, align 8, !dbg !8888, !alias.scope !8861
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 48, !dbg !8889 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !8866), !dbg !8890
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !8891, !noalias !8867
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 71, !dbg !8891
  %i.o = load i8, ptr %i.n, align 1, !dbg !8891, !range !1149, !alias.scope !8869, !noalias !8867, !noundef !1017
  %i.p = icmp eq i8 %i.o, -40, !dbg !8892
  br i1 %i.p, label %bb.c, label %bb.d, !dbg !8892

bb.c:                                             ; preds = %bb.b
  call void @_RNvNvXs1_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone10clone_heap(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.m) #41, !dbg !8893, !noalias !8870
  br label %_RNvXsr_NtCs2mZqlW55729_12polars_utils6pl_strNtB5_10PlSmallStrNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i, !dbg !8893

bb.d:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.m, i64 24, i1 false), !dbg !8894, !noalias !8870
  br label %_RNvXsr_NtCs2mZqlW55729_12polars_utils6pl_strNtB5_10PlSmallStrNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i, !dbg !8895

_RNvXsr_NtCs2mZqlW55729_12polars_utils6pl_strNtB5_10PlSmallStrNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i: ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.73.i.i.i)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !8896, !noalias !8871
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.d, i64 24, i1 false), !dbg !8896, !noalias !8872
  %.val.i.i.i = load ptr, ptr %.sroa.4.0.copyload, align 8, !dbg !8896, !noalias !8871, !nonnull !1017, !align !1260, !noundef !1017
  call void @llvm.experimental.noalias.scope.decl(metadata !8873), !dbg !8896
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !8897, !noalias !8874
  %i.q = load i8, ptr %i.h, align 1, !dbg !8898, !range !1149, !alias.scope !8875, !noalias !8871, !noundef !1017 ; 3 uses
  %i.r = icmp ugt i8 %i.q, -41, !dbg !8899
  br i1 %i.r, label %bb.f, label %bb.e, !dbg !8899

bb.e:                                             ; preds = %_RNvXsr_NtCs2mZqlW55729_12polars_utils6pl_strNtB5_10PlSmallStrNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i
  %i.s = add i8 %i.q, 64, !dbg !8900
  %i.t = call i8 @llvm.umin.i8(i8 %i.s, i8 24), !dbg !8901
  %.sroa.0.0.i.i.i.i.i.i = zext nneg i8 %i.t to i64, !dbg !8901
  br label %bb.i, !dbg !8902

bb.f:                                             ; preds = %_RNvXsr_NtCs2mZqlW55729_12polars_utils6pl_strNtB5_10PlSmallStrNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i
  %i.u = load ptr, ptr %i.c, align 8, !dbg !8903, !alias.scope !8875, !noalias !8871, !noundef !1017
  %i.v = load i64, ptr %i.i, align 8, !dbg !8904, !alias.scope !8875, !noalias !8871, !noundef !1017
  br label %bb.i, !dbg !8905

bb.g:                                             ; preds = %bb.l, %bb.i
  %i.w = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.x = load i8, ptr %i.h, align 1, !dbg !8906, !range !1149, !alias.scope !8876, !noalias !8871, !noundef !1017
  %i.y = icmp eq i8 %i.x, -40, !dbg !8907
  br i1 %i.y, label %bb.h, label %common.resume.i.i.i, !dbg !8907, !prof !1120

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %common.resume.i.i.i unwind label %bb.p, !dbg !8908, !noalias !8877

bb.i:                                             ; preds = %bb.f, %bb.e
  %.sroa.01.0.i.i.i.i.i = phi i64 [ %i.v, %bb.f ], [ %.sroa.0.0.i.i.i.i.i.i, %bb.e ], !dbg !8909
  %.sroa.0.0.i.i.i.i.i = phi ptr [ %i.u, %bb.f ], [ %i.c, %bb.e ], !dbg !8910
  invoke void @_RNvMNtNtCs1LHh8CLbVkQ_11polars_core5frame10projectionNtB2_23AmortizedColumnSelector6select(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val.i.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i.i.i.i.i, i64 noundef %.sroa.01.0.i.i.i.i.i)
          to label %bb.j unwind label %bb.g, !dbg !8911, !noalias !8877

bb.j:                                             ; preds = %bb.i
  %i.z = load i64, ptr %i.b, align 8, !dbg !8912, !range !1274, !noalias !8874, !noundef !1017
  %.not.i.i.i.i = icmp eq i64 %i.z, 18, !dbg !8912
  br i1 %.not.i.i.i.i, label %bb.l, label %bb.k, !dbg !8913

bb.k:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(72) %.sroa.5.8..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(72) %i.b, i64 72, i1 false), !dbg !8914, !noalias !8871
  br label %bb.n, !dbg !8915

bb.l:                                             ; preds = %bb.j
  %i.aa = load ptr, ptr %i.j, align 8, !dbg !8916, !noalias !8874, !nonnull !1017, !align !1395, !noundef !1017
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !8917, !noalias !8874
  invoke fastcc void @_RNvXs7_NtNtCs1LHh8CLbVkQ_11polars_core5frame6columnNtB5_6ColumnNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(160) %i.a, ptr noundef nonnull align 16 %i.aa)
          to label %bb.m unwind label %bb.g, !dbg !8918, !noalias !8877

bb.m:                                             ; preds = %bb.l
  %.sroa.02.0.copyload.i.i.i = load i8, ptr %i.a, align 16, !dbg !8919, !noalias !8878
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(79) %.sroa.5.i.i.i, ptr noundef nonnull align 1 dereferenceable(79) %.sroa.5.0..sroa_idx.i.i.i, i64 79, i1 false), !dbg !8919, !noalias !8871
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %.sroa.73.i.i.i, ptr noundef nonnull align 16 dereferenceable(80) %.sroa.73.0..sroa_idx.i.i.i, i64 80, i1 false), !dbg !8919, !noalias !8871
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !8920, !noalias !8874
  %.pre.i.i.i.i = load i8, ptr %i.h, align 1, !dbg !8921, !range !1149, !alias.scope !8879, !noalias !8871
  br label %bb.n, !dbg !8922

bb.n:                                             ; preds = %bb.m, %bb.k
  %.sroa.02.0.i.i.i = phi i8 [ %.sroa.02.0.copyload.i.i.i, %bb.m ], [ 32, %bb.k ], !dbg !8923 ; 3 uses
  %i.ab = phi i8 [ %.pre.i.i.i.i, %bb.m ], [ %i.q, %bb.k ], !dbg !8921
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !8924, !noalias !8874
  %i.ac = icmp eq i8 %i.ab, -40, !dbg !8925
  br i1 %i.ac, label %bb.o, label %_RNCINvMNtNtCs1LHh8CLbVkQ_11polars_core5frame10projectionNtB5_23AmortizedColumnSelector15select_multipleNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters6cloned6ClonedINtNtNtCse4dvU5uQ85g_8indexmap3map4iter4KeysB1D_NtNtNtB9_9datatypes5dtype8DataTypeEEE0Cs2Aa799EbAFJ_11polars_time.exit.i.i.i, !dbg !8925, !prof !1120

bb.o:                                             ; preds = %bb.n
  call void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c), !dbg !8926, !noalias !8877
  br label %_RNCINvMNtNtCs1LHh8CLbVkQ_11polars_core5frame10projectionNtB5_23AmortizedColumnSelector15select_multipleNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters6cloned6ClonedINtNtNtCse4dvU5uQ85g_8indexmap3map4iter4KeysB1D_NtNtNtB9_9datatypes5dtype8DataTypeEEE0Cs2Aa799EbAFJ_11polars_time.exit.i.i.i, !dbg !8926

bb.p:                                             ; preds = %bb.h
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #40, !dbg !8927, !noalias !8877
  unreachable, !dbg !8927

common.resume.i.i.i:                              ; preds = %bb.s, %bb.h, %bb.g
  %common.resume.op.i.i.i = phi { ptr, i32 } [ %i.ah, %bb.s ], [ %i.w, %bb.h ], [ %i.w, %bb.g ]
  resume { ptr, i32 } %common.resume.op.i.i.i, !dbg !8928

_RNCINvMNtNtCs1LHh8CLbVkQ_11polars_core5frame10projectionNtB5_23AmortizedColumnSelector15select_multipleNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters6cloned6ClonedINtNtNtCse4dvU5uQ85g_8indexmap3map4iter4KeysB1D_NtNtNtB9_9datatypes5dtype8DataTypeEEE0Cs2Aa799EbAFJ_11polars_time.exit.i.i.i: ; preds = %bb.o, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !8929, !noalias !8871
  %i.ae = icmp eq i8 %.sroa.02.0.i.i.i, 32, !dbg !8930
  br i1 %i.ae, label %bb.q, label %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters6cloned14clone_try_foldNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruINtNtNtBa_3ops12control_flow11ControlFlowIB1V_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnEENCINvNtB6_3map12map_try_foldB14_INtNtBa_6result6ResultB2E_NtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuB1U_NCINvMNtB2I_10projectionNtB5m_23AmortizedColumnSelector15select_multipleB14_INtB4_6ClonedINtNtNtCse4dvU5uQ85g_8indexmap3map4iter4KeysB14_NtNtNtB2K_9datatypes5dtype8DataTypeEEE0NCINvXB6_INtB6_12GenericShuntINtB3C_3MapB6u_B5g_EIB44_NtNtBa_7convert10InfallibleB4t_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB9v_12try_for_each4callB2E_B2z_NcNtB2z_5Break0E0B2z_E0E0E0Cs2Aa799EbAFJ_11polars_time.exit.i, !dbg !8931

bb.q:                                             ; preds = %_RNCINvMNtNtCs1LHh8CLbVkQ_11polars_core5frame10projectionNtB5_23AmortizedColumnSelector15select_multipleNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters6cloned6ClonedINtNtNtCse4dvU5uQ85g_8indexmap3map4iter4KeysB1D_NtNtNtB9_9datatypes5dtype8DataTypeEEE0Cs2Aa799EbAFJ_11polars_time.exit.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.0.copyload) ]
  %i.af = load i64, ptr %.sroa.3.0.copyload, align 8, !dbg !8932, !range !1274, !alias.scope !8880, !noalias !8881, !noundef !1017
  %i.ag = icmp eq i64 %i.af, 18, !dbg !8932
  br i1 %i.ag, label %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters6cloned14clone_try_foldNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruINtNtNtBa_3ops12control_flow11ControlFlowIB1V_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnEENCINvNtB6_3map12map_try_foldB14_INtNtBa_6result6ResultB2E_NtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuB1U_NCINvMNtB2I_10projectionNtB5m_23AmortizedColumnSelector15select_multipleB14_INtB4_6ClonedINtNtNtCse4dvU5uQ85g_8indexmap3map4iter4KeysB14_NtNtNtB2K_9datatypes5dtype8DataTypeEEE0NCINvXB6_INtB6_12GenericShuntINtB3C_3MapB6u_B5g_EIB44_NtNtBa_7convert10InfallibleB4t_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB9v_12try_for_each4callB2E_B2z_NcNtB2z_5Break0E0B2z_E0E0E0Cs2Aa799EbAFJ_11polars_time.exit.thread.i, label %bb.r, !dbg !8932

bb.r:                                             ; preds = %bb.q
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorECs2Aa799EbAFJ_11polars_time(ptr noalias noundef nonnull align 8 dereferenceable(72) %.sroa.3.0.copyload)
          to label %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters6cloned14clone_try_foldNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruINtNtNtBa_3ops12control_flow11ControlFlowIB1V_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnEENCINvNtB6_3map12map_try_foldB14_INtNtBa_6result6ResultB2E_NtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuB1U_NCINvMNtB2I_10projectionNtB5m_23AmortizedColumnSelector15select_multipleB14_INtB4_6ClonedINtNtNtCse4dvU5uQ85g_8indexmap3map4iter4KeysB14_NtNtNtB2K_9datatypes5dtype8DataTypeEEE0NCINvXB6_INtB6_12GenericShuntINtB3C_3MapB6u_B5g_EIB44_NtNtBa_7convert10InfallibleB4t_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB9v_12try_for_each4callB2E_B2z_NcNtB2z_5Break0E0B2z_E0E0E0Cs2Aa799EbAFJ_11polars_time.exit.thread.i unwind label %bb.s, !dbg !8933, !noalias !8882

bb.s:                                             ; preds = %bb.r
  %i.ah = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.3.0.copyload, ptr noundef nonnull align 1 dereferenceable(72) %.sroa.5.8..sroa_idx.i.i.i, i64 72, i1 false), !dbg !8934, !noalias !8871
end_hunk_0
