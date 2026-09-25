Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_plan-a78d50bf479d2301.polars_plan.b121b8564f397b47-cgu.14?download=true
inline.NumInlined: 10276
inline.NumDeleted: 5308
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 68
loop-unroll.NumUnrolled: 70
begin_hunk_0_@_RNvXs1h_NtCsgZ49sUHp3tW_5alloc4syncINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters5chain5ChainINtNtBC_6cloned6ClonedINtNtNtBG_5slice4iter4IterNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions4hint6SortedEEINtNtBG_6option8IntoIterB2b_EEINtB6_10ToArcSliceB2b_E12to_arc_sliceB2j_:bb.a

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !123187, !noalias !123177
  invoke void @_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions4hint6SortedEENtNtNtB8_6traits8iterator8Iterator9size_hintB1z_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %0)
          to label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters5chainINtB4_5ChainINtNtB6_6cloned6ClonedINtNtNtBa_5slice4iter4IterNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions4hint6SortedEEINtNtBa_6option8IntoIterB1L_EENtNtNtB8_6traits8iterator8Iterator9size_hintB1T_.exit unwind label %bb.h, !dbg !123188

bb.d:                                             ; preds = %bb.b
  invoke void @_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions4hint6SortedEENtNtNtB8_6traits8iterator8Iterator9size_hintB1z_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %0)
          to label %._RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters5chainINtB4_5ChainINtNtB6_6cloned6ClonedINtNtNtBa_5slice4iter4IterNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions4hint6SortedEEINtNtBa_6option8IntoIterB1L_EENtNtNtB8_6traits8iterator8Iterator9size_hintB1T_.exit_crit_edge unwind label %bb.h, !dbg !123189

._RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters5chainINtB4_5ChainINtNtB6_6cloned6ClonedINtNtNtBa_5slice4iter4IterNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions4hint6SortedEEINtNtBa_6option8IntoIterB1L_EENtNtNtB8_6traits8iterator8Iterator9size_hintB1T_.exit_crit_edge: ; preds = %bb.d
  %.pre = load i64, ptr %i.c, align 8, !dbg !123190
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.pre11 = load i64, ptr %.phi.trans.insert, align 8, !dbg !123191, !range !2317
  %i.g = trunc nuw i64 %.pre11 to i1, !dbg !123186
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !123185
  br i1 %i.g, label %bb.e, label %bb.f, !dbg !123186, !prof !123178

_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters5chainINtB4_5ChainINtNtB6_6cloned6ClonedINtNtNtBa_5slice4iter4IterNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions4hint6SortedEEINtNtBa_6option8IntoIterB1L_EENtNtNtB8_6traits8iterator8Iterator9size_hintB1T_.exit: ; preds = %bb.c
  %i.h = load i64, ptr %i.a, align 8, !dbg !123192, !noalias !123177, !noundef !2315
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !123193
  %i.j = load i64, ptr %i.i, align 8, !dbg !123193, !range !2317, !noalias !123177, !noundef !2315
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !123193
  %i.l = load i64, ptr %i.k, align 8, !dbg !123193, !noalias !123177
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !123194, !noalias !123177
  %i.m = icmp ne i8 %i.f, 3, !dbg !123195
  %i.n = zext i1 %i.m to i64, !dbg !123195        ; 2 uses
  %i.o = call i64 @llvm.uadd.sat.i64(i64 %i.h, i64 %i.n), !dbg !123196
  %i.p = trunc nuw i64 %i.j to i1, !dbg !123197
  %i.q = xor i64 %i.l, -1, !dbg !123197
  %i.r = icmp uge i64 %i.q, %i.n, !dbg !123197
  %narrow.i = select i1 %i.p, i1 %i.r, i1 false, !dbg !123197
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !123185
  br i1 %narrow.i, label %bb.e, label %bb.f, !dbg !123186, !prof !123178

bb.e:                                             ; preds = %._RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters5chainINtB4_5ChainINtNtB6_6cloned6ClonedINtNtNtBa_5slice4iter4IterNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions4hint6SortedEEINtNtBa_6option8IntoIterB1L_EENtNtNtB8_6traits8iterator8Iterator9size_hintB1T_.exit_crit_edge, %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters5chainINtB4_5ChainINtNtB6_6cloned6ClonedINtNtNtBa_5slice4iter4IterNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions4hint6SortedEEINtNtBa_6option8IntoIterB1L_EENtNtNtB8_6traits8iterator8Iterator9size_hintB1T_.exit.thread, %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters5chainINtB4_5ChainINtNtB6_6cloned6ClonedINtNtNtBa_5slice4iter4IterNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions4hint6SortedEEINtNtBa_6option8IntoIterB1L_EENtNtNtB8_6traits8iterator8Iterator9size_hintB1T_.exit
  %i.s = phi i64 [ %.ph, %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters5chainINtB4_5ChainINtNtB6_6cloned6ClonedINtNtNtBa_5slice4iter4IterNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions4hint6SortedEEINtNtBa_6option8IntoIterB1L_EENtNtNtB8_6traits8iterator8Iterator9size_hintB1T_.exit.thread ], [ %i.o, %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters5chainINtB4_5ChainINtNtB6_6cloned6ClonedINtNtNtBa_5slice4iter4IterNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions4hint6SortedEEINtNtBa_6option8IntoIterB1L_EENtNtNtB8_6traits8iterator8Iterator9size_hintB1T_.exit ], [ %.pre, %._RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters5chainINtB4_5ChainINtNtB6_6cloned6ClonedINtNtNtBa_5slice4iter4IterNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions4hint6SortedEEINtNtBa_6option8IntoIterB1L_EENtNtNtB8_6traits8iterator8Iterator9size_hintB1T_.exit_crit_edge ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !123198
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %0, i64 48, i1 false), !dbg !123198
  %i.t = call { ptr, i64 } @_RINvMsq_NtCsgZ49sUHp3tW_5alloc4syncINtB6_3ArcSNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions4hint6SortedE15from_iter_exactINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters5chain5ChainINtNtB26_6cloned6ClonedINtNtNtB2a_5slice4iter4IterBI_EEINtNtB2a_6option8IntoIterBI_EEEBQ_(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.b, i64 noundef %i.s), !dbg !123199
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !123200
  ret { ptr, i64 } %i.t, !dbg !123201

bb.f:                                             ; preds = %._RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters5chainINtB4_5ChainINtNtB6_6cloned6ClonedINtNtNtBa_5slice4iter4IterNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions4hint6SortedEEINtNtBa_6option8IntoIterB1L_EENtNtNtB8_6traits8iterator8Iterator9size_hintB1T_.exit_crit_edge, %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters5chainINtB4_5ChainINtNtB6_6cloned6ClonedINtNtNtBa_5slice4iter4IterNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions4hint6SortedEEINtNtBa_6option8IntoIterB1L_EENtNtNtB8_6traits8iterator8Iterator9size_hintB1T_.exit
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @537, ptr noundef nonnull inttoptr (i64 35 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @539) #48
          to label %bb.g unwind label %bb.h, !dbg !123202

bb.g:                                             ; preds = %bb.f
  unreachable

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters5chain5ChainINtNtBL_6cloned6ClonedINtNtNtB4_5slice4iter4IterNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions4hint6SortedEEINtNtB4_6option8IntoIterB24_EEEB2c_.exit: ; preds = %bb.i, %bb.h, %bb.j
  resume { ptr, i32 } %lpad.thr_comm, !dbg !123203

bb.h:                                             ; preds = %bb.f, %bb.d, %bb.c
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !123204
  %i.v = load i8, ptr %i.e, align 1, !dbg !123205, !range !2775, !alias.scope !123179, !noundef !2315 ; 2 uses
  %i.w = icmp eq i8 %i.v, 4, !dbg !123205
  br i1 %i.w, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters5chain5ChainINtNtBL_6cloned6ClonedINtNtNtB4_5slice4iter4IterNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions4hint6SortedEEINtNtB4_6option8IntoIterB24_EEEB2c_.exit, label %bb.i, !dbg !123205

bb.i:                                             ; preds = %bb.h
  %i.x = icmp ne i8 %i.v, 3, !dbg !123206
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 39
  %i.z = load i8, ptr %i.y, align 1, !range !2517, !alias.scope !123180
  %i.aa = icmp eq i8 %i.z, -40
  %or.cond.i.i.i.i.i = select i1 %i.x, i1 %i.aa, i1 false, !dbg !123206, !prof !2759
  br i1 %or.cond.i.i.i.i.i, label %bb.j, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters5chain5ChainINtNtBL_6cloned6ClonedINtNtNtB4_5slice4iter4IterNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions4hint6SortedEEINtNtB4_6option8IntoIterB24_EEEB2c_.exit, !dbg !123206, !prof !2759

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.u)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters5chain5ChainINtNtBL_6cloned6ClonedINtNtNtB4_5slice4iter4IterNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions4hint6SortedEEINtNtB4_6option8IntoIterB24_EEEB2c_.exit unwind label %bb.k, !dbg !123207

bb.k:                                             ; preds = %bb.j
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #47, !dbg !123203
  unreachable, !dbg !123203
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1i_NtCscgRAwXFJnXP_4core3fmtRNtCsgjwxzEoLG5s_12polars_error11PolarsErrorNtB6_7Display3fmtCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !dbg !123208 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !123209, !nonnull !2315, !align !2417, !noundef !2315
  %i.b = tail call noundef zeroext i1 @_RNvXs4_CsgjwxzEoLG5s_12polars_errorNtB5_11PolarsErrorNtNtCscgRAwXFJnXP_4core3fmt7Display3fmt(ptr noundef nonnull align 8 %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !dbg !123210
  ret i1 %i.b, !dbg !123211
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1i_NtCscgRAwXFJnXP_4core3fmtRNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13function_expr7boolean15BooleanFunctionNtB6_7Display3fmtBE_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 !dbg !123212 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !123213, !nonnull !2315, !align !2417, !noundef !2315
  %i.b = tail call noundef zeroext i1 @_RNvXNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13function_expr7booleanNtB2_15BooleanFunctionNtNtCscgRAwXFJnXP_4core3fmt7Display3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !dbg !123214
  ret i1 %i.b, !dbg !123215
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1i_NtCscgRAwXFJnXP_4core3fmtRNtNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr13function_expr12trigonometry23IRTrigonometricFunctionNtB6_7Display3fmtBG_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 !dbg !123216 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !123217, !nonnull !2315, !noundef !2315
  %i.b = tail call noundef zeroext i1 @_RNvXNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr13function_expr12trigonometryNtB2_23IRTrigonometricFunctionNtNtCscgRAwXFJnXP_4core3fmt7Display3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !dbg !123218
  ret i1 %i.b, !dbg !123219
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1i_NtCscgRAwXFJnXP_4core3fmtRNtNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr13function_expr4list14IRListFunctionNtB6_7Display3fmtBG_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 !dbg !123220 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !123221, !nonnull !2315, !align !2417, !noundef !2315
  %i.b = tail call noundef zeroext i1 @_RNvXs0_NtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr13function_expr4listNtB5_14IRListFunctionNtNtCscgRAwXFJnXP_4core3fmt7Display3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !dbg !123222
  ret i1 %i.b, !dbg !123223
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1i_NtCscgRAwXFJnXP_4core3fmtRNtNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr13function_expr9extension19IRExtensionFunctionNtB6_7Display3fmtBG_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 !dbg !123224 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !dbg !123235, !nonnull !2315, !align !3101, !noundef !2315 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !123231), !dbg !123236
  tail call void @llvm.experimental.noalias.scope.decl(metadata !123232), !dbg !123236
  %i.d = load i8, ptr %i.c, align 16, !dbg !123237, !range !2325, !alias.scope !123231, !noalias !123232, !noundef !2315
  %i.e = icmp eq i8 %i.d, 31, !dbg !123237
  br i1 %i.e, label %bb.c, label %bb.b, !dbg !123238

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !123239, !noalias !123233
  store ptr %i.c, ptr %i.b, align 8, !dbg !123239, !noalias !123233
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !123240, !noalias !123233
  store ptr %i.b, ptr %i.a, align 8, !dbg !123240, !noalias !123233
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !123240
  store ptr @_RNvXs1g_NtCscgRAwXFJnXP_4core3fmtRNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeNtB6_5Debug3fmtCsfcROwRM8ZtH_11polars_plan, ptr %.sroa.43.0..sroa_idx.i, align 8, !dbg !123240, !noalias !123233
  %i.f = load ptr, ptr %1, align 8, !dbg !123241, !alias.scope !123232, !noalias !123231, !nonnull !2315, !noundef !2315
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !123241
  %i.h = load ptr, ptr %i.g, align 8, !dbg !123241, !alias.scope !123232, !noalias !123231, !nonnull !2315, !align !2417, !noundef !2315
  %i.i = call noundef zeroext i1 @_RNvNtCscgRAwXFJnXP_4core3fmt5write(ptr noundef nonnull %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.h, ptr noundef nonnull @568, ptr noundef nonnull %i.a), !dbg !123242, !noalias !123232
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !123243, !noalias !123233
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !123243, !noalias !123233
  br label %_RNvXs_NtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr13function_expr9extensionNtB4_19IRExtensionFunctionNtNtCscgRAwXFJnXP_4core3fmt7Display3fmt.exit, !dbg !123243

bb.c:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %1, align 8, !dbg !123244, !alias.scope !123232, !noalias !123231, !nonnull !2315, !noundef !2315
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !123244
  %i.l = load ptr, ptr %i.k, align 8, !dbg !123244, !alias.scope !123232, !noalias !123231, !nonnull !2315, !align !2417, !noundef !2315
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24, !dbg !123244
  %i.n = load ptr, ptr %i.m, align 8, !dbg !123244, !invariant.load !2315, !noalias !123233, !nonnull !2315
  %i.o = tail call noundef zeroext i1 %i.n(ptr noundef nonnull %i.j, ptr noalias noundef nonnull readonly captures(address, read_provenance) @569, i64 noundef 13) #51, !dbg !123245, !noalias !123233, !inline_history !123234
  br label %_RNvXs_NtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr13function_expr9extensionNtB4_19IRExtensionFunctionNtNtCscgRAwXFJnXP_4core3fmt7Display3fmt.exit, !dbg !123246

_RNvXs_NtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr13function_expr9extensionNtB4_19IRExtensionFunctionNtNtCscgRAwXFJnXP_4core3fmt7Display3fmt.exit: ; preds = %bb.b, %bb.c
  %.sroa.0.1.in.i = phi i1 [ %i.o, %bb.c ], [ %i.i, %bb.b ]
  ret i1 %.sroa.0.1.in.i, !dbg !123247
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs2_NtNtCse4dvU5uQ85g_8indexmap3map4iterINtB5_4IterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator9size_hintCsfcROwRM8ZtH_11polars_plan(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #17 !dbg !123248 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !123261
  %i.b = load ptr, ptr %i.a, align 8, !dbg !123261, !nonnull !2315, !noundef !2315
  %i.c = load ptr, ptr %1, align 8, !dbg !123262, !nonnull !2315, !noundef !2315
  %i.d = ptrtoint ptr %i.b to i64, !dbg !123263
  %i.e = ptrtoint ptr %i.c to i64, !dbg !123263
  %i.f = sub nuw i64 %i.d, %i.e, !dbg !123263
  %i.g = udiv exact i64 %i.f, 80, !dbg !123263    ; 2 uses
  store i64 %i.g, ptr %0, align 8, !dbg !123264
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !123264
  store i64 1, ptr %i.h, align 8, !dbg !123264
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !123264
  store i64 %i.g, ptr %i.i, align 8, !dbg !123264
  ret void, !dbg !123265
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs2_NtNtCse4dvU5uQ85g_8indexmap3map4iterINtB5_4IterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator9size_hintCsfcROwRM8ZtH_11polars_plan(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #17 !dbg !123266 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !123279
  %i.b = load ptr, ptr %i.a, align 8, !dbg !123279, !nonnull !2315, !noundef !2315
  %i.c = load ptr, ptr %1, align 8, !dbg !123280, !nonnull !2315, !noundef !2315
  %i.d = ptrtoint ptr %i.b to i64, !dbg !123281
  %i.e = ptrtoint ptr %i.c to i64, !dbg !123281
  %i.f = sub nuw i64 %i.d, %i.e, !dbg !123281
  %i.g = udiv exact i64 %i.f, 104, !dbg !123281   ; 2 uses
  store i64 %i.g, ptr %0, align 8, !dbg !123282
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !123282
  store i64 1, ptr %i.h, align 8, !dbg !123282
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !123282
  store i64 %i.g, ptr %i.i, align 8, !dbg !123282
  ret void, !dbg !123283
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden { ptr, ptr } @_RNvXs2_NtNtCse4dvU5uQ85g_8indexmap3map4iterINtB5_4IterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIRENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator3nthB1L_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef %1) unnamed_addr #17 !dbg !123284 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !123301
  %i.b = load ptr, ptr %i.a, align 8, !dbg !123301, !alias.scope !123299, !nonnull !2315, !noundef !2315 ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !dbg !123302, !alias.scope !123299, !nonnull !2315, !noundef !2315 ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64, !dbg !123303
  %i.e = ptrtoint ptr %i.c to i64, !dbg !123303
  %i.f = sub nuw i64 %i.d, %i.e, !dbg !123303
  %i.g = udiv exact i64 %i.f, 144, !dbg !123303
  %.not.i.not = icmp ult i64 %1, %i.g, !dbg !123304 ; 3 uses
  %i.h = getelementptr inbounds nuw [144 x i8], ptr %i.c, i64 %1, !dbg !123304 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 144, !dbg !123304
  %storemerge.i = select i1 %.not.i.not, ptr %i.i, ptr %i.b, !dbg !123304
  %.sroa.0.0.i = select i1 %.not.i.not, ptr %i.h, ptr null, !dbg !123304
  store ptr %storemerge.i, ptr %0, align 8, !dbg !123305, !alias.scope !123299
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 112, !dbg !123306
  %.sroa.0.0 = select i1 %.not.i.not, ptr %i.j, ptr null, !dbg !123306
  %i.k = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0, !dbg !123307
  %i.l = insertvalue { ptr, ptr } %i.k, ptr %.sroa.0.0.i, 1, !dbg !123307
  ret { ptr, ptr } %i.l, !dbg !123307
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs2_NtNtCse4dvU5uQ85g_8indexmap3map4iterINtB5_4IterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIRENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator9size_hintB1L_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #17 !dbg !123308 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !123321
  %i.b = load ptr, ptr %i.a, align 8, !dbg !123321, !nonnull !2315, !noundef !2315
  %i.c = load ptr, ptr %1, align 8, !dbg !123322, !nonnull !2315, !noundef !2315
  %i.d = ptrtoint ptr %i.b to i64, !dbg !123323
  %i.e = ptrtoint ptr %i.c to i64, !dbg !123323
  %i.f = sub nuw i64 %i.d, %i.e, !dbg !123323
  %i.g = udiv exact i64 %i.f, 144, !dbg !123323   ; 2 uses
  store i64 %i.g, ptr %0, align 8, !dbg !123324
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !123324
  store i64 1, ptr %i.h, align 8, !dbg !123324
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !123324
  store i64 %i.g, ptr %i.i, align 8, !dbg !123324
  ret void, !dbg !123325
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs2_NtNtCse4dvU5uQ85g_8indexmap3map4iterINtB5_4IterRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrRNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator9size_hintCsfcROwRM8ZtH_11polars_plan(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #17 !dbg !123326 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !123339
  %i.b = load ptr, ptr %i.a, align 8, !dbg !123339, !nonnull !2315, !noundef !2315
  %i.c = load ptr, ptr %1, align 8, !dbg !123340, !nonnull !2315, !noundef !2315
  %i.d = ptrtoint ptr %i.b to i64, !dbg !123341
  %i.e = ptrtoint ptr %i.c to i64, !dbg !123341
  %i.f = sub nuw i64 %i.d, %i.e, !dbg !123341
  %i.g = udiv exact i64 %i.f, 24, !dbg !123341    ; 2 uses
  store i64 %i.g, ptr %0, align 8, !dbg !123342
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !123342
  store i64 1, ptr %i.h, align 8, !dbg !123342
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !123342
  store i64 %i.g, ptr %i.i, align 8, !dbg !123342
  ret void, !dbg !123343
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs2_NtNtCse4dvU5uQ85g_8indexmap3map4iterINtB5_4IterjINtNtCsgZ49sUHp3tW_5alloc4sync3ArcSNtNtBW_6string6StringEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator9size_hintCsfcROwRM8ZtH_11polars_plan(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #17 !dbg !123344 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !123357
  %i.b = load ptr, ptr %i.a, align 8, !dbg !123357, !nonnull !2315, !noundef !2315
  %i.c = load ptr, ptr %1, align 8, !dbg !123358, !nonnull !2315, !noundef !2315
  %i.d = ptrtoint ptr %i.b to i64, !dbg !123359
  %i.e = ptrtoint ptr %i.c to i64, !dbg !123359
  %i.f = sub nuw i64 %i.d, %i.e, !dbg !123359
  %i.g = lshr exact i64 %i.f, 5, !dbg !123359     ; 2 uses
  store i64 %i.g, ptr %0, align 8, !dbg !123360
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !123360
  store i64 1, ptr %i.h, align 8, !dbg !123360
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !123360
  store i64 %i.g, ptr %i.i, align 8, !dbg !123360
  ret void, !dbg !123361
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs2_NtNtCse4dvU5uQ85g_8indexmap3map4iterINtB5_4ItermINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNtNtCsgZ49sUHp3tW_5alloc6string6StringEENtNtNtNtBW_4iter6traits8iterator8Iterator9size_hintCsfcROwRM8ZtH_11polars_plan(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #17 !dbg !123362 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !123375
  %i.b = load ptr, ptr %i.a, align 8, !dbg !123375, !nonnull !2315, !noundef !2315
  %i.c = load ptr, ptr %1, align 8, !dbg !123376, !nonnull !2315, !noundef !2315
  %i.d = ptrtoint ptr %i.b to i64, !dbg !123377
  %i.e = ptrtoint ptr %i.c to i64, !dbg !123377
  %i.f = sub nuw i64 %i.d, %i.e, !dbg !123377
  %i.g = udiv exact i64 %i.f, 176, !dbg !123377   ; 2 uses
  store i64 %i.g, ptr %0, align 8, !dbg !123378
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !123378
  store i64 1, ptr %i.h, align 8, !dbg !123378
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !123378
  store i64 %i.g, ptr %i.i, align 8, !dbg !123378
  ret void, !dbg !123379
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs2_NtNtCse4dvU5uQ85g_8indexmap3map4iterINtB5_4ItermNtNtCs1LHh8CLbVkQ_11polars_core6scalar6ScalarENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator9size_hintCsfcROwRM8ZtH_11polars_plan(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #17 !dbg !123380 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !123393
  %i.b = load ptr, ptr %i.a, align 8, !dbg !123393, !nonnull !2315, !noundef !2315
  %i.c = load ptr, ptr %1, align 8, !dbg !123394, !nonnull !2315, !noundef !2315
  %i.d = ptrtoint ptr %i.b to i64, !dbg !123395
  %i.e = ptrtoint ptr %i.c to i64, !dbg !123395
  %i.f = sub nuw i64 %i.d, %i.e, !dbg !123395
  %i.g = udiv exact i64 %i.f, 112, !dbg !123395   ; 2 uses
  store i64 %i.g, ptr %0, align 8, !dbg !123396
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !123396
  store i64 1, ptr %i.h, align 8, !dbg !123396
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !123396
  store i64 %i.g, ptr %i.i, align 8, !dbg !123396
  ret void, !dbg !123397
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs2_NtNtCse4dvU5uQ85g_8indexmap3map4iterINtB5_4ItermNtNtNtCs1LHh8CLbVkQ_11polars_core6schema7iceberg13IcebergColumnENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator9size_hintCsfcROwRM8ZtH_11polars_plan(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #17 !dbg !123398 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !123411
  %i.b = load ptr, ptr %i.a, align 8, !dbg !123411, !nonnull !2315, !noundef !2315
  %i.c = load ptr, ptr %1, align 8, !dbg !123412, !nonnull !2315, !noundef !2315
  %i.d = ptrtoint ptr %i.b to i64, !dbg !123413
  %i.e = ptrtoint ptr %i.c to i64, !dbg !123413
  %i.f = sub nuw i64 %i.d, %i.e, !dbg !123413
  %i.g = udiv exact i64 %i.f, 112, !dbg !123413   ; 2 uses
  store i64 %i.g, ptr %0, align 8, !dbg !123414
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !123414
  store i64 1, ptr %i.h, align 8, !dbg !123414
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !123414
  store i64 %i.g, ptr %i.i, align 8, !dbg !123414
  ret void, !dbg !123415
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef range(i8 -1, 2) i8 @_RNvXs2_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNvYjNtNtBb_3cmp3Ord3cmpINtB7_6FnOnceTRjB1p_EE9call_onceCsfcROwRM8ZtH_11polars_plan(ptr noalias nofree noundef nonnull readnone captures(none) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %2) unnamed_addr #20 !dbg !123416 {
bb.a:
  %.val = load i64, ptr %1, align 8, !dbg !123420, !noundef !2315
  %.val1 = load i64, ptr %2, align 8, !dbg !123420, !noundef !2315
  %i.a = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 %.val, i64 %.val1), !dbg !123421
  ret i8 %i.a, !dbg !123422
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef i64 @_RNvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCNCNvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir5scans13csv_file_info0s2_0ENtNtNtB9_6traits10exact_size17ExactSizeIterator3lenB1C_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %0) unnamed_addr #20 !dbg !123423 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !123426
  %.val = load i64, ptr %i.a, align 8, !dbg !123427, !alias.scope !3595, !noalias !3596, !noundef !2315
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !123427
  %.val1 = load i64, ptr %i.b, align 8, !dbg !123427, !alias.scope !3596, !noalias !3595, !noundef !2315
  %spec.select.i.i = tail call noundef i64 @llvm.usub.sat.i64(i64 %.val1, i64 %.val), !dbg !123428
  ret i64 %spec.select.i.i, !dbg !123429
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_RNvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCNCNvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir5scans13csv_file_info0s2_0ENtNtNtB9_6traits10exact_size17ExactSizeIterator8is_emptyB1C_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %0) unnamed_addr #20 !dbg !123430 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !123432
  %.val = load i64, ptr %i.a, align 8, !dbg !123433, !alias.scope !3595, !noalias !3596, !noundef !2315
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !123433
  %.val1 = load i64, ptr %i.b, align 8, !dbg !123433, !alias.scope !3596, !noalias !3595, !noundef !2315
  %i.c = icmp ule i64 %.val1, %.val, !dbg !123434
  ret i1 %i.c, !dbg !123435
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef i64 @_RNvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCNCNvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir5scans16ndjson_file_info0s1_0ENtNtNtB9_6traits10exact_size17ExactSizeIterator3lenB1C_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %0) unnamed_addr #20 !dbg !123436 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !123439
  %.val = load i64, ptr %i.a, align 8, !dbg !123440, !alias.scope !3595, !noalias !3596, !noundef !2315
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !123440
  %.val1 = load i64, ptr %i.b, align 8, !dbg !123440, !alias.scope !3596, !noalias !3595, !noundef !2315
  %spec.select.i.i = tail call noundef i64 @llvm.usub.sat.i64(i64 %.val1, i64 %.val), !dbg !123441
  ret i64 %spec.select.i.i, !dbg !123442
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_RNvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCNCNvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir5scans16ndjson_file_info0s1_0ENtNtNtB9_6traits10exact_size17ExactSizeIterator8is_emptyB1C_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %0) unnamed_addr #20 !dbg !123443 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !123445
  %.val = load i64, ptr %i.a, align 8, !dbg !123446, !alias.scope !3595, !noalias !3596, !noundef !2315
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !123446
  %.val1 = load i64, ptr %i.b, align 8, !dbg !123446, !alias.scope !3596, !noalias !3595, !noundef !2315
  %i.c = icmp ule i64 %.val1, %.val, !dbg !123447
  ret i1 %i.c, !dbg !123448
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef i64 @_RNvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCNvNtNtCslpwjCj2YNBy_9polars_io5cloud19polars_object_store11split_ranges_0ENtNtNtB9_6traits10exact_size17ExactSizeIterator3lenCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %0) unnamed_addr #20 !dbg !123449 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !123452
  %.val = load i64, ptr %i.a, align 8, !dbg !123453, !alias.scope !3595, !noalias !3596, !noundef !2315
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !123453
  %.val1 = load i64, ptr %i.b, align 8, !dbg !123453, !alias.scope !3596, !noalias !3595, !noundef !2315
  %spec.select.i.i = tail call noundef i64 @llvm.usub.sat.i64(i64 %.val1, i64 %.val), !dbg !123454
  ret i64 %spec.select.i.i, !dbg !123455
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef i64 @_RNvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions5count18count_all_rows_csvs_0ENtNtNtB9_6traits10exact_size17ExactSizeIterator3lenB1y_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %0) unnamed_addr #20 !dbg !123456 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !123459
  %.val = load i64, ptr %i.a, align 8, !dbg !123460, !alias.scope !3595, !noalias !3596, !noundef !2315
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !123460
  %.val1 = load i64, ptr %i.b, align 8, !dbg !123460, !alias.scope !3596, !noalias !3595, !noundef !2315
  %spec.select.i.i = tail call noundef i64 @llvm.usub.sat.i64(i64 %.val1, i64 %.val), !dbg !123461
  ret i64 %spec.select.i.i, !dbg !123462
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_RNvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions5count18count_all_rows_csvs_0ENtNtNtB9_6traits10exact_size17ExactSizeIterator8is_emptyB1y_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %0) unnamed_addr #20 !dbg !123463 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !123465
  %.val = load i64, ptr %i.a, align 8, !dbg !123466, !alias.scope !3595, !noalias !3596, !noundef !2315
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !123466
  %.val1 = load i64, ptr %i.b, align 8, !dbg !123466, !alias.scope !3596, !noalias !3595, !noundef !2315
  %i.c = icmp ule i64 %.val1, %.val, !dbg !123467
  ret i1 %i.c, !dbg !123468
}

end_hunk_0
