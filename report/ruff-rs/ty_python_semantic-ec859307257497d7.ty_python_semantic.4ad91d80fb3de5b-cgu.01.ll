Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ty_python_semantic-ec859307257497d7.ty_python_semantic.4ad91d80fb3de5b-cgu.01?download=true
inline.NumInlined: 12775
inline.NumDeleted: 7325
loop-unroll.NumRuntimeUnrolled: 149
loop-unroll.NumUnrolled: 149
begin_hunk_0_@_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9SignatureE16extend_desugaredINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map9FilterMapINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter8IntoIterNtBJ_4TypeIBw_xEENCNCNvMs1g_NtBJ_5classNtB4j_9ClassType16own_class_members4_0s_0EEBL_:bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

bb.b:                                             ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9SignatureE7reserveBJ_.exit, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !3985
  store ptr %i.g, ptr %i.e, align 8, !noalias !3986
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !3986
  invoke void @_RNvXso_NtNtCs5e9M2GLoJMY_8indexmap3map4iterINtB5_8IntoIterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeINtNtCscdodAO9FK5_5alloc3vec3VecxEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBY_(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(64) %1)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.b
  %i.k = load i64, ptr %i.h, align 8, !range !35, !noalias !3986, !noundef !14
  %.not12.i.i.i = icmp eq i64 %i.k, -1
  br i1 %.not12.i.i.i, label %.loopexit12, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.noexc, %.noexc5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3987
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %i.d, i64 40, i1 false), !noalias !3986
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3987
  invoke void @_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNCNvMs1g_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtBZ_9ClassType16own_class_members4_0s_0INtB7_5FnMutTTNtB11_4TypeINtNtCscdodAO9FK5_5alloc3vec3VecxEEEE8call_mutB13_(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.b)
          to label %.noexc4 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc4:                                          ; preds = %.lr.ph.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3987
  %i.l = load i64, ptr %i.c, align 8, !range !29, !noalias !3987, !noundef !14 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.l, 2
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.noexc4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3987
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3986
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !3986
  invoke void @_RNvXso_NtNtCs5e9M2GLoJMY_8indexmap3map4iterINtB5_8IntoIterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeINtNtCscdodAO9FK5_5alloc3vec3VecxEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBY_(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(64) %1)
          to label %.noexc5 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc5:                                          ; preds = %bb.c
  %i.m = load i64, ptr %i.h, align 8, !range !35, !noalias !3986, !noundef !14
  %.not.i.i.i = icmp eq i64 %i.m, -1
  br i1 %.not.i.i.i, label %.loopexit12, label %.lr.ph.i.i.i

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.f
  %.pn = phi { ptr, i32 } [ %i.u, %bb.f ], [ %lpad.loopexit.split-lp23, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterINtCs5e9M2GLoJMY_8indexmap6BucketNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeINtB7_3VecxEEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1w_(ptr noalias noundef nonnull align 8 dereferenceable(64) %1)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter8IntoIterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeINtNtCscdodAO9FK5_5alloc3vec3VecxEENCNCNvMs1g_NtB2b_5classNtB3F_9ClassType16own_class_members4_0s_0EEB2d_.exit unwind label %bb.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.c, %.lr.ph.i.i.i, %bb.b
  %lpad.loopexit.split-lp23 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.d:                                             ; preds = %.noexc4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.6.0..sroa_idx.i.i.i, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3987
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3986
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !3985
  store i64 %i.l, ptr %i.f, align 8
  %i.n = load i64, ptr %i.i, align 8, !noundef !14 ; 4 uses
  %i.o = icmp ult i64 %i.n, 128102389400760776
  call void @llvm.assume(i1 %i.o)
  %i.p = load i64, ptr %0, align 8, !range !24, !noundef !14
  %i.q = icmp eq i64 %i.n, %i.p
  br i1 %i.q, label %bb.e, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9SignatureE7reserveBJ_.exit

.loopexit12:                                      ; preds = %.noexc, %.noexc5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3986
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !3985
  call void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterINtCs5e9M2GLoJMY_8indexmap6BucketNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeINtB7_3VecxEEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1w_(ptr noalias noundef nonnull align 8 dereferenceable(64) %1)
  ret void

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3988
  invoke void @_RNvXso_NtNtCs5e9M2GLoJMY_8indexmap3map4iterINtB5_8IntoIterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeINtNtCscdodAO9FK5_5alloc3vec3VecxEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator9size_hintBY_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1)
          to label %bb.g unwind label %bb.f

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9SignatureE7reserveBJ_.exit: ; preds = %bb.g, %bb.h, %bb.d
  %i.r = load ptr, ptr %i.j, align 8, !nonnull !14, !noundef !14
  %i.s = getelementptr inbounds nuw [72 x i8], ptr %i.r, i64 %i.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.s, ptr noundef nonnull align 8 dereferenceable(72) %i.f, i64 72, i1 false)
  %i.t = add nuw nsw i64 %i.n, 1
  store i64 %i.t, ptr %i.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.b

bb.f:                                             ; preds = %bb.h, %bb.e
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9SignatureEBH_(ptr noalias noundef align 8 dereferenceable(72) %i.f) #33
          to label %.loopexit.split-lp unwind label %bb.i

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3988
  %i.v = load i64, ptr %i.i, align 8, !alias.scope !3989, !noundef !14 ; 2 uses
  %i.w = load i64, ptr %0, align 8, !range !24, !alias.scope !3989, !noundef !14
  %i.x = icmp eq i64 %i.w, %i.v
  br i1 %i.x, label %bb.h, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9SignatureE7reserveBJ_.exit, !prof !16

bb.h:                                             ; preds = %bb.g
  invoke void @_RINvNvMs2_NtCscdodAO9FK5_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.v, i64 noundef range(i64 1, 0) 1, i64 noundef 8, i64 noundef 72)
          to label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9SignatureE7reserveBJ_.exit unwind label %bb.f

bb.i:                                             ; preds = %.loopexit.split-lp, %bb.f
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #32
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter8IntoIterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeINtNtCscdodAO9FK5_5alloc3vec3VecxEENCNCNvMs1g_NtB2b_5classNtB3F_9ClassType16own_class_members4_0s_0EEB2d_.exit: ; preds = %.loopexit.split-lp
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer12TypeAndRangeE14extend_trustedINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied6CopiedINtNtNtB28_5slice4iter4IterBF_EEEBL_(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 3 uses
  store ptr %1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %2, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer12TypeAndRangeEENtNtNtB8_6traits8iterator8Iterator9size_hintB1x_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.c)
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load i64, ptr %i.e, align 8, !range !28, !noundef !14
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.h = load i64, ptr %i.g, align 8              ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.i = trunc nuw i64 %i.f to i1
  br i1 %i.i, label %bb.b, label %bb.d, !prof !15

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !3992, !noundef !14 ; 3 uses
  %i.l = load i64, ptr %0, align 8, !range !24, !alias.scope !3992, !noundef !14
  %i.m = sub i64 %i.l, %i.k
  %i.n = icmp ugt i64 %i.h, %i.m
  br i1 %i.n, label %bb.c, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer12TypeAndRangeE7reserveBJ_.exit, !prof !16

bb.c:                                             ; preds = %bb.b
  call void @_RINvNvMs2_NtCscdodAO9FK5_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.k, i64 noundef %i.h, i64 noundef 4, i64 noundef 24)
  %.pre = load i64, ptr %i.j, align 8
  br label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer12TypeAndRangeE7reserveBJ_.exit

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer12TypeAndRangeE7reserveBJ_.exit: ; preds = %bb.b, %bb.c
  %i.o = phi i64 [ %i.k, %bb.b ], [ %.pre, %bb.c ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !14, !noundef !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.q, ptr %i.r, align 8
  store ptr %i.j, ptr %i.a, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.o, ptr %i.s, align 8
  call void @_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer12TypeAndRangeEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvB2x_8for_each4callB1s_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB3N_3VecB1s_E14extend_trustedBP_E0E0EB1y_(ptr noundef nonnull %1, ptr noundef %2, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.d:                                             ; preds = %bb.a
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @4, ptr noundef nonnull inttoptr (i64 35 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #31
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support16unreachable_code16UnreachableRangeE16extend_desugaredINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map9FilterMapINtNtB2B_3map3MapINtNtNtB2F_5slice4iter4IterTNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeNtNtCs2O29vuvTAEJ_14ty_python_core7use_def9RangeInfoEENCNvMs8_B57_NtB57_9UseDefMap18range_reachability0ENCNvNvXs0_NvBH_1__NtB6V_33unreachable_ranges_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute6inner_0EEBN_(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(40) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [12 x i8], align 8                ; 9 uses
  %.sroa.510 = alloca [3 x i8], align 1           ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4000
  call void @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterTNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeNtNtCs2O29vuvTAEJ_14ty_python_core7use_def9RangeInfoEENCNvMs8_B2e_NtB2e_9UseDefMap18range_reachability0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB3S_8find_map5checkTB1o_NtNtB2g_24reachability_constraints30ScopedReachabilityConstraintIdENtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support16unreachable_code16UnreachableRangeQNCNvNvXs0_NvB6c_1__NtB7T_33unreachable_ranges_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute6inner_0E0INtNtNtBc_3ops12control_flow11ControlFlowB6a_EEB6i_(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(address) dereferenceable(12) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(40) %1, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b), !noalias !4001
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.d = load i8, ptr %i.c, align 8, !range !27, !noalias !4000, !noundef !14 ; 2 uses
  %.not.i.i20 = icmp eq i8 %i.d, 2
  br i1 %.not.i.i20, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.sroa.7.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %i.g = phi i8 [ %i.d, %.lr.ph ], [ %i.o, %bb.c ]
  %.sroa.0.0.copyload5 = load i64, ptr %i.a, align 8, !noalias !4002
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.510)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.510, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.7.0..sroa_idx8, i64 3, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4000
  %i.h = load i64, ptr %i.e, align 8, !noundef !14 ; 5 uses
  %i.i = icmp ult i64 %i.h, 768614336404564651
  call void @llvm.assume(i1 %i.i)
  %i.j = load i64, ptr %0, align 8, !range !24, !noundef !14
  %i.k = icmp eq i64 %i.h, %i.j
  br i1 %i.k, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support16unreachable_code16UnreachableRangeE7reserveBL_.exit, label %bb.c

._crit_edge:                                      ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4000
  ret void

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support16unreachable_code16UnreachableRangeE7reserveBL_.exit: ; preds = %bb.b
  call void @_RINvNvMs2_NtCscdodAO9FK5_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.h, i64 noundef range(i64 1, 0) 1, i64 noundef 4, i64 noundef 12)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support16unreachable_code16UnreachableRangeE7reserveBL_.exit
  %i.l = load ptr, ptr %i.f, align 8, !nonnull !14, !noundef !14
  %i.m = getelementptr inbounds nuw [12 x i8], ptr %i.l, i64 %i.h ; 3 uses
  %.sroa.516.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.516.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.510, i64 3, i1 false)
  store i64 %.sroa.0.0.copyload5, ptr %i.m, align 4
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i8 %i.g, ptr %.sroa.415.0..sroa_idx, align 4
  %i.n = add nuw nsw i64 %i.h, 1
  store i64 %i.n, ptr %i.e, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.510)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4000
  call void @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterTNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeNtNtCs2O29vuvTAEJ_14ty_python_core7use_def9RangeInfoEENCNvMs8_B2e_NtB2e_9UseDefMap18range_reachability0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB3S_8find_map5checkTB1o_NtNtB2g_24reachability_constraints30ScopedReachabilityConstraintIdENtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support16unreachable_code16UnreachableRangeQNCNvNvXs0_NvB6c_1__NtB7T_33unreachable_ranges_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute6inner_0E0INtNtNtBc_3ops12control_flow11ControlFlowB6a_EEB6i_(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(address) dereferenceable(12) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(40) %1, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b), !noalias !4001
  %i.o = load i8, ptr %i.c, align 8, !range !27, !noalias !4000, !noundef !14 ; 2 uses
  %.not.i.i = icmp eq i8 %i.o, 2
  br i1 %.not.i.i, label %._crit_edge, label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support18resolve_definition18ResolvedDefinitionE16extend_desugaredINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten7FlatMapINtNtNtCs5e9M2GLoJMY_8indexmap3set4iter8IntoIterNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionEBv_NCNvBH_19map_stub_definitions0_0EEBN_(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(136) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 11 uses
  %.sroa.5 = alloca i64, align 8                  ; 3 uses
  %.sroa.7 = alloca i64, align 8                  ; 3 uses
  %.sroa.8 = alloca [16 x i8], align 4            ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %.sroa.623.0..sroa_idx24.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

bb.b:                                             ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support18resolve_definition18ResolvedDefinitionE7reserveBL_.exit, %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !4050)
  call void @llvm.experimental.noalias.scope.decl(metadata !4051)
  %.pre.i.i = load ptr, ptr %1, align 8, !alias.scope !4052
  %i.r = icmp eq ptr %.pre.i.i, null
  call void @llvm.experimental.noalias.scope.decl(metadata !4053)
  br i1 %i.r, label %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten17and_then_or_clearINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support18resolve_definition18ResolvedDefinitionEB1T_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextEB21_.exit.thread.i.peel.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !4054)
  call void @llvm.experimental.noalias.scope.decl(metadata !4055)
  %i.s = load ptr, ptr %i.c, align 8, !alias.scope !4056, !nonnull !14, !noundef !14
  %i.t = load ptr, ptr %i.d, align 8, !alias.scope !4056, !nonnull !14, !noundef !14 ; 4 uses
  %i.u = icmp eq ptr %i.t, %i.s
  br i1 %i.u, label %_RNvYNvYINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support18resolve_definition18ResolvedDefinitionENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextINtNtNtB2D_3ops8function6FnOnceTQB5_EE9call_onceB10_.exit.thread.i.i.peel.i, label %_RNvYNvYINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support18resolve_definition18ResolvedDefinitionENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextINtNtNtB2D_3ops8function6FnOnceTQB5_EE9call_onceB10_.exit.i.i.peel.i

_RNvYNvYINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support18resolve_definition18ResolvedDefinitionENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextINtNtNtB2D_3ops8function6FnOnceTQB5_EE9call_onceB10_.exit.i.i.peel.i: ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 20
  store ptr %i.v, ptr %i.d, align 8, !alias.scope !4056
  %.sroa.0.0.copyload7.i.i.peel.i = load i32, ptr %i.t, align 4, !noalias !4057 ; 2 uses
  %.not6.i.i.peel.i = icmp eq i32 %.sroa.0.0.copyload7.i.i.peel.i, -1
  br i1 %.not6.i.i.peel.i, label %_RNvYNvYINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support18resolve_definition18ResolvedDefinitionENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextINtNtNtB2D_3ops8function6FnOnceTQB5_EE9call_onceB10_.exit.thread.i.i.peel.i, label %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtCs5e9M2GLoJMY_8indexmap3set4iter8IntoIterNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionEINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support18resolve_definition18ResolvedDefinitionENCNvB3l_19map_stub_definitions0_0ENtNtNtB9_6traits8iterator8Iterator4nextB3r_.exit.thread

_RNvYNvYINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support18resolve_definition18ResolvedDefinitionENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextINtNtNtB2D_3ops8function6FnOnceTQB5_EE9call_onceB10_.exit.thread.i.i.peel.i: ; preds = %_RNvYNvYINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support18resolve_definition18ResolvedDefinitionENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextINtNtNtB2D_3ops8function6FnOnceTQB5_EE9call_onceB10_.exit.i.i.peel.i, %bb.c
  invoke void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support18resolve_definition18ResolvedDefinitionENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB13_(ptr noalias noundef nonnull align 8 dereferenceable(136) %1)
          to label %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten17and_then_or_clearINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support18resolve_definition18ResolvedDefinitionEB1T_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextEB21_.exit.thread31.i.peel.i unwind label %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !4058

_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten17and_then_or_clearINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support18resolve_definition18ResolvedDefinitionEB1T_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextEB21_.exit.thread31.i.peel.i: ; preds = %_RNvYNvYINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support18resolve_definition18ResolvedDefinitionENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextINtNtNtB2D_3ops8function6FnOnceTQB5_EE9call_onceB10_.exit.thread.i.i.peel.i
  store ptr null, ptr %1, align 8, !alias.scope !4059
  br label %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten17and_then_or_clearINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support18resolve_definition18ResolvedDefinitionEB1T_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextEB21_.exit.thread.i.peel.i

_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten17and_then_or_clearINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support18resolve_definition18ResolvedDefinitionEB1T_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextEB21_.exit.thread.i.peel.i: ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten17and_then_or_clearINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support18resolve_definition18ResolvedDefinitionEB1T_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextEB21_.exit.thread31.i.peel.i, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4060
  %i.w = load ptr, ptr %i.e, align 8, !alias.scope !4061, !noundef !14
  %.not.i2.i.peel.i = icmp eq ptr %i.w, null
  br i1 %.not.i2.i.peel.i, label %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtCs5e9M2GLoJMY_8indexmap3set4iter8IntoIterNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionENCNvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support18resolve_definition19map_stub_definitions0_0EEINtB5_8FuseImplBY_E4nextB37_.exit.thread.i.i, label %bb.d

bb.d:                                             ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten17and_then_or_clearINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support18resolve_definition18ResolvedDefinitionEB1T_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextEB21_.exit.thread.i.peel.i
  %i.x = invoke { i32, i32 } @_RNvXs9_NtNtCs5e9M2GLoJMY_8indexmap3set4iterINtB5_8IntoIterNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.e)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc:                                           ; preds = %bb.d
  %i.y = extractvalue { i32, i32 } %i.x, 0        ; 2 uses
  %.not.i.i.i.peel.i = icmp eq i32 %i.y, 0
  br i1 %.not.i.i.i.peel.i, label %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtCs5e9M2GLoJMY_8indexmap3set4iter8IntoIterNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionENCNvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support18resolve_definition19map_stub_definitions0_0EEINtB5_8FuseImplBY_E4nextB37_.exit.thread.i.i, label %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtCs5e9M2GLoJMY_8indexmap3set4iter8IntoIterNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionENCNvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support18resolve_definition19map_stub_definitions0_0EEINtB5_8FuseImplBY_E4nextB37_.exit.i.peel.i

_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtCs5e9M2GLoJMY_8indexmap3set4iter8IntoIterNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionENCNvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support18resolve_definition19map_stub_definitions0_0EEINtB5_8FuseImplBY_E4nextB37_.exit.i.peel.i: ; preds = %.noexc
  %i.z = extractvalue { i32, i32 } %i.x, 1
  %i.aa = load ptr, ptr %i.f, align 8, !alias.scope !4062, !nonnull !14, !noundef !14
  %i.ab = load ptr, ptr %i.g, align 8, !alias.scope !4062, !nonnull !14, !align !18, !noundef !14
  %i.ac = load ptr, ptr %i.h, align 8, !alias.scope !4062, !nonnull !14, !align !17, !noundef !14
  %i.ad = load ptr, ptr %i.i, align 8, !alias.scope !4062, !nonnull !14, !noundef !14
  %i.ae = load i64, ptr %i.j, align 8, !alias.scope !4062, !noundef !14
  invoke void @_RNvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support18resolve_definition18resolve_definition(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull %i.aa, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.ab, ptr noundef nonnull align 4 %i.ac, i32 noundef range(i32 1, 0) %i.y, i32 noundef %i.z, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ad, i64 %i.ae, i1 noundef zeroext false)
          to label %.noexc4 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc4:                                          ; preds = %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtCs5e9M2GLoJMY_8indexmap3set4iter8IntoIterNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionENCNvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support18resolve_definition19map_stub_definitions0_0EEINtB5_8FuseImplBY_E4nextB37_.exit.i.peel.i
  %.pr.i.peel.i = load i64, ptr %i.b, align 8, !noalias !4060 ; 3 uses
  %.not1.i.peel.i = icmp eq i64 %.pr.i.peel.i, -1
  br i1 %.not1.i.peel.i, label %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtCs5e9M2GLoJMY_8indexmap3set4iter8IntoIterNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionENCNvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support18resolve_definition19map_stub_definitions0_0EEINtB5_8FuseImplBY_E4nextB37_.exit.thread.i.i, label %bb.e

bb.e:                                             ; preds = %.noexc4
  %.sroa.4.0.copyload.i.peel.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !4060, !nonnull !14, !noundef !14 ; 3 uses
  %.sroa.5.0.copyload.i.peel.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !4060 ; 2 uses
  %i.af = icmp ult i64 %.sroa.5.0.copyload.i.peel.i, 461168601842738791
  call void @llvm.assume(i1 %i.af)
  %i.ag = getelementptr inbounds nuw [20 x i8], ptr %.sroa.4.0.copyload.i.peel.i, i64 %.sroa.5.0.copyload.i.peel.i ; 2 uses
  %i.ah = load ptr, ptr %1, align 8, !alias.scope !4063, !noundef !14
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support18resolve_definition18ResolvedDefinitionEEEB1S_.exit.i.peel.i.preheader, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support18resolve_definition18ResolvedDefinitionENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB13_(ptr noalias noundef nonnull align 8 dereferenceable(136) %1)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support18resolve_definition18ResolvedDefinitionEEEB1S_.exit.i.peel.i.preheader unwind label %.loopexit.split-lp8.i, !noalias !4064

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support18resolve_definition18ResolvedDefinitionEEEB1S_.exit.i.peel.i.preheader: ; preds = %bb.f, %bb.e
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support18resolve_definition18ResolvedDefinitionEEEB1S_.exit.i.peel.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support18resolve_definition18ResolvedDefinitionEEEB1S_.exit.i.peel.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support18resolve_definition18ResolvedDefinitionEEEB1S_.exit.i.peel.i.backedge, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support18resolve_definition18ResolvedDefinitionEEEB1S_.exit.i.peel.i.preheader
  %.sroa.4.0.copyload.i.peel.sink24.i = phi ptr [ %.sroa.4.0.copyload.i.peel.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support18resolve_definition18ResolvedDefinitionEEEB1S_.exit.i.peel.i.preheader ], [ %.sroa.4.0.copyload.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support18resolve_definition18ResolvedDefinitionEEEB1S_.exit.i.peel.i.backedge ] ; 6 uses
  %.pr.i.peel.sink.i = phi i64 [ %.pr.i.peel.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support18resolve_definition18ResolvedDefinitionEEEB1S_.exit.i.peel.i.preheader ], [ %.pr.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support18resolve_definition18ResolvedDefinitionEEEB1S_.exit.i.peel.i.backedge ]
  %.sink.i = phi ptr [ %i.ag, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support18resolve_definition18ResolvedDefinitionEEEB1S_.exit.i.peel.i.preheader ], [ %i.av, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support18resolve_definition18ResolvedDefinitionEEEB1S_.exit.i.peel.i.backedge ] ; 2 uses
  store ptr %.sroa.4.0.copyload.i.peel.sink24.i, ptr %1, align 8, !alias.scope !4065
  store ptr %.sroa.4.0.copyload.i.peel.sink24.i, ptr %i.d, align 8, !alias.scope !4065
  store i64 %.pr.i.peel.sink.i, ptr %.sroa.623.0..sroa_idx24.i.i, align 8, !alias.scope !4065
  store ptr %.sink.i, ptr %i.c, align 8, !alias.scope !4065
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4060
  call void @llvm.experimental.noalias.scope.decl(metadata !4066)
  call void @llvm.experimental.noalias.scope.decl(metadata !4067)
  call void @llvm.experimental.noalias.scope.decl(metadata !4068)
  %i.aj = icmp eq ptr %.sroa.4.0.copyload.i.peel.sink24.i, %.sink.i
  br i1 %i.aj, label %_RNvYNvYINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support18resolve_definition18ResolvedDefinitionENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextINtNtNtB2D_3ops8function6FnOnceTQB5_EE9call_onceB10_.exit.thread.i.i.i, label %_RNvYNvYINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support18resolve_definition18ResolvedDefinitionENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextINtNtNtB2D_3ops8function6FnOnceTQB5_EE9call_onceB10_.exit.i.i.i

_RNvYNvYINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support18resolve_definition18ResolvedDefinitionENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextINtNtNtB2D_3ops8function6FnOnceTQB5_EE9call_onceB10_.exit.i.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support18resolve_definition18ResolvedDefinitionEEEB1S_.exit.i.peel.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload.i.peel.sink24.i, i64 20
  store ptr %i.ak, ptr %i.d, align 8, !alias.scope !4069
  %.sroa.0.0.copyload7.i.i.i = load i32, ptr %.sroa.4.0.copyload.i.peel.sink24.i, align 4, !noalias !4070 ; 2 uses
  %.not6.i.i.i = icmp eq i32 %.sroa.0.0.copyload7.i.i.i, -1
  br i1 %.not6.i.i.i, label %_RNvYNvYINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support18resolve_definition18ResolvedDefinitionENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextINtNtNtB2D_3ops8function6FnOnceTQB5_EE9call_onceB10_.exit.thread.i.i.i, label %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtCs5e9M2GLoJMY_8indexmap3set4iter8IntoIterNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionEINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support18resolve_definition18ResolvedDefinitionENCNvB3l_19map_stub_definitions0_0ENtNtNtB9_6traits8iterator8Iterator4nextB3r_.exit.thread

_RNvYNvYINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support18resolve_definition18ResolvedDefinitionENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextINtNtNtB2D_3ops8function6FnOnceTQB5_EE9call_onceB10_.exit.thread.i.i.i: ; preds = %_RNvYNvYINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support18resolve_definition18ResolvedDefinitionENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextINtNtNtB2D_3ops8function6FnOnceTQB5_EE9call_onceB10_.exit.i.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support18resolve_definition18ResolvedDefinitionEEEB1S_.exit.i.peel.i
  invoke void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support18resolve_definition18ResolvedDefinitionENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB13_(ptr noalias noundef nonnull align 8 dereferenceable(136) %1)
          to label %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten17and_then_or_clearINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support18resolve_definition18ResolvedDefinitionEB1T_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextEB21_.exit.thread.i.i unwind label %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !4058

.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RNvYNvYINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support18resolve_definition18ResolvedDefinitionENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextINtNtNtB2D_3ops8function6FnOnceTQB5_EE9call_onceB10_.exit.thread.i.i.i, %_RNvYNvYINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support18resolve_definition18ResolvedDefinitionENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextINtNtNtB2D_3ops8function6FnOnceTQB5_EE9call_onceB10_.exit.thread.i.i.peel.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %1, align 8, !alias.scope !4052
  br label %.body

_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtCs5e9M2GLoJMY_8indexmap3set4iter8IntoIterNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionEINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support18resolve_definition18ResolvedDefinitionENCNvB3l_19map_stub_definitions0_0ENtNtNtB9_6traits8iterator8Iterator4nextB3r_.exit.thread: ; preds = %_RNvYNvYINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support18resolve_definition18ResolvedDefinitionENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextINtNtNtB2D_3ops8function6FnOnceTQB5_EE9call_onceB10_.exit.i.i.i, %_RNvYNvYINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support18resolve_definition18ResolvedDefinitionENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextINtNtNtB2D_3ops8function6FnOnceTQB5_EE9call_onceB10_.exit.i.i.peel.i
  %.lcssa.i = phi ptr [ %i.t, %_RNvYNvYINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support18resolve_definition18ResolvedDefinitionENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextINtNtNtB2D_3ops8function6FnOnceTQB5_EE9call_onceB10_.exit.i.i.peel.i ], [ %.sroa.4.0.copyload.i.peel.sink24.i, %_RNvYNvYINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support18resolve_definition18ResolvedDefinitionENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextINtNtNtB2D_3ops8function6FnOnceTQB5_EE9call_onceB10_.exit.i.i.i ]
  %.sroa.0.0.copyload7.i.i.lcssa.i = phi i32 [ %.sroa.0.0.copyload7.i.i.peel.i, %_RNvYNvYINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support18resolve_definition18ResolvedDefinitionENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextINtNtNtB2D_3ops8function6FnOnceTQB5_EE9call_onceB10_.exit.i.i.peel.i ], [ %.sroa.0.0.copyload7.i.i.i, %_RNvYNvYINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support18resolve_definition18ResolvedDefinitionENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextINtNtNtB2D_3ops8function6FnOnceTQB5_EE9call_onceB10_.exit.i.i.i ]
  %.sroa.7.0..sroa_idx8.i.le.i.i = getelementptr inbounds nuw i8, ptr %.lcssa.i, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.8, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.7.0..sroa_idx8.i.le.i.i, i64 16, i1 false)
  br label %bb.m

_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten17and_then_or_clearINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support18resolve_definition18ResolvedDefinitionEB1T_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextEB21_.exit.thread.i.i: ; preds = %_RNvYNvYINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support18resolve_definition18ResolvedDefinitionENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextINtNtNtB2D_3ops8function6FnOnceTQB5_EE9call_onceB10_.exit.thread.i.i.i
  store ptr null, ptr %1, align 8, !alias.scope !4052
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4060
  %i.al = load ptr, ptr %i.e, align 8, !alias.scope !4061, !noundef !14
  %.not.i2.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i2.i.i, label %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtCs5e9M2GLoJMY_8indexmap3set4iter8IntoIterNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionENCNvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support18resolve_definition19map_stub_definitions0_0EEINtB5_8FuseImplBY_E4nextB37_.exit.thread.i.i, label %bb.g

bb.g:                                             ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten17and_then_or_clearINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support18resolve_definition18ResolvedDefinitionEB1T_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextEB21_.exit.thread.i.i
  %i.am = invoke { i32, i32 } @_RNvXs9_NtNtCs5e9M2GLoJMY_8indexmap3set4iterINtB5_8IntoIterNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.e)
          to label %.noexc5 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc5:                                          ; preds = %bb.g
  %i.an = extractvalue { i32, i32 } %i.am, 0      ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.an, 0
  br i1 %.not.i.i.i.i, label %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtCs5e9M2GLoJMY_8indexmap3set4iter8IntoIterNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionENCNvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support18resolve_definition19map_stub_definitions0_0EEINtB5_8FuseImplBY_E4nextB37_.exit.thread.i.i, label %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtCs5e9M2GLoJMY_8indexmap3set4iter8IntoIterNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionENCNvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support18resolve_definition19map_stub_definitions0_0EEINtB5_8FuseImplBY_E4nextB37_.exit.i.i

_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtCs5e9M2GLoJMY_8indexmap3set4iter8IntoIterNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionENCNvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support18resolve_definition19map_stub_definitions0_0EEINtB5_8FuseImplBY_E4nextB37_.exit.i.i: ; preds = %.noexc5
  %i.ao = extractvalue { i32, i32 } %i.am, 1
  %i.ap = load ptr, ptr %i.f, align 8, !alias.scope !4062, !nonnull !14, !noundef !14
  %i.aq = load ptr, ptr %i.g, align 8, !alias.scope !4062, !nonnull !14, !align !18, !noundef !14
  %i.ar = load ptr, ptr %i.h, align 8, !alias.scope !4062, !nonnull !14, !align !17, !noundef !14
  %i.as = load ptr, ptr %i.i, align 8, !alias.scope !4062, !nonnull !14, !noundef !14
  %i.at = load i64, ptr %i.j, align 8, !alias.scope !4062, !noundef !14
  invoke void @_RNvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support18resolve_definition18resolve_definition(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull %i.ap, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.aq, ptr noundef nonnull align 4 %i.ar, i32 noundef range(i32 1, 0) %i.an, i32 noundef %i.ao, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.as, i64 %i.at, i1 noundef zeroext false)
          to label %.noexc6 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc6:                                          ; preds = %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtCs5e9M2GLoJMY_8indexmap3set4iter8IntoIterNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionENCNvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support18resolve_definition19map_stub_definitions0_0EEINtB5_8FuseImplBY_E4nextB37_.exit.i.i
  %.pr.i.i = load i64, ptr %i.b, align 8, !noalias !4060 ; 3 uses
  %.not1.i.i = icmp eq i64 %.pr.i.i, -1
  br i1 %.not1.i.i, label %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtCs5e9M2GLoJMY_8indexmap3set4iter8IntoIterNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionENCNvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support18resolve_definition19map_stub_definitions0_0EEINtB5_8FuseImplBY_E4nextB37_.exit.thread.i.i, label %bb.h

bb.h:                                             ; preds = %.noexc6
  %.sroa.4.0.copyload.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !4060, !nonnull !14, !noundef !14 ; 3 uses
  %.sroa.5.0.copyload.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !4060 ; 2 uses
  %i.au = icmp ult i64 %.sroa.5.0.copyload.i.i, 461168601842738791
end_hunk_0
begin_hunk_1_@_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literal22ExpandedClassBaseEntryE14extend_trustedINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB2w_3zip3ZipINtNtNtB2A_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEINtNtB6_9into_iter8IntoIterNtBL_4TypeEENCNvBH_27expanded_class_base_entriess_0EEBN_:bb.a

.noexc:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = invoke noundef i64 @_RNvYINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zip27TrustedRandomAccessNoCoerce4sizeBT_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.d)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %.noexc
  %.sroa.0.0.i.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.e, i64 %i.c) ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !4107, !noundef !14 ; 3 uses
  %i.h = load i64, ptr %0, align 8, !range !24, !alias.scope !4107, !noundef !14
  %i.i = sub i64 %i.h, %i.g
  %i.j = icmp ugt i64 %.sroa.0.0.i.i.i.i, %i.i
  br i1 %i.j, label %bb.c, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literal22ExpandedClassBaseEntryE7reserveBL_.exit, !prof !16

bb.c:                                             ; preds = %bb.b
  invoke void @_RINvNvMs2_NtCscdodAO9FK5_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.g, i64 noundef %.sroa.0.0.i.i.i.i, i64 noundef 8, i64 noundef 24)
          to label %._RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literal22ExpandedClassBaseEntryE7reserveBL_.exit_crit_edge unwind label %bb.d

._RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literal22ExpandedClassBaseEntryE7reserveBL_.exit_crit_edge: ; preds = %bb.c
  %.pre = load i64, ptr %i.f, align 8
  br label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literal22ExpandedClassBaseEntryE7reserveBL_.exit

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literal22ExpandedClassBaseEntryE7reserveBL_.exit: ; preds = %._RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literal22ExpandedClassBaseEntryE7reserveBL_.exit_crit_edge, %bb.b
  %i.k = phi i64 [ %.pre, %._RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literal22ExpandedClassBaseEntryE7reserveBL_.exit_crit_edge ], [ %i.g, %bb.b ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !14, !noundef !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.b, ptr noundef nonnull align 8 dereferenceable(64) %1, i64 64, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.m, ptr %i.n, align 8
  store ptr %i.f, ptr %i.a, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.k, ptr %i.o, align 8
  call void @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEENCNvNtNtB3h_5class14static_literal27expanded_class_base_entriess_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB58_8for_each4callNtB47_22ExpandedClassBaseEntryNCINvMsj_B2x_INtB2x_3VecB6b_E14extend_trustedBN_E0E0EB3j_(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(64) %i.b, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtBG_3zip3ZipINtNtNtB4_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEENCNvNtNtB3t_5class14static_literal27expanded_class_base_entriess_0EEB3v_.exit: ; preds = %bb.d
  resume { ptr, i32 } %lpad.thr_comm

bb.d:                                             ; preds = %bb.c, %.noexc, %bb.a
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  invoke void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBZ_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.p)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtBG_3zip3ZipINtNtNtB4_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEENCNvNtNtB3t_5class14static_literal27expanded_class_base_entriess_0EEB3v_.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #32
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literal22ExpandedClassBaseEntryE14extend_trustedINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterNtBL_4TypeENCNvBH_27expanded_class_base_entriess0_0EEBN_(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(40) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.b, align 8, !nonnull !14, !noundef !14
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val5 = load ptr, ptr %i.c, align 8, !nonnull !14, !noundef !14
  %i.d = ptrtoint ptr %.val5 to i64
  %i.e = ptrtoint ptr %.val to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = lshr exact i64 %i.f, 4                   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !4110, !noundef !14 ; 3 uses
  %i.j = load i64, ptr %0, align 8, !range !24, !alias.scope !4110, !noundef !14
  %i.k = sub i64 %i.j, %i.i
  %i.l = icmp ugt i64 %i.g, %i.k
  br i1 %i.l, label %bb.b, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literal22ExpandedClassBaseEntryE7reserveBL_.exit, !prof !16

bb.b:                                             ; preds = %bb.a
  invoke void @_RINvNvMs2_NtCscdodAO9FK5_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.i, i64 noundef %i.g, i64 noundef 8, i64 noundef 24)
          to label %._RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literal22ExpandedClassBaseEntryE7reserveBL_.exit_crit_edge unwind label %bb.c

._RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literal22ExpandedClassBaseEntryE7reserveBL_.exit_crit_edge: ; preds = %bb.b
  %.pre = load i64, ptr %i.h, align 8
  br label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literal22ExpandedClassBaseEntryE7reserveBL_.exit

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literal22ExpandedClassBaseEntryE7reserveBL_.exit: ; preds = %._RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literal22ExpandedClassBaseEntryE7reserveBL_.exit_crit_edge, %bb.a
  %i.m = phi i64 [ %.pre, %._RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literal22ExpandedClassBaseEntryE7reserveBL_.exit_crit_edge ], [ %i.i, %bb.a ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !14, !noundef !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.o, ptr %i.p, align 8
  store ptr %i.h, ptr %i.a, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.m, ptr %i.q, align 8
  call void @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENCNvNtNtB1M_5class14static_literal27expanded_class_base_entriess0_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3D_8for_each4callNtB2B_22ExpandedClassBaseEntryNCINvMsj_B12_INtB12_3VecB4G_E14extend_trustedBN_E0E0EB1O_(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENCNvNtNtB1Y_5class14static_literal27expanded_class_base_entriess0_0EEB20_.exit: ; preds = %bb.c
  resume { ptr, i32 } %lpad.thr_comm

bb.c:                                             ; preds = %bb.b
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBZ_(ptr noalias noundef nonnull align 8 dereferenceable(40) %1)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENCNvNtNtB1Y_5class14static_literal27expanded_class_base_entriess0_0EEB20_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #32
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecNtNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder9subscriptNtBM_20TypeInferenceBuilder43infer_explicit_callable_specialization_impl12TypeArgumentE14extend_trustedINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB3D_6copied6CopiedINtNtNtB3H_5slice4iter4IterNtBQ_4TypeEENCNvMBK_B1T_43infer_explicit_callable_specialization_impls1_0EEBS_(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEENtNtNtB8_6traits8iterator8Iterator9size_hintB1v_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i64, ptr %i.c, align 8, !range !28, !noundef !14
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.f = load i64, ptr %i.e, align 8              ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.g = trunc nuw i64 %i.d to i1
  br i1 %i.g, label %bb.b, label %bb.d, !prof !15

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !4113, !noundef !14 ; 3 uses
  %i.j = load i64, ptr %0, align 8, !range !24, !alias.scope !4113, !noundef !14
  %i.k = sub i64 %i.j, %i.i
  %i.l = icmp ugt i64 %i.f, %i.k
  br i1 %i.l, label %bb.c, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder9subscriptNtBK_20TypeInferenceBuilder43infer_explicit_callable_specialization_impl12TypeArgumentE7reserveBQ_.exit, !prof !16

bb.c:                                             ; preds = %bb.b
  call void @_RINvNvMs2_NtCscdodAO9FK5_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.i, i64 noundef %i.f, i64 noundef 8, i64 noundef 32)
  %.pre = load i64, ptr %i.h, align 8
  br label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder9subscriptNtBK_20TypeInferenceBuilder43infer_explicit_callable_specialization_impl12TypeArgumentE7reserveBQ_.exit

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder9subscriptNtBK_20TypeInferenceBuilder43infer_explicit_callable_specialization_impl12TypeArgumentE7reserveBQ_.exit: ; preds = %bb.b, %bb.c
  %i.m = phi i64 [ %i.i, %bb.b ], [ %.pre, %bb.c ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !14, !noundef !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.o, ptr %i.p, align 8
  store ptr %i.h, ptr %i.a, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.m, ptr %i.q, align 8
  call void @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtB8_6copied6CopiedINtNtNtBc_5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEENCNvMNtNtNtB1L_5infer7builder9subscriptNtB2E_20TypeInferenceBuilder43infer_explicit_callable_specialization_impls1_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4q_8for_each4callNtNvMB2C_B3a_43infer_explicit_callable_specialization_impl12TypeArgumentNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6M_3VecB5t_E14extend_trustedBN_E0E0EB1N_(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.d:                                             ; preds = %bb.a
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @4, ptr noundef nonnull inttoptr (i64 35 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #31
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints12ConstraintIdBG_EE16extend_desugaredINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB2i_6filter6FilterINtNtB2i_6copied6CopiedINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set4IterBG_EENCNvMsp_BI_NtBI_12InteriorNode8simplifys0_0ENCB4K_s1_0EEBM_(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(56) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.c = tail call noundef i32 @_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set4IterNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints12ConstraintIdEENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvB36_4find5checkB1U_QNCNvMsp_B1W_NtB1W_12InteriorNode8simplifys0_0E0INtNtNtBb_3ops12control_flow11ControlFlowB1U_EEB20_(ptr noalias noundef nonnull align 8 dereferenceable(56) %1, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b) ; 2 uses
  %.not.i9 = icmp eq i32 %i.c, 0
  br i1 %.not.i9, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints12ConstraintIdBE_EE7reserveBK_.exit
  %i.g = phi i32 [ %i.c, %.lr.ph ], [ %i.t, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints12ConstraintIdBE_EE7reserveBK_.exit ]
  %.val.i = load ptr, ptr %i.d, align 8, !alias.scope !4124, !nonnull !14, !align !17, !noundef !14
  %i.h = load i32, ptr %.val.i, align 4, !range !20, !noundef !14
  %i.i = load i64, ptr %i.e, align 8, !noundef !14 ; 4 uses
  %i.j = icmp ult i64 %i.i, 1152921504606846976
  call void @llvm.assume(i1 %i.j)
  %i.k = load i64, ptr %0, align 8, !range !24, !noundef !14
  %i.l = icmp eq i64 %i.i, %i.k
  br i1 %i.l, label %bb.c, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints12ConstraintIdBE_EE7reserveBK_.exit

._crit_edge:                                      ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints12ConstraintIdBE_EE7reserveBK_.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4125
  call void @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set4IterNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints12ConstraintIdEENtNtNtB8_6traits8iterator8Iterator9size_hintB1Z_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1), !noalias !4126
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4125
  %i.m = load i64, ptr %i.e, align 8, !alias.scope !4127, !noundef !14 ; 2 uses
  %i.n = load i64, ptr %0, align 8, !range !24, !alias.scope !4127, !noundef !14
  %i.o = icmp eq i64 %i.n, %i.m
  br i1 %i.o, label %bb.d, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints12ConstraintIdBE_EE7reserveBK_.exit, !prof !16

bb.d:                                             ; preds = %bb.c
  call void @_RINvNvMs2_NtCscdodAO9FK5_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.m, i64 noundef range(i64 1, 0) 1, i64 noundef 4, i64 noundef 8)
  br label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints12ConstraintIdBE_EE7reserveBK_.exit

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints12ConstraintIdBE_EE7reserveBK_.exit: ; preds = %bb.d, %bb.c, %bb.b
  %i.p = load ptr, ptr %i.f, align 8, !nonnull !14, !noundef !14
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.i ; 2 uses
  store i32 %i.g, ptr %i.q, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  store i32 %i.h, ptr %i.r, align 4
  %i.s = add nuw nsw i64 %i.i, 1
  store i64 %i.s, ptr %i.e, align 8
  %i.t = call noundef i32 @_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set4IterNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints12ConstraintIdEENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvB36_4find5checkB1U_QNCNvMsp_B1W_NtB1W_12InteriorNode8simplifys0_0E0INtNtNtBb_3ops12control_flow11ControlFlowB1U_EEB20_(ptr noalias noundef nonnull align 8 dereferenceable(56) %1, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b) ; 2 uses
  %.not.i = icmp eq i32 %i.t, 0
  br i1 %.not.i, label %._crit_edge, label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecTRNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindingRNtBJ_15CallableBindingINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtBN_8generics14SpecializationEEE16extend_desugaredINtNtNtNtB2c_4iter8adapters3map3MapINtNtB3F_8peekable8PeekableINtNtB3F_6filter6FilterINtNtB3F_9enumerate9EnumerateINtNtNtB2c_5slice4iter4IterBH_EENCNvMs7_BJ_B1L_18matching_overloads0EENCNvNvMs_NtNtBN_5infer7builderNtB6H_20TypeInferenceBuilder35collect_call_arguments_type_context26add_overloads_from_binding0EEBP_(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(96) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 4                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 16               ; 5 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = insertelement <2 x ptr> poison, ptr %i.e, i64 0
  %i.r = insertelement <2 x ptr> %i.q, ptr %i.f, i64 1
  br label %bb.b

bb.b:                                             ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecTRNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindingRNtBH_15CallableBindingINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtBL_8generics14SpecializationEEE7reserveBN_.exit, %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !4161)
  call void @llvm.experimental.noalias.scope.decl(metadata !4162)
  %.sroa.01.0.copyload.i.i = load i64, ptr %1, align 8, !alias.scope !4163
  %.sroa.5.0.copyload.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !4163
  store i64 0, ptr %1, align 8, !alias.scope !4163
  %i.s = trunc nuw i64 %.sroa.01.0.copyload.i.i to i1
  br i1 %i.s, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters8peekableINtB4_8PeekableINtNtB6_6filter6FilterINtNtB6_9enumerate9EnumerateINtNtNtBa_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindingEENCNvMs7_B2l_NtB2l_15CallableBinding18matching_overloads0EENtNtNtB8_6traits8iterator8Iterator4nextB2r_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !4164)
  call void @llvm.experimental.noalias.scope.decl(metadata !4165)
  call void @llvm.experimental.noalias.scope.decl(metadata !4166)
  call void @llvm.experimental.noalias.scope.decl(metadata !4167)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4168
  store <2 x ptr> %i.r, ptr %i.c, align 16, !noalias !4169
  %i.t = load ptr, ptr %i.h, align 8, !alias.scope !4170, !nonnull !14, !noundef !14
  %.promoted.i.i.i.i.i.i = load ptr, ptr %i.d, align 8, !alias.scope !4170
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.u = phi ptr [ %i.w, %bb.e ], [ %.promoted.i.i.i.i.i.i, %bb.c ] ; 4 uses
  %i.v = icmp eq ptr %i.u, %i.t
  br i1 %i.v, label %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filterINtB5_6FilterINtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindingEENCNvMs7_B1W_NtB1W_15CallableBinding18matching_overloads0ENtNtNtB9_6traits8iterator8Iterator4nextB22_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 232 ; 2 uses
  store ptr %i.w, ptr %i.d, align 8, !alias.scope !4170
  call void @llvm.experimental.noalias.scope.decl(metadata !4171)
  %i.x = load ptr, ptr %i.g, align 8, !alias.scope !4171, !noalias !4169, !nonnull !14, !align !18, !noundef !14
  %i.y = load i64, ptr %i.x, align 8, !noalias !4172, !noundef !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4173
  store i64 %i.y, ptr %i.b, align 8, !noalias !4174
  store ptr %i.u, ptr %i.i, align 8, !noalias !4174
  %i.z = call noundef zeroext i1 @_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNvMs7_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtBW_15CallableBinding18matching_overloads0INtB7_5FnMutTRTjRNtBW_7BindingEEE8call_mutB12_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b), !noalias !4175
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4173
  %i.aa = load ptr, ptr %i.g, align 8, !alias.scope !4171, !noalias !4169, !nonnull !14, !align !18, !noundef !14 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !noalias !4175, !noundef !14
  %i.ac = add i64 %i.ab, 1
  store i64 %i.ac, ptr %i.aa, align 8, !noalias !4175
  br i1 %i.z, label %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filterINtB5_6FilterINtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindingEENCNvMs7_B1W_NtB1W_15CallableBinding18matching_overloads0ENtNtNtB9_6traits8iterator8Iterator4nextB22_.exit.i.i, label %bb.d

_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filterINtB5_6FilterINtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindingEENCNvMs7_B1W_NtB1W_15CallableBinding18matching_overloads0ENtNtNtB9_6traits8iterator8Iterator4nextB22_.exit.i.i: ; preds = %bb.e, %bb.d
  %.sroa.3.0.i.i.i.i.i.i = phi ptr [ null, %bb.d ], [ %i.u, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4168
  br label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters8peekableINtB4_8PeekableINtNtB6_6filter6FilterINtNtB6_9enumerate9EnumerateINtNtNtBa_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindingEENCNvMs7_B2l_NtB2l_15CallableBinding18matching_overloads0EENtNtNtB8_6traits8iterator8Iterator4nextB2r_.exit.i

_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters8peekableINtB4_8PeekableINtNtB6_6filter6FilterINtNtB6_9enumerate9EnumerateINtNtNtBa_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindingEENCNvMs7_B2l_NtB2l_15CallableBinding18matching_overloads0EENtNtNtB8_6traits8iterator8Iterator4nextB2r_.exit.i: ; preds = %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filterINtB5_6FilterINtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindingEENCNvMs7_B1W_NtB1W_15CallableBinding18matching_overloads0ENtNtNtB9_6traits8iterator8Iterator4nextB22_.exit.i.i, %bb.b
  %.sroa.5.0.copyload.pn.i.i = phi ptr [ %.sroa.3.0.i.i.i.i.i.i, %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filterINtB5_6FilterINtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindingEENCNvMs7_B1W_NtB1W_15CallableBinding18matching_overloads0ENtNtNtB9_6traits8iterator8Iterator4nextB22_.exit.i.i ], [ %.sroa.5.0.copyload.i.i, %bb.b ] ; 3 uses
  %.not.i = icmp eq ptr %.sroa.5.0.copyload.pn.i.i, null
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters8peekableINtB4_8PeekableINtNtB6_6filter6FilterINtNtB6_9enumerate9EnumerateINtNtNtBa_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindingEENCNvMs7_B2l_NtB2l_15CallableBinding18matching_overloads0EENtNtNtB8_6traits8iterator8Iterator4nextB2r_.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !4176)
  %i.ad = load ptr, ptr %i.e, align 8, !alias.scope !4177, !nonnull !14, !noundef !14
  %i.ae = load ptr, ptr %i.j, align 8, !alias.scope !4177, !nonnull !14, !align !18, !noundef !14
  %i.af = load ptr, ptr %i.k, align 8, !alias.scope !4177, !nonnull !14, !align !17, !noundef !14
  %i.ag = load ptr, ptr %i.l, align 8, !alias.scope !4177, !nonnull !14, !align !18, !noundef !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4178
  %i.ah = load ptr, ptr %i.m, align 8, !alias.scope !4177, !nonnull !14, !align !17, !noundef !14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.a, ptr noundef nonnull align 4 dereferenceable(16) %i.ah, i64 16, i1 false), !noalias !4179
  %i.ai = call { i32, i32 } @_RNvMse_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_7Binding36argument_type_context_specialization(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(232) %.sroa.5.0.copyload.pn.i.i, ptr noundef nonnull %i.ad, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.ae, ptr noundef nonnull align 4 %i.af, ptr noundef nonnull align 8 %i.ag, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(16) %i.a), !noalias !4180 ; 2 uses
  %i.aj = extractvalue { i32, i32 } %i.ai, 0
  %i.ak = extractvalue { i32, i32 } %i.ai, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4178
  %i.al = load ptr, ptr %i.n, align 8, !alias.scope !4177, !nonnull !14, !align !18, !noundef !14
  %i.am = load ptr, ptr %i.al, align 8, !noalias !4180, !nonnull !14, !align !18, !noundef !14
  %i.an = load i64, ptr %i.o, align 8, !noundef !14 ; 5 uses
  %i.ao = icmp ult i64 %i.an, 384307168202282326
  call void @llvm.assume(i1 %i.ao)
  %i.ap = load i64, ptr %0, align 8, !range !24, !noundef !14
  %i.aq = icmp eq i64 %i.an, %i.ap
  br i1 %i.aq, label %bb.h, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecTRNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindingRNtBH_15CallableBindingINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtBL_8generics14SpecializationEEE7reserveBN_.exit

bb.g:                                             ; preds = %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters8peekableINtB4_8PeekableINtNtB6_6filter6FilterINtNtB6_9enumerate9EnumerateINtNtNtBa_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindingEENCNvMs7_B2l_NtB2l_15CallableBinding18matching_overloads0EENtNtNtB8_6traits8iterator8Iterator4nextB2r_.exit.i
  ret void

bb.h:                                             ; preds = %bb.f
  %i.ar = load i64, ptr %1, align 8, !range !28, !alias.scope !4181, !noundef !14
  %i.as = trunc nuw i64 %i.ar to i1
  br i1 %i.as, label %bb.i, label %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtB7_8peekable8PeekableINtNtB7_6filter6FilterINtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindingEENCNvMs7_B2C_NtB2C_15CallableBinding18matching_overloads0EENCNvNvMs_NtNtB2G_5infer7builderNtB4K_20TypeInferenceBuilder35collect_call_arguments_type_context26add_overloads_from_binding0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2I_.exit

bb.i:                                             ; preds = %bb.h
  %i.at = load ptr, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !4181, !align !18, !noundef !14
  %.not.i.i = icmp eq ptr %i.at, null
  %spec.select = select i1 %.not.i.i, i64 1, i64 2
  br label %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtB7_8peekable8PeekableINtNtB7_6filter6FilterINtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindingEENCNvMs7_B2C_NtB2C_15CallableBinding18matching_overloads0EENCNvNvMs_NtNtB2G_5infer7builderNtB4K_20TypeInferenceBuilder35collect_call_arguments_type_context26add_overloads_from_binding0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2I_.exit

_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtB7_8peekable8PeekableINtNtB7_6filter6FilterINtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindingEENCNvMs7_B2C_NtB2C_15CallableBinding18matching_overloads0EENCNvNvMs_NtNtB2G_5infer7builderNtB4K_20TypeInferenceBuilder35collect_call_arguments_type_context26add_overloads_from_binding0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2I_.exit: ; preds = %bb.h, %bb.i
  %.sroa.0.0.sink.i.i = phi i64 [ %spec.select, %bb.i ], [ 1, %bb.h ]
  call void @_RINvNvMs2_NtCscdodAO9FK5_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.an, i64 noundef range(i64 1, 0) %.sroa.0.0.sink.i.i, i64 noundef 8, i64 noundef 24)
  br label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecTRNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindingRNtBH_15CallableBindingINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtBL_8generics14SpecializationEEE7reserveBN_.exit

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecTRNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindingRNtBH_15CallableBindingINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtBL_8generics14SpecializationEEE7reserveBN_.exit: ; preds = %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtB7_8peekable8PeekableINtNtB7_6filter6FilterINtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindingEENCNvMs7_B2C_NtB2C_15CallableBinding18matching_overloads0EENCNvNvMs_NtNtB2G_5infer7builderNtB4K_20TypeInferenceBuilder35collect_call_arguments_type_context26add_overloads_from_binding0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2I_.exit, %bb.f
  %i.au = load ptr, ptr %i.p, align 8, !nonnull !14, !noundef !14
  %i.av = getelementptr inbounds nuw [24 x i8], ptr %i.au, i64 %i.an ; 4 uses
  store ptr %.sroa.5.0.copyload.pn.i.i, ptr %i.av, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store ptr %i.am, ptr %.sroa.410.0..sroa_idx, align 8
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  store i32 %i.aj, ptr %.sroa.511.0..sroa_idx, align 8
  %.sroa.612.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 20
  store i32 %i.ak, ptr %.sroa.612.0..sroa_idx, align 4
  %i.aw = add nuw nsw i64 %i.an, 1
  store i64 %i.aw, ptr %i.o, align 8
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs5e9M2GLoJMY_8indexmap6BucketNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5FieldEEB1X_(ptr noalias noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4196)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4197)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4198)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4199)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 111
  %i.c = load i8, ptr %i.b, align 1, !range !13, !alias.scope !4200, !noundef !14
  %i.d = and i8 %i.c, -2
  %switch.i.i.i.i = icmp eq i8 %i.d, -48
  br i1 %switch.i.i.i.i, label %bb.b, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameECsoTR8nlGN3X_18ty_python_semantic.exit

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4201)
  %.pn.i.i.i.i.i = load ptr, ptr %i.a, align 8, !alias.scope !4202, !nonnull !14, !noundef !14
  %.sroa.0.0.i.i.i.i.i = getelementptr inbounds i8, ptr %.pn.i.i.i.i.i, i64 -8
  %i.e = atomicrmw add ptr %.sroa.0.0.i.i.i.i.i, i64 -1 release, align 8, !noalias !4202
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.c, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameECsoTR8nlGN3X_18ty_python_semantic.exit, !prof !16

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvMNtNtCsj8vhLppEnlJ_8char_str4repr11heap_bufferNtB2_10HeapBuffer22dealloc_last_reference(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameECsoTR8nlGN3X_18ty_python_semantic.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  tail call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5FieldEBH_(ptr noalias noundef align 8 dereferenceable(96) %0) #33
  resume { ptr, i32 } %i.g

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameECsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %bb.b, %bb.a, %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4203)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4204)
  %i.i = load i32, ptr %i.h, align 8, !range !36, !alias.scope !4205, !noundef !14 ; 3 uses
  %i.j = icmp ne i32 %i.i, 38
  tail call void @llvm.assume(i1 %i.j)
  %i.k = add nsw i32 %i.i, -37
  %i.l = icmp sgt i32 %i.i, 36
  %narrow.i.i = select i1 %i.l, i32 %i.k, i32 1
  switch i32 %narrow.i.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5FieldEBH_.exit [
    i32 1, label %bb.e
    i32 2, label %bb.g
  ]

bb.e:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameECsoTR8nlGN3X_18ty_python_semantic.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.val2.i.i = load ptr, ptr %i.m, align 8, !alias.scope !4205, !noundef !14 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.val3.i.i = load i64, ptr %i.n, align 8, !alias.scope !4205 ; 2 uses
  %i.o = icmp eq ptr %.val2.i.i, null
end_hunk_1
begin_hunk_2_@_RNvXNtNtCscdodAO9FK5_5alloc3vec14spec_from_iterINtB4_3VecNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionEINtB2_12SpecFromIterBT_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten7FlatMapINtNtB2i_6copied6CopiedINtNtNtB2m_5slice4iter4IterNtNtBX_5scope7ScopeIdEEINtNtB2i_10filter_map9FilterMapINtNtB2i_3map3MapINtNtB2i_5chain5ChainINtNtNtB2k_7sources4once4OnceTNtNtNtBX_7use_def11place_state18ScopedDefinitionIdNtB5Z_23RetainedDefinitionStateEEIB4Q_INtNtB2i_9enumerate9EnumerateIB3a_IB3x_B6J_EEENCNvMs5_B5Z_NtB5Z_19RetainedDefinitions15iter_enumerated0EENCNvMs8_B5Z_NtB5Z_9UseDefMap26all_definitions_with_usage0ENCNCNvNvXs0_NvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support22unused_binding_support1__NtBaa_30unused_bindings_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute6inner_00ENCBa2_0EE9from_iterBai_:bb.a
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [120 x i8], align 8               ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8555)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !8556
  %i.f = tail call fastcc { i32, i32 } @_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtCs2O29vuvTAEJ_14ty_python_core5scope7ScopeIdEEINtNtB7_10filter_map9FilterMapINtNtB7_3map3MapINtNtB7_5chain5ChainINtNtNtB9_7sources4once4OnceTNtNtNtB1U_7use_def11place_state18ScopedDefinitionIdNtB4f_23RetainedDefinitionStateEEIB39_INtNtB7_9enumerate9EnumerateIB15_IB1r_B50_EEENCNvMs5_B4f_NtB4f_19RetainedDefinitions15iter_enumerated0EENCNvMs8_B4f_NtB4f_9UseDefMap26all_definitions_with_usage0ENCNCNvNvXs0_NvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support22unused_binding_support1__NtB8q_30unused_bindings_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute6inner_00ENCB8i_0ENtNtNtB9_6traits8iterator8Iterator4nextB8y_(ptr noalias noundef nonnull align 8 dereferenceable(120) %1), !noalias !8555 ; 2 uses
  %i.g = extractvalue { i32, i32 } %i.f, 0        ; 2 uses
  %i.h = extractvalue { i32, i32 } %i.f, 1
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !8556
  call fastcc void @_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtCs2O29vuvTAEJ_14ty_python_core5scope7ScopeIdEEINtNtB7_10filter_map9FilterMapINtNtB7_3map3MapINtNtB7_5chain5ChainINtNtNtB9_7sources4once4OnceTNtNtNtB1U_7use_def11place_state18ScopedDefinitionIdNtB4f_23RetainedDefinitionStateEEIB39_INtNtB7_9enumerate9EnumerateIB15_IB1r_B50_EEENCNvMs5_B4f_NtB4f_19RetainedDefinitions15iter_enumerated0EENCNvMs8_B4f_NtB4f_9UseDefMap26all_definitions_with_usage0ENCNCNvNvXs0_NvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support22unused_binding_support1__NtB8q_30unused_bindings_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute6inner_00ENCB8i_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB8y_(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %1), !noalias !8555
  %i.i = load i64, ptr %i.d, align 8, !noalias !8556, !noundef !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !8556
  %i.j = tail call i64 @llvm.uadd.sat.i64(i64 %i.i, i64 1)
  %.sroa.0.0.i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.j, i64 4) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !8556
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %.sroa.0.0.i.i, i1 noundef zeroext false, i64 noundef 4, i64 noundef 8), !noalias !8555
  %i.k = load i64, ptr %i.b, align 8, !range !28, !noalias !8556, !noundef !14
  %i.l = trunc nuw i64 %i.k to i1
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.n = load i64, ptr %i.m, align 8, !range !60, !noalias !8556, !noundef !14 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.l, label %bb.c, label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsoTR8nlGN3X_18ty_python_semantic.exit.i, !prof !16

bb.c:                                             ; preds = %bb.b
  %i.p = load i64, ptr %i.o, align 8, !noalias !8556
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.n, i64 %i.p) #31, !noalias !8555
  unreachable

_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsoTR8nlGN3X_18ty_python_semantic.exit.i: ; preds = %bb.b
  %i.q = load ptr, ptr %i.o, align 8, !noalias !8556, !nonnull !14, !noundef !14 ; 3 uses
  %i.r = icmp ule i64 %.sroa.0.0.i.i, %i.n
  tail call void @llvm.assume(i1 %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !8556
  store i32 %i.g, ptr %i.q, align 4, !noalias !8555
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  store i32 %i.h, ptr %i.s, align 4, !noalias !8555
  store i64 %i.n, ptr %i.e, align 8, !noalias !8556
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr %i.q, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !8556
  %.sroa.64.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 4 uses
  store i64 1, ptr %.sroa.64.0..sroa_idx.i, align 8, !noalias !8556
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !8556
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.c, ptr noundef nonnull align 8 dereferenceable(120) %1, i64 120, i1 false), !noalias !8555
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8557)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8558)
  %i.t = invoke fastcc { i32, i32 } @_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtCs2O29vuvTAEJ_14ty_python_core5scope7ScopeIdEEINtNtB7_10filter_map9FilterMapINtNtB7_3map3MapINtNtB7_5chain5ChainINtNtNtB9_7sources4once4OnceTNtNtNtB1U_7use_def11place_state18ScopedDefinitionIdNtB4f_23RetainedDefinitionStateEEIB39_INtNtB7_9enumerate9EnumerateIB15_IB1r_B50_EEENCNvMs5_B4f_NtB4f_19RetainedDefinitions15iter_enumerated0EENCNvMs8_B4f_NtB4f_9UseDefMap26all_definitions_with_usage0ENCNCNvNvXs0_NvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support22unused_binding_support1__NtB8q_30unused_bindings_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute6inner_00ENCB8i_0ENtNtNtB9_6traits8iterator8Iterator4nextB8y_(ptr noalias noundef nonnull align 8 dereferenceable(120) %i.c)
          to label %.noexc.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !8555 ; 2 uses

.noexc.i:                                         ; preds = %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsoTR8nlGN3X_18ty_python_semantic.exit.i
  %i.u = extractvalue { i32, i32 } %i.t, 0        ; 2 uses
  %.not8.i.i.i = icmp eq i32 %i.u, 0
  br i1 %.not8.i.i.i, label %_RNvXNtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB4_3VecNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionEINtB2_10SpecExtendBQ_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten7FlatMapINtNtB2d_6copied6CopiedINtNtNtB2h_5slice4iter4IterNtNtBU_5scope7ScopeIdEEINtNtB2d_10filter_map9FilterMapINtNtB2d_3map3MapINtNtB2d_5chain5ChainINtNtNtB2f_7sources4once4OnceTNtNtNtBU_7use_def11place_state18ScopedDefinitionIdNtB5U_23RetainedDefinitionStateEEIB4L_INtNtB2d_9enumerate9EnumerateIB35_IB3s_B6E_EEENCNvMs5_B5U_NtB5U_19RetainedDefinitions15iter_enumerated0EENCNvMs8_B5U_NtB5U_9UseDefMap26all_definitions_with_usage0ENCNCNvNvXs0_NvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support22unused_binding_support1__NtBa5_30unused_bindings_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute6inner_00ENCB9X_0EE11spec_extendBad_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.noexc.i, %.noexc11.i
  %.pn.i.i.i = phi { i32, i32 } [ %i.al, %.noexc11.i ], [ %i.t, %.noexc.i ]
  %i.v = phi i32 [ %i.am, %.noexc11.i ], [ %i.u, %.noexc.i ]
  %i.w = extractvalue { i32, i32 } %.pn.i.i.i, 1
  %i.x = load i64, ptr %.sroa.64.0..sroa_idx.i, align 8, !alias.scope !8559, !noalias !8556, !noundef !14 ; 4 uses
  %i.y = icmp ult i64 %i.x, 1152921504606846976
  call void @llvm.assume(i1 %i.y)
  %i.z = load i64, ptr %i.e, align 8, !range !24, !alias.scope !8559, !noalias !8556, !noundef !14
  %i.aa = icmp eq i64 %i.x, %i.z
  br i1 %i.aa, label %bb.d, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionE7reserveCsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8560
  invoke fastcc void @_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtCs2O29vuvTAEJ_14ty_python_core5scope7ScopeIdEEINtNtB7_10filter_map9FilterMapINtNtB7_3map3MapINtNtB7_5chain5ChainINtNtNtB9_7sources4once4OnceTNtNtNtB1U_7use_def11place_state18ScopedDefinitionIdNtB4f_23RetainedDefinitionStateEEIB39_INtNtB7_9enumerate9EnumerateIB15_IB1r_B50_EEENCNvMs5_B4f_NtB4f_19RetainedDefinitions15iter_enumerated0EENCNvMs8_B4f_NtB4f_9UseDefMap26all_definitions_with_usage0ENCNCNvNvXs0_NvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support22unused_binding_support1__NtB8q_30unused_bindings_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute6inner_00ENCB8i_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB8y_(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.c)
          to label %.noexc9.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !8555

.noexc9.i:                                        ; preds = %bb.d
  %i.ab = load i64, ptr %i.a, align 8, !noalias !8560, !noundef !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8560
  %i.ac = call i64 @llvm.uadd.sat.i64(i64 %i.ab, i64 1) ; 2 uses
  %i.ad = load i64, ptr %.sroa.64.0..sroa_idx.i, align 8, !alias.scope !8561, !noalias !8556, !noundef !14 ; 2 uses
  %i.ae = load i64, ptr %i.e, align 8, !range !24, !alias.scope !8561, !noalias !8556, !noundef !14
  %i.af = sub i64 %i.ae, %i.ad
  %i.ag = icmp ugt i64 %i.ac, %i.af
  br i1 %i.ag, label %bb.e, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionE7reserveCsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i, !prof !16

bb.e:                                             ; preds = %.noexc9.i
  invoke void @_RINvNvMs2_NtCscdodAO9FK5_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %i.ad, i64 noundef %i.ac, i64 noundef 4, i64 noundef 8)
          to label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionE7reserveCsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !8555

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionE7reserveCsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i: ; preds = %bb.e, %.noexc9.i, %.lr.ph.i.i.i
  %i.ah = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !8559, !noalias !8556, !nonnull !14, !noundef !14
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.x ; 2 uses
  store i32 %i.v, ptr %i.ai, align 4, !noalias !8555
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  store i32 %i.w, ptr %i.aj, align 4, !noalias !8555
  %i.ak = add nuw nsw i64 %i.x, 1
  store i64 %i.ak, ptr %.sroa.64.0..sroa_idx.i, align 8, !alias.scope !8559, !noalias !8556
  %i.al = invoke fastcc { i32, i32 } @_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtCs2O29vuvTAEJ_14ty_python_core5scope7ScopeIdEEINtNtB7_10filter_map9FilterMapINtNtB7_3map3MapINtNtB7_5chain5ChainINtNtNtB9_7sources4once4OnceTNtNtNtB1U_7use_def11place_state18ScopedDefinitionIdNtB4f_23RetainedDefinitionStateEEIB39_INtNtB7_9enumerate9EnumerateIB15_IB1r_B50_EEENCNvMs5_B4f_NtB4f_19RetainedDefinitions15iter_enumerated0EENCNvMs8_B4f_NtB4f_9UseDefMap26all_definitions_with_usage0ENCNCNvNvXs0_NvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support22unused_binding_support1__NtB8q_30unused_bindings_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute6inner_00ENCB8i_0ENtNtNtB9_6traits8iterator8Iterator4nextB8y_(ptr noalias noundef nonnull align 8 dereferenceable(120) %i.c)
          to label %.noexc11.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !8555 ; 2 uses

.noexc11.i:                                       ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionE7reserveCsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i
  %i.am = extractvalue { i32, i32 } %i.al, 0      ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.am, 0
  br i1 %.not.i.i.i, label %_RNvXNtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB4_3VecNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionEINtB2_10SpecExtendBQ_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten7FlatMapINtNtB2d_6copied6CopiedINtNtNtB2h_5slice4iter4IterNtNtBU_5scope7ScopeIdEEINtNtB2d_10filter_map9FilterMapINtNtB2d_3map3MapINtNtB2d_5chain5ChainINtNtNtB2f_7sources4once4OnceTNtNtNtBU_7use_def11place_state18ScopedDefinitionIdNtB5U_23RetainedDefinitionStateEEIB4L_INtNtB2d_9enumerate9EnumerateIB35_IB3s_B6E_EEENCNvMs5_B5U_NtB5U_19RetainedDefinitions15iter_enumerated0EENCNvMs8_B5U_NtB5U_9UseDefMap26all_definitions_with_usage0ENCNCNvNvXs0_NvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support22unused_binding_support1__NtBa5_30unused_bindings_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute6inner_00ENCB9X_0EE11spec_extendBad_.exit.i, label %.lr.ph.i.i.i

bb.f:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8, !alias.scope !8555
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.an, align 8, !alias.scope !8555
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.ao, align 8, !alias.scope !8555
  br label %_RNvXNtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionEINtB2_18SpecFromIterNestedB10_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten7FlatMapINtNtB2w_6copied6CopiedINtNtNtB2A_5slice4iter4IterNtNtB14_5scope7ScopeIdEEINtNtB2w_10filter_map9FilterMapINtNtB2w_3map3MapINtNtB2w_5chain5ChainINtNtNtB2y_7sources4once4OnceTNtNtNtB14_7use_def11place_state18ScopedDefinitionIdNtB6e_23RetainedDefinitionStateEEIB55_INtNtB2w_9enumerate9EnumerateIB3o_IB3L_B6Z_EEENCNvMs5_B6e_NtB6e_19RetainedDefinitions15iter_enumerated0EENCNvMs8_B6e_NtB6e_9UseDefMap26all_definitions_with_usage0ENCNCNvNvXs0_NvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support22unused_binding_support1__NtBaq_30unused_bindings_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute6inner_00ENCBai_0EE9from_iterBay_.exit

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionE7reserveCsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i, %bb.e, %bb.d, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsoTR8nlGN3X_18ty_python_semantic.exit.i
  %lpad.loopexit.split-lp5 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionEECsoTR8nlGN3X_18ty_python_semantic.exit.i unwind label %bb.g, !noalias !8555

_RNvXNtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB4_3VecNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionEINtB2_10SpecExtendBQ_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten7FlatMapINtNtB2d_6copied6CopiedINtNtNtB2h_5slice4iter4IterNtNtBU_5scope7ScopeIdEEINtNtB2d_10filter_map9FilterMapINtNtB2d_3map3MapINtNtB2d_5chain5ChainINtNtNtB2f_7sources4once4OnceTNtNtNtBU_7use_def11place_state18ScopedDefinitionIdNtB5U_23RetainedDefinitionStateEEIB4L_INtNtB2d_9enumerate9EnumerateIB35_IB3s_B6E_EEENCNvMs5_B5U_NtB5U_19RetainedDefinitions15iter_enumerated0EENCNvMs8_B5U_NtB5U_9UseDefMap26all_definitions_with_usage0ENCNCNvNvXs0_NvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support22unused_binding_support1__NtBa5_30unused_bindings_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute6inner_00ENCB9X_0EE11spec_extendBad_.exit.i: ; preds = %.noexc11.i, %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !8556
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !8562
  br label %_RNvXNtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionEINtB2_18SpecFromIterNestedB10_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten7FlatMapINtNtB2w_6copied6CopiedINtNtNtB2A_5slice4iter4IterNtNtB14_5scope7ScopeIdEEINtNtB2w_10filter_map9FilterMapINtNtB2w_3map3MapINtNtB2w_5chain5ChainINtNtNtB2y_7sources4once4OnceTNtNtNtB14_7use_def11place_state18ScopedDefinitionIdNtB6e_23RetainedDefinitionStateEEIB55_INtNtB2w_9enumerate9EnumerateIB3o_IB3L_B6Z_EEENCNvMs5_B6e_NtB6e_19RetainedDefinitions15iter_enumerated0EENCNvMs8_B6e_NtB6e_9UseDefMap26all_definitions_with_usage0ENCNCNvNvXs0_NvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support22unused_binding_support1__NtBaq_30unused_bindings_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute6inner_00ENCBai_0EE9from_iterBay_.exit

bb.g:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #32, !noalias !8555
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionEECsoTR8nlGN3X_18ty_python_semantic.exit.i: ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  resume { ptr, i32 } %lpad.loopexit.split-lp5

_RNvXNtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionEINtB2_18SpecFromIterNestedB10_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten7FlatMapINtNtB2w_6copied6CopiedINtNtNtB2A_5slice4iter4IterNtNtB14_5scope7ScopeIdEEINtNtB2w_10filter_map9FilterMapINtNtB2w_3map3MapINtNtB2w_5chain5ChainINtNtNtB2y_7sources4once4OnceTNtNtNtB14_7use_def11place_state18ScopedDefinitionIdNtB6e_23RetainedDefinitionStateEEIB55_INtNtB2w_9enumerate9EnumerateIB3o_IB3L_B6Z_EEENCNvMs5_B6e_NtB6e_19RetainedDefinitions15iter_enumerated0EENCNvMs8_B6e_NtB6e_9UseDefMap26all_definitions_with_usage0ENCNCNvNvXs0_NvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support22unused_binding_support1__NtBaq_30unused_bindings_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute6inner_00ENCBai_0EE9from_iterBay_.exit: ; preds = %bb.f, %_RNvXNtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB4_3VecNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionEINtB2_10SpecExtendBQ_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten7FlatMapINtNtB2d_6copied6CopiedINtNtNtB2h_5slice4iter4IterNtNtBU_5scope7ScopeIdEEINtNtB2d_10filter_map9FilterMapINtNtB2d_3map3MapINtNtB2d_5chain5ChainINtNtNtB2f_7sources4once4OnceTNtNtNtBU_7use_def11place_state18ScopedDefinitionIdNtB5U_23RetainedDefinitionStateEEIB4L_INtNtB2d_9enumerate9EnumerateIB35_IB3s_B6E_EEENCNvMs5_B5U_NtB5U_19RetainedDefinitions15iter_enumerated0EENCNvMs8_B5U_NtB5U_9UseDefMap26all_definitions_with_usage0ENCNCNvNvXs0_NvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support22unused_binding_support1__NtBa5_30unused_bindings_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute6inner_00ENCB9X_0EE11spec_extendBad_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !8556
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCscdodAO9FK5_5alloc3vec14spec_from_iterINtB4_3VecNtNtCs2O29vuvTAEJ_14ty_python_core9predicate17ScopedPredicateIdEINtB2_12SpecFromIterBT_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map9FilterMapINtNtB2n_3map3MapINtNtB2n_9enumerate9EnumerateINtNtNtB2r_5slice4iter4IterNtBV_9PredicateEENCNvMNtCsipcY9BhxV6q_10ruff_index5sliceINtB4R_10IndexSliceBT_B4v_E15iter_enumerated0ENCNvNvXs0_NvNtCsoTR8nlGN3X_18ty_python_semantic12reachabilitys1_1__NtB6j_43non_terminal_call_predicates_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute6inner_0EE9from_iterB6n_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8570)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !8571
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = tail call { i32, i32 } @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterNtNtCs2O29vuvTAEJ_14ty_python_core9predicate9PredicateEENCNvMNtCsipcY9BhxV6q_10ruff_index5sliceINtB2O_10IndexSliceNtB1R_17ScopedPredicateIdB1P_E15iter_enumerated0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB4s_8find_map5checkTB3F_RB1P_EB3F_QNCNvNvXs0_NvNtCsoTR8nlGN3X_18ty_python_semantic12reachabilitys1_1__NtB60_43non_terminal_call_predicates_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute6inner_0E0INtNtNtBc_3ops12control_flow11ControlFlowB3F_EEB64_(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull %i.d), !noalias !8570 ; 2 uses
  %i.f = extractvalue { i32, i32 } %i.e, 0
  %i.g = trunc i32 %i.f to i1
  %i.h = extractvalue { i32, i32 } %i.e, 1
  br i1 %i.g, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8571
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 4, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4), !noalias !8570
  %i.i = load i64, ptr %i.a, align 8, !range !28, !noalias !8571, !noundef !14
  %i.j = trunc nuw i64 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.l = load i64, ptr %i.k, align 8, !range !60, !noalias !8571, !noundef !14 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.j, label %bb.c, label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsoTR8nlGN3X_18ty_python_semantic.exit.i, !prof !16

bb.c:                                             ; preds = %bb.b
  %i.n = load i64, ptr %i.m, align 8, !noalias !8571
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.l, i64 %i.n) #31, !noalias !8570
  unreachable

_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsoTR8nlGN3X_18ty_python_semantic.exit.i: ; preds = %bb.b
  %i.o = load ptr, ptr %i.m, align 8, !noalias !8571, !nonnull !14, !noundef !14 ; 2 uses
  %i.p = icmp ugt i64 %i.l, 3
  tail call void @llvm.assume(i1 %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8571
  store i32 %i.h, ptr %i.o, align 4, !noalias !8570
  store i64 %i.l, ptr %i.c, align 8, !noalias !8571
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %i.o, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !8571
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !8571
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !8571
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !noalias !8570
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.r = invoke { i32, i32 } @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterNtNtCs2O29vuvTAEJ_14ty_python_core9predicate9PredicateEENCNvMNtCsipcY9BhxV6q_10ruff_index5sliceINtB2O_10IndexSliceNtB1R_17ScopedPredicateIdB1P_E15iter_enumerated0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB4s_8find_map5checkTB3F_RB1P_EB3F_QNCNvNvXs0_NvNtCsoTR8nlGN3X_18ty_python_semantic12reachabilitys1_1__NtB60_43non_terminal_call_predicates_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute6inner_0E0INtNtNtBc_3ops12control_flow11ControlFlowB3F_EEB64_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, ptr noalias noundef nonnull %i.q)
          to label %.noexc.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !8570 ; 2 uses

.noexc.i:                                         ; preds = %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsoTR8nlGN3X_18ty_python_semantic.exit.i
  %i.s = extractvalue { i32, i32 } %i.r, 0
  %i.t = trunc i32 %i.s to i1
  br i1 %i.t, label %.lr.ph.i.i.i, label %_RNvXNtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB4_3VecNtNtCs2O29vuvTAEJ_14ty_python_core9predicate17ScopedPredicateIdEINtB2_10SpecExtendBQ_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map9FilterMapINtNtB2i_3map3MapINtNtB2i_9enumerate9EnumerateINtNtNtB2m_5slice4iter4IterNtBS_9PredicateEENCNvMNtCsipcY9BhxV6q_10ruff_index5sliceINtB4M_10IndexSliceBQ_B4q_E15iter_enumerated0ENCNvNvXs0_NvNtCsoTR8nlGN3X_18ty_python_semantic12reachabilitys1_1__NtB6e_43non_terminal_call_predicates_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute6inner_0EE11spec_extendB6i_.exit.i

.lr.ph.i.i.i:                                     ; preds = %.noexc.i, %.noexc9.i
  %.pn.i.i.i = phi { i32, i32 } [ %i.ab, %.noexc9.i ], [ %i.r, %.noexc.i ]
  %.sroa.3.0.i.i8.i.i.i = extractvalue { i32, i32 } %.pn.i.i.i, 1
  %i.u = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !8572, !noalias !8571, !noundef !14 ; 5 uses
  %i.v = icmp ult i64 %i.u, 2305843009213693952
  call void @llvm.assume(i1 %i.v)
  %i.w = load i64, ptr %i.c, align 8, !range !24, !alias.scope !8572, !noalias !8571, !noundef !14
  %i.x = icmp eq i64 %i.u, %i.w
  br i1 %i.x, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCs2O29vuvTAEJ_14ty_python_core9predicate17ScopedPredicateIdE7reserveCsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i, label %.noexc8.i

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCs2O29vuvTAEJ_14ty_python_core9predicate17ScopedPredicateIdE7reserveCsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  invoke void @_RINvNvMs2_NtCscdodAO9FK5_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.u, i64 noundef range(i64 1, 0) 1, i64 noundef 4, i64 noundef 4)
          to label %.noexc8.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !8570

.noexc8.i:                                        ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCs2O29vuvTAEJ_14ty_python_core9predicate17ScopedPredicateIdE7reserveCsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i, %.lr.ph.i.i.i
  %i.y = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !8572, !noalias !8571, !nonnull !14, !noundef !14
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.u
  store i32 %.sroa.3.0.i.i8.i.i.i, ptr %i.z, align 4, !noalias !8570
  %i.aa = add nuw nsw i64 %i.u, 1
  store i64 %i.aa, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !8572, !noalias !8571
  %i.ab = invoke { i32, i32 } @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterNtNtCs2O29vuvTAEJ_14ty_python_core9predicate9PredicateEENCNvMNtCsipcY9BhxV6q_10ruff_index5sliceINtB2O_10IndexSliceNtB1R_17ScopedPredicateIdB1P_E15iter_enumerated0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB4s_8find_map5checkTB3F_RB1P_EB3F_QNCNvNvXs0_NvNtCsoTR8nlGN3X_18ty_python_semantic12reachabilitys1_1__NtB60_43non_terminal_call_predicates_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute6inner_0E0INtNtNtBc_3ops12control_flow11ControlFlowB3F_EEB64_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, ptr noalias noundef nonnull %i.q)
          to label %.noexc9.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !8570 ; 2 uses

.noexc9.i:                                        ; preds = %.noexc8.i
  %i.ac = extractvalue { i32, i32 } %i.ab, 0
  %i.ad = trunc i32 %i.ac to i1
  br i1 %i.ad, label %.lr.ph.i.i.i, label %_RNvXNtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB4_3VecNtNtCs2O29vuvTAEJ_14ty_python_core9predicate17ScopedPredicateIdEINtB2_10SpecExtendBQ_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map9FilterMapINtNtB2i_3map3MapINtNtB2i_9enumerate9EnumerateINtNtNtB2m_5slice4iter4IterNtBS_9PredicateEENCNvMNtCsipcY9BhxV6q_10ruff_index5sliceINtB4M_10IndexSliceBQ_B4q_E15iter_enumerated0ENCNvNvXs0_NvNtCsoTR8nlGN3X_18ty_python_semantic12reachabilitys1_1__NtB6e_43non_terminal_call_predicates_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute6inner_0EE11spec_extendB6i_.exit.i

bb.d:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8, !alias.scope !8570
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.ae, align 8, !alias.scope !8570
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.af, align 8, !alias.scope !8570
  br label %_RNvXNtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtCs2O29vuvTAEJ_14ty_python_core9predicate17ScopedPredicateIdEINtB2_18SpecFromIterNestedB10_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map9FilterMapINtNtB2B_3map3MapINtNtB2B_9enumerate9EnumerateINtNtNtB2F_5slice4iter4IterNtB12_9PredicateEENCNvMNtCsipcY9BhxV6q_10ruff_index5sliceINtB56_10IndexSliceB10_B4J_E15iter_enumerated0ENCNvNvXs0_NvNtCsoTR8nlGN3X_18ty_python_semantic12reachabilitys1_1__NtB6z_43non_terminal_call_predicates_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute6inner_0EE9from_iterB6D_.exit

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc8.i, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCs2O29vuvTAEJ_14ty_python_core9predicate17ScopedPredicateIdE7reserveCsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsoTR8nlGN3X_18ty_python_semantic.exit.i
  %lpad.loopexit.split-lp2 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs2O29vuvTAEJ_14ty_python_core9predicate17ScopedPredicateIdENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs2O29vuvTAEJ_14ty_python_core9predicate17ScopedPredicateIdEECsoTR8nlGN3X_18ty_python_semantic.exit.i unwind label %bb.e, !noalias !8570

_RNvXNtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB4_3VecNtNtCs2O29vuvTAEJ_14ty_python_core9predicate17ScopedPredicateIdEINtB2_10SpecExtendBQ_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map9FilterMapINtNtB2i_3map3MapINtNtB2i_9enumerate9EnumerateINtNtNtB2m_5slice4iter4IterNtBS_9PredicateEENCNvMNtCsipcY9BhxV6q_10ruff_index5sliceINtB4M_10IndexSliceBQ_B4q_E15iter_enumerated0ENCNvNvXs0_NvNtCsoTR8nlGN3X_18ty_python_semantic12reachabilitys1_1__NtB6e_43non_terminal_call_predicates_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute6inner_0EE11spec_extendB6i_.exit.i: ; preds = %.noexc9.i, %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !8571
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !8573
  br label %_RNvXNtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtCs2O29vuvTAEJ_14ty_python_core9predicate17ScopedPredicateIdEINtB2_18SpecFromIterNestedB10_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map9FilterMapINtNtB2B_3map3MapINtNtB2B_9enumerate9EnumerateINtNtNtB2F_5slice4iter4IterNtB12_9PredicateEENCNvMNtCsipcY9BhxV6q_10ruff_index5sliceINtB56_10IndexSliceB10_B4J_E15iter_enumerated0ENCNvNvXs0_NvNtCsoTR8nlGN3X_18ty_python_semantic12reachabilitys1_1__NtB6z_43non_terminal_call_predicates_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute6inner_0EE9from_iterB6D_.exit

bb.e:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #32, !noalias !8570
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs2O29vuvTAEJ_14ty_python_core9predicate17ScopedPredicateIdEECsoTR8nlGN3X_18ty_python_semantic.exit.i: ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  resume { ptr, i32 } %lpad.loopexit.split-lp2

_RNvXNtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtCs2O29vuvTAEJ_14ty_python_core9predicate17ScopedPredicateIdEINtB2_18SpecFromIterNestedB10_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map9FilterMapINtNtB2B_3map3MapINtNtB2B_9enumerate9EnumerateINtNtNtB2F_5slice4iter4IterNtB12_9PredicateEENCNvMNtCsipcY9BhxV6q_10ruff_index5sliceINtB56_10IndexSliceB10_B4J_E15iter_enumerated0ENCNvNvXs0_NvNtCsoTR8nlGN3X_18ty_python_semantic12reachabilitys1_1__NtB6z_43non_terminal_call_predicates_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute6inner_0EE9from_iterB6D_.exit: ; preds = %bb.d, %_RNvXNtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB4_3VecNtNtCs2O29vuvTAEJ_14ty_python_core9predicate17ScopedPredicateIdEINtB2_10SpecExtendBQ_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map9FilterMapINtNtB2i_3map3MapINtNtB2i_9enumerate9EnumerateINtNtNtB2m_5slice4iter4IterNtBS_9PredicateEENCNvMNtCsipcY9BhxV6q_10ruff_index5sliceINtB4M_10IndexSliceBQ_B4q_E15iter_enumerated0ENCNvNvXs0_NvNtCsoTR8nlGN3X_18ty_python_semantic12reachabilitys1_1__NtB6e_43non_terminal_call_predicates_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute6inner_0EE11spec_extendB6i_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !8571
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCscdodAO9FK5_5alloc3vec14spec_from_iterINtB4_3VecNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditEINtB2_12SpecFromIterBT_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainINtNtNtB28_7sources4once4OnceBT_EINtNtB26_3map3MapIB22_INtNtNtB2a_5slice4iter4IterNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8function15OverloadLiteralEINtNtNtB2a_5array4iter8IntoIterRB4d_Kj1_EENCNvNtB4h_10diagnostic30report_overridden_final_methods_0EEE9from_iterB4j_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(112) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [112 x i8], align 8               ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8606)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !8607
  %i.e = load i64, ptr %1, align 8, !range !29, !alias.scope !8608, !noundef !14 ; 7 uses
  %.not.i.i = icmp eq i64 %i.e, 2                 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = load i64, ptr %i.f, align 8, !range !29, !alias.scope !8608, !noundef !14 ; 5 uses
  %.not8.i.i = icmp eq i64 %i.g, 2                ; 4 uses
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %.not8.i.i, label %.thread10.i, label %bb.i

bb.c:                                             ; preds = %bb.a
  br i1 %.not8.i.i, label %.thread10.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !8609, !noundef !14 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.i, null
  %i.j = trunc nuw i64 %i.g to i1                 ; 2 uses
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  br i1 %i.j, label %bb.n, label %bb.h

bb.f:                                             ; preds = %bb.d
  br i1 %i.j, label %bb.g, label %.thread10.i

bb.g:                                             ; preds = %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val10.i.i.i.i = load i64, ptr %i.k, align 8, !alias.scope !8609, !noundef !14
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.val11.i.i.i.i = load i64, ptr %i.l, align 8, !alias.scope !8609, !noundef !14
  %i.m = sub nuw i64 %.val11.i.i.i.i, %.val10.i.i.i.i
  br label %.thread10.i

bb.h:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.val13.i.i.i.i = load ptr, ptr %i.n, align 8, !alias.scope !8609, !nonnull !14, !noundef !14
  %i.o = ptrtoint ptr %.val13.i.i.i.i to i64
  %i.p = ptrtoint ptr %i.i to i64
  %i.q = sub nuw i64 %i.o, %i.p
  %i.r = lshr exact i64 %i.q, 3
  br label %.thread10.i

bb.i:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !8610, !noundef !14 ; 3 uses
  %.not.i.i12.i.i = icmp eq ptr %i.t, null
  %i.u = trunc nuw i64 %i.g to i1                 ; 2 uses
  br i1 %.not.i.i12.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  br i1 %i.u, label %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtB7_5chain5ChainINtNtNtBb_5slice4iter4IterNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8function15OverloadLiteralEINtNtNtBb_5array4iter8IntoIterRB1G_Kj1_EENCNvNtB1K_10diagnostic30report_overridden_final_methods_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1M_.exit23.i.i, label %bb.m

bb.k:                                             ; preds = %bb.i
  br i1 %i.u, label %bb.l, label %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtB7_5chain5ChainINtNtNtBb_5slice4iter4IterNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8function15OverloadLiteralEINtNtNtBb_5array4iter8IntoIterRB1G_Kj1_EENCNvNtB1K_10diagnostic30report_overridden_final_methods_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1M_.exit23.thread.i.i

bb.l:                                             ; preds = %bb.k
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val10.i.i21.i.i = load i64, ptr %i.v, align 8, !alias.scope !8610, !noundef !14
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.val11.i.i22.i.i = load i64, ptr %i.w, align 8, !alias.scope !8610, !noundef !14
  %i.x = sub nuw i64 %.val11.i.i22.i.i, %.val10.i.i21.i.i
  br label %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtB7_5chain5ChainINtNtNtBb_5slice4iter4IterNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8function15OverloadLiteralEINtNtNtBb_5array4iter8IntoIterRB1G_Kj1_EENCNvNtB1K_10diagnostic30report_overridden_final_methods_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1M_.exit23.thread.i.i

bb.m:                                             ; preds = %bb.j
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.val13.i.i13.i.i = load ptr, ptr %i.y, align 8, !alias.scope !8610, !nonnull !14, !noundef !14
  %i.z = ptrtoint ptr %.val13.i.i13.i.i to i64
  %i.aa = ptrtoint ptr %i.t to i64
  %i.ab = sub nuw i64 %i.z, %i.aa
  %i.ac = lshr exact i64 %i.ab, 3
  br label %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtB7_5chain5ChainINtNtNtBb_5slice4iter4IterNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8function15OverloadLiteralEINtNtNtBb_5array4iter8IntoIterRB1G_Kj1_EENCNvNtB1K_10diagnostic30report_overridden_final_methods_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1M_.exit23.thread.i.i

_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtB7_5chain5ChainINtNtNtBb_5slice4iter4IterNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8function15OverloadLiteralEINtNtNtBb_5array4iter8IntoIterRB1G_Kj1_EENCNvNtB1K_10diagnostic30report_overridden_final_methods_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1M_.exit23.i.i: ; preds = %bb.j
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.val15.i.i17.i.i = load ptr, ptr %i.ae, align 8, !alias.scope !8610, !nonnull !14, !noundef !14
  %i.af = ptrtoint ptr %.val15.i.i17.i.i to i64
  %i.ag = ptrtoint ptr %i.t to i64
  %i.ah = sub nuw i64 %i.af, %i.ag
  %i.ai = lshr exact i64 %i.ah, 3                 ; 2 uses
  %.val.i.i18.i.i = load i64, ptr %i.ad, align 8, !alias.scope !8610, !noundef !14
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.val9.i.i19.i.i = load i64, ptr %i.aj, align 8, !alias.scope !8610, !noundef !14
  %i.ak = sub nuw i64 %.val9.i.i19.i.i, %.val.i.i18.i.i
  %i.al = add i64 %i.ai, %i.ak                    ; 2 uses
  %i.am = icmp uge i64 %i.al, %i.ai
  br label %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtB7_5chain5ChainINtNtNtBb_5slice4iter4IterNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8function15OverloadLiteralEINtNtNtBb_5array4iter8IntoIterRB1G_Kj1_EENCNvNtB1K_10diagnostic30report_overridden_final_methods_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1M_.exit23.thread.i.i

_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtB7_5chain5ChainINtNtNtBb_5slice4iter4IterNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8function15OverloadLiteralEINtNtNtBb_5array4iter8IntoIterRB1G_Kj1_EENCNvNtB1K_10diagnostic30report_overridden_final_methods_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1M_.exit23.thread.i.i: ; preds = %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtB7_5chain5ChainINtNtNtBb_5slice4iter4IterNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8function15OverloadLiteralEINtNtNtBb_5array4iter8IntoIterRB1G_Kj1_EENCNvNtB1K_10diagnostic30report_overridden_final_methods_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1M_.exit23.i.i, %bb.m, %bb.l, %bb.k
  %.sink41.i.i = phi i64 [ %i.al, %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtB7_5chain5ChainINtNtNtBb_5slice4iter4IterNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8function15OverloadLiteralEINtNtNtBb_5array4iter8IntoIterRB1G_Kj1_EENCNvNtB1K_10diagnostic30report_overridden_final_methods_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1M_.exit23.i.i ], [ 0, %bb.k ], [ %i.x, %bb.l ], [ %i.ac, %bb.m ]
  %.8.sink.i.i1535.i.i = phi i1 [ %i.am, %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtB7_5chain5ChainINtNtNtBb_5slice4iter4IterNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8function15OverloadLiteralEINtNtNtBb_5array4iter8IntoIterRB1G_Kj1_EENCNvNtB1K_10diagnostic30report_overridden_final_methods_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1M_.exit23.i.i ], [ true, %bb.k ], [ true, %bb.l ], [ true, %bb.m ]
  %i.an = add i64 %.sink41.i.i, %i.e              ; 2 uses
  %i.ao = icmp uge i64 %i.an, %i.e
  %narrow.i.i = select i1 %.8.sink.i.i1535.i.i, i1 %i.ao, i1 false
  br i1 %narrow.i.i, label %.thread10.i, label %bb.p, !prof !65

bb.n:                                             ; preds = %bb.e
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.val15.i.i.i.i = load ptr, ptr %i.aq, align 8, !alias.scope !8609, !nonnull !14, !noundef !14
  %i.ar = ptrtoint ptr %.val15.i.i.i.i to i64
  %i.as = ptrtoint ptr %i.i to i64
  %i.at = sub nuw i64 %i.ar, %i.as
  %i.au = lshr exact i64 %i.at, 3                 ; 2 uses
  %.val.i.i.i.i = load i64, ptr %i.ap, align 8, !alias.scope !8609, !noundef !14
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.val9.i.i.i.i = load i64, ptr %i.av, align 8, !alias.scope !8609, !noundef !14
  %i.aw = sub nuw i64 %.val9.i.i.i.i, %.val.i.i.i.i
  %i.ax = add i64 %i.au, %i.aw                    ; 2 uses
  %.not.i = icmp ult i64 %i.ax, %i.au
  br i1 %.not.i, label %bb.p, label %.thread10.i, !prof !66

.thread10.i:                                      ; preds = %bb.n, %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtB7_5chain5ChainINtNtNtBb_5slice4iter4IterNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8function15OverloadLiteralEINtNtNtBb_5array4iter8IntoIterRB1G_Kj1_EENCNvNtB1K_10diagnostic30report_overridden_final_methods_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1M_.exit23.thread.i.i, %bb.h, %bb.g, %bb.f, %bb.c, %bb.b
  %.sink.i14.i = phi i64 [ %i.an, %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtB7_5chain5ChainINtNtNtBb_5slice4iter4IterNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8function15OverloadLiteralEINtNtNtBb_5array4iter8IntoIterRB1G_Kj1_EENCNvNtB1K_10diagnostic30report_overridden_final_methods_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1M_.exit23.thread.i.i ], [ %i.ax, %bb.n ], [ 0, %bb.c ], [ %i.m, %bb.g ], [ %i.r, %bb.h ], [ 0, %bb.f ], [ %i.e, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !8607
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %.sink.i14.i, i1 noundef zeroext false, i64 noundef 8, i64 noundef 24)
          to label %.noexc.i unwind label %bb.am, !noalias !8607

.noexc.i:                                         ; preds = %.thread10.i
  %i.ay = load i64, ptr %i.c, align 8, !range !28, !noalias !8607, !noundef !14
  %i.az = trunc nuw i64 %i.ay to i1
  %i.ba = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.bb = load i64, ptr %i.ba, align 8, !range !60, !noalias !8607, !noundef !14 ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.az, label %bb.o, label %bb.q, !prof !16

bb.o:                                             ; preds = %.noexc.i
  %i.bd = load i64, ptr %i.bc, align 8, !noalias !8607
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.bb, i64 %i.bd) #31
          to label %.noexc3.i unwind label %bb.am, !noalias !8607

.noexc3.i:                                        ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %bb.n, %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtB7_5chain5ChainINtNtNtBb_5slice4iter4IterNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8function15OverloadLiteralEINtNtNtBb_5array4iter8IntoIterRB1G_Kj1_EENCNvNtB1K_10diagnostic30report_overridden_final_methods_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1M_.exit23.thread.i.i
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @4, ptr noundef nonnull inttoptr (i64 35 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @64) #31
          to label %bb.ak unwind label %bb.am, !noalias !8607

bb.q:                                             ; preds = %.noexc.i
  %i.be = load ptr, ptr %i.bc, align 8, !noalias !8607, !nonnull !14, !noundef !14 ; 4 uses
  %i.bf = icmp ule i64 %.sink.i14.i, %i.bb
end_hunk_2
begin_hunk_3_@_RNvXNtNtCscdodAO9FK5_5alloc3vec14spec_from_iterINtB4_3VecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class14ProtocolMemberEINtB2_12SpecFromIterBT_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtNtB6_11collections5btree3map4IterNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtBV_18ProtocolMemberDataENCNvMs4_BV_NtBV_21ProtocolInterfaceView7members0EE9from_iterBZ_:bb.a
_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class14ProtocolMemberEEB1d_.exit.i: ; preds = %bb.c
  resume { ptr, i32 } %i.q

_RNvXs_NtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class14ProtocolMemberEINtB4_18SpecFromIterNestedB12_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtNtB8_11collections5btree3map4IterNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtB14_18ProtocolMemberDataENCNvMs4_B14_NtB14_21ProtocolInterfaceView7members0EE9from_iterB18_.exit: ; preds = %_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class14ProtocolMemberE14extend_trustedINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtNtB8_11collections5btree3map4IterNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtBH_18ProtocolMemberDataENCNvMs4_BH_NtBH_21ProtocolInterfaceView7members0EEBL_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !19779
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !19777
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !19778
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCscdodAO9FK5_5alloc3vec14spec_from_iterINtB4_3VecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class12ClassLiteralEINtB2_12SpecFromIterBT_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB2p_10filter_map9FilterMapNtNtBX_3mro11MroIteratorNvMNtBX_10class_baseNtB44_9ClassBase10into_classENCNvNvXs0_NvBX_sb_1__NtB4Y_33class_mro_literals_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute6inner_0EE9from_iterBZ_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(72) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 4                ; 4 uses
  %i.b = alloca [12 x i8], align 4                ; 6 uses
  %i.c = alloca [16 x i8], align 4                ; 13 uses
  %i.d = alloca [8 x i8], align 8                 ; 7 uses
  %i.e = alloca [12 x i8], align 4                ; 5 uses
  %i.f = alloca [12 x i8], align 4                ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [16 x i8], align 4                ; 4 uses
  %i.i = alloca [12 x i8], align 4                ; 6 uses
  %i.j = alloca [16 x i8], align 4                ; 10 uses
  %i.k = alloca [8 x i8], align 8                 ; 5 uses
  %i.l = alloca [12 x i8], align 4                ; 5 uses
  %i.m = alloca [72 x i8], align 8                ; 7 uses
  %i.n = alloca [12 x i8], align 4                ; 5 uses
  %i.o = alloca [24 x i8], align 8                ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19832)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19833)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !19834
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19835)
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 72
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !19836
  store ptr %i.q, ptr %i.k, align 8, !noalias !19837
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !19837
  call void @_RNvXs4_NtNtCsoTR8nlGN3X_18ty_python_semantic5types3mroNtB5_11MroIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %i.j, ptr noalias noundef nonnull align 8 dereferenceable(56) %i.p), !noalias !19838
  %i.r = load i8, ptr %i.j, align 4, !range !71, !noalias !19837, !noundef !14
  %.not15.i.i.i.i.i = icmp eq i8 %i.r, -1
  br i1 %.not15.i.i.i.i.i, label %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtB7_10filter_map9FilterMapNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types3mro11MroIteratorNvMNtB1u_10class_baseNtB2t_9ClassBase10into_classENCNvNvXs0_NvB1u_sb_1__NtB3o_33class_mro_literals_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute6inner_0ENtNtNtB9_6traits8iterator8Iterator4nextB1w_.exit.thread.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !19839
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.h, ptr noundef nonnull align 4 dereferenceable(16) %i.j, i64 16, i1 false), !noalias !19837
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !19839
  call void @_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_baseNtBR_9ClassBase10into_classINtB7_5FnMutTB1K_EE8call_mutBV_(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(address) dereferenceable(12) %i.i, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.k, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %i.h), !noalias !19840
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !19839
  %i.s = load i32, ptr %i.i, align 4, !range !19841, !noalias !19839, !noundef !14 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.s, -2
  br i1 %.not.i.i.i.i.i.i, label %bb.b, label %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtB7_10filter_map9FilterMapNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types3mro11MroIteratorNvMNtB1u_10class_baseNtB2t_9ClassBase10into_classENCNvNvXs0_NvB1u_sb_1__NtB3o_33class_mro_literals_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute6inner_0ENtNtNtB9_6traits8iterator8Iterator4nextB1w_.exit.i

bb.b:                                             ; preds = %.lr.ph.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !19839
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !19837
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !19837
  call void @_RNvXs4_NtNtCsoTR8nlGN3X_18ty_python_semantic5types3mroNtB5_11MroIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %i.j, ptr noalias noundef nonnull align 8 dereferenceable(56) %i.p), !noalias !19838
  %i.t = load i8, ptr %i.j, align 4, !range !71, !noalias !19837, !noundef !14
  %.not.i.i.i.i.i = icmp eq i8 %i.t, -1
  br i1 %.not.i.i.i.i.i, label %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtB7_10filter_map9FilterMapNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types3mro11MroIteratorNvMNtB1u_10class_baseNtB2t_9ClassBase10into_classENCNvNvXs0_NvB1u_sb_1__NtB3o_33class_mro_literals_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute6inner_0ENtNtNtB9_6traits8iterator8Iterator4nextB1w_.exit.thread.i, label %.lr.ph.i.i.i.i.i

_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtB7_10filter_map9FilterMapNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types3mro11MroIteratorNvMNtB1u_10class_baseNtB2t_9ClassBase10into_classENCNvNvXs0_NvB1u_sb_1__NtB3o_33class_mro_literals_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute6inner_0ENtNtNtB9_6traits8iterator8Iterator4nextB1w_.exit.thread.i: ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !19837
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !19836
  br label %bb.g

_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtB7_10filter_map9FilterMapNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types3mro11MroIteratorNvMNtB1u_10class_baseNtB2t_9ClassBase10into_classENCNvNvXs0_NvB1u_sb_1__NtB3o_33class_mro_literals_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute6inner_0ENtNtNtB9_6traits8iterator8Iterator4nextB1w_.exit.i: ; preds = %.lr.ph.i.i.i.i.i
  %.sroa.6.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %.sroa.6.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i, align 4, !noalias !19842
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !19839
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !19837
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !19836
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !19843
  store i32 %i.s, ptr %i.l, align 4, !noalias !19843
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  store i64 %.sroa.6.0.copyload.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i, align 4, !noalias !19843
  %.val.i.i = load ptr, ptr %1, align 8, !alias.scope !19844, !nonnull !14, !noundef !14
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1.i.i = load ptr, ptr %i.u, align 8, !alias.scope !19844, !nonnull !14, !align !18, !noundef !14
  call void @_RNvMs1g_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtB6_9ClassType13class_literal(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.n, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.l, ptr noundef nonnull %.val.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %.val1.i.i), !noalias !19832
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !19843
  %.pr.i = load i32, ptr %i.n, align 4, !noalias !19834
  %.not.i = icmp eq i32 %.pr.i, -1
  br i1 %.not.i, label %bb.g, label %bb.c

bb.c:                                             ; preds = %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtB7_10filter_map9FilterMapNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types3mro11MroIteratorNvMNtB1u_10class_baseNtB2t_9ClassBase10into_classENCNvNvXs0_NvB1u_sb_1__NtB3o_33class_mro_literals_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute6inner_0ENtNtNtB9_6traits8iterator8Iterator4nextB1w_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !19834
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, i64 noundef 4, i1 noundef zeroext false, i64 noundef 4, i64 noundef 12), !noalias !19832
  %i.v = load i64, ptr %i.g, align 8, !range !28, !noalias !19834, !noundef !14
  %i.w = trunc nuw i64 %i.v to i1
  %i.x = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.y = load i64, ptr %i.x, align 8, !range !60, !noalias !19834, !noundef !14 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  br i1 %i.w, label %bb.d, label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsoTR8nlGN3X_18ty_python_semantic.exit.i, !prof !16

bb.d:                                             ; preds = %bb.c
  %i.aa = load i64, ptr %i.z, align 8, !noalias !19834
  call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.y, i64 %i.aa) #31, !noalias !19832
  unreachable

_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsoTR8nlGN3X_18ty_python_semantic.exit.i: ; preds = %bb.c
  %i.ab = load ptr, ptr %i.z, align 8, !noalias !19834, !nonnull !14, !noundef !14 ; 2 uses
  %i.ac = icmp ugt i64 %i.y, 3
  call void @llvm.assume(i1 %i.ac)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !19834
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ab, ptr noundef nonnull align 4 dereferenceable(12) %i.n, i64 12, i1 false), !noalias !19832
  store i64 %i.y, ptr %i.o, align 8, !noalias !19834
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  store ptr %i.ab, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !19834
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 3 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !19834
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !19834
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.m, ptr noundef nonnull align 8 dereferenceable(72) %1, i64 72, i1 false), !noalias !19832
  call void @llvm.experimental.noalias.scope.decl(metadata !19845)
  call void @llvm.experimental.noalias.scope.decl(metadata !19846)
  call void @llvm.experimental.noalias.scope.decl(metadata !19847)
  call void @llvm.experimental.noalias.scope.decl(metadata !19848)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !19849
  %i.ad = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.m, i64 72 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !19850
  store ptr %i.ae, ptr %i.d, align 8, !noalias !19851
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !19851
  invoke void @_RNvXs4_NtNtCsoTR8nlGN3X_18ty_python_semantic5types3mroNtB5_11MroIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(56) %i.ad)
          to label %.noexc.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !19832

.noexc.i:                                         ; preds = %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsoTR8nlGN3X_18ty_python_semantic.exit.i
  %i.af = load i8, ptr %i.c, align 4, !range !71, !noalias !19851, !noundef !14
  %.not15.i.i.i.i7.i.i.i = icmp eq i8 %i.af, -1
  br i1 %.not15.i.i.i.i7.i.i.i, label %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtB7_10filter_map9FilterMapNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types3mro11MroIteratorNvMNtB1u_10class_baseNtB2t_9ClassBase10into_classENCNvNvXs0_NvB1u_sb_1__NtB3o_33class_mro_literals_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute6inner_0ENtNtNtB9_6traits8iterator8Iterator4nextB1w_.exit.thread.i.i.i, label %.lr.ph.i.i.i.i.preheader.lr.ph.i.i.i

.lr.ph.i.i.i.i.preheader.lr.ph.i.i.i:             ; preds = %.noexc.i
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.ag = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  br label %.lr.ph.i.i.i.i.preheader.i.i.i

.lr.ph.i.i.i.i.preheader.i.i.i:                   ; preds = %.noexc9.i, %.lr.ph.i.i.i.i.preheader.lr.ph.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !19852)
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.noexc6.i, %.lr.ph.i.i.i.i.preheader.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !19853
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.a, ptr noundef nonnull align 4 dereferenceable(16) %i.c, i64 16, i1 false), !noalias !19854
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !19853
  invoke void @_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_baseNtBR_9ClassBase10into_classINtB7_5FnMutTB1K_EE8call_mutBV_(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(address) dereferenceable(12) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %i.a)
          to label %.noexc5.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !19832

.noexc5.i:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !19853
  %i.ah = load i32, ptr %i.b, align 4, !range !19841, !noalias !19853, !noundef !14 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %i.ah, -2
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.e, label %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtB7_10filter_map9FilterMapNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types3mro11MroIteratorNvMNtB1u_10class_baseNtB2t_9ClassBase10into_classENCNvNvXs0_NvB1u_sb_1__NtB3o_33class_mro_literals_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute6inner_0ENtNtNtB9_6traits8iterator8Iterator4nextB1w_.exit.i.i.i

bb.e:                                             ; preds = %.noexc5.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !19853
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !19854
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !19854
  invoke void @_RNvXs4_NtNtCsoTR8nlGN3X_18ty_python_semantic5types3mroNtB5_11MroIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(56) %i.ad)
          to label %.noexc6.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !19832

.noexc6.i:                                        ; preds = %bb.e
  %i.ai = load i8, ptr %i.c, align 4, !range !71, !noalias !19854, !noundef !14
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.ai, -1
  br i1 %.not.i.i.i.i.i.i.i, label %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtB7_10filter_map9FilterMapNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types3mro11MroIteratorNvMNtB1u_10class_baseNtB2t_9ClassBase10into_classENCNvNvXs0_NvB1u_sb_1__NtB3o_33class_mro_literals_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute6inner_0ENtNtNtB9_6traits8iterator8Iterator4nextB1w_.exit.thread.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtB7_10filter_map9FilterMapNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types3mro11MroIteratorNvMNtB1u_10class_baseNtB2t_9ClassBase10into_classENCNvNvXs0_NvB1u_sb_1__NtB3o_33class_mro_literals_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute6inner_0ENtNtNtB9_6traits8iterator8Iterator4nextB1w_.exit.thread.i.i.i: ; preds = %.noexc9.i, %.noexc6.i, %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !19854
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !19855
  br label %.loopexit15.i

_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtB7_10filter_map9FilterMapNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types3mro11MroIteratorNvMNtB1u_10class_baseNtB2t_9ClassBase10into_classENCNvNvXs0_NvB1u_sb_1__NtB3o_33class_mro_literals_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute6inner_0ENtNtNtB9_6traits8iterator8Iterator4nextB1w_.exit.i.i.i: ; preds = %.noexc5.i
  %.sroa.6.0.copyload.i.i.i.i.i.i.i = load i64, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i, align 4, !noalias !19856
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !19853
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !19854
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !19855
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !19857
  store i32 %i.ah, ptr %i.e, align 4, !noalias !19857
  store i64 %.sroa.6.0.copyload.i.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 4, !noalias !19857
  %.val.i.i.i.i = load ptr, ptr %i.m, align 8, !alias.scope !19858, !noalias !19834, !nonnull !14, !noundef !14
  %.val1.i.i.i.i = load ptr, ptr %i.ag, align 8, !alias.scope !19858, !noalias !19834, !nonnull !14, !align !18, !noundef !14
  invoke void @_RNvMs1g_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtB6_9ClassType13class_literal(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.f, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.e, ptr noundef nonnull %.val.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %.val1.i.i.i.i)
          to label %.noexc7.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !19832

.noexc7.i:                                        ; preds = %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtB7_10filter_map9FilterMapNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types3mro11MroIteratorNvMNtB1u_10class_baseNtB2t_9ClassBase10into_classENCNvNvXs0_NvB1u_sb_1__NtB3o_33class_mro_literals_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute6inner_0ENtNtNtB9_6traits8iterator8Iterator4nextB1w_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !19857
  %.pr.i.i.i = load i32, ptr %i.f, align 4, !noalias !19859
  %.not.i.i.i = icmp eq i32 %.pr.i.i.i, -1
  br i1 %.not.i.i.i, label %.loopexit15.i, label %bb.f

bb.f:                                             ; preds = %.noexc7.i
  %i.aj = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !19860, !noalias !19834, !noundef !14 ; 5 uses
  %i.ak = icmp ult i64 %i.aj, 768614336404564651
  call void @llvm.assume(i1 %i.ak)
  %i.al = load i64, ptr %i.o, align 8, !range !24, !alias.scope !19860, !noalias !19834, !noundef !14
  %i.am = icmp eq i64 %i.aj, %i.al
  br i1 %i.am, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class12ClassLiteralE7reserveBJ_.exit.i.i.i, label %.noexc8.i

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class12ClassLiteralE7reserveBJ_.exit.i.i.i: ; preds = %bb.f
  invoke void @_RINvNvMs2_NtCscdodAO9FK5_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o, i64 noundef %i.aj, i64 noundef range(i64 1, 0) 1, i64 noundef 4, i64 noundef 12)
          to label %.noexc8.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !19832

.noexc8.i:                                        ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class12ClassLiteralE7reserveBJ_.exit.i.i.i, %bb.f
  %i.an = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !19860, !noalias !19834, !nonnull !14, !noundef !14
  %i.ao = getelementptr inbounds nuw [12 x i8], ptr %i.an, i64 %i.aj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ao, ptr noundef nonnull align 4 dereferenceable(12) %i.f, i64 12, i1 false), !noalias !19832
  %i.ap = add nuw nsw i64 %i.aj, 1
  store i64 %i.ap, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !19860, !noalias !19834
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !19861
  store ptr %i.ae, ptr %i.d, align 8, !noalias !19862
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !19862
  invoke void @_RNvXs4_NtNtCsoTR8nlGN3X_18ty_python_semantic5types3mroNtB5_11MroIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(56) %i.ad)
          to label %.noexc9.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !19832

.noexc9.i:                                        ; preds = %.noexc8.i
  %i.aq = load i8, ptr %i.c, align 4, !range !71, !noalias !19862, !noundef !14
  %.not15.i.i.i.i.i.i.i = icmp eq i8 %i.aq, -1
  br i1 %.not15.i.i.i.i.i.i.i, label %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtB7_10filter_map9FilterMapNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types3mro11MroIteratorNvMNtB1u_10class_baseNtB2t_9ClassBase10into_classENCNvNvXs0_NvB1u_sb_1__NtB3o_33class_mro_literals_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute6inner_0ENtNtNtB9_6traits8iterator8Iterator4nextB1w_.exit.thread.i.i.i, label %.lr.ph.i.i.i.i.preheader.i.i.i

bb.g:                                             ; preds = %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtB7_10filter_map9FilterMapNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types3mro11MroIteratorNvMNtB1u_10class_baseNtB2t_9ClassBase10into_classENCNvNvXs0_NvB1u_sb_1__NtB3o_33class_mro_literals_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute6inner_0ENtNtNtB9_6traits8iterator8Iterator4nextB1w_.exit.i, %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtB7_10filter_map9FilterMapNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types3mro11MroIteratorNvMNtB1u_10class_baseNtB2t_9ClassBase10into_classENCNvNvXs0_NvB1u_sb_1__NtB3o_33class_mro_literals_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute6inner_0ENtNtNtB9_6traits8iterator8Iterator4nextB1w_.exit.thread.i
  store i64 0, ptr %0, align 8, !alias.scope !19832
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.ar, align 8, !alias.scope !19832
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.as, align 8, !alias.scope !19832
  br label %_RNvXNtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class12ClassLiteralEINtB2_18SpecFromIterNestedB10_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB2D_10filter_map9FilterMapNtNtB14_3mro11MroIteratorNvMNtB14_10class_baseNtB4j_9ClassBase10into_classENCNvNvXs0_NvB14_sb_1__NtB5e_33class_mro_literals_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute6inner_0EE9from_iterB16_.exit

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.e, %.noexc8.i, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class12ClassLiteralE7reserveBJ_.exit.i.i.i, %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtB7_10filter_map9FilterMapNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types3mro11MroIteratorNvMNtB1u_10class_baseNtB2t_9ClassBase10into_classENCNvNvXs0_NvB1u_sb_1__NtB3o_33class_mro_literals_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute6inner_0ENtNtNtB9_6traits8iterator8Iterator4nextB1w_.exit.i.i.i, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsoTR8nlGN3X_18ty_python_semantic.exit.i
  %lpad.loopexit.split-lp29 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class12ClassLiteralENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class12ClassLiteralEEB1d_.exit.i unwind label %bb.h, !noalias !19832

.loopexit15.i:                                    ; preds = %.noexc7.i, %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtB7_10filter_map9FilterMapNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types3mro11MroIteratorNvMNtB1u_10class_baseNtB2t_9ClassBase10into_classENCNvNvXs0_NvB1u_sb_1__NtB3o_33class_mro_literals_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute6inner_0ENtNtNtB9_6traits8iterator8Iterator4nextB1w_.exit.thread.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !19849
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !19834
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false), !noalias !19833
  br label %_RNvXNtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class12ClassLiteralEINtB2_18SpecFromIterNestedB10_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB2D_10filter_map9FilterMapNtNtB14_3mro11MroIteratorNvMNtB14_10class_baseNtB4j_9ClassBase10into_classENCNvNvXs0_NvB14_sb_1__NtB5e_33class_mro_literals_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute6inner_0EE9from_iterB16_.exit

bb.h:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #32, !noalias !19832
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class12ClassLiteralEEB1d_.exit.i: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  resume { ptr, i32 } %lpad.loopexit.split-lp29

_RNvXNtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class12ClassLiteralEINtB2_18SpecFromIterNestedB10_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB2D_10filter_map9FilterMapNtNtB14_3mro11MroIteratorNvMNtB14_10class_baseNtB4j_9ClassBase10into_classENCNvNvXs0_NvB14_sb_1__NtB5e_33class_mro_literals_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute6inner_0EE9from_iterB16_.exit: ; preds = %bb.g, %.loopexit15.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !19834
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCscdodAO9FK5_5alloc3vec14spec_from_iterINtB4_3VecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow20ClassPatternArgumentEINtB2_12SpecFromIterBT_INtNtNtCs4NRVxsYgnAr_4core4iter8adapters12GenericShuntINtNtB2w_5chain5ChainINtNtB2w_3map3MapINtNtNtB2A_5slice4iter4IterNtNtBX_13match_pattern28ClassPatternPositionalSourceENCNvMs8_BV_NtBV_22PatternSuccessAnalyzer31class_pattern_arguments_for_arms3_0EIB3H_IB3Y_NtNtCs2O29vuvTAEJ_14ty_python_core9predicate32ClassPatternKeywordPredicateKindENCB5h_s4_0EEINtNtB2A_6option6OptionNtNtB2A_7convert10InfallibleEEE9from_iterBZ_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(64) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [20 x i8], align 4                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [64 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [20 x i8], align 4                ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19874)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !19875
  call void @_RNvXNtNtCs4NRVxsYgnAr_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_5chain5ChainINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types13match_pattern28ClassPatternPositionalSourceENCNvMs8_NtB21_6narrowNtB3y_22PatternSuccessAnalyzer31class_pattern_arguments_for_arms3_0EIB1i_IB1y_NtNtCs2O29vuvTAEJ_14ty_python_core9predicate32ClassPatternKeywordPredicateKindENCB3s_s4_0EEINtNtB6_6option6OptionNtNtB6_7convert10InfallibleEENtNtNtB4_6traits8iterator8Iterator4nextB23_(ptr noalias noundef nonnull sret([20 x i8]) align 4 captures(none) dereferenceable(20) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(64) %1), !noalias !19874
  %i.h = load i32, ptr %i.f, align 4, !range !32, !noalias !19875, !noundef !14
  %.not.i = icmp eq i32 %i.h, -1
  br i1 %.not.i, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !19875
  call void @_RNvXNtNtCs4NRVxsYgnAr_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_5chain5ChainINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types13match_pattern28ClassPatternPositionalSourceENCNvMs8_NtB21_6narrowNtB3y_22PatternSuccessAnalyzer31class_pattern_arguments_for_arms3_0EIB1i_IB1y_NtNtCs2O29vuvTAEJ_14ty_python_core9predicate32ClassPatternKeywordPredicateKindENCB3s_s4_0EEINtNtB6_6option6OptionNtNtB6_7convert10InfallibleEENtNtNtB4_6traits8iterator8Iterator9size_hintB23_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1), !noalias !19874
  %i.i = load i64, ptr %i.e, align 8, !noalias !19875, !noundef !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !19875
  %i.j = tail call i64 @llvm.uadd.sat.i64(i64 %i.i, i64 1)
  %.sroa.0.0.i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.j, i64 4) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !19875
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %.sroa.0.0.i.i, i1 noundef zeroext false, i64 noundef 4, i64 noundef 20), !noalias !19874
  %i.k = load i64, ptr %i.c, align 8, !range !28, !noalias !19875, !noundef !14
  %i.l = trunc nuw i64 %i.k to i1
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.n = load i64, ptr %i.m, align 8, !range !60, !noalias !19875, !noundef !14 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.l, label %bb.c, label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsoTR8nlGN3X_18ty_python_semantic.exit.i, !prof !16

bb.c:                                             ; preds = %bb.b
  %i.p = load i64, ptr %i.o, align 8, !noalias !19875
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.n, i64 %i.p) #31, !noalias !19874
  unreachable

_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsoTR8nlGN3X_18ty_python_semantic.exit.i: ; preds = %bb.b
  %i.q = load ptr, ptr %i.o, align 8, !noalias !19875, !nonnull !14, !noundef !14 ; 2 uses
  %i.r = icmp ule i64 %.sroa.0.0.i.i, %i.n
  tail call void @llvm.assume(i1 %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !19875
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.q, ptr noundef nonnull align 4 dereferenceable(20) %i.f, i64 20, i1 false), !noalias !19874
  store i64 %i.n, ptr %i.g, align 8, !noalias !19875
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  store ptr %i.q, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !19875
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 4 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !19875
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !19875
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.d, ptr noundef nonnull align 8 dereferenceable(64) %1, i64 64, i1 false), !noalias !19874
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19876)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19877)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !19878
  invoke void @_RNvXNtNtCs4NRVxsYgnAr_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_5chain5ChainINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types13match_pattern28ClassPatternPositionalSourceENCNvMs8_NtB21_6narrowNtB3y_22PatternSuccessAnalyzer31class_pattern_arguments_for_arms3_0EIB1i_IB1y_NtNtCs2O29vuvTAEJ_14ty_python_core9predicate32ClassPatternKeywordPredicateKindENCB3s_s4_0EEINtNtB6_6option6OptionNtNtB6_7convert10InfallibleEENtNtNtB4_6traits8iterator8Iterator4nextB23_(ptr noalias noundef nonnull sret([20 x i8]) align 4 captures(none) dereferenceable(20) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.d)
          to label %.noexc.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !19874

.noexc.i:                                         ; preds = %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsoTR8nlGN3X_18ty_python_semantic.exit.i
  %i.s = load i32, ptr %i.b, align 4, !range !32, !noalias !19879, !noundef !14
  %.not4.i.i.i = icmp eq i32 %i.s, -1
  br i1 %.not4.i.i.i, label %.loopexit9.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.noexc.i, %.noexc7.i
  %i.t = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !19880, !noalias !19875, !noundef !14 ; 4 uses
  %i.u = icmp ult i64 %i.t, 461168601842738791
  call void @llvm.assume(i1 %i.u)
  %i.v = load i64, ptr %i.g, align 8, !range !24, !alias.scope !19880, !noalias !19875, !noundef !14
  %i.w = icmp eq i64 %i.t, %i.v
  br i1 %i.w, label %bb.d, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow20ClassPatternArgumentE7reserveBJ_.exit.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !19879
  invoke void @_RNvXNtNtCs4NRVxsYgnAr_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_5chain5ChainINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types13match_pattern28ClassPatternPositionalSourceENCNvMs8_NtB21_6narrowNtB3y_22PatternSuccessAnalyzer31class_pattern_arguments_for_arms3_0EIB1i_IB1y_NtNtCs2O29vuvTAEJ_14ty_python_core9predicate32ClassPatternKeywordPredicateKindENCB3s_s4_0EEINtNtB6_6option6OptionNtNtB6_7convert10InfallibleEENtNtNtB4_6traits8iterator8Iterator9size_hintB23_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.d)
          to label %.noexc5.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !19874

.noexc5.i:                                        ; preds = %bb.d
  %i.x = load i64, ptr %i.a, align 8, !noalias !19879, !noundef !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !19879
  %i.y = call i64 @llvm.uadd.sat.i64(i64 %i.x, i64 1) ; 2 uses
  %i.z = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !19881, !noalias !19875, !noundef !14 ; 2 uses
  %i.aa = load i64, ptr %i.g, align 8, !range !24, !alias.scope !19881, !noalias !19875, !noundef !14
  %i.ab = sub i64 %i.aa, %i.z
  %i.ac = icmp ugt i64 %i.y, %i.ab
  br i1 %i.ac, label %bb.e, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow20ClassPatternArgumentE7reserveBJ_.exit.i.i.i, !prof !16

bb.e:                                             ; preds = %.noexc5.i
  invoke void @_RINvNvMs2_NtCscdodAO9FK5_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef %i.z, i64 noundef range(i64 1, 0) %i.y, i64 noundef 4, i64 noundef 20)
          to label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow20ClassPatternArgumentE7reserveBJ_.exit.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !19874

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow20ClassPatternArgumentE7reserveBJ_.exit.i.i.i: ; preds = %bb.e, %.noexc5.i, %.lr.ph.i.i.i
  %i.ad = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !19880, !noalias !19875, !nonnull !14, !noundef !14
  %i.ae = getelementptr inbounds nuw [20 x i8], ptr %i.ad, i64 %i.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.ae, ptr noundef nonnull align 4 dereferenceable(20) %i.b, i64 20, i1 false), !noalias !19874
  %i.af = add nuw nsw i64 %i.t, 1
  store i64 %i.af, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !19880, !noalias !19875
  invoke void @_RNvXNtNtCs4NRVxsYgnAr_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_5chain5ChainINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types13match_pattern28ClassPatternPositionalSourceENCNvMs8_NtB21_6narrowNtB3y_22PatternSuccessAnalyzer31class_pattern_arguments_for_arms3_0EIB1i_IB1y_NtNtCs2O29vuvTAEJ_14ty_python_core9predicate32ClassPatternKeywordPredicateKindENCB3s_s4_0EEINtNtB6_6option6OptionNtNtB6_7convert10InfallibleEENtNtNtB4_6traits8iterator8Iterator4nextB23_(ptr noalias noundef nonnull sret([20 x i8]) align 4 captures(none) dereferenceable(20) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.d)
          to label %.noexc7.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !19874

.noexc7.i:                                        ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow20ClassPatternArgumentE7reserveBJ_.exit.i.i.i
  %i.ag = load i32, ptr %i.b, align 4, !range !32, !noalias !19879, !noundef !14
  %.not.i.i.i = icmp eq i32 %i.ag, -1
  br i1 %.not.i.i.i, label %.loopexit9.i, label %.lr.ph.i.i.i

bb.f:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8, !alias.scope !19874
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.ah, align 8, !alias.scope !19874
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.ai, align 8, !alias.scope !19874
  br label %_RNvXNtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow20ClassPatternArgumentEINtB2_18SpecFromIterNestedB10_INtNtNtCs4NRVxsYgnAr_4core4iter8adapters12GenericShuntINtNtB2K_5chain5ChainINtNtB2K_3map3MapINtNtNtB2O_5slice4iter4IterNtNtB14_13match_pattern28ClassPatternPositionalSourceENCNvMs8_B12_NtB12_22PatternSuccessAnalyzer31class_pattern_arguments_for_arms3_0EIB3V_IB4c_NtNtCs2O29vuvTAEJ_14ty_python_core9predicate32ClassPatternKeywordPredicateKindENCB5w_s4_0EEINtNtB2O_6option6OptionNtNtB2O_7convert10InfallibleEEE9from_iterB16_.exit

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow20ClassPatternArgumentE7reserveBJ_.exit.i.i.i, %bb.e, %bb.d, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsoTR8nlGN3X_18ty_python_semantic.exit.i
  %lpad.loopexit.split-lp2 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow20ClassPatternArgumentENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow20ClassPatternArgumentEEB1d_.exit.i unwind label %bb.g, !noalias !19874

.loopexit9.i:                                     ; preds = %.noexc7.i, %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !19878
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !19875
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !19882
  br label %_RNvXNtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow20ClassPatternArgumentEINtB2_18SpecFromIterNestedB10_INtNtNtCs4NRVxsYgnAr_4core4iter8adapters12GenericShuntINtNtB2K_5chain5ChainINtNtB2K_3map3MapINtNtNtB2O_5slice4iter4IterNtNtB14_13match_pattern28ClassPatternPositionalSourceENCNvMs8_B12_NtB12_22PatternSuccessAnalyzer31class_pattern_arguments_for_arms3_0EIB3V_IB4c_NtNtCs2O29vuvTAEJ_14ty_python_core9predicate32ClassPatternKeywordPredicateKindENCB5w_s4_0EEINtNtB2O_6option6OptionNtNtB2O_7convert10InfallibleEEE9from_iterB16_.exit

bb.g:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #32, !noalias !19874
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow20ClassPatternArgumentEEB1d_.exit.i: ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  resume { ptr, i32 } %lpad.loopexit.split-lp2

_RNvXNtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow20ClassPatternArgumentEINtB2_18SpecFromIterNestedB10_INtNtNtCs4NRVxsYgnAr_4core4iter8adapters12GenericShuntINtNtB2K_5chain5ChainINtNtB2K_3map3MapINtNtNtB2O_5slice4iter4IterNtNtB14_13match_pattern28ClassPatternPositionalSourceENCNvMs8_B12_NtB12_22PatternSuccessAnalyzer31class_pattern_arguments_for_arms3_0EIB3V_IB4c_NtNtCs2O29vuvTAEJ_14ty_python_core9predicate32ClassPatternKeywordPredicateKindENCB5w_s4_0EEINtNtB2O_6option6OptionNtNtB2O_7convert10InfallibleEEE9from_iterB16_.exit: ; preds = %bb.f, %.loopexit9.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !19875
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCscdodAO9FK5_5alloc3vec14spec_from_iterINtB4_3VecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar14BindingContextEINtB2_12SpecFromIterBT_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map9FilterMapNtCs2O29vuvTAEJ_14ty_python_core13AncestorsIterNCNvNtBX_8generics26enclosing_binding_contexts0EE9from_iterBZ_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [12 x i8], align 4                ; 6 uses
  %i.e = alloca [8 x i8], align 8                 ; 5 uses
  %i.f = alloca [32 x i8], align 8                ; 7 uses
  %i.g = alloca [24 x i8], align 8                ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19938)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19939)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !19940
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19941)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19942)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19943)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !19944
  store ptr %i.h, ptr %i.e, align 8, !noalias !19945
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %.promoted.i.i.i.i = load i32, ptr %i.i, align 8, !alias.scope !19946 ; 2 uses
  %.not.i25.i.i.i.i = icmp eq i32 %.promoted.i.i.i.i, 0
  br i1 %.not.i25.i.i.i.i, label %.loopexit22.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !19946, !noundef !14 ; 2 uses
  %i.l = load ptr, ptr %1, align 8, !alias.scope !19947, !nonnull !14, !align !17
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %.lr.ph.i.i.i.i
  %i.m = phi i32 [ %.promoted.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.s, %bb.e ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !19948)
  %i.n = add i32 %i.m, -1
  %i.o = zext i32 %i.n to i64                     ; 3 uses
  %i.p = icmp ugt i64 %i.k, %i.o
  br i1 %i.p, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.o, i64 noundef %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @54) #31, !noalias !19949
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw [20 x i8], ptr %i.l, i64 %i.o ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load i32, ptr %i.r, align 4, !noalias !19949, !noundef !14 ; 3 uses
  store i32 %i.s, ptr %i.i, align 8, !alias.scope !19946
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !19950
  call void @_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types8generics26enclosing_binding_contexts0INtB7_5FnMutTTNtNtCs2O29vuvTAEJ_14ty_python_core5scope11FileScopeIdRNtB2r_5ScopeEEE8call_mutBW_(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(address) dereferenceable(12) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e, i32 noundef range(i32 1, 0) %i.m, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(20) %i.q), !noalias !19951
  %i.t = load i32, ptr %i.d, align 4, !range !38, !noalias !19950, !noundef !14 ; 2 uses
  %.not.i7.i.i.i.i = icmp eq i32 %i.t, 2
  br i1 %.not.i7.i.i.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !19950
  %.not.i.i.i.i.i = icmp eq i32 %i.s, 0
  br i1 %.not.i.i.i.i.i, label %.loopexit22.i, label %bb.b

bb.f:                                             ; preds = %bb.d
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %.sroa.6.0.copyload.i.i.i.i = load i64, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 4, !noalias !19952
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !19950
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !19944
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !19940
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef 4, i1 noundef zeroext false, i64 noundef 4, i64 noundef 12), !noalias !19938
  %i.u = load i64, ptr %i.c, align 8, !range !28, !noalias !19940, !noundef !14
  %i.v = trunc nuw i64 %i.u to i1
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.x = load i64, ptr %i.w, align 8, !range !60, !noalias !19940, !noundef !14 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.v, label %bb.g, label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsoTR8nlGN3X_18ty_python_semantic.exit.i, !prof !16

bb.g:                                             ; preds = %bb.f
  %i.z = load i64, ptr %i.y, align 8, !noalias !19940
  call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.x, i64 %i.z) #31, !noalias !19938
  unreachable

_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsoTR8nlGN3X_18ty_python_semantic.exit.i: ; preds = %bb.f
  %i.aa = load ptr, ptr %i.y, align 8, !noalias !19940, !nonnull !14, !noundef !14 ; 3 uses
  %i.ab = icmp ugt i64 %i.x, 3
  call void @llvm.assume(i1 %i.ab)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !19940
  store i32 %i.t, ptr %i.aa, align 4, !noalias !19938
  %.sroa.413.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  store i64 %.sroa.6.0.copyload.i.i.i.i, ptr %.sroa.413.0..sroa_idx.i, align 4, !noalias !19938
  store i64 %i.x, ptr %i.g, align 8, !noalias !19940
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  store ptr %i.aa, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !19940
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !19940
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !19940
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !noalias !19938
  call void @llvm.experimental.noalias.scope.decl(metadata !19953)
  call void @llvm.experimental.noalias.scope.decl(metadata !19954)
  call void @llvm.experimental.noalias.scope.decl(metadata !19955)
  call void @llvm.experimental.noalias.scope.decl(metadata !19956)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !19957)
  call void @llvm.experimental.noalias.scope.decl(metadata !19958)
  call void @llvm.experimental.noalias.scope.decl(metadata !19959)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !19960
  store ptr %i.ac, ptr %i.b, align 8, !noalias !19961
  %.promoted.i.i.i19.i.i.i.a = load i32, ptr %i.ad, align 8, !alias.scope !19962, !noalias !19940 ; 2 uses
  %.not.i25.i.i.i20.i.i.i = icmp eq i32 %.promoted.i.i.i19.i.i.i.a, 0
  br i1 %.not.i25.i.i.i20.i.i.i, label %.loopexit17.i, label %.lr.ph.i.i.i.lr.ph.i.i.i

.lr.ph.i.i.i.lr.ph.i.i.i:                         ; preds = %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsoTR8nlGN3X_18ty_python_semantic.exit.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc6.i, %.lr.ph.i.i.i.lr.ph.i.i.i
  %.promoted.i.i.i21.i.i.i = phi i32 [ %.promoted.i.i.i19.i.i.i.a, %.lr.ph.i.i.i.lr.ph.i.i.i ], [ %.promoted.i.i.i.i.i.i, %.noexc6.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !19963)
  call void @llvm.experimental.noalias.scope.decl(metadata !19964)
  call void @llvm.experimental.noalias.scope.decl(metadata !19965)
  %i.af = load i64, ptr %i.ae, align 8, !alias.scope !19966, !noalias !19940, !noundef !14 ; 2 uses
  %i.ag = load ptr, ptr %i.f, align 8, !alias.scope !19967, !noalias !19940, !nonnull !14, !align !17
  br label %bb.h

bb.h:                                             ; preds = %bb.k, %.lr.ph.i.i.i.i.i.i
  %i.ah = phi i32 [ %.promoted.i.i.i21.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %i.an, %bb.k ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !19968)
  %i.ai = add i32 %i.ah, -1
  %i.aj = zext i32 %i.ai to i64                   ; 3 uses
  %i.ak = icmp ugt i64 %i.af, %i.aj
  br i1 %i.ak, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.aj, i64 noundef %i.af, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @54) #31
          to label %.noexc.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !19938

.noexc.i:                                         ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.al = getelementptr inbounds nuw [20 x i8], ptr %i.ag, i64 %i.aj ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = load i32, ptr %i.am, align 4, !noalias !19969, !noundef !14 ; 3 uses
  store i32 %i.an, ptr %i.ad, align 8, !alias.scope !19966, !noalias !19940
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !19970
  invoke void @_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types8generics26enclosing_binding_contexts0INtB7_5FnMutTTNtNtCs2O29vuvTAEJ_14ty_python_core5scope11FileScopeIdRNtB2r_5ScopeEEE8call_mutBW_(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(address) dereferenceable(12) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b, i32 noundef range(i32 1, 0) %i.ah, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(20) %i.al)
          to label %.noexc5.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !19938

.noexc5.i:                                        ; preds = %bb.j
  %i.ao = load i32, ptr %i.a, align 4, !range !38, !noalias !19970, !noundef !14 ; 2 uses
  %.not.i7.i.i.i.i.i.i = icmp eq i32 %i.ao, 2
  br i1 %.not.i7.i.i.i.i.i.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.noexc5.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !19970
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.an, 0
  br i1 %.not.i.i.i.i.i.i.i, label %.loopexit17.i, label %bb.h

bb.l:                                             ; preds = %.noexc5.i
  %.sroa.6.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i, align 4, !noalias !19971
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !19970
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !19972
  %i.ap = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !19973, !noalias !19940, !noundef !14 ; 5 uses
  %i.aq = icmp ult i64 %i.ap, 768614336404564651
  call void @llvm.assume(i1 %i.aq)
  %i.ar = load i64, ptr %i.g, align 8, !range !24, !alias.scope !19973, !noalias !19940, !noundef !14
  %i.as = icmp eq i64 %i.ap, %i.ar
  br i1 %i.as, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar14BindingContextE7reserveBJ_.exit.i.i.i, label %.noexc6.i

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar14BindingContextE7reserveBJ_.exit.i.i.i: ; preds = %bb.l
  invoke void @_RINvNvMs2_NtCscdodAO9FK5_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef %i.ap, i64 noundef range(i64 1, 0) 1, i64 noundef 4, i64 noundef 12)
          to label %.noexc6.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !19938

.noexc6.i:                                        ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar14BindingContextE7reserveBJ_.exit.i.i.i, %bb.l
  %i.at = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !19973, !noalias !19940, !nonnull !14, !noundef !14
  %i.au = getelementptr inbounds nuw [12 x i8], ptr %i.at, i64 %i.ap ; 2 uses
  store i32 %i.ao, ptr %i.au, align 4, !noalias !19938
  %.sroa.48.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  store i64 %.sroa.6.0.copyload.i.i.i.i.i.i, ptr %.sroa.48.0..sroa_idx.i.i.i, align 4, !noalias !19938
  %i.av = add nuw nsw i64 %i.ap, 1
  store i64 %i.av, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !19973, !noalias !19940
  call void @llvm.experimental.noalias.scope.decl(metadata !19974)
  call void @llvm.experimental.noalias.scope.decl(metadata !19975)
  call void @llvm.experimental.noalias.scope.decl(metadata !19976)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !19977
  store ptr %i.ac, ptr %i.b, align 8, !noalias !19978
  %.promoted.i.i.i.i.i.i = load i32, ptr %i.ad, align 8, !alias.scope !19979, !noalias !19940 ; 2 uses
  %.not.i25.i.i.i.i.i.i = icmp eq i32 %.promoted.i.i.i.i.i.i, 0
  br i1 %.not.i25.i.i.i.i.i.i, label %.loopexit17.i, label %.lr.ph.i.i.i.i.i.i

.loopexit22.i:                                    ; preds = %bb.e, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !19944
  store i64 0, ptr %0, align 8, !alias.scope !19938
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.aw, align 8, !alias.scope !19938
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.ax, align 8, !alias.scope !19938
  br label %_RNvXNtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar14BindingContextEINtB2_18SpecFromIterNestedB10_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map9FilterMapNtCs2O29vuvTAEJ_14ty_python_core13AncestorsIterNCNvNtB14_8generics26enclosing_binding_contexts0EE9from_iterB16_.exit

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.j, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar14BindingContextE7reserveBJ_.exit.i.i.i, %bb.i
  %lpad.loopexit.split-lp84 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar14BindingContextENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar14BindingContextEEB1d_.exit.i unwind label %bb.m, !noalias !19938

.loopexit17.i:                                    ; preds = %.noexc6.i, %bb.k, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsoTR8nlGN3X_18ty_python_semantic.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !19972
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !19940
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !19939
  br label %_RNvXNtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar14BindingContextEINtB2_18SpecFromIterNestedB10_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map9FilterMapNtCs2O29vuvTAEJ_14ty_python_core13AncestorsIterNCNvNtB14_8generics26enclosing_binding_contexts0EE9from_iterB16_.exit

bb.m:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.ay = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #32, !noalias !19938
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar14BindingContextEEB1d_.exit.i: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  resume { ptr, i32 } %lpad.loopexit.split-lp84

_RNvXNtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar14BindingContextEINtB2_18SpecFromIterNestedB10_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map9FilterMapNtCs2O29vuvTAEJ_14ty_python_core13AncestorsIterNCNvNtB14_8generics26enclosing_binding_contexts0EE9from_iterB16_.exit: ; preds = %.loopexit22.i, %.loopexit17.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !19940
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCscdodAO9FK5_5alloc3vec14spec_from_iterINtB4_3VecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarInstanceEINtB2_12SpecFromIterBT_INtNtNtCs4NRVxsYgnAr_4core4iter8adapters12GenericShuntINtNtB2x_3map3MapINtCsddXFpJ32JCa_6either6EitherINtNtNtB2B_5slice4iter4IterNtBX_4TypeEB48_ENCNvNtNtBX_4call4bind29inferable_typevars_from_tuple0EINtNtB2B_6option6OptionNtNtB2B_7convert10InfallibleEEE9from_iterBZ_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [32 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19991)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !19992
  %i.f = tail call { i32, i32 } @_RNvXNtNtCs4NRVxsYgnAr_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtCsddXFpJ32JCa_6either6EitherINtNtNtB6_5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEB1I_ENCNvNtNtB2a_4call4bind29inferable_typevars_from_tuple0EINtNtB6_6option6OptionNtNtB6_7convert10InfallibleEENtNtNtB4_6traits8iterator8Iterator4nextB2c_(ptr noalias noundef nonnull align 8 dereferenceable(32) %1), !noalias !19991 ; 2 uses
  %i.g = extractvalue { i32, i32 } %i.f, 0        ; 2 uses
  %i.h = extractvalue { i32, i32 } %i.f, 1
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !19992
  call void @_RNvXNtNtCs4NRVxsYgnAr_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtCsddXFpJ32JCa_6either6EitherINtNtNtB6_5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEB1I_ENCNvNtNtB2a_4call4bind29inferable_typevars_from_tuple0EINtNtB6_6option6OptionNtNtB6_7convert10InfallibleEENtNtNtB4_6traits8iterator8Iterator9size_hintB2c_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1), !noalias !19991
  %i.i = load i64, ptr %i.d, align 8, !noalias !19992, !noundef !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !19992
  %i.j = tail call i64 @llvm.uadd.sat.i64(i64 %i.i, i64 1)
  %.sroa.0.0.i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.j, i64 4) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !19992
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %.sroa.0.0.i.i, i1 noundef zeroext false, i64 noundef 4, i64 noundef 8), !noalias !19991
  %i.k = load i64, ptr %i.b, align 8, !range !28, !noalias !19992, !noundef !14
  %i.l = trunc nuw i64 %i.k to i1
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.n = load i64, ptr %i.m, align 8, !range !60, !noalias !19992, !noundef !14 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.l, label %bb.c, label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsoTR8nlGN3X_18ty_python_semantic.exit.i, !prof !16

bb.c:                                             ; preds = %bb.b
  %i.p = load i64, ptr %i.o, align 8, !noalias !19992
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.n, i64 %i.p) #31, !noalias !19991
  unreachable

_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsoTR8nlGN3X_18ty_python_semantic.exit.i: ; preds = %bb.b
  %i.q = load ptr, ptr %i.o, align 8, !noalias !19992, !nonnull !14, !noundef !14 ; 3 uses
  %i.r = icmp ule i64 %.sroa.0.0.i.i, %i.n
  tail call void @llvm.assume(i1 %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !19992
  store i32 %i.g, ptr %i.q, align 4, !noalias !19991
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  store i32 %i.h, ptr %i.s, align 4, !noalias !19991
  store i64 %i.n, ptr %i.e, align 8, !noalias !19992
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr %i.q, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !19992
  %.sroa.64.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 4 uses
  store i64 1, ptr %.sroa.64.0..sroa_idx.i, align 8, !noalias !19992
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !19992
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !noalias !19991
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19993)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19994)
  %i.t = invoke { i32, i32 } @_RNvXNtNtCs4NRVxsYgnAr_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtCsddXFpJ32JCa_6either6EitherINtNtNtB6_5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEB1I_ENCNvNtNtB2a_4call4bind29inferable_typevars_from_tuple0EINtNtB6_6option6OptionNtNtB6_7convert10InfallibleEENtNtNtB4_6traits8iterator8Iterator4nextB2c_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %.noexc.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !19991 ; 2 uses

.noexc.i:                                         ; preds = %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsoTR8nlGN3X_18ty_python_semantic.exit.i
  %i.u = extractvalue { i32, i32 } %i.t, 0        ; 2 uses
  %.not8.i.i.i = icmp eq i32 %i.u, 0
  br i1 %.not8.i.i.i, label %_RNvXNtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB4_3VecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarInstanceEINtB2_10SpecExtendBQ_INtNtNtCs4NRVxsYgnAr_4core4iter8adapters12GenericShuntINtNtB2s_3map3MapINtCsddXFpJ32JCa_6either6EitherINtNtNtB2w_5slice4iter4IterNtBU_4TypeEB43_ENCNvNtNtBU_4call4bind29inferable_typevars_from_tuple0EINtNtB2w_6option6OptionNtNtB2w_7convert10InfallibleEEE11spec_extendBW_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.noexc.i, %.noexc11.i
  %.pn.i.i.i = phi { i32, i32 } [ %i.al, %.noexc11.i ], [ %i.t, %.noexc.i ]
  %i.v = phi i32 [ %i.am, %.noexc11.i ], [ %i.u, %.noexc.i ]
  %i.w = extractvalue { i32, i32 } %.pn.i.i.i, 1
  %i.x = load i64, ptr %.sroa.64.0..sroa_idx.i, align 8, !alias.scope !19995, !noalias !19992, !noundef !14 ; 4 uses
  %i.y = icmp ult i64 %i.x, 1152921504606846976
  call void @llvm.assume(i1 %i.y)
  %i.z = load i64, ptr %i.e, align 8, !range !24, !alias.scope !19995, !noalias !19992, !noundef !14
  %i.aa = icmp eq i64 %i.x, %i.z
  br i1 %i.aa, label %bb.d, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarInstanceE7reserveBJ_.exit.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !19996
  invoke void @_RNvXNtNtCs4NRVxsYgnAr_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtCsddXFpJ32JCa_6either6EitherINtNtNtB6_5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEB1I_ENCNvNtNtB2a_4call4bind29inferable_typevars_from_tuple0EINtNtB6_6option6OptionNtNtB6_7convert10InfallibleEENtNtNtB4_6traits8iterator8Iterator9size_hintB2c_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.c)
          to label %.noexc9.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !19991

.noexc9.i:                                        ; preds = %bb.d
  %i.ab = load i64, ptr %i.a, align 8, !noalias !19996, !noundef !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !19996
  %i.ac = call i64 @llvm.uadd.sat.i64(i64 %i.ab, i64 1) ; 2 uses
  %i.ad = load i64, ptr %.sroa.64.0..sroa_idx.i, align 8, !alias.scope !19997, !noalias !19992, !noundef !14 ; 2 uses
  %i.ae = load i64, ptr %i.e, align 8, !range !24, !alias.scope !19997, !noalias !19992, !noundef !14
  %i.af = sub i64 %i.ae, %i.ad
  %i.ag = icmp ugt i64 %i.ac, %i.af
  br i1 %i.ag, label %bb.e, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarInstanceE7reserveBJ_.exit.i.i.i, !prof !16

bb.e:                                             ; preds = %.noexc9.i
  invoke void @_RINvNvMs2_NtCscdodAO9FK5_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %i.ad, i64 noundef range(i64 1, 0) %i.ac, i64 noundef 4, i64 noundef 8)
          to label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarInstanceE7reserveBJ_.exit.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !19991

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarInstanceE7reserveBJ_.exit.i.i.i: ; preds = %bb.e, %.noexc9.i, %.lr.ph.i.i.i
  %i.ah = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !19995, !noalias !19992, !nonnull !14, !noundef !14
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.x ; 2 uses
  store i32 %i.v, ptr %i.ai, align 4, !noalias !19991
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  store i32 %i.w, ptr %i.aj, align 4, !noalias !19991
  %i.ak = add nuw nsw i64 %i.x, 1
  store i64 %i.ak, ptr %.sroa.64.0..sroa_idx.i, align 8, !alias.scope !19995, !noalias !19992
  %i.al = invoke { i32, i32 } @_RNvXNtNtCs4NRVxsYgnAr_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtCsddXFpJ32JCa_6either6EitherINtNtNtB6_5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEB1I_ENCNvNtNtB2a_4call4bind29inferable_typevars_from_tuple0EINtNtB6_6option6OptionNtNtB6_7convert10InfallibleEENtNtNtB4_6traits8iterator8Iterator4nextB2c_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %.noexc11.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !19991 ; 2 uses

.noexc11.i:                                       ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarInstanceE7reserveBJ_.exit.i.i.i
  %i.am = extractvalue { i32, i32 } %i.al, 0      ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.am, 0
  br i1 %.not.i.i.i, label %_RNvXNtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB4_3VecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarInstanceEINtB2_10SpecExtendBQ_INtNtNtCs4NRVxsYgnAr_4core4iter8adapters12GenericShuntINtNtB2s_3map3MapINtCsddXFpJ32JCa_6either6EitherINtNtNtB2w_5slice4iter4IterNtBU_4TypeEB43_ENCNvNtNtBU_4call4bind29inferable_typevars_from_tuple0EINtNtB2w_6option6OptionNtNtB2w_7convert10InfallibleEEE11spec_extendBW_.exit.i, label %.lr.ph.i.i.i

bb.f:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8, !alias.scope !19991
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.an, align 8, !alias.scope !19991
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.ao, align 8, !alias.scope !19991
  br label %_RNvXNtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarInstanceEINtB2_18SpecFromIterNestedB10_INtNtNtCs4NRVxsYgnAr_4core4iter8adapters12GenericShuntINtNtB2L_3map3MapINtCsddXFpJ32JCa_6either6EitherINtNtNtB2P_5slice4iter4IterNtB14_4TypeEB4m_ENCNvNtNtB14_4call4bind29inferable_typevars_from_tuple0EINtNtB2P_6option6OptionNtNtB2P_7convert10InfallibleEEE9from_iterB16_.exit

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarInstanceE7reserveBJ_.exit.i.i.i, %bb.e, %bb.d, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsoTR8nlGN3X_18ty_python_semantic.exit.i
  %lpad.loopexit.split-lp5 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarInstanceENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarInstanceEEB1d_.exit.i unwind label %bb.g, !noalias !19991

_RNvXNtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB4_3VecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarInstanceEINtB2_10SpecExtendBQ_INtNtNtCs4NRVxsYgnAr_4core4iter8adapters12GenericShuntINtNtB2s_3map3MapINtCsddXFpJ32JCa_6either6EitherINtNtNtB2w_5slice4iter4IterNtBU_4TypeEB43_ENCNvNtNtBU_4call4bind29inferable_typevars_from_tuple0EINtNtB2w_6option6OptionNtNtB2w_7convert10InfallibleEEE11spec_extendBW_.exit.i: ; preds = %.noexc11.i, %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !19992
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !19998
  br label %_RNvXNtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarInstanceEINtB2_18SpecFromIterNestedB10_INtNtNtCs4NRVxsYgnAr_4core4iter8adapters12GenericShuntINtNtB2L_3map3MapINtCsddXFpJ32JCa_6either6EitherINtNtNtB2P_5slice4iter4IterNtB14_4TypeEB4m_ENCNvNtNtB14_4call4bind29inferable_typevars_from_tuple0EINtNtB2P_6option6OptionNtNtB2P_7convert10InfallibleEEE9from_iterB16_.exit

bb.g:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #32, !noalias !19991
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarInstanceEEB1d_.exit.i: ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  resume { ptr, i32 } %lpad.loopexit.split-lp5

_RNvXNtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarInstanceEINtB2_18SpecFromIterNestedB10_INtNtNtCs4NRVxsYgnAr_4core4iter8adapters12GenericShuntINtNtB2L_3map3MapINtCsddXFpJ32JCa_6either6EitherINtNtNtB2P_5slice4iter4IterNtB14_4TypeEB4m_ENCNvNtNtB14_4call4bind29inferable_typevars_from_tuple0EINtNtB2P_6option6OptionNtNtB2P_7convert10InfallibleEEE9from_iterB16_.exit: ; preds = %bb.f, %_RNvXNtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB4_3VecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarInstanceEINtB2_10SpecExtendBQ_INtNtNtCs4NRVxsYgnAr_4core4iter8adapters12GenericShuntINtNtB2s_3map3MapINtCsddXFpJ32JCa_6either6EitherINtNtNtB2w_5slice4iter4IterNtBU_4TypeEB43_ENCNvNtNtBU_4call4bind29inferable_typevars_from_tuple0EINtNtB2w_6option6OptionNtNtB2w_7convert10InfallibleEEE11spec_extendBW_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !19992
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCscdodAO9FK5_5alloc3vec14spec_from_iterINtB4_3VecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8callable12CallableTypeEINtB2_12SpecFromIterBT_INtNtNtCs4NRVxsYgnAr_4core4iter8adapters12GenericShuntINtNtB2q_3map3MapINtNtNtB2u_5slice4iter4IterBT_ENCNCNvMs1m_NtBX_8functionNtB4c_12FunctionType30recursive_type_normalized_impls_00EINtNtB2u_6option6OptionNtNtB2u_7convert10InfallibleEEE9from_iterBZ_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(64) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
end_hunk_3
begin_hunk_4_@_RNvXNtNtCscdodAO9FK5_5alloc3vec14spec_from_iterINtB4_3VecNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class11named_tuple15NamedTupleFieldEINtB2_12SpecFromIterBT_INtNtNtCs4NRVxsYgnAr_4core4iter8adapters12GenericShuntINtNtB2F_3map3MapINtNtNtB2J_5slice4iter4IterBT_ENCNvMs1_BV_NtBV_14NamedTupleSpec30recursive_type_normalized_impl0EINtNtB2J_6option6OptionNtNtB2J_7convert10InfallibleEEE9from_iterB11_:bb.a
_RNvXNtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class11named_tuple15NamedTupleFieldEINtB2_18SpecFromIterNestedB10_INtNtNtCs4NRVxsYgnAr_4core4iter8adapters12GenericShuntINtNtB2T_3map3MapINtNtNtB2X_5slice4iter4IterB10_ENCNvMs1_B12_NtB12_14NamedTupleSpec30recursive_type_normalized_impl0EINtNtB2X_6option6OptionNtNtB2X_7convert10InfallibleEEE9from_iterB18_.exit: ; preds = %bb.c, %.loopexit9.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !20270
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCscdodAO9FK5_5alloc3vec14spec_from_iterINtB4_3VecNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class11named_tuple15NamedTupleFieldEINtB2_12SpecFromIterBT_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB2H_9enumerate9EnumerateINtNtNtB2L_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameEENCNvMNtNtNtBZ_5infer7builder11named_tupleNtB5c_20TypeInferenceBuilder35infer_collections_namedtuple_fieldss1_0EE9from_iterB11_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(56) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20304)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !20305
  %.val.i = load ptr, ptr %1, align 8, !alias.scope !20304, !nonnull !14, !noundef !14
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val3.i = load ptr, ptr %i.d, align 8, !alias.scope !20304, !nonnull !14, !noundef !14
  %i.e = ptrtoint ptr %.val3.i to i64
  %i.f = ptrtoint ptr %.val.i to i64
  %i.g = sub nuw i64 %i.e, %i.f
  %i.h = lshr exact i64 %i.g, 4                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !20305
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.h, i1 noundef zeroext false, i64 noundef 8, i64 noundef 56), !noalias !20305
  %i.i = load i64, ptr %i.b, align 8, !range !28, !noalias !20305, !noundef !14
  %i.j = trunc nuw i64 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.l = load i64, ptr %i.k, align 8, !range !60, !noalias !20305, !noundef !14 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.j, label %bb.b, label %_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class11named_tuple15NamedTupleFieldE14extend_trustedINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB2m_9enumerate9EnumerateINtNtNtB2q_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameEENCNvMNtNtNtBL_5infer7builder11named_tupleNtB4R_20TypeInferenceBuilder35infer_collections_namedtuple_fieldss1_0EEBN_.exit.i.i, !prof !16

bb.b:                                             ; preds = %bb.a
  %i.n = load i64, ptr %i.m, align 8, !noalias !20305
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.l, i64 %i.n) #31, !noalias !20305
  unreachable

_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class11named_tuple15NamedTupleFieldE14extend_trustedINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB2m_9enumerate9EnumerateINtNtNtB2q_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameEENCNvMNtNtNtBL_5infer7builder11named_tupleNtB4R_20TypeInferenceBuilder35infer_collections_namedtuple_fieldss1_0EEBN_.exit.i.i: ; preds = %bb.a
  %i.o = load ptr, ptr %i.m, align 8, !noalias !20305, !nonnull !14, !noundef !14 ; 2 uses
  %i.p = icmp ule i64 %i.h, %i.l
  tail call void @llvm.assume(i1 %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !20305
  store i64 %i.l, ptr %i.c, align 8, !noalias !20305
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.o, ptr %i.q, align 8, !noalias !20305
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 0, ptr %i.r, align 8, !noalias !20305
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !20306
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.o, ptr %i.s, align 8, !noalias !20306
  store ptr %i.r, ptr %i.a, align 8, !noalias !20306
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %i.t, align 8, !noalias !20306
  invoke void @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameEENCNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder11named_tupleNtB2H_20TypeInferenceBuilder35infer_collections_namedtuple_fieldss1_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4Z_8for_each4callNtNtNtB2L_5class11named_tuple15NamedTupleFieldNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6V_3VecB62_E14extend_trustedBN_E0E0EB2N_(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %1, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %_RNvXs_NtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class11named_tuple15NamedTupleFieldEINtB4_18SpecFromIterNestedB12_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB2X_9enumerate9EnumerateINtNtNtB31_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameEENCNvMNtNtNtB18_5infer7builder11named_tupleNtB5s_20TypeInferenceBuilder35infer_collections_namedtuple_fieldss1_0EE9from_iterB1a_.exit unwind label %bb.c, !noalias !20307

bb.c:                                             ; preds = %_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class11named_tuple15NamedTupleFieldE14extend_trustedINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB2m_9enumerate9EnumerateINtNtNtB2q_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameEENCNvMNtNtNtBL_5infer7builder11named_tupleNtB4R_20TypeInferenceBuilder35infer_collections_namedtuple_fieldss1_0EEBN_.exit.i.i
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class11named_tuple15NamedTupleFieldEEB1f_(ptr noalias noundef align 8 dereferenceable(24) %i.c) #33
          to label %bb.e unwind label %bb.d, !noalias !20305

bb.d:                                             ; preds = %bb.c
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #32, !noalias !20305
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.u

_RNvXs_NtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class11named_tuple15NamedTupleFieldEINtB4_18SpecFromIterNestedB12_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB2X_9enumerate9EnumerateINtNtNtB31_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameEENCNvMNtNtNtB18_5infer7builder11named_tupleNtB5s_20TypeInferenceBuilder35infer_collections_namedtuple_fieldss1_0EE9from_iterB1a_.exit: ; preds = %_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class11named_tuple15NamedTupleFieldE14extend_trustedINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB2m_9enumerate9EnumerateINtNtNtB2q_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameEENCNvMNtNtNtBL_5infer7builder11named_tupleNtB4R_20TypeInferenceBuilder35infer_collections_namedtuple_fieldss1_0EEBN_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !20306
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !20304
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !20305
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCscdodAO9FK5_5alloc3vec14spec_from_iterINtB4_3VecRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameEINtB2_12SpecFromIterBT_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map9FilterMapINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter4IterBU_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5FieldENCINvNtNtNtNtB3S_5infer7builder14post_inference12static_class30check_static_class_definitionsNCNvMs_B4T_NtB4T_20TypeInferenceBuilder18infer_region_scopes_0Esb_0EE9from_iterB3U_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 3 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 3 uses
  %i.e = alloca [8 x i8], align 8                 ; 5 uses
  %i.f = alloca [32 x i8], align 8                ; 8 uses
  %i.g = alloca [24 x i8], align 8                ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20345)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20346)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !20347
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20348)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20349)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20350)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !20351
  store ptr %i.h, ptr %i.e, align 8, !noalias !20352
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !20353, !nonnull !14, !noundef !14
  %.promoted.i.i.i.i = load ptr, ptr %1, align 8, !alias.scope !20353
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.k = phi ptr [ %i.m, %bb.c ], [ %.promoted.i.i.i.i, %bb.a ] ; 4 uses
  %i.l = icmp eq ptr %i.k, %i.j
  br i1 %i.l, label %bb.l, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 120 ; 2 uses
  store ptr %i.m, ptr %1, align 8, !alias.scope !20353
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 96
  %i.o = call noundef align 8 ptr @_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCINvNtNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder14post_inference12static_class30check_static_class_definitionsNCNvMs_BX_NtBX_20TypeInferenceBuilder18infer_region_scopes_0Esb_0INtB7_5FnMutTTRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameRNtNtB11_5class5FieldEEE8call_mutB13_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.k), !noalias !20354 ; 2 uses
  %.not8.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not8.i.i.i.i, label %bb.b, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !20351
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !20355
  call void @_RNvXs2_NtNtCs5e9M2GLoJMY_8indexmap3map4iterINtB5_4IterNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5FieldENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator9size_hintB1F_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1), !noalias !20356
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !20355
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !20347
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef 4, i1 noundef zeroext false, i64 noundef 8, i64 noundef 8), !noalias !20345
  %i.p = load i64, ptr %i.c, align 8, !range !28, !noalias !20347, !noundef !14
  %i.q = trunc nuw i64 %i.p to i1
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.s = load i64, ptr %i.r, align 8, !range !60, !noalias !20347, !noundef !14 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.q, label %bb.e, label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsoTR8nlGN3X_18ty_python_semantic.exit.i, !prof !16

bb.e:                                             ; preds = %bb.d
  %i.u = load i64, ptr %i.t, align 8, !noalias !20347
  call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.s, i64 %i.u) #31, !noalias !20345
  unreachable

_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsoTR8nlGN3X_18ty_python_semantic.exit.i: ; preds = %bb.d
  %i.v = load ptr, ptr %i.t, align 8, !noalias !20347, !nonnull !14, !noundef !14 ; 2 uses
  %i.w = icmp ugt i64 %i.s, 3
  call void @llvm.assume(i1 %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !20347
  store ptr %i.o, ptr %i.v, align 8, !noalias !20345
  store i64 %i.s, ptr %i.g, align 8, !noalias !20347
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  store ptr %i.v, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !20347
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 4 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !20347
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !20347
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !noalias !20345
  call void @llvm.experimental.noalias.scope.decl(metadata !20357)
  call void @llvm.experimental.noalias.scope.decl(metadata !20358)
  call void @llvm.experimental.noalias.scope.decl(metadata !20359)
  call void @llvm.experimental.noalias.scope.decl(metadata !20360)
  %i.x = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  br label %bb.f

bb.f:                                             ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameE7reserveCsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsoTR8nlGN3X_18ty_python_semantic.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !20361)
  call void @llvm.experimental.noalias.scope.decl(metadata !20362)
  call void @llvm.experimental.noalias.scope.decl(metadata !20363)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !20364
  store ptr %i.x, ptr %i.b, align 8, !noalias !20365
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !20366, !noalias !20347, !nonnull !14, !noundef !14
  %.promoted.i.i.i.i.i.i = load ptr, ptr %i.f, align 8, !alias.scope !20366, !noalias !20347
  br label %bb.g

bb.g:                                             ; preds = %.noexc.i, %bb.f
  %i.aa = phi ptr [ %i.ac, %.noexc.i ], [ %.promoted.i.i.i.i.i.i, %bb.f ] ; 4 uses
  %i.ab = icmp eq ptr %i.aa, %i.z
  br i1 %i.ab, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 120 ; 2 uses
  store ptr %i.ac, ptr %i.f, align 8, !alias.scope !20366, !noalias !20347
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 96
  %i.ae = invoke noundef align 8 ptr @_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCINvNtNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder14post_inference12static_class30check_static_class_definitionsNCNvMs_BX_NtBX_20TypeInferenceBuilder18infer_region_scopes_0Esb_0INtB7_5FnMutTTRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameRNtNtB11_5class5FieldEEE8call_mutB13_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ad, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.aa)
          to label %.noexc.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !20345 ; 2 uses

.noexc.i:                                         ; preds = %bb.h
  %.not8.i.i.i.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not8.i.i.i.i.i.i, label %bb.g, label %bb.i

bb.i:                                             ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !20364
  %i.af = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !20367, !noalias !20347, !noundef !14 ; 4 uses
  %i.ag = icmp ult i64 %i.af, 1152921504606846976
  call void @llvm.assume(i1 %i.ag)
  %i.ah = load i64, ptr %i.g, align 8, !range !24, !alias.scope !20367, !noalias !20347, !noundef !14
  %i.ai = icmp eq i64 %i.af, %i.ah
  br i1 %i.ai, label %bb.j, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameE7reserveCsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !20368
  invoke void @_RNvXs2_NtNtCs5e9M2GLoJMY_8indexmap3map4iterINtB5_4IterNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5FieldENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator9size_hintB1F_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.f)
          to label %.noexc7.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !20345

.noexc7.i:                                        ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !20368
  %i.aj = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !20369, !noalias !20347, !noundef !14 ; 2 uses
  %i.ak = load i64, ptr %i.g, align 8, !range !24, !alias.scope !20369, !noalias !20347, !noundef !14
  %i.al = icmp eq i64 %i.ak, %i.aj
  br i1 %i.al, label %bb.k, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameE7reserveCsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i, !prof !16

bb.k:                                             ; preds = %.noexc7.i
  invoke void @_RINvNvMs2_NtCscdodAO9FK5_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef %i.aj, i64 noundef range(i64 1, 0) 1, i64 noundef 8, i64 noundef 8)
          to label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameE7reserveCsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !20345

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameE7reserveCsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i: ; preds = %bb.k, %.noexc7.i, %bb.i
  %i.am = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !20367, !noalias !20347, !nonnull !14, !noundef !14
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.af
  store ptr %i.ae, ptr %i.an, align 8, !noalias !20345
  %i.ao = add nuw nsw i64 %i.af, 1
  store i64 %i.ao, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !20367, !noalias !20347
  br label %bb.f

bb.l:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !20351
  store i64 0, ptr %0, align 8, !alias.scope !20345
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.ap, align 8, !alias.scope !20345
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.aq, align 8, !alias.scope !20345
  br label %_RNvXNtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB4_3VecRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameEINtB2_18SpecFromIterNestedB10_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map9FilterMapINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter4IterB11_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5FieldENCINvNtNtNtNtB47_5infer7builder14post_inference12static_class30check_static_class_definitionsNCNvMs_B58_NtB58_20TypeInferenceBuilder18infer_region_scopes_0Esb_0EE9from_iterB49_.exit

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.h, %bb.k, %bb.j
  %lpad.loopexit.split-lp10 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameEECsoTR8nlGN3X_18ty_python_semantic.exit.i unwind label %bb.n, !noalias !20345

bb.m:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !20364
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !20347
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !20346
  br label %_RNvXNtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB4_3VecRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameEINtB2_18SpecFromIterNestedB10_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map9FilterMapINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter4IterB11_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5FieldENCINvNtNtNtNtB47_5infer7builder14post_inference12static_class30check_static_class_definitionsNCNvMs_B58_NtB58_20TypeInferenceBuilder18infer_region_scopes_0Esb_0EE9from_iterB49_.exit

bb.n:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #32, !noalias !20345
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameEECsoTR8nlGN3X_18ty_python_semantic.exit.i: ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  resume { ptr, i32 } %lpad.loopexit.split-lp10

_RNvXNtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB4_3VecRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameEINtB2_18SpecFromIterNestedB10_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map9FilterMapINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter4IterB11_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5FieldENCINvNtNtNtNtB47_5infer7builder14post_inference12static_class30check_static_class_definitionsNCNvMs_B58_NtB58_20TypeInferenceBuilder18infer_region_scopes_0Esb_0EE9from_iterB49_.exit: ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !20347
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCscdodAO9FK5_5alloc3vec14spec_from_iterINtB4_3VecReEINtB2_12SpecFromIterBT_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filter6FilterIB1k_INtNtB1o_3map3MapINtNtNtNtB6_11collections5btree3map4KeysNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict14TypedDictFieldENvMB3f_B3d_6as_strENCINvNtNtB42_10diagnostic11levenshtein20find_best_suggestionB2i_B2i_E0ENCB5t_s_0EE9from_iterB42_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(80) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [80 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20377)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !20378
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.f = tail call { ptr, i64 } @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map4KeysNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict14TypedDictFieldENvMB1T_B1R_6as_strENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNtB8_6filter15filter_try_foldReuINtNtNtBc_3ops12control_flow11ControlFlowB5l_ENCINvNtNtB2G_10diagnostic11levenshtein20find_best_suggestionBN_BN_E0NCINvNvB45_4find5checkB5l_QNCB6a_s_0E0E0B5o_EB2G_(ptr noalias noundef nonnull align 8 dereferenceable(80) %1, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e, ptr noalias noundef nonnull %i.d), !noalias !20377 ; 2 uses
  %i.g = extractvalue { ptr, i64 } %i.f, 0        ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.g, null
  %i.h = extractvalue { ptr, i64 } %i.f, 1
  br i1 %.not.i.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !20378
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 4, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16), !noalias !20377
  %i.i = load i64, ptr %i.a, align 8, !range !28, !noalias !20378, !noundef !14
  %i.j = trunc nuw i64 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.l = load i64, ptr %i.k, align 8, !range !60, !noalias !20378, !noundef !14 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.j, label %bb.c, label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsoTR8nlGN3X_18ty_python_semantic.exit.i, !prof !16

bb.c:                                             ; preds = %bb.b
  %i.n = load i64, ptr %i.m, align 8, !noalias !20378
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.l, i64 %i.n) #31, !noalias !20377
  unreachable

_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsoTR8nlGN3X_18ty_python_semantic.exit.i: ; preds = %bb.b
  %i.o = load ptr, ptr %i.m, align 8, !noalias !20378, !nonnull !14, !noundef !14 ; 3 uses
  %i.p = icmp ugt i64 %i.l, 3
  tail call void @llvm.assume(i1 %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !20378
  store ptr %i.g, ptr %i.o, align 8, !noalias !20377
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 %i.h, ptr %i.q, align 8, !noalias !20377
  store i64 %i.l, ptr %i.c, align 8, !noalias !20378
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %i.o, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !20378
  %.sroa.64.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  store i64 1, ptr %.sroa.64.0..sroa_idx.i, align 8, !noalias !20378
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !20378
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.b, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 80, i1 false), !noalias !20377
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 80 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 2 uses
  %i.t = invoke { ptr, i64 } @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map4KeysNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict14TypedDictFieldENvMB1T_B1R_6as_strENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNtB8_6filter15filter_try_foldReuINtNtNtBc_3ops12control_flow11ControlFlowB5l_ENCINvNtNtB2G_10diagnostic11levenshtein20find_best_suggestionBN_BN_E0NCINvNvB45_4find5checkB5l_QNCB6a_s_0E0E0B5o_EB2G_(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.s, ptr noalias noundef nonnull %i.r)
          to label %.noexc.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !20377 ; 2 uses

.noexc.i:                                         ; preds = %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsoTR8nlGN3X_18ty_python_semantic.exit.i
  %i.u = extractvalue { ptr, i64 } %i.t, 0        ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not10.i.i.i, label %_RNvXNtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB4_3VecReEINtB2_10SpecExtendBQ_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filter6FilterIB1f_INtNtB1j_3map3MapINtNtNtNtB6_11collections5btree3map4KeysNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict14TypedDictFieldENvMB3a_B38_6as_strENCINvNtNtB3X_10diagnostic11levenshtein20find_best_suggestionB2d_B2d_E0ENCB5o_s_0EE11spec_extendB3X_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.noexc.i, %.noexc10.i
  %i.v = phi ptr [ %i.af, %.noexc10.i ], [ %i.u, %.noexc.i ]
  %.pn.i.i.i = phi { ptr, i64 } [ %i.ae, %.noexc10.i ], [ %i.t, %.noexc.i ]
  %.sroa.3.0.i.i11.i.i.i = extractvalue { ptr, i64 } %.pn.i.i.i, 1
  %i.w = load i64, ptr %.sroa.64.0..sroa_idx.i, align 8, !alias.scope !20379, !noalias !20378, !noundef !14 ; 5 uses
  %i.x = icmp ult i64 %i.w, 576460752303423488
  call void @llvm.assume(i1 %i.x)
  %i.y = load i64, ptr %i.c, align 8, !range !24, !alias.scope !20379, !noalias !20378, !noundef !14
  %i.z = icmp eq i64 %i.w, %i.y
  br i1 %i.z, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecReE7reserveCsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i, label %.noexc9.i

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecReE7reserveCsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  invoke void @_RINvNvMs2_NtCscdodAO9FK5_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.w, i64 noundef range(i64 1, 0) 1, i64 noundef 8, i64 noundef 16)
          to label %.noexc9.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !20377

.noexc9.i:                                        ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecReE7reserveCsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i, %.lr.ph.i.i.i
  %i.aa = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !20379, !noalias !20378, !nonnull !14, !noundef !14
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.aa, i64 %i.w ; 2 uses
  store ptr %i.v, ptr %i.ab, align 8, !noalias !20377
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store i64 %.sroa.3.0.i.i11.i.i.i, ptr %i.ac, align 8, !noalias !20377
  %i.ad = add nuw nsw i64 %i.w, 1
  store i64 %i.ad, ptr %.sroa.64.0..sroa_idx.i, align 8, !alias.scope !20379, !noalias !20378
  %i.ae = invoke { ptr, i64 } @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map4KeysNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict14TypedDictFieldENvMB1T_B1R_6as_strENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNtB8_6filter15filter_try_foldReuINtNtNtBc_3ops12control_flow11ControlFlowB5l_ENCINvNtNtB2G_10diagnostic11levenshtein20find_best_suggestionBN_BN_E0NCINvNvB45_4find5checkB5l_QNCB6a_s_0E0E0B5o_EB2G_(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.s, ptr noalias noundef nonnull %i.r)
          to label %.noexc10.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !20377 ; 2 uses

.noexc10.i:                                       ; preds = %.noexc9.i
  %i.af = extractvalue { ptr, i64 } %i.ae, 0      ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i.i.i, label %_RNvXNtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB4_3VecReEINtB2_10SpecExtendBQ_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filter6FilterIB1f_INtNtB1j_3map3MapINtNtNtNtB6_11collections5btree3map4KeysNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict14TypedDictFieldENvMB3a_B38_6as_strENCINvNtNtB3X_10diagnostic11levenshtein20find_best_suggestionB2d_B2d_E0ENCB5o_s_0EE11spec_extendB3X_.exit.i, label %.lr.ph.i.i.i

bb.d:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8, !alias.scope !20377
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.ag, align 8, !alias.scope !20377
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.ah, align 8, !alias.scope !20377
  br label %_RNvXNtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB4_3VecReEINtB2_18SpecFromIterNestedB10_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filter6FilterIB1y_INtNtB1C_3map3MapINtNtNtNtB6_11collections5btree3map4KeysNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict14TypedDictFieldENvMB3t_B3r_6as_strENCINvNtNtB4g_10diagnostic11levenshtein20find_best_suggestionB2w_B2w_E0ENCB5H_s_0EE9from_iterB4g_.exit

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc9.i, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecReE7reserveCsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsoTR8nlGN3X_18ty_python_semantic.exit.i
  %lpad.loopexit.split-lp5 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecReENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecReEECsoTR8nlGN3X_18ty_python_semantic.exit.i unwind label %bb.e, !noalias !20377

_RNvXNtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB4_3VecReEINtB2_10SpecExtendBQ_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filter6FilterIB1f_INtNtB1j_3map3MapINtNtNtNtB6_11collections5btree3map4KeysNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict14TypedDictFieldENvMB3a_B38_6as_strENCINvNtNtB3X_10diagnostic11levenshtein20find_best_suggestionB2d_B2d_E0ENCB5o_s_0EE11spec_extendB3X_.exit.i: ; preds = %.noexc10.i, %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !20378
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !20380
  br label %_RNvXNtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB4_3VecReEINtB2_18SpecFromIterNestedB10_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filter6FilterIB1y_INtNtB1C_3map3MapINtNtNtNtB6_11collections5btree3map4KeysNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict14TypedDictFieldENvMB3t_B3r_6as_strENCINvNtNtB4g_10diagnostic11levenshtein20find_best_suggestionB2w_B2w_E0ENCB5H_s_0EE9from_iterB4g_.exit

bb.e:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #32, !noalias !20377
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecReEECsoTR8nlGN3X_18ty_python_semantic.exit.i: ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  resume { ptr, i32 } %lpad.loopexit.split-lp5

_RNvXNtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB4_3VecReEINtB2_18SpecFromIterNestedB10_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filter6FilterIB1y_INtNtB1C_3map3MapINtNtNtNtB6_11collections5btree3map4KeysNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict14TypedDictFieldENvMB3t_B3r_6as_strENCINvNtNtB4g_10diagnostic11levenshtein20find_best_suggestionB2w_B2w_E0ENCB5H_s_0EE9from_iterB4g_.exit: ; preds = %bb.d, %_RNvXNtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB4_3VecReEINtB2_10SpecExtendBQ_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filter6FilterIB1f_INtNtB1j_3map3MapINtNtNtNtB6_11collections5btree3map4KeysNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict14TypedDictFieldENvMB3a_B38_6as_strENCINvNtNtB3X_10diagnostic11levenshtein20find_best_suggestionB2d_B2d_E0ENCB5o_s_0EE11spec_extendB3X_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !20378
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCscdodAO9FK5_5alloc3vec14spec_from_iterINtB4_3VecReEINtB2_12SpecFromIterBT_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filter6FilterIB1k_INtNtB1o_6copied6CopiedINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map4KeysBT_NtNtCsoTR8nlGN3X_18ty_python_semantic4lint9LintEntryEENCINvNtNtB3E_10diagnostic11levenshtein20find_best_suggestionB2i_B2i_E0ENCB4u_s_0EE9from_iterB3E_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(48) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 3 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 3 uses
  %i.d = alloca [48 x i8], align 8                ; 8 uses
  %i.e = alloca [24 x i8], align 8                ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20404)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !20405
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.h = tail call { ptr, i64 } @_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map4KeysReNtNtCsoTR8nlGN3X_18ty_python_semantic4lint9LintEntryEENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNtB7_6filter15filter_try_foldB1U_uINtNtNtBb_3ops12control_flow11ControlFlowB1U_ENCINvNtNtB20_10diagnostic11levenshtein20find_best_suggestionBP_BP_E0NCINvNvB2O_4find5checkB1U_QNCB4V_s_0E0E0B49_EB20_(ptr noalias noundef nonnull align 8 dereferenceable(48) %1, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.g, ptr noalias noundef nonnull %i.f), !noalias !20404 ; 2 uses
  %i.i = extractvalue { ptr, i64 } %i.h, 0        ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.i, null
  %i.j = extractvalue { ptr, i64 } %i.h, 1
  br i1 %.not.i.i.i, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !20406
  call void @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map4KeysReNtNtCsoTR8nlGN3X_18ty_python_semantic4lint9LintEntryEENtNtNtB8_6traits8iterator8Iterator9size_hintB1Z_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %1), !noalias !20407
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !20406
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !20405
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef 4, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16), !noalias !20404
  %i.k = load i64, ptr %i.b, align 8, !range !28, !noalias !20405, !noundef !14
  %i.l = trunc nuw i64 %i.k to i1
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.n = load i64, ptr %i.m, align 8, !range !60, !noalias !20405, !noundef !14 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.l, label %bb.c, label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsoTR8nlGN3X_18ty_python_semantic.exit.i, !prof !16

bb.c:                                             ; preds = %bb.b
  %i.p = load i64, ptr %i.o, align 8, !noalias !20405
  call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.n, i64 %i.p) #31, !noalias !20404
  unreachable

_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsoTR8nlGN3X_18ty_python_semantic.exit.i: ; preds = %bb.b
  %i.q = load ptr, ptr %i.o, align 8, !noalias !20405, !nonnull !14, !noundef !14 ; 3 uses
  %i.r = icmp ugt i64 %i.n, 3
  call void @llvm.assume(i1 %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !20405
  store ptr %i.i, ptr %i.q, align 8, !noalias !20404
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %i.j, ptr %i.s, align 8, !noalias !20404
  store i64 %i.n, ptr %i.e, align 8, !noalias !20405
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr %i.q, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !20405
  %.sroa.64.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 4 uses
  store i64 1, ptr %.sroa.64.0..sroa_idx.i, align 8, !noalias !20405
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !20405
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.d, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false), !noalias !20404
  call void @llvm.experimental.noalias.scope.decl(metadata !20408)
  call void @llvm.experimental.noalias.scope.decl(metadata !20409)
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 48 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 40 ; 2 uses
  %i.v = invoke { ptr, i64 } @_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map4KeysReNtNtCsoTR8nlGN3X_18ty_python_semantic4lint9LintEntryEENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNtB7_6filter15filter_try_foldB1U_uINtNtNtBb_3ops12control_flow11ControlFlowB1U_ENCINvNtNtB20_10diagnostic11levenshtein20find_best_suggestionBP_BP_E0NCINvNvB2O_4find5checkB1U_QNCB4V_s_0E0E0B49_EB20_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.u, ptr noalias noundef nonnull %i.t)
          to label %.noexc.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !20404 ; 2 uses

.noexc.i:                                         ; preds = %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsoTR8nlGN3X_18ty_python_semantic.exit.i
  %i.w = extractvalue { ptr, i64 } %i.v, 0        ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not10.i.i.i, label %_RNvXNtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB4_3VecReEINtB2_10SpecExtendBQ_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filter6FilterIB1f_INtNtB1j_6copied6CopiedINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map4KeysBQ_NtNtCsoTR8nlGN3X_18ty_python_semantic4lint9LintEntryEENCINvNtNtB3z_10diagnostic11levenshtein20find_best_suggestionB2d_B2d_E0ENCB4p_s_0EE11spec_extendB3z_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.noexc.i, %.noexc11.i
  %i.x = phi ptr [ %i.ak, %.noexc11.i ], [ %i.w, %.noexc.i ]
  %.pn.i.i.i = phi { ptr, i64 } [ %i.aj, %.noexc11.i ], [ %i.v, %.noexc.i ]
  %.sroa.3.0.i.i11.i.i.i = extractvalue { ptr, i64 } %.pn.i.i.i, 1
  %i.y = load i64, ptr %.sroa.64.0..sroa_idx.i, align 8, !alias.scope !20410, !noalias !20405, !noundef !14 ; 4 uses
  %i.z = icmp ult i64 %i.y, 576460752303423488
  call void @llvm.assume(i1 %i.z)
  %i.aa = load i64, ptr %i.e, align 8, !range !24, !alias.scope !20410, !noalias !20405, !noundef !14
  %i.ab = icmp eq i64 %i.y, %i.aa
  br i1 %i.ab, label %bb.d, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecReE7reserveCsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !20411
  invoke void @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map4KeysReNtNtCsoTR8nlGN3X_18ty_python_semantic4lint9LintEntryEENtNtNtB8_6traits8iterator8Iterator9size_hintB1Z_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.d)
          to label %.noexc9.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !20404

.noexc9.i:                                        ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !20411
  %i.ac = load i64, ptr %.sroa.64.0..sroa_idx.i, align 8, !alias.scope !20412, !noalias !20405, !noundef !14 ; 2 uses
  %i.ad = load i64, ptr %i.e, align 8, !range !24, !alias.scope !20412, !noalias !20405, !noundef !14
  %i.ae = icmp eq i64 %i.ad, %i.ac
  br i1 %i.ae, label %bb.e, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecReE7reserveCsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i, !prof !16

bb.e:                                             ; preds = %.noexc9.i
  invoke void @_RINvNvMs2_NtCscdodAO9FK5_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %i.ac, i64 noundef range(i64 1, 0) 1, i64 noundef 8, i64 noundef 16)
          to label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecReE7reserveCsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !20404

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecReE7reserveCsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i: ; preds = %bb.e, %.noexc9.i, %.lr.ph.i.i.i
  %i.af = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !20410, !noalias !20405, !nonnull !14, !noundef !14
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %i.af, i64 %i.y ; 2 uses
  store ptr %i.x, ptr %i.ag, align 8, !noalias !20404
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store i64 %.sroa.3.0.i.i11.i.i.i, ptr %i.ah, align 8, !noalias !20404
  %i.ai = add nuw nsw i64 %i.y, 1
  store i64 %i.ai, ptr %.sroa.64.0..sroa_idx.i, align 8, !alias.scope !20410, !noalias !20405
  %i.aj = invoke { ptr, i64 } @_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map4KeysReNtNtCsoTR8nlGN3X_18ty_python_semantic4lint9LintEntryEENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNtB7_6filter15filter_try_foldB1U_uINtNtNtBb_3ops12control_flow11ControlFlowB1U_ENCINvNtNtB20_10diagnostic11levenshtein20find_best_suggestionBP_BP_E0NCINvNvB2O_4find5checkB1U_QNCB4V_s_0E0E0B49_EB20_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.u, ptr noalias noundef nonnull %i.t)
          to label %.noexc11.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !20404 ; 2 uses

.noexc11.i:                                       ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecReE7reserveCsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i
  %i.ak = extractvalue { ptr, i64 } %i.aj, 0      ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i.i.i, label %_RNvXNtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB4_3VecReEINtB2_10SpecExtendBQ_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filter6FilterIB1f_INtNtB1j_6copied6CopiedINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map4KeysBQ_NtNtCsoTR8nlGN3X_18ty_python_semantic4lint9LintEntryEENCINvNtNtB3z_10diagnostic11levenshtein20find_best_suggestionB2d_B2d_E0ENCB4p_s_0EE11spec_extendB3z_.exit.i, label %.lr.ph.i.i.i

bb.f:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8, !alias.scope !20404
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.al, align 8, !alias.scope !20404
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.am, align 8, !alias.scope !20404
  br label %_RNvXNtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB4_3VecReEINtB2_18SpecFromIterNestedB10_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filter6FilterIB1y_INtNtB1C_6copied6CopiedINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map4KeysB10_NtNtCsoTR8nlGN3X_18ty_python_semantic4lint9LintEntryEENCINvNtNtB3T_10diagnostic11levenshtein20find_best_suggestionB2w_B2w_E0ENCB4J_s_0EE9from_iterB3T_.exit

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecReE7reserveCsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i, %bb.e, %bb.d, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsoTR8nlGN3X_18ty_python_semantic.exit.i
  %lpad.loopexit.split-lp5 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecReENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecReEECsoTR8nlGN3X_18ty_python_semantic.exit.i unwind label %bb.g, !noalias !20404

_RNvXNtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB4_3VecReEINtB2_10SpecExtendBQ_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filter6FilterIB1f_INtNtB1j_6copied6CopiedINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map4KeysBQ_NtNtCsoTR8nlGN3X_18ty_python_semantic4lint9LintEntryEENCINvNtNtB3z_10diagnostic11levenshtein20find_best_suggestionB2d_B2d_E0ENCB4p_s_0EE11spec_extendB3z_.exit.i: ; preds = %.noexc11.i, %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !20405
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !20413
  br label %_RNvXNtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB4_3VecReEINtB2_18SpecFromIterNestedB10_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filter6FilterIB1y_INtNtB1C_6copied6CopiedINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map4KeysB10_NtNtCsoTR8nlGN3X_18ty_python_semantic4lint9LintEntryEENCINvNtNtB3T_10diagnostic11levenshtein20find_best_suggestionB2w_B2w_E0ENCB4J_s_0EE9from_iterB3T_.exit

bb.g:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #32, !noalias !20404
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecReEECsoTR8nlGN3X_18ty_python_semantic.exit.i: ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  resume { ptr, i32 } %lpad.loopexit.split-lp5

_RNvXNtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB4_3VecReEINtB2_18SpecFromIterNestedB10_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filter6FilterIB1y_INtNtB1C_6copied6CopiedINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map4KeysB10_NtNtCsoTR8nlGN3X_18ty_python_semantic4lint9LintEntryEENCINvNtNtB3T_10diagnostic11levenshtein20find_best_suggestionB2w_B2w_E0ENCB4J_s_0EE9from_iterB3T_.exit: ; preds = %bb.f, %_RNvXNtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB4_3VecReEINtB2_10SpecExtendBQ_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filter6FilterIB1f_INtNtB1j_6copied6CopiedINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map4KeysBQ_NtNtCsoTR8nlGN3X_18ty_python_semantic4lint9LintEntryEENCINvNtNtB3z_10diagnostic11levenshtein20find_best_suggestionB2d_B2d_E0ENCB4p_s_0EE11spec_extendB3z_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !20405
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCscdodAO9FK5_5alloc3vec14spec_from_iterINtB4_3VecReEINtB2_12SpecFromIterBT_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filter6FilterINtNtB1o_3map3MapINtNtNtNtB6_11collections5btree3map4KeysNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict14TypedDictFieldENvMB3a_B38_6as_strENCINvNtNtB3X_10diagnostic11levenshtein20find_best_suggestionB2d_B2d_E0EE9from_iterB3X_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(80) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [80 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20421)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !20422
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.e = tail call { ptr, i64 } @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map4KeysNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict14TypedDictFieldENvMB1T_B1R_6as_strENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB45_4find5checkReQNCINvNtNtB2G_10diagnostic11levenshtein20find_best_suggestionBN_BN_E0E0INtNtNtBc_3ops12control_flow11ControlFlowB59_EEB2G_(ptr noalias noundef nonnull align 8 dereferenceable(80) %1, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d), !noalias !20421 ; 2 uses
  %i.f = extractvalue { ptr, i64 } %i.e, 0        ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.f, null
  %i.g = extractvalue { ptr, i64 } %i.e, 1
  br i1 %.not.i.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !20422
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 4, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16), !noalias !20421
  %i.h = load i64, ptr %i.a, align 8, !range !28, !noalias !20422, !noundef !14
  %i.i = trunc nuw i64 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !60, !noalias !20422, !noundef !14 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.i, label %bb.c, label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsoTR8nlGN3X_18ty_python_semantic.exit.i, !prof !16

bb.c:                                             ; preds = %bb.b
  %i.m = load i64, ptr %i.l, align 8, !noalias !20422
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.k, i64 %i.m) #31, !noalias !20421
  unreachable

_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsoTR8nlGN3X_18ty_python_semantic.exit.i: ; preds = %bb.b
  %i.n = load ptr, ptr %i.l, align 8, !noalias !20422, !nonnull !14, !noundef !14 ; 3 uses
  %i.o = icmp ugt i64 %i.k, 3
  tail call void @llvm.assume(i1 %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !20422
  store ptr %i.f, ptr %i.n, align 8, !noalias !20421
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 %i.g, ptr %i.p, align 8, !noalias !20421
  store i64 %i.k, ptr %i.c, align 8, !noalias !20422
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %i.n, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !20422
  %.sroa.64.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  store i64 1, ptr %.sroa.64.0..sroa_idx.i, align 8, !noalias !20422
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !20422
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.b, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 80, i1 false), !noalias !20421
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 2 uses
  %i.r = invoke { ptr, i64 } @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map4KeysNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict14TypedDictFieldENvMB1T_B1R_6as_strENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB45_4find5checkReQNCINvNtNtB2G_10diagnostic11levenshtein20find_best_suggestionBN_BN_E0E0INtNtNtBc_3ops12control_flow11ControlFlowB59_EEB2G_(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.q)
          to label %.noexc.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !20421 ; 2 uses

.noexc.i:                                         ; preds = %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsoTR8nlGN3X_18ty_python_semantic.exit.i
  %i.s = extractvalue { ptr, i64 } %i.r, 0        ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not10.i.i.i, label %_RNvXNtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB4_3VecReEINtB2_10SpecExtendBQ_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filter6FilterINtNtB1j_3map3MapINtNtNtNtB6_11collections5btree3map4KeysNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict14TypedDictFieldENvMB35_B33_6as_strENCINvNtNtB3S_10diagnostic11levenshtein20find_best_suggestionB28_B28_E0EE11spec_extendB3S_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.noexc.i, %.noexc10.i
  %i.t = phi ptr [ %i.ad, %.noexc10.i ], [ %i.s, %.noexc.i ]
  %.pn.i.i.i = phi { ptr, i64 } [ %i.ac, %.noexc10.i ], [ %i.r, %.noexc.i ]
  %.sroa.3.0.i.i11.i.i.i = extractvalue { ptr, i64 } %.pn.i.i.i, 1
  %i.u = load i64, ptr %.sroa.64.0..sroa_idx.i, align 8, !alias.scope !20423, !noalias !20422, !noundef !14 ; 5 uses
  %i.v = icmp ult i64 %i.u, 576460752303423488
  call void @llvm.assume(i1 %i.v)
  %i.w = load i64, ptr %i.c, align 8, !range !24, !alias.scope !20423, !noalias !20422, !noundef !14
  %i.x = icmp eq i64 %i.u, %i.w
  br i1 %i.x, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecReE7reserveCsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i, label %.noexc9.i

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecReE7reserveCsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  invoke void @_RINvNvMs2_NtCscdodAO9FK5_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.u, i64 noundef range(i64 1, 0) 1, i64 noundef 8, i64 noundef 16)
          to label %.noexc9.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !20421

.noexc9.i:                                        ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecReE7reserveCsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i, %.lr.ph.i.i.i
  %i.y = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !20423, !noalias !20422, !nonnull !14, !noundef !14
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %i.u ; 2 uses
  store ptr %i.t, ptr %i.z, align 8, !noalias !20421
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store i64 %.sroa.3.0.i.i11.i.i.i, ptr %i.aa, align 8, !noalias !20421
  %i.ab = add nuw nsw i64 %i.u, 1
  store i64 %i.ab, ptr %.sroa.64.0..sroa_idx.i, align 8, !alias.scope !20423, !noalias !20422
  %i.ac = invoke { ptr, i64 } @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map4KeysNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict14TypedDictFieldENvMB1T_B1R_6as_strENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB45_4find5checkReQNCINvNtNtB2G_10diagnostic11levenshtein20find_best_suggestionBN_BN_E0E0INtNtNtBc_3ops12control_flow11ControlFlowB59_EEB2G_(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.q)
          to label %.noexc10.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !20421 ; 2 uses

.noexc10.i:                                       ; preds = %.noexc9.i
  %i.ad = extractvalue { ptr, i64 } %i.ac, 0      ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i.i, label %_RNvXNtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB4_3VecReEINtB2_10SpecExtendBQ_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filter6FilterINtNtB1j_3map3MapINtNtNtNtB6_11collections5btree3map4KeysNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict14TypedDictFieldENvMB35_B33_6as_strENCINvNtNtB3S_10diagnostic11levenshtein20find_best_suggestionB28_B28_E0EE11spec_extendB3S_.exit.i, label %.lr.ph.i.i.i

bb.d:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8, !alias.scope !20421
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.ae, align 8, !alias.scope !20421
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.af, align 8, !alias.scope !20421
  br label %_RNvXNtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB4_3VecReEINtB2_18SpecFromIterNestedB10_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filter6FilterINtNtB1C_3map3MapINtNtNtNtB6_11collections5btree3map4KeysNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict14TypedDictFieldENvMB3o_B3m_6as_strENCINvNtNtB4b_10diagnostic11levenshtein20find_best_suggestionB2r_B2r_E0EE9from_iterB4b_.exit

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc9.i, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecReE7reserveCsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsoTR8nlGN3X_18ty_python_semantic.exit.i
  %lpad.loopexit.split-lp5 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecReENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecReEECsoTR8nlGN3X_18ty_python_semantic.exit.i unwind label %bb.e, !noalias !20421

_RNvXNtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB4_3VecReEINtB2_10SpecExtendBQ_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filter6FilterINtNtB1j_3map3MapINtNtNtNtB6_11collections5btree3map4KeysNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict14TypedDictFieldENvMB35_B33_6as_strENCINvNtNtB3S_10diagnostic11levenshtein20find_best_suggestionB28_B28_E0EE11spec_extendB3S_.exit.i: ; preds = %.noexc10.i, %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !20422
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !20424
  br label %_RNvXNtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB4_3VecReEINtB2_18SpecFromIterNestedB10_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filter6FilterINtNtB1C_3map3MapINtNtNtNtB6_11collections5btree3map4KeysNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict14TypedDictFieldENvMB3o_B3m_6as_strENCINvNtNtB4b_10diagnostic11levenshtein20find_best_suggestionB2r_B2r_E0EE9from_iterB4b_.exit

bb.e:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #32, !noalias !20421
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecReEECsoTR8nlGN3X_18ty_python_semantic.exit.i: ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  resume { ptr, i32 } %lpad.loopexit.split-lp5

_RNvXNtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB4_3VecReEINtB2_18SpecFromIterNestedB10_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filter6FilterINtNtB1C_3map3MapINtNtNtNtB6_11collections5btree3map4KeysNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict14TypedDictFieldENvMB3o_B3m_6as_strENCINvNtNtB4b_10diagnostic11levenshtein20find_best_suggestionB2r_B2r_E0EE9from_iterB4b_.exit: ; preds = %bb.d, %_RNvXNtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB4_3VecReEINtB2_10SpecExtendBQ_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filter6FilterINtNtB1j_3map3MapINtNtNtNtB6_11collections5btree3map4KeysNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict14TypedDictFieldENvMB35_B33_6as_strENCINvNtNtB3S_10diagnostic11levenshtein20find_best_suggestionB28_B28_E0EE11spec_extendB3S_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !20422
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCscdodAO9FK5_5alloc3vec14spec_from_iterINtB4_3VecReEINtB2_12SpecFromIterBT_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filter6FilterINtNtB1o_6copied6CopiedINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map4KeysBT_NtNtCsoTR8nlGN3X_18ty_python_semantic4lint9LintEntryEENCINvNtNtB3z_10diagnostic11levenshtein20find_best_suggestionB2d_B2d_E0EE9from_iterB3z_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(48) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 3 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 3 uses
  %i.d = alloca [48 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20442)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !20443
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.g = tail call { ptr, i64 } @_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map4KeysReNtNtCsoTR8nlGN3X_18ty_python_semantic4lint9LintEntryEENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvB2O_4find5checkB1U_QNCINvNtNtB20_10diagnostic11levenshtein20find_best_suggestionBP_BP_E0E0INtNtNtBb_3ops12control_flow11ControlFlowB1U_EEB20_(ptr noalias noundef nonnull align 8 dereferenceable(48) %1, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f), !noalias !20442 ; 2 uses
  %i.h = extractvalue { ptr, i64 } %i.g, 0        ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.h, null
  %i.i = extractvalue { ptr, i64 } %i.g, 1
  br i1 %.not.i.i.i, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !20444
  call void @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map4KeysReNtNtCsoTR8nlGN3X_18ty_python_semantic4lint9LintEntryEENtNtNtB8_6traits8iterator8Iterator9size_hintB1Z_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %1), !noalias !20445
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !20444
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !20443
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef 4, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16), !noalias !20442
  %i.j = load i64, ptr %i.b, align 8, !range !28, !noalias !20443, !noundef !14
  %i.k = trunc nuw i64 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.m = load i64, ptr %i.l, align 8, !range !60, !noalias !20443, !noundef !14 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.k, label %bb.c, label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsoTR8nlGN3X_18ty_python_semantic.exit.i, !prof !16

bb.c:                                             ; preds = %bb.b
  %i.o = load i64, ptr %i.n, align 8, !noalias !20443
  call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.m, i64 %i.o) #31, !noalias !20442
  unreachable

_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsoTR8nlGN3X_18ty_python_semantic.exit.i: ; preds = %bb.b
  %i.p = load ptr, ptr %i.n, align 8, !noalias !20443, !nonnull !14, !noundef !14 ; 3 uses
  %i.q = icmp ugt i64 %i.m, 3
  call void @llvm.assume(i1 %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !20443
  store ptr %i.h, ptr %i.p, align 8, !noalias !20442
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i64 %i.i, ptr %i.r, align 8, !noalias !20442
  store i64 %i.m, ptr %i.e, align 8, !noalias !20443
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr %i.p, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !20443
  %.sroa.64.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 4 uses
  store i64 1, ptr %.sroa.64.0..sroa_idx.i, align 8, !noalias !20443
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !20443
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.d, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false), !noalias !20442
  call void @llvm.experimental.noalias.scope.decl(metadata !20446)
  call void @llvm.experimental.noalias.scope.decl(metadata !20447)
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 40 ; 2 uses
  %i.t = invoke { ptr, i64 } @_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map4KeysReNtNtCsoTR8nlGN3X_18ty_python_semantic4lint9LintEntryEENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvB2O_4find5checkB1U_QNCINvNtNtB20_10diagnostic11levenshtein20find_best_suggestionBP_BP_E0E0INtNtNtBb_3ops12control_flow11ControlFlowB1U_EEB20_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.s)
          to label %.noexc.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !20442 ; 2 uses

.noexc.i:                                         ; preds = %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsoTR8nlGN3X_18ty_python_semantic.exit.i
  %i.u = extractvalue { ptr, i64 } %i.t, 0        ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not10.i.i.i, label %_RNvXNtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB4_3VecReEINtB2_10SpecExtendBQ_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filter6FilterINtNtB1j_6copied6CopiedINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map4KeysBQ_NtNtCsoTR8nlGN3X_18ty_python_semantic4lint9LintEntryEENCINvNtNtB3u_10diagnostic11levenshtein20find_best_suggestionB28_B28_E0EE11spec_extendB3u_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.noexc.i, %.noexc11.i
  %i.v = phi ptr [ %i.ai, %.noexc11.i ], [ %i.u, %.noexc.i ]
  %.pn.i.i.i = phi { ptr, i64 } [ %i.ah, %.noexc11.i ], [ %i.t, %.noexc.i ]
  %.sroa.3.0.i.i11.i.i.i = extractvalue { ptr, i64 } %.pn.i.i.i, 1
  %i.w = load i64, ptr %.sroa.64.0..sroa_idx.i, align 8, !alias.scope !20448, !noalias !20443, !noundef !14 ; 4 uses
  %i.x = icmp ult i64 %i.w, 576460752303423488
  call void @llvm.assume(i1 %i.x)
  %i.y = load i64, ptr %i.e, align 8, !range !24, !alias.scope !20448, !noalias !20443, !noundef !14
  %i.z = icmp eq i64 %i.w, %i.y
  br i1 %i.z, label %bb.d, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecReE7reserveCsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !20449
  invoke void @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map4KeysReNtNtCsoTR8nlGN3X_18ty_python_semantic4lint9LintEntryEENtNtNtB8_6traits8iterator8Iterator9size_hintB1Z_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.d)
          to label %.noexc9.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !20442

.noexc9.i:                                        ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !20449
  %i.aa = load i64, ptr %.sroa.64.0..sroa_idx.i, align 8, !alias.scope !20450, !noalias !20443, !noundef !14 ; 2 uses
  %i.ab = load i64, ptr %i.e, align 8, !range !24, !alias.scope !20450, !noalias !20443, !noundef !14
  %i.ac = icmp eq i64 %i.ab, %i.aa
  br i1 %i.ac, label %bb.e, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecReE7reserveCsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i, !prof !16

bb.e:                                             ; preds = %.noexc9.i
  invoke void @_RINvNvMs2_NtCscdodAO9FK5_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %i.aa, i64 noundef range(i64 1, 0) 1, i64 noundef 8, i64 noundef 16)
          to label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecReE7reserveCsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !20442

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecReE7reserveCsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i: ; preds = %bb.e, %.noexc9.i, %.lr.ph.i.i.i
  %i.ad = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !20448, !noalias !20443, !nonnull !14, !noundef !14
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %i.ad, i64 %i.w ; 2 uses
  store ptr %i.v, ptr %i.ae, align 8, !noalias !20442
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store i64 %.sroa.3.0.i.i11.i.i.i, ptr %i.af, align 8, !noalias !20442
  %i.ag = add nuw nsw i64 %i.w, 1
  store i64 %i.ag, ptr %.sroa.64.0..sroa_idx.i, align 8, !alias.scope !20448, !noalias !20443
  %i.ah = invoke { ptr, i64 } @_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map4KeysReNtNtCsoTR8nlGN3X_18ty_python_semantic4lint9LintEntryEENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvB2O_4find5checkB1U_QNCINvNtNtB20_10diagnostic11levenshtein20find_best_suggestionBP_BP_E0E0INtNtNtBb_3ops12control_flow11ControlFlowB1U_EEB20_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.s)
          to label %.noexc11.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !20442 ; 2 uses

.noexc11.i:                                       ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecReE7reserveCsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i
  %i.ai = extractvalue { ptr, i64 } %i.ah, 0      ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i.i.i, label %_RNvXNtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB4_3VecReEINtB2_10SpecExtendBQ_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filter6FilterINtNtB1j_6copied6CopiedINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map4KeysBQ_NtNtCsoTR8nlGN3X_18ty_python_semantic4lint9LintEntryEENCINvNtNtB3u_10diagnostic11levenshtein20find_best_suggestionB28_B28_E0EE11spec_extendB3u_.exit.i, label %.lr.ph.i.i.i

bb.f:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8, !alias.scope !20442
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.aj, align 8, !alias.scope !20442
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.ak, align 8, !alias.scope !20442
  br label %_RNvXNtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB4_3VecReEINtB2_18SpecFromIterNestedB10_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filter6FilterINtNtB1C_6copied6CopiedINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map4KeysB10_NtNtCsoTR8nlGN3X_18ty_python_semantic4lint9LintEntryEENCINvNtNtB3O_10diagnostic11levenshtein20find_best_suggestionB2r_B2r_E0EE9from_iterB3O_.exit

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecReE7reserveCsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i, %bb.e, %bb.d, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsoTR8nlGN3X_18ty_python_semantic.exit.i
  %lpad.loopexit.split-lp5 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecReENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecReEECsoTR8nlGN3X_18ty_python_semantic.exit.i unwind label %bb.g, !noalias !20442

_RNvXNtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB4_3VecReEINtB2_10SpecExtendBQ_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filter6FilterINtNtB1j_6copied6CopiedINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map4KeysBQ_NtNtCsoTR8nlGN3X_18ty_python_semantic4lint9LintEntryEENCINvNtNtB3u_10diagnostic11levenshtein20find_best_suggestionB28_B28_E0EE11spec_extendB3u_.exit.i: ; preds = %.noexc11.i, %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !20443
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !20451
  br label %_RNvXNtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB4_3VecReEINtB2_18SpecFromIterNestedB10_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filter6FilterINtNtB1C_6copied6CopiedINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map4KeysB10_NtNtCsoTR8nlGN3X_18ty_python_semantic4lint9LintEntryEENCINvNtNtB3O_10diagnostic11levenshtein20find_best_suggestionB2r_B2r_E0EE9from_iterB3O_.exit

bb.g:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #32, !noalias !20442
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecReEECsoTR8nlGN3X_18ty_python_semantic.exit.i: ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  resume { ptr, i32 } %lpad.loopexit.split-lp5

_RNvXNtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB4_3VecReEINtB2_18SpecFromIterNestedB10_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filter6FilterINtNtB1C_6copied6CopiedINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map4KeysB10_NtNtCsoTR8nlGN3X_18ty_python_semantic4lint9LintEntryEENCINvNtNtB3O_10diagnostic11levenshtein20find_best_suggestionB2r_B2r_E0EE9from_iterB3O_.exit: ; preds = %bb.f, %_RNvXNtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB4_3VecReEINtB2_10SpecExtendBQ_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filter6FilterINtNtB1j_6copied6CopiedINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map4KeysBQ_NtNtCsoTR8nlGN3X_18ty_python_semantic4lint9LintEntryEENCINvNtNtB3u_10diagnostic11levenshtein20find_best_suggestionB28_B28_E0EE11spec_extendB3u_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !20443
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCscdodAO9FK5_5alloc3vec14spec_from_iterINtB4_3VecTNtNtCs2O29vuvTAEJ_14ty_python_core5place13ScopedPlaceIdNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEEINtB2_12SpecFromIterBT_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtNtB6_11collections5btree3map8IntoIterBU_NtNtB1P_6narrow19PatternBindingTypesENCNvNvXs0_NvB4z_s3_1__NtB5i_36pattern_success_types_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute6inner_0EE9from_iterB1R_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(96) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [96 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20461)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !20462
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.val.i = load i64, ptr %i.e, align 8, !alias.scope !20461, !noundef !14 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !20462
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %.val.i, i1 noundef zeroext false, i64 noundef 4, i64 noundef 24)
          to label %.noexc.i unwind label %bb.i, !noalias !20462

.noexc.i:                                         ; preds = %bb.a
  %i.f = load i64, ptr %i.b, align 8, !range !28, !noalias !20462, !noundef !14
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !60, !noalias !20462, !noundef !14 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c, !prof !16

bb.b:                                             ; preds = %.noexc.i
  %i.k = load i64, ptr %i.j, align 8, !noalias !20462
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #31
          to label %.noexc3.i unwind label %bb.i, !noalias !20462

.noexc3.i:                                        ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %.noexc.i
  %i.l = load ptr, ptr %i.j, align 8, !noalias !20462, !nonnull !14, !noundef !14 ; 2 uses
  %i.m = icmp ule i64 %.val.i, %i.i
  tail call void @llvm.assume(i1 %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !20462
  store i64 %i.i, ptr %i.d, align 8, !noalias !20462
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store ptr %i.l, ptr %i.n, align 8, !noalias !20462
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 3 uses
  store i64 0, ptr %i.o, align 8, !noalias !20462
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !20462
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.c, ptr noundef nonnull align 8 dereferenceable(96) %1, i64 96, i1 false), !noalias !20463
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20464)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20465)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20466)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20467)
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %.val.i.i.i = load i64, ptr %i.p, align 8, !alias.scope !20468, !noalias !20462, !noundef !14 ; 2 uses
  %i.q = icmp ugt i64 %.val.i.i.i, %i.i
  br i1 %i.q, label %bb.d, label %_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecTNtNtCs2O29vuvTAEJ_14ty_python_core5place13ScopedPlaceIdNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEE14extend_trustedINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtNtB8_11collections5btree3map8IntoIterBG_NtNtB1B_6narrow19PatternBindingTypesENCNvNvXs0_NvB4e_s3_1__NtB4X_36pattern_success_types_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute6inner_0EEB1D_.exit.i.i, !prof !16

bb.d:                                             ; preds = %bb.c
  invoke void @_RINvNvMs2_NtCscdodAO9FK5_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef 0, i64 noundef %.val.i.i.i, i64 noundef 4, i64 noundef 24)
          to label %._RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecTNtNtCs2O29vuvTAEJ_14ty_python_core5place13ScopedPlaceIdNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEE7reserveB1B_.exit_crit_edge.i.i.i unwind label %bb.e, !noalias !20469

._RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecTNtNtCs2O29vuvTAEJ_14ty_python_core5place13ScopedPlaceIdNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEE7reserveB1B_.exit_crit_edge.i.i.i: ; preds = %bb.d
  %.pre.i.i.i = load i64, ptr %i.o, align 8, !alias.scope !20470, !noalias !20462
  %.pre.i = load ptr, ptr %i.n, align 8, !alias.scope !20470, !noalias !20462
  br label %_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecTNtNtCs2O29vuvTAEJ_14ty_python_core5place13ScopedPlaceIdNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEE14extend_trustedINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtNtB8_11collections5btree3map8IntoIterBG_NtNtB1B_6narrow19PatternBindingTypesENCNvNvXs0_NvB4e_s3_1__NtB4X_36pattern_success_types_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute6inner_0EEB1D_.exit.i.i

bb.e:                                             ; preds = %bb.d
  %lpad.thr_comm.i.i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsy_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_8IntoIterNtNtCs2O29vuvTAEJ_14ty_python_core5place13ScopedPlaceIdNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow19PatternBindingTypesENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB25_(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.c)
          to label %.body.i unwind label %bb.f, !noalias !20462

bb.f:                                             ; preds = %bb.e
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #32, !noalias !20462
  unreachable

_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecTNtNtCs2O29vuvTAEJ_14ty_python_core5place13ScopedPlaceIdNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEE14extend_trustedINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtNtB8_11collections5btree3map8IntoIterBG_NtNtB1B_6narrow19PatternBindingTypesENCNvNvXs0_NvB4e_s3_1__NtB4X_36pattern_success_types_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute6inner_0EEB1D_.exit.i.i: ; preds = %._RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecTNtNtCs2O29vuvTAEJ_14ty_python_core5place13ScopedPlaceIdNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEE7reserveB1B_.exit_crit_edge.i.i.i, %bb.c
  %i.s = phi ptr [ %.pre.i, %._RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecTNtNtCs2O29vuvTAEJ_14ty_python_core5place13ScopedPlaceIdNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEE7reserveB1B_.exit_crit_edge.i.i.i ], [ %i.l, %bb.c ]
  %i.t = phi i64 [ %.pre.i.i.i, %._RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecTNtNtCs2O29vuvTAEJ_14ty_python_core5place13ScopedPlaceIdNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEE7reserveB1B_.exit_crit_edge.i.i.i ], [ 0, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !20471
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.s, ptr %i.u, align 8, !noalias !20471
  store ptr %i.o, ptr %i.a, align 8, !noalias !20471
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.t, ptr %i.v, align 8, !noalias !20471
  invoke void @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map8IntoIterNtNtCs2O29vuvTAEJ_14ty_python_core5place13ScopedPlaceIdNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow19PatternBindingTypesENCNvNvXs0_NvB2Q_s3_1__NtB4a_36pattern_success_types_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute6inner_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB67_8for_each4callTB1V_NtB2S_4TypeENCINvMsj_NtB16_3vecINtB7A_3VecB7a_E14extend_trustedBN_E0E0EB2U_(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(96) %1, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %_RNvXs_NtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB6_3VecTNtNtCs2O29vuvTAEJ_14ty_python_core5place13ScopedPlaceIdNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEEINtB4_18SpecFromIterNestedB12_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtNtB8_11collections5btree3map8IntoIterB13_NtNtB1Y_6narrow19PatternBindingTypesENCNvNvXs0_NvB4Q_s3_1__NtB5z_36pattern_success_types_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute6inner_0EE9from_iterB20_.exit unwind label %bb.g, !noalias !20463

bb.g:                                             ; preds = %_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecTNtNtCs2O29vuvTAEJ_14ty_python_core5place13ScopedPlaceIdNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEE14extend_trustedINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtNtB8_11collections5btree3map8IntoIterBG_NtNtB1B_6narrow19PatternBindingTypesENCNvNvXs0_NvB4e_s3_1__NtB4X_36pattern_success_types_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute6inner_0EEB1D_.exit.i.i
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.g, %bb.e
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.w, %bb.g ], [ %lpad.thr_comm.i.i.i, %bb.e ]
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTNtNtCs2O29vuvTAEJ_14ty_python_core5place13ScopedPlaceIdNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1J_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map8IntoIterNtNtCs2O29vuvTAEJ_14ty_python_core5place13ScopedPlaceIdNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow19PatternBindingTypesENCNvNvXs0_NvB32_s3_1__NtB4m_36pattern_success_types_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute6inner_0EEB36_.exit.i unwind label %bb.h, !noalias !20462

bb.h:                                             ; preds = %bb.i, %.body.i
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #32, !noalias !20463
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map8IntoIterNtNtCs2O29vuvTAEJ_14ty_python_core5place13ScopedPlaceIdNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow19PatternBindingTypesENCNvNvXs0_NvB32_s3_1__NtB4m_36pattern_success_types_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute6inner_0EEB36_.exit.i: ; preds = %bb.i, %.body.i
  %.pn9.i = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %i.y, %bb.i ]
  resume { ptr, i32 } %.pn9.i

bb.i:                                             ; preds = %bb.b, %bb.a
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsy_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_8IntoIterNtNtCs2O29vuvTAEJ_14ty_python_core5place13ScopedPlaceIdNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow19PatternBindingTypesENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB25_(ptr noalias noundef nonnull align 8 dereferenceable(96) %1)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map8IntoIterNtNtCs2O29vuvTAEJ_14ty_python_core5place13ScopedPlaceIdNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow19PatternBindingTypesENCNvNvXs0_NvB32_s3_1__NtB4m_36pattern_success_types_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute6inner_0EEB36_.exit.i unwind label %bb.h, !noalias !20463

_RNvXs_NtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB6_3VecTNtNtCs2O29vuvTAEJ_14ty_python_core5place13ScopedPlaceIdNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEEINtB4_18SpecFromIterNestedB12_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtNtB8_11collections5btree3map8IntoIterB13_NtNtB1Y_6narrow19PatternBindingTypesENCNvNvXs0_NvB4Q_s3_1__NtB5z_36pattern_success_types_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute6inner_0EE9from_iterB20_.exit: ; preds = %_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecTNtNtCs2O29vuvTAEJ_14ty_python_core5place13ScopedPlaceIdNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEE14extend_trustedINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtNtB8_11collections5btree3map8IntoIterBG_NtNtB1B_6narrow19PatternBindingTypesENCNvNvXs0_NvB4e_s3_1__NtB4X_36pattern_success_types_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute6inner_0EEB1D_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !20471
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !20462
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !20461
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !20462
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCscdodAO9FK5_5alloc3vec14spec_from_iterINtB4_3VecTNtNtCs2O29vuvTAEJ_14ty_python_core5place13ScopedPlaceIdNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow19NarrowingConstraintEEINtB2_12SpecFromIterBT_INtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map8IntoIterBU_B1N_EE9from_iterB1T_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(64) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [120 x i8], align 8               ; 4 uses
  %i.b = alloca [120 x i8], align 8               ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [64 x i8], align 8                ; 7 uses
  %i.e = alloca [120 x i8], align 8               ; 4 uses
  %i.f = alloca [120 x i8], align 8               ; 7 uses
  %i.g = alloca [24 x i8], align 8                ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20481)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20482)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !20483
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !20483
  invoke void @_RNvXsE_NtCsgQfI1edjipl_9hashbrown3rawINtB5_11RawIntoIterTNtNtCs2O29vuvTAEJ_14ty_python_core5place13ScopedPlaceIdNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow19NarrowingConstraintEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB1S_(ptr noalias noundef nonnull sret([120 x i8]) align 8 captures(none) dereferenceable(120) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(64) %1)
          to label %_RNvXsF_NtNtNtCs2AWtUsOyxgP_3std11collections4hash3mapINtB5_8IntoIterNtNtCs2O29vuvTAEJ_14ty_python_core5place13ScopedPlaceIdNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow19NarrowingConstraintENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB23_.exit.i unwind label %bb.b, !noalias !20481

bb.b:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

_RNvXsF_NtNtNtCs2AWtUsOyxgP_3std11collections4hash3mapINtB5_8IntoIterNtNtCs2O29vuvTAEJ_14ty_python_core5place13ScopedPlaceIdNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow19NarrowingConstraintENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB23_.exit.i: ; preds = %bb.a
  %i.i = load i32, ptr %i.f, align 8, !range !38, !noalias !20483, !noundef !14
  %.not.i = icmp eq i32 %i.i, 2
  br i1 %.not.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %_RNvXsF_NtNtNtCs2AWtUsOyxgP_3std11collections4hash3mapINtB5_8IntoIterNtNtCs2O29vuvTAEJ_14ty_python_core5place13ScopedPlaceIdNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow19NarrowingConstraintENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB23_.exit.i
  store i64 0, ptr %0, align 8, !alias.scope !20481
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
end_hunk_4
begin_hunk_5_@_RNvXNtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class14ProtocolMemberEINtB2_18SpecFromIterNestedB10_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filter6FilterINtNtB2P_3map3MapINtNtNtNtB6_11collections5btree3map4IterNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtB12_18ProtocolMemberDataENCNvMs5_B12_NtB12_17ProtocolInterface7members0ENCNvB5N_18non_method_members0EE9from_iterB16_:bb.a
          to label %.noexc6 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc6:                                          ; preds = %.noexc5
  %i.ab = load i8, ptr %i.r, align 8, !range !43, !noalias !23605, !noundef !14 ; 2 uses
  %.not.i.i.i.i = icmp eq i8 %i.ab, -1
  br i1 %.not.i.i.i.i, label %.loopexit22, label %bb.d

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !23601
  store i64 0, ptr %0, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.ad, align 8
  br label %bb.f

bb.f:                                             ; preds = %.loopexit22, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc5, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class14ProtocolMemberE7reserveBJ_.exit.i.i, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsoTR8nlGN3X_18ty_python_semantic.exit
  %lpad.loopexit.split-lp27 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class14ProtocolMemberENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class14ProtocolMemberEEB1d_.exit unwind label %bb.g

.loopexit22:                                      ; preds = %.noexc6, %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !23605
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  br label %bb.f

bb.g:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #32
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class14ProtocolMemberEEB1d_.exit: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  resume { ptr, i32 } %lpad.loopexit.split-lp27
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class12GenericAliasEINtB2_18SpecFromIterNestedB10_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map9FilterMapIB2z_NtNtB14_3mro11MroIteratorNvMNtB14_10class_baseNtB47_9ClassBase10into_classENvMs1g_B12_NtB12_9ClassType18into_generic_aliasEE9from_iterB16_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(56) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 5 uses
  %i.b = alloca [16 x i8], align 4                ; 14 uses
  %i.c = alloca [16 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [12 x i8], align 4                ; 5 uses
  %i.f = alloca [16 x i8], align 4                ; 11 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [56 x i8], align 8                ; 7 uses
  %i.i = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !23650
  store ptr %i.j, ptr %i.g, align 8, !noalias !23651
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  store ptr %i.j, ptr %i.k, align 8, !noalias !23651
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !23651
  call void @_RNvXs4_NtNtCsoTR8nlGN3X_18ty_python_semantic5types3mroNtB5_11MroIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(56) %1)
  %i.l = load i8, ptr %i.f, align 4, !range !71, !noalias !23651, !noundef !14 ; 2 uses
  %.not17.i.i.i.i = icmp eq i8 %i.l, -1
  br i1 %.not17.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %.sroa.7.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.411.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  br label %bb.b

bb.b:                                             ; preds = %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map19filter_map_try_foldNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_base9ClassBaseNtNtB1i_5class9ClassTypeuINtNtNtBa_3ops12control_flow11ControlFlowNtB2l_12GenericAliasENvMB1g_B1e_10into_classNCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB2j_B3n_QNvMs1g_B2l_B2j_18into_generic_aliasE0E0B1k_.exit.thread.i.i.i.i, %.lr.ph.i.i.i.i
  %i.m = phi i8 [ %i.l, %.lr.ph.i.i.i.i ], [ %i.q, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map19filter_map_try_foldNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_base9ClassBaseNtNtB1i_5class9ClassTypeuINtNtNtBa_3ops12control_flow11ControlFlowNtB2l_12GenericAliasENvMB1g_B1e_10into_classNCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB2j_B3n_QNvMs1g_B2l_B2j_18into_generic_aliasE0E0B1k_.exit.thread.i.i.i.i ]
  %.sroa.6.0.copyload.i.i.i.i = load i32, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 4, !noalias !23651 ; 2 uses
  %i.n = icmp ne i8 %i.m, 3
  %.not.i.i.i.i.i = icmp eq i32 %.sroa.6.0.copyload.i.i.i.i, -2
  %or.cond.i.i.i.i.i = select i1 %i.n, i1 true, i1 %.not.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i, label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map19filter_map_try_foldNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_base9ClassBaseNtNtB1i_5class9ClassTypeuINtNtNtBa_3ops12control_flow11ControlFlowNtB2l_12GenericAliasENvMB1g_B1e_10into_classNCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB2j_B3n_QNvMs1g_B2l_B2j_18into_generic_aliasE0E0B1k_.exit.thread.i.i.i.i, label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map19filter_map_try_foldNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_base9ClassBaseNtNtB1i_5class9ClassTypeuINtNtNtBa_3ops12control_flow11ControlFlowNtB2l_12GenericAliasENvMB1g_B1e_10into_classNCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB2j_B3n_QNvMs1g_B2l_B2j_18into_generic_aliasE0E0B1k_.exit.i.i.i.i

_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map19filter_map_try_foldNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_base9ClassBaseNtNtB1i_5class9ClassTypeuINtNtNtBa_3ops12control_flow11ControlFlowNtB2l_12GenericAliasENvMB1g_B1e_10into_classNCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB2j_B3n_QNvMs1g_B2l_B2j_18into_generic_aliasE0E0B1k_.exit.i.i.i.i: ; preds = %bb.b
  %.sroa.7.0.copyload.i.i.i.i = load i64, ptr %.sroa.7.0..sroa_idx.i.i.i.i, align 4, !noalias !23651
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !23652
  store i32 %.sroa.6.0.copyload.i.i.i.i, ptr %i.e, align 4, !noalias !23653
  store i64 %.sroa.7.0.copyload.i.i.i.i, ptr %.sroa.411.0..sroa_idx.i.i.i.i.i, align 4, !noalias !23653
  %i.o = call { i32, i32 } @_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNvMs1g_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtBV_9ClassType18into_generic_aliasINtB7_5FnMutTB1I_EE8call_mutBZ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.k, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(12) %i.e), !noalias !23654 ; 2 uses
  %i.p = extractvalue { i32, i32 } %i.o, 0        ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !23652
  %.not.i8.i.i.i.i = icmp eq i32 %i.p, 0
  br i1 %.not.i8.i.i.i.i, label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map19filter_map_try_foldNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_base9ClassBaseNtNtB1i_5class9ClassTypeuINtNtNtBa_3ops12control_flow11ControlFlowNtB2l_12GenericAliasENvMB1g_B1e_10into_classNCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB2j_B3n_QNvMs1g_B2l_B2j_18into_generic_aliasE0E0B1k_.exit.thread.i.i.i.i, label %bb.c

_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map19filter_map_try_foldNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_base9ClassBaseNtNtB1i_5class9ClassTypeuINtNtNtBa_3ops12control_flow11ControlFlowNtB2l_12GenericAliasENvMB1g_B1e_10into_classNCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB2j_B3n_QNvMs1g_B2l_B2j_18into_generic_aliasE0E0B1k_.exit.thread.i.i.i.i: ; preds = %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map19filter_map_try_foldNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_base9ClassBaseNtNtB1i_5class9ClassTypeuINtNtNtBa_3ops12control_flow11ControlFlowNtB2l_12GenericAliasENvMB1g_B1e_10into_classNCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB2j_B3n_QNvMs1g_B2l_B2j_18into_generic_aliasE0E0B1k_.exit.i.i.i.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !23651
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !23651
  call void @_RNvXs4_NtNtCsoTR8nlGN3X_18ty_python_semantic5types3mroNtB5_11MroIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(56) %1)
  %i.q = load i8, ptr %i.f, align 4, !range !71, !noalias !23651, !noundef !14 ; 2 uses
  %.not.i.i.i.i = icmp eq i8 %i.q, -1
  br i1 %.not.i.i.i.i, label %.loopexit, label %bb.b

bb.c:                                             ; preds = %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map19filter_map_try_foldNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_base9ClassBaseNtNtB1i_5class9ClassTypeuINtNtNtBa_3ops12control_flow11ControlFlowNtB2l_12GenericAliasENvMB1g_B1e_10into_classNCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB2j_B3n_QNvMs1g_B2l_B2j_18into_generic_aliasE0E0B1k_.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !23651
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !23650
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef 4, i1 noundef zeroext false, i64 noundef 4, i64 noundef 8)
  %i.r = load i64, ptr %i.d, align 8, !range !28, !noundef !14
  %i.s = trunc nuw i64 %i.r to i1
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.u = load i64, ptr %i.t, align 8, !range !60, !noundef !14 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  br i1 %i.s, label %bb.d, label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsoTR8nlGN3X_18ty_python_semantic.exit, !prof !16

bb.d:                                             ; preds = %bb.c
  %i.w = load i64, ptr %i.v, align 8
  call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.u, i64 %i.w) #31
  unreachable

_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %bb.c
  %i.x = extractvalue { i32, i32 } %i.o, 1
  %i.y = load ptr, ptr %i.v, align 8, !nonnull !14, !noundef !14 ; 3 uses
  %i.z = icmp ugt i64 %i.u, 3
  call void @llvm.assume(i1 %i.z)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i32 %i.p, ptr %i.y, align 4
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  store i32 %i.x, ptr %i.aa, align 4
  store i64 %i.u, ptr %i.i, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  store ptr %i.y, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.64.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 3 uses
  store i64 1, ptr %.sroa.64.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.h, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !23655)
  call void @llvm.experimental.noalias.scope.decl(metadata !23656)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.h, i64 56 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %.sroa.7.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.411.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !23657
  store ptr %i.ab, ptr %i.c, align 8, !noalias !23658
  store ptr %i.ab, ptr %i.ac, align 8, !noalias !23658
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !23658
  invoke void @_RNvXs4_NtNtCsoTR8nlGN3X_18ty_python_semantic5types3mroNtB5_11MroIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(56) %i.h)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsoTR8nlGN3X_18ty_python_semantic.exit
  %i.ad = load i8, ptr %i.b, align 4, !range !71, !noalias !23658, !noundef !14 ; 2 uses
  %.not17.i.i.i.i.i3.i = icmp eq i8 %i.ad, -1
  br i1 %.not17.i.i.i.i.i3.i, label %.loopexit14, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc, %.lr.ph.i.i.i.i.i.i.backedge
  %i.ae = phi i8 [ %.be, %.lr.ph.i.i.i.i.i.i.backedge ], [ %i.ad, %.noexc ]
  %.sroa.6.0.copyload.i.i.i.i.i.i = load i32, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i, align 4, !noalias !23658 ; 2 uses
  %i.af = icmp ne i8 %i.ae, 3
  %.not.i.i.i.i.i.i.i = icmp eq i32 %.sroa.6.0.copyload.i.i.i.i.i.i, -2
  %or.cond.i.i.i.i.i.i.i = select i1 %i.af, i1 true, i1 %.not.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i.i, label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map19filter_map_try_foldNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_base9ClassBaseNtNtB1i_5class9ClassTypeuINtNtNtBa_3ops12control_flow11ControlFlowNtB2l_12GenericAliasENvMB1g_B1e_10into_classNCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB2j_B3n_QNvMs1g_B2l_B2j_18into_generic_aliasE0E0B1k_.exit.thread.i.i.i.i.i.i, label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map19filter_map_try_foldNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_base9ClassBaseNtNtB1i_5class9ClassTypeuINtNtNtBa_3ops12control_flow11ControlFlowNtB2l_12GenericAliasENvMB1g_B1e_10into_classNCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB2j_B3n_QNvMs1g_B2l_B2j_18into_generic_aliasE0E0B1k_.exit.i.i.i.i.i.i

_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map19filter_map_try_foldNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_base9ClassBaseNtNtB1i_5class9ClassTypeuINtNtNtBa_3ops12control_flow11ControlFlowNtB2l_12GenericAliasENvMB1g_B1e_10into_classNCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB2j_B3n_QNvMs1g_B2l_B2j_18into_generic_aliasE0E0B1k_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %.sroa.7.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i.i, align 4, !noalias !23658
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !23659
  store i32 %.sroa.6.0.copyload.i.i.i.i.i.i, ptr %i.a, align 4, !noalias !23660
  store i64 %.sroa.7.0.copyload.i.i.i.i.i.i, ptr %.sroa.411.0..sroa_idx.i.i.i.i.i.i.i, align 4, !noalias !23660
  %i.ag = invoke { i32, i32 } @_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNvMs1g_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtBV_9ClassType18into_generic_aliasINtB7_5FnMutTB1I_EE8call_mutBZ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ac, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(12) %i.a)
          to label %.noexc9 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc9:                                          ; preds = %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map19filter_map_try_foldNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_base9ClassBaseNtNtB1i_5class9ClassTypeuINtNtNtBa_3ops12control_flow11ControlFlowNtB2l_12GenericAliasENvMB1g_B1e_10into_classNCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB2j_B3n_QNvMs1g_B2l_B2j_18into_generic_aliasE0E0B1k_.exit.i.i.i.i.i.i
  %i.ah = extractvalue { i32, i32 } %i.ag, 0      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !23659
  %.not.i8.i.i.i.i.i.i = icmp eq i32 %i.ah, 0
  br i1 %.not.i8.i.i.i.i.i.i, label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map19filter_map_try_foldNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_base9ClassBaseNtNtB1i_5class9ClassTypeuINtNtNtBa_3ops12control_flow11ControlFlowNtB2l_12GenericAliasENvMB1g_B1e_10into_classNCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB2j_B3n_QNvMs1g_B2l_B2j_18into_generic_aliasE0E0B1k_.exit.thread.i.i.i.i.i.i, label %bb.e

_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map19filter_map_try_foldNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_base9ClassBaseNtNtB1i_5class9ClassTypeuINtNtNtBa_3ops12control_flow11ControlFlowNtB2l_12GenericAliasENvMB1g_B1e_10into_classNCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB2j_B3n_QNvMs1g_B2l_B2j_18into_generic_aliasE0E0B1k_.exit.thread.i.i.i.i.i.i: ; preds = %.noexc9, %.lr.ph.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !23658
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !23658
  invoke void @_RNvXs4_NtNtCsoTR8nlGN3X_18ty_python_semantic5types3mroNtB5_11MroIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(56) %i.h)
          to label %.noexc10 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc10:                                         ; preds = %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map19filter_map_try_foldNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_base9ClassBaseNtNtB1i_5class9ClassTypeuINtNtNtBa_3ops12control_flow11ControlFlowNtB2l_12GenericAliasENvMB1g_B1e_10into_classNCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB2j_B3n_QNvMs1g_B2l_B2j_18into_generic_aliasE0E0B1k_.exit.thread.i.i.i.i.i.i
  %i.ai = load i8, ptr %i.b, align 4, !range !71, !noalias !23658, !noundef !14 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i8 %i.ai, -1
  br i1 %.not.i.i.i.i.i.i, label %.loopexit14, label %.lr.ph.i.i.i.i.i.i.backedge

.lr.ph.i.i.i.i.i.i.backedge:                      ; preds = %.noexc10, %.noexc12
  %.be = phi i8 [ %i.ai, %.noexc10 ], [ %i.as, %.noexc12 ]
  br label %.lr.ph.i.i.i.i.i.i

bb.e:                                             ; preds = %.noexc9
  %i.aj = extractvalue { i32, i32 } %i.ag, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !23658
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !23657
  %i.ak = load i64, ptr %.sroa.64.0..sroa_idx, align 8, !alias.scope !23661, !noundef !14 ; 5 uses
  %i.al = icmp ult i64 %i.ak, 1152921504606846976
  call void @llvm.assume(i1 %i.al)
  %i.am = load i64, ptr %i.i, align 8, !range !24, !alias.scope !23661, !noundef !14
  %i.an = icmp eq i64 %i.ak, %i.am
  br i1 %i.an, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class12GenericAliasE7reserveBJ_.exit.i.i, label %.noexc11

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class12GenericAliasE7reserveBJ_.exit.i.i: ; preds = %bb.e
  invoke void @_RINvNvMs2_NtCscdodAO9FK5_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i, i64 noundef %i.ak, i64 noundef range(i64 1, 0) 1, i64 noundef 4, i64 noundef 8)
          to label %.noexc11 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc11:                                         ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class12GenericAliasE7reserveBJ_.exit.i.i, %bb.e
  %i.ao = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !23661, !nonnull !14, !noundef !14
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.ak ; 2 uses
  store i32 %i.ah, ptr %i.ap, align 4
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  store i32 %i.aj, ptr %i.aq, align 4
  %i.ar = add nuw nsw i64 %i.ak, 1
  store i64 %i.ar, ptr %.sroa.64.0..sroa_idx, align 8, !alias.scope !23661
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !23657
  store ptr %i.ab, ptr %i.c, align 8, !noalias !23658
  store ptr %i.ab, ptr %i.ac, align 8, !noalias !23658
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !23658
  invoke void @_RNvXs4_NtNtCsoTR8nlGN3X_18ty_python_semantic5types3mroNtB5_11MroIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(56) %i.h)
          to label %.noexc12 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc12:                                         ; preds = %.noexc11
  %i.as = load i8, ptr %i.b, align 4, !range !71, !noalias !23658, !noundef !14 ; 2 uses
  %.not17.i.i.i.i.i.i = icmp eq i8 %i.as, -1
  br i1 %.not17.i.i.i.i.i.i, label %.loopexit14, label %.lr.ph.i.i.i.i.i.i.backedge

.loopexit:                                        ; preds = %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map19filter_map_try_foldNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_base9ClassBaseNtNtB1i_5class9ClassTypeuINtNtNtBa_3ops12control_flow11ControlFlowNtB2l_12GenericAliasENvMB1g_B1e_10into_classNCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB2j_B3n_QNvMs1g_B2l_B2j_18into_generic_aliasE0E0B1k_.exit.thread.i.i.i.i, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !23651
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !23650
  store i64 0, ptr %0, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.at, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.au, align 8
  br label %bb.f

bb.f:                                             ; preds = %.loopexit14, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  ret void

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map19filter_map_try_foldNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_base9ClassBaseNtNtB1i_5class9ClassTypeuINtNtNtBa_3ops12control_flow11ControlFlowNtB2l_12GenericAliasENvMB1g_B1e_10into_classNCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB2j_B3n_QNvMs1g_B2l_B2j_18into_generic_aliasE0E0B1k_.exit.i.i.i.i.i.i, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map19filter_map_try_foldNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_base9ClassBaseNtNtB1i_5class9ClassTypeuINtNtNtBa_3ops12control_flow11ControlFlowNtB2l_12GenericAliasENvMB1g_B1e_10into_classNCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB2j_B3n_QNvMs1g_B2l_B2j_18into_generic_aliasE0E0B1k_.exit.thread.i.i.i.i.i.i, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class12GenericAliasE7reserveBJ_.exit.i.i, %.noexc11, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsoTR8nlGN3X_18ty_python_semantic.exit
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class12GenericAliasENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class12GenericAliasEEB1d_.exit unwind label %bb.g

.loopexit14:                                      ; preds = %.noexc12, %.noexc10, %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !23658
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !23657
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  br label %bb.f

bb.g:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #32
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class12GenericAliasEEB1d_.exit: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  resume { ptr, i32 } %lpad.loopexit.split-lp
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityEINtB2_18SpecFromIterNestedB10_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB2N_6copied6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesB10_NtB12_20BoundTypeVarInstanceEENCNvMNtNtNtB14_4call4bind11constructorNtB5g_18ConstructorBinding33unspecialize_class_type_variabless_0EE9from_iterB16_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [28 x i8], align 4                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [32 x i8], align 8                ; 8 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [28 x i8], align 4                ; 3 uses
  %i.g = alloca [24 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.h = tail call { i32, i32 } @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtB1N_20BoundTypeVarInstanceEENtNtNtB8_6traits8iterator8Iterator4nextB1R_(ptr noalias noundef nonnull align 8 dereferenceable(32) %1), !noalias !23675 ; 2 uses
  %i.i = extractvalue { i32, i32 } %i.h, 0        ; 2 uses
  %.not.i = icmp eq i32 %i.i, 0
  br i1 %.not.i, label %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtB7_6copied6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtB24_20BoundTypeVarInstanceEENCNvMNtNtNtB26_4call4bind11constructorNtB3O_18ConstructorBinding33unspecialize_class_type_variabless_0ENtNtNtB9_6traits8iterator8Iterator4nextB28_.exit.thread, label %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtB7_6copied6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtB24_20BoundTypeVarInstanceEENCNvMNtNtNtB26_4call4bind11constructorNtB3O_18ConstructorBinding33unspecialize_class_type_variabless_0ENtNtNtB9_6traits8iterator8Iterator4nextB28_.exit

_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtB7_6copied6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtB24_20BoundTypeVarInstanceEENCNvMNtNtNtB26_4call4bind11constructorNtB3O_18ConstructorBinding33unspecialize_class_type_variabless_0ENtNtNtB9_6traits8iterator8Iterator4nextB28_.exit: ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = extractvalue { i32, i32 } %i.h, 1
  %.val.i = load ptr, ptr %i.j, align 8, !alias.scope !23676, !nonnull !14, !noundef !14
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val3.i = load ptr, ptr %i.l, align 8, !alias.scope !23676, !nonnull !14, !align !18, !noundef !14
  call void @_RNvMs5_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevarNtB5_20BoundTypeVarInstance8identity(ptr noalias noundef nonnull sret([28 x i8]) align 4 captures(address) dereferenceable(28) %i.f, i32 noundef range(i32 1, 0) %i.i, i32 noundef %i.k, ptr noundef nonnull %.val.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %.val3.i)
  %.pr = load i32, ptr %i.f, align 4
  %.not = icmp eq i32 %.pr, 2
  br i1 %.not, label %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtB7_6copied6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtB24_20BoundTypeVarInstanceEENCNvMNtNtNtB26_4call4bind11constructorNtB3O_18ConstructorBinding33unspecialize_class_type_variabless_0ENtNtNtB9_6traits8iterator8Iterator4nextB28_.exit.thread, label %bb.b

bb.b:                                             ; preds = %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtB7_6copied6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtB24_20BoundTypeVarInstanceEENCNvMNtNtNtB26_4call4bind11constructorNtB3O_18ConstructorBinding33unspecialize_class_type_variabless_0ENtNtNtB9_6traits8iterator8Iterator4nextB28_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtB1N_20BoundTypeVarInstanceEENtNtNtB8_6traits8iterator8Iterator9size_hintB1R_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1)
  %i.m = load i64, ptr %i.e, align 8, !noundef !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.n = call i64 @llvm.uadd.sat.i64(i64 %i.m, i64 1)
  %.sroa.0.0.i = call noundef i64 @llvm.umax.i64(i64 %i.n, i64 4) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %.sroa.0.0.i, i1 noundef zeroext false, i64 noundef 4, i64 noundef 28)
  %i.o = load i64, ptr %i.c, align 8, !range !28, !noundef !14
  %i.p = trunc nuw i64 %i.o to i1
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.r = load i64, ptr %i.q, align 8, !range !60, !noundef !14 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.p, label %bb.c, label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsoTR8nlGN3X_18ty_python_semantic.exit, !prof !16

bb.c:                                             ; preds = %bb.b
  %i.t = load i64, ptr %i.s, align 8
  call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.r, i64 %i.t) #31
  unreachable

_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %bb.b
  %i.u = load ptr, ptr %i.s, align 8, !nonnull !14, !noundef !14 ; 2 uses
  %i.v = icmp ule i64 %.sroa.0.0.i, %i.r
  call void @llvm.assume(i1 %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.u, ptr noundef nonnull align 4 dereferenceable(28) %i.f, i64 28, i1 false)
  store i64 %i.r, ptr %i.g, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  store ptr %i.u, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 4 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !23677)
  call void @llvm.experimental.noalias.scope.decl(metadata !23678)
  call void @llvm.experimental.noalias.scope.decl(metadata !23679)
  call void @llvm.experimental.noalias.scope.decl(metadata !23680)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !23681
  %i.w = invoke { i32, i32 } @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtB1N_20BoundTypeVarInstanceEENtNtNtB8_6traits8iterator8Iterator4nextB1R_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.d)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc:                                           ; preds = %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsoTR8nlGN3X_18ty_python_semantic.exit
  %i.x = extractvalue { i32, i32 } %i.w, 0        ; 2 uses
  %.not.i5.i.i = icmp eq i32 %i.x, 0
  br i1 %.not.i5.i.i, label %.loopexit11, label %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtB7_6copied6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtB24_20BoundTypeVarInstanceEENCNvMNtNtNtB26_4call4bind11constructorNtB3O_18ConstructorBinding33unspecialize_class_type_variabless_0ENtNtNtB9_6traits8iterator8Iterator4nextB28_.exit.lr.ph.i.i

_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtB7_6copied6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtB24_20BoundTypeVarInstanceEENCNvMNtNtNtB26_4call4bind11constructorNtB3O_18ConstructorBinding33unspecialize_class_type_variabless_0ENtNtNtB9_6traits8iterator8Iterator4nextB28_.exit.lr.ph.i.i: ; preds = %.noexc
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  br label %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtB7_6copied6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtB24_20BoundTypeVarInstanceEENCNvMNtNtNtB26_4call4bind11constructorNtB3O_18ConstructorBinding33unspecialize_class_type_variabless_0ENtNtNtB9_6traits8iterator8Iterator4nextB28_.exit.i.i

_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtB7_6copied6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtB24_20BoundTypeVarInstanceEENCNvMNtNtNtB26_4call4bind11constructorNtB3O_18ConstructorBinding33unspecialize_class_type_variabless_0ENtNtNtB9_6traits8iterator8Iterator4nextB28_.exit.i.i: ; preds = %.noexc8, %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtB7_6copied6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtB24_20BoundTypeVarInstanceEENCNvMNtNtNtB26_4call4bind11constructorNtB3O_18ConstructorBinding33unspecialize_class_type_variabless_0ENtNtNtB9_6traits8iterator8Iterator4nextB28_.exit.lr.ph.i.i
  %i.aa = phi i32 [ %i.x, %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtB7_6copied6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtB24_20BoundTypeVarInstanceEENCNvMNtNtNtB26_4call4bind11constructorNtB3O_18ConstructorBinding33unspecialize_class_type_variabless_0ENtNtNtB9_6traits8iterator8Iterator4nextB28_.exit.lr.ph.i.i ], [ %i.ar, %.noexc8 ]
  %i.ab = phi { i32, i32 } [ %i.w, %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtB7_6copied6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtB24_20BoundTypeVarInstanceEENCNvMNtNtNtB26_4call4bind11constructorNtB3O_18ConstructorBinding33unspecialize_class_type_variabless_0ENtNtNtB9_6traits8iterator8Iterator4nextB28_.exit.lr.ph.i.i ], [ %i.aq, %.noexc8 ]
  %i.ac = extractvalue { i32, i32 } %i.ab, 1
  %.val.i.i.i = load ptr, ptr %i.y, align 8, !alias.scope !23682, !nonnull !14, !noundef !14
  %.val3.i.i.i = load ptr, ptr %i.z, align 8, !alias.scope !23682, !nonnull !14, !align !18, !noundef !14
  invoke void @_RNvMs5_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevarNtB5_20BoundTypeVarInstance8identity(ptr noalias noundef nonnull sret([28 x i8]) align 4 captures(address) dereferenceable(28) %i.b, i32 noundef range(i32 1, 0) %i.aa, i32 noundef %i.ac, ptr noundef nonnull %.val.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %.val3.i.i.i)
          to label %.noexc5 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc5:                                          ; preds = %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtB7_6copied6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtB24_20BoundTypeVarInstanceEENCNvMNtNtNtB26_4call4bind11constructorNtB3O_18ConstructorBinding33unspecialize_class_type_variabless_0ENtNtNtB9_6traits8iterator8Iterator4nextB28_.exit.i.i
  %.pr.i.i = load i32, ptr %i.b, align 4, !noalias !23683
  %.not.i.i = icmp eq i32 %.pr.i.i, 2
  br i1 %.not.i.i, label %.loopexit11, label %bb.d

bb.d:                                             ; preds = %.noexc5
  %i.ad = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !23684, !noundef !14 ; 4 uses
  %i.ae = icmp ult i64 %i.ad, 329406144173384851
  call void @llvm.assume(i1 %i.ae)
  %i.af = load i64, ptr %i.g, align 8, !range !24, !alias.scope !23684, !noundef !14
  %i.ag = icmp eq i64 %i.ad, %i.af
  br i1 %i.ag, label %bb.e, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityE7reserveBJ_.exit.i.i

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !23683
  invoke void @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtB1N_20BoundTypeVarInstanceEENtNtNtB8_6traits8iterator8Iterator9size_hintB1R_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.d)
          to label %.noexc6 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc6:                                          ; preds = %bb.e
  %i.ah = load i64, ptr %i.a, align 8, !noalias !23683, !noundef !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !23683
  %i.ai = call i64 @llvm.uadd.sat.i64(i64 %i.ah, i64 1) ; 2 uses
  %i.aj = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !23685, !noundef !14 ; 2 uses
  %i.ak = load i64, ptr %i.g, align 8, !range !24, !alias.scope !23685, !noundef !14
  %i.al = sub i64 %i.ak, %i.aj
  %i.am = icmp ugt i64 %i.ai, %i.al
  br i1 %i.am, label %bb.f, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityE7reserveBJ_.exit.i.i, !prof !16

bb.f:                                             ; preds = %.noexc6
  invoke void @_RINvNvMs2_NtCscdodAO9FK5_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef %i.aj, i64 noundef range(i64 1, 0) %i.ai, i64 noundef 4, i64 noundef 28)
          to label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityE7reserveBJ_.exit.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityE7reserveBJ_.exit.i.i: ; preds = %bb.f, %.noexc6, %bb.d
  %i.an = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !23684, !nonnull !14, !noundef !14
  %i.ao = getelementptr inbounds nuw [28 x i8], ptr %i.an, i64 %i.ad
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.ao, ptr noundef nonnull align 4 dereferenceable(28) %i.b, i64 28, i1 false)
  %i.ap = add nuw nsw i64 %i.ad, 1
  store i64 %i.ap, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !23684
  %i.aq = invoke { i32, i32 } @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtB1N_20BoundTypeVarInstanceEENtNtNtB8_6traits8iterator8Iterator4nextB1R_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.d)
          to label %.noexc8 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc8:                                          ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityE7reserveBJ_.exit.i.i
  %i.ar = extractvalue { i32, i32 } %i.aq, 0      ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.ar, 0
  br i1 %.not.i.i.i, label %.loopexit11, label %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtB7_6copied6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtB24_20BoundTypeVarInstanceEENCNvMNtNtNtB26_4call4bind11constructorNtB3O_18ConstructorBinding33unspecialize_class_type_variabless_0ENtNtNtB9_6traits8iterator8Iterator4nextB28_.exit.i.i

_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtB7_6copied6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtB24_20BoundTypeVarInstanceEENCNvMNtNtNtB26_4call4bind11constructorNtB3O_18ConstructorBinding33unspecialize_class_type_variabless_0ENtNtNtB9_6traits8iterator8Iterator4nextB28_.exit.thread: ; preds = %bb.a, %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtB7_6copied6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtB24_20BoundTypeVarInstanceEENCNvMNtNtNtB26_4call4bind11constructorNtB3O_18ConstructorBinding33unspecialize_class_type_variabless_0ENtNtNtB9_6traits8iterator8Iterator4nextB28_.exit
  store i64 0, ptr %0, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.as, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.at, align 8
  br label %bb.g
end_hunk_5
begin_hunk_6_@_RNvXNtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarInstanceEINtB2_18SpecFromIterNestedB10_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesNtB12_20BoundTypeVarIdentityB10_EEE9from_iterB16_:bb.a
  %i.af = call i64 @llvm.uadd.sat.i64(i64 %i.ae, i64 1) ; 2 uses
  %i.ag = load i64, ptr %.sroa.64.0..sroa_idx, align 8, !alias.scope !23695, !noundef !14 ; 2 uses
  %i.ah = load i64, ptr %i.e, align 8, !range !24, !alias.scope !23695, !noundef !14
  %i.ai = sub i64 %i.ah, %i.ag
  %i.aj = icmp ugt i64 %i.af, %i.ai
  br i1 %i.aj, label %bb.e, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarInstanceE7reserveBJ_.exit.i.i, !prof !16

bb.e:                                             ; preds = %.noexc9
  invoke void @_RINvNvMs2_NtCscdodAO9FK5_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %i.ag, i64 noundef range(i64 1, 0) %i.af, i64 noundef 4, i64 noundef 8)
          to label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarInstanceE7reserveBJ_.exit.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarInstanceE7reserveBJ_.exit.i.i: ; preds = %bb.e, %.noexc9, %.lr.ph.i.i
  %i.ak = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !23694, !nonnull !14, !noundef !14
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.aa ; 2 uses
  store i32 %i.y, ptr %i.al, align 4
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  store i32 %i.z, ptr %i.am, align 4
  %i.an = add nuw nsw i64 %i.aa, 1
  store i64 %i.an, ptr %.sroa.64.0..sroa_idx, align 8, !alias.scope !23694
  %i.ao = invoke { i32, i32 } @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtB1N_20BoundTypeVarInstanceEENtNtNtB8_6traits8iterator8Iterator4nextB1R_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b)
          to label %.noexc11 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc11:                                         ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarInstanceE7reserveBJ_.exit.i.i
  %i.ap = extractvalue { i32, i32 } %i.ao, 0      ; 2 uses
  %.not.i.i = icmp eq i32 %i.ap, 0
  br i1 %.not.i.i, label %.loopexit13, label %.lr.ph.i.i

bb.f:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.ar, align 8
  br label %bb.g

bb.g:                                             ; preds = %.loopexit13, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarInstanceE7reserveBJ_.exit.i.i, %bb.e, %bb.d, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsoTR8nlGN3X_18ty_python_semantic.exit
  %lpad.loopexit.split-lp18 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarInstanceENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarInstanceEEB1d_.exit unwind label %bb.h

.loopexit13:                                      ; preds = %.noexc11, %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !23692
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  br label %bb.g

bb.h:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #32
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarInstanceEEB1d_.exit: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  resume { ptr, i32 } %lpad.loopexit.split-lp18
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8function15OverloadLiteralEINtB2_18SpecFromIterNestedB10_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map9FilterMapINtNtNtB2N_5slice4iter4IterjENCNvMs7_NtNtB14_4call4bindNtB4h_15CallableBinding18report_diagnosticss1_0EE9from_iterB16_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23712)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23713)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !23712
  store ptr %i.f, ptr %i.c, align 8, !noalias !23714
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !23715, !nonnull !14, !noundef !14 ; 2 uses
  %.promoted.i.i = load ptr, ptr %1, align 8, !alias.scope !23715 ; 2 uses
  %i.i = icmp eq ptr %.promoted.i.i, %i.h
  br i1 %i.i, label %bb.c, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %bb.b
  %i.j = phi ptr [ %i.k, %bb.b ], [ %.promoted.i.i, %bb.a ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 3 uses
  store ptr %i.k, ptr %1, align 8, !alias.scope !23715
  %i.l = call { i32, i32 } @_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNvMs7_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtBW_15CallableBinding18report_diagnosticss1_0INtB7_5FnMutTRjEE8call_mutB12_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.j), !noalias !23713 ; 3 uses
  %i.m = extractvalue { i32, i32 } %i.l, 0
  %.not.i.i = icmp eq i32 %i.m, 0
  br i1 %.not.i.i, label %bb.b, label %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterjENCNvMs7_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB1K_15CallableBinding18report_diagnosticss1_0ENtNtNtB9_6traits8iterator8Iterator4nextB1Q_.exit

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.n = icmp eq ptr %i.k, %i.h
  br i1 %i.n, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %bb.b
  %i.o = extractvalue { i32, i32 } %i.l, 1
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge.i.i, %bb.a
  %.sroa.5.0.lcssa.i.i = phi i32 [ %i.o, %._crit_edge.i.i ], [ undef, %bb.a ]
  %i.p = insertvalue { i32, i32 } { i32 0, i32 poison }, i32 %.sroa.5.0.lcssa.i.i, 1
  br label %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterjENCNvMs7_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB1K_15CallableBinding18report_diagnosticss1_0ENtNtNtB9_6traits8iterator8Iterator4nextB1Q_.exit

_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterjENCNvMs7_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB1K_15CallableBinding18report_diagnosticss1_0ENtNtNtB9_6traits8iterator8Iterator4nextB1Q_.exit: ; preds = %.lr.ph.i.i, %bb.c
  %.merged.i.i = phi { i32, i32 } [ %i.p, %bb.c ], [ %i.l, %.lr.ph.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !23712
  %i.q = extractvalue { i32, i32 } %.merged.i.i, 0 ; 2 uses
  %i.r = extractvalue { i32, i32 } %.merged.i.i, 1
  %.not = icmp eq i32 %i.q, 0
  br i1 %.not, label %bb.j, label %bb.d

bb.d:                                             ; preds = %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterjENCNvMs7_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB1K_15CallableBinding18report_diagnosticss1_0ENtNtNtB9_6traits8iterator8Iterator4nextB1Q_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef 4, i1 noundef zeroext false, i64 noundef 4, i64 noundef 8)
  %i.s = load i64, ptr %i.b, align 8, !range !28, !noundef !14
  %i.t = trunc nuw i64 %i.s to i1
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.v = load i64, ptr %i.u, align 8, !range !60, !noundef !14 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.t, label %bb.e, label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsoTR8nlGN3X_18ty_python_semantic.exit, !prof !16

bb.e:                                             ; preds = %bb.d
  %i.x = load i64, ptr %i.w, align 8
  call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.v, i64 %i.x) #31
  unreachable

_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %bb.d
  %i.y = load ptr, ptr %i.w, align 8, !nonnull !14, !noundef !14 ; 3 uses
  %i.z = icmp ugt i64 %i.v, 3
  call void @llvm.assume(i1 %i.z)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i32 %i.q, ptr %i.y, align 4
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  store i32 %i.r, ptr %i.aa, align 4
  store i64 %i.v, ptr %i.e, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr %i.y, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.64.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 3 uses
  store i64 1, ptr %.sroa.64.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !23716)
  call void @llvm.experimental.noalias.scope.decl(metadata !23717)
  call void @llvm.experimental.noalias.scope.decl(metadata !23718)
  call void @llvm.experimental.noalias.scope.decl(metadata !23719)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  br label %bb.f

bb.f:                                             ; preds = %.noexc11, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsoTR8nlGN3X_18ty_python_semantic.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !23720)
  call void @llvm.experimental.noalias.scope.decl(metadata !23721)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !23722
  store ptr %i.ab, ptr %i.a, align 8, !noalias !23723
  %i.ad = load ptr, ptr %i.ac, align 8, !alias.scope !23724, !nonnull !14, !noundef !14 ; 2 uses
  %.promoted.i.i.i.i = load ptr, ptr %i.d, align 8, !alias.scope !23724 ; 2 uses
  %i.ae = icmp eq ptr %.promoted.i.i.i.i, %i.ad
  br i1 %i.ae, label %bb.h, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.f, %bb.g
  %i.af = phi ptr [ %i.ag, %bb.g ], [ %.promoted.i.i.i.i, %bb.f ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 3 uses
  store ptr %i.ag, ptr %i.d, align 8, !alias.scope !23724
  %i.ah = invoke { i32, i32 } @_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNvMs7_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtBW_15CallableBinding18report_diagnosticss1_0INtB7_5FnMutTRjEE8call_mutB12_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.af)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

.noexc:                                           ; preds = %.lr.ph.i.i.i.i
  %i.ai = extractvalue { i32, i32 } %i.ah, 0
  %.not.i.i.i.i = icmp eq i32 %i.ai, 0
  br i1 %.not.i.i.i.i, label %bb.g, label %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterjENCNvMs7_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB1K_15CallableBinding18report_diagnosticss1_0ENtNtNtB9_6traits8iterator8Iterator4nextB1Q_.exit.i.i

bb.g:                                             ; preds = %.noexc
  %i.aj = icmp eq ptr %i.ag, %i.ad
  br i1 %i.aj, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.g
  %i.ak = extractvalue { i32, i32 } %i.ah, 1
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge.i.i.i.i, %bb.f
  %.sroa.5.0.lcssa.i.i.i.i = phi i32 [ %i.ak, %._crit_edge.i.i.i.i ], [ undef, %bb.f ]
  %i.al = insertvalue { i32, i32 } { i32 0, i32 poison }, i32 %.sroa.5.0.lcssa.i.i.i.i, 1
  br label %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterjENCNvMs7_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB1K_15CallableBinding18report_diagnosticss1_0ENtNtNtB9_6traits8iterator8Iterator4nextB1Q_.exit.i.i

_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterjENCNvMs7_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB1K_15CallableBinding18report_diagnosticss1_0ENtNtNtB9_6traits8iterator8Iterator4nextB1Q_.exit.i.i: ; preds = %.noexc, %bb.h
  %.merged.i.i.i.i = phi { i32, i32 } [ %i.al, %bb.h ], [ %i.ah, %.noexc ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !23722
  %i.am = extractvalue { i32, i32 } %.merged.i.i.i.i, 0 ; 2 uses
  %i.an = extractvalue { i32, i32 } %.merged.i.i.i.i, 1
  %.not.i.i10 = icmp eq i32 %i.am, 0
  br i1 %.not.i.i10, label %_RNvXNtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB4_3VecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8function15OverloadLiteralEINtB2_10SpecExtendBQ_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map9FilterMapINtNtNtB2u_5slice4iter4IterjENCNvMs7_NtNtBU_4call4bindNtB3Y_15CallableBinding18report_diagnosticss1_0EE11spec_extendBW_.exit, label %bb.i

bb.i:                                             ; preds = %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterjENCNvMs7_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB1K_15CallableBinding18report_diagnosticss1_0ENtNtNtB9_6traits8iterator8Iterator4nextB1Q_.exit.i.i
  %i.ao = load i64, ptr %.sroa.64.0..sroa_idx, align 8, !alias.scope !23725, !noundef !14 ; 5 uses
  %i.ap = icmp ult i64 %i.ao, 1152921504606846976
  call void @llvm.assume(i1 %i.ap)
  %i.aq = load i64, ptr %i.e, align 8, !range !24, !alias.scope !23725, !noundef !14
  %i.ar = icmp eq i64 %i.ao, %i.aq
  br i1 %i.ar, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8function15OverloadLiteralE7reserveBJ_.exit.i.i, label %.noexc11

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8function15OverloadLiteralE7reserveBJ_.exit.i.i: ; preds = %bb.i
  invoke void @_RINvNvMs2_NtCscdodAO9FK5_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %i.ao, i64 noundef range(i64 1, 0) 1, i64 noundef 4, i64 noundef 8)
          to label %.noexc11 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc11:                                         ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8function15OverloadLiteralE7reserveBJ_.exit.i.i, %bb.i
  %i.as = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !23725, !nonnull !14, !noundef !14
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.ao ; 2 uses
  store i32 %i.am, ptr %i.at, align 4
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  store i32 %i.an, ptr %i.au, align 4
  %i.av = add nuw nsw i64 %i.ao, 1
  store i64 %i.av, ptr %.sroa.64.0..sroa_idx, align 8, !alias.scope !23725
  br label %bb.f

bb.j:                                             ; preds = %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterjENCNvMs7_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB1K_15CallableBinding18report_diagnosticss1_0ENtNtNtB9_6traits8iterator8Iterator4nextB1Q_.exit
  store i64 0, ptr %0, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.aw, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.ax, align 8
  br label %bb.k

bb.k:                                             ; preds = %_RNvXNtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB4_3VecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8function15OverloadLiteralEINtB2_10SpecExtendBQ_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map9FilterMapINtNtNtB2u_5slice4iter4IterjENCNvMs7_NtNtBU_4call4bindNtB3Y_15CallableBinding18report_diagnosticss1_0EE11spec_extendBW_.exit, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph.i.i.i.i, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8function15OverloadLiteralE7reserveBJ_.exit.i.i
  %lpad.loopexit.split-lp32 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8function15OverloadLiteralENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8function15OverloadLiteralEEB1d_.exit unwind label %bb.l

_RNvXNtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB4_3VecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8function15OverloadLiteralEINtB2_10SpecExtendBQ_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map9FilterMapINtNtNtB2u_5slice4iter4IterjENCNvMs7_NtNtBU_4call4bindNtB3Y_15CallableBinding18report_diagnosticss1_0EE11spec_extendBW_.exit: ; preds = %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterjENCNvMs7_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB1K_15CallableBinding18report_diagnosticss1_0ENtNtNtB9_6traits8iterator8Iterator4nextB1Q_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  br label %bb.k

bb.l:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.ay = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #32
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8function15OverloadLiteralEEB1d_.exit: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  resume { ptr, i32 } %lpad.loopexit.split-lp32
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support18resolve_definition18ResolvedDefinitionEINtB2_18SpecFromIterNestedB10_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map9FilterMapIB38_INtNtB3c_3rev3RevINtNtNtB3g_5slice4iter4IterNtB16_4TypeEENCNvB14_20definitions_for_names4_0ENCB5b_s5_0EE9from_iterB18_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(40) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [20 x i8], align 4                ; 9 uses
  %.sroa.4.i.i = alloca [16 x i8], align 4        ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [20 x i8], align 4                ; 6 uses
  %i.d = alloca [40 x i8], align 8                ; 6 uses
  %.sroa.4 = alloca [16 x i8], align 4            ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !23746
  call void @_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3revINtB5_3RevINtNtNtBb_5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNtB7_10filter_map19filter_map_try_foldRB1m_NtNtB1o_8instance19NominalInstanceTypeuINtNtNtBb_3ops12control_flow11ControlFlowNtNtNtB1o_11ide_support18resolve_definition18ResolvedDefinitionENCNvB50_20definitions_for_names4_0NCINvNvB2a_8find_map5checkB3E_B4W_QNCB60_s5_0E0E0B4h_EB1q_(ptr noalias noundef nonnull sret([20 x i8]) align 4 captures(address) dereferenceable(20) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(40) %1, ptr noalias noundef nonnull %i.f, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f), !noalias !23747
  %i.g = load i32, ptr %i.c, align 4, !range !19, !noalias !23746, !noundef !14 ; 2 uses
  %.not.i.i = icmp eq i32 %i.g, -1
  br i1 %.not.i.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.7.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.4, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.7.0..sroa_idx10, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !23746
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef 4, i1 noundef zeroext false, i64 noundef 4, i64 noundef 20)
  %i.h = load i64, ptr %i.b, align 8, !range !28, !noundef !14
  %i.i = trunc nuw i64 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !60, !noundef !14 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.i, label %bb.c, label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsoTR8nlGN3X_18ty_python_semantic.exit, !prof !16

bb.c:                                             ; preds = %bb.b
  %i.m = load i64, ptr %i.l, align 8
  call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.k, i64 %i.m) #31
  unreachable

_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %bb.b
  %i.n = load ptr, ptr %i.l, align 8, !nonnull !14, !noundef !14 ; 3 uses
  %i.o = icmp ugt i64 %i.k, 3
  call void @llvm.assume(i1 %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.416.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.4, i64 16, i1 false)
  store i32 %i.g, ptr %i.n, align 4
  store i64 %i.k, ptr %i.e, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr %i.n, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 3 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.d, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !23748)
  call void @llvm.experimental.noalias.scope.decl(metadata !23749)
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !23750
  invoke void @_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3revINtB5_3RevINtNtNtBb_5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNtB7_10filter_map19filter_map_try_foldRB1m_NtNtB1o_8instance19NominalInstanceTypeuINtNtNtBb_3ops12control_flow11ControlFlowNtNtNtB1o_11ide_support18resolve_definition18ResolvedDefinitionENCNvB50_20definitions_for_names4_0NCINvNvB2a_8find_map5checkB3E_B4W_QNCB60_s5_0E0E0B4h_EB1q_(ptr noalias noundef nonnull sret([20 x i8]) align 4 captures(address) dereferenceable(20) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(40) %i.d, ptr noalias noundef nonnull %i.p, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsoTR8nlGN3X_18ty_python_semantic.exit
  %i.q = load i32, ptr %i.a, align 4, !range !19, !noalias !23750, !noundef !14 ; 2 uses
  %.not.i.i14.i.i = icmp eq i32 %i.q, -1
  br i1 %.not.i.i14.i.i, label %.loopexit19, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.noexc
  %.sroa.7.0..sroa_idx6.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  br label %bb.d

bb.d:                                             ; preds = %.noexc7, %.lr.ph.i.i
  %i.r = phi i32 [ %i.q, %.lr.ph.i.i ], [ %i.z, %.noexc7 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.4.i.i, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.7.0..sroa_idx6.i.i, i64 16, i1 false), !noalias !23751
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !23750
  %i.s = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !23752, !noundef !14 ; 5 uses
  %i.t = icmp ult i64 %i.s, 461168601842738791
  call void @llvm.assume(i1 %i.t)
  %i.u = load i64, ptr %i.e, align 8, !range !24, !alias.scope !23752, !noundef !14
  %i.v = icmp eq i64 %i.s, %i.u
  br i1 %i.v, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support18resolve_definition18ResolvedDefinitionE7reserveBL_.exit.i.i, label %.noexc6

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support18resolve_definition18ResolvedDefinitionE7reserveBL_.exit.i.i: ; preds = %bb.d
  invoke void @_RINvNvMs2_NtCscdodAO9FK5_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %i.s, i64 noundef 1, i64 noundef 4, i64 noundef 20)
          to label %.noexc6 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc6:                                          ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support18resolve_definition18ResolvedDefinitionE7reserveBL_.exit.i.i, %bb.d
  %i.w = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !23752, !nonnull !14, !noundef !14
  %i.x = getelementptr inbounds nuw [20 x i8], ptr %i.w, i64 %i.s ; 2 uses
  %.sroa.411.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.411.0..sroa_idx.i.i, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.4.i.i, i64 16, i1 false)
  store i32 %i.r, ptr %i.x, align 4
  %i.y = add nuw nsw i64 %i.s, 1
  store i64 %i.y, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !23752
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !23750
  invoke void @_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3revINtB5_3RevINtNtNtBb_5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNtB7_10filter_map19filter_map_try_foldRB1m_NtNtB1o_8instance19NominalInstanceTypeuINtNtNtBb_3ops12control_flow11ControlFlowNtNtNtB1o_11ide_support18resolve_definition18ResolvedDefinitionENCNvB50_20definitions_for_names4_0NCINvNvB2a_8find_map5checkB3E_B4W_QNCB60_s5_0E0E0B4h_EB1q_(ptr noalias noundef nonnull sret([20 x i8]) align 4 captures(address) dereferenceable(20) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(40) %i.d, ptr noalias noundef nonnull %i.p, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %.noexc7 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc7:                                          ; preds = %.noexc6
  %i.z = load i32, ptr %i.a, align 4, !range !19, !noalias !23750, !noundef !14 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.z, -1
  br i1 %.not.i.i.i.i, label %.loopexit19, label %bb.d

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !23746
  store i64 0, ptr %0, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.ab, align 8
  br label %bb.f

bb.f:                                             ; preds = %.loopexit19, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc6, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support18resolve_definition18ResolvedDefinitionE7reserveBL_.exit.i.i, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsoTR8nlGN3X_18ty_python_semantic.exit
  %lpad.loopexit.split-lp24 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support18resolve_definition18ResolvedDefinitionENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBT_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support18resolve_definition18ResolvedDefinitionEEB1f_.exit unwind label %bb.g

.loopexit19:                                      ; preds = %.noexc7, %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !23750
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  br label %bb.f

bb.g:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #32
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support18resolve_definition18ResolvedDefinitionEEB1f_.exit: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  resume { ptr, i32 } %lpad.loopexit.split-lp24
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support18resolve_definition18ResolvedDefinitionEINtB2_18SpecFromIterNestedB10_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map9FilterMapINtNtB3c_6filter6FilterINtNtNtCs5e9M2GLoJMY_8indexmap3set4iter8IntoIterNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionENCNvB14_22own_member_definitionss0_0ENCB6h_s1_0EE9from_iterB18_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(72) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 3 uses
  %i.b = alloca [20 x i8], align 4                ; 6 uses
  %i.c = alloca [16 x i8], align 16               ; 6 uses
  %.sroa.4.i.i = alloca [16 x i8], align 4        ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 3 uses
  %i.f = alloca [20 x i8], align 4                ; 6 uses
  %i.g = alloca [16 x i8], align 8                ; 6 uses
  %i.h = alloca [72 x i8], align 8                ; 10 uses
  %.sroa.4 = alloca [16 x i8], align 4            ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32
end_hunk_6
begin_hunk_7_@_RNvXNtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB4_3VecRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameEINtB2_18SpecFromIterNestedB10_INtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set4IterB11_EE9from_iterCsoTR8nlGN3X_18ty_python_semantic:bb.a
  %i.q = extractvalue { ptr, ptr } %i.p, 0        ; 2 uses
  %.not6.i.i = icmp eq ptr %i.q, null
  br i1 %.not6.i.i, label %_RNvXNtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB4_3VecRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameEINtB2_10SpecExtendBQ_INtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set4IterBR_EE11spec_extendCsoTR8nlGN3X_18ty_python_semantic.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.noexc
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  br label %bb.d

bb.d:                                             ; preds = %.noexc8, %.lr.ph.i.i
  %i.s = phi ptr [ %i.q, %.lr.ph.i.i ], [ %i.ac, %.noexc8 ]
  %i.t = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !24324, !noundef !14 ; 5 uses
  %i.u = icmp ult i64 %i.t, 1152921504606846976
  call void @llvm.assume(i1 %i.u)
  %i.v = load i64, ptr %i.c, align 8, !range !24, !alias.scope !24324, !noundef !14
  %i.w = icmp eq i64 %i.t, %i.v
  br i1 %i.w, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameE7reserveCsoTR8nlGN3X_18ty_python_semantic.exit.i.i, label %.noexc7

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameE7reserveCsoTR8nlGN3X_18ty_python_semantic.exit.i.i: ; preds = %bb.d
  %.val.i.i = load i64, ptr %i.r, align 8, !alias.scope !24325, !noundef !14
  %i.x = call i64 @llvm.uadd.sat.i64(i64 %.val.i.i, i64 1)
  invoke void @_RINvNvMs2_NtCscdodAO9FK5_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.t, i64 noundef range(i64 1, 0) %i.x, i64 noundef 8, i64 noundef 8)
          to label %.noexc7 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc7:                                          ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameE7reserveCsoTR8nlGN3X_18ty_python_semantic.exit.i.i, %bb.d
  %i.y = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !24324, !nonnull !14, !noundef !14
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.t
  store ptr %i.s, ptr %i.z, align 8
  %i.aa = add nuw nsw i64 %i.t, 1
  store i64 %i.aa, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !24324
  %i.ab = invoke { ptr, ptr } @_RNvXsG_NtCsgQfI1edjipl_9hashbrown3mapINtB5_4IterNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameuENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.b)
          to label %.noexc8 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc8:                                          ; preds = %.noexc7
  %i.ac = extractvalue { ptr, ptr } %i.ab, 0      ; 2 uses
  %.not.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i, label %_RNvXNtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB4_3VecRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameEINtB2_10SpecExtendBQ_INtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set4IterBR_EE11spec_extendCsoTR8nlGN3X_18ty_python_semantic.exit, label %bb.d

bb.e:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.ae, align 8
  br label %bb.f

bb.f:                                             ; preds = %_RNvXNtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB4_3VecRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameEINtB2_10SpecExtendBQ_INtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set4IterBR_EE11spec_extendCsoTR8nlGN3X_18ty_python_semantic.exit, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc7, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameE7reserveCsoTR8nlGN3X_18ty_python_semantic.exit.i.i, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsoTR8nlGN3X_18ty_python_semantic.exit
  %lpad.loopexit.split-lp14 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameEECsoTR8nlGN3X_18ty_python_semantic.exit unwind label %bb.g

_RNvXNtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB4_3VecRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameEINtB2_10SpecExtendBQ_INtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set4IterBR_EE11spec_extendCsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %.noexc8, %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  br label %bb.f

bb.g:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #32
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameEECsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  resume { ptr, i32 } %lpad.loopexit.split-lp14
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB4_3VecRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierEINtB2_18SpecFromIterNestedB10_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map9FilterMapINtNtB2s_9enumerate9EnumerateNtB13_20ArgumentsSourceOrderENCNvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types9dedicated8pydantic32report_discarded_extra_arguments0EE9from_iterB4v_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(64) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 16               ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [16 x i8], align 8                ; 6 uses
  %i.f = alloca [64 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !24366
  store ptr %i.h, ptr %i.e, align 8, !noalias !24367
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  store ptr %i.i, ptr %i.j, align 8, !noalias !24367
  %.sroa.4.0..sroa_idx1.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.5.0..sroa_idx2.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.k = call { i64, ptr } @_RNvXs24_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_20ArgumentsSourceOrderNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef nonnull align 8 dereferenceable(64) %1) ; 2 uses
  %i.l = extractvalue { i64, ptr } %i.k, 0        ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.l, 2
  br i1 %.not.i.i.i.i, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = extractvalue { i64, ptr } %i.k, 1
  call void @llvm.experimental.noalias.scope.decl(metadata !24368)
  %i.n = load ptr, ptr %i.j, align 8, !alias.scope !24368, !noalias !24367, !nonnull !14, !align !18, !noundef !14
  %i.o = load i64, ptr %i.n, align 8, !noalias !24368, !noundef !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !24369
  store i64 %i.o, ptr %i.d, align 8, !noalias !24370
  store i64 %i.l, ptr %.sroa.4.0..sroa_idx1.i.i.i.i.i, align 8, !noalias !24370
  store ptr %i.m, ptr %.sroa.5.0..sroa_idx2.i.i.i.i.i, align 8, !noalias !24370
  %i.p = call noundef align 8 ptr @_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types9dedicated8pydantic32report_discarded_extra_arguments0INtB7_5FnMutTTjNtNtCskLngH8kgpZI_15ruff_python_ast5nodes12ArgOrKeywordEEE8call_mutBY_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.e, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.d), !noalias !24371 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !24369
  %i.q = load ptr, ptr %i.j, align 8, !alias.scope !24368, !noalias !24367, !nonnull !14, !align !18, !noundef !14 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !noundef !14
  %i.s = add i64 %i.r, 1
  store i64 %i.s, ptr %i.q, align 8
  %.not8.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not8.i.i.i.i, label %bb.b, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !24366
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef 4, i1 noundef zeroext false, i64 noundef 8, i64 noundef 8)
  %i.t = load i64, ptr %i.c, align 8, !range !28, !noundef !14
  %i.u = trunc nuw i64 %i.t to i1
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.w = load i64, ptr %i.v, align 8, !range !60, !noundef !14 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.u, label %bb.e, label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsoTR8nlGN3X_18ty_python_semantic.exit, !prof !16

bb.e:                                             ; preds = %bb.d
  %i.y = load i64, ptr %i.x, align 8
  call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.w, i64 %i.y) #31
  unreachable

_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %bb.d
  %i.z = load ptr, ptr %i.x, align 8, !nonnull !14, !noundef !14 ; 2 uses
  %i.aa = icmp ugt i64 %i.w, 3
  call void @llvm.assume(i1 %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store ptr %i.p, ptr %i.z, align 8
  store i64 %i.w, ptr %i.g, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  store ptr %i.z, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.f, ptr noundef nonnull align 8 dereferenceable(64) %1, i64 64, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !24372)
  call void @llvm.experimental.noalias.scope.decl(metadata !24373)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.ac = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %.sroa.4.0..sroa_idx1.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.5.0..sroa_idx2.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ae = insertelement <2 x ptr> poison, ptr %i.ab, i64 0
  %i.af = insertelement <2 x ptr> %i.ae, ptr %i.ac, i64 1
  br label %bb.f

bb.f:                                             ; preds = %.noexc8, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsoTR8nlGN3X_18ty_python_semantic.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !24374
  store <2 x ptr> %i.af, ptr %i.b, align 16, !noalias !24375
  br label %bb.g

bb.g:                                             ; preds = %.noexc7, %bb.f
  %i.ag = invoke { i64, ptr } @_RNvXs24_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_20ArgumentsSourceOrderNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.f)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc:                                           ; preds = %bb.g
  %i.ah = extractvalue { i64, ptr } %i.ag, 0      ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %i.ah, 2
  br i1 %.not.i.i.i.i.i.i, label %bb.l, label %bb.h

bb.h:                                             ; preds = %.noexc
  %i.ai = extractvalue { i64, ptr } %i.ag, 1
  call void @llvm.experimental.noalias.scope.decl(metadata !24376)
  %i.aj = load ptr, ptr %i.ad, align 8, !alias.scope !24376, !noalias !24375, !nonnull !14, !align !18, !noundef !14
  %i.ak = load i64, ptr %i.aj, align 8, !noalias !24376, !noundef !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !24377
  store i64 %i.ak, ptr %i.a, align 8, !noalias !24378
  store i64 %i.ah, ptr %.sroa.4.0..sroa_idx1.i.i.i.i.i.i.i, align 8, !noalias !24378
  store ptr %i.ai, ptr %.sroa.5.0..sroa_idx2.i.i.i.i.i.i.i, align 8, !noalias !24378
  %i.al = invoke noundef align 8 ptr @_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types9dedicated8pydantic32report_discarded_extra_arguments0INtB7_5FnMutTTjNtNtCskLngH8kgpZI_15ruff_python_ast5nodes12ArgOrKeywordEEE8call_mutBY_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %.noexc7 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc7:                                          ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !24377
  %i.am = load ptr, ptr %i.ad, align 8, !alias.scope !24376, !noalias !24375, !nonnull !14, !align !18, !noundef !14 ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !noundef !14
  %i.ao = add i64 %i.an, 1
  store i64 %i.ao, ptr %i.am, align 8
  %.not8.i.i.i.i.i.i = icmp eq ptr %i.al, null
  br i1 %.not8.i.i.i.i.i.i, label %bb.g, label %bb.i

bb.i:                                             ; preds = %.noexc7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !24374
  %i.ap = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !24379, !noundef !14 ; 5 uses
  %i.aq = icmp ult i64 %i.ap, 1152921504606846976
  call void @llvm.assume(i1 %i.aq)
  %i.ar = load i64, ptr %i.g, align 8, !range !24, !alias.scope !24379, !noundef !14
  %i.as = icmp eq i64 %i.ap, %i.ar
  br i1 %i.as, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierE7reserveCsoTR8nlGN3X_18ty_python_semantic.exit.i.i, label %.noexc8

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierE7reserveCsoTR8nlGN3X_18ty_python_semantic.exit.i.i: ; preds = %bb.i
  invoke void @_RINvNvMs2_NtCscdodAO9FK5_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef %i.ap, i64 noundef range(i64 1, 0) 1, i64 noundef 8, i64 noundef 8)
          to label %.noexc8 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc8:                                          ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierE7reserveCsoTR8nlGN3X_18ty_python_semantic.exit.i.i, %bb.i
  %i.at = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !24379, !nonnull !14, !noundef !14
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.ap
  store ptr %i.al, ptr %i.au, align 8
  %i.av = add nuw nsw i64 %i.ap, 1
  store i64 %i.av, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !24379
  br label %bb.f

bb.j:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !24366
  store i64 0, ptr %0, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.aw, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.ax, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret void

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.h, %bb.g, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierE7reserveCsoTR8nlGN3X_18ty_python_semantic.exit.i.i
  %lpad.loopexit.split-lp21 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierEECsoTR8nlGN3X_18ty_python_semantic.exit unwind label %bb.m

bb.l:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !24374
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  br label %bb.k

bb.m:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.ay = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #32
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierEECsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  resume { ptr, i32 } %lpad.loopexit.split-lp21
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB4_3VecRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterEINtB2_18SpecFromIterNestedB10_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filter6FilterINtNtB2q_3map3MapINtNtB2q_4skip4SkipINtNtB2q_5chain5ChainIB3Q_INtNtNtB2u_5slice4iter4IterNtB13_20ParameterWithDefaultEB4f_EB4f_EENCNvMs0_NtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder8functionNtB5u_20TypeInferenceBuilder35validate_unpacked_typed_dict_kwargss_0ENCB5m_s0_0EE9from_iterB5A_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(72) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [72 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.e = tail call noundef align 8 ptr @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtB8_4skip4SkipINtNtB8_5chain5ChainIB1g_INtNtNtBc_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultEB1E_EB1E_EENCNvMs0_NtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder8functionNtB3r_20TypeInferenceBuilder35validate_unpacked_typed_dict_kwargss_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB5E_4find5checkRNtB26_9ParameterQNCB3j_s0_0E0INtNtNtBc_3ops12control_flow11ControlFlowB6I_EEB3x_(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d) ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.c, label %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filterINtB5_6FilterINtNtB7_3map3MapINtNtB7_4skip4SkipINtNtB7_5chain5ChainIB1B_INtNtNtBb_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultEB1Z_EB1Z_EENCNvMs0_NtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder8functionNtB3M_20TypeInferenceBuilder35validate_unpacked_typed_dict_kwargss_0ENCB3E_s0_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB3S_.exit

_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filterINtB5_6FilterINtNtB7_3map3MapINtNtB7_4skip4SkipINtNtB7_5chain5ChainIB1B_INtNtNtBb_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultEB1Z_EB1Z_EENCNvMs0_NtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder8functionNtB3M_20TypeInferenceBuilder35validate_unpacked_typed_dict_kwargss_0ENCB3E_s0_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB3S_.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 4, i1 noundef zeroext false, i64 noundef 8, i64 noundef 8)
  %i.f = load i64, ptr %i.a, align 8, !range !28, !noundef !14
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !60, !noundef !14 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.g, label %bb.b, label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsoTR8nlGN3X_18ty_python_semantic.exit, !prof !16

bb.b:                                             ; preds = %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filterINtB5_6FilterINtNtB7_3map3MapINtNtB7_4skip4SkipINtNtB7_5chain5ChainIB1B_INtNtNtBb_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultEB1Z_EB1Z_EENCNvMs0_NtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder8functionNtB3M_20TypeInferenceBuilder35validate_unpacked_typed_dict_kwargss_0ENCB3E_s0_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB3S_.exit
  %i.k = load i64, ptr %i.j, align 8
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #31
  unreachable

_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filterINtB5_6FilterINtNtB7_3map3MapINtNtB7_4skip4SkipINtNtB7_5chain5ChainIB1B_INtNtNtBb_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultEB1Z_EB1Z_EENCNvMs0_NtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder8functionNtB3M_20TypeInferenceBuilder35validate_unpacked_typed_dict_kwargss_0ENCB3E_s0_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB3S_.exit
  %i.l = load ptr, ptr %i.j, align 8, !nonnull !14, !noundef !14 ; 2 uses
  %i.m = icmp ugt i64 %i.i, 3
  tail call void @llvm.assume(i1 %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr %i.e, ptr %i.l, align 8
  store i64 %i.i, ptr %i.c, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %i.l, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.b, ptr noundef nonnull align 8 dereferenceable(72) %1, i64 72, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 2 uses
  %i.o = invoke noundef align 8 ptr @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtB8_4skip4SkipINtNtB8_5chain5ChainIB1g_INtNtNtBc_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultEB1E_EB1E_EENCNvMs0_NtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder8functionNtB3r_20TypeInferenceBuilder35validate_unpacked_typed_dict_kwargss_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB5E_4find5checkRNtB26_9ParameterQNCB3j_s0_0E0INtNtNtBc_3ops12control_flow11ControlFlowB6I_EEB3x_(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.n)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc:                                           ; preds = %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsoTR8nlGN3X_18ty_python_semantic.exit
  %.not6.i.i = icmp eq ptr %i.o, null
  br i1 %.not6.i.i, label %_RNvXNtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB4_3VecRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterEINtB2_10SpecExtendBQ_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filter6FilterINtNtB27_3map3MapINtNtB27_4skip4SkipINtNtB27_5chain5ChainIB3x_INtNtNtB2b_5slice4iter4IterNtBT_20ParameterWithDefaultEB3W_EB3W_EENCNvMs0_NtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder8functionNtB5a_20TypeInferenceBuilder35validate_unpacked_typed_dict_kwargss_0ENCB52_s0_0EE11spec_extendB5g_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.noexc, %.noexc8
  %i.p = phi ptr [ %i.x, %.noexc8 ], [ %i.o, %.noexc ]
  %i.q = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !24384, !noundef !14 ; 5 uses
  %i.r = icmp ult i64 %i.q, 1152921504606846976
  call void @llvm.assume(i1 %i.r)
  %i.s = load i64, ptr %i.c, align 8, !range !24, !alias.scope !24384, !noundef !14
  %i.t = icmp eq i64 %i.q, %i.s
  br i1 %i.t, label %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filterINtB5_6FilterINtNtB7_3map3MapINtNtB7_4skip4SkipINtNtB7_5chain5ChainIB1B_INtNtNtBb_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultEB1Z_EB1Z_EENCNvMs0_NtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder8functionNtB3M_20TypeInferenceBuilder35validate_unpacked_typed_dict_kwargss_0ENCB3E_s0_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB3S_.exit.i.i, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE7reserveCsoTR8nlGN3X_18ty_python_semantic.exit.i.i

_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filterINtB5_6FilterINtNtB7_3map3MapINtNtB7_4skip4SkipINtNtB7_5chain5ChainIB1B_INtNtNtBb_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultEB1Z_EB1Z_EENCNvMs0_NtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder8functionNtB3M_20TypeInferenceBuilder35validate_unpacked_typed_dict_kwargss_0ENCB3E_s0_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB3S_.exit.i.i: ; preds = %.lr.ph.i.i
  invoke void @_RINvNvMs2_NtCscdodAO9FK5_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.q, i64 noundef range(i64 1, 0) 1, i64 noundef 8, i64 noundef 8)
          to label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE7reserveCsoTR8nlGN3X_18ty_python_semantic.exit.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE7reserveCsoTR8nlGN3X_18ty_python_semantic.exit.i.i: ; preds = %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filterINtB5_6FilterINtNtB7_3map3MapINtNtB7_4skip4SkipINtNtB7_5chain5ChainIB1B_INtNtNtBb_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultEB1Z_EB1Z_EENCNvMs0_NtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder8functionNtB3M_20TypeInferenceBuilder35validate_unpacked_typed_dict_kwargss_0ENCB3E_s0_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB3S_.exit.i.i, %.lr.ph.i.i
  %i.u = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !24384, !nonnull !14, !noundef !14
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.q
  store ptr %i.p, ptr %i.v, align 8
  %i.w = add nuw nsw i64 %i.q, 1
  store i64 %i.w, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !24384
  %i.x = invoke noundef align 8 ptr @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtB8_4skip4SkipINtNtB8_5chain5ChainIB1g_INtNtNtBc_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultEB1E_EB1E_EENCNvMs0_NtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder8functionNtB3r_20TypeInferenceBuilder35validate_unpacked_typed_dict_kwargss_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB5E_4find5checkRNtB26_9ParameterQNCB3j_s0_0E0INtNtNtBc_3ops12control_flow11ControlFlowB6I_EEB3x_(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.n)
          to label %.noexc8 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc8:                                          ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE7reserveCsoTR8nlGN3X_18ty_python_semantic.exit.i.i
  %.not.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i, label %_RNvXNtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB4_3VecRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterEINtB2_10SpecExtendBQ_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filter6FilterINtNtB27_3map3MapINtNtB27_4skip4SkipINtNtB27_5chain5ChainIB3x_INtNtNtB2b_5slice4iter4IterNtBT_20ParameterWithDefaultEB3W_EB3W_EENCNvMs0_NtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder8functionNtB5a_20TypeInferenceBuilder35validate_unpacked_typed_dict_kwargss_0ENCB52_s0_0EE11spec_extendB5g_.exit, label %.lr.ph.i.i

bb.c:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.z, align 8
  br label %bb.d

bb.d:                                             ; preds = %_RNvXNtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB4_3VecRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterEINtB2_10SpecExtendBQ_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filter6FilterINtNtB27_3map3MapINtNtB27_4skip4SkipINtNtB27_5chain5ChainIB3x_INtNtNtB2b_5slice4iter4IterNtBT_20ParameterWithDefaultEB3W_EB3W_EENCNvMs0_NtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder8functionNtB5a_20TypeInferenceBuilder35validate_unpacked_typed_dict_kwargss_0ENCB52_s0_0EE11spec_extendB5g_.exit, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE7reserveCsoTR8nlGN3X_18ty_python_semantic.exit.i.i, %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filterINtB5_6FilterINtNtB7_3map3MapINtNtB7_4skip4SkipINtNtB7_5chain5ChainIB1B_INtNtNtBb_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultEB1Z_EB1Z_EENCNvMs0_NtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder8functionNtB3M_20TypeInferenceBuilder35validate_unpacked_typed_dict_kwargss_0ENCB3E_s0_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB3S_.exit.i.i, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsoTR8nlGN3X_18ty_python_semantic.exit
  %lpad.loopexit.split-lp14 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterEECsoTR8nlGN3X_18ty_python_semantic.exit unwind label %bb.e

_RNvXNtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB4_3VecRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterEINtB2_10SpecExtendBQ_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filter6FilterINtNtB27_3map3MapINtNtB27_4skip4SkipINtNtB27_5chain5ChainIB3x_INtNtNtB2b_5slice4iter4IterNtBT_20ParameterWithDefaultEB3W_EB3W_EENCNvMs0_NtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder8functionNtB5a_20TypeInferenceBuilder35validate_unpacked_typed_dict_kwargss_0ENCB52_s0_0EE11spec_extendB5g_.exit: ; preds = %.noexc8, %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  br label %bb.d

bb.e:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #32
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterEECsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  resume { ptr, i32 } %lpad.loopexit.split-lp14
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB4_3VecRNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9ParameterEINtB2_18SpecFromIterNestedB10_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10take_while9TakeWhileINtNtNtB2K_5slice4iter4IterB11_ENCNvMs7_B13_NtB13_10Parameters10positional0EE9from_iterB17_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24397)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i8, ptr %i.c, align 8, !range !22, !alias.scope !24397, !noundef !14
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %1, align 8, !alias.scope !24398, !nonnull !14, !noundef !14 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !24398, !nonnull !14, !noundef !14 ; 3 uses
  %i.i = icmp eq ptr %i.f, %i.h
  br i1 %i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 72 ; 2 uses
  %i.k = load i64, ptr %i.f, align 8, !range !56, !noalias !24397, !noundef !14
  %switch.i.i = icmp samesign ult i64 %i.k, 2
  br i1 %switch.i.i, label %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10take_whileINtB5_9TakeWhileINtNtNtBb_5slice4iter4IterNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9ParameterENCNvMs7_B1C_NtB1C_10Parameters10positional0ENtNtNtB9_6traits8iterator8Iterator4nextB1G_.exit, label %bb.e

_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10take_whileINtB5_9TakeWhileINtNtNtBb_5slice4iter4IterNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9ParameterENCNvMs7_B1C_NtB1C_10Parameters10positional0ENtNtNtB9_6traits8iterator8Iterator4nextB1G_.exit: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 4, i1 noundef zeroext false, i64 noundef 8, i64 noundef 8)
  %i.l = load i64, ptr %i.a, align 8, !range !28, !noundef !14
  %i.m = trunc nuw i64 %i.l to i1
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.o = load i64, ptr %i.n, align 8, !range !60, !noundef !14 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.m, label %bb.d, label %.lr.ph.i.i, !prof !16

bb.d:                                             ; preds = %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10take_whileINtB5_9TakeWhileINtNtNtBb_5slice4iter4IterNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9ParameterENCNvMs7_B1C_NtB1C_10Parameters10positional0ENtNtNtB9_6traits8iterator8Iterator4nextB1G_.exit
  %i.q = load i64, ptr %i.p, align 8
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.o, i64 %i.q) #31
  unreachable

.lr.ph.i.i:                                       ; preds = %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10take_whileINtB5_9TakeWhileINtNtNtBb_5slice4iter4IterNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9ParameterENCNvMs7_B1C_NtB1C_10Parameters10positional0ENtNtNtB9_6traits8iterator8Iterator4nextB1G_.exit
  %i.r = load ptr, ptr %i.p, align 8, !nonnull !14, !noundef !14 ; 2 uses
  %i.s = icmp ugt i64 %i.o, 3
  tail call void @llvm.assume(i1 %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr %i.f, ptr %i.r, align 8
  store i64 %i.o, ptr %i.b, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.r, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8
  %i.t = icmp eq ptr %i.j, %i.h
  br i1 %i.t, label %_RNvXNtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB4_3VecRNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9ParameterEINtB2_10SpecExtendBQ_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10take_while9TakeWhileINtNtNtB2r_5slice4iter4IterBR_ENCNvMs7_BT_NtBT_10Parameters10positional0EE11spec_extendBX_.exit, label %.lr.ph10.i.i

.lr.ph10.i.i:                                     ; preds = %.lr.ph.i.i, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecRNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9ParameterE7reserveBK_.exit.i.i
  %i.u = phi i64 [ %i.ad, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecRNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9ParameterE7reserveBK_.exit.i.i ], [ 1, %.lr.ph.i.i ] ; 5 uses
  %i.v = phi ptr [ %i.w, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecRNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9ParameterE7reserveBK_.exit.i.i ], [ %i.j, %.lr.ph.i.i ] ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 72 ; 2 uses
  %i.x = load i64, ptr %i.v, align 8, !range !56, !noalias !24399, !noundef !14
  %switch.i.i.i.i = icmp samesign ult i64 %i.x, 2
  br i1 %switch.i.i.i.i, label %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10take_whileINtB5_9TakeWhileINtNtNtBb_5slice4iter4IterNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9ParameterENCNvMs7_B1C_NtB1C_10Parameters10positional0ENtNtNtB9_6traits8iterator8Iterator4nextB1G_.exit.i.i, label %_RNvXNtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB4_3VecRNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9ParameterEINtB2_10SpecExtendBQ_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10take_while9TakeWhileINtNtNtB2r_5slice4iter4IterBR_ENCNvMs7_BT_NtBT_10Parameters10positional0EE11spec_extendBX_.exit

_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10take_whileINtB5_9TakeWhileINtNtNtBb_5slice4iter4IterNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9ParameterENCNvMs7_B1C_NtB1C_10Parameters10positional0ENtNtNtB9_6traits8iterator8Iterator4nextB1G_.exit.i.i: ; preds = %.lr.ph10.i.i
  %i.y = icmp samesign ult i64 %i.u, 1152921504606846976
  call void @llvm.assume(i1 %i.y)
  %i.z = load i64, ptr %i.b, align 8, !range !24, !alias.scope !24400, !noundef !14
  %i.aa = icmp eq i64 %i.u, %i.z
  br i1 %i.aa, label %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10take_whileINtB5_9TakeWhileINtNtNtBb_5slice4iter4IterNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9ParameterENCNvMs7_B1C_NtB1C_10Parameters10positional0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1G_.exit.i.i, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecRNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9ParameterE7reserveBK_.exit.i.i

_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10take_whileINtB5_9TakeWhileINtNtNtBb_5slice4iter4IterNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9ParameterENCNvMs7_B1C_NtB1C_10Parameters10positional0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1G_.exit.i.i: ; preds = %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10take_whileINtB5_9TakeWhileINtNtNtBb_5slice4iter4IterNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9ParameterENCNvMs7_B1C_NtB1C_10Parameters10positional0ENtNtNtB9_6traits8iterator8Iterator4nextB1G_.exit.i.i
  invoke void @_RINvNvMs2_NtCscdodAO9FK5_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.u, i64 noundef range(i64 1, 0) 1, i64 noundef 8, i64 noundef 8)
          to label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecRNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9ParameterE7reserveBK_.exit.i.i unwind label %bb.g

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecRNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9ParameterE7reserveBK_.exit.i.i: ; preds = %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10take_whileINtB5_9TakeWhileINtNtNtBb_5slice4iter4IterNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9ParameterENCNvMs7_B1C_NtB1C_10Parameters10positional0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1G_.exit.i.i, %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10take_whileINtB5_9TakeWhileINtNtNtBb_5slice4iter4IterNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9ParameterENCNvMs7_B1C_NtB1C_10Parameters10positional0ENtNtNtB9_6traits8iterator8Iterator4nextB1G_.exit.i.i
  %i.ab = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !24400, !nonnull !14, !noundef !14
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.u
  store ptr %i.v, ptr %i.ac, align 8, !noalias !24401
  %i.ad = add nuw nsw i64 %i.u, 1                 ; 2 uses
  store i64 %i.ad, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !24400
  %i.ae = icmp eq ptr %i.w, %i.h
  br i1 %i.ae, label %_RNvXNtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB4_3VecRNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9ParameterEINtB2_10SpecExtendBQ_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10take_while9TakeWhileINtNtNtB2r_5slice4iter4IterBR_ENCNvMs7_BT_NtBT_10Parameters10positional0EE11spec_extendBX_.exit, label %.lr.ph10.i.i

bb.e:                                             ; preds = %bb.c, %bb.a, %bb.b
  store i64 0, ptr %0, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.ag, align 8
  br label %bb.f

bb.f:                                             ; preds = %_RNvXNtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB4_3VecRNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9ParameterEINtB2_10SpecExtendBQ_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10take_while9TakeWhileINtNtNtB2r_5slice4iter4IterBR_ENCNvMs7_BT_NtBT_10Parameters10positional0EE11spec_extendBX_.exit, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.g:                                             ; preds = %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10take_whileINtB5_9TakeWhileINtNtNtBb_5slice4iter4IterNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9ParameterENCNvMs7_B1C_NtB1C_10Parameters10positional0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1G_.exit.i.i
  %i.ah = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecRNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9ParameterENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBS_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecRNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9ParameterEEB1e_.exit unwind label %bb.h

_RNvXNtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB4_3VecRNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9ParameterEINtB2_10SpecExtendBQ_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10take_while9TakeWhileINtNtNtB2r_5slice4iter4IterBR_ENCNvMs7_BT_NtBT_10Parameters10positional0EE11spec_extendBX_.exit: ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecRNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9ParameterE7reserveBK_.exit.i.i, %.lr.ph10.i.i, %.lr.ph.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  br label %bb.f

bb.h:                                             ; preds = %bb.g
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #32
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecRNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9ParameterEEB1e_.exit: ; preds = %bb.g
  resume { ptr, i32 } %i.ah
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB4_3VecReEINtB2_18SpecFromIterNestedB10_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB1C_6filter6FilterINtNtNtB1G_5slice4iter4IterNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticENCNvNtCsoTR8nlGN3X_18ty_python_semantic5fixes38create_too_many_iterations_diagnostics0ENCB40_s_0EE9from_iterB44_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 8 uses
  %i.g = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24434)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24435)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24436)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !24437
  store ptr %i.h, ptr %i.e, align 8, !noalias !24438
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !24439, !nonnull !14, !noundef !14 ; 2 uses
  %.promoted.i.i.i = load ptr, ptr %1, align 8, !alias.scope !24439 ; 2 uses
  %i.k = icmp eq ptr %.promoted.i.i.i, %i.j
  br i1 %i.k, label %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticENCNvNtCsoTR8nlGN3X_18ty_python_semantic5fixes38create_too_many_iterations_diagnostics0ENtNtNtB9_6traits8iterator8Iterator4nextB2n_.exit.thread.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %bb.b
  %i.l = phi ptr [ %i.m, %bb.b ], [ %.promoted.i.i.i, %bb.a ] ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 3 uses
  store ptr %i.m, ptr %1, align 8, !alias.scope !24439
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !24438
  store ptr %i.l, ptr %i.d, align 8, !noalias !24438
  %i.n = call noundef zeroext i1 @_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNvNtCsoTR8nlGN3X_18ty_python_semantic5fixes38create_too_many_iterations_diagnostics0INtB7_5FnMutTRRNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticEE8call_mutBU_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.d), !noalias !24436
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !24438
  br i1 %i.n, label %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticENCNvNtCsoTR8nlGN3X_18ty_python_semantic5fixes38create_too_many_iterations_diagnostics0ENtNtNtB9_6traits8iterator8Iterator4nextB2n_.exit.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.o = icmp eq ptr %i.m, %i.j
  br i1 %i.o, label %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticENCNvNtCsoTR8nlGN3X_18ty_python_semantic5fixes38create_too_many_iterations_diagnostics0ENtNtNtB9_6traits8iterator8Iterator4nextB2n_.exit.thread.i, label %.lr.ph.i.i.i

_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticENCNvNtCsoTR8nlGN3X_18ty_python_semantic5fixes38create_too_many_iterations_diagnostics0ENtNtNtB9_6traits8iterator8Iterator4nextB2n_.exit.thread.i: ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !24437
  br label %bb.ao

_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticENCNvNtCsoTR8nlGN3X_18ty_python_semantic5fixes38create_too_many_iterations_diagnostics0ENtNtNtB9_6traits8iterator8Iterator4nextB2n_.exit.i: ; preds = %.lr.ph.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !24437
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %bb.ao, label %bb.c

bb.c:                                             ; preds = %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticENCNvNtCsoTR8nlGN3X_18ty_python_semantic5fixes38create_too_many_iterations_diagnostics0ENtNtNtB9_6traits8iterator8Iterator4nextB2n_.exit.i
  %.val.i = load ptr, ptr %i.l, align 8, !nonnull !14, !noundef !14 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.val.i, i64 16
  %.sroa.01.0.copyload.i.i = load i64, ptr %i.p, align 8
  switch i64 %.sroa.01.0.copyload.i.i, label %bb.d [
    i64 0, label %bb.t
    i64 1, label %bb.e
    i64 2, label %bb.f
    i64 3, label %bb.g
    i64 4, label %bb.h
    i64 5, label %bb.i
    i64 6, label %bb.j
    i64 7, label %bb.k
    i64 8, label %bb.l
    i64 9, label %bb.m
    i64 10, label %bb.n
    i64 11, label %bb.o
    i64 12, label %bb.p
    i64 13, label %bb.q
    i64 14, label %bb.r
    i64 15, label %bb.s
  ]

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  br label %bb.t

bb.f:                                             ; preds = %bb.c
  br label %bb.t

bb.g:                                             ; preds = %bb.c
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.val.i, i64 32
  %.sroa.5.0.copyload.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.val.i, i64 24
  %.sroa.4.0.copyload.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !nonnull !14, !noundef !14
  br label %bb.t

bb.h:                                             ; preds = %bb.c
  br label %bb.t

bb.i:                                             ; preds = %bb.c
  br label %bb.t

bb.j:                                             ; preds = %bb.c
  br label %bb.t

bb.k:                                             ; preds = %bb.c
  br label %bb.t

bb.l:                                             ; preds = %bb.c
  br label %bb.t

bb.m:                                             ; preds = %bb.c
  br label %bb.t

bb.n:                                             ; preds = %bb.c
  br label %bb.t

bb.o:                                             ; preds = %bb.c
  br label %bb.t

bb.p:                                             ; preds = %bb.c
  br label %bb.t

bb.q:                                             ; preds = %bb.c
  br label %bb.t

bb.r:                                             ; preds = %bb.c
  br label %bb.t

bb.s:                                             ; preds = %bb.c
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.c
  %.sroa.3.0.i.ph = phi i64 [ 5, %bb.c ], [ 15, %bb.r ], [ 18, %bb.q ], [ 11, %bb.p ], [ 26, %bb.o ], [ 18, %bb.n ], [ 25, %bb.m ], [ 29, %bb.l ], [ 13, %bb.k ], [ 12, %bb.j ], [ 12, %bb.i ], [ 13, %bb.h ], [ %.sroa.5.0.copyload.i.i, %bb.g ], [ 14, %bb.f ], [ 2, %bb.e ], [ 14, %bb.s ]
  %.sroa.0.0.i.ph = phi ptr [ @18, %bb.c ], [ @31, %bb.r ], [ @30, %bb.q ], [ @29, %bb.p ], [ @28, %bb.o ], [ @27, %bb.n ], [ @26, %bb.m ], [ @25, %bb.l ], [ @24, %bb.k ], [ @23, %bb.j ], [ @22, %bb.i ], [ @21, %bb.h ], [ %.sroa.4.0.copyload.i.i, %bb.g ], [ @20, %bb.f ], [ @19, %bb.e ], [ @32, %bb.s ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef 4, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16)
  %i.q = load i64, ptr %i.c, align 8, !range !28, !noundef !14
  %i.r = trunc nuw i64 %i.q to i1
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.t = load i64, ptr %i.s, align 8, !range !60, !noundef !14 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.r, label %bb.u, label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsoTR8nlGN3X_18ty_python_semantic.exit, !prof !16

bb.u:                                             ; preds = %bb.t
  %i.v = load i64, ptr %i.u, align 8
  call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.t, i64 %i.v) #31
  unreachable

_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %bb.t
  %i.w = load ptr, ptr %i.u, align 8, !nonnull !14, !noundef !14 ; 3 uses
  %i.x = icmp ugt i64 %i.t, 3
  call void @llvm.assume(i1 %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store ptr %.sroa.0.0.i.ph, ptr %i.w, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store i64 %.sroa.3.0.i.ph, ptr %i.y, align 8
  store i64 %i.t, ptr %i.g, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  store ptr %i.w, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.64.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  store i64 1, ptr %.sroa.64.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !24440)
  call void @llvm.experimental.noalias.scope.decl(metadata !24441)
  call void @llvm.experimental.noalias.scope.decl(metadata !24442)
  call void @llvm.experimental.noalias.scope.decl(metadata !24443)
  %i.z = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !24444)
  call void @llvm.experimental.noalias.scope.decl(metadata !24445)
  call void @llvm.experimental.noalias.scope.decl(metadata !24446)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !24447
  store ptr %i.z, ptr %i.b, align 8, !noalias !24448
  %i.ab = load ptr, ptr %i.aa, align 8, !alias.scope !24449, !nonnull !14, !noundef !14 ; 2 uses
  %.promoted.i.i.i16.i.i = load ptr, ptr %i.f, align 8, !alias.scope !24449 ; 2 uses
  %i.ac = icmp eq ptr %.promoted.i.i.i16.i.i, %i.ab
  br i1 %i.ac, label %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticENCNvNtCsoTR8nlGN3X_18ty_python_semantic5fixes38create_too_many_iterations_diagnostics0ENtNtNtB9_6traits8iterator8Iterator4nextB2n_.exit.thread.i.i.i, label %.lr.ph.i.i.i.preheader.i.i

.lr.ph.i.i.i.preheader.i.i:                       ; preds = %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsoTR8nlGN3X_18ty_python_semantic.exit, %.noexc11
  %.promoted.i.i.i17.i.i = phi ptr [ %.promoted.i.i.i.i.i, %.noexc11 ], [ %.promoted.i.i.i16.i.i, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsoTR8nlGN3X_18ty_python_semantic.exit ]
  %i.ad = phi ptr [ %i.ar, %.noexc11 ], [ %i.ab, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsoTR8nlGN3X_18ty_python_semantic.exit ]
  call void @llvm.experimental.noalias.scope.decl(metadata !24450)
  call void @llvm.experimental.noalias.scope.decl(metadata !24451)
  call void @llvm.experimental.noalias.scope.decl(metadata !24452)
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.v, %.lr.ph.i.i.i.preheader.i.i
  %i.ae = phi ptr [ %i.af, %bb.v ], [ %.promoted.i.i.i17.i.i, %.lr.ph.i.i.i.preheader.i.i ] ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 3 uses
  store ptr %i.af, ptr %i.f, align 8, !alias.scope !24453
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !24454
  store ptr %i.ae, ptr %i.a, align 8, !noalias !24454
  %i.ag = invoke noundef zeroext i1 @_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNvNtCsoTR8nlGN3X_18ty_python_semantic5fixes38create_too_many_iterations_diagnostics0INtB7_5FnMutTRRNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticEE8call_mutBU_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %.lr.ph.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !24454
  br i1 %i.ag, label %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticENCNvNtCsoTR8nlGN3X_18ty_python_semantic5fixes38create_too_many_iterations_diagnostics0ENtNtNtB9_6traits8iterator8Iterator4nextB2n_.exit.i.i.i, label %bb.v

bb.v:                                             ; preds = %.noexc
  %i.ah = icmp eq ptr %i.af, %i.ad
  br i1 %i.ah, label %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticENCNvNtCsoTR8nlGN3X_18ty_python_semantic5fixes38create_too_many_iterations_diagnostics0ENtNtNtB9_6traits8iterator8Iterator4nextB2n_.exit.thread.i.i.i, label %.lr.ph.i.i.i.i.i

_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticENCNvNtCsoTR8nlGN3X_18ty_python_semantic5fixes38create_too_many_iterations_diagnostics0ENtNtNtB9_6traits8iterator8Iterator4nextB2n_.exit.thread.i.i.i: ; preds = %.noexc11, %bb.v, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsoTR8nlGN3X_18ty_python_semantic.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !24455
  br label %_RNvXNtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB4_3VecReEINtB2_10SpecExtendBQ_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB1j_6filter6FilterINtNtNtB1n_5slice4iter4IterNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticENCNvNtCsoTR8nlGN3X_18ty_python_semantic5fixes38create_too_many_iterations_diagnostics0ENCB3H_s_0EE11spec_extendB3L_.exit

_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticENCNvNtCsoTR8nlGN3X_18ty_python_semantic5fixes38create_too_many_iterations_diagnostics0ENtNtNtB9_6traits8iterator8Iterator4nextB2n_.exit.i.i.i: ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !24455
  %.not.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i, label %_RNvXNtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB4_3VecReEINtB2_10SpecExtendBQ_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB1j_6filter6FilterINtNtNtB1n_5slice4iter4IterNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticENCNvNtCsoTR8nlGN3X_18ty_python_semantic5fixes38create_too_many_iterations_diagnostics0ENCB3H_s_0EE11spec_extendB3L_.exit, label %bb.w

bb.w:                                             ; preds = %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticENCNvNtCsoTR8nlGN3X_18ty_python_semantic5fixes38create_too_many_iterations_diagnostics0ENtNtNtB9_6traits8iterator8Iterator4nextB2n_.exit.i.i.i
  %.val.i.i.i = load ptr, ptr %i.ae, align 8, !nonnull !14, !noundef !14 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 16
  %.sroa.01.0.copyload.i.i.i.i = load i64, ptr %i.ai, align 8
  switch i64 %.sroa.01.0.copyload.i.i.i.i, label %bb.x [
    i64 0, label %bb.an
    i64 1, label %bb.y
    i64 2, label %bb.z
    i64 3, label %bb.aa
    i64 4, label %bb.ab
    i64 5, label %bb.ac
    i64 6, label %bb.ad
    i64 7, label %bb.ae
    i64 8, label %bb.af
    i64 9, label %bb.ag
    i64 10, label %bb.ah
    i64 11, label %bb.ai
    i64 12, label %bb.aj
    i64 13, label %bb.ak
    i64 14, label %bb.al
    i64 15, label %bb.am
  ]

bb.x:                                             ; preds = %bb.w
  unreachable

bb.y:                                             ; preds = %bb.w
  br label %bb.an

bb.z:                                             ; preds = %bb.w
  br label %bb.an

bb.aa:                                            ; preds = %bb.w
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 32
  %.sroa.5.0.copyload.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 24
  %.sroa.4.0.copyload.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !nonnull !14, !noundef !14
  br label %bb.an

bb.ab:                                            ; preds = %bb.w
  br label %bb.an

bb.ac:                                            ; preds = %bb.w
  br label %bb.an

bb.ad:                                            ; preds = %bb.w
  br label %bb.an

bb.ae:                                            ; preds = %bb.w
  br label %bb.an

bb.af:                                            ; preds = %bb.w
  br label %bb.an

bb.ag:                                            ; preds = %bb.w
  br label %bb.an

bb.ah:                                            ; preds = %bb.w
  br label %bb.an

bb.ai:                                            ; preds = %bb.w
  br label %bb.an

bb.aj:                                            ; preds = %bb.w
  br label %bb.an

bb.ak:                                            ; preds = %bb.w
  br label %bb.an

bb.al:                                            ; preds = %bb.w
  br label %bb.an

bb.am:                                            ; preds = %bb.w
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.w
  %.sroa.3.0.i.ph.i.i = phi i64 [ 5, %bb.w ], [ 15, %bb.al ], [ 18, %bb.ak ], [ 11, %bb.aj ], [ 26, %bb.ai ], [ 18, %bb.ah ], [ 25, %bb.ag ], [ 29, %bb.af ], [ 13, %bb.ae ], [ 12, %bb.ad ], [ 12, %bb.ac ], [ 13, %bb.ab ], [ %.sroa.5.0.copyload.i.i.i.i, %bb.aa ], [ 14, %bb.z ], [ 2, %bb.y ], [ 14, %bb.am ]
  %.sroa.0.0.i.ph.i.i = phi ptr [ @18, %bb.w ], [ @31, %bb.al ], [ @30, %bb.ak ], [ @29, %bb.aj ], [ @28, %bb.ai ], [ @27, %bb.ah ], [ @26, %bb.ag ], [ @25, %bb.af ], [ @24, %bb.ae ], [ @23, %bb.ad ], [ @22, %bb.ac ], [ @21, %bb.ab ], [ %.sroa.4.0.copyload.i.i.i.i, %bb.aa ], [ @20, %bb.z ], [ @19, %bb.y ], [ @32, %bb.am ]
  %i.aj = load i64, ptr %.sroa.64.0..sroa_idx, align 8, !alias.scope !24456, !noundef !14 ; 5 uses
  %i.ak = icmp ult i64 %i.aj, 576460752303423488
  call void @llvm.assume(i1 %i.ak)
  %i.al = load i64, ptr %i.g, align 8, !range !24, !alias.scope !24456, !noundef !14
  %i.am = icmp eq i64 %i.aj, %i.al
  br i1 %i.am, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecReE7reserveCsoTR8nlGN3X_18ty_python_semantic.exit.i.i, label %.noexc11

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecReE7reserveCsoTR8nlGN3X_18ty_python_semantic.exit.i.i: ; preds = %bb.an
  invoke void @_RINvNvMs2_NtCscdodAO9FK5_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef %i.aj, i64 noundef range(i64 1, 0) 1, i64 noundef 8, i64 noundef 16)
          to label %.noexc11 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc11:                                         ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecReE7reserveCsoTR8nlGN3X_18ty_python_semantic.exit.i.i, %bb.an
  %i.an = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !24456, !nonnull !14, !noundef !14
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %i.an, i64 %i.aj ; 2 uses
  store ptr %.sroa.0.0.i.ph.i.i, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store i64 %.sroa.3.0.i.ph.i.i, ptr %i.ap, align 8
  %i.aq = add nuw nsw i64 %i.aj, 1
  store i64 %i.aq, ptr %.sroa.64.0..sroa_idx, align 8, !alias.scope !24456
  call void @llvm.experimental.noalias.scope.decl(metadata !24457)
  call void @llvm.experimental.noalias.scope.decl(metadata !24458)
  call void @llvm.experimental.noalias.scope.decl(metadata !24459)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !24460
  store ptr %i.z, ptr %i.b, align 8, !noalias !24461
  %i.ar = load ptr, ptr %i.aa, align 8, !alias.scope !24462, !nonnull !14, !noundef !14 ; 2 uses
  %.promoted.i.i.i.i.i = load ptr, ptr %i.f, align 8, !alias.scope !24462 ; 2 uses
  %i.as = icmp eq ptr %.promoted.i.i.i.i.i, %i.ar
  br i1 %i.as, label %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticENCNvNtCsoTR8nlGN3X_18ty_python_semantic5fixes38create_too_many_iterations_diagnostics0ENtNtNtB9_6traits8iterator8Iterator4nextB2n_.exit.thread.i.i.i, label %.lr.ph.i.i.i.preheader.i.i

bb.ao:                                            ; preds = %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticENCNvNtCsoTR8nlGN3X_18ty_python_semantic5fixes38create_too_many_iterations_diagnostics0ENtNtNtB9_6traits8iterator8Iterator4nextB2n_.exit.i, %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticENCNvNtCsoTR8nlGN3X_18ty_python_semantic5fixes38create_too_many_iterations_diagnostics0ENtNtNtB9_6traits8iterator8Iterator4nextB2n_.exit.thread.i
  store i64 0, ptr %0, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.at, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.au, align 8
  br label %bb.ap

bb.ap:                                            ; preds = %_RNvXNtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB4_3VecReEINtB2_10SpecExtendBQ_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB1j_6filter6FilterINtNtNtB1n_5slice4iter4IterNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticENCNvNtCsoTR8nlGN3X_18ty_python_semantic5fixes38create_too_many_iterations_diagnostics0ENCB3H_s_0EE11spec_extendB3L_.exit, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret void

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph.i.i.i.i.i, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecReE7reserveCsoTR8nlGN3X_18ty_python_semantic.exit.i.i
  %lpad.loopexit.split-lp42 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecReENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecReEECsoTR8nlGN3X_18ty_python_semantic.exit unwind label %bb.aq

_RNvXNtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB4_3VecReEINtB2_10SpecExtendBQ_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB1j_6filter6FilterINtNtNtB1n_5slice4iter4IterNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticENCNvNtCsoTR8nlGN3X_18ty_python_semantic5fixes38create_too_many_iterations_diagnostics0ENCB3H_s_0EE11spec_extendB3L_.exit: ; preds = %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticENCNvNtCsoTR8nlGN3X_18ty_python_semantic5fixes38create_too_many_iterations_diagnostics0ENtNtNtB9_6traits8iterator8Iterator4nextB2n_.exit.i.i.i, %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticENCNvNtCsoTR8nlGN3X_18ty_python_semantic5fixes38create_too_many_iterations_diagnostics0ENtNtNtB9_6traits8iterator8Iterator4nextB2n_.exit.thread.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  br label %bb.ap

bb.aq:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #32
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecReEECsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  resume { ptr, i32 } %lpad.loopexit.split-lp42
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB4_3VecTNtNtCs2O29vuvTAEJ_14ty_python_core5scope11FileScopeIdRNtB13_5ScopeEEINtB2_18SpecFromIterNestedB10_NtB15_20VisibleAncestorsIterE9from_iterCsoTR8nlGN3X_18ty_python_semantic(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(40) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [40 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = tail call { i32, ptr } @_RNvXs5_Cs2O29vuvTAEJ_14ty_python_coreNtB5_20VisibleAncestorsIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef nonnull align 8 dereferenceable(40) %1) ; 2 uses
  %i.e = extractvalue { i32, ptr } %i.d, 0        ; 2 uses
  %i.f = extractvalue { i32, ptr } %i.d, 1        ; 2 uses
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.f) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 4, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16)
  %i.g = load i64, ptr %i.a, align 8, !range !28, !noundef !14
  %i.h = trunc nuw i64 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !60, !noundef !14 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.h, label %bb.c, label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsoTR8nlGN3X_18ty_python_semantic.exit, !prof !16

bb.c:                                             ; preds = %bb.b
  %i.l = load i64, ptr %i.k, align 8
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.j, i64 %i.l) #31
  unreachable

_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %bb.b
  %i.m = load ptr, ptr %i.k, align 8, !nonnull !14, !noundef !14 ; 3 uses
  %i.n = icmp ugt i64 %i.j, 3
  tail call void @llvm.assume(i1 %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i32 %i.e, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.f, ptr %i.o, align 8
  store i64 %i.j, ptr %i.c, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %i.m, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.65.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  store i64 1, ptr %.sroa.65.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false)
  %i.p = invoke { i32, ptr } @_RNvXs5_Cs2O29vuvTAEJ_14ty_python_coreNtB5_20VisibleAncestorsIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.b)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc:                                           ; preds = %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsoTR8nlGN3X_18ty_python_semantic.exit
  %i.q = extractvalue { i32, ptr } %i.p, 0        ; 2 uses
  %.not9.i.i = icmp eq i32 %i.q, 0
  br i1 %.not9.i.i, label %_RNvXNtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB4_3VecTNtNtCs2O29vuvTAEJ_14ty_python_core5scope11FileScopeIdRNtBT_5ScopeEEINtB2_10SpecExtendBQ_NtBV_20VisibleAncestorsIterE11spec_extendCsoTR8nlGN3X_18ty_python_semantic.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.noexc, %.noexc11
  %.pn.i.i = phi { i32, ptr } [ %i.ab, %.noexc11 ], [ %i.p, %.noexc ]
  %i.r = phi i32 [ %i.ac, %.noexc11 ], [ %i.q, %.noexc ]
  %i.s = extractvalue { i32, ptr } %.pn.i.i, 1    ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.s) ]
  %i.t = load i64, ptr %.sroa.65.0..sroa_idx, align 8, !alias.scope !24467, !noundef !14 ; 5 uses
  %i.u = icmp ult i64 %i.t, 576460752303423488
  call void @llvm.assume(i1 %i.u)
  %i.v = load i64, ptr %i.c, align 8, !range !24, !alias.scope !24467, !noundef !14
  %i.w = icmp eq i64 %i.t, %i.v
  br i1 %i.w, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecTNtNtCs2O29vuvTAEJ_14ty_python_core5scope11FileScopeIdRNtBG_5ScopeEE7reserveCsoTR8nlGN3X_18ty_python_semantic.exit.i.i, label %.noexc10

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecTNtNtCs2O29vuvTAEJ_14ty_python_core5scope11FileScopeIdRNtBG_5ScopeEE7reserveCsoTR8nlGN3X_18ty_python_semantic.exit.i.i: ; preds = %.lr.ph.i.i
  invoke void @_RINvNvMs2_NtCscdodAO9FK5_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.t, i64 noundef range(i64 1, 0) 1, i64 noundef 8, i64 noundef 16)
          to label %.noexc10 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc10:                                         ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecTNtNtCs2O29vuvTAEJ_14ty_python_core5scope11FileScopeIdRNtBG_5ScopeEE7reserveCsoTR8nlGN3X_18ty_python_semantic.exit.i.i, %.lr.ph.i.i
  %i.x = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !24467, !nonnull !14, !noundef !14
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.x, i64 %i.t ; 2 uses
  store i32 %i.r, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr %i.s, ptr %i.z, align 8
  %i.aa = add nuw nsw i64 %i.t, 1
  store i64 %i.aa, ptr %.sroa.65.0..sroa_idx, align 8, !alias.scope !24467
  %i.ab = invoke { i32, ptr } @_RNvXs5_Cs2O29vuvTAEJ_14ty_python_coreNtB5_20VisibleAncestorsIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.b)
          to label %.noexc11 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc11:                                         ; preds = %.noexc10
  %i.ac = extractvalue { i32, ptr } %i.ab, 0      ; 2 uses
  %.not.i.i = icmp eq i32 %i.ac, 0
  br i1 %.not.i.i, label %_RNvXNtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB4_3VecTNtNtCs2O29vuvTAEJ_14ty_python_core5scope11FileScopeIdRNtBT_5ScopeEEINtB2_10SpecExtendBQ_NtBV_20VisibleAncestorsIterE11spec_extendCsoTR8nlGN3X_18ty_python_semantic.exit, label %.lr.ph.i.i

bb.d:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.ae, align 8
  br label %bb.e

bb.e:                                             ; preds = %_RNvXNtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB4_3VecTNtNtCs2O29vuvTAEJ_14ty_python_core5scope11FileScopeIdRNtBT_5ScopeEEINtB2_10SpecExtendBQ_NtBV_20VisibleAncestorsIterE11spec_extendCsoTR8nlGN3X_18ty_python_semantic.exit, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc10, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecTNtNtCs2O29vuvTAEJ_14ty_python_core5scope11FileScopeIdRNtBG_5ScopeEE7reserveCsoTR8nlGN3X_18ty_python_semantic.exit.i.i, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsoTR8nlGN3X_18ty_python_semantic.exit
  %lpad.loopexit.split-lp17 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTNtNtCs2O29vuvTAEJ_14ty_python_core5scope11FileScopeIdRNtBO_5ScopeEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtCs2O29vuvTAEJ_14ty_python_core5scope11FileScopeIdRNtB1a_5ScopeEEECsoTR8nlGN3X_18ty_python_semantic.exit unwind label %bb.f

_RNvXNtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB4_3VecTNtNtCs2O29vuvTAEJ_14ty_python_core5scope11FileScopeIdRNtBT_5ScopeEEINtB2_10SpecExtendBQ_NtBV_20VisibleAncestorsIterE11spec_extendCsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %.noexc11, %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  br label %bb.e

bb.f:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #32
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtCs2O29vuvTAEJ_14ty_python_core5scope11FileScopeIdRNtB1a_5ScopeEEECsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  resume { ptr, i32 } %lpad.loopexit.split-lp17
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB4_3VecTNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic8LintNameNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeEEINtB2_18SpecFromIterNestedB10_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map9FilterMapINtNtNtB3f_5slice4iter4IterNtB13_10DiagnosticENCNvMNtCsoTR8nlGN3X_18ty_python_semantic5fixesNtB4X_7FixMode5fixes0EE9from_iterB4Z_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [8 x i8], align 8                 ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 3 uses
  %i.g = alloca [24 x i8], align 8                ; 9 uses
  %i.h = alloca [16 x i8], align 8                ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store ptr %2, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24486)
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24487)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !24488
  store ptr %i.j, ptr %i.e, align 8, !noalias !24489
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.k = phi ptr [ %i.m, %bb.c ], [ %1, %bb.a ]   ; 3 uses
  %i.l = icmp eq ptr %i.k, %2
  br i1 %i.l, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  store ptr %i.m, ptr %i.h, align 8, !alias.scope !24490
  call void @_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNvMNtCsoTR8nlGN3X_18ty_python_semantic5fixesNtBT_7FixMode5fixes0INtB7_5FnMutTRNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticEE8call_mutBV_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.k)
  %i.n = load ptr, ptr %i.f, align 8, !noundef !14
  %.not.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i, label %bb.b, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !24488
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef 4, i1 noundef zeroext false, i64 noundef 8, i64 noundef 24)
  %i.o = load i64, ptr %i.d, align 8, !range !28, !noundef !14
  %i.p = trunc nuw i64 %i.o to i1
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.r = load i64, ptr %i.q, align 8, !range !60, !noundef !14 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  br i1 %i.p, label %bb.e, label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsoTR8nlGN3X_18ty_python_semantic.exit, !prof !16

bb.e:                                             ; preds = %bb.d
  %i.t = load i64, ptr %i.s, align 8
  call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.r, i64 %i.t) #31
  unreachable

_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %bb.d
  %i.u = load ptr, ptr %i.s, align 8, !nonnull !14, !noundef !14 ; 2 uses
  %i.v = icmp ugt i64 %i.r, 3
  call void @llvm.assume(i1 %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  store i64 %i.r, ptr %i.g, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  store ptr %i.u, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8
  %i.w = load ptr, ptr %i.h, align 8, !nonnull !14, !noundef !14
  %i.x = load ptr, ptr %i.i, align 8, !noundef !14 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !24491)
  call void @llvm.experimental.noalias.scope.decl(metadata !24492)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !24491
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !24491
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %i.x, ptr %i.y, align 8, !noalias !24493
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  br label %bb.f

bb.f:                                             ; preds = %bb.j, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsoTR8nlGN3X_18ty_python_semantic.exit
  %.pre9.i.i = phi ptr [ %.pre.i.i, %bb.j ], [ %i.x, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsoTR8nlGN3X_18ty_python_semantic.exit ] ; 2 uses
  %.promoted.i.i.i.i = phi ptr [ %.promoted.i.i8.i.i, %bb.j ], [ %i.w, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsoTR8nlGN3X_18ty_python_semantic.exit ]
  call void @llvm.experimental.noalias.scope.decl(metadata !24494)
  call void @llvm.experimental.noalias.scope.decl(metadata !24495)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !24496
  store ptr %i.z, ptr %i.a, align 8, !noalias !24497
  br label %bb.g

bb.g:                                             ; preds = %.noexc, %bb.f
  %i.aa = phi ptr [ %i.ac, %.noexc ], [ %.promoted.i.i.i.i, %bb.f ] ; 3 uses
  %i.ab = icmp eq ptr %i.aa, %.pre9.i.i
  br i1 %i.ab, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 3 uses
  store ptr %i.ac, ptr %i.c, align 8, !alias.scope !24498, !noalias !24493
  invoke void @_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNvMNtCsoTR8nlGN3X_18ty_python_semantic5fixesNtBT_7FixMode5fixes0INtB7_5FnMutTRNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticEE8call_mutBV_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.aa)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.h
  %i.ad = load ptr, ptr %i.b, align 8, !noalias !24493, !noundef !14
  %.not.i.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.i

bb.i:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !24496
  %i.ae = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !24493, !noundef !14 ; 5 uses
  %i.af = icmp ult i64 %i.ae, 384307168202282326
  call void @llvm.assume(i1 %i.af)
  %i.ag = load i64, ptr %i.g, align 8, !range !24, !alias.scope !24493, !noundef !14
  %i.ah = icmp eq i64 %i.ae, %i.ag
  br i1 %i.ah, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecTNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic8LintNameNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeEE7reserveCsoTR8nlGN3X_18ty_python_semantic.exit.i.i, label %bb.j

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecTNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic8LintNameNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeEE7reserveCsoTR8nlGN3X_18ty_python_semantic.exit.i.i: ; preds = %bb.i
  invoke void @_RINvNvMs2_NtCscdodAO9FK5_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef %i.ae, i64 noundef range(i64 1, 0) 1, i64 noundef 8, i64 noundef 24)
          to label %.noexc6 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc6:                                          ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecTNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic8LintNameNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeEE7reserveCsoTR8nlGN3X_18ty_python_semantic.exit.i.i
  %.promoted.i.i.pre.i.i = load ptr, ptr %i.c, align 8, !alias.scope !24498, !noalias !24493
  %.pre.pre.i.i = load ptr, ptr %i.y, align 8, !alias.scope !24498, !noalias !24493
  br label %bb.j

bb.j:                                             ; preds = %.noexc6, %bb.i
  %.pre.i.i = phi ptr [ %.pre9.i.i, %bb.i ], [ %.pre.pre.i.i, %.noexc6 ]
  %.promoted.i.i8.i.i = phi ptr [ %i.ac, %bb.i ], [ %.promoted.i.i.pre.i.i, %.noexc6 ]
  %i.ai = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !24493, !nonnull !14, !noundef !14
  %i.aj = getelementptr inbounds nuw [24 x i8], ptr %i.ai, i64 %i.ae
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aj, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  %i.ak = add nuw nsw i64 %i.ae, 1
  store i64 %i.ak, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !24493
  br label %bb.f

bb.k:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !24488
  store i64 0, ptr %0, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.am, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.m, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret void

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.h, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecTNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic8LintNameNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeEE7reserveCsoTR8nlGN3X_18ty_python_semantic.exit.i.i
  %lpad.loopexit.split-lp16 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic8LintNameNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic8LintNameNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeEEECsoTR8nlGN3X_18ty_python_semantic.exit unwind label %bb.n

bb.m:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !24496
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !24491
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !24491
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  br label %bb.l

bb.n:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #32
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic8LintNameNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeEEECsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  resume { ptr, i32 } %lpad.loopexit.split-lp16
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB4_3VecTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameB11_EEINtB2_18SpecFromIterNestedB10_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map4IterB11_B11_ENCNvNvXs0_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types5enumss3_1__NtB4j_33enum_class_literal_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute6inner_s_0EE9from_iterB4p_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(40) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [16 x i8], align 8                ; 6 uses
  %i.e = alloca [40 x i8], align 8                ; 6 uses
  %i.f = alloca [32 x i8], align 8                ; 7 uses
  %i.g = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.h = tail call { ptr, ptr } @_RNvXsG_NtCsgQfI1edjipl_9hashbrown3mapINtB5_4IterNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameBK_ENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(40) %1), !noalias !24551 ; 2 uses
  %i.i = extractvalue { ptr, ptr } %i.h, 0        ; 6 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map4IterNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameB1O_ENCNvNvXs0_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types5enumss3_1__NtB2M_33enum_class_literal_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute6inner_s_0ENtNtNtB9_6traits8iterator8Iterator4nextB2S_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = extractvalue { ptr, ptr } %i.h, 1        ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.j) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24552)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24553)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24554)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !24555
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24556)
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 15 ; 2 uses
  %i.l = load i8, ptr %i.k, align 1, !range !13, !alias.scope !24557, !noalias !24551, !noundef !14
  %i.m = and i8 %i.l, -2
  %switch.i.i.i = icmp eq i8 %i.m, -48
  br i1 %switch.i.i.i, label %bb.c, label %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr18make_shallow_clone.exit.i.i

bb.c:                                             ; preds = %bb.b
  %.pn.i.i.i = load ptr, ptr %i.i, align 8, !alias.scope !24557, !noalias !24551, !nonnull !14, !noundef !14
  %.sroa.0.0.i.i.i = getelementptr inbounds i8, ptr %.pn.i.i.i, i64 -8
  %i.n = atomicrmw add ptr %.sroa.0.0.i.i.i, i64 1 monotonic, align 8, !noalias !24558
  %i.o = icmp slt i64 %i.n, 0
  br i1 %i.o, label %bb.d, label %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr18make_shallow_clone.exit.i.i, !prof !16

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNvMNtCsj8vhLppEnlJ_8char_str4reprNtB4_4Repr18make_shallow_clone18ref_count_overflow(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.i) #31, !noalias !24559
  unreachable

_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr18make_shallow_clone.exit.i.i: ; preds = %bb.c, %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.i, i64 16, i1 false), !noalias !24560
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24561)
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 15
  %i.q = load i8, ptr %i.p, align 1, !range !13, !alias.scope !24562, !noalias !24551, !noundef !14
  %i.r = and i8 %i.q, -2
  %switch.i1.i.i = icmp eq i8 %i.r, -48
  br i1 %switch.i1.i.i, label %bb.e, label %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map4IterNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameB1O_ENCNvNvXs0_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types5enumss3_1__NtB2M_33enum_class_literal_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute6inner_s_0ENtNtNtB9_6traits8iterator8Iterator4nextB2S_.exit

bb.e:                                             ; preds = %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr18make_shallow_clone.exit.i.i
  %.pn.i2.i.i = load ptr, ptr %i.j, align 8, !alias.scope !24562, !noalias !24551, !nonnull !14, !noundef !14
  %.sroa.0.0.i3.i.i = getelementptr inbounds i8, ptr %.pn.i2.i.i, i64 -8
  %i.s = atomicrmw add ptr %.sroa.0.0.i3.i.i, i64 1 monotonic, align 8, !noalias !24563
  %i.t = icmp slt i64 %i.s, 0
  br i1 %i.t, label %bb.f, label %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map4IterNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameB1O_ENCNvNvXs0_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types5enumss3_1__NtB2M_33enum_class_literal_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute6inner_s_0ENtNtNtB9_6traits8iterator8Iterator4nextB2S_.exit, !prof !16

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNvMNtCsj8vhLppEnlJ_8char_str4reprNtB4_4Repr18make_shallow_clone18ref_count_overflow(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.j) #31
          to label %.noexc.i.i unwind label %bb.g, !noalias !24564

.noexc.i.i:                                       ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.u = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24565)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24566)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24567)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24568)
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 15
  %i.w = load i8, ptr %i.v, align 1, !range !13, !alias.scope !24569, !noalias !24555, !noundef !14
  %i.x = and i8 %i.w, -2
  %switch.i.i.i.i.i.i = icmp eq i8 %i.x, -48
  br i1 %switch.i.i.i.i.i.i, label %bb.h, label %common.resume

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24570)
  %.pn.i.i.i.i.i.i.i = load ptr, ptr %i.d, align 8, !alias.scope !24571, !noalias !24555, !nonnull !14, !noundef !14
  %.sroa.0.0.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.pn.i.i.i.i.i.i.i, i64 -8
  %i.y = atomicrmw add ptr %.sroa.0.0.i.i.i.i.i.i.i, i64 -1 release, align 8, !noalias !24572
  %i.z = icmp eq i64 %i.y, 1
  br i1 %i.z, label %bb.i, label %common.resume, !prof !16

bb.i:                                             ; preds = %bb.h
  invoke void @_RNvMNtNtCsj8vhLppEnlJ_8char_str4repr11heap_bufferNtB2_10HeapBuffer22dealloc_last_reference(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.d)
          to label %common.resume unwind label %bb.j, !noalias !24564

bb.j:                                             ; preds = %bb.i
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #32, !noalias !24564
  unreachable

common.resume:                                    ; preds = %.body, %bb.l, %bb.g, %bb.h, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.u, %bb.g ], [ %i.u, %bb.i ], [ %i.u, %bb.h ], [ %eh.lpad-body, %.body ], [ %i.ad, %bb.l ]
  resume { ptr, i32 } %common.resume.op

_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map4IterNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameB1O_ENCNvNvXs0_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types5enumss3_1__NtB2M_33enum_class_literal_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute6inner_s_0ENtNtNtB9_6traits8iterator8Iterator4nextB2S_.exit: ; preds = %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr18make_shallow_clone.exit.i.i, %bb.e
  %.sroa.415.0.copyload = load i8, ptr %i.k, align 1, !alias.scope !24573, !noalias !24551 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !24555
  %.not = icmp eq i8 %.sroa.415.0.copyload, -1
  br i1 %.not, label %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map4IterNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameB1O_ENCNvNvXs0_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types5enumss3_1__NtB2M_33enum_class_literal_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute6inner_s_0ENtNtNtB9_6traits8iterator8Iterator4nextB2S_.exit.thread, label %bb.m

_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map4IterNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameB1O_ENCNvNvXs0_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types5enumss3_1__NtB2M_33enum_class_literal_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute6inner_s_0ENtNtNtB9_6traits8iterator8Iterator4nextB2S_.exit.thread: ; preds = %bb.a, %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map4IterNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameB1O_ENCNvNvXs0_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types5enumss3_1__NtB2M_33enum_class_literal_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute6inner_s_0ENtNtNtB9_6traits8iterator8Iterator4nextB2S_.exit
  store i64 0, ptr %0, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.ac, align 8
  br label %bb.k

bb.k:                                             ; preds = %_RNvXNtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB4_3VecTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameBR_EEINtB2_10SpecExtendBQ_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map4IterBR_BR_ENCNvNvXs0_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types5enumss3_1__NtB3X_33enum_class_literal_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute6inner_s_0EE11spec_extendB43_.exit, %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map4IterNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameB1O_ENCNvNvXs0_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types5enumss3_1__NtB2M_33enum_class_literal_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute6inner_s_0ENtNtNtB9_6traits8iterator8Iterator4nextB2S_.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret void

bb.l:                                             ; preds = %bb.n, %bb.m
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameBC_EECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef align 8 dereferenceable(32) %i.f) #33
          to label %common.resume unwind label %bb.ac

bb.m:                                             ; preds = %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map4IterNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameB1O_ENCNvNvXs0_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types5enumss3_1__NtB2M_33enum_class_literal_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute6inner_s_0ENtNtNtB9_6traits8iterator8Iterator4nextB2S_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.f, ptr noundef nonnull align 8 dereferenceable(15) %i.i, i64 15, i1 false)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 15
  store i8 %.sroa.415.0.copyload, ptr %.sroa.5.0..sroa_idx, align 1
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %i.j, i64 16, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val = load i64, ptr %i.ae, align 8, !noundef !14
  %i.af = tail call i64 @llvm.uadd.sat.i64(i64 %.val, i64 1)
  %.sroa.0.0.i = tail call noundef i64 @llvm.umax.i64(i64 %i.af, i64 4) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %.sroa.0.0.i, i1 noundef zeroext false, i64 noundef 8, i64 noundef 32)
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %bb.m
  %i.ag = load i64, ptr %i.c, align 8, !range !28, !noundef !14
  %i.ah = trunc nuw i64 %i.ag to i1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !range !60, !noundef !14 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.ah, label %bb.n, label %bb.o, !prof !16

bb.n:                                             ; preds = %.noexc
end_hunk_7
begin_hunk_8_@_RNvXNtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB4_3VecTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints12ConstraintIdB11_EEINtB2_18SpecFromIterNestedB10_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtCs6Wt4yPw39th_9itertools12combinations19CombinationsGenericINtNtB2Q_6copied6CopiedINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set4IterB11_EEAjj2_ENCNvMsp_B13_NtB13_12InteriorNode8simplifys_0EE9from_iterB17_:bb.a
          cleanup
  br label %.body

.body:                                            ; preds = %bb.m, %bb.p
  %eh.lpad-body = phi { ptr, i32 } [ %i.al, %bb.p ], [ %i.ad, %bb.m ]
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints12ConstraintIdBM_EENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBS_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtCs6Wt4yPw39th_9itertools12combinations19CombinationsGenericINtNtBG_6copied6CopiedINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set4IterNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints12ConstraintIdEEAjj2_ENCNvMsp_B3r_NtB3r_12InteriorNode8simplifys_0EEB3v_.exit unwind label %bb.q

_RNvXNtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints12ConstraintIdBR_EEINtB2_10SpecExtendBQ_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtCs6Wt4yPw39th_9itertools12combinations19CombinationsGenericINtNtB2w_6copied6CopiedINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set4IterBR_EEAjj2_ENCNvMsp_BT_NtBT_12InteriorNode8simplifys_0EE11spec_extendBX_.exit: ; preds = %_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints12ConstraintIdBG_EE16extend_desugaredINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtCs6Wt4yPw39th_9itertools12combinations19CombinationsGenericINtNtB2i_6copied6CopiedINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set4IterBG_EEAjj2_ENCNvMsp_BI_NtBI_12InteriorNode8simplifys_0EEBM_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.e

bb.q:                                             ; preds = %bb.r, %.body
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #32
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtCs6Wt4yPw39th_9itertools12combinations19CombinationsGenericINtNtBG_6copied6CopiedINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set4IterNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints12ConstraintIdEEAjj2_ENCNvMsp_B3r_NtB3r_12InteriorNode8simplifys_0EEB3v_.exit: ; preds = %bb.r, %.body
  %.pn16 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.an, %bb.r ]
  resume { ptr, i32 } %.pn16

bb.r:                                             ; preds = %bb.g, %bb.f, %bb.c, %bb.a
  %i.an = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints12ConstraintIdENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(88) %1)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtCs6Wt4yPw39th_9itertools12combinations19CombinationsGenericINtNtBG_6copied6CopiedINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set4IterNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints12ConstraintIdEEAjj2_ENCNvMsp_B3r_NtB3r_12InteriorNode8simplifys_0EEB3v_.exit unwind label %bb.q
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB4_3VecTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints12ConstraintIdjEEINtB2_18SpecFromIterNestedB10_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB2N_10filter_map9FilterMapINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter4IterNtB13_20ConstraintAssignmentTB11_tEENCNvMsx_B13_NtB13_15PathAssignments20positive_constraints0ENCNvXNvMso_B13_NtB13_10PathBounds7computeNtB6l_14CollectVisitorNtB13_8PathFold9satisfied0EE9from_iterB17_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 3 uses
  %i.b = alloca [4 x i8], align 4                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 3 uses
  %i.f = alloca [4 x i8], align 4                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 5 uses
  %i.h = alloca [24 x i8], align 8                ; 8 uses
  %i.i = alloca [24 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24660)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24661)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24662)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24663)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !24664
  store ptr %i.j, ptr %i.g, align 8, !noalias !24665
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !24666, !nonnull !14, !noundef !14
  %.promoted.i.i.i.i = load ptr, ptr %1, align 8, !alias.scope !24666
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.m = phi ptr [ %i.o, %bb.c ], [ %.promoted.i.i.i.i, %bb.a ] ; 4 uses
  %i.n = icmp eq ptr %i.m, %i.l
  br i1 %i.n, label %bb.p, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 24 ; 2 uses
  store ptr %i.o, ptr %1, align 8, !alias.scope !24666
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.q = call { i32, i32 } @_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNvMsx_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtBW_15PathAssignments20positive_constraints0INtB7_5FnMutTTRNtBW_20ConstraintAssignmentRTNtBW_12ConstraintIdtEEEE8call_mutB10_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.g, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.m, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.p), !noalias !24667 ; 2 uses
  %i.r = extractvalue { i32, i32 } %i.q, 0        ; 2 uses
  %.not10.i.i.i.i = icmp eq i32 %i.r, 0
  br i1 %.not10.i.i.i.i, label %bb.b, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = extractvalue { i32, i32 } %i.q, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !24664
  %.val.i = load ptr, ptr %i.j, align 8, !alias.scope !24660, !nonnull !14, !align !18, !noundef !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !24660
  store i32 %i.s, ptr %i.f, align 4, !noalias !24660
  %i.t = call { i64, i64 } @_RINvMs3_NtCs5e9M2GLoJMY_8indexmap3mapINtB6_8IndexMapNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints12ConstraintIduINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEE12get_index_ofBO_EBU_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.val.i, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.f) ; 2 uses
  %i.u = extractvalue { i64, i64 } %i.t, 0
  %i.v = trunc nuw i64 %i.u to i1
  br i1 %i.v, label %bb.f, label %bb.e, !prof !15

bb.e:                                             ; preds = %bb.d
  call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @41, i64 noundef 47, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43) #31
  unreachable

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !24660
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !24668
  call void @_RNvXs2_NtNtCs5e9M2GLoJMY_8indexmap3map4iterINtB5_4IterNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints20ConstraintAssignmentTNtBS_12ConstraintIdtEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator9size_hintBW_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1), !noalias !24669
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !24668
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef 4, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16)
  %i.w = load i64, ptr %i.d, align 8, !range !28, !noundef !14
  %i.x = trunc nuw i64 %i.w to i1
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.z = load i64, ptr %i.y, align 8, !range !60, !noundef !14 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  br i1 %i.x, label %bb.g, label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsoTR8nlGN3X_18ty_python_semantic.exit, !prof !16

bb.g:                                             ; preds = %bb.f
  %i.ab = load i64, ptr %i.aa, align 8
  call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.z, i64 %i.ab) #31
  unreachable

_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %bb.f
  %i.ac = extractvalue { i64, i64 } %i.t, 1
  %i.ad = load ptr, ptr %i.aa, align 8, !nonnull !14, !noundef !14 ; 3 uses
  %i.ae = icmp ugt i64 %i.z, 3
  call void @llvm.assume(i1 %i.ae)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i32 %i.r, ptr %i.ad, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store i64 %i.ac, ptr %i.af, align 8
  store i64 %i.z, ptr %i.i, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  store ptr %i.ad, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.65.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 4 uses
  store i64 1, ptr %.sroa.65.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !24670)
  call void @llvm.experimental.noalias.scope.decl(metadata !24671)
  call void @llvm.experimental.noalias.scope.decl(metadata !24672)
  call void @llvm.experimental.noalias.scope.decl(metadata !24673)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  br label %bb.h

bb.h:                                             ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints12ConstraintIdjEE7reserveBK_.exit.i.i, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsoTR8nlGN3X_18ty_python_semantic.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !24674)
  call void @llvm.experimental.noalias.scope.decl(metadata !24675)
  call void @llvm.experimental.noalias.scope.decl(metadata !24676)
  call void @llvm.experimental.noalias.scope.decl(metadata !24677)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !24678
  store ptr %i.ag, ptr %i.c, align 8, !noalias !24679
  %i.ai = load ptr, ptr %i.ah, align 8, !alias.scope !24680, !nonnull !14, !noundef !14
  %.promoted.i.i.i.i.i.i = load ptr, ptr %i.h, align 8, !alias.scope !24680
  br label %bb.i

bb.i:                                             ; preds = %.noexc, %bb.h
  %i.aj = phi ptr [ %i.al, %.noexc ], [ %.promoted.i.i.i.i.i.i, %bb.h ] ; 4 uses
  %i.ak = icmp eq ptr %i.aj, %i.ai
  br i1 %i.ak, label %bb.r, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 24 ; 2 uses
  store ptr %i.al, ptr %i.h, align 8, !alias.scope !24680
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.an = invoke { i32, i32 } @_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNvMsx_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtBW_15PathAssignments20positive_constraints0INtB7_5FnMutTTRNtBW_20ConstraintAssignmentRTNtBW_12ConstraintIdtEEEE8call_mutB10_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.aj, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.am)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc:                                           ; preds = %bb.j
  %i.ao = extractvalue { i32, i32 } %i.an, 0      ; 2 uses
  %.not10.i.i.i.i.i.i = icmp eq i32 %i.ao, 0
  br i1 %.not10.i.i.i.i.i.i, label %bb.i, label %bb.k

bb.k:                                             ; preds = %.noexc
  %i.ap = extractvalue { i32, i32 } %i.an, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !24678
  %.val.i.i.i = load ptr, ptr %i.ag, align 8, !alias.scope !24681, !nonnull !14, !align !18, !noundef !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !24682
  store i32 %i.ap, ptr %i.b, align 4, !noalias !24682
  %i.aq = invoke { i64, i64 } @_RINvMs3_NtCs5e9M2GLoJMY_8indexmap3mapINtB6_8IndexMapNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints12ConstraintIduINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEE12get_index_ofBO_EBU_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.val.i.i.i, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.b)
          to label %.noexc10 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc10:                                         ; preds = %bb.k
  %i.ar = extractvalue { i64, i64 } %i.aq, 0
  %i.as = trunc nuw i64 %i.ar to i1
  br i1 %i.as, label %bb.m, label %bb.l, !prof !15

bb.l:                                             ; preds = %.noexc10
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @41, i64 noundef 47, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43) #31
          to label %.noexc11 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc11:                                         ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %.noexc10
  %i.at = extractvalue { i64, i64 } %i.aq, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !24682
  %i.au = load i64, ptr %.sroa.65.0..sroa_idx, align 8, !alias.scope !24683, !noundef !14 ; 4 uses
  %i.av = icmp ult i64 %i.au, 576460752303423488
  call void @llvm.assume(i1 %i.av)
  %i.aw = load i64, ptr %i.i, align 8, !range !24, !alias.scope !24683, !noundef !14
  %i.ax = icmp eq i64 %i.au, %i.aw
  br i1 %i.ax, label %bb.n, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints12ConstraintIdjEE7reserveBK_.exit.i.i

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !24684
  invoke void @_RNvXs2_NtNtCs5e9M2GLoJMY_8indexmap3map4iterINtB5_4IterNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints20ConstraintAssignmentTNtBS_12ConstraintIdtEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator9size_hintBW_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.h)
          to label %.noexc12 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc12:                                         ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !24684
  %i.ay = load i64, ptr %.sroa.65.0..sroa_idx, align 8, !alias.scope !24685, !noundef !14 ; 2 uses
  %i.az = load i64, ptr %i.i, align 8, !range !24, !alias.scope !24685, !noundef !14
  %i.ba = icmp eq i64 %i.az, %i.ay
  br i1 %i.ba, label %bb.o, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints12ConstraintIdjEE7reserveBK_.exit.i.i, !prof !16

bb.o:                                             ; preds = %.noexc12
  invoke void @_RINvNvMs2_NtCscdodAO9FK5_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i, i64 noundef %i.ay, i64 noundef range(i64 1, 0) 1, i64 noundef 8, i64 noundef 16)
          to label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints12ConstraintIdjEE7reserveBK_.exit.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints12ConstraintIdjEE7reserveBK_.exit.i.i: ; preds = %bb.o, %.noexc12, %bb.m
  %i.bb = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !24683, !nonnull !14, !noundef !14
  %i.bc = getelementptr inbounds nuw [16 x i8], ptr %i.bb, i64 %i.au ; 2 uses
  store i32 %i.ao, ptr %i.bc, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store i64 %i.at, ptr %i.bd, align 8
  %i.be = add nuw nsw i64 %i.au, 1
  store i64 %i.be, ptr %.sroa.65.0..sroa_idx, align 8, !alias.scope !24683
  br label %bb.h

bb.p:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !24664
  store i64 0, ptr %0, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.bf, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.bg, align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.r, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  ret void

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.j, %bb.o, %bb.n, %bb.k, %bb.l
  %lpad.loopexit.split-lp43 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints12ConstraintIdjEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBS_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints12ConstraintIdjEEEB1e_.exit unwind label %bb.s

bb.r:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !24678
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  br label %bb.q

bb.s:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #32
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints12ConstraintIdjEEEB1e_.exit: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  resume { ptr, i32 } %lpad.loopexit.split-lp43
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB4_3VecTRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtNtB6_6borrow3CowNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict14TypedDictFieldEEEINtB2_18SpecFromIterNestedB10_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filter6FilterINtCsddXFpJ32JCa_6either6EitherINtNtB3R_3map3MapINtNtNtNtB6_11collections5btree3map4IterB12_B24_ENCNvMNtNtB28_5class10typed_dictNtB6k_15TypedDictFields4iter0EIB5c_INtNtNtCs5e9M2GLoJMY_8indexmap3map4iter4IterB12_NtB6m_5FieldENCB6h_s_0EENCNvB6k_26synthesize_typed_dict_inits_0EE9from_iterB2a_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(72) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 3 uses
  %i.b = alloca [40 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 3 uses
  %i.e = alloca [72 x i8], align 8                ; 7 uses
  %i.f = alloca [40 x i8], align 8                ; 3 uses
  %i.g = alloca [24 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 72
  call void @_RINvXs0_NtCsddXFpJ32JCa_6either8iteratorINtB8_6EitherINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map4IterNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict14TypedDictFieldENCNvMNtNtB3k_5class10typed_dictNtB4x_15TypedDictFields4iter0EIBQ_INtNtNtCs5e9M2GLoJMY_8indexmap3map4iter4IterB2x_NtB4z_5FieldENCB4u_s_0EENtNtNtBW_6traits8iterator8Iterator4findQNCNvB4x_26synthesize_typed_dict_inits_0EB3m_(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull %i.h)
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.j = load i32, ptr %i.i, align 8, !range !38, !noundef !14
  %.not = icmp eq i32 %i.j, 2
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !24700
  call void @_RNvXs0_NtCsddXFpJ32JCa_6either8iteratorINtB7_6EitherINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map4IterNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict14TypedDictFieldENCNvMNtNtB3j_5class10typed_dictNtB4w_15TypedDictFields4iter0EIBP_INtNtNtCs5e9M2GLoJMY_8indexmap3map4iter4IterB2w_NtB4y_5FieldENCB4t_s_0EENtNtNtBV_6traits8iterator8Iterator9size_hintB3l_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %1), !noalias !24701
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !24700
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef 4, i1 noundef zeroext false, i64 noundef 8, i64 noundef 40)
  %i.k = load i64, ptr %i.c, align 8, !range !28, !noundef !14
  %i.l = trunc nuw i64 %i.k to i1
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.n = load i64, ptr %i.m, align 8, !range !60, !noundef !14 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.l, label %bb.c, label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsoTR8nlGN3X_18ty_python_semantic.exit, !prof !16

bb.c:                                             ; preds = %bb.b
  %i.p = load i64, ptr %i.o, align 8
  call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.n, i64 %i.p) #31
  unreachable

_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %bb.b
  %i.q = load ptr, ptr %i.o, align 8, !nonnull !14, !noundef !14 ; 2 uses
  %i.r = icmp ugt i64 %i.n, 3
  call void @llvm.assume(i1 %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.q, ptr noundef nonnull align 8 dereferenceable(40) %i.f, i64 40, i1 false)
  store i64 %i.n, ptr %i.g, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  store ptr %i.q, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 4 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.e, ptr noundef nonnull align 8 dereferenceable(72) %1, i64 72, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !24702)
  call void @llvm.experimental.noalias.scope.decl(metadata !24703)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !24704
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 72 ; 2 uses
  invoke void @_RINvXs0_NtCsddXFpJ32JCa_6either8iteratorINtB8_6EitherINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map4IterNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict14TypedDictFieldENCNvMNtNtB3k_5class10typed_dictNtB4x_15TypedDictFields4iter0EIBQ_INtNtNtCs5e9M2GLoJMY_8indexmap3map4iter4IterB2x_NtB4z_5FieldENCB4u_s_0EENtNtNtBW_6traits8iterator8Iterator4findQNCNvB4x_26synthesize_typed_dict_inits_0EB3m_(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.e, ptr noalias noundef nonnull %i.s)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsoTR8nlGN3X_18ty_python_semantic.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.u = load i32, ptr %i.t, align 8, !range !38, !noalias !24705, !noundef !14
  %.not4.i.i = icmp eq i32 %i.u, 2
  br i1 %.not4.i.i, label %.loopexit9, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.noexc, %.noexc7
  %i.v = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !24706, !noundef !14 ; 4 uses
  %i.w = icmp ult i64 %i.v, 230584300921369396
  call void @llvm.assume(i1 %i.w)
  %i.x = load i64, ptr %i.g, align 8, !range !24, !alias.scope !24706, !noundef !14
  %i.y = icmp eq i64 %i.v, %i.x
  br i1 %i.y, label %bb.d, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecTRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtNtB6_6borrow3CowNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict14TypedDictFieldEEE7reserveB1N_.exit.i.i

bb.d:                                             ; preds = %.lr.ph.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !24707
  invoke void @_RNvXs0_NtCsddXFpJ32JCa_6either8iteratorINtB7_6EitherINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map4IterNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict14TypedDictFieldENCNvMNtNtB3j_5class10typed_dictNtB4w_15TypedDictFields4iter0EIBP_INtNtNtCs5e9M2GLoJMY_8indexmap3map4iter4IterB2w_NtB4y_5FieldENCB4t_s_0EENtNtNtBV_6traits8iterator8Iterator9size_hintB3l_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.e)
          to label %.noexc5 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc5:                                          ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !24707
  %i.z = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !24708, !noundef !14 ; 2 uses
  %i.aa = load i64, ptr %i.g, align 8, !range !24, !alias.scope !24708, !noundef !14
  %i.ab = icmp eq i64 %i.aa, %i.z
  br i1 %i.ab, label %bb.e, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecTRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtNtB6_6borrow3CowNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict14TypedDictFieldEEE7reserveB1N_.exit.i.i, !prof !16

bb.e:                                             ; preds = %.noexc5
  invoke void @_RINvNvMs2_NtCscdodAO9FK5_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef %i.z, i64 noundef range(i64 1, 0) 1, i64 noundef 8, i64 noundef 40)
          to label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecTRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtNtB6_6borrow3CowNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict14TypedDictFieldEEE7reserveB1N_.exit.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecTRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtNtB6_6borrow3CowNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict14TypedDictFieldEEE7reserveB1N_.exit.i.i: ; preds = %bb.e, %.noexc5, %.lr.ph.i.i
  %i.ac = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !24706, !nonnull !14, !noundef !14
  %i.ad = getelementptr inbounds nuw [40 x i8], ptr %i.ac, i64 %i.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ad, ptr noundef nonnull align 8 dereferenceable(40) %i.b, i64 40, i1 false)
  %i.ae = add nuw nsw i64 %i.v, 1
  store i64 %i.ae, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !24706
  invoke void @_RINvXs0_NtCsddXFpJ32JCa_6either8iteratorINtB8_6EitherINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map4IterNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict14TypedDictFieldENCNvMNtNtB3k_5class10typed_dictNtB4x_15TypedDictFields4iter0EIBQ_INtNtNtCs5e9M2GLoJMY_8indexmap3map4iter4IterB2x_NtB4z_5FieldENCB4u_s_0EENtNtNtBW_6traits8iterator8Iterator4findQNCNvB4x_26synthesize_typed_dict_inits_0EB3m_(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.e, ptr noalias noundef nonnull %i.s)
          to label %.noexc7 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc7:                                          ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecTRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtNtB6_6borrow3CowNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict14TypedDictFieldEEE7reserveB1N_.exit.i.i
  %i.af = load i32, ptr %i.t, align 8, !range !38, !noalias !24705, !noundef !14
  %.not.i.i = icmp eq i32 %i.af, 2
  br i1 %.not.i.i, label %.loopexit9, label %.lr.ph.i.i

bb.f:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.ah, align 8
  br label %bb.g

bb.g:                                             ; preds = %.loopexit9, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret void

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecTRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtNtB6_6borrow3CowNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict14TypedDictFieldEEE7reserveB1N_.exit.i.i, %bb.e, %bb.d, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsoTR8nlGN3X_18ty_python_semantic.exit
  %lpad.loopexit.split-lp11 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtNtB7_6borrow3CowNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict14TypedDictFieldEEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1V_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtNtBG_6borrow3CowNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict14TypedDictFieldEEEEB2h_.exit unwind label %bb.h

.loopexit9:                                       ; preds = %.noexc7, %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !24704
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  br label %bb.g

bb.h:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #32
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtNtBG_6borrow3CowNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict14TypedDictFieldEEEEB2h_.exit: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  resume { ptr, i32 } %lpad.loopexit.split-lp11
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB4_3VecTRNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15CallableBindingRNtB14_7BindingEEINtB2_18SpecFromIterNestedB10_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten7FlatMapIB30_INtNtNtB38_5slice4iter4IterNtB14_15BindingsElementEINtNtB34_3map3MapIB41_NtB14_12CallableItemENvMs0_B14_B5b_8callableENvMs1_B14_B4r_9callablesEIB4Q_IB41_B2f_ENCNCNvNtB18_11ide_support19call_argument_formss_00ENCB6C_s_0EE9from_iterB1a_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(104) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.5.i.i = alloca i64, align 8              ; 3 uses
  %.sroa.7.i.i = alloca i64, align 8              ; 3 uses
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.5 = alloca i64, align 8                  ; 3 uses
  %.sroa.7 = alloca i64, align 8                  ; 3 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = tail call fastcc { ptr, ptr } @_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_7FlatMapIBR_INtNtNtBb_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementEINtNtB7_3map3MapIB19_NtB1A_12CallableItemENvMs0_B1A_B36_8callableENvMs1_B1A_B1y_9callablesEIB2M_IB19_NtB1A_7BindingENCNCNvNtB1E_11ide_support19call_argument_formss_00ENCB4H_s_0ENtNtNtB9_6traits8iterator8Iterator4nextB1G_(ptr noalias noundef align 8 dereferenceable(104) %1) ; 2 uses
  %i.d = extractvalue { ptr, ptr } %i.c, 0        ; 2 uses
  %i.e = extractvalue { ptr, ptr } %i.c, 1        ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.ae, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.e) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24767)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24768)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24769)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24770)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !24771, !noundef !14 ; 7 uses
  %.not.i.i = icmp eq ptr %i.g, null              ; 2 uses
  br i1 %.not.i.i, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindingENCNCNvNtB1N_11ide_support19call_argument_formss_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1P_.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.val4.i.i.i = load ptr, ptr %i.h, align 8, !alias.scope !24772, !nonnull !14, !noundef !14
  %i.i = ptrtoint ptr %.val4.i.i.i to i64
  %i.j = ptrtoint ptr %i.g to i64
  %i.k = sub nuw i64 %i.i, %i.j
  %i.l = udiv exact i64 %i.k, 232
  br label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindingENCNCNvNtB1N_11ide_support19call_argument_formss_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1P_.exit.i.i

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindingENCNCNvNtB1N_11ide_support19call_argument_formss_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1P_.exit.i.i: ; preds = %bb.c, %bb.b
  %.sroa.7.0.i.i = phi i64 [ %i.l, %bb.c ], [ 0, %bb.b ]
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !24771, !noundef !14 ; 6 uses
  %.not55.i.i = icmp eq ptr %i.n, null            ; 2 uses
  br i1 %.not55.i.i, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindingENCNCNvNtB1N_11ide_support19call_argument_formss_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1P_.exit64.i.i, label %bb.d

bb.d:                                             ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindingENCNCNvNtB1N_11ide_support19call_argument_formss_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1P_.exit.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.val4.i63.i.i = load ptr, ptr %i.o, align 8, !alias.scope !24773, !nonnull !14, !noundef !14
  %i.p = ptrtoint ptr %.val4.i63.i.i to i64
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = sub nuw i64 %i.p, %i.q
  %i.s = udiv exact i64 %i.r, 232
  br label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindingENCNCNvNtB1N_11ide_support19call_argument_formss_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1P_.exit64.i.i

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindingENCNCNvNtB1N_11ide_support19call_argument_formss_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1P_.exit64.i.i: ; preds = %bb.d, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindingENCNCNvNtB1N_11ide_support19call_argument_formss_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1P_.exit.i.i
  %.sroa.8.0.i.i = phi i64 [ %i.s, %bb.d ], [ 0, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindingENCNCNvNtB1N_11ide_support19call_argument_formss_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1P_.exit.i.i ]
  %i.t = add nuw nsw i64 %.sroa.8.0.i.i, %.sroa.7.0.i.i ; 2 uses
  %i.u = load i64, ptr %1, align 8, !range !28, !alias.scope !24771, !noundef !14
  %i.v = trunc nuw i64 %i.u to i1                 ; 4 uses
  br i1 %i.v, label %bb.e, label %bb.h

bb.e:                                             ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindingENCNCNvNtB1N_11ide_support19call_argument_formss_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1P_.exit64.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !24774, !noundef !14 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i.i.i, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12CallableItemENvMs0_B1J_B1H_8callableEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1P_.exit.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val4.i.i.i.i.i.i = load ptr, ptr %i.z, align 8, !alias.scope !24775, !nonnull !14, !noundef !14
  %i.aa = ptrtoint ptr %.val4.i.i.i.i.i.i to i64
  %i.ab = ptrtoint ptr %i.y to i64
  %i.ac = sub nuw i64 %i.aa, %i.ab
  %i.ad = udiv exact i64 %i.ac, 360
  br label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12CallableItemENvMs0_B1J_B1H_8callableEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1P_.exit.i.i.i.i.i

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12CallableItemENvMs0_B1J_B1H_8callableEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1P_.exit.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.sroa.7.0.i.i.i.i.i = phi i64 [ %i.ad, %bb.f ], [ 0, %bb.e ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.af = load ptr, ptr %i.ae, align 8, !alias.scope !24774, !noundef !14 ; 2 uses
  %.not55.i.i.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not55.i.i.i.i.i, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12CallableItemENvMs0_B1J_B1H_8callableEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1P_.exit66.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12CallableItemENvMs0_B1J_B1H_8callableEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1P_.exit.i.i.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.val4.i65.i.i.i.i.i = load ptr, ptr %i.ag, align 8, !alias.scope !24776, !nonnull !14, !noundef !14
  %i.ah = ptrtoint ptr %.val4.i65.i.i.i.i.i to i64
  %i.ai = ptrtoint ptr %i.af to i64
  %i.aj = sub nuw i64 %i.ah, %i.ai
  %i.ak = udiv exact i64 %i.aj, 360
  %i.al = or i64 %i.ak, %.sroa.7.0.i.i.i.i.i
  br label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12CallableItemENvMs0_B1J_B1H_8callableEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1P_.exit66.i.i.i.i.i

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12CallableItemENvMs0_B1J_B1H_8callableEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1P_.exit66.i.i.i.i.i: ; preds = %bb.g, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12CallableItemENvMs0_B1J_B1H_8callableEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1P_.exit.i.i.i.i.i
  %.sroa.8.0.i.i.i.i.i = phi i64 [ %i.al, %bb.g ], [ %.sroa.7.0.i.i.i.i.i, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12CallableItemENvMs0_B1J_B1H_8callableEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1P_.exit.i.i.i.i.i ]
  %i.am = load ptr, ptr %i.w, align 8, !alias.scope !24774, !noundef !14 ; 2 uses
  %.not56.i.i.i.i.i = icmp eq ptr %i.am, null
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val63.i.i.i.i.i = load ptr, ptr %i.an, align 8, !alias.scope !24774, !nonnull !14
  %i.ao = icmp eq ptr %.val63.i.i.i.i.i, %i.am
  %or.cond.i.i.i.i.i = select i1 %.not56.i.i.i.i.i, i1 true, i1 %i.ao
  %i.ap = icmp eq i64 %.sroa.8.0.i.i.i.i.i, 0
  %or.cond.i.i = select i1 %or.cond.i.i.i.i.i, i1 %i.ap, i1 false
  br i1 %or.cond.i.i, label %bb.h, label %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_7FlatMapIBR_INtNtNtBb_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementEINtNtB7_3map3MapIB19_NtB1A_12CallableItemENvMs0_B1A_B36_8callableENvMs1_B1A_B1y_9callablesEIB2M_IB19_NtB1A_7BindingENCNCNvNtB1E_11ide_support19call_argument_formss_00ENCB4H_s_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1G_.exit

bb.h:                                             ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12CallableItemENvMs0_B1J_B1H_8callableEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1P_.exit66.i.i.i.i.i, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindingENCNCNvNtB1N_11ide_support19call_argument_formss_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1P_.exit64.i.i
  br label %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_7FlatMapIBR_INtNtNtBb_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementEINtNtB7_3map3MapIB19_NtB1A_12CallableItemENvMs0_B1A_B36_8callableENvMs1_B1A_B1y_9callablesEIB2M_IB19_NtB1A_7BindingENCNCNvNtB1E_11ide_support19call_argument_formss_00ENCB4H_s_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1G_.exit

_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_7FlatMapIBR_INtNtNtBb_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementEINtNtB7_3map3MapIB19_NtB1A_12CallableItemENvMs0_B1A_B36_8callableENvMs1_B1A_B1y_9callablesEIB2M_IB19_NtB1A_7BindingENCNCNvNtB1E_11ide_support19call_argument_formss_00ENCB4H_s_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1G_.exit: ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12CallableItemENvMs0_B1J_B1H_8callableEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1P_.exit66.i.i.i.i.i, %bb.h
  %.sink86.i.i.sroa.phi = phi ptr [ %.sroa.7, %bb.h ], [ %.sroa.5, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12CallableItemENvMs0_B1J_B1H_8callableEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1P_.exit66.i.i.i.i.i ]
  %.sink.i.i = phi i64 [ %i.t, %bb.h ], [ 0, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12CallableItemENvMs0_B1J_B1H_8callableEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1P_.exit66.i.i.i.i.i ]
  store i64 %.sink.i.i, ptr %.sink86.i.i.sroa.phi, align 8, !alias.scope !24777
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  %i.aq = tail call i64 @llvm.umax.i64(i64 %i.t, i64 3) ; 2 uses
  %.sroa.0.0.i = add nuw nsw i64 %i.aq, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %.sroa.0.0.i, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16)
  %i.ar = load i64, ptr %i.a, align 8, !range !28, !noundef !14
  %i.as = trunc nuw i64 %i.ar to i1
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.au = load i64, ptr %i.at, align 8, !range !60, !noundef !14 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.as, label %bb.i, label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsoTR8nlGN3X_18ty_python_semantic.exit, !prof !16

bb.i:                                             ; preds = %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_7FlatMapIBR_INtNtNtBb_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementEINtNtB7_3map3MapIB19_NtB1A_12CallableItemENvMs0_B1A_B36_8callableENvMs1_B1A_B1y_9callablesEIB2M_IB19_NtB1A_7BindingENCNCNvNtB1E_11ide_support19call_argument_formss_00ENCB4H_s_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1G_.exit
  %i.aw = load i64, ptr %i.av, align 8
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.au, i64 %i.aw) #31
  unreachable

_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_7FlatMapIBR_INtNtNtBb_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementEINtNtB7_3map3MapIB19_NtB1A_12CallableItemENvMs0_B1A_B36_8callableENvMs1_B1A_B1y_9callablesEIB2M_IB19_NtB1A_7BindingENCNCNvNtB1E_11ide_support19call_argument_formss_00ENCB4H_s_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1G_.exit
  %i.ax = load ptr, ptr %i.av, align 8, !nonnull !14, !noundef !14 ; 3 uses
  %i.ay = icmp ult i64 %i.aq, %i.au
  tail call void @llvm.assume(i1 %i.ay)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.ax, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store ptr %i.e, ptr %i.az, align 8
  store i64 %i.au, ptr %i.b, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.ax, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.64.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  store i64 1, ptr %.sroa.64.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8 ; 5 uses
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.11.0.copyload = load ptr, ptr %.sroa.11.0..sroa_idx, align 8 ; 3 uses
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.14.0.copyload = load ptr, ptr %.sroa.14.0..sroa_idx, align 8 ; 5 uses
end_hunk_8
begin_hunk_9_@_RNvXNtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB4_3VecTjINtNtCs4NRVxsYgnAr_4core6option6OptionjEEEINtB2_18SpecFromIterNestedB10_INtNtNtNtB17_4iter8adapters10filter_map9FilterMapINtNtNtB2j_7sources7from_fn6FromFnNCNvMsb_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB3F_19ArgumentTypeChecker24enumerate_argument_types0ENCNvB3B_26paramspec_argument_indices0EE9from_iterB3L_:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.620.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx2.i.i.i.i.i.i, i64 16, i1 false), !noalias !24865
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !24864
  store i64 %.sroa.01.0.i.i.i.i.i, ptr %i.e, align 8, !noalias !24866
  store i64 %.sroa.3.0.i.i.i.i.i, ptr %.sroa.418.0..sroa_idx.i.i.i, align 8, !noalias !24866
  store i64 %.sroa.0.0.copyload1.i.i.i.i.i.i, ptr %.sroa.519.0..sroa_idx.i.i.i, align 8, !noalias !24866
  store i64 %i.r, ptr %.sroa.721.0..sroa_idx.i.i.i, align 8, !noalias !24866
  store ptr %i.u, ptr %.sroa.822.0..sroa_idx.i.i.i, align 8, !noalias !24866
  call void @_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNvMsb_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtBW_19ArgumentTypeChecker26paramspec_argument_indices0INtB7_5FnMutTTjINtNtBb_6option6OptionjENtNtBY_9arguments8ArgumentRNtB3n_17CallArgumentTypesEEE8call_mutB12_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.g, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.e), !noalias !24867
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !24864
  %i.aa = load i64, ptr %i.p, align 8, !range !29, !noalias !24864, !noundef !14 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.aa, 2
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !24864
  %i.ab = icmp eq ptr %i.t, %i.l
  br i1 %i.ab, label %.loopexit.i.i, label %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call9arguments12CallArgumentENCNvMs_B1o_NtB1o_13CallArguments4iter0ENtNtNtB9_6traits8iterator8Iterator4nextB1u_.exit.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %.sroa.015.0.copyload.i.i.i = load i64, ptr %i.f, align 8, !noalias !24868
  %.sroa.716.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.716.0.copyload.i.i.i = load i64, ptr %.sroa.716.0..sroa_idx.i.i.i, align 8, !noalias !24868
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !24864
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !24853
  store i64 %i.aa, ptr %.sroa.5, align 8, !alias.scope !24869
  br label %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtB9_7sources7from_fn6FromFnNCNvMsb_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB1P_19ArgumentTypeChecker24enumerate_argument_types0ENCNvB1L_26paramspec_argument_indices0ENtNtNtB9_6traits8iterator8Iterator4nextB1V_.exit

.loopexit.i.i:                                    ; preds = %bb.f, %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call9arguments12CallArgumentENCNvMs_B1o_NtB1o_13CallArguments4iter0ENtNtNtB9_6traits8iterator8Iterator4nextB1u_.exit.i.i.i.i.i.i, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !24853
  br label %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtB9_7sources7from_fn6FromFnNCNvMsb_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB1P_19ArgumentTypeChecker24enumerate_argument_types0ENCNvB1L_26paramspec_argument_indices0ENtNtNtB9_6traits8iterator8Iterator4nextB1V_.exit

_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtB9_7sources7from_fn6FromFnNCNvMsb_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB1P_19ArgumentTypeChecker24enumerate_argument_types0ENCNvB1L_26paramspec_argument_indices0ENtNtNtB9_6traits8iterator8Iterator4nextB1V_.exit: ; preds = %bb.g, %.loopexit.i.i
  %.sroa.0.0 = phi i64 [ undef, %.loopexit.i.i ], [ %.sroa.015.0.copyload.i.i.i, %bb.g ]
  %.sink.i.i.sroa.phi = phi ptr [ %.sroa.5, %.loopexit.i.i ], [ %.sroa.8, %bb.g ]
  %.sroa.716.0.copyload.i.sink.i.i = phi i64 [ 2, %.loopexit.i.i ], [ %.sroa.716.0.copyload.i.i.i, %bb.g ]
  store i64 %.sroa.716.0.copyload.i.sink.i.i, ptr %.sink.i.i.sroa.phi, align 8, !alias.scope !24869
  %.sroa.5.0..sroa.5.0..sroa.5.0..sroa.5.8. = load i64, ptr %.sroa.5, align 8, !range !29, !noundef !14 ; 2 uses
  %.not = icmp eq i64 %.sroa.5.0..sroa.5.0..sroa.5.0..sroa.5.8., 2
  br i1 %.not, label %bb.r, label %bb.h

bb.h:                                             ; preds = %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtB9_7sources7from_fn6FromFnNCNvMsb_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB1P_19ArgumentTypeChecker24enumerate_argument_types0ENCNvB1L_26paramspec_argument_indices0ENtNtNtB9_6traits8iterator8Iterator4nextB1V_.exit
  %.sroa.8.0..sroa.8.0..sroa.8.0..sroa.8.0.copyload = load i64, ptr %.sroa.8, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef 4, i1 noundef zeroext false, i64 noundef 8, i64 noundef 24)
  %i.ac = load i64, ptr %i.d, align 8, !range !28, !noundef !14
  %i.ad = trunc nuw i64 %i.ac to i1
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !range !60, !noundef !14 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  br i1 %i.ad, label %bb.i, label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsoTR8nlGN3X_18ty_python_semantic.exit, !prof !16

bb.i:                                             ; preds = %bb.h
  %i.ah = load i64, ptr %i.ag, align 8
  call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.af, i64 %i.ah) #31
  unreachable

_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %bb.h
  %i.ai = load ptr, ptr %i.ag, align 8, !nonnull !14, !noundef !14 ; 4 uses
  %i.aj = icmp ugt i64 %i.af, 3
  call void @llvm.assume(i1 %i.aj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i64 %.sroa.0.0, ptr %i.ai, align 8
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store i64 %.sroa.5.0..sroa.5.0..sroa.5.0..sroa.5.8., ptr %.sroa.415.0..sroa_idx, align 8
  %.sroa.516.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store i64 %.sroa.8.0..sroa.8.0..sroa.8.0..sroa.8.0.copyload, ptr %.sroa.516.0..sroa_idx, align 8
  store i64 %i.af, ptr %i.i, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  store ptr %i.ai, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 3 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.h, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !24870)
  call void @llvm.experimental.noalias.scope.decl(metadata !24871)
  call void @llvm.experimental.noalias.scope.decl(metadata !24872)
  call void @llvm.experimental.noalias.scope.decl(metadata !24873)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.al = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 2 uses
  %.sroa.418.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.519.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.620.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.721.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.822.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.716.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %bb.j

bb.j:                                             ; preds = %.noexc6, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsoTR8nlGN3X_18ty_python_semantic.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !24874)
  call void @llvm.experimental.noalias.scope.decl(metadata !24875)
  call void @llvm.experimental.noalias.scope.decl(metadata !24876)
  call void @llvm.experimental.noalias.scope.decl(metadata !24877)
  call void @llvm.experimental.noalias.scope.decl(metadata !24878)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !24879
  store ptr %i.ak, ptr %i.c, align 8, !noalias !24880
  %i.ap = load ptr, ptr %i.al, align 8, !alias.scope !24881, !nonnull !14, !noundef !14 ; 2 uses
  %.promoted.i.i.i.i.i = load ptr, ptr %i.h, align 8, !alias.scope !24881 ; 2 uses
  %i.aq = icmp eq ptr %.promoted.i.i.i.i.i, %i.ap
  br i1 %i.aq, label %.loopexit.i.i.i.i, label %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call9arguments12CallArgumentENCNvMs_B1o_NtB1o_13CallArguments4iter0ENtNtNtB9_6traits8iterator8Iterator4nextB1u_.exit.i.i.i.lr.ph.i.i.i.i.i

_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call9arguments12CallArgumentENCNvMs_B1o_NtB1o_13CallArguments4iter0ENtNtNtB9_6traits8iterator8Iterator4nextB1u_.exit.i.i.i.lr.ph.i.i.i.i.i: ; preds = %bb.j
  %.promoted40.i.i.i.i.i = load i64, ptr %i.am, align 8, !alias.scope !24882
  %.promoted41.i.i.i.i.i = load i64, ptr %i.an, align 8, !alias.scope !24882
  br label %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call9arguments12CallArgumentENCNvMs_B1o_NtB1o_13CallArguments4iter0ENtNtNtB9_6traits8iterator8Iterator4nextB1u_.exit.i.i.i.i.i.i.i.i

_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call9arguments12CallArgumentENCNvMs_B1o_NtB1o_13CallArguments4iter0ENtNtNtB9_6traits8iterator8Iterator4nextB1u_.exit.i.i.i.i.i.i.i.i: ; preds = %bb.o, %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call9arguments12CallArgumentENCNvMs_B1o_NtB1o_13CallArguments4iter0ENtNtNtB9_6traits8iterator8Iterator4nextB1u_.exit.i.i.i.lr.ph.i.i.i.i.i
  %i.ar = phi i64 [ %.promoted41.i.i.i.i.i, %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call9arguments12CallArgumentENCNvMs_B1o_NtB1o_13CallArguments4iter0ENtNtNtB9_6traits8iterator8Iterator4nextB1u_.exit.i.i.i.lr.ph.i.i.i.i.i ], [ %i.ba, %bb.o ] ; 3 uses
  %i.as = phi i64 [ %.promoted40.i.i.i.i.i, %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call9arguments12CallArgumentENCNvMs_B1o_NtB1o_13CallArguments4iter0ENtNtNtB9_6traits8iterator8Iterator4nextB1u_.exit.i.i.i.lr.ph.i.i.i.i.i ], [ %i.aw, %bb.o ] ; 3 uses
  %i.at = phi ptr [ %.promoted.i.i.i.i.i, %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call9arguments12CallArgumentENCNvMs_B1o_NtB1o_13CallArguments4iter0ENtNtNtB9_6traits8iterator8Iterator4nextB1u_.exit.i.i.i.lr.ph.i.i.i.i.i ], [ %i.au, %bb.o ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !24883)
  call void @llvm.experimental.noalias.scope.decl(metadata !24884)
  call void @llvm.experimental.noalias.scope.decl(metadata !24885)
  call void @llvm.experimental.noalias.scope.decl(metadata !24886)
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 72 ; 3 uses
  store ptr %i.au, ptr %i.h, align 8, !alias.scope !24881
  %.sroa.0.0.copyload1.i.i.i.i.i.i.i.i = load i64, ptr %i.at, align 8, !noalias !24887 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload1.i.i.i.i.i.i.i.i, -1
  br i1 %.not.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call9arguments12CallArgumentENCNvMs_B1o_NtB1o_13CallArguments4iter0ENtNtNtB9_6traits8iterator8Iterator4nextB1u_.exit.i.i.i.i.i.i.i.i
  %.sroa.7.0..sroa_idx2.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.aw = add i64 %i.as, 1                        ; 2 uses
  store i64 %i.aw, ptr %i.am, align 8, !alias.scope !24888
  %i.ax = icmp eq i64 %.sroa.0.0.copyload1.i.i.i.i.i.i.i.i, 0
  br i1 %i.ax, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ay = add i64 %i.ar, 1                        ; 2 uses
  store i64 %i.ay, ptr %i.an, align 8, !alias.scope !24889
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.az = sub i64 %i.as, %i.ar
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ba = phi i64 [ %i.ay, %bb.l ], [ %i.ar, %bb.m ]
  %.sroa.3.0.i.i.i.i.i.i.i = phi i64 [ undef, %bb.l ], [ %i.az, %bb.m ]
  %.sroa.01.0.i.i.i.i.i.i.i = phi i64 [ 0, %bb.l ], [ 1, %bb.m ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !24890
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.620.0..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx2.i.i.i.i.i.i.i.i, i64 16, i1 false), !noalias !24891
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !24890
  store i64 %.sroa.01.0.i.i.i.i.i.i.i, ptr %i.a, align 8, !noalias !24892
  store i64 %.sroa.3.0.i.i.i.i.i.i.i, ptr %.sroa.418.0..sroa_idx.i.i.i.i.i, align 8, !noalias !24892
  store i64 %.sroa.0.0.copyload1.i.i.i.i.i.i.i.i, ptr %.sroa.519.0..sroa_idx.i.i.i.i.i, align 8, !noalias !24892
  store i64 %i.as, ptr %.sroa.721.0..sroa_idx.i.i.i.i.i, align 8, !noalias !24892
  store ptr %i.av, ptr %.sroa.822.0..sroa_idx.i.i.i.i.i, align 8, !noalias !24892
  invoke void @_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNvMsb_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtBW_19ArgumentTypeChecker26paramspec_argument_indices0INtB7_5FnMutTTjINtNtBb_6option6OptionjENtNtBY_9arguments8ArgumentRNtB3n_17CallArgumentTypesEEE8call_mutB12_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.a)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !24890
  %i.bb = load i64, ptr %i.ao, align 8, !range !29, !noalias !24890, !noundef !14 ; 2 uses
  %.not.i.i.i.i.i.i5 = icmp eq i64 %i.bb, 2
  br i1 %.not.i.i.i.i.i.i5, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !24890
  %i.bc = icmp eq ptr %i.au, %i.ap
  br i1 %i.bc, label %.loopexit.i.i.i.i, label %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call9arguments12CallArgumentENCNvMs_B1o_NtB1o_13CallArguments4iter0ENtNtNtB9_6traits8iterator8Iterator4nextB1u_.exit.i.i.i.i.i.i.i.i

bb.p:                                             ; preds = %.noexc
  %.sroa.015.0.copyload.i.i.i.i.i = load i64, ptr %i.b, align 8, !noalias !24893
  %.sroa.716.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.716.0..sroa_idx.i.i.i.i.i, align 8, !noalias !24893
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !24890
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !24879
  store i64 %i.bb, ptr %.sroa.5.i.i, align 8, !alias.scope !24894, !noalias !24895
  br label %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtB9_7sources7from_fn6FromFnNCNvMsb_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB1P_19ArgumentTypeChecker24enumerate_argument_types0ENCNvB1L_26paramspec_argument_indices0ENtNtNtB9_6traits8iterator8Iterator4nextB1V_.exit.i.i

.loopexit.i.i.i.i:                                ; preds = %bb.o, %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call9arguments12CallArgumentENCNvMs_B1o_NtB1o_13CallArguments4iter0ENtNtNtB9_6traits8iterator8Iterator4nextB1u_.exit.i.i.i.i.i.i.i.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !24879
  br label %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtB9_7sources7from_fn6FromFnNCNvMsb_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB1P_19ArgumentTypeChecker24enumerate_argument_types0ENCNvB1L_26paramspec_argument_indices0ENtNtNtB9_6traits8iterator8Iterator4nextB1V_.exit.i.i

_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtB9_7sources7from_fn6FromFnNCNvMsb_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB1P_19ArgumentTypeChecker24enumerate_argument_types0ENCNvB1L_26paramspec_argument_indices0ENtNtNtB9_6traits8iterator8Iterator4nextB1V_.exit.i.i: ; preds = %.loopexit.i.i.i.i, %bb.p
  %.sroa.0.0.i.i = phi i64 [ undef, %.loopexit.i.i.i.i ], [ %.sroa.015.0.copyload.i.i.i.i.i, %bb.p ]
  %.sink.i.i.sroa.phi.i.i = phi ptr [ %.sroa.5.i.i, %.loopexit.i.i.i.i ], [ %.sroa.8.i.i, %bb.p ]
  %.sroa.716.0.copyload.i.sink.i.i.i.i = phi i64 [ 2, %.loopexit.i.i.i.i ], [ %.sroa.716.0.copyload.i.i.i.i.i, %bb.p ]
  store i64 %.sroa.716.0.copyload.i.sink.i.i.i.i, ptr %.sink.i.i.sroa.phi.i.i, align 8, !alias.scope !24894, !noalias !24895
  %.sroa.5.i.i.0..sroa.5.i.i.0..sroa.5.i.i.0..sroa.5.i.0..sroa.5.i.0..sroa.5.0..sroa.5.0..sroa.5.8..i.i = load i64, ptr %.sroa.5.i.i, align 8, !range !29, !noalias !24895, !noundef !14 ; 2 uses
  %.not.i.i = icmp eq i64 %.sroa.5.i.i.0..sroa.5.i.i.0..sroa.5.i.i.0..sroa.5.i.0..sroa.5.i.0..sroa.5.0..sroa.5.0..sroa.5.8..i.i, 2
  br i1 %.not.i.i, label %bb.t, label %bb.q

bb.q:                                             ; preds = %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtB9_7sources7from_fn6FromFnNCNvMsb_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB1P_19ArgumentTypeChecker24enumerate_argument_types0ENCNvB1L_26paramspec_argument_indices0ENtNtNtB9_6traits8iterator8Iterator4nextB1V_.exit.i.i
  %.sroa.8.i.i.0..sroa.8.i.i.0..sroa.8.i.i.0..sroa.8.i.0..sroa.8.i.0..sroa.8.0..sroa.8.0..sroa.8.0.copyload.i.i = load i64, ptr %.sroa.8.i.i, align 8, !noalias !24895
  %i.bd = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !24896, !noundef !14 ; 5 uses
  %i.be = icmp ult i64 %i.bd, 384307168202282326
  call void @llvm.assume(i1 %i.be)
  %i.bf = load i64, ptr %i.i, align 8, !range !24, !alias.scope !24896, !noundef !14
  %i.bg = icmp eq i64 %i.bd, %i.bf
  br i1 %i.bg, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecTjINtNtCs4NRVxsYgnAr_4core6option6OptionjEEE7reserveCsoTR8nlGN3X_18ty_python_semantic.exit.i.i, label %.noexc6

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecTjINtNtCs4NRVxsYgnAr_4core6option6OptionjEEE7reserveCsoTR8nlGN3X_18ty_python_semantic.exit.i.i: ; preds = %bb.q
  invoke void @_RINvNvMs2_NtCscdodAO9FK5_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i, i64 noundef %i.bd, i64 noundef range(i64 1, 0) 1, i64 noundef 8, i64 noundef 24)
          to label %.noexc6 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc6:                                          ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecTjINtNtCs4NRVxsYgnAr_4core6option6OptionjEEE7reserveCsoTR8nlGN3X_18ty_python_semantic.exit.i.i, %bb.q
  %i.bh = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !24896, !nonnull !14, !noundef !14
  %i.bi = getelementptr inbounds nuw [24 x i8], ptr %i.bh, i64 %i.bd ; 3 uses
  store i64 %.sroa.0.0.i.i, ptr %i.bi, align 8
  %.sroa.410.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store i64 %.sroa.5.i.i.0..sroa.5.i.i.0..sroa.5.i.i.0..sroa.5.i.0..sroa.5.i.0..sroa.5.0..sroa.5.0..sroa.5.8..i.i, ptr %.sroa.410.0..sroa_idx.i.i, align 8
  %.sroa.511.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  store i64 %.sroa.8.i.i.0..sroa.8.i.i.0..sroa.8.i.i.0..sroa.8.i.0..sroa.8.i.0..sroa.8.0..sroa.8.0..sroa.8.0.copyload.i.i, ptr %.sroa.511.0..sroa_idx.i.i, align 8
  %i.bj = add nuw nsw i64 %i.bd, 1
  store i64 %i.bj, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !24896
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i)
  br label %bb.j

bb.r:                                             ; preds = %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtB9_7sources7from_fn6FromFnNCNvMsb_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB1P_19ArgumentTypeChecker24enumerate_argument_types0ENCNvB1L_26paramspec_argument_indices0ENtNtNtB9_6traits8iterator8Iterator4nextB1V_.exit
  store i64 0, ptr %0, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.bk, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.bl, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  br label %bb.s

bb.s:                                             ; preds = %bb.t, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  ret void

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.n, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecTjINtNtCs4NRVxsYgnAr_4core6option6OptionjEEE7reserveCsoTR8nlGN3X_18ty_python_semantic.exit.i.i
  %lpad.loopexit.split-lp28 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTjINtNtCs4NRVxsYgnAr_4core6option6OptionjEEENtNtNtBS_3ops4drop4Drop4dropCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTjINtNtB4_6option6OptionjEEEECsoTR8nlGN3X_18ty_python_semantic.exit unwind label %bb.u

bb.t:                                             ; preds = %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtB9_7sources7from_fn6FromFnNCNvMsb_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB1P_19ArgumentTypeChecker24enumerate_argument_types0ENCNvB1L_26paramspec_argument_indices0ENtNtNtB9_6traits8iterator8Iterator4nextB1V_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  br label %bb.s

bb.u:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.bm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #32
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTjINtNtB4_6option6OptionjEEEECsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  resume { ptr, i32 } %lpad.loopexit.split-lp28
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB4_3VeccEINtB2_18SpecFromIterNestedcNtNtNtCs4NRVxsYgnAr_4core3str4iter5CharsE9from_iterCsoTR8nlGN3X_18ty_python_semantic(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %.not.i = icmp eq ptr %1, %2
  br i1 %.not.i, label %_RNvXNtNtCs4NRVxsYgnAr_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator4next.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 3 uses
  %i.d = load i8, ptr %1, align 1, !noalias !24909, !noundef !14 ; 5 uses
  %i.e = icmp sgt i8 %i.d, -1
  br i1 %i.e, label %bb.c, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic.exit12.i.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic.exit12.i.i: ; preds = %bb.b
  %i.f = and i8 %i.d, 31
  %i.g = zext nneg i8 %i.f to i32                 ; 3 uses
  %i.h = icmp ne ptr %i.c, %2
  tail call void @llvm.assume(i1 %i.h)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 3 uses
  %i.j = load i8, ptr %i.c, align 1, !noalias !24909, !noundef !14
  %i.k = shl nuw nsw i32 %i.g, 6
  %i.l = and i8 %i.j, 63
  %i.m = zext nneg i8 %i.l to i32                 ; 2 uses
  %i.n = or disjoint i32 %i.k, %i.m
  %i.o = icmp samesign ugt i8 %i.d, -33
  br i1 %i.o, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic.exit14.i.i, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.p = zext nneg i8 %i.d to i32
  br label %bb.d

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic.exit14.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic.exit12.i.i
  %i.q = icmp ne ptr %i.i, %2
  tail call void @llvm.assume(i1 %i.q)
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 3 ; 3 uses
  %i.s = load i8, ptr %i.i, align 1, !noalias !24909, !noundef !14
  %i.t = shl nuw nsw i32 %i.m, 6
  %i.u = and i8 %i.s, 63
  %i.v = zext nneg i8 %i.u to i32
  %i.w = or disjoint i32 %i.t, %i.v               ; 2 uses
  %i.x = shl nuw nsw i32 %i.g, 12
  %i.y = or disjoint i32 %i.w, %i.x
  %i.z = icmp samesign ugt i8 %i.d, -17
  br i1 %i.z, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic.exit16.i.i, label %bb.d

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic.exit16.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic.exit14.i.i
  %i.aa = icmp ne ptr %i.r, %2
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ac = load i8, ptr %i.r, align 1, !noalias !24909, !noundef !14
  %i.ad = shl nuw nsw i32 %i.g, 18
  %i.ae = and i32 %i.ad, 1835008
  %i.af = shl nuw nsw i32 %i.w, 6
  %i.ag = and i8 %i.ac, 63
  %i.ah = zext nneg i8 %i.ag to i32
  %i.ai = or disjoint i32 %i.af, %i.ah
  %i.aj = or disjoint i32 %i.ai, %i.ae
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic.exit12.i.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic.exit16.i.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic.exit14.i.i
  %.sroa.0.0.ph = phi ptr [ %i.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic.exit12.i.i ], [ %i.r, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic.exit14.i.i ], [ %i.ab, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic.exit16.i.i ], [ %i.c, %bb.c ] ; 3 uses
  %spec.select.i.ph = phi i32 [ %i.n, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic.exit12.i.i ], [ %i.y, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic.exit14.i.i ], [ %i.aj, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic.exit16.i.i ], [ %i.p, %bb.c ]
  %i.ak = ptrtoint ptr %2 to i64                  ; 2 uses
  %i.al = ptrtoint ptr %.sroa.0.0.ph to i64
  %i.am = sub nuw i64 %i.ak, %i.al                ; 2 uses
  %i.an = lshr i64 %i.am, 2
  %i.ao = and i64 %i.am, 3
  %.not.i8 = icmp ne i64 %i.ao, 0
  %i.ap = zext i1 %.not.i8 to i64
  %.sroa.0.0.i = add nuw nsw i64 %i.an, %i.ap
  %i.aq = tail call i64 @llvm.umax.i64(i64 %.sroa.0.0.i, i64 3) ; 2 uses
  %.sroa.0.0.i9 = add nuw nsw i64 %i.aq, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %.sroa.0.0.i9, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
  %i.ar = load i64, ptr %i.a, align 8, !range !28, !noundef !14
  %i.as = trunc nuw i64 %i.ar to i1
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.au = load i64, ptr %i.at, align 8, !range !60, !noundef !14 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.as, label %bb.e, label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsoTR8nlGN3X_18ty_python_semantic.exit, !prof !16

bb.e:                                             ; preds = %bb.d
  %i.aw = load i64, ptr %i.av, align 8
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.au, i64 %i.aw) #31
  unreachable

_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %bb.d
  %i.ax = load ptr, ptr %i.av, align 8, !nonnull !14, !noundef !14 ; 2 uses
  %i.ay = icmp ult i64 %i.aq, %i.au
  tail call void @llvm.assume(i1 %i.ay)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i32 %spec.select.i.ph, ptr %i.ax, align 4
  store i64 %i.au, ptr %i.b, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.ax, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24910)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24911)
  %.not.i14.i.i = icmp eq ptr %.sroa.0.0.ph, %2
  br i1 %.not.i14.i.i, label %_RNvXNtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB4_3VeccEINtB2_10SpecExtendcNtNtNtCs4NRVxsYgnAr_4core3str4iter5CharsE11spec_extendCsoTR8nlGN3X_18ty_python_semantic.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsoTR8nlGN3X_18ty_python_semantic.exit, %.noexc
  %i.az = phi i64 [ %i.ct, %.noexc ], [ 1, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsoTR8nlGN3X_18ty_python_semantic.exit ] ; 5 uses
  %.sroa.0.015.i.i = phi ptr [ %.sroa.0.1.ph.i.i, %.noexc ], [ %.sroa.0.0.ph, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsoTR8nlGN3X_18ty_python_semantic.exit ] ; 5 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0.015.i.i, i64 1 ; 3 uses
  %i.bb = load i8, ptr %.sroa.0.015.i.i, align 1, !noalias !24912, !noundef !14 ; 5 uses
  %i.bc = icmp sgt i8 %i.bb, -1
  br i1 %i.bc, label %bb.f, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic.exit12.i.i.i.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic.exit12.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.bd = and i8 %i.bb, 31
  %i.be = zext nneg i8 %i.bd to i32               ; 3 uses
  %i.bf = icmp ne ptr %i.ba, %2
  call void @llvm.assume(i1 %i.bf)
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.0.015.i.i, i64 2 ; 3 uses
  %i.bh = load i8, ptr %i.ba, align 1, !noalias !24912, !noundef !14
  %i.bi = shl nuw nsw i32 %i.be, 6
  %i.bj = and i8 %i.bh, 63
  %i.bk = zext nneg i8 %i.bj to i32               ; 2 uses
  %i.bl = or disjoint i32 %i.bi, %i.bk
  %i.bm = icmp samesign ugt i8 %i.bb, -33
  br i1 %i.bm, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic.exit14.i.i.i.i, label %bb.g

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.bn = zext nneg i8 %i.bb to i32
  br label %bb.g

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic.exit14.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic.exit12.i.i.i.i
  %i.bo = icmp ne ptr %i.bg, %2
  call void @llvm.assume(i1 %i.bo)
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.0.015.i.i, i64 3 ; 3 uses
  %i.bq = load i8, ptr %i.bg, align 1, !noalias !24912, !noundef !14
  %i.br = shl nuw nsw i32 %i.bk, 6
  %i.bs = and i8 %i.bq, 63
  %i.bt = zext nneg i8 %i.bs to i32
  %i.bu = or disjoint i32 %i.br, %i.bt            ; 2 uses
  %i.bv = shl nuw nsw i32 %i.be, 12
  %i.bw = or disjoint i32 %i.bu, %i.bv
  %i.bx = icmp samesign ugt i8 %i.bb, -17
  br i1 %i.bx, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic.exit16.i.i.i.i, label %bb.g

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic.exit16.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic.exit14.i.i.i.i
  %i.by = icmp ne ptr %i.bp, %2
end_hunk_9
begin_hunk_10_@_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapNtNtNtBb_3str4iter15SplitWhitespaceINvMNtCskLngH8kgpZI_15ruff_python_ast4nameNtB1z_4Name3newReEENtNtNtB9_6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic:bb.a
  %i.ae = and i8 %i.ac, 63
  %i.af = zext nneg i8 %i.ae to i32               ; 2 uses
  %i.ag = or disjoint i32 %i.ad, %i.af
  %i.ah = icmp samesign ugt i8 %i.w, -33
  br i1 %i.ah, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic.exit14.i.i.i.i.i.i.i.i.i.i, label %bb.e

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.ai = zext nneg i8 %i.w to i32
  br label %bb.e

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic.exit14.i.i.i.i.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic.exit12.i.i.i.i.i.i.i.i.i.i
  %i.aj = icmp ne ptr %i.ab, %i.i
  call void @llvm.assume(i1 %i.aj)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.t, i64 3 ; 4 uses
  store ptr %i.ak, ptr %i.g, align 8, !alias.scope !25939
  %i.al = load i8, ptr %i.ab, align 1, !noalias !25937, !noundef !14
  %i.am = shl nuw nsw i32 %i.af, 6
  %i.an = and i8 %i.al, 63
  %i.ao = zext nneg i8 %i.an to i32
  %i.ap = or disjoint i32 %i.am, %i.ao            ; 2 uses
  %i.aq = shl nuw nsw i32 %i.z, 12
  %i.ar = or disjoint i32 %i.ap, %i.aq
  %i.as = icmp samesign ugt i8 %i.w, -17
  br i1 %i.as, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic.exit16.i.i.i.i.i.i.i.i.i.i, label %bb.e

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic.exit16.i.i.i.i.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic.exit14.i.i.i.i.i.i.i.i.i.i
  %i.at = icmp ne ptr %i.ak, %i.i
  call void @llvm.assume(i1 %i.at)
  %i.au = getelementptr inbounds nuw i8, ptr %i.t, i64 4 ; 2 uses
  store ptr %i.au, ptr %i.g, align 8, !alias.scope !25940
  %i.av = load i8, ptr %i.ak, align 1, !noalias !25937, !noundef !14
  %i.aw = shl nuw nsw i32 %i.z, 18
  %i.ax = and i32 %i.aw, 1835008
  %i.ay = shl nuw nsw i32 %i.ap, 6
  %i.az = and i8 %i.av, 63
  %i.ba = zext nneg i8 %i.az to i32
  %i.bb = or disjoint i32 %i.ay, %i.ba
  %i.bc = or disjoint i32 %i.bb, %i.ax
  br label %bb.e

bb.e:                                             ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic.exit16.i.i.i.i.i.i.i.i.i.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic.exit14.i.i.i.i.i.i.i.i.i.i, %bb.d, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic.exit12.i.i.i.i.i.i.i.i.i.i
  %i.bd = phi ptr [ %i.ak, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic.exit14.i.i.i.i.i.i.i.i.i.i ], [ %i.au, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic.exit16.i.i.i.i.i.i.i.i.i.i ], [ %i.ab, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic.exit12.i.i.i.i.i.i.i.i.i.i ], [ %i.v, %bb.d ] ; 5 uses
  %.sroa.4.0.i.ph.i.i.i.i.i.i.i.i.i = phi i32 [ %i.ar, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic.exit14.i.i.i.i.i.i.i.i.i.i ], [ %i.bc, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic.exit16.i.i.i.i.i.i.i.i.i.i ], [ %i.ag, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic.exit12.i.i.i.i.i.i.i.i.i.i ], [ %i.ai, %bb.d ] ; 8 uses
  %i.be = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i.i.i.i.i.i, 1114112
  call void @llvm.assume(i1 %i.be)
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = sub i64 %i.bf, %i.u
  %i.bh = add i64 %i.bg, %i.s                     ; 7 uses
  switch i32 %.sroa.4.0.i.ph.i.i.i.i.i.i.i.i.i, label %bb.f [
    i32 32, label %bb.m
    i32 13, label %bb.m
    i32 12, label %bb.m
    i32 11, label %bb.m
    i32 10, label %bb.m
    i32 9, label %bb.m
  ]

bb.f:                                             ; preds = %bb.e
  %i.bi = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i.i.i.i.i.i, 133
  br i1 %i.bi, label %bb.l, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bj = lshr i32 %.sroa.4.0.i.ph.i.i.i.i.i.i.i.i.i, 8
  switch i32 %i.bj, label %bb.l [
    i32 0, label %bb.j
    i32 22, label %bb.h
    i32 32, label %bb.k
    i32 48, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  %i.bk = icmp eq i32 %.sroa.4.0.i.ph.i.i.i.i.i.i.i.i.i, 5760
  %i.bl = zext i1 %i.bk to i8
  br label %_RNvXs3_NtNtCs4NRVxsYgnAr_4core3str7patternNtB7_12IsWhitespaceNtB5_11MultiCharEq7matchesCsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i.i.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.bm = icmp eq i32 %.sroa.4.0.i.ph.i.i.i.i.i.i.i.i.i, 12288
  %i.bn = zext i1 %i.bm to i8
  br label %_RNvXs3_NtNtCs4NRVxsYgnAr_4core3str7patternNtB7_12IsWhitespaceNtB5_11MultiCharEq7matchesCsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i.i.i.i.i

bb.j:                                             ; preds = %bb.g
  %i.bo = and i32 %.sroa.4.0.i.ph.i.i.i.i.i.i.i.i.i, 255
  %i.bp = zext nneg i32 %i.bo to i64
  %i.bq = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCs4NRVxsYgnAr_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 1, !noalias !25941, !noundef !14
  br label %_RNvXs3_NtNtCs4NRVxsYgnAr_4core3str7patternNtB7_12IsWhitespaceNtB5_11MultiCharEq7matchesCsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i.i.i.i.i

bb.k:                                             ; preds = %bb.g
  %i.bs = and i32 %.sroa.4.0.i.ph.i.i.i.i.i.i.i.i.i, 255
  %i.bt = zext nneg i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCs4NRVxsYgnAr_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.bt
  %i.bv = load i8, ptr %i.bu, align 1, !noalias !25941, !noundef !14
  %i.bw = lshr i8 %i.bv, 1
  br label %_RNvXs3_NtNtCs4NRVxsYgnAr_4core3str7patternNtB7_12IsWhitespaceNtB5_11MultiCharEq7matchesCsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i.i.i.i.i

_RNvXs3_NtNtCs4NRVxsYgnAr_4core3str7patternNtB7_12IsWhitespaceNtB5_11MultiCharEq7matchesCsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i.i.i.i.i: ; preds = %bb.k, %bb.j, %bb.i, %bb.h
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i = phi i8 [ %i.bn, %bb.i ], [ %i.br, %bb.j ], [ %i.bl, %bb.h ], [ %i.bw, %bb.k ]
  %i.bx = trunc i8 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i to i1
  br i1 %i.bx, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_RNvXs3_NtNtCs4NRVxsYgnAr_4core3str7patternNtB7_12IsWhitespaceNtB5_11MultiCharEq7matchesCsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i.i.i.i.i, %bb.g, %bb.f
  %i.by = icmp eq ptr %i.bd, %i.i
  br i1 %i.by, label %._RNvXs8_NtNtCs4NRVxsYgnAr_4core3str7patternINtB5_19MultiCharEqSearcherNtB7_12IsWhitespaceENtB5_8Searcher4nextCsoTR8nlGN3X_18ty_python_semantic.exit.loopexit_crit_edge.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

._RNvXs8_NtNtCs4NRVxsYgnAr_4core3str7patternINtB5_19MultiCharEqSearcherNtB7_12IsWhitespaceENtB5_8Searcher4nextCsoTR8nlGN3X_18ty_python_semantic.exit.loopexit_crit_edge.i.i.i.i.i.i.i: ; preds = %bb.l
  store i64 %i.bh, ptr %i.j, align 8, !alias.scope !25942
  br label %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalNtB7_12IsWhitespaceE7get_endCsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i.i

bb.m:                                             ; preds = %_RNvXs3_NtNtCs4NRVxsYgnAr_4core3str7patternNtB7_12IsWhitespaceNtB5_11MultiCharEq7matchesCsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i.i.i.i.i, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e
  store i64 %i.bh, ptr %i.j, align 8, !alias.scope !25942
  store i64 %i.bh, ptr %1, align 8, !alias.scope !25927
  br label %select.unfold.i.i.i

_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalNtB7_12IsWhitespaceE7get_endCsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i.i: ; preds = %._RNvXs8_NtNtCs4NRVxsYgnAr_4core3str7patternINtB5_19MultiCharEqSearcherNtB7_12IsWhitespaceENtB5_8Searcher4nextCsoTR8nlGN3X_18ty_python_semantic.exit.loopexit_crit_edge.i.i.i.i.i.i.i, %bb.c
  %.lcssa1629.i.i.i = phi i64 [ %i.bh, %._RNvXs8_NtNtCs4NRVxsYgnAr_4core3str7patternINtB5_19MultiCharEqSearcherNtB7_12IsWhitespaceENtB5_8Searcher4nextCsoTR8nlGN3X_18ty_python_semantic.exit.loopexit_crit_edge.i.i.i.i.i.i.i ], [ %.lcssa1630.i.i.i, %bb.c ]
  %i.bz = phi ptr [ %i.bd, %._RNvXs8_NtNtCs4NRVxsYgnAr_4core3str7patternINtB5_19MultiCharEqSearcherNtB7_12IsWhitespaceENtB5_8Searcher4nextCsoTR8nlGN3X_18ty_python_semantic.exit.loopexit_crit_edge.i.i.i.i.i.i.i ], [ %i.o, %bb.c ]
  store i8 1, ptr %i.e, align 1, !alias.scope !25943
  %.not.i.i.i.i.i.i = icmp ne i64 %.pre2.i.i.i.i.i.i, %.pre.i.i.i25.i.i.i
  %or.cond.not.i.i.i.i.i.i = select i1 %i.m, i1 true, i1 %.not.i.i.i.i.i.i
  br i1 %or.cond.not.i.i.i.i.i.i, label %select.unfold.i.i.i, label %bb.s

select.unfold.i.i.i:                              ; preds = %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalNtB7_12IsWhitespaceE7get_endCsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i.i, %bb.m
  %.lcssa1628.i.i.i = phi i64 [ %i.bh, %bb.m ], [ %.lcssa1629.i.i.i, %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalNtB7_12IsWhitespaceE7get_endCsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i.i ]
  %i.ca = phi ptr [ %i.bd, %bb.m ], [ %i.bz, %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalNtB7_12IsWhitespaceE7get_endCsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i.i ]
  %.pre.i.i.i24.i.i.i = phi i64 [ %i.bh, %bb.m ], [ %.pre.i.i.i25.i.i.i, %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalNtB7_12IsWhitespaceE7get_endCsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i.i ]
  %i.cb = phi i8 [ 0, %bb.m ], [ 1, %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalNtB7_12IsWhitespaceE7get_endCsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i.i ]
  %.pn33.i.i.i = phi i64 [ %i.s, %bb.m ], [ %.pre2.i.i.i.i.i.i, %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalNtB7_12IsWhitespaceE7get_endCsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i.i ]
  %.sroa.4.1.i.i.i.i.i = sub nuw i64 %.pn33.i.i.i, %.pre.i.i.i25.i.i.i ; 5 uses
  %.sroa.0.1.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 %.pre.i.i.i25.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !25926
  store ptr %.sroa.0.1.i.i.i.i.i, ptr %i.b, align 8, !noalias !25944
  store i64 %.sroa.4.1.i.i.i.i.i, ptr %i.n, align 8, !noalias !25944
  %i.cc = call noundef zeroext i1 @_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNtNtBb_3str10IsNotEmptyINtB7_5FnMutTRReEE8call_mutCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b), !noalias !25945
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !25926
  br i1 %i.cc, label %bb.n, label %bb.b

bb.n:                                             ; preds = %select.unfold.i.i.i
  %.sroa.0.1.i.i.i.i.i.le = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 %.pre.i.i.i25.i.i.i ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !25925
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.cd = icmp ult i64 %.sroa.4.1.i.i.i.i.i, 17
  br i1 %i.cd, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ce = call { ptr, i64 } @_RNvMNtNtCsj8vhLppEnlJ_8char_str4repr11heap_bufferNtB2_10HeapBuffer9new_exact(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.1.i.i.i.i.i.le, i64 noundef %.sroa.4.1.i.i.i.i.i), !noalias !25946 ; 2 uses
  %i.cf = extractvalue { ptr, i64 } %i.ce, 0      ; 2 uses
  %i.cg = icmp eq ptr %i.cf, null
  br i1 %i.cg, label %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr14from_exact_str.exit.thread.i.i, label %bb.q

_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr14from_exact_str.exit.thread.i.i: ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.r

bb.p:                                             ; preds = %bb.n
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.a, i8 0, i64 15, i1 false), !noalias !25947
  %i.ch = trunc nuw nsw i64 %.sroa.4.1.i.i.i.i.i to i8
  %i.ci = or disjoint i8 %i.ch, -64
  %.15..15..15..15..15..15..15..15..15..15..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 15
  store i8 %i.ci, ptr %.15..15..15..15..15..15..15..15..15..15..sroa_idx, align 1, !noalias !25947
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.a, ptr nonnull readonly align 1 %.sroa.0.1.i.i.i.i.i.le, i64 %.sroa.4.1.i.i.i.i.i, i1 false), !noalias !25946
  %.0..0..0..0..0..0..0..sroa.02.0.copyload3.i.i = load ptr, ptr %i.a, align 8, !noalias !25948
  %.8..8..8..8..8..8..8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.8..8..8..8..8..8..8..sroa.6.0.copyload5.i.i = load i64, ptr %.8..8..8..8..8..8..8..sroa_idx, align 8, !noalias !25948
  br label %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr14from_exact_str.exit.i.i

bb.q:                                             ; preds = %bb.o
  %i.cj = extractvalue { ptr, i64 } %i.ce, 1
  br label %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr14from_exact_str.exit.i.i

_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr14from_exact_str.exit.i.i: ; preds = %bb.q, %bb.p
  %.sroa.02.0.i.i = phi ptr [ %.0..0..0..0..0..0..0..sroa.02.0.copyload3.i.i, %bb.p ], [ %i.cf, %bb.q ]
  %.sroa.6.0.i.i = phi i64 [ %.8..8..8..8..8..8..8..sroa.6.0.copyload5.i.i, %bb.p ], [ %i.cj, %bb.q ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ck = icmp ugt i64 %.sroa.6.0.i.i, -72057594037927937
  br i1 %i.ck, label %bb.r, label %_RNvYINvMNtCskLngH8kgpZI_15ruff_python_ast4nameNtB6_4Name3newReEINtNtNtCs4NRVxsYgnAr_4core3ops8function5FnMutTBW_EE8call_mutCsoTR8nlGN3X_18ty_python_semantic.exit, !prof !63

bb.r:                                             ; preds = %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr14from_exact_str.exit.i.i, %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr14from_exact_str.exit.thread.i.i
  call void @_RINvNvXsQ_Csj8vhLppEnlJ_8char_strINtNtCs4NRVxsYgnAr_4core6result6ResultppENtB8_13UnwrapWithMsg15unwrap_with_msg17do_panic_with_msgNtNtNtB8_6errors13reserve_error12ReserveErrorEB8_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #31, !noalias !25949
  unreachable

_RNvYINvMNtCskLngH8kgpZI_15ruff_python_ast4nameNtB6_4Name3newReEINtNtNtCs4NRVxsYgnAr_4core3ops8function5FnMutTBW_EE8call_mutCsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr14from_exact_str.exit.i.i
  store ptr %.sroa.02.0.i.i, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.6.0.i.i, ptr %.sroa.4.0..sroa_idx, align 8
  br label %bb.t

bb.s:                                             ; preds = %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalNtB7_12IsWhitespaceE7get_endCsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !25925
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 15
  store i8 -1, ptr %i.cl, align 1
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %_RNvYINvMNtCskLngH8kgpZI_15ruff_python_ast4nameNtB6_4Name3newReEINtNtNtCs4NRVxsYgnAr_4core3ops8function5FnMutTBW_EE8call_mutCsoTR8nlGN3X_18ty_python_semantic.exit
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapNtNtNtBb_3str4iter5CharsNCNvNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types9iterationNtB1t_4Type21try_iterate_with_mode22non_async_special_cases_0ENtNtNtB9_6traits8iterator8Iterator4nextB1v_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 4 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 13 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25977)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25978)
  %i.c = load ptr, ptr %1, align 8, !alias.scope !25979, !nonnull !14, !noundef !14 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !25979, !nonnull !14, !noundef !14 ; 4 uses
  %.not.i = icmp eq ptr %i.c, %i.e
  br i1 %.not.i, label %_RNvXNtNtCs4NRVxsYgnAr_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator4next.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 3 uses
  store ptr %i.f, ptr %1, align 8, !alias.scope !25979
  %i.g = load i8, ptr %i.c, align 1, !noalias !25980, !noundef !14 ; 5 uses
  %i.h = icmp sgt i8 %i.g, -1
  br i1 %i.h, label %.thread, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic.exit12.i.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic.exit12.i.i: ; preds = %bb.b
  %i.i = and i8 %i.g, 31
  %i.j = zext nneg i8 %i.i to i32                 ; 3 uses
  %i.k = icmp ne ptr %i.f, %i.e
  tail call void @llvm.assume(i1 %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 2 ; 3 uses
  store ptr %i.l, ptr %1, align 8, !alias.scope !25981
  %i.m = load i8, ptr %i.f, align 1, !noalias !25980, !noundef !14
  %i.n = shl nuw nsw i32 %i.j, 6
  %i.o = and i8 %i.m, 63
  %i.p = zext nneg i8 %i.o to i32                 ; 2 uses
  %i.q = or disjoint i32 %i.n, %i.p
  %i.r = icmp samesign ugt i8 %i.g, -33
  br i1 %i.r, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic.exit14.i.i, label %bb.c

.thread:                                          ; preds = %bb.b
  %i.s = zext nneg i8 %i.g to i32
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val7 = load ptr, ptr %i.t, align 8, !nonnull !14, !noundef !14
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val28 = load ptr, ptr %i.u, align 8, !nonnull !14, !align !18, !noundef !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !25982
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !25983
  br label %_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr3new.exit.thread.i.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic.exit14.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic.exit12.i.i
  %i.v = icmp ne ptr %i.l, %i.e
  tail call void @llvm.assume(i1 %i.v)
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 3 ; 3 uses
  store ptr %i.w, ptr %1, align 8, !alias.scope !25984
  %i.x = load i8, ptr %i.l, align 1, !noalias !25980, !noundef !14
  %i.y = shl nuw nsw i32 %i.p, 6
  %i.z = and i8 %i.x, 63
  %i.aa = zext nneg i8 %i.z to i32
  %i.ab = or disjoint i32 %i.y, %i.aa             ; 2 uses
  %i.ac = shl nuw nsw i32 %i.j, 12
  %i.ad = or disjoint i32 %i.ab, %i.ac
  %i.ae = icmp samesign ugt i8 %i.g, -17
  br i1 %i.ae, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic.exit16.i.i, label %bb.c

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic.exit16.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic.exit14.i.i
  %i.af = icmp ne ptr %i.w, %i.e
  tail call void @llvm.assume(i1 %i.af)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store ptr %i.ag, ptr %1, align 8, !alias.scope !25985
  %i.ah = load i8, ptr %i.w, align 1, !noalias !25980, !noundef !14
  %i.ai = shl nuw nsw i32 %i.j, 18
  %i.aj = and i32 %i.ai, 1835008
  %i.ak = shl nuw nsw i32 %i.ab, 6
  %i.al = and i8 %i.ah, 63
  %i.am = zext nneg i8 %i.al to i32
  %i.an = or disjoint i32 %i.ak, %i.am
  %i.ao = or disjoint i32 %i.an, %i.aj
  br label %bb.c

bb.c:                                             ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic.exit12.i.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic.exit16.i.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic.exit14.i.i
  %spec.select.i.ph = phi i32 [ %i.ad, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic.exit14.i.i ], [ %i.ao, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic.exit16.i.i ], [ %i.q, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic.exit12.i.i ] ; 8 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val = load ptr, ptr %i.ap, align 8, !nonnull !14, !noundef !14 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val2 = load ptr, ptr %i.aq, align 8, !nonnull !14, !align !18, !noundef !14 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !25986
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !25987
  store i32 0, ptr %i.a, align 4, !noalias !25987
  %i.ar = icmp samesign ult i32 %spec.select.i.ph, 128
  %.sink21.i.sroa.gep.i = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 3 uses
  %.sink21.i.sroa.gep3.i = getelementptr inbounds nuw i8, ptr %i.a, i64 2 ; 2 uses
  br i1 %i.ar, label %_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr3new.exit.thread.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.as = icmp samesign ult i32 %spec.select.i.ph, 2048
  %i.at = trunc i32 %spec.select.i.ph to i8
  %i.au = and i8 %i.at, 63
  %i.av = or disjoint i8 %i.au, -128              ; 2 uses
  %i.aw = lshr i32 %spec.select.i.ph, 6
  %i.ax = trunc i32 %i.aw to i8                   ; 2 uses
  %i.ay = and i8 %i.ax, 63
  %i.az = or disjoint i8 %i.ay, -128              ; 2 uses
  %i.ba = lshr i32 %spec.select.i.ph, 12
  %i.bb = trunc i32 %i.ba to i8                   ; 2 uses
  %i.bc = and i8 %i.bb, 63
  %i.bd = or disjoint i8 %i.bc, -128
  %i.be = lshr i32 %spec.select.i.ph, 18
  %i.bf = trunc nuw nsw i32 %i.be to i8
  %i.bg = or disjoint i8 %i.bf, -16
  br i1 %i.as, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bh = or disjoint i8 %i.ax, -64
  store i8 %i.bh, ptr %i.a, align 4, !alias.scope !25988, !noalias !25987
  br label %_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr3new.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.bi = icmp samesign ult i32 %spec.select.i.ph, 65536
  br i1 %i.bi, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bj = or disjoint i8 %i.bb, -32
  store i8 %i.bj, ptr %i.a, align 4, !alias.scope !25988, !noalias !25987
  store i8 %i.az, ptr %.sink21.i.sroa.gep.i, align 1, !alias.scope !25988, !noalias !25987
  br label %_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr3new.exit.i.i

bb.h:                                             ; preds = %bb.f
  store i8 %i.bg, ptr %i.a, align 4, !alias.scope !25988, !noalias !25987
  store i8 %i.bd, ptr %.sink21.i.sroa.gep.i, align 1, !alias.scope !25988, !noalias !25987
  store i8 %i.az, ptr %.sink21.i.sroa.gep3.i, align 2, !alias.scope !25988, !noalias !25987
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 %i.av, ptr %i.bk, align 1, !alias.scope !25988, !noalias !25987
  %.sroa.015.0.copyload.i.i.i.i = load i32, ptr %i.a, align 4, !alias.scope !25989, !noalias !25987
  br label %_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr3new.exit.thread.i.i

_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr3new.exit.thread.i.i: ; preds = %.thread, %bb.h, %bb.c
  %.val214 = phi ptr [ %.val2, %bb.h ], [ %.val2, %bb.c ], [ %.val28, %.thread ]
  %.val12 = phi ptr [ %.val, %bb.h ], [ %.val, %bb.c ], [ %.val7, %.thread ]
  %.sroa.02.0.i.i.ph.in.i.i = phi i32 [ %.sroa.015.0.copyload.i.i.i.i, %bb.h ], [ %spec.select.i.ph, %bb.c ], [ %i.s, %.thread ]
  %.sroa.0.0.i.i.ph.i.i = phi i64 [ -4323455642275676160, %bb.h ], [ -4539628424389459968, %bb.c ], [ -4539628424389459968, %.thread ]
  %.sroa.02.0.i.i.ph.i.i = zext i32 %.sroa.02.0.i.i.ph.in.i.i to i64
  br label %_RNCNvNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types9iterationNtB8_4Type21try_iterate_with_mode22non_async_special_cases_0Ba_.exit

_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr3new.exit.i.i: ; preds = %bb.g, %bb.e
  %.sink21.i.sroa.phi.i = phi ptr [ %.sink21.i.sroa.gep.i, %bb.e ], [ %.sink21.i.sroa.gep3.i, %bb.g ]
  %.sroa.0.05.i.ph.ph.i.i = phi i64 [ 2, %bb.e ], [ 3, %bb.g ] ; 2 uses
  store i8 %i.av, ptr %.sink21.i.sroa.phi.i, align 1, !alias.scope !25988, !noalias !25987
  %i.bl = shl nuw nsw i64 %.sroa.0.05.i.ph.ph.i.i, 56
  %i.bm = or disjoint i64 %i.bl, -4611686018427387904
  %.sroa.019.0.copyload.i.i.i.i = load i16, ptr %i.a, align 4, !alias.scope !25989, !noalias !25987
  %i.bn = zext i16 %.sroa.019.0.copyload.i.i.i.i to i64
  %i.bo = add nsw i64 %.sroa.0.05.i.ph.ph.i.i, -2 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bo
  %.sroa.021.0.copyload.i.i.i.i = load i16, ptr %i.bp, align 1, !alias.scope !25989, !noalias !25987
  %i.bq = zext i16 %.sroa.021.0.copyload.i.i.i.i to i64
  %i.br = shl nuw nsw i64 %i.bo, 3
  %i.bs = shl nuw nsw i64 %i.bq, %i.br
  %i.bt = or i64 %i.bs, %i.bn
  br label %_RNCNvNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types9iterationNtB8_4Type21try_iterate_with_mode22non_async_special_cases_0Ba_.exit

_RNCNvNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types9iterationNtB8_4Type21try_iterate_with_mode22non_async_special_cases_0Ba_.exit: ; preds = %_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr3new.exit.thread.i.i, %_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr3new.exit.i.i
  %.val213 = phi ptr [ %.val214, %_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr3new.exit.thread.i.i ], [ %.val2, %_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr3new.exit.i.i ]
  %.val11 = phi ptr [ %.val12, %_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr3new.exit.thread.i.i ], [ %.val, %_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr3new.exit.i.i ]
  %.sroa.0.0.i.i20.i.i = phi i64 [ %.sroa.0.0.i.i.ph.i.i, %_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr3new.exit.thread.i.i ], [ %i.bm, %_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr3new.exit.i.i ]
  %.sroa.02.0.i.i19.i.i = phi i64 [ %.sroa.02.0.i.i.ph.i.i, %_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr3new.exit.thread.i.i ], [ %i.bt, %_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr3new.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !25987
  store i64 %.sroa.02.0.i.i19.i.i, ptr %i.b, align 8, !noalias !25986
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 0, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i, align 8, !noalias !25986
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %.sroa.0.0.i.i20.i.i, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i, align 8, !noalias !25986
  call void @_RINvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB7_4Type14string_literalNtCsg7m2K3K1Fzf_11compact_str13CompactStringEB9_(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %0, ptr noundef nonnull %.val11, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %.val213, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !25986
  br label %bb.i

_RNvXNtNtCs4NRVxsYgnAr_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator4next.exit: ; preds = %bb.a
  store i32 -1, ptr %0, align 4
  br label %bb.i

bb.i:                                             ; preds = %_RNvXNtNtCs4NRVxsYgnAr_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator4next.exit, %_RNCNvNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types9iterationNtB8_4Type21try_iterate_with_mode22non_async_special_cases_0Ba_.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB7_3VecINtCs5e9M2GLoJMY_8indexmap6BucketNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameuEEINtB5_10SpecExtendRBT_INtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterBT_EE11spec_extendCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25998)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25999)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !25998
  store ptr %1, ptr %i.c, align 8, !noalias !26000
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %2, ptr %i.d, align 8, !noalias !26000
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !26000
  call void @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterINtCs5e9M2GLoJMY_8indexmap6BucketNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameuEEENtNtNtB8_6traits8iterator8Iterator9size_hintCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.c), !noalias !26000
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load i64, ptr %i.e, align 8, !range !28, !noalias !26000, !noundef !14
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.h = load i64, ptr %i.g, align 8, !noalias !26000 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !26000
  %i.i = trunc nuw i64 %i.f to i1
  br i1 %i.i, label %bb.b, label %bb.d, !prof !15

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !26001, !noundef !14 ; 3 uses
  %i.l = load i64, ptr %0, align 8, !range !24, !alias.scope !26001, !noundef !14
  %i.m = sub i64 %i.l, %i.k
  %i.n = icmp ugt i64 %i.h, %i.m
  br i1 %i.n, label %bb.c, label %_RNvXs_NtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB6_3VecINtCs5e9M2GLoJMY_8indexmap6BucketNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameuEEINtB4_10SpecExtendBS_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6cloned6ClonedINtNtNtB2F_5slice4iter4IterBS_EEE11spec_extendCsoTR8nlGN3X_18ty_python_semantic.exit, !prof !16

bb.c:                                             ; preds = %bb.b
  call void @_RINvNvMs2_NtCscdodAO9FK5_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.k, i64 noundef %i.h, i64 noundef 8, i64 noundef 24)
  %.pre.i.i = load i64, ptr %i.j, align 8, !alias.scope !26000
  br label %_RNvXs_NtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB6_3VecINtCs5e9M2GLoJMY_8indexmap6BucketNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameuEEINtB4_10SpecExtendBS_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6cloned6ClonedINtNtNtB2F_5slice4iter4IterBS_EEE11spec_extendCsoTR8nlGN3X_18ty_python_semantic.exit

bb.d:                                             ; preds = %bb.a
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @4, ptr noundef nonnull inttoptr (i64 35 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #31, !noalias !26000
  unreachable

_RNvXs_NtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB6_3VecINtCs5e9M2GLoJMY_8indexmap6BucketNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameuEEINtB4_10SpecExtendBS_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6cloned6ClonedINtNtNtB2F_5slice4iter4IterBS_EEE11spec_extendCsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %bb.b, %bb.c
  %i.o = phi i64 [ %i.k, %bb.b ], [ %.pre.i.i, %bb.c ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !26000, !nonnull !14, !noundef !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !26002
  store ptr %i.j, ptr %i.a, align 8, !noalias !26000
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.o, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !26000
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.q, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !26000
  call void @_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6clonedINtB5_6ClonedINtNtNtBb_5slice4iter4IterINtCs5e9M2GLoJMY_8indexmap6BucketNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameuEEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvB2M_8for_each4callB1s_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB42_3VecB1s_E14extend_trustedBP_E0E0ECsoTR8nlGN3X_18ty_python_semantic(ptr noundef nonnull %1, ptr noundef %2, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !noalias !26003
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !26002
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !25998
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB7_3VecINtCs5e9M2GLoJMY_8indexmap6BucketNtNtCsoTR8nlGN3X_18ty_python_semantic5place20ReachableLoopBindinguEEINtB5_10SpecExtendRBT_INtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterBT_EE11spec_extendB1u_(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26012)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26013)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !26012
  store ptr %1, ptr %i.c, align 8, !noalias !26014
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %2, ptr %i.d, align 8, !noalias !26014
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !26014
  call void @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterINtCs5e9M2GLoJMY_8indexmap6BucketNtNtCsoTR8nlGN3X_18ty_python_semantic5place20ReachableLoopBindinguEEENtNtNtB8_6traits8iterator8Iterator9size_hintB22_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.c), !noalias !26014
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load i64, ptr %i.e, align 8, !range !28, !noalias !26014, !noundef !14
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.h = load i64, ptr %i.g, align 8, !noalias !26014 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !26014
  %i.i = trunc nuw i64 %i.f to i1
  br i1 %i.i, label %bb.b, label %bb.d, !prof !15

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !26015, !noundef !14 ; 3 uses
  %i.l = load i64, ptr %0, align 8, !range !24, !alias.scope !26015, !noundef !14
  %i.m = sub i64 %i.l, %i.k
  %i.n = icmp ugt i64 %i.h, %i.m
  br i1 %i.n, label %bb.c, label %_RNvXs_NtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB6_3VecINtCs5e9M2GLoJMY_8indexmap6BucketNtNtCsoTR8nlGN3X_18ty_python_semantic5place20ReachableLoopBindinguEEINtB4_10SpecExtendBS_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6cloned6ClonedINtNtNtB2Z_5slice4iter4IterBS_EEE11spec_extendB1t_.exit, !prof !16

bb.c:                                             ; preds = %bb.b
  call void @_RINvNvMs2_NtCscdodAO9FK5_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.k, i64 noundef %i.h, i64 noundef 8, i64 noundef 24)
  %.pre.i.i = load i64, ptr %i.j, align 8, !alias.scope !26014
  br label %_RNvXs_NtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB6_3VecINtCs5e9M2GLoJMY_8indexmap6BucketNtNtCsoTR8nlGN3X_18ty_python_semantic5place20ReachableLoopBindinguEEINtB4_10SpecExtendBS_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6cloned6ClonedINtNtNtB2Z_5slice4iter4IterBS_EEE11spec_extendB1t_.exit

bb.d:                                             ; preds = %bb.a
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @4, ptr noundef nonnull inttoptr (i64 35 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #31, !noalias !26014
  unreachable

_RNvXs_NtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB6_3VecINtCs5e9M2GLoJMY_8indexmap6BucketNtNtCsoTR8nlGN3X_18ty_python_semantic5place20ReachableLoopBindinguEEINtB4_10SpecExtendBS_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6cloned6ClonedINtNtNtB2Z_5slice4iter4IterBS_EEE11spec_extendB1t_.exit: ; preds = %bb.b, %bb.c
  %i.o = phi i64 [ %i.k, %bb.b ], [ %.pre.i.i, %bb.c ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !26014, !nonnull !14, !noundef !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !26016
  store ptr %i.j, ptr %i.a, align 8, !noalias !26014
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.o, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !26014
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.q, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !26014
  call void @_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6clonedINtB5_6ClonedINtNtNtBb_5slice4iter4IterINtCs5e9M2GLoJMY_8indexmap6BucketNtNtCsoTR8nlGN3X_18ty_python_semantic5place20ReachableLoopBindinguEEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvB36_8for_each4callB1s_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB4m_3VecB1s_E14extend_trustedBP_E0E0EB23_(ptr noundef nonnull %1, ptr noundef %2, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !noalias !26017
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !26016
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !26012
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB7_3VecINtCs5e9M2GLoJMY_8indexmap6BucketNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeuEEINtB5_10SpecExtendRBT_INtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterBT_EE11spec_extendB1u_(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26026)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26027)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !26026
  store ptr %1, ptr %i.c, align 8, !noalias !26028
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %2, ptr %i.d, align 8, !noalias !26028
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !26028
  call void @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterINtCs5e9M2GLoJMY_8indexmap6BucketNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeuEEENtNtNtB8_6traits8iterator8Iterator9size_hintB22_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.c), !noalias !26028
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load i64, ptr %i.e, align 8, !range !28, !noalias !26028, !noundef !14
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.h = load i64, ptr %i.g, align 8, !noalias !26028 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !26028
  %i.i = trunc nuw i64 %i.f to i1
  br i1 %i.i, label %bb.b, label %bb.d, !prof !15

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !26029, !noundef !14 ; 3 uses
  %i.l = load i64, ptr %0, align 8, !range !24, !alias.scope !26029, !noundef !14
  %i.m = sub i64 %i.l, %i.k
  %i.n = icmp ugt i64 %i.h, %i.m
  br i1 %i.n, label %bb.c, label %_RNvXs_NtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB6_3VecINtCs5e9M2GLoJMY_8indexmap6BucketNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeuEEINtB4_10SpecExtendBS_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6cloned6ClonedINtNtNtB2I_5slice4iter4IterBS_EEE11spec_extendB1t_.exit, !prof !16

bb.c:                                             ; preds = %bb.b
  call void @_RINvNvMs2_NtCscdodAO9FK5_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.k, i64 noundef %i.h, i64 noundef 8, i64 noundef 24)
  %.pre.i.i = load i64, ptr %i.j, align 8, !alias.scope !26028
  br label %_RNvXs_NtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB6_3VecINtCs5e9M2GLoJMY_8indexmap6BucketNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeuEEINtB4_10SpecExtendBS_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6cloned6ClonedINtNtNtB2I_5slice4iter4IterBS_EEE11spec_extendB1t_.exit

bb.d:                                             ; preds = %bb.a
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @4, ptr noundef nonnull inttoptr (i64 35 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #31, !noalias !26028
  unreachable

_RNvXs_NtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB6_3VecINtCs5e9M2GLoJMY_8indexmap6BucketNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeuEEINtB4_10SpecExtendBS_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6cloned6ClonedINtNtNtB2I_5slice4iter4IterBS_EEE11spec_extendB1t_.exit: ; preds = %bb.b, %bb.c
  %i.o = phi i64 [ %i.k, %bb.b ], [ %.pre.i.i, %bb.c ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !26028, !nonnull !14, !noundef !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !26030
  store ptr %i.j, ptr %i.a, align 8, !noalias !26028
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.o, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !26028
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.q, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !26028
  call void @_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6clonedINtB5_6ClonedINtNtNtBb_5slice4iter4IterINtCs5e9M2GLoJMY_8indexmap6BucketNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeuEEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvB2P_8for_each4callB1s_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB45_3VecB1s_E14extend_trustedBP_E0E0EB23_(ptr noundef nonnull %1, ptr noundef %2, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !noalias !26031
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !26030
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !26026
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB7_3VecINtCs5e9M2GLoJMY_8indexmap6BucketRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NamebEEINtB5_10SpecExtendRBT_INtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterBT_EE11spec_extendCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26040)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26041)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !26040
  store ptr %1, ptr %i.c, align 8, !noalias !26042
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %2, ptr %i.d, align 8, !noalias !26042
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !26042
  call void @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterINtCs5e9M2GLoJMY_8indexmap6BucketRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NamebEEENtNtNtB8_6traits8iterator8Iterator9size_hintCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.c), !noalias !26042
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load i64, ptr %i.e, align 8, !range !28, !noalias !26042, !noundef !14
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.h = load i64, ptr %i.g, align 8, !noalias !26042 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !26042
  %i.i = trunc nuw i64 %i.f to i1
  br i1 %i.i, label %bb.b, label %bb.d, !prof !15

bb.b:                                             ; preds = %bb.a
end_hunk_10
