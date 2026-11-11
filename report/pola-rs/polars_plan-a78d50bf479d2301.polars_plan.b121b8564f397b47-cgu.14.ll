Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_plan-a78d50bf479d2301.polars_plan.b121b8564f397b47-cgu.14?download=true
inline.NumInlined: 10276
inline.NumDeleted: 5308
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 68
loop-unroll.NumUnrolled: 70
begin_hunk_0_@_RNvXs1h_NtCsgZ49sUHp3tW_5alloc4syncINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters5chain5ChainINtNtBC_6cloned6ClonedINtNtNtBG_5slice4iter4IterNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions4hint6SortedEEINtNtBG_6option8IntoIterB2b_EEINtB6_10ToArcSliceB2b_E12to_arc_sliceB2j_:bb.a

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !123524, !noalias !123514
  invoke void @_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions4hint6SortedEENtNtNtB8_6traits8iterator8Iterator9size_hintB1z_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %0)
          to label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters5chainINtB4_5ChainINtNtB6_6cloned6ClonedINtNtNtBa_5slice4iter4IterNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions4hint6SortedEEINtNtBa_6option8IntoIterB1L_EENtNtNtB8_6traits8iterator8Iterator9size_hintB1T_.exit unwind label %bb.h, !dbg !123525

bb.d:                                             ; preds = %bb.b
  invoke void @_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions4hint6SortedEENtNtNtB8_6traits8iterator8Iterator9size_hintB1z_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %0)
          to label %._RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters5chainINtB4_5ChainINtNtB6_6cloned6ClonedINtNtNtBa_5slice4iter4IterNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions4hint6SortedEEINtNtBa_6option8IntoIterB1L_EENtNtNtB8_6traits8iterator8Iterator9size_hintB1T_.exit_crit_edge unwind label %bb.h, !dbg !123526

._RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters5chainINtB4_5ChainINtNtB6_6cloned6ClonedINtNtNtBa_5slice4iter4IterNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions4hint6SortedEEINtNtBa_6option8IntoIterB1L_EENtNtNtB8_6traits8iterator8Iterator9size_hintB1T_.exit_crit_edge: ; preds = %bb.d
  %.pre = load i64, ptr %i.c, align 8, !dbg !123527
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.pre11 = load i64, ptr %.phi.trans.insert, align 8, !dbg !123528, !range !2319
  %i.g = trunc nuw i64 %.pre11 to i1, !dbg !123523
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !123522
  br i1 %i.g, label %bb.e, label %bb.f, !dbg !123523, !prof !123515

_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters5chainINtB4_5ChainINtNtB6_6cloned6ClonedINtNtNtBa_5slice4iter4IterNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions4hint6SortedEEINtNtBa_6option8IntoIterB1L_EENtNtNtB8_6traits8iterator8Iterator9size_hintB1T_.exit: ; preds = %bb.c
  %i.h = load i64, ptr %i.a, align 8, !dbg !123529, !noalias !123514, !noundef !2317
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !123530
  %i.j = load i64, ptr %i.i, align 8, !dbg !123530, !range !2319, !noalias !123514, !noundef !2317
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !123530
  %i.l = load i64, ptr %i.k, align 8, !dbg !123530, !noalias !123514
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !123531, !noalias !123514
  %i.m = icmp ne i8 %i.f, 3, !dbg !123532
  %i.n = zext i1 %i.m to i64, !dbg !123532        ; 2 uses
  %i.o = call i64 @llvm.uadd.sat.i64(i64 %i.h, i64 %i.n), !dbg !123533
  %i.p = trunc nuw i64 %i.j to i1, !dbg !123534
  %i.q = xor i64 %i.l, -1, !dbg !123534
  %i.r = icmp uge i64 %i.q, %i.n, !dbg !123534
  %narrow.i = select i1 %i.p, i1 %i.r, i1 false, !dbg !123534
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !123522
  br i1 %narrow.i, label %bb.e, label %bb.f, !dbg !123523, !prof !123515

bb.e:                                             ; preds = %._RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters5chainINtB4_5ChainINtNtB6_6cloned6ClonedINtNtNtBa_5slice4iter4IterNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions4hint6SortedEEINtNtBa_6option8IntoIterB1L_EENtNtNtB8_6traits8iterator8Iterator9size_hintB1T_.exit_crit_edge, %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters5chainINtB4_5ChainINtNtB6_6cloned6ClonedINtNtNtBa_5slice4iter4IterNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions4hint6SortedEEINtNtBa_6option8IntoIterB1L_EENtNtNtB8_6traits8iterator8Iterator9size_hintB1T_.exit.thread, %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters5chainINtB4_5ChainINtNtB6_6cloned6ClonedINtNtNtBa_5slice4iter4IterNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions4hint6SortedEEINtNtBa_6option8IntoIterB1L_EENtNtNtB8_6traits8iterator8Iterator9size_hintB1T_.exit
  %i.s = phi i64 [ %.ph, %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters5chainINtB4_5ChainINtNtB6_6cloned6ClonedINtNtNtBa_5slice4iter4IterNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions4hint6SortedEEINtNtBa_6option8IntoIterB1L_EENtNtNtB8_6traits8iterator8Iterator9size_hintB1T_.exit.thread ], [ %i.o, %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters5chainINtB4_5ChainINtNtB6_6cloned6ClonedINtNtNtBa_5slice4iter4IterNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions4hint6SortedEEINtNtBa_6option8IntoIterB1L_EENtNtNtB8_6traits8iterator8Iterator9size_hintB1T_.exit ], [ %.pre, %._RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters5chainINtB4_5ChainINtNtB6_6cloned6ClonedINtNtNtBa_5slice4iter4IterNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions4hint6SortedEEINtNtBa_6option8IntoIterB1L_EENtNtNtB8_6traits8iterator8Iterator9size_hintB1T_.exit_crit_edge ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !123535
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %0, i64 48, i1 false), !dbg !123535
  %i.t = call { ptr, i64 } @_RINvMsq_NtCsgZ49sUHp3tW_5alloc4syncINtB6_3ArcSNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions4hint6SortedE15from_iter_exactINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters5chain5ChainINtNtB26_6cloned6ClonedINtNtNtB2a_5slice4iter4IterBI_EEINtNtB2a_6option8IntoIterBI_EEEBQ_(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.b, i64 noundef %i.s), !dbg !123536
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !123537
  ret { ptr, i64 } %i.t, !dbg !123538

bb.f:                                             ; preds = %._RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters5chainINtB4_5ChainINtNtB6_6cloned6ClonedINtNtNtBa_5slice4iter4IterNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions4hint6SortedEEINtNtBa_6option8IntoIterB1L_EENtNtNtB8_6traits8iterator8Iterator9size_hintB1T_.exit_crit_edge, %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters5chainINtB4_5ChainINtNtB6_6cloned6ClonedINtNtNtBa_5slice4iter4IterNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions4hint6SortedEEINtNtBa_6option8IntoIterB1L_EENtNtNtB8_6traits8iterator8Iterator9size_hintB1T_.exit
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @537, ptr noundef nonnull inttoptr (i64 35 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @539) #48
          to label %bb.g unwind label %bb.h, !dbg !123539

bb.g:                                             ; preds = %bb.f
  unreachable

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters5chain5ChainINtNtBL_6cloned6ClonedINtNtNtB4_5slice4iter4IterNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions4hint6SortedEEINtNtB4_6option8IntoIterB24_EEEB2c_.exit: ; preds = %bb.i, %bb.h, %bb.j
  resume { ptr, i32 } %lpad.thr_comm, !dbg !123540

bb.h:                                             ; preds = %bb.f, %bb.d, %bb.c
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !123541
  %i.v = load i8, ptr %i.e, align 1, !dbg !123542, !range !2777, !alias.scope !123516, !noundef !2317 ; 2 uses
  %i.w = icmp eq i8 %i.v, 4, !dbg !123542
  br i1 %i.w, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters5chain5ChainINtNtBL_6cloned6ClonedINtNtNtB4_5slice4iter4IterNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions4hint6SortedEEINtNtB4_6option8IntoIterB24_EEEB2c_.exit, label %bb.i, !dbg !123542

bb.i:                                             ; preds = %bb.h
  %i.x = icmp ne i8 %i.v, 3, !dbg !123543
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 39
  %i.z = load i8, ptr %i.y, align 1, !range !2519, !alias.scope !123517
  %i.aa = icmp eq i8 %i.z, -40
  %or.cond.i.i.i.i.i = select i1 %i.x, i1 %i.aa, i1 false, !dbg !123543, !prof !2761
  br i1 %or.cond.i.i.i.i.i, label %bb.j, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters5chain5ChainINtNtBL_6cloned6ClonedINtNtNtB4_5slice4iter4IterNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions4hint6SortedEEINtNtB4_6option8IntoIterB24_EEEB2c_.exit, !dbg !123543, !prof !2761

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.u)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters5chain5ChainINtNtBL_6cloned6ClonedINtNtNtB4_5slice4iter4IterNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions4hint6SortedEEINtNtB4_6option8IntoIterB24_EEEB2c_.exit unwind label %bb.k, !dbg !123544

bb.k:                                             ; preds = %bb.j
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #47, !dbg !123540
  unreachable, !dbg !123540
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1i_NtCscgRAwXFJnXP_4core3fmtRNtCsgjwxzEoLG5s_12polars_error11PolarsErrorNtB6_7Display3fmtCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !dbg !123545 !guid !123546 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !123547, !nonnull !2317, !align !2419, !noundef !2317
  %i.b = tail call noundef zeroext i1 @_RNvXs4_CsgjwxzEoLG5s_12polars_errorNtB5_11PolarsErrorNtNtCscgRAwXFJnXP_4core3fmt7Display3fmt(ptr noundef nonnull align 8 %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !dbg !123548
  ret i1 %i.b, !dbg !123549
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1i_NtCscgRAwXFJnXP_4core3fmtRNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13function_expr7boolean15BooleanFunctionNtB6_7Display3fmtBE_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 !dbg !123550 !guid !123551 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !123552, !nonnull !2317, !align !2419, !noundef !2317
  %i.b = tail call noundef zeroext i1 @_RNvXNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13function_expr7booleanNtB2_15BooleanFunctionNtNtCscgRAwXFJnXP_4core3fmt7Display3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !dbg !123553
  ret i1 %i.b, !dbg !123554
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1i_NtCscgRAwXFJnXP_4core3fmtRNtNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr13function_expr12trigonometry23IRTrigonometricFunctionNtB6_7Display3fmtBG_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 !dbg !123555 !guid !123556 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !123557, !nonnull !2317, !noundef !2317
  %i.b = tail call noundef zeroext i1 @_RNvXNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr13function_expr12trigonometryNtB2_23IRTrigonometricFunctionNtNtCscgRAwXFJnXP_4core3fmt7Display3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !dbg !123558
  ret i1 %i.b, !dbg !123559
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1i_NtCscgRAwXFJnXP_4core3fmtRNtNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr13function_expr4list14IRListFunctionNtB6_7Display3fmtBG_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 !dbg !123560 !guid !123561 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !123562, !nonnull !2317, !align !2419, !noundef !2317
  %i.b = tail call noundef zeroext i1 @_RNvXs0_NtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr13function_expr4listNtB5_14IRListFunctionNtNtCscgRAwXFJnXP_4core3fmt7Display3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !dbg !123563
  ret i1 %i.b, !dbg !123564
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1i_NtCscgRAwXFJnXP_4core3fmtRNtNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr13function_expr9extension19IRExtensionFunctionNtB6_7Display3fmtBG_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 !dbg !123565 !guid !123572 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !dbg !123577, !nonnull !2317, !align !3103, !noundef !2317 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !123573), !dbg !123578
  tail call void @llvm.experimental.noalias.scope.decl(metadata !123574), !dbg !123578
  %i.d = load i8, ptr %i.c, align 16, !dbg !123579, !range !2327, !alias.scope !123573, !noundef !2317
  %i.e = icmp eq i8 %i.d, 31, !dbg !123579
  br i1 %i.e, label %bb.c, label %bb.b, !dbg !123580

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !123581, !noalias !123575
  store ptr %i.c, ptr %i.b, align 8, !dbg !123581, !noalias !123575
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !123582, !noalias !123575
  store ptr %i.b, ptr %i.a, align 8, !dbg !123582, !noalias !123575
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !123582
  store ptr @_RNvXs1g_NtCscgRAwXFJnXP_4core3fmtRNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeNtB6_5Debug3fmtCsfcROwRM8ZtH_11polars_plan, ptr %.sroa.43.0..sroa_idx.i, align 8, !dbg !123582, !noalias !123575
  %i.f = load ptr, ptr %1, align 8, !dbg !123583, !alias.scope !123574, !nonnull !2317, !noundef !2317
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !123583
  %i.h = load ptr, ptr %i.g, align 8, !dbg !123583, !alias.scope !123574, !nonnull !2317, !align !2419, !noundef !2317
  %i.i = call noundef zeroext i1 @_RNvNtCscgRAwXFJnXP_4core3fmt5write(ptr noundef nonnull %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.h, ptr noundef nonnull @568, ptr noundef nonnull %i.a), !dbg !123584, !noalias !123574
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !123585, !noalias !123575
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !123585, !noalias !123575
  br label %_RNvXs_NtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr13function_expr9extensionNtB4_19IRExtensionFunctionNtNtCscgRAwXFJnXP_4core3fmt7Display3fmt.exit, !dbg !123585

bb.c:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %1, align 8, !dbg !123586, !alias.scope !123574, !nonnull !2317, !noundef !2317
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !123586
  %i.l = load ptr, ptr %i.k, align 8, !dbg !123586, !alias.scope !123574, !nonnull !2317, !align !2419, !noundef !2317
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24, !dbg !123586
  %i.n = load ptr, ptr %i.m, align 8, !dbg !123586, !invariant.load !2317, !noalias !123575, !nonnull !2317
  %i.o = tail call noundef zeroext i1 %i.n(ptr noundef nonnull %i.j, ptr noalias noundef nonnull readonly captures(address, read_provenance) @569, i64 noundef 13) #51, !dbg !123587, !noalias !123575, !inline_history !123576
  br label %_RNvXs_NtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr13function_expr9extensionNtB4_19IRExtensionFunctionNtNtCscgRAwXFJnXP_4core3fmt7Display3fmt.exit, !dbg !123588

_RNvXs_NtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr13function_expr9extensionNtB4_19IRExtensionFunctionNtNtCscgRAwXFJnXP_4core3fmt7Display3fmt.exit: ; preds = %bb.b, %bb.c
  %.sroa.0.1.in.i = phi i1 [ %i.o, %bb.c ], [ %i.i, %bb.b ]
  ret i1 %.sroa.0.1.in.i, !dbg !123589
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs2_NtNtCse4dvU5uQ85g_8indexmap3map4iterINtB5_4IterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator9size_hintCsfcROwRM8ZtH_11polars_plan(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #17 !dbg !123590 !guid !123599 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !123604
  %i.b = load ptr, ptr %i.a, align 8, !dbg !123604, !nonnull !2317, !noundef !2317
  %i.c = load ptr, ptr %1, align 8, !dbg !123605, !nonnull !2317, !noundef !2317
  %i.d = ptrtoint ptr %i.b to i64, !dbg !123606
  %i.e = ptrtoint ptr %i.c to i64, !dbg !123606
  %i.f = sub nuw i64 %i.d, %i.e, !dbg !123606
  %i.g = udiv exact i64 %i.f, 80, !dbg !123606    ; 2 uses
  store i64 %i.g, ptr %0, align 8, !dbg !123607
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !123607
  store i64 1, ptr %i.h, align 8, !dbg !123607
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !123607
  store i64 %i.g, ptr %i.i, align 8, !dbg !123607
  ret void, !dbg !123608
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs2_NtNtCse4dvU5uQ85g_8indexmap3map4iterINtB5_4IterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator9size_hintCsfcROwRM8ZtH_11polars_plan(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #17 !dbg !123609 !guid !123618 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !123623
  %i.b = load ptr, ptr %i.a, align 8, !dbg !123623, !nonnull !2317, !noundef !2317
  %i.c = load ptr, ptr %1, align 8, !dbg !123624, !nonnull !2317, !noundef !2317
  %i.d = ptrtoint ptr %i.b to i64, !dbg !123625
  %i.e = ptrtoint ptr %i.c to i64, !dbg !123625
  %i.f = sub nuw i64 %i.d, %i.e, !dbg !123625
  %i.g = udiv exact i64 %i.f, 104, !dbg !123625   ; 2 uses
  store i64 %i.g, ptr %0, align 8, !dbg !123626
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !123626
  store i64 1, ptr %i.h, align 8, !dbg !123626
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !123626
  store i64 %i.g, ptr %i.i, align 8, !dbg !123626
  ret void, !dbg !123627
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden { ptr, ptr } @_RNvXs2_NtNtCse4dvU5uQ85g_8indexmap3map4iterINtB5_4IterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIRENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator3nthB1L_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef %1) unnamed_addr #17 !dbg !123628 !guid !123643 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !123646
  %i.b = load ptr, ptr %i.a, align 8, !dbg !123646, !alias.scope !123644, !nonnull !2317, !noundef !2317 ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !dbg !123647, !alias.scope !123644, !nonnull !2317, !noundef !2317 ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64, !dbg !123648
  %i.e = ptrtoint ptr %i.c to i64, !dbg !123648
  %i.f = sub nuw i64 %i.d, %i.e, !dbg !123648
  %i.g = udiv exact i64 %i.f, 144, !dbg !123648
  %.not.i.not = icmp ult i64 %1, %i.g, !dbg !123649 ; 3 uses
  %i.h = getelementptr inbounds nuw [144 x i8], ptr %i.c, i64 %1, !dbg !123649 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 144, !dbg !123649
  %storemerge.i = select i1 %.not.i.not, ptr %i.i, ptr %i.b, !dbg !123649
  %.sroa.0.0.i = select i1 %.not.i.not, ptr %i.h, ptr null, !dbg !123649
  store ptr %storemerge.i, ptr %0, align 8, !dbg !123650, !alias.scope !123644
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 112, !dbg !123651
  %.sroa.0.0 = select i1 %.not.i.not, ptr %i.j, ptr null, !dbg !123651
  %i.k = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0, !dbg !123652
  %i.l = insertvalue { ptr, ptr } %i.k, ptr %.sroa.0.0.i, 1, !dbg !123652
  ret { ptr, ptr } %i.l, !dbg !123652
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs2_NtNtCse4dvU5uQ85g_8indexmap3map4iterINtB5_4IterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIRENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator9size_hintB1L_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #17 !dbg !123653 !guid !123662 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !123667
  %i.b = load ptr, ptr %i.a, align 8, !dbg !123667, !nonnull !2317, !noundef !2317
  %i.c = load ptr, ptr %1, align 8, !dbg !123668, !nonnull !2317, !noundef !2317
  %i.d = ptrtoint ptr %i.b to i64, !dbg !123669
  %i.e = ptrtoint ptr %i.c to i64, !dbg !123669
  %i.f = sub nuw i64 %i.d, %i.e, !dbg !123669
  %i.g = udiv exact i64 %i.f, 144, !dbg !123669   ; 2 uses
  store i64 %i.g, ptr %0, align 8, !dbg !123670
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !123670
  store i64 1, ptr %i.h, align 8, !dbg !123670
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !123670
  store i64 %i.g, ptr %i.i, align 8, !dbg !123670
  ret void, !dbg !123671
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs2_NtNtCse4dvU5uQ85g_8indexmap3map4iterINtB5_4IterRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrRNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator9size_hintCsfcROwRM8ZtH_11polars_plan(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #17 !dbg !123672 !guid !123681 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !123686
  %i.b = load ptr, ptr %i.a, align 8, !dbg !123686, !nonnull !2317, !noundef !2317
  %i.c = load ptr, ptr %1, align 8, !dbg !123687, !nonnull !2317, !noundef !2317
  %i.d = ptrtoint ptr %i.b to i64, !dbg !123688
  %i.e = ptrtoint ptr %i.c to i64, !dbg !123688
  %i.f = sub nuw i64 %i.d, %i.e, !dbg !123688
  %i.g = udiv exact i64 %i.f, 24, !dbg !123688    ; 2 uses
  store i64 %i.g, ptr %0, align 8, !dbg !123689
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !123689
  store i64 1, ptr %i.h, align 8, !dbg !123689
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !123689
  store i64 %i.g, ptr %i.i, align 8, !dbg !123689
  ret void, !dbg !123690
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs2_NtNtCse4dvU5uQ85g_8indexmap3map4iterINtB5_4IterjINtNtCsgZ49sUHp3tW_5alloc4sync3ArcSNtNtBW_6string6StringEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator9size_hintCsfcROwRM8ZtH_11polars_plan(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #17 !dbg !123691 !guid !123700 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !123705
  %i.b = load ptr, ptr %i.a, align 8, !dbg !123705, !nonnull !2317, !noundef !2317
  %i.c = load ptr, ptr %1, align 8, !dbg !123706, !nonnull !2317, !noundef !2317
  %i.d = ptrtoint ptr %i.b to i64, !dbg !123707
  %i.e = ptrtoint ptr %i.c to i64, !dbg !123707
  %i.f = sub nuw i64 %i.d, %i.e, !dbg !123707
  %i.g = lshr exact i64 %i.f, 5, !dbg !123707     ; 2 uses
  store i64 %i.g, ptr %0, align 8, !dbg !123708
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !123708
  store i64 1, ptr %i.h, align 8, !dbg !123708
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !123708
  store i64 %i.g, ptr %i.i, align 8, !dbg !123708
  ret void, !dbg !123709
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs2_NtNtCse4dvU5uQ85g_8indexmap3map4iterINtB5_4ItermINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNtNtCsgZ49sUHp3tW_5alloc6string6StringEENtNtNtNtBW_4iter6traits8iterator8Iterator9size_hintCsfcROwRM8ZtH_11polars_plan(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #17 !dbg !123710 !guid !123719 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !123724
  %i.b = load ptr, ptr %i.a, align 8, !dbg !123724, !nonnull !2317, !noundef !2317
  %i.c = load ptr, ptr %1, align 8, !dbg !123725, !nonnull !2317, !noundef !2317
  %i.d = ptrtoint ptr %i.b to i64, !dbg !123726
  %i.e = ptrtoint ptr %i.c to i64, !dbg !123726
  %i.f = sub nuw i64 %i.d, %i.e, !dbg !123726
  %i.g = udiv exact i64 %i.f, 176, !dbg !123726   ; 2 uses
  store i64 %i.g, ptr %0, align 8, !dbg !123727
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !123727
  store i64 1, ptr %i.h, align 8, !dbg !123727
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !123727
  store i64 %i.g, ptr %i.i, align 8, !dbg !123727
  ret void, !dbg !123728
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs2_NtNtCse4dvU5uQ85g_8indexmap3map4iterINtB5_4ItermNtNtCs1LHh8CLbVkQ_11polars_core6scalar6ScalarENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator9size_hintCsfcROwRM8ZtH_11polars_plan(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #17 !dbg !123729 !guid !123738 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !123743
  %i.b = load ptr, ptr %i.a, align 8, !dbg !123743, !nonnull !2317, !noundef !2317
  %i.c = load ptr, ptr %1, align 8, !dbg !123744, !nonnull !2317, !noundef !2317
  %i.d = ptrtoint ptr %i.b to i64, !dbg !123745
  %i.e = ptrtoint ptr %i.c to i64, !dbg !123745
  %i.f = sub nuw i64 %i.d, %i.e, !dbg !123745
  %i.g = udiv exact i64 %i.f, 112, !dbg !123745   ; 2 uses
  store i64 %i.g, ptr %0, align 8, !dbg !123746
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !123746
  store i64 1, ptr %i.h, align 8, !dbg !123746
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !123746
  store i64 %i.g, ptr %i.i, align 8, !dbg !123746
  ret void, !dbg !123747
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs2_NtNtCse4dvU5uQ85g_8indexmap3map4iterINtB5_4ItermNtNtNtCs1LHh8CLbVkQ_11polars_core6schema7iceberg13IcebergColumnENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator9size_hintCsfcROwRM8ZtH_11polars_plan(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #17 !dbg !123748 !guid !123757 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !123762
  %i.b = load ptr, ptr %i.a, align 8, !dbg !123762, !nonnull !2317, !noundef !2317
  %i.c = load ptr, ptr %1, align 8, !dbg !123763, !nonnull !2317, !noundef !2317
  %i.d = ptrtoint ptr %i.b to i64, !dbg !123764
  %i.e = ptrtoint ptr %i.c to i64, !dbg !123764
  %i.f = sub nuw i64 %i.d, %i.e, !dbg !123764
  %i.g = udiv exact i64 %i.f, 112, !dbg !123764   ; 2 uses
  store i64 %i.g, ptr %0, align 8, !dbg !123765
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !123765
  store i64 1, ptr %i.h, align 8, !dbg !123765
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !123765
  store i64 %i.g, ptr %i.i, align 8, !dbg !123765
  ret void, !dbg !123766
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef range(i8 -1, 2) i8 @_RNvXs2_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNvYjNtNtBb_3cmp3Ord3cmpINtB7_6FnOnceTRjB1p_EE9call_onceCsfcROwRM8ZtH_11polars_plan(ptr noalias nofree noundef nonnull readnone captures(none) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %2) unnamed_addr #20 !dbg !123767 !guid !123771 {
bb.a:
  %.val = load i64, ptr %1, align 8, !dbg !123772, !noundef !2317
  %.val1 = load i64, ptr %2, align 8, !dbg !123772, !noundef !2317
  %i.a = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 %.val, i64 %.val1), !dbg !123773
  ret i8 %i.a, !dbg !123774
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef i64 @_RNvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCNCNvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir5scans13csv_file_info0s2_0ENtNtNtB9_6traits10exact_size17ExactSizeIterator3lenB1C_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %0) unnamed_addr #20 !dbg !123775 !guid !123778 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !123779
  %.val = load i64, ptr %i.a, align 8, !dbg !123780, !alias.scope !3597, !noundef !2317
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !123780
  %.val1 = load i64, ptr %i.b, align 8, !dbg !123780, !alias.scope !3598, !noundef !2317
  %spec.select.i.i = tail call noundef i64 @llvm.usub.sat.i64(i64 %.val1, i64 %.val), !dbg !123781
  ret i64 %spec.select.i.i, !dbg !123782
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_RNvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCNCNvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir5scans13csv_file_info0s2_0ENtNtNtB9_6traits10exact_size17ExactSizeIterator8is_emptyB1C_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %0) unnamed_addr #20 !dbg !123783 !guid !123785 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !123786
  %.val = load i64, ptr %i.a, align 8, !dbg !123787, !alias.scope !3597, !noundef !2317
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !123787
  %.val1 = load i64, ptr %i.b, align 8, !dbg !123787, !alias.scope !3598, !noundef !2317
  %i.c = icmp ule i64 %.val1, %.val, !dbg !123788
  ret i1 %i.c, !dbg !123789
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef i64 @_RNvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCNCNvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir5scans16ndjson_file_info0s1_0ENtNtNtB9_6traits10exact_size17ExactSizeIterator3lenB1C_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %0) unnamed_addr #20 !dbg !123790 !guid !123793 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !123794
  %.val = load i64, ptr %i.a, align 8, !dbg !123795, !alias.scope !3597, !noundef !2317
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !123795
  %.val1 = load i64, ptr %i.b, align 8, !dbg !123795, !alias.scope !3598, !noundef !2317
  %spec.select.i.i = tail call noundef i64 @llvm.usub.sat.i64(i64 %.val1, i64 %.val), !dbg !123796
  ret i64 %spec.select.i.i, !dbg !123797
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_RNvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCNCNvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir5scans16ndjson_file_info0s1_0ENtNtNtB9_6traits10exact_size17ExactSizeIterator8is_emptyB1C_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %0) unnamed_addr #20 !dbg !123798 !guid !123800 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !123801
  %.val = load i64, ptr %i.a, align 8, !dbg !123802, !alias.scope !3597, !noundef !2317
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !123802
  %.val1 = load i64, ptr %i.b, align 8, !dbg !123802, !alias.scope !3598, !noundef !2317
  %i.c = icmp ule i64 %.val1, %.val, !dbg !123803
  ret i1 %i.c, !dbg !123804
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef i64 @_RNvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCNvNtNtCslpwjCj2YNBy_9polars_io5cloud19polars_object_store11split_ranges_0ENtNtNtB9_6traits10exact_size17ExactSizeIterator3lenCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %0) unnamed_addr #20 !dbg !123805 !guid !123808 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !123809
  %.val = load i64, ptr %i.a, align 8, !dbg !123810, !alias.scope !3597, !noundef !2317
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !123810
  %.val1 = load i64, ptr %i.b, align 8, !dbg !123810, !alias.scope !3598, !noundef !2317
  %spec.select.i.i = tail call noundef i64 @llvm.usub.sat.i64(i64 %.val1, i64 %.val), !dbg !123811
  ret i64 %spec.select.i.i, !dbg !123812
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef i64 @_RNvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions5count18count_all_rows_csvs_0ENtNtNtB9_6traits10exact_size17ExactSizeIterator3lenB1y_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %0) unnamed_addr #20 !dbg !123813 !guid !123816 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !123817
  %.val = load i64, ptr %i.a, align 8, !dbg !123818, !alias.scope !3597, !noundef !2317
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !123818
  %.val1 = load i64, ptr %i.b, align 8, !dbg !123818, !alias.scope !3598, !noundef !2317
  %spec.select.i.i = tail call noundef i64 @llvm.usub.sat.i64(i64 %.val1, i64 %.val), !dbg !123819
  ret i64 %spec.select.i.i, !dbg !123820
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_RNvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions5count18count_all_rows_csvs_0ENtNtNtB9_6traits10exact_size17ExactSizeIterator8is_emptyB1y_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %0) unnamed_addr #20 !dbg !123821 !guid !123823 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !123824
  %.val = load i64, ptr %i.a, align 8, !dbg !123825, !alias.scope !3597, !noundef !2317
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !123825
  %.val1 = load i64, ptr %i.b, align 8, !dbg !123825, !alias.scope !3598, !noundef !2317
  %i.c = icmp ule i64 %.val1, %.val, !dbg !123826
  ret i1 %i.c, !dbg !123827
}

end_hunk_0
