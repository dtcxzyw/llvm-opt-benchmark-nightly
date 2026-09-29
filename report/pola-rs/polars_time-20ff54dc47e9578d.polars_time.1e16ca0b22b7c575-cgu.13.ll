Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_time-20ff54dc47e9578d.polars_time.1e16ca0b22b7c575-cgu.13?download=true
inline.NumInlined: 3648
inline.NumDeleted: 2176
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5array4iter8IntoIterINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayxEKj1_ENCINvMs_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array4fromINtB2N_12ChunkedArrayNtNtB2P_9datatypes9Int64TypeE25from_chunk_iter_and_fieldAB1r_B2z_E0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB51_8for_each4callINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtB1w_5ArrayEL_ENCINvMsj_NtB69_3vecINtB73_3VecB64_E14extend_trustedBN_E0E0ECs2Aa799EbAFJ_11polars_time:bb.a
  unreachable, !dbg !25078

.body.i:                                          ; preds = %.split.i, %bb.f
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.am, %bb.f ], [ %.us-phi4.i, %.split.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.sroa.4.0.copyload, ptr %.sroa.0.0.copyload, align 8, !dbg !25079, !noalias !25037
  invoke void @_RNvXs_NtNtNtCscgRAwXFJnXP_4core5array4iter10iter_innerAINtNtNtBa_3mem12maybe_uninit11MaybeUninitINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayxEEj1_NtB4_11PartialDrop12partial_dropCs2Aa799EbAFJ_11polars_time(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.h, i64 noundef 1, i64 noundef %i.k)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtB4_5array4iter8IntoIterINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayxEKj1_EECs2Aa799EbAFJ_11polars_time.exit.i unwind label %bb.i, !dbg !25080, !noalias !25038

bb.i:                                             ; preds = %.body.i
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #30, !dbg !25081, !noalias !25038
  unreachable, !dbg !25081

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtB4_5array4iter8IntoIterINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayxEKj1_EECs2Aa799EbAFJ_11polars_time.exit.i: ; preds = %.body.i
  resume { ptr, i32 } %eh.lpad-body.i.i, !dbg !25081

_RINvXs2_NtNtCscgRAwXFJnXP_4core5array4iterINtB6_8IntoIterINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayxEKj1_ENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtB2b_8adapters3map8map_foldBT_INtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtBY_5ArrayEL_EuNCINvMs_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array4fromINtB4s_12ChunkedArrayNtNtB4u_9datatypes9Int64TypeE25from_chunk_iter_and_fieldABT_B21_E0NCINvNvB25_8for_each4callB3s_NCINvMsj_NtB3x_3vecINtB7g_3VecB3s_E14extend_trustedINtB2V_3MapBE_B4i_EE0E0E0ECs2Aa799EbAFJ_11polars_time.exit: ; preds = %bb.a, %.loopexit.split.us.i
  %i.aq = phi i64 [ %i.i, %bb.a ], [ 1, %.loopexit.split.us.i ], !dbg !25082 ; 2 uses
  %.val3.i.i = phi i64 [ %.sroa.4.0.copyload, %bb.a ], [ %i.ak, %.loopexit.split.us.i ], !dbg !25083
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val3.i.i, ptr %.sroa.0.0.copyload, align 8, !dbg !25084, !noalias !25037
  call void @_RNvXs_NtNtNtCscgRAwXFJnXP_4core5array4iter10iter_innerAINtNtNtBa_3mem12maybe_uninit11MaybeUninitINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayxEEj1_NtB4_11PartialDrop12partial_dropCs2Aa799EbAFJ_11polars_time(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.h, i64 noundef %i.aq, i64 noundef %i.aq), !dbg !25085, !noalias !25038
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !25086
  ret void, !dbg !25087
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5array4iter8IntoIterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrKj1_ENCINvMNtNtCs1LHh8CLbVkQ_11polars_core5frame10projectionNtB2r_23AmortizedColumnSelector15select_multipleB1r_AB1r_B2h_E0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB4g_8try_folduNCINvNvB4g_12try_for_each4callNtNtB2t_6column6ColumnINtNtNtBc_3ops12control_flow11ControlFlowB7I_ENcNtB84_5Break0E0B84_E0IB85_B84_EECs2Aa799EbAFJ_11polars_time(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([160 x i8]) align 16 captures(none) dereferenceable(160) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(48) %1, ptr noalias nofree noundef nonnull readnone captures(none) %2, ptr noalias noundef align 8 dereferenceable(72) %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !25088 {
bb.a:
  %.sroa.4.i.i.i.i.i = alloca [159 x i8], align 1 ; 5 uses
  %i.a = alloca [160 x i8], align 16              ; 6 uses
  %i.b = alloca [72 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 9 uses
  %.sroa.5.i.i.i.i = alloca [79 x i8], align 1    ; 6 uses
  %.sroa.73.i.i.i.i = alloca [80 x i8], align 16  ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !25218 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25198), !dbg !25219
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25199), !dbg !25219
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25200), !dbg !25220
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25201), !dbg !25220
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i.i.i.i), !dbg !25221
  %i.e = load i64, ptr %i.d, align 8, !dbg !25221, !alias.scope !25202, !noalias !25203, !noundef !641 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !25222
  %i.g = load i64, ptr %i.f, align 8, !dbg !25222, !alias.scope !25202, !noalias !25203, !noundef !641 ; 3 uses
  %i.h = icmp ule i64 %i.e, %i.g, !dbg !25221
  tail call void @llvm.assume(i1 %i.h), !dbg !25223
  %.not20.i.i = icmp eq i64 %i.e, %i.g, !dbg !25224
  br i1 %.not20.i.i, label %_RINvXs2_NtNtCscgRAwXFJnXP_4core5array4iterINtB6_8IntoIterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrKj1_ENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1T_8adapters3map12map_try_foldBT_INtNtBa_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB5g_B3F_EENCINvMNtB3J_10projectionNtB6b_23AmortizedColumnSelector15select_multipleBT_ABT_B1J_E0NCINvXB2J_INtB2J_12GenericShuntINtB2H_3MapBE_B65_EIB3k_NtNtBa_7convert10InfallibleB4w_EEB1N_8try_folduNCINvNvB1N_12try_for_each4callB3F_B5U_NcNtB5U_5Break0E0B5U_E0E0B5f_ECs2Aa799EbAFJ_11polars_time.exit, label %.lr.ph.i.i, !dbg !25224

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !25225
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 23 ; 3 uses
  %.sroa.5.8..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.5.i.i.i.i, i64 7 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %.sroa.73.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %.sroa.4.80..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.i.i.i.i.i, i64 79
  store i64 1, ptr %i.d, align 8, !alias.scope !25202, !noalias !25203
  %.not.i.i = icmp eq i64 %i.g, 1
  %i.l = icmp eq i64 %i.e, 0, !dbg !25226
  tail call void @llvm.assume(i1 %i.l), !dbg !25227
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !25228, !noalias !25204
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !dbg !25229, !noalias !25205
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.73.i.i.i.i)
  %.val.i.i.i.peel.i = load ptr, ptr %1, align 8, !dbg !25228, !noalias !25204, !nonnull !641, !align !742, !noundef !641
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25206), !dbg !25228
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !25230, !noalias !25207
  %i.m = load i8, ptr %i.j, align 1, !dbg !25231, !range !751, !alias.scope !25208, !noalias !25209, !noundef !641 ; 3 uses
  %i.n = icmp ugt i8 %i.m, -41, !dbg !25232
  br i1 %i.n, label %bb.c, label %bb.b, !dbg !25232

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.o = add i8 %i.m, 64, !dbg !25233
  %i.p = tail call i8 @llvm.umin.i8(i8 %i.o, i8 24), !dbg !25234
  %.sroa.0.0.i.i.i.i.i.i.peel.i = zext nneg i8 %i.p to i64, !dbg !25234
  br label %bb.d, !dbg !25235

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.r = load ptr, ptr %i.c, align 8, !dbg !25236, !alias.scope !25208, !noalias !25209, !noundef !641
  %i.s = load i64, ptr %i.q, align 8, !dbg !25237, !alias.scope !25208, !noalias !25209, !noundef !641
  br label %bb.d, !dbg !25238

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.01.0.i.i.i.i.i.peel.i = phi i64 [ %i.s, %bb.c ], [ %.sroa.0.0.i.i.i.i.i.i.peel.i, %bb.b ], !dbg !25239
  %.sroa.0.0.i.i.i.i.i.peel.i = phi ptr [ %i.r, %bb.c ], [ %i.c, %bb.b ], !dbg !25240
  invoke void @_RNvMNtNtCs1LHh8CLbVkQ_11polars_core5frame10projectionNtB2_23AmortizedColumnSelector6select(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val.i.i.i.peel.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i.i.i.i.i.peel.i, i64 noundef %.sroa.01.0.i.i.i.i.i.peel.i)
          to label %bb.e unwind label %.loopexit.split-lp.i, !dbg !25241, !noalias !25209

bb.e:                                             ; preds = %bb.d
  %i.t = load i64, ptr %i.b, align 8, !dbg !25242, !range !827, !noalias !25207, !noundef !641
  %.not.i.i.i.i.peel.i = icmp eq i64 %i.t, 18, !dbg !25242
  br i1 %.not.i.i.i.i.peel.i, label %bb.g, label %bb.f, !dbg !25243

bb.f:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(72) %.sroa.5.8..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(72) %i.b, i64 72, i1 false), !dbg !25244, !noalias !25204
  br label %bb.i, !dbg !25245

bb.g:                                             ; preds = %bb.e
  %i.u = load ptr, ptr %i.k, align 8, !dbg !25246, !noalias !25207, !nonnull !641, !align !833, !noundef !641
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !25247, !noalias !25207
  invoke fastcc void @_RNvXs7_NtNtCs1LHh8CLbVkQ_11polars_core5frame6columnNtB5_6ColumnNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(160) %i.a, ptr noundef nonnull align 16 %i.u)
          to label %bb.h unwind label %.loopexit.split-lp.i, !dbg !25248, !noalias !25209

bb.h:                                             ; preds = %bb.g
  %.sroa.02.0.copyload.i.i.i.peel.i = load i8, ptr %i.a, align 16, !dbg !25249, !noalias !25210
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(79) %.sroa.5.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(79) %.sroa.5.0..sroa_idx.i.i.i.i, i64 79, i1 false), !dbg !25249, !noalias !25204
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %.sroa.73.i.i.i.i, ptr noundef nonnull align 16 dereferenceable(80) %.sroa.73.0..sroa_idx.i.i.i.i, i64 80, i1 false), !dbg !25249, !noalias !25204
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !25250, !noalias !25207
  %.pre.i.i.i.i.peel.i = load i8, ptr %i.j, align 1, !dbg !25251, !range !751, !alias.scope !25211, !noalias !25209
  br label %bb.i, !dbg !25252

bb.i:                                             ; preds = %bb.h, %bb.f
  %.sroa.02.0.i.i.i.peel.i = phi i8 [ %.sroa.02.0.copyload.i.i.i.peel.i, %bb.h ], [ 32, %bb.f ], !dbg !25253 ; 3 uses
  %i.v = phi i8 [ %.pre.i.i.i.i.peel.i, %bb.h ], [ %i.m, %bb.f ], !dbg !25251
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !25254, !noalias !25207
  %i.w = icmp eq i8 %i.v, -40, !dbg !25255
  br i1 %i.w, label %bb.j, label %_RNCINvMNtNtCs1LHh8CLbVkQ_11polars_core5frame10projectionNtB5_23AmortizedColumnSelector15select_multipleNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrAB1D_j1_E0Cs2Aa799EbAFJ_11polars_time.exit.i.i.i.peel.i, !dbg !25255, !prof !752

bb.j:                                             ; preds = %bb.i
  call void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c), !dbg !25256, !noalias !25209
  br label %_RNCINvMNtNtCs1LHh8CLbVkQ_11polars_core5frame10projectionNtB5_23AmortizedColumnSelector15select_multipleNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrAB1D_j1_E0Cs2Aa799EbAFJ_11polars_time.exit.i.i.i.peel.i, !dbg !25256

_RNCINvMNtNtCs1LHh8CLbVkQ_11polars_core5frame10projectionNtB5_23AmortizedColumnSelector15select_multipleNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrAB1D_j1_E0Cs2Aa799EbAFJ_11polars_time.exit.i.i.i.peel.i: ; preds = %bb.j, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !25257, !noalias !25204
  %i.x = icmp eq i8 %.sroa.02.0.i.i.i.peel.i, 32, !dbg !25258
  br i1 %i.x, label %.loopexit8.i, label %_RNCINvMs6_NtNtNtCscgRAwXFJnXP_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEE8try_folduNCINvNtNtNtBe_4iter8adapters3map12map_try_foldB1X_INtNtBe_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBe_3ops12control_flow11ControlFlowIB5J_B48_EENCINvMNtB4c_10projectionNtB6E_23AmortizedColumnSelector15select_multipleB1X_AB1X_j1_E0NCINvXB35_INtB35_12GenericShuntINtB33_3MapINtBa_8IntoIterB1X_KB7R_EB6y_EIB3N_NtNtBe_7convert10InfallibleB4Z_EENtNtNtB37_6traits8iterator8Iterator8try_folduNCINvNvB9I_12try_for_each4callB48_B6n_NcNtB6n_5Break0E0B6n_E0E0B5I_E0Cs2Aa799EbAFJ_11polars_time.exit.i.peel.i, !dbg !25259

_RNCINvMs6_NtNtNtCscgRAwXFJnXP_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEE8try_folduNCINvNtNtNtBe_4iter8adapters3map12map_try_foldB1X_INtNtBe_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBe_3ops12control_flow11ControlFlowIB5J_B48_EENCINvMNtB4c_10projectionNtB6E_23AmortizedColumnSelector15select_multipleB1X_AB1X_j1_E0NCINvXB35_INtB35_12GenericShuntINtB33_3MapINtBa_8IntoIterB1X_KB7R_EB6y_EIB3N_NtNtBe_7convert10InfallibleB4Z_EENtNtNtB37_6traits8iterator8Iterator8try_folduNCINvNvB9I_12try_for_each4callB48_B6n_NcNtB6n_5Break0E0B6n_E0E0B5I_E0Cs2Aa799EbAFJ_11polars_time.exit.i.peel.i: ; preds = %_RNCINvMNtNtCs1LHh8CLbVkQ_11polars_core5frame10projectionNtB5_23AmortizedColumnSelector15select_multipleNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrAB1D_j1_E0Cs2Aa799EbAFJ_11polars_time.exit.i.i.i.peel.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(79) %.sroa.4.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(79) %.sroa.5.i.i.i.i, i64 79, i1 false), !dbg !25260, !noalias !25212
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(80) %.sroa.4.80..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 16 dereferenceable(80) %.sroa.73.i.i.i.i, i64 80, i1 false), !dbg !25261, !noalias !25212
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i.i), !dbg !25262
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.73.i.i.i.i), !dbg !25262
  %.not.i.i.peel.i = icmp eq i8 %.sroa.02.0.i.i.i.peel.i, 33, !dbg !25263
  br i1 %.not.i.i.peel.i, label %bb.k, label %.loopexit.i.i, !dbg !25264

bb.k:                                             ; preds = %_RNCINvMs6_NtNtNtCscgRAwXFJnXP_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEE8try_folduNCINvNtNtNtBe_4iter8adapters3map12map_try_foldB1X_INtNtBe_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBe_3ops12control_flow11ControlFlowIB5J_B48_EENCINvMNtB4c_10projectionNtB6E_23AmortizedColumnSelector15select_multipleB1X_AB1X_j1_E0NCINvXB35_INtB35_12GenericShuntINtB33_3MapINtBa_8IntoIterB1X_KB7R_EB6y_EIB3N_NtNtBe_7convert10InfallibleB4Z_EENtNtNtB37_6traits8iterator8Iterator8try_folduNCINvNvB9I_12try_for_each4callB48_B6n_NcNtB6n_5Break0E0B6n_E0E0B5I_E0Cs2Aa799EbAFJ_11polars_time.exit.i.peel.i
  call void @llvm.assume(i1 %.not.i.i), !dbg !25224
  br label %_RINvXs2_NtNtCscgRAwXFJnXP_4core5array4iterINtB6_8IntoIterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrKj1_ENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1T_8adapters3map12map_try_foldBT_INtNtBa_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB5g_B3F_EENCINvMNtB3J_10projectionNtB6b_23AmortizedColumnSelector15select_multipleBT_ABT_B1J_E0NCINvXB2J_INtB2J_12GenericShuntINtB2H_3MapBE_B65_EIB3k_NtNtBa_7convert10InfallibleB4w_EEB1N_8try_folduNCINvNvB1N_12try_for_each4callB3F_B5U_NcNtB5U_5Break0E0B5U_E0E0B5f_ECs2Aa799EbAFJ_11polars_time.exit, !dbg !25224

.loopexit.split-lp.i:                             ; preds = %bb.g, %bb.d
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.y = load i8, ptr %i.j, align 1, !dbg !25265, !range !751, !alias.scope !25213, !noalias !25209, !noundef !641
  %i.z = icmp eq i8 %i.y, -40, !dbg !25266
  br i1 %i.z, label %bb.l, label %common.resume.i.i.i.i, !dbg !25266, !prof !752

bb.l:                                             ; preds = %.loopexit.split-lp.i
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %common.resume.i.i.i.i unwind label %bb.m, !dbg !25267, !noalias !25209

bb.m:                                             ; preds = %bb.l
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #30, !dbg !25268, !noalias !25209
  unreachable, !dbg !25268

common.resume.i.i.i.i:                            ; preds = %bb.o, %bb.l, %.loopexit.split-lp.i
  %common.resume.op.i.i.i.i = phi { ptr, i32 } [ %i.ad, %bb.o ], [ %lpad.loopexit.split-lp.i, %bb.l ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  resume { ptr, i32 } %common.resume.op.i.i.i.i, !dbg !25269

.loopexit8.i:                                     ; preds = %_RNCINvMNtNtCs1LHh8CLbVkQ_11polars_core5frame10projectionNtB5_23AmortizedColumnSelector15select_multipleNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrAB1D_j1_E0Cs2Aa799EbAFJ_11polars_time.exit.i.i.i.peel.i
  %i.ab = load i64, ptr %3, align 8, !dbg !25270, !range !827, !alias.scope !25214, !noalias !25215, !noundef !641
  %i.ac = icmp eq i64 %i.ab, 18, !dbg !25270
  br i1 %i.ac, label %_RNCINvMs6_NtNtNtCscgRAwXFJnXP_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEE8try_folduNCINvNtNtNtBe_4iter8adapters3map12map_try_foldB1X_INtNtBe_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBe_3ops12control_flow11ControlFlowIB5J_B48_EENCINvMNtB4c_10projectionNtB6E_23AmortizedColumnSelector15select_multipleB1X_AB1X_j1_E0NCINvXB35_INtB35_12GenericShuntINtB33_3MapINtBa_8IntoIterB1X_KB7R_EB6y_EIB3N_NtNtBe_7convert10InfallibleB4Z_EENtNtNtB37_6traits8iterator8Iterator8try_folduNCINvNvB9I_12try_for_each4callB48_B6n_NcNtB6n_5Break0E0B6n_E0E0B5I_E0Cs2Aa799EbAFJ_11polars_time.exit.thread.i.i, label %bb.n, !dbg !25270

bb.n:                                             ; preds = %.loopexit8.i
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorECs2Aa799EbAFJ_11polars_time(ptr noalias noundef nonnull align 8 dereferenceable(72) %3)
          to label %_RNCINvMs6_NtNtNtCscgRAwXFJnXP_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEE8try_folduNCINvNtNtNtBe_4iter8adapters3map12map_try_foldB1X_INtNtBe_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBe_3ops12control_flow11ControlFlowIB5J_B48_EENCINvMNtB4c_10projectionNtB6E_23AmortizedColumnSelector15select_multipleB1X_AB1X_j1_E0NCINvXB35_INtB35_12GenericShuntINtB33_3MapINtBa_8IntoIterB1X_KB7R_EB6y_EIB3N_NtNtBe_7convert10InfallibleB4Z_EENtNtNtB37_6traits8iterator8Iterator8try_folduNCINvNvB9I_12try_for_each4callB48_B6n_NcNtB6n_5Break0E0B6n_E0E0B5I_E0Cs2Aa799EbAFJ_11polars_time.exit.thread.i.i unwind label %bb.o, !dbg !25271, !noalias !25215

bb.o:                                             ; preds = %bb.n
  %i.ad = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %3, ptr noundef nonnull align 1 dereferenceable(72) %.sroa.5.8..sroa_idx.i.i.i.i, i64 72, i1 false), !dbg !25272, !noalias !25204
  br label %common.resume.i.i.i.i, !dbg !25273

_RNCINvMs6_NtNtNtCscgRAwXFJnXP_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEE8try_folduNCINvNtNtNtBe_4iter8adapters3map12map_try_foldB1X_INtNtBe_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBe_3ops12control_flow11ControlFlowIB5J_B48_EENCINvMNtB4c_10projectionNtB6E_23AmortizedColumnSelector15select_multipleB1X_AB1X_j1_E0NCINvXB35_INtB35_12GenericShuntINtB33_3MapINtBa_8IntoIterB1X_KB7R_EB6y_EIB3N_NtNtBe_7convert10InfallibleB4Z_EENtNtNtB37_6traits8iterator8Iterator8try_folduNCINvNvB9I_12try_for_each4callB48_B6n_NcNtB6n_5Break0E0B6n_E0E0B5I_E0Cs2Aa799EbAFJ_11polars_time.exit.thread.i.i: ; preds = %bb.n, %.loopexit8.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %3, ptr noundef nonnull align 1 dereferenceable(72) %.sroa.5.8..sroa_idx.i.i.i.i, i64 72, i1 false), !dbg !25272, !noalias !25204
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i.i), !dbg !25262
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.73.i.i.i.i), !dbg !25262
  br label %.loopexit.i.i, !dbg !25264

.loopexit.i.i:                                    ; preds = %_RNCINvMs6_NtNtNtCscgRAwXFJnXP_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEE8try_folduNCINvNtNtNtBe_4iter8adapters3map12map_try_foldB1X_INtNtBe_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBe_3ops12control_flow11ControlFlowIB5J_B48_EENCINvMNtB4c_10projectionNtB6E_23AmortizedColumnSelector15select_multipleB1X_AB1X_j1_E0NCINvXB35_INtB35_12GenericShuntINtB33_3MapINtBa_8IntoIterB1X_KB7R_EB6y_EIB3N_NtNtBe_7convert10InfallibleB4Z_EENtNtNtB37_6traits8iterator8Iterator8try_folduNCINvNvB9I_12try_for_each4callB48_B6n_NcNtB6n_5Break0E0B6n_E0E0B5I_E0Cs2Aa799EbAFJ_11polars_time.exit.thread.i.i, %_RNCINvMs6_NtNtNtCscgRAwXFJnXP_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEE8try_folduNCINvNtNtNtBe_4iter8adapters3map12map_try_foldB1X_INtNtBe_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBe_3ops12control_flow11ControlFlowIB5J_B48_EENCINvMNtB4c_10projectionNtB6E_23AmortizedColumnSelector15select_multipleB1X_AB1X_j1_E0NCINvXB35_INtB35_12GenericShuntINtB33_3MapINtBa_8IntoIterB1X_KB7R_EB6y_EIB3N_NtNtBe_7convert10InfallibleB4Z_EENtNtNtB37_6traits8iterator8Iterator8try_folduNCINvNvB9I_12try_for_each4callB48_B6n_NcNtB6n_5Break0E0B6n_E0E0B5I_E0Cs2Aa799EbAFJ_11polars_time.exit.i.peel.i
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !25274
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(159) %.sroa.2.0..sroa_idx.i.i, ptr noundef nonnull align 1 dereferenceable(159) %.sroa.4.i.i.i.i.i, i64 159, i1 false), !dbg !25275, !noalias !25216
  br label %_RINvXs2_NtNtCscgRAwXFJnXP_4core5array4iterINtB6_8IntoIterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrKj1_ENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1T_8adapters3map12map_try_foldBT_INtNtBa_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB5g_B3F_EENCINvMNtB3J_10projectionNtB6b_23AmortizedColumnSelector15select_multipleBT_ABT_B1J_E0NCINvXB2J_INtB2J_12GenericShuntINtB2H_3MapBE_B65_EIB3k_NtNtBa_7convert10InfallibleB4w_EEB1N_8try_folduNCINvNvB1N_12try_for_each4callB3F_B5U_NcNtB5U_5Break0E0B5U_E0E0B5f_ECs2Aa799EbAFJ_11polars_time.exit, !dbg !25276

_RINvXs2_NtNtCscgRAwXFJnXP_4core5array4iterINtB6_8IntoIterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrKj1_ENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1T_8adapters3map12map_try_foldBT_INtNtBa_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB5g_B3F_EENCINvMNtB3J_10projectionNtB6b_23AmortizedColumnSelector15select_multipleBT_ABT_B1J_E0NCINvXB2J_INtB2J_12GenericShuntINtB2H_3MapBE_B65_EIB3k_NtNtBa_7convert10InfallibleB4w_EEB1N_8try_folduNCINvNvB1N_12try_for_each4callB3F_B5U_NcNtB5U_5Break0E0B5U_E0E0B5f_ECs2Aa799EbAFJ_11polars_time.exit: ; preds = %bb.a, %bb.k, %.loopexit.i.i
  %storemerge.i.i = phi i8 [ %.sroa.02.0.i.i.i.peel.i, %.loopexit.i.i ], [ 33, %bb.a ], [ 33, %bb.k ], !dbg !25277
  store i8 %storemerge.i.i, ptr %0, align 16, !dbg !25277, !alias.scope !25217, !noalias !25216
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i.i.i), !dbg !25278
  ret void, !dbg !25279
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterAmj2_ENCNCNvMs1_NtNtCs2Aa799EbAFJ_11polars_time8group_by7dynamicINtB1D_4WrapRNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameE12impl_rolling00ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3R_8for_each4callB1n_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB57_3VecB1n_E14extend_trustedBN_E0E0EB1H_(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !25280 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !25351, !nonnull !641, !noundef !641 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !25351
  %i.c = load ptr, ptr %i.b, align 8, !dbg !25351, !nonnull !641, !noundef !641 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !25352
  %i.e = load ptr, ptr %i.d, align 8, !dbg !25352, !nonnull !641, !align !948, !noundef !641 ; 6 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8, !dbg !25353 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !25353
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !25353 ; 6 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !25353
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !25353 ; 6 uses
  %i.f = icmp eq ptr %i.a, %i.c, !dbg !25354
  br i1 %i.f, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterAmj2_ENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB12_8adapters3map8map_foldRBQ_BQ_uNCNCNvMs1_NtNtCs2Aa799EbAFJ_11polars_time8group_by7dynamicINtB2y_4WrapRNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameE12impl_rolling00NCINvNvBW_8for_each4callBQ_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5l_3VecBQ_E14extend_trustedINtB1M_3MapBF_B2o_EE0E0E0EB2C_.exit, label %bb.b, !dbg !25355

bb.b:                                             ; preds = %bb.a
  %i.g = ptrtoint ptr %i.c to i64, !dbg !25356
  %i.h = ptrtoint ptr %i.a to i64, !dbg !25356
  %i.i = sub nuw i64 %i.g, %i.h, !dbg !25356      ; 4 uses
  %i.j = lshr i64 %i.i, 3, !dbg !25356            ; 4 uses
  %min.iters.check = icmp ult i64 %i.i, 80, !dbg !25357
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck, !dbg !25357

vector.memcheck:                                  ; preds = %bb.b
  %i.k = shl i64 %.sroa.5.0.copyload, 3, !dbg !25357 ; 2 uses
  %i.l = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.k, !dbg !25357 ; 2 uses
  %scevgep2 = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.k, !dbg !25357
  %scevgep3 = getelementptr i8, ptr %scevgep2, i64 %i.i, !dbg !25357 ; 2 uses
  %scevgep4 = getelementptr i8, ptr %i.e, i64 4, !dbg !25357
  %bound0 = icmp ult ptr %i.l, %i.c, !dbg !25357
  %bound1 = icmp ult ptr %i.a, %scevgep3, !dbg !25357
  %found.conflict = and i1 %bound0, %bound1, !dbg !25357
  %bound05 = icmp ult ptr %i.l, %scevgep4, !dbg !25357
  %bound16 = icmp ult ptr %i.e, %scevgep3, !dbg !25357
  %found.conflict7 = and i1 %bound05, %bound16, !dbg !25357
  %conflict.rdx = or i1 %found.conflict, %found.conflict7, !dbg !25357
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph, !dbg !25358

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.j, 2305843009213693948      ; 4 uses
  %i.m = add i64 %.sroa.5.0.copyload, %n.vec      ; 2 uses
  %i.n = load i32, ptr %i.e, align 4, !dbg !25359, !alias.scope !25337, !noalias !25338, !noundef !641
  %broadcast.splatinsert = insertelement <2 x i32> poison, i32 %i.n, i64 0, !dbg !25358
  %broadcast.splat = shufflevector <2 x i32> %broadcast.splatinsert, <2 x i32> poison, <2 x i32> zeroinitializer, !dbg !25358 ; 2 uses
  %i.o = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body, !dbg !25358

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !25358 ; 4 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index, !dbg !25360
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index, !dbg !25360
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16, !dbg !25360
  %wide.vec = load <4 x i32>, ptr %i.p, align 4, !dbg !25361, !alias.scope !25341, !noalias !25342 ; 2 uses
  %strided.vec = shufflevector <4 x i32> %wide.vec, <4 x i32> poison, <2 x i32> <i32 0, i32 2>, !dbg !25361
  %strided.vec8 = shufflevector <4 x i32> %wide.vec, <4 x i32> poison, <2 x i32> <i32 1, i32 3>, !dbg !25361
  %wide.vec9 = load <4 x i32>, ptr %i.r, align 4, !dbg !25361, !alias.scope !25341, !noalias !25342 ; 2 uses
  %strided.vec10 = shufflevector <4 x i32> %wide.vec9, <4 x i32> poison, <2 x i32> <i32 0, i32 2>, !dbg !25361
  %strided.vec11 = shufflevector <4 x i32> %wide.vec9, <4 x i32> poison, <2 x i32> <i32 1, i32 3>, !dbg !25361
  %i.s = add <2 x i32> %broadcast.splat, %strided.vec, !dbg !25362
  %i.t = add <2 x i32> %broadcast.splat, %strided.vec10, !dbg !25362
  %i.u = zext <2 x i32> %strided.vec8 to <2 x i64>, !dbg !25363
  %i.v = zext <2 x i32> %strided.vec11 to <2 x i64>, !dbg !25363
  %i.w = shl nuw <2 x i64> %i.u, splat (i64 32), !dbg !25363
  %i.x = shl nuw <2 x i64> %i.v, splat (i64 32), !dbg !25363
  %i.y = zext <2 x i32> %i.s to <2 x i64>, !dbg !25363
  %i.z = zext <2 x i32> %i.t to <2 x i64>, !dbg !25363
  %i.aa = or disjoint <2 x i64> %i.w, %i.y, !dbg !25363
  %i.ab = or disjoint <2 x i64> %i.x, %i.z, !dbg !25363
  %i.ac = getelementptr [8 x i8], ptr %i.o, i64 %index, !dbg !25364 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16, !dbg !25365
  store <2 x i64> %i.aa, ptr %i.ac, align 4, !dbg !25365, !alias.scope !25343, !noalias !25344
  store <2 x i64> %i.ab, ptr %i.ad, align 4, !dbg !25365, !alias.scope !25343, !noalias !25344
  %index.next = add nuw i64 %index, 4, !dbg !25358 ; 2 uses
  %i.ae = icmp eq i64 %index.next, %n.vec, !dbg !25366
  br i1 %i.ae, label %middle.block, label %vector.body, !dbg !25366, !llvm.loop !25327

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.j, %n.vec, !dbg !25366
  br i1 %cmp.n, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterAmj2_ENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB12_8adapters3map8map_foldRBQ_BQ_uNCNCNvMs1_NtNtCs2Aa799EbAFJ_11polars_time8group_by7dynamicINtB2y_4WrapRNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameE12impl_rolling00NCINvNvBW_8for_each4callBQ_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5l_3VecBQ_E14extend_trustedINtB1M_3MapBF_B2o_EE0E0E0EB2C_.exit, label %scalar.ph.preheader, !dbg !25366

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.b, %middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %vector.memcheck ], [ %.sroa.5.0.copyload, %bb.b ], [ %i.m, %middle.block ] ; 3 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.b ], [ %n.vec, %middle.block ] ; 4 uses
  %.neg = or disjoint i64 %.sroa.01.0.i.ph, 1, !dbg !25366
  %i.af = and i64 %i.i, 8, !dbg !25366
  %lcmp.mod.not = icmp eq i64 %i.af, 0, !dbg !25366
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !25366

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.sroa.01.0.i.ph, !dbg !25360 ; 2 uses
  %.val16.i.prol = load i32, ptr %i.ag, align 4, !dbg !25361, !noalias !25342, !noundef !641
  %i.ah = getelementptr i8, ptr %i.ag, i64 4, !dbg !25361
  %.val17.i.prol = load i32, ptr %i.ah, align 4, !dbg !25361, !noalias !25342, !noundef !641
  %i.ai = load i32, ptr %i.e, align 4, !dbg !25359, !noalias !25338, !noundef !641
  %i.aj = add i32 %i.ai, %.val16.i.prol, !dbg !25362
  %.sroa.2.0.insert.ext.i.i.i.prol = zext i32 %.val17.i.prol to i64, !dbg !25363
  %.sroa.2.0.insert.shift.i.i.i.prol = shl nuw i64 %.sroa.2.0.insert.ext.i.i.i.prol, 32, !dbg !25363
  %.sroa.0.0.insert.ext.i.i.i.prol = zext i32 %i.aj to i64, !dbg !25363
  %.sroa.0.0.insert.insert.i.i.i.prol = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i.prol, %.sroa.0.0.insert.ext.i.i.i.prol, !dbg !25363
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %.ph, !dbg !25364
  store i64 %.sroa.0.0.insert.insert.i.i.i.prol, ptr %i.ak, align 4, !dbg !25365, !noalias !25345
  %i.al = add i64 %.ph, 1, !dbg !25367            ; 2 uses
  %i.am = or disjoint i64 %.sroa.01.0.i.ph, 1, !dbg !25368
  br label %scalar.ph.prol.loopexit, !dbg !25366

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.al, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.al, %scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], [ %i.am, %scalar.ph.prol ]
  %i.an = icmp eq i64 %i.j, %.neg, !dbg !25366
  br i1 %i.an, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterAmj2_ENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB12_8adapters3map8map_foldRBQ_BQ_uNCNCNvMs1_NtNtCs2Aa799EbAFJ_11polars_time8group_by7dynamicINtB2y_4WrapRNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameE12impl_rolling00NCINvNvBW_8for_each4callBQ_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5l_3VecBQ_E14extend_trustedINtB1M_3MapBF_B2o_EE0E0E0EB2C_.exit, label %scalar.ph, !dbg !25366

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.ao = phi i64 [ %i.bb, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ], !dbg !25360 ; 3 uses
  %.sroa.01.0.i = phi i64 [ %i.bc, %scalar.ph ], [ %.sroa.01.0.i.unr, %scalar.ph.prol.loopexit ], !dbg !25358 ; 3 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.sroa.01.0.i, !dbg !25360 ; 2 uses
  %.val16.i = load i32, ptr %i.ap, align 4, !dbg !25361, !noalias !25342, !noundef !641
  %i.aq = getelementptr i8, ptr %i.ap, i64 4, !dbg !25361
  %.val17.i = load i32, ptr %i.aq, align 4, !dbg !25361, !noalias !25342, !noundef !641
  %i.ar = load i32, ptr %i.e, align 4, !dbg !25359, !noalias !25338, !noundef !641
  %i.as = add i32 %i.ar, %.val16.i, !dbg !25362
  %.sroa.2.0.insert.ext.i.i.i = zext i32 %.val17.i to i64, !dbg !25363
  %.sroa.2.0.insert.shift.i.i.i = shl nuw i64 %.sroa.2.0.insert.ext.i.i.i, 32, !dbg !25363
  %.sroa.0.0.insert.ext.i.i.i = zext i32 %i.as to i64, !dbg !25363
  %.sroa.0.0.insert.insert.i.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i, %.sroa.0.0.insert.ext.i.i.i, !dbg !25363
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.ao, !dbg !25364
  store i64 %.sroa.0.0.insert.insert.i.i.i, ptr %i.at, align 4, !dbg !25365, !noalias !25345
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.sroa.01.0.i, !dbg !25360 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8, !dbg !25360
  %.val16.i.1 = load i32, ptr %i.av, align 4, !dbg !25361, !noalias !25342, !noundef !641
  %i.aw = getelementptr i8, ptr %i.au, i64 12, !dbg !25361
  %.val17.i.1 = load i32, ptr %i.aw, align 4, !dbg !25361, !noalias !25342, !noundef !641
  %i.ax = load i32, ptr %i.e, align 4, !dbg !25359, !noalias !25338, !noundef !641
  %i.ay = add i32 %i.ax, %.val16.i.1, !dbg !25362
  %.sroa.2.0.insert.ext.i.i.i.1 = zext i32 %.val17.i.1 to i64, !dbg !25363
  %.sroa.2.0.insert.shift.i.i.i.1 = shl nuw i64 %.sroa.2.0.insert.ext.i.i.i.1, 32, !dbg !25363
  %.sroa.0.0.insert.ext.i.i.i.1 = zext i32 %i.ay to i64, !dbg !25363
  %.sroa.0.0.insert.insert.i.i.i.1 = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i.1, %.sroa.0.0.insert.ext.i.i.i.1, !dbg !25363
  %i.az = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.ao, !dbg !25364
  %i.ba = getelementptr i8, ptr %i.az, i64 8, !dbg !25364
  store i64 %.sroa.0.0.insert.insert.i.i.i.1, ptr %i.ba, align 4, !dbg !25365, !noalias !25345
  %i.bb = add i64 %i.ao, 2, !dbg !25367           ; 2 uses
  %i.bc = add nuw i64 %.sroa.01.0.i, 2, !dbg !25368 ; 2 uses
  %i.bd = icmp eq i64 %i.bc, %i.j, !dbg !25366
  br i1 %i.bd, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterAmj2_ENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB12_8adapters3map8map_foldRBQ_BQ_uNCNCNvMs1_NtNtCs2Aa799EbAFJ_11polars_time8group_by7dynamicINtB2y_4WrapRNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameE12impl_rolling00NCINvNvBW_8for_each4callBQ_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5l_3VecBQ_E14extend_trustedINtB1M_3MapBF_B2o_EE0E0E0EB2C_.exit, label %scalar.ph, !dbg !25366, !llvm.loop !25332

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterAmj2_ENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB12_8adapters3map8map_foldRBQ_BQ_uNCNCNvMs1_NtNtCs2Aa799EbAFJ_11polars_time8group_by7dynamicINtB2y_4WrapRNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameE12impl_rolling00NCINvNvBW_8for_each4callBQ_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5l_3VecBQ_E14extend_trustedINtB1M_3MapBF_B2o_EE0E0E0EB2C_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.m, %middle.block ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.bb, %scalar.ph ], !dbg !25369
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !25369, !noalias !25342
  ret void, !dbg !25370
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterAmj2_ENCNCNvMs1_NtNtCs2Aa799EbAFJ_11polars_time8group_by7dynamicINtB1D_4WrapRNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameE21impl_group_by_dynamics0_00ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB43_8for_each4callB1n_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5j_3VecB1n_E14extend_trustedBN_E0E0EB1H_(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !25371 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !25441, !nonnull !641, !noundef !641 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !25441
  %i.c = load ptr, ptr %i.b, align 8, !dbg !25441, !nonnull !641, !noundef !641 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !25442
  %i.e = load ptr, ptr %i.d, align 8, !dbg !25442, !nonnull !641, !align !948, !noundef !641 ; 6 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8, !dbg !25443 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !25443
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !25443 ; 6 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !25443
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !25443 ; 6 uses
  %i.f = icmp eq ptr %i.a, %i.c, !dbg !25444
  br i1 %i.f, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterAmj2_ENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB12_8adapters3map8map_foldRBQ_BQ_uNCNCNvMs1_NtNtCs2Aa799EbAFJ_11polars_time8group_by7dynamicINtB2y_4WrapRNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameE21impl_group_by_dynamics0_00NCINvNvBW_8for_each4callBQ_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5x_3VecBQ_E14extend_trustedINtB1M_3MapBF_B2o_EE0E0E0EB2C_.exit, label %bb.b, !dbg !25445

bb.b:                                             ; preds = %bb.a
  %i.g = ptrtoint ptr %i.c to i64, !dbg !25446
  %i.h = ptrtoint ptr %i.a to i64, !dbg !25446
  %i.i = sub nuw i64 %i.g, %i.h, !dbg !25446      ; 4 uses
  %i.j = lshr i64 %i.i, 3, !dbg !25446            ; 4 uses
  %min.iters.check = icmp ult i64 %i.i, 80, !dbg !25447
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck, !dbg !25447

vector.memcheck:                                  ; preds = %bb.b
  %i.k = shl i64 %.sroa.5.0.copyload, 3, !dbg !25447 ; 2 uses
  %i.l = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.k, !dbg !25447 ; 2 uses
  %scevgep2 = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.k, !dbg !25447
  %scevgep3 = getelementptr i8, ptr %scevgep2, i64 %i.i, !dbg !25447 ; 2 uses
  %scevgep4 = getelementptr i8, ptr %i.e, i64 4, !dbg !25447
  %bound0 = icmp ult ptr %i.l, %i.c, !dbg !25447
  %bound1 = icmp ult ptr %i.a, %scevgep3, !dbg !25447
  %found.conflict = and i1 %bound0, %bound1, !dbg !25447
  %bound05 = icmp ult ptr %i.l, %scevgep4, !dbg !25447
  %bound16 = icmp ult ptr %i.e, %scevgep3, !dbg !25447
  %found.conflict7 = and i1 %bound05, %bound16, !dbg !25447
  %conflict.rdx = or i1 %found.conflict, %found.conflict7, !dbg !25447
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph, !dbg !25448

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.j, 2305843009213693948      ; 4 uses
  %i.m = add i64 %.sroa.5.0.copyload, %n.vec      ; 2 uses
  %i.n = load i32, ptr %i.e, align 4, !dbg !25449, !alias.scope !25428, !noalias !25429, !noundef !641
  %broadcast.splatinsert = insertelement <2 x i32> poison, i32 %i.n, i64 0, !dbg !25448
  %broadcast.splat = shufflevector <2 x i32> %broadcast.splatinsert, <2 x i32> poison, <2 x i32> zeroinitializer, !dbg !25448 ; 2 uses
  %i.o = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body, !dbg !25448

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !25448 ; 4 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index, !dbg !25450
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index, !dbg !25450
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16, !dbg !25450
  %wide.vec = load <4 x i32>, ptr %i.p, align 4, !dbg !25451, !alias.scope !25431, !noalias !25432 ; 2 uses
  %strided.vec = shufflevector <4 x i32> %wide.vec, <4 x i32> poison, <2 x i32> <i32 0, i32 2>, !dbg !25451
  %strided.vec8 = shufflevector <4 x i32> %wide.vec, <4 x i32> poison, <2 x i32> <i32 1, i32 3>, !dbg !25451
  %wide.vec9 = load <4 x i32>, ptr %i.r, align 4, !dbg !25451, !alias.scope !25431, !noalias !25432 ; 2 uses
  %strided.vec10 = shufflevector <4 x i32> %wide.vec9, <4 x i32> poison, <2 x i32> <i32 0, i32 2>, !dbg !25451
  %strided.vec11 = shufflevector <4 x i32> %wide.vec9, <4 x i32> poison, <2 x i32> <i32 1, i32 3>, !dbg !25451
  %i.s = add <2 x i32> %broadcast.splat, %strided.vec, !dbg !25452
  %i.t = add <2 x i32> %broadcast.splat, %strided.vec10, !dbg !25452
  %i.u = zext <2 x i32> %strided.vec8 to <2 x i64>, !dbg !25453
  %i.v = zext <2 x i32> %strided.vec11 to <2 x i64>, !dbg !25453
  %i.w = shl nuw <2 x i64> %i.u, splat (i64 32), !dbg !25453
  %i.x = shl nuw <2 x i64> %i.v, splat (i64 32), !dbg !25453
  %i.y = zext <2 x i32> %i.s to <2 x i64>, !dbg !25453
  %i.z = zext <2 x i32> %i.t to <2 x i64>, !dbg !25453
  %i.aa = or disjoint <2 x i64> %i.w, %i.y, !dbg !25453
  %i.ab = or disjoint <2 x i64> %i.x, %i.z, !dbg !25453
  %i.ac = getelementptr [8 x i8], ptr %i.o, i64 %index, !dbg !25454 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16, !dbg !25455
  store <2 x i64> %i.aa, ptr %i.ac, align 4, !dbg !25455, !alias.scope !25433, !noalias !25434
  store <2 x i64> %i.ab, ptr %i.ad, align 4, !dbg !25455, !alias.scope !25433, !noalias !25434
  %index.next = add nuw i64 %index, 4, !dbg !25448 ; 2 uses
  %i.ae = icmp eq i64 %index.next, %n.vec, !dbg !25456
  br i1 %i.ae, label %middle.block, label %vector.body, !dbg !25456, !llvm.loop !25418

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.j, %n.vec, !dbg !25456
  br i1 %cmp.n, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterAmj2_ENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB12_8adapters3map8map_foldRBQ_BQ_uNCNCNvMs1_NtNtCs2Aa799EbAFJ_11polars_time8group_by7dynamicINtB2y_4WrapRNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameE21impl_group_by_dynamics0_00NCINvNvBW_8for_each4callBQ_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5x_3VecBQ_E14extend_trustedINtB1M_3MapBF_B2o_EE0E0E0EB2C_.exit, label %scalar.ph.preheader, !dbg !25456

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.b, %middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %vector.memcheck ], [ %.sroa.5.0.copyload, %bb.b ], [ %i.m, %middle.block ] ; 3 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.b ], [ %n.vec, %middle.block ] ; 4 uses
  %.neg = or disjoint i64 %.sroa.01.0.i.ph, 1, !dbg !25456
  %i.af = and i64 %i.i, 8, !dbg !25456
  %lcmp.mod.not = icmp eq i64 %i.af, 0, !dbg !25456
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !25456

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.sroa.01.0.i.ph, !dbg !25450 ; 2 uses
  %.val16.i.prol = load i32, ptr %i.ag, align 4, !dbg !25451, !noalias !25432, !noundef !641
  %i.ah = getelementptr i8, ptr %i.ag, i64 4, !dbg !25451
  %.val17.i.prol = load i32, ptr %i.ah, align 4, !dbg !25451, !noalias !25432, !noundef !641
  %i.ai = load i32, ptr %i.e, align 4, !dbg !25449, !noalias !25429, !noundef !641
  %i.aj = add i32 %i.ai, %.val16.i.prol, !dbg !25452
  %.sroa.2.0.insert.ext.i.i.i.prol = zext i32 %.val17.i.prol to i64, !dbg !25453
  %.sroa.2.0.insert.shift.i.i.i.prol = shl nuw i64 %.sroa.2.0.insert.ext.i.i.i.prol, 32, !dbg !25453
  %.sroa.0.0.insert.ext.i.i.i.prol = zext i32 %i.aj to i64, !dbg !25453
  %.sroa.0.0.insert.insert.i.i.i.prol = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i.prol, %.sroa.0.0.insert.ext.i.i.i.prol, !dbg !25453
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %.ph, !dbg !25454
  store i64 %.sroa.0.0.insert.insert.i.i.i.prol, ptr %i.ak, align 4, !dbg !25455, !noalias !25435
  %i.al = add i64 %.ph, 1, !dbg !25457            ; 2 uses
  %i.am = or disjoint i64 %.sroa.01.0.i.ph, 1, !dbg !25458
  br label %scalar.ph.prol.loopexit, !dbg !25456

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.al, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.al, %scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], [ %i.am, %scalar.ph.prol ]
  %i.an = icmp eq i64 %i.j, %.neg, !dbg !25456
  br i1 %i.an, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterAmj2_ENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB12_8adapters3map8map_foldRBQ_BQ_uNCNCNvMs1_NtNtCs2Aa799EbAFJ_11polars_time8group_by7dynamicINtB2y_4WrapRNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameE21impl_group_by_dynamics0_00NCINvNvBW_8for_each4callBQ_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5x_3VecBQ_E14extend_trustedINtB1M_3MapBF_B2o_EE0E0E0EB2C_.exit, label %scalar.ph, !dbg !25456

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.ao = phi i64 [ %i.bb, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ], !dbg !25450 ; 3 uses
  %.sroa.01.0.i = phi i64 [ %i.bc, %scalar.ph ], [ %.sroa.01.0.i.unr, %scalar.ph.prol.loopexit ], !dbg !25448 ; 3 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.sroa.01.0.i, !dbg !25450 ; 2 uses
  %.val16.i = load i32, ptr %i.ap, align 4, !dbg !25451, !noalias !25432, !noundef !641
  %i.aq = getelementptr i8, ptr %i.ap, i64 4, !dbg !25451
  %.val17.i = load i32, ptr %i.aq, align 4, !dbg !25451, !noalias !25432, !noundef !641
  %i.ar = load i32, ptr %i.e, align 4, !dbg !25449, !noalias !25429, !noundef !641
  %i.as = add i32 %i.ar, %.val16.i, !dbg !25452
  %.sroa.2.0.insert.ext.i.i.i = zext i32 %.val17.i to i64, !dbg !25453
  %.sroa.2.0.insert.shift.i.i.i = shl nuw i64 %.sroa.2.0.insert.ext.i.i.i, 32, !dbg !25453
  %.sroa.0.0.insert.ext.i.i.i = zext i32 %i.as to i64, !dbg !25453
  %.sroa.0.0.insert.insert.i.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i, %.sroa.0.0.insert.ext.i.i.i, !dbg !25453
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.ao, !dbg !25454
  store i64 %.sroa.0.0.insert.insert.i.i.i, ptr %i.at, align 4, !dbg !25455, !noalias !25435
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.sroa.01.0.i, !dbg !25450 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8, !dbg !25450
  %.val16.i.1 = load i32, ptr %i.av, align 4, !dbg !25451, !noalias !25432, !noundef !641
  %i.aw = getelementptr i8, ptr %i.au, i64 12, !dbg !25451
  %.val17.i.1 = load i32, ptr %i.aw, align 4, !dbg !25451, !noalias !25432, !noundef !641
  %i.ax = load i32, ptr %i.e, align 4, !dbg !25449, !noalias !25429, !noundef !641
  %i.ay = add i32 %i.ax, %.val16.i.1, !dbg !25452
  %.sroa.2.0.insert.ext.i.i.i.1 = zext i32 %.val17.i.1 to i64, !dbg !25453
  %.sroa.2.0.insert.shift.i.i.i.1 = shl nuw i64 %.sroa.2.0.insert.ext.i.i.i.1, 32, !dbg !25453
  %.sroa.0.0.insert.ext.i.i.i.1 = zext i32 %i.ay to i64, !dbg !25453
  %.sroa.0.0.insert.insert.i.i.i.1 = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i.1, %.sroa.0.0.insert.ext.i.i.i.1, !dbg !25453
  %i.az = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.ao, !dbg !25454
  %i.ba = getelementptr i8, ptr %i.az, i64 8, !dbg !25454
  store i64 %.sroa.0.0.insert.insert.i.i.i.1, ptr %i.ba, align 4, !dbg !25455, !noalias !25435
  %i.bb = add i64 %i.ao, 2, !dbg !25457           ; 2 uses
  %i.bc = add nuw i64 %.sroa.01.0.i, 2, !dbg !25458 ; 2 uses
  %i.bd = icmp eq i64 %i.bc, %i.j, !dbg !25456
  br i1 %i.bd, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterAmj2_ENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB12_8adapters3map8map_foldRBQ_BQ_uNCNCNvMs1_NtNtCs2Aa799EbAFJ_11polars_time8group_by7dynamicINtB2y_4WrapRNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameE21impl_group_by_dynamics0_00NCINvNvBW_8for_each4callBQ_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5x_3VecBQ_E14extend_trustedINtB1M_3MapBF_B2o_EE0E0E0EB2C_.exit, label %scalar.ph, !dbg !25456, !llvm.loop !25423

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterAmj2_ENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB12_8adapters3map8map_foldRBQ_BQ_uNCNCNvMs1_NtNtCs2Aa799EbAFJ_11polars_time8group_by7dynamicINtB2y_4WrapRNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameE21impl_group_by_dynamics0_00NCINvNvBW_8for_each4callBQ_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5x_3VecBQ_E14extend_trustedINtB1M_3MapBF_B2o_EE0E0E0EB2C_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.m, %middle.block ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.bb, %scalar.ph ], !dbg !25459
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !25459, !noalias !25432
  ret void, !dbg !25460
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc3vec3VecAmj2_EENCINvNtNtCs1LHh8CLbVkQ_11polars_core5utils7flatten11flatten_parB1U_B1n_E0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3d_8for_each4callRSB1U_NCINvMsj_B1q_IB1o_B4g_E14extend_trustedBN_E0E0ECs2Aa799EbAFJ_11polars_time(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !25461 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !25542, !nonnull !641, !noundef !641 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !25542
  %i.c = load ptr, ptr %i.b, align 8, !dbg !25542, !nonnull !641, !noundef !641 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !25543
  %i.e = load ptr, ptr %i.d, align 8, !dbg !25543, !nonnull !641, !align !742, !noundef !641 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !25543
  %i.g = load ptr, ptr %i.f, align 8, !dbg !25543, !nonnull !641, !align !742, !noundef !641 ; 3 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8, !dbg !25544 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !25544
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !25544 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !25544
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8, !dbg !25544
  %i.h = icmp eq ptr %i.a, %i.c, !dbg !25545
  br i1 %i.h, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterINtNtCsgZ49sUHp3tW_5alloc3vec3VecAmj2_EENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1A_8adapters3map8map_foldRBQ_RSB1n_uNCINvNtNtCs1LHh8CLbVkQ_11polars_core5utils7flatten11flatten_parB1n_BQ_E0NCINvNvB1u_8for_each4callB2S_NCINvMsj_BT_IBR_B2S_E14extend_trustedINtB2k_3MapBF_B2Z_EE0E0E0ECs2Aa799EbAFJ_11polars_time.exit, label %bb.b, !dbg !25546

bb.b:                                             ; preds = %bb.a
  %i.i = ptrtoint ptr %i.c to i64, !dbg !25547
  %i.j = ptrtoint ptr %i.a to i64, !dbg !25547
  %i.k = sub nuw i64 %i.i, %i.j, !dbg !25547
  %i.l = udiv exact i64 %i.k, 24, !dbg !25547
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  br label %bb.c, !dbg !25548

bb.c:                                             ; preds = %bb.e, %bb.b
  %.val15.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.ac, %bb.e ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.ad, %bb.e ], !dbg !25549 ; 2 uses
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %.sroa.01.0.i, !dbg !25550 ; 2 uses
  %i.p = getelementptr i8, ptr %i.o, i64 8, !dbg !25551
  %.val16.i = load ptr, ptr %i.p, align 8, !dbg !25551, !noalias !25532 ; 2 uses
  %i.q = getelementptr i8, ptr %i.o, i64 16, !dbg !25551
  %.val17.i = load i64, ptr %i.q, align 8, !dbg !25551, !noalias !25532 ; 2 uses
  %i.r = load i64, ptr %i.g, align 8, !dbg !25552, !noalias !25533, !noundef !641
  %i.s = load i64, ptr %i.m, align 8, !dbg !25553, !alias.scope !25534, !noalias !25533, !noundef !641 ; 3 uses
  %i.t = load i64, ptr %i.e, align 8, !dbg !25554, !range !725, !alias.scope !25534, !noalias !25533, !noundef !641
  %i.u = icmp eq i64 %i.s, %i.t, !dbg !25555
  br i1 %i.u, label %bb.d, label %bb.e, !dbg !25555

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecjE8grow_oneCs39HECPMKlmJ_7ndarray(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %bb.e unwind label %bb.f, !dbg !25556, !noalias !25532

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.v = load ptr, ptr %i.n, align 8, !dbg !25557, !alias.scope !25534, !noalias !25533, !nonnull !641, !noundef !641
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.s, !dbg !25558
  store i64 %i.r, ptr %i.w, align 8, !dbg !25559, !noalias !25533
  %i.x = add i64 %i.s, 1, !dbg !25560
  store i64 %i.x, ptr %i.m, align 8, !dbg !25560, !alias.scope !25534, !noalias !25533
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val16.i) ]
  %i.y = load i64, ptr %i.g, align 8, !dbg !25561, !noalias !25533, !noundef !641
  %i.z = add i64 %i.y, %.val17.i, !dbg !25561
  store i64 %i.z, ptr %i.g, align 8, !dbg !25561, !noalias !25533
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %.sroa.8.0.copyload, i64 %.val15.i, !dbg !25562 ; 2 uses
  store ptr %.val16.i, ptr %i.aa, align 8, !dbg !25563, !noalias !25535
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8, !dbg !25563
  store i64 %.val17.i, ptr %i.ab, align 8, !dbg !25563, !noalias !25536
  %i.ac = add i64 %.val15.i, 1, !dbg !25564       ; 2 uses
  %i.ad = add nuw i64 %.sroa.01.0.i, 1, !dbg !25565 ; 2 uses
  %i.ae = icmp eq i64 %i.ad, %i.l, !dbg !25566
  br i1 %i.ae, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterINtNtCsgZ49sUHp3tW_5alloc3vec3VecAmj2_EENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1A_8adapters3map8map_foldRBQ_RSB1n_uNCINvNtNtCs1LHh8CLbVkQ_11polars_core5utils7flatten11flatten_parB1n_BQ_E0NCINvNvB1u_8for_each4callB2S_NCINvMsj_BT_IBR_B2S_E14extend_trustedINtB2k_3MapBF_B2Z_EE0E0E0ECs2Aa799EbAFJ_11polars_time.exit, label %bb.c, !dbg !25566

bb.f:                                             ; preds = %bb.d
  %i.af = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val15.i, ptr %.sroa.0.0.copyload, align 8, !dbg !25567, !noalias !25532
  resume { ptr, i32 } %i.af, !dbg !25568

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterINtNtCsgZ49sUHp3tW_5alloc3vec3VecAmj2_EENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1A_8adapters3map8map_foldRBQ_RSB1n_uNCINvNtNtCs1LHh8CLbVkQ_11polars_core5utils7flatten11flatten_parB1n_BQ_E0NCINvNvB1u_8for_each4callB2S_NCINvMsj_BT_IBR_B2S_E14extend_trustedINtB2k_3MapBF_B2Z_EE0E0E0ECs2Aa799EbAFJ_11polars_time.exit: ; preds = %bb.e, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.ac, %bb.e ], !dbg !25569
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !25569, !noalias !25532
  ret void, !dbg !25570
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs2mZqlW55729_12polars_utils7hashing9BytesHashEENCNvYNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesNtNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join20single_keys_dispatch10SeriesJoin15hash_join_outer0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB5k_8for_each4callRSB1U_NCINvMsj_B1q_IB1o_B6n_E14extend_trustedBN_E0E0ECs2Aa799EbAFJ_11polars_time(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #4 personality ptr @rust_eh_personality !dbg !25571 {
bb.a:
end_hunk_0
