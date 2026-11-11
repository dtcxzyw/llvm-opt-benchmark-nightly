Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/candle-rs/original/candle_transformers-745d844d1c694a70.candle_transformers.e469297c722ac0f-cgu.12?download=true
inline.NumInlined: 4444
inline.NumDeleted: 2345
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 97
loop-unroll.NumUnrolled: 104
begin_hunk_0_@_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters5chainINtB5_5ChainINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4ItermEEB10_ENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvB1U_8for_each4callmNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB37_3VecmE14extend_trustedBO_E0E0ECs1dZk1kIfPhr_19candle_transformers:bb.a
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %.sroa.01.0.i.i8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %.val15.i.i.2 = load i32, ptr %i.cd, align 4, !noalias !7801, !noundef !4
  %i.ce = getelementptr [4 x i8], ptr %.sroa.5.0.copyload, i64 %i.bv
  %i.cf = getelementptr i8, ptr %i.ce, i64 8
  store i32 %.val15.i.i.2, ptr %i.cf, align 4, !noalias !7802
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %.sroa.01.0.i.i8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 12
  %.val15.i.i.3 = load i32, ptr %i.ch, align 4, !noalias !7801, !noundef !4
  %i.ci = getelementptr [4 x i8], ptr %.sroa.5.0.copyload, i64 %i.bv
  %i.cj = getelementptr i8, ptr %i.ci, i64 12
  store i32 %.val15.i.i.3, ptr %i.cj, align 4, !noalias !7802
  %i.ck = add i64 %i.bv, 4                        ; 2 uses
  %i.cl = add nuw i64 %.sroa.01.0.i.i8, 4         ; 2 uses
  %i.cm = icmp eq i64 %i.cl, %i.bd
  br i1 %i.cm, label %.loopexit, label %scalar.ph22, !llvm.loop !7793

bb.f:                                             ; preds = %_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4ItermEENtNtNtB9_6traits8iterator8Iterator4folduQNCINvNvB1v_8for_each4callmNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB2J_3VecmE14extend_trustedINtNtB7_5chain5ChainBP_BP_EE0E0ECs1dZk1kIfPhr_19candle_transformers.exit
  %.val6 = load ptr, ptr %1, align 8, !nonnull !4, !align !18, !noundef !4
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val7 = load i64, ptr %i.cn, align 8, !noundef !4
  store i64 %.val7, ptr %.val6, align 8
  br label %bb.g

.loopexit:                                        ; preds = %scalar.ph22.prol.loopexit, %scalar.ph22, %middle.block33, %bb.d
  %storemerge.i = phi i64 [ %.sroa.4.0.copyload, %bb.d ], [ %i.bh, %middle.block33 ], [ %.lcssa.unr, %scalar.ph22.prol.loopexit ], [ %i.ck, %scalar.ph22 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge.i, ptr %.sroa.0.0.copyload, align 8, !noalias !7801
  br label %bb.g

bb.g:                                             ; preds = %.loopexit, %bb.f
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters5chainINtB5_5ChainINtNtNtBb_5slice4iter4IterdEINtNtNtB9_7sources4once4OnceRdEENtNtNtB9_6traits8iterator8Iterator4foldB1U_NCNvMs0_NtNtNtCs1dZk1kIfPhr_19candle_transformers6models16stable_diffusion24euler_ancestral_discreteNtB2N_31EulerAncestralDiscreteScheduler3news5_0EB2T_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !noundef !4 ; 4 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !4, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.a, ptr %i.b, align 8, !noalias !7812
  %i.g = icmp eq ptr %i.d, %i.f
  br i1 %i.g, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4foldRdQNCNvMs0_NtNtNtCs1dZk1kIfPhr_19candle_transformers6models16stable_diffusion24euler_ancestral_discreteNtB1N_31EulerAncestralDiscreteScheduler3news5_0EB1T_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.d to i64
  %i.j = sub nuw i64 %i.h, %i.i
  %i.k = lshr exact i64 %i.j, 3
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %.sroa.04.0.i = phi i64 [ 0, %bb.c ], [ %i.n, %bb.d ] ; 2 uses
  %.sroa.02.0.i = phi ptr [ %1, %bb.c ], [ %i.m, %bb.d ]
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.sroa.04.0.i
  %i.m = call noundef nonnull align 8 ptr @_RNvXs1_NtNtNtCsf3Ta7LF998c_4core3ops8function5implsQNCNvMs0_NtNtNtCs1dZk1kIfPhr_19candle_transformers6models16stable_diffusion24euler_ancestral_discreteNtBW_31EulerAncestralDiscreteScheduler3news5_0INtB7_5FnMutTRdB3n_EE8call_mutB12_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.02.0.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.l) ; 2 uses
  %i.n = add nuw i64 %.sroa.04.0.i, 1             ; 2 uses
  %i.o = icmp eq i64 %i.n, %i.k
  br i1 %i.o, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4foldRdQNCNvMs0_NtNtNtCs1dZk1kIfPhr_19candle_transformers6models16stable_diffusion24euler_ancestral_discreteNtB1N_31EulerAncestralDiscreteScheduler3news5_0EB1T_.exit, label %bb.d

_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4foldRdQNCNvMs0_NtNtNtCs1dZk1kIfPhr_19candle_transformers6models16stable_diffusion24euler_ancestral_discreteNtB1N_31EulerAncestralDiscreteScheduler3news5_0EB1T_.exit: ; preds = %bb.d, %bb.b
  %.sroa.0.0.i = phi ptr [ %1, %bb.b ], [ %i.m, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.e

bb.e:                                             ; preds = %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4foldRdQNCNvMs0_NtNtNtCs1dZk1kIfPhr_19candle_transformers6models16stable_diffusion24euler_ancestral_discreteNtB1N_31EulerAncestralDiscreteScheduler3news5_0EB1T_.exit, %bb.a
  %.sroa.0.0 = phi ptr [ %.sroa.0.0.i, %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4foldRdQNCNvMs0_NtNtNtCs1dZk1kIfPhr_19candle_transformers6models16stable_diffusion24euler_ancestral_discreteNtB1N_31EulerAncestralDiscreteScheduler3news5_0EB1T_.exit ], [ %1, %bb.a ] ; 4 uses
  %i.p = load i64, ptr %0, align 8, !range !5, !noundef !4
  %i.q = trunc nuw i64 %i.p to i1
  br i1 %i.q, label %bb.f, label %_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter7sources4once4OnceRdENtNtNtBa_6traits8iterator8Iterator4foldBS_NCNvMs0_NtNtNtCs1dZk1kIfPhr_19candle_transformers6models16stable_diffusion24euler_ancestral_discreteNtB1J_31EulerAncestralDiscreteScheduler3news5_0EB1P_.exit

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !align !18, !noundef !4 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7813)
  call void @llvm.experimental.noalias.scope.decl(metadata !7814)
  %.not6.i = icmp eq ptr %i.s, null
  br i1 %.not6.i, label %_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter7sources4once4OnceRdENtNtNtBa_6traits8iterator8Iterator4foldBS_NCNvMs0_NtNtNtCs1dZk1kIfPhr_19candle_transformers6models16stable_diffusion24euler_ancestral_discreteNtB1J_31EulerAncestralDiscreteScheduler3news5_0EB1P_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f
  call void @llvm.experimental.noalias.scope.decl(metadata !7815)
  call void @llvm.experimental.noalias.scope.decl(metadata !7816)
  %i.t = load double, ptr %.sroa.0.0, align 8, !alias.scope !7817, !noundef !4
  %i.u = load double, ptr %i.s, align 8, !alias.scope !7818, !noundef !4
  %i.v = fcmp ogt double %i.t, %i.u
  %..i.us.i = select i1 %i.v, ptr %.sroa.0.0, ptr %i.s
  br label %_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter7sources4once4OnceRdENtNtNtBa_6traits8iterator8Iterator4foldBS_NCNvMs0_NtNtNtCs1dZk1kIfPhr_19candle_transformers6models16stable_diffusion24euler_ancestral_discreteNtB1J_31EulerAncestralDiscreteScheduler3news5_0EB1P_.exit

_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter7sources4once4OnceRdENtNtNtBa_6traits8iterator8Iterator4foldBS_NCNvMs0_NtNtNtCs1dZk1kIfPhr_19candle_transformers6models16stable_diffusion24euler_ancestral_discreteNtB1J_31EulerAncestralDiscreteScheduler3news5_0EB1P_.exit: ; preds = %.lr.ph.i, %bb.f, %bb.e
  %.sroa.04.0 = phi ptr [ %.sroa.0.0, %bb.e ], [ %..i.us.i, %.lr.ph.i ], [ %.sroa.0.0, %bb.f ]
  ret ptr %.sroa.04.0
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6clonedINtB5_6ClonedINtNtB7_3rev3RevINtNtNtBb_5slice4iter4IterjEEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvB1M_8for_each4calljNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB2Z_3VecjE14extend_trustedBP_E0E0ECs1dZk1kIfPhr_19candle_transformers(ptr nofree noundef nonnull readnone captures(address) %0, ptr nofree noundef readonly captures(address) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.04.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.45.0.copyload = load i64, ptr %.sroa.45.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %i.b = phi i64 [ %i.e, %.lr.ph.i.i ], [ %.sroa.45.0.copyload, %bb.a ] ; 2 uses
  %.sroa.2.011.i.i = phi ptr [ %i.c, %.lr.ph.i.i ], [ %1, %bb.a ]
  %i.c = getelementptr inbounds i8, ptr %.sroa.2.011.i.i, i64 -8 ; 3 uses
  %.val7.i.i = load i64, ptr %i.c, align 8, !alias.scope !7831, !noalias !7832, !noundef !4
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %.sroa.5.0.copyload, i64 %i.b
  store i64 %.val7.i.i, ptr %i.d, align 8, !noalias !7833
  %i.e = add i64 %i.b, 1                          ; 2 uses
  %i.f = icmp eq ptr %0, %i.c
  br i1 %i.f, label %.loopexit, label %.lr.ph.i.i

.loopexit:                                        ; preds = %.lr.ph.i.i, %bb.a
  %.val6.i.i = phi i64 [ %.sroa.45.0.copyload, %bb.a ], [ %i.e, %.lr.ph.i.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.04.0.copyload) ]
  store i64 %.val6.i.i, ptr %.sroa.04.0.copyload, align 8, !noalias !7832
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6clonedINtB5_6ClonedINtNtB7_4take4TakeINtNtB7_5chain5ChainINtNtB7_7step_by6StepByINtNtB7_4skip4SkipINtNtNtBb_5slice4iter4IterfEEEIB1F_B2j_EEEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvB30_8for_each4callfNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4d_3VecfE14extend_trustedBP_E0E0ECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(80) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.08.0.copyload = load i64, ptr %0, align 8, !alias.scope !7924 ; 9 uses
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.49.0.copyload = load ptr, ptr %.sroa.49.0..sroa_idx, align 8, !alias.scope !7924 ; 10 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !7924 ; 6 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !7924 ; 7 uses
  %.sroa.710.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.710.0.copyload = load i64, ptr %.sroa.710.0..sroa_idx, align 8, !alias.scope !7924 ; 8 uses
  %.sroa.1011.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.1011.0.copyload = load ptr, ptr %.sroa.1011.0..sroa_idx, align 8, !alias.scope !7924 ; 5 uses
  %.sroa.1112.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.sroa.1112.0.copyload = load ptr, ptr %.sroa.1112.0..sroa_idx, align 8, !alias.scope !7924 ; 3 uses
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.12.0.copyload = load i64, ptr %.sroa.12.0..sroa_idx, align 8, !alias.scope !7924 ; 2 uses
  %.sroa.1313.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.1313.0.copyload = load i8, ptr %.sroa.1313.0..sroa_idx, align 8, !alias.scope !7924
  %.sroa.018.0.copyload = load ptr, ptr %1, align 8 ; 2 uses
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.419.0.copyload = load i64, ptr %.sroa.419.0..sroa_idx, align 8 ; 10 uses
  %.sroa.520.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.520.0.copyload = load ptr, ptr %.sroa.520.0..sroa_idx, align 8 ; 6 uses
  %i.a = icmp eq i64 %.sroa.08.0.copyload, 0
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.8.0.copyload = load i8, ptr %.sroa.8.0..sroa_idx, align 8, !alias.scope !7924
  switch i8 %.sroa.8.0.copyload, label %bb.g [
    i8 2, label %_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter7sources7from_fn6FromFnNCINvNvXs6_NtNtBa_8adapters7step_byINtB18_6StepBypEINtB18_10StepByImplpE13spec_try_fold3nthINtNtB1a_4skip4SkipINtNtNtBc_5slice4iter4IterfEEE0ENtNtNtBa_6traits8iterator8Iterator8try_folduQNCINvNvXs_NtB1a_4takeINtB48_4TakepEB3f_8try_fold5checkRfuINtNtNtBc_3ops9try_trait17NeverShortCircuituENCINvMB4W_B4T_10wrap_mut_2uB4Q_NCINvNtB1a_3map8map_foldB4Q_fuNvYfNtNtBc_5clone5Clone5cloneNCINvNvB3f_8for_each4callfNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB7D_3VecfE14extend_trustedINtNtB1a_6cloned6ClonedIB4k_INtNtB1a_5chain5ChainIB1x_B2q_EIB1x_B2J_EEEEE0E0E0E0E0INtNtB4Y_12control_flow11ControlFlowB4T_EECs1dZk1kIfPhr_19candle_transformers.exit.sink.split.i.i.i.i.i.i
    i8 0, label %.peel.begin.i.i.i.i.i
  ]

.peel.begin.i.i.i.i.i:                            ; preds = %bb.b
  %.pre18.i.i.i.i.i.i.i.i.i.i = ptrtoint ptr %.sroa.5.0.copyload to i64 ; 4 uses
  %.not.i.i.i.i.i.peel.i.i.i.i.i = icmp eq i64 %.sroa.6.0.copyload, 0
  br i1 %.not.i.i.i.i.i.peel.i.i.i.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %.peel.begin.i.i.i.i.i
  %i.b = add i64 %.sroa.710.0.copyload, %.sroa.6.0.copyload ; 2 uses
  %i.c = icmp ult i64 %i.b, %.sroa.6.0.copyload
  br i1 %i.c, label %bb.d, label %._crit_edge.i.i.i.i.i.peel.i.i.i.i.i, !prof !7

bb.d:                                             ; preds = %bb.c
  %i.d = add i64 %.sroa.6.0.copyload, -1          ; 2 uses
  %i.e = ptrtoint ptr %.sroa.49.0.copyload to i64
  %i.f = sub nuw i64 %.pre18.i.i.i.i.i.i.i.i.i.i, %i.e
  %i.g = lshr exact i64 %i.f, 2
  %.not.i11.not.i.i.i.i.i.peel.i.i.i.i.i = icmp ult i64 %i.d, %i.g
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %.sroa.49.0.copyload, i64 %i.d
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  br i1 %.not.i11.not.i.i.i.i.i.peel.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.peel.i.i.i.i.i, label %_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter7sources7from_fn6FromFnNCINvNvXs6_NtNtBa_8adapters7step_byINtB18_6StepBypEINtB18_10StepByImplpE13spec_try_fold3nthINtNtB1a_4skip4SkipINtNtNtBc_5slice4iter4IterfEEE0ENtNtNtBa_6traits8iterator8Iterator8try_folduQNCINvNvXs_NtB1a_4takeINtB48_4TakepEB3f_8try_fold5checkRfuINtNtNtBc_3ops9try_trait17NeverShortCircuituENCINvMB4W_B4T_10wrap_mut_2uB4Q_NCINvNtB1a_3map8map_foldB4Q_fuNvYfNtNtBc_5clone5Clone5cloneNCINvNvB3f_8for_each4callfNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB7D_3VecfE14extend_trustedINtNtB1a_6cloned6ClonedIB4k_INtNtB1a_5chain5ChainIB1x_B2q_EIB1x_B2J_EEEEE0E0E0E0E0INtNtB4Y_12control_flow11ControlFlowB4T_EECs1dZk1kIfPhr_19candle_transformers.exit.sink.split.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.peel.i.i.i.i.i:             ; preds = %bb.d, %bb.c
  %i.j = phi ptr [ %i.i, %bb.d ], [ %.sroa.49.0.copyload, %bb.c ] ; 3 uses
  %.sroa.0.0.i.i.i.i.i.peel.i.i.i.i.i = phi i64 [ %.sroa.710.0.copyload, %bb.d ], [ %i.b, %bb.c ] ; 2 uses
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = sub nuw i64 %.pre18.i.i.i.i.i.i.i.i.i.i, %i.k
  %i.m = lshr exact i64 %i.l, 2
  %.not.i14.i.i.i.i.i.peel.i.i.i.i.i = icmp uge i64 %.sroa.0.0.i.i.i.i.i.peel.i.i.i.i.i, %i.m
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %.sroa.0.0.i.i.i.i.i.peel.i.i.i.i.i
  %.not.not.i.i.peel.i.i.i.i.i = icmp eq ptr %i.j, null
  %or.cond.i.i = or i1 %.not.not.i.i.peel.i.i.i.i.i, %.not.i14.i.i.i.i.i.peel.i.i.i.i.i
  br i1 %or.cond.i.i, label %_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter7sources7from_fn6FromFnNCINvNvXs6_NtNtBa_8adapters7step_byINtB18_6StepBypEINtB18_10StepByImplpE13spec_try_fold3nthINtNtB1a_4skip4SkipINtNtNtBc_5slice4iter4IterfEEE0ENtNtNtBa_6traits8iterator8Iterator8try_folduQNCINvNvXs_NtB1a_4takeINtB48_4TakepEB3f_8try_fold5checkRfuINtNtNtBc_3ops9try_trait17NeverShortCircuituENCINvMB4W_B4T_10wrap_mut_2uB4Q_NCINvNtB1a_3map8map_foldB4Q_fuNvYfNtNtBc_5clone5Clone5cloneNCINvNvB3f_8for_each4callfNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB7D_3VecfE14extend_trustedINtNtB1a_6cloned6ClonedIB4k_INtNtB1a_5chain5ChainIB1x_B2q_EIB1x_B2J_EEEEE0E0E0E0E0INtNtB4Y_12control_flow11ControlFlowB4T_EECs1dZk1kIfPhr_19candle_transformers.exit.sink.split.i.i.i.i.i.i, label %bb.f

bb.e:                                             ; preds = %.peel.begin.thread.i.i.i.i.i, %.peel.begin.i.i.i.i.i
  %i.o = phi i64 [ %i.bb, %.peel.begin.thread.i.i.i.i.i ], [ %.sroa.08.0.copyload, %.peel.begin.i.i.i.i.i ] ; 2 uses
  %.sroa.10.0.i.i.i.a = phi i64 [ %i.bd, %.peel.begin.thread.i.i.i.i.i ], [ %.sroa.419.0.copyload, %.peel.begin.i.i.i.i.i ] ; 2 uses
  %.pre18.i.i.i.i.i21.i.i.i.i.i = phi i64 [ %.pre18.i.i.i.i.i12.i.i.i.i.i, %.peel.begin.thread.i.i.i.i.i ], [ %.pre18.i.i.i.i.i.i.i.i.i.i, %.peel.begin.i.i.i.i.i ] ; 2 uses
  %.promoted17.i17.i.i.i.i.i = phi ptr [ %.sink.i.ph.i.i.i.i.i.i, %.peel.begin.thread.i.i.i.i.i ], [ %.sroa.49.0.copyload, %.peel.begin.i.i.i.i.i ] ; 2 uses
  %i.p = ptrtoint ptr %.promoted17.i17.i.i.i.i.i to i64
  %i.q = sub nuw i64 %.pre18.i.i.i.i.i21.i.i.i.i.i, %i.p
  %i.r = lshr exact i64 %i.q, 2
  %.not.i.i.i.i.i.i.peel.i.i.i.i.i = icmp ult i64 %.sroa.710.0.copyload, %i.r
  br i1 %.not.i.i.i.i.i.i.peel.i.i.i.i.i, label %_RNvXNtNtNtCsf3Ta7LF998c_4core4iter7sources7from_fnINtB2_6FromFnNCINvNvXs6_NtNtB6_8adapters7step_byINtB1a_6StepBypEINtB1a_10StepByImplpE13spec_try_fold3nthINtNtB1c_4skip4SkipINtNtNtB8_5slice4iter4IterfEEE0ENtNtNtB6_6traits8iterator8Iterator4nextCs1dZk1kIfPhr_19candle_transformers.exit.thread10.i.i.peel.i.i.i.i.i, label %_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter7sources7from_fn6FromFnNCINvNvXs6_NtNtBa_8adapters7step_byINtB18_6StepBypEINtB18_10StepByImplpE13spec_try_fold3nthINtNtB1a_4skip4SkipINtNtNtBc_5slice4iter4IterfEEE0ENtNtNtBa_6traits8iterator8Iterator8try_folduQNCINvNvXs_NtB1a_4takeINtB48_4TakepEB3f_8try_fold5checkRfuINtNtNtBc_3ops9try_trait17NeverShortCircuituENCINvMB4W_B4T_10wrap_mut_2uB4Q_NCINvNtB1a_3map8map_foldB4Q_fuNvYfNtNtBc_5clone5Clone5cloneNCINvNvB3f_8for_each4callfNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB7D_3VecfE14extend_trustedINtNtB1a_6cloned6ClonedIB4k_INtNtB1a_5chain5ChainIB1x_B2q_EIB1x_B2J_EEEEE0E0E0E0E0INtNtB4Y_12control_flow11ControlFlowB4T_EECs1dZk1kIfPhr_19candle_transformers.exit.sink.split.i.i.i.i.i.i

_RNvXNtNtNtCsf3Ta7LF998c_4core4iter7sources7from_fnINtB2_6FromFnNCINvNvXs6_NtNtB6_8adapters7step_byINtB1a_6StepBypEINtB1a_10StepByImplpE13spec_try_fold3nthINtNtB1c_4skip4SkipINtNtNtB8_5slice4iter4IterfEEE0ENtNtNtB6_6traits8iterator8Iterator4nextCs1dZk1kIfPhr_19candle_transformers.exit.thread10.i.i.peel.i.i.i.i.i: ; preds = %bb.e
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %.promoted17.i17.i.i.i.i.i, i64 %.sroa.710.0.copyload
  br label %bb.f

bb.f:                                             ; preds = %_RNvXNtNtNtCsf3Ta7LF998c_4core4iter7sources7from_fnINtB2_6FromFnNCINvNvXs6_NtNtB6_8adapters7step_byINtB1a_6StepBypEINtB1a_10StepByImplpE13spec_try_fold3nthINtNtB1c_4skip4SkipINtNtNtB8_5slice4iter4IterfEEE0ENtNtNtB6_6traits8iterator8Iterator4nextCs1dZk1kIfPhr_19candle_transformers.exit.thread10.i.i.peel.i.i.i.i.i, %._crit_edge.i.i.i.i.i.peel.i.i.i.i.i
  %i.t = phi i64 [ %i.o, %_RNvXNtNtNtCsf3Ta7LF998c_4core4iter7sources7from_fnINtB2_6FromFnNCINvNvXs6_NtNtB6_8adapters7step_byINtB1a_6StepBypEINtB1a_10StepByImplpE13spec_try_fold3nthINtNtB1c_4skip4SkipINtNtNtB8_5slice4iter4IterfEEE0ENtNtNtB6_6traits8iterator8Iterator4nextCs1dZk1kIfPhr_19candle_transformers.exit.thread10.i.i.peel.i.i.i.i.i ], [ %.sroa.08.0.copyload, %._crit_edge.i.i.i.i.i.peel.i.i.i.i.i ] ; 2 uses
  %.pre18.i.i.i.i.i20.i.i.i.i.i = phi i64 [ %.pre18.i.i.i.i.i21.i.i.i.i.i, %_RNvXNtNtNtCsf3Ta7LF998c_4core4iter7sources7from_fnINtB2_6FromFnNCINvNvXs6_NtNtB6_8adapters7step_byINtB1a_6StepBypEINtB1a_10StepByImplpE13spec_try_fold3nthINtNtB1c_4skip4SkipINtNtNtB8_5slice4iter4IterfEEE0ENtNtNtB6_6traits8iterator8Iterator4nextCs1dZk1kIfPhr_19candle_transformers.exit.thread10.i.i.peel.i.i.i.i.i ], [ %.pre18.i.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.peel.i.i.i.i.i ] ; 2 uses
  %.promoted.i.i18.i.i.i.i.i = phi i64 [ %.sroa.10.0.i.i.i.a, %_RNvXNtNtNtCsf3Ta7LF998c_4core4iter7sources7from_fnINtB2_6FromFnNCINvNvXs6_NtNtB6_8adapters7step_byINtB1a_6StepBypEINtB1a_10StepByImplpE13spec_try_fold3nthINtNtB1c_4skip4SkipINtNtNtB8_5slice4iter4IterfEEE0ENtNtNtB6_6traits8iterator8Iterator4nextCs1dZk1kIfPhr_19candle_transformers.exit.thread10.i.i.peel.i.i.i.i.i ], [ %.sroa.419.0.copyload, %._crit_edge.i.i.i.i.i.peel.i.i.i.i.i ] ; 3 uses
  %.sroa.04.0.ph.i.i.i14.i.i.peel.i.i.i.i.i = phi ptr [ %i.s, %_RNvXNtNtNtCsf3Ta7LF998c_4core4iter7sources7from_fnINtB2_6FromFnNCINvNvXs6_NtNtB6_8adapters7step_byINtB1a_6StepBypEINtB1a_10StepByImplpE13spec_try_fold3nthINtNtB1c_4skip4SkipINtNtNtB8_5slice4iter4IterfEEE0ENtNtNtB6_6traits8iterator8Iterator4nextCs1dZk1kIfPhr_19candle_transformers.exit.thread10.i.i.peel.i.i.i.i.i ], [ %i.n, %._crit_edge.i.i.i.i.i.peel.i.i.i.i.i ] ; 3 uses
  %.val7.i.i.peel.i.i.i.i.i = load float, ptr %.sroa.04.0.ph.i.i.i14.i.i.peel.i.i.i.i.i, align 4, !alias.scope !7925, !noalias !7926, !noundef !4
  %i.u = add i64 %i.t, -1                         ; 2 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %.sroa.520.0.copyload, i64 %.promoted.i.i18.i.i.i.i.i
  store float %.val7.i.i.peel.i.i.i.i.i, ptr %i.v, align 4, !noalias !7927
  %i.w = add i64 %.promoted.i.i18.i.i.i.i.i, 1    ; 3 uses
  %i.x = icmp eq i64 %i.u, 0
  br i1 %i.x, label %.loopexit, label %.peel.next.i.i.preheader.i.i.i

.peel.next.i.i.preheader.i.i.i:                   ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.04.0.ph.i.i.i14.i.i.peel.i.i.i.i.i, i64 4
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = sub nuw i64 %.pre18.i.i.i.i.i20.i.i.i.i.i, %i.z
  %i.ab = lshr exact i64 %i.aa, 2
  %.not.i.i.i.i.i.i.i.i12.i.i.i = icmp ult i64 %.sroa.710.0.copyload, %i.ab
  br i1 %.not.i.i.i.i.i.i.i.i12.i.i.i, label %.lr.ph.i.i.i.preheader, label %_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter7sources7from_fn6FromFnNCINvNvXs6_NtNtBa_8adapters7step_byINtB18_6StepBypEINtB18_10StepByImplpE13spec_try_fold3nthINtNtB1a_4skip4SkipINtNtNtBc_5slice4iter4IterfEEE0ENtNtNtBa_6traits8iterator8Iterator8try_folduQNCINvNvXs_NtB1a_4takeINtB48_4TakepEB3f_8try_fold5checkRfuINtNtNtBc_3ops9try_trait17NeverShortCircuituENCINvMB4W_B4T_10wrap_mut_2uB4Q_NCINvNtB1a_3map8map_foldB4Q_fuNvYfNtNtBc_5clone5Clone5cloneNCINvNvB3f_8for_each4callfNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB7D_3VecfE14extend_trustedINtNtB1a_6cloned6ClonedIB4k_INtNtB1a_5chain5ChainIB1x_B2q_EIB1x_B2J_EEEEE0E0E0E0E0INtNtB4Y_12control_flow11ControlFlowB4T_EECs1dZk1kIfPhr_19candle_transformers.exit.sink.split.i.i.i.i.i.i

.lr.ph.i.i.i.preheader:                           ; preds = %.peel.next.i.i.preheader.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.04.0.ph.i.i.i14.i.i.peel.i.i.i.i.i, i64 4
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %.sroa.710.0.copyload ; 2 uses
  %.val7.i.i.i.i.i.i.i44 = load float, ptr %i.ad, align 4, !alias.scope !7925, !noalias !7926, !noundef !4
  %i.ae = add i64 %i.t, -2                        ; 2 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %.sroa.520.0.copyload, i64 %i.w
  store float %.val7.i.i.i.i.i.i.i44, ptr %i.af, align 4, !noalias !7928
  %i.ag = add i64 %.promoted.i.i18.i.i.i.i.i, 2   ; 2 uses
  %i.ah = icmp eq i64 %i.ae, 0
  br i1 %i.ah, label %.loopexit, label %.peel.next.i.i.i.i.i.lr.ph, !llvm.loop !7879

.peel.next.i.i.i.i.i.lr.ph:                       ; preds = %.lr.ph.i.i.i.preheader
  br label %.peel.next.i.i.i.i.i, !llvm.loop !7879

.peel.next.i.i.i.i.i:                             ; preds = %.peel.next.i.i.i.i.i.lr.ph, %.lr.ph.i.i.i
  %i.ai = phi i64 [ %i.ag, %.peel.next.i.i.i.i.i.lr.ph ], [ %i.at, %.lr.ph.i.i.i ] ; 3 uses
  %i.aj = phi i64 [ %i.ae, %.peel.next.i.i.i.i.i.lr.ph ], [ %i.ar, %.lr.ph.i.i.i ] ; 2 uses
  %i.ak = phi ptr [ %i.ad, %.peel.next.i.i.i.i.i.lr.ph ], [ %i.aq, %.lr.ph.i.i.i ] ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = sub nuw i64 %.pre18.i.i.i.i.i20.i.i.i.i.i, %i.am
  %i.ao = lshr exact i64 %i.an, 2
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp samesign ult i64 %.sroa.710.0.copyload, %i.ao
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i, label %_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter7sources7from_fn6FromFnNCINvNvXs6_NtNtBa_8adapters7step_byINtB18_6StepBypEINtB18_10StepByImplpE13spec_try_fold3nthINtNtB1a_4skip4SkipINtNtNtBc_5slice4iter4IterfEEE0ENtNtNtBa_6traits8iterator8Iterator8try_folduQNCINvNvXs_NtB1a_4takeINtB48_4TakepEB3f_8try_fold5checkRfuINtNtNtBc_3ops9try_trait17NeverShortCircuituENCINvMB4W_B4T_10wrap_mut_2uB4Q_NCINvNtB1a_3map8map_foldB4Q_fuNvYfNtNtBc_5clone5Clone5cloneNCINvNvB3f_8for_each4callfNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB7D_3VecfE14extend_trustedINtNtB1a_6cloned6ClonedIB4k_INtNtB1a_5chain5ChainIB1x_B2q_EIB1x_B2J_EEEEE0E0E0E0E0INtNtB4Y_12control_flow11ControlFlowB4T_EECs1dZk1kIfPhr_19candle_transformers.exit.sink.split.i.i.i.i.i.i, !llvm.loop !7879

.lr.ph.i.i.i:                                     ; preds = %.peel.next.i.i.i.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %.sroa.710.0.copyload ; 2 uses
  %.val7.i.i.i.i.i.i.i = load float, ptr %i.aq, align 4, !alias.scope !7925, !noalias !7926, !noundef !4
  %i.ar = add i64 %i.aj, -1                       ; 2 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %.sroa.520.0.copyload, i64 %i.ai
  store float %.val7.i.i.i.i.i.i.i, ptr %i.as, align 4, !noalias !7928
  %i.at = add i64 %i.ai, 1                        ; 2 uses
  %i.au = icmp eq i64 %i.ar, 0
  br i1 %i.au, label %.lr.ph.i.i.i..loopexit.loopexit40_crit_edge, label %.peel.next.i.i.i.i.i, !llvm.loop !7879

bb.g:                                             ; preds = %bb.b
  %.not.i.i.i.i.i.i.i = icmp eq i64 %.sroa.6.0.copyload, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.h, label %bb.i, !prof !26

bb.h:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.49.0.copyload), "nonnull"(ptr %.sroa.5.0.copyload) ]
  %i.av = icmp eq ptr %.sroa.49.0.copyload, %.sroa.5.0.copyload
  br i1 %i.av, label %_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter7sources7from_fn6FromFnNCINvNvXs6_NtNtBa_8adapters7step_byINtB18_6StepBypEINtB18_10StepByImplpE13spec_try_fold3nthINtNtB1a_4skip4SkipINtNtNtBc_5slice4iter4IterfEEE0ENtNtNtBa_6traits8iterator8Iterator8try_folduQNCINvNvXs_NtB1a_4takeINtB48_4TakepEB3f_8try_fold5checkRfuINtNtNtBc_3ops9try_trait17NeverShortCircuituENCINvMB4W_B4T_10wrap_mut_2uB4Q_NCINvNtB1a_3map8map_foldB4Q_fuNvYfNtNtBc_5clone5Clone5cloneNCINvNvB3f_8for_each4callfNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB7D_3VecfE14extend_trustedINtNtB1a_6cloned6ClonedIB4k_INtNtB1a_5chain5ChainIB1x_B2q_EIB1x_B2J_EEEEE0E0E0E0E0INtNtB4Y_12control_flow11ControlFlowB4T_EECs1dZk1kIfPhr_19candle_transformers.exit.sink.split.i.i.i.i.i.i, label %select.unfold.i.i.i.i.i.i

bb.i:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload), "nonnull"(ptr %.sroa.49.0.copyload) ]
  %i.aw = ptrtoint ptr %.sroa.5.0.copyload to i64
  %i.ax = ptrtoint ptr %.sroa.49.0.copyload to i64
  %i.ay = sub nuw i64 %i.aw, %i.ax
  %i.az = lshr exact i64 %i.ay, 2
  %.not.i.i.i.i.i.i.i.i = icmp ult i64 %.sroa.6.0.copyload, %i.az
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %.sroa.49.0.copyload, i64 %.sroa.6.0.copyload
  br i1 %.not.i.i.i.i.i.i.i.i, label %select.unfold.i.i.i.i.i.i, label %_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter7sources7from_fn6FromFnNCINvNvXs6_NtNtBa_8adapters7step_byINtB18_6StepBypEINtB18_10StepByImplpE13spec_try_fold3nthINtNtB1a_4skip4SkipINtNtNtBc_5slice4iter4IterfEEE0ENtNtNtBa_6traits8iterator8Iterator8try_folduQNCINvNvXs_NtB1a_4takeINtB48_4TakepEB3f_8try_fold5checkRfuINtNtNtBc_3ops9try_trait17NeverShortCircuituENCINvMB4W_B4T_10wrap_mut_2uB4Q_NCINvNtB1a_3map8map_foldB4Q_fuNvYfNtNtBc_5clone5Clone5cloneNCINvNvB3f_8for_each4callfNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB7D_3VecfE14extend_trustedINtNtB1a_6cloned6ClonedIB4k_INtNtB1a_5chain5ChainIB1x_B2q_EIB1x_B2J_EEEEE0E0E0E0E0INtNtB4Y_12control_flow11ControlFlowB4T_EECs1dZk1kIfPhr_19candle_transformers.exit.sink.split.i.i.i.i.i.i

select.unfold.i.i.i.i.i.i:                        ; preds = %bb.i, %bb.h
  %.sroa.0.0.ph.i.ph.i.i.i.i.i.i = phi ptr [ %i.ba, %bb.i ], [ %.sroa.49.0.copyload, %bb.h ] ; 2 uses
  %.val6.i.i.i.i.i.i = load float, ptr %.sroa.0.0.ph.i.ph.i.i.i.i.i.i, align 4, !alias.scope !7929, !noalias !7930, !noundef !4
  %i.bb = add i64 %.sroa.08.0.copyload, -1        ; 2 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %.sroa.520.0.copyload, i64 %.sroa.419.0.copyload
  store float %.val6.i.i.i.i.i.i, ptr %i.bc, align 4, !noalias !7931
  %i.bd = add i64 %.sroa.419.0.copyload, 1        ; 2 uses
  %i.be = icmp eq i64 %i.bb, 0
  br i1 %i.be, label %.loopexit, label %.peel.begin.thread.i.i.i.i.i

.peel.begin.thread.i.i.i.i.i:                     ; preds = %select.unfold.i.i.i.i.i.i
  %.sink.i.ph.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.ph.i.i.i.i.i.i, i64 4
  %.pre18.i.i.i.i.i12.i.i.i.i.i = ptrtoint ptr %.sroa.5.0.copyload to i64
  br label %bb.e

_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter7sources7from_fn6FromFnNCINvNvXs6_NtNtBa_8adapters7step_byINtB18_6StepBypEINtB18_10StepByImplpE13spec_try_fold3nthINtNtB1a_4skip4SkipINtNtNtBc_5slice4iter4IterfEEE0ENtNtNtBa_6traits8iterator8Iterator8try_folduQNCINvNvXs_NtB1a_4takeINtB48_4TakepEB3f_8try_fold5checkRfuINtNtNtBc_3ops9try_trait17NeverShortCircuituENCINvMB4W_B4T_10wrap_mut_2uB4Q_NCINvNtB1a_3map8map_foldB4Q_fuNvYfNtNtBc_5clone5Clone5cloneNCINvNvB3f_8for_each4callfNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB7D_3VecfE14extend_trustedINtNtB1a_6cloned6ClonedIB4k_INtNtB1a_5chain5ChainIB1x_B2q_EIB1x_B2J_EEEEE0E0E0E0E0INtNtB4Y_12control_flow11ControlFlowB4T_EECs1dZk1kIfPhr_19candle_transformers.exit.sink.split.i.i.i.i.i.i: ; preds = %.peel.next.i.i.i.i.i, %bb.b, %bb.i, %bb.h, %.peel.next.i.i.preheader.i.i.i, %bb.e, %._crit_edge.i.i.i.i.i.peel.i.i.i.i.i, %bb.d
  %i.bf = phi i64 [ %.sroa.08.0.copyload, %bb.b ], [ %.sroa.08.0.copyload, %bb.h ], [ %.sroa.08.0.copyload, %bb.d ], [ %i.u, %.peel.next.i.i.preheader.i.i.i ], [ %.sroa.08.0.copyload, %._crit_edge.i.i.i.i.i.peel.i.i.i.i.i ], [ %i.o, %bb.e ], [ %.sroa.08.0.copyload, %bb.i ], [ %i.aj, %.peel.next.i.i.i.i.i ] ; 2 uses
  %.sroa.10.2.i.i.i = phi i64 [ %.sroa.419.0.copyload, %bb.b ], [ %.sroa.419.0.copyload, %bb.h ], [ %.sroa.419.0.copyload, %bb.d ], [ %i.w, %.peel.next.i.i.preheader.i.i.i ], [ %.sroa.419.0.copyload, %._crit_edge.i.i.i.i.i.peel.i.i.i.i.i ], [ %.sroa.10.0.i.i.i.a, %bb.e ], [ %.sroa.419.0.copyload, %bb.i ], [ %i.ai, %.peel.next.i.i.i.i.i ] ; 5 uses
  switch i8 %.sroa.1313.0.copyload, label %bb.l [
    i8 2, label %.loopexit
    i8 0, label %._crit_edge.i.i.i.i.i.i
  ]

._crit_edge.i.i.i.i.i.i:                          ; preds = %_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter7sources7from_fn6FromFnNCINvNvXs6_NtNtBa_8adapters7step_byINtB18_6StepBypEINtB18_10StepByImplpE13spec_try_fold3nthINtNtB1a_4skip4SkipINtNtNtBc_5slice4iter4IterfEEE0ENtNtNtBa_6traits8iterator8Iterator8try_folduQNCINvNvXs_NtB1a_4takeINtB48_4TakepEB3f_8try_fold5checkRfuINtNtNtBc_3ops9try_trait17NeverShortCircuituENCINvMB4W_B4T_10wrap_mut_2uB4Q_NCINvNtB1a_3map8map_foldB4Q_fuNvYfNtNtBc_5clone5Clone5cloneNCINvNvB3f_8for_each4callfNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB7D_3VecfE14extend_trustedINtNtB1a_6cloned6ClonedIB4k_INtNtB1a_5chain5ChainIB1x_B2q_EIB1x_B2J_EEEEE0E0E0E0E0INtNtB4Y_12control_flow11ControlFlowB4T_EECs1dZk1kIfPhr_19candle_transformers.exit.sink.split.i.i.i.i.i.i, %bb.m
  %.promoted.i.i.i = phi i64 [ %i.bs, %bb.m ], [ %i.bf, %_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter7sources7from_fn6FromFnNCINvNvXs6_NtNtBa_8adapters7step_byINtB18_6StepBypEINtB18_10StepByImplpE13spec_try_fold3nthINtNtB1a_4skip4SkipINtNtNtBc_5slice4iter4IterfEEE0ENtNtNtBa_6traits8iterator8Iterator8try_folduQNCINvNvXs_NtB1a_4takeINtB48_4TakepEB3f_8try_fold5checkRfuINtNtNtBc_3ops9try_trait17NeverShortCircuituENCINvMB4W_B4T_10wrap_mut_2uB4Q_NCINvNtB1a_3map8map_foldB4Q_fuNvYfNtNtBc_5clone5Clone5cloneNCINvNvB3f_8for_each4callfNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB7D_3VecfE14extend_trustedINtNtB1a_6cloned6ClonedIB4k_INtNtB1a_5chain5ChainIB1x_B2q_EIB1x_B2J_EEEEE0E0E0E0E0INtNtB4Y_12control_flow11ControlFlowB4T_EECs1dZk1kIfPhr_19candle_transformers.exit.sink.split.i.i.i.i.i.i ]
  %.promoted.i.i.i.i.i.i = phi ptr [ %i.br, %bb.m ], [ %.sroa.1011.0.copyload, %_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter7sources7from_fn6FromFnNCINvNvXs6_NtNtBa_8adapters7step_byINtB18_6StepBypEINtB18_10StepByImplpE13spec_try_fold3nthINtNtB1a_4skip4SkipINtNtNtBc_5slice4iter4IterfEEE0ENtNtNtBa_6traits8iterator8Iterator8try_folduQNCINvNvXs_NtB1a_4takeINtB48_4TakepEB3f_8try_fold5checkRfuINtNtNtBc_3ops9try_trait17NeverShortCircuituENCINvMB4W_B4T_10wrap_mut_2uB4Q_NCINvNtB1a_3map8map_foldB4Q_fuNvYfNtNtBc_5clone5Clone5cloneNCINvNvB3f_8for_each4callfNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB7D_3VecfE14extend_trustedINtNtB1a_6cloned6ClonedIB4k_INtNtB1a_5chain5ChainIB1x_B2q_EIB1x_B2J_EEEEE0E0E0E0E0INtNtB4Y_12control_flow11ControlFlowB4T_EECs1dZk1kIfPhr_19candle_transformers.exit.sink.split.i.i.i.i.i.i ]
  %.sroa.5.0.copyload.i.i.i.i.i.i = phi i64 [ %i.bu, %bb.m ], [ %.sroa.10.2.i.i.i, %_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter7sources7from_fn6FromFnNCINvNvXs6_NtNtBa_8adapters7step_byINtB18_6StepBypEINtB18_10StepByImplpE13spec_try_fold3nthINtNtB1a_4skip4SkipINtNtNtBc_5slice4iter4IterfEEE0ENtNtNtBa_6traits8iterator8Iterator8try_folduQNCINvNvXs_NtB1a_4takeINtB48_4TakepEB3f_8try_fold5checkRfuINtNtNtBc_3ops9try_trait17NeverShortCircuituENCINvMB4W_B4T_10wrap_mut_2uB4Q_NCINvNtB1a_3map8map_foldB4Q_fuNvYfNtNtBc_5clone5Clone5cloneNCINvNvB3f_8for_each4callfNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB7D_3VecfE14extend_trustedINtNtB1a_6cloned6ClonedIB4k_INtNtB1a_5chain5ChainIB1x_B2q_EIB1x_B2J_EEEEE0E0E0E0E0INtNtB4Y_12control_flow11ControlFlowB4T_EECs1dZk1kIfPhr_19candle_transformers.exit.sink.split.i.i.i.i.i.i ]
  %i.bg = ptrtoint ptr %.sroa.1112.0.copyload to i64
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %._crit_edge.i.i.i.i.i.i
  %i.bh = phi i64 [ %.promoted.i.i.i, %._crit_edge.i.i.i.i.i.i ], [ %i.bn, %bb.k ]
  %storemerge.i.i.i.i20.i.i.i.i.i.i = phi ptr [ %.promoted.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ], [ %i.bm, %bb.k ] ; 2 uses
  %.val9.i.i.i.i.i.i.i = phi i64 [ %.sroa.5.0.copyload.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ], [ %i.bp, %bb.k ] ; 3 uses
  %i.bi = ptrtoint ptr %storemerge.i.i.i.i20.i.i.i.i.i.i to i64
  %i.bj = sub nuw i64 %i.bg, %i.bi
  %i.bk = lshr exact i64 %i.bj, 2
  %.not.i.i.i.i.i.i.i.i.i.i = icmp ult i64 %.sroa.12.0.copyload, %i.bk
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.k, label %.loopexit

bb.k:                                             ; preds = %bb.j
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %storemerge.i.i.i.i20.i.i.i.i.i.i, i64 %.sroa.12.0.copyload ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 4
  %.val.i.i.i.i.i.i.i = load float, ptr %i.bl, align 4, !alias.scope !7932, !noalias !7933, !noundef !4
  %i.bn = add i64 %i.bh, -1                       ; 2 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %.sroa.520.0.copyload, i64 %.val9.i.i.i.i.i.i.i
  store float %.val.i.i.i.i.i.i.i, ptr %i.bo, align 4, !noalias !7934
  %i.bp = add i64 %.val9.i.i.i.i.i.i.i, 1         ; 2 uses
  %i.bq = icmp eq i64 %i.bn, 0
  br i1 %i.bq, label %.loopexit, label %bb.j

bb.l:                                             ; preds = %_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter7sources7from_fn6FromFnNCINvNvXs6_NtNtBa_8adapters7step_byINtB18_6StepBypEINtB18_10StepByImplpE13spec_try_fold3nthINtNtB1a_4skip4SkipINtNtNtBc_5slice4iter4IterfEEE0ENtNtNtBa_6traits8iterator8Iterator8try_folduQNCINvNvXs_NtB1a_4takeINtB48_4TakepEB3f_8try_fold5checkRfuINtNtNtBc_3ops9try_trait17NeverShortCircuituENCINvMB4W_B4T_10wrap_mut_2uB4Q_NCINvNtB1a_3map8map_foldB4Q_fuNvYfNtNtBc_5clone5Clone5cloneNCINvNvB3f_8for_each4callfNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB7D_3VecfE14extend_trustedINtNtB1a_6cloned6ClonedIB4k_INtNtB1a_5chain5ChainIB1x_B2q_EIB1x_B2J_EEEEE0E0E0E0E0INtNtB4Y_12control_flow11ControlFlowB4T_EECs1dZk1kIfPhr_19candle_transformers.exit.sink.split.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.1011.0.copyload), "nonnull"(ptr %.sroa.1112.0.copyload) ]
  %.not22.i.i.i.i = icmp eq ptr %.sroa.1011.0.copyload, %.sroa.1112.0.copyload
  br i1 %.not22.i.i.i.i, label %.loopexit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.1011.0.copyload, i64 4
  %.val.i.i.i.i.i.i = load float, ptr %.sroa.1011.0.copyload, align 4, !alias.scope !7935, !noalias !7936, !noundef !4
  %i.bs = add i64 %i.bf, -1                       ; 2 uses
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %.sroa.520.0.copyload, i64 %.sroa.10.2.i.i.i
  store float %.val.i.i.i.i.i.i, ptr %i.bt, align 4, !noalias !7937
  %i.bu = add i64 %.sroa.10.2.i.i.i, 1            ; 2 uses
  %i.bv = icmp eq i64 %i.bs, 0
  br i1 %i.bv, label %.loopexit, label %._crit_edge.i.i.i.i.i.i

.lr.ph.i.i.i..loopexit.loopexit40_crit_edge:      ; preds = %.lr.ph.i.i.i
  br label %.loopexit, !llvm.loop !7879

.loopexit:                                        ; preds = %bb.k, %bb.j, %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i..loopexit.loopexit40_crit_edge, %_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter7sources7from_fn6FromFnNCINvNvXs6_NtNtBa_8adapters7step_byINtB18_6StepBypEINtB18_10StepByImplpE13spec_try_fold3nthINtNtB1a_4skip4SkipINtNtNtBc_5slice4iter4IterfEEE0ENtNtNtBa_6traits8iterator8Iterator8try_folduQNCINvNvXs_NtB1a_4takeINtB48_4TakepEB3f_8try_fold5checkRfuINtNtNtBc_3ops9try_trait17NeverShortCircuituENCINvMB4W_B4T_10wrap_mut_2uB4Q_NCINvNtB1a_3map8map_foldB4Q_fuNvYfNtNtBc_5clone5Clone5cloneNCINvNvB3f_8for_each4callfNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB7D_3VecfE14extend_trustedINtNtB1a_6cloned6ClonedIB4k_INtNtB1a_5chain5ChainIB1x_B2q_EIB1x_B2J_EEEEE0E0E0E0E0INtNtB4Y_12control_flow11ControlFlowB4T_EECs1dZk1kIfPhr_19candle_transformers.exit.sink.split.i.i.i.i.i.i, %bb.m, %bb.l, %select.unfold.i.i.i.i.i.i, %bb.f, %bb.a
  %.sroa.10.4.i.sink.i.i = phi i64 [ %.sroa.10.2.i.i.i, %_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter7sources7from_fn6FromFnNCINvNvXs6_NtNtBa_8adapters7step_byINtB18_6StepBypEINtB18_10StepByImplpE13spec_try_fold3nthINtNtB1a_4skip4SkipINtNtNtBc_5slice4iter4IterfEEE0ENtNtNtBa_6traits8iterator8Iterator8try_folduQNCINvNvXs_NtB1a_4takeINtB48_4TakepEB3f_8try_fold5checkRfuINtNtNtBc_3ops9try_trait17NeverShortCircuituENCINvMB4W_B4T_10wrap_mut_2uB4Q_NCINvNtB1a_3map8map_foldB4Q_fuNvYfNtNtBc_5clone5Clone5cloneNCINvNvB3f_8for_each4callfNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB7D_3VecfE14extend_trustedINtNtB1a_6cloned6ClonedIB4k_INtNtB1a_5chain5ChainIB1x_B2q_EIB1x_B2J_EEEEE0E0E0E0E0INtNtB4Y_12control_flow11ControlFlowB4T_EECs1dZk1kIfPhr_19candle_transformers.exit.sink.split.i.i.i.i.i.i ], [ %i.at, %.lr.ph.i.i.i..loopexit.loopexit40_crit_edge ], [ %i.w, %bb.f ], [ %.sroa.10.2.i.i.i, %bb.l ], [ %i.bu, %bb.m ], [ %.sroa.419.0.copyload, %bb.a ], [ %i.bd, %select.unfold.i.i.i.i.i.i ], [ %i.ag, %.lr.ph.i.i.i.preheader ], [ %.val9.i.i.i.i.i.i.i, %bb.j ], [ %i.bp, %bb.k ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.018.0.copyload) ]
  store i64 %.sroa.10.4.i.sink.i.i, ptr %.sroa.018.0.copyload, align 8, !noalias !7938
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6clonedINtB5_6ClonedINtNtNtBb_5slice4iter4IterTxxEEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvB1y_8for_each4callB1s_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB2O_3VecB1s_E14extend_trustedBP_E0E0ECs1dZk1kIfPhr_19candle_transformers(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.04.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8 ; 6 uses
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.55.0.copyload = load ptr, ptr %.sroa.55.0..sroa_idx, align 8 ; 7 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterTxxEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB11_8adapters3map8map_foldRBQ_BQ_uNvYBQ_NtNtBb_5clone5Clone5cloneNCINvNvBV_8for_each4callBQ_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB3s_3VecBQ_E14extend_trustedINtNtB1N_6cloned6ClonedBF_EE0E0E0ECs1dZk1kIfPhr_19candle_transformers.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub nuw i64 %i.b, %i.c                   ; 4 uses
  %i.e = lshr i64 %i.d, 4                         ; 4 uses
  %min.iters.check = icmp ult i64 %i.d, 160
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.b
  %i.f = shl i64 %.sroa.4.0.copyload, 4           ; 2 uses
  %i.g = getelementptr i8, ptr %.sroa.55.0.copyload, i64 %i.f
  %i.h = getelementptr i8, ptr %.sroa.55.0.copyload, i64 %i.f
  %i.i = getelementptr i8, ptr %i.h, i64 %i.d
  %bound0 = icmp ult ptr %i.g, %1
  %bound1 = icmp ult ptr %0, %i.i
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.e, 1152921504606846974      ; 4 uses
  %i.j = add i64 %.sroa.4.0.copyload, %n.vec      ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.k = add i64 %.sroa.4.0.copyload, %index      ; 2 uses
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %index
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %index
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %wide.load = load <2 x i64>, ptr %i.l, align 8, !alias.scope !7952, !noalias !7953
  %wide.load9 = load <2 x i64>, ptr %i.n, align 8, !alias.scope !7952, !noalias !7953
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %.sroa.55.0.copyload, i64 %i.k
  %i.p = getelementptr [16 x i8], ptr %.sroa.55.0.copyload, i64 %i.k
  %i.q = getelementptr i8, ptr %i.p, i64 16
  store <2 x i64> %wide.load, ptr %i.o, align 8, !alias.scope !7954, !noalias !7955
  store <2 x i64> %wide.load9, ptr %i.q, align 8, !alias.scope !7954, !noalias !7955
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.r = icmp eq i64 %index.next, %n.vec
  br i1 %i.r, label %middle.block, label %vector.body, !llvm.loop !7950

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.e, %n.vec
  br i1 %cmp.n, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterTxxEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB11_8adapters3map8map_foldRBQ_BQ_uNvYBQ_NtNtBb_5clone5Clone5cloneNCINvNvBV_8for_each4callBQ_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB3s_3VecBQ_E14extend_trustedINtNtB1N_6cloned6ClonedBF_EE0E0E0ECs1dZk1kIfPhr_19candle_transformers.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.b, %middle.block
  %.ph = phi i64 [ %.sroa.4.0.copyload, %vector.memcheck ], [ %.sroa.4.0.copyload, %bb.b ], [ %i.j, %middle.block ] ; 3 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.b ], [ %n.vec, %middle.block ] ; 4 uses
  %.neg = or disjoint i64 %.sroa.01.0.i.ph, 1
  %i.s = and i64 %i.d, 16
  %lcmp.mod.not = icmp eq i64 %i.s, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.0.i.ph
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %.sroa.55.0.copyload, i64 %.ph
  %i.v = load <2 x i64>, ptr %i.t, align 8, !noalias !7953
  store <2 x i64> %i.v, ptr %i.u, align 8, !noalias !7956
  %i.w = add i64 %.ph, 1                          ; 2 uses
  %i.x = or disjoint i64 %.sroa.01.0.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.w, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.w, %scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], [ %i.x, %scalar.ph.prol ]
  %i.y = icmp eq i64 %i.e, %.neg
  br i1 %i.y, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterTxxEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB11_8adapters3map8map_foldRBQ_BQ_uNvYBQ_NtNtBb_5clone5Clone5cloneNCINvNvBV_8for_each4callBQ_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB3s_3VecBQ_E14extend_trustedINtNtB1N_6cloned6ClonedBF_EE0E0E0ECs1dZk1kIfPhr_19candle_transformers.exit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.z = phi i64 [ %i.ai, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ %i.aj, %scalar.ph ], [ %.sroa.01.0.i.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %.sroa.55.0.copyload, i64 %i.z
  %i.ac = load <2 x i64>, ptr %i.aa, align 8, !noalias !7953
  store <2 x i64> %i.ac, ptr %i.ab, align 8, !noalias !7956
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = getelementptr [16 x i8], ptr %.sroa.55.0.copyload, i64 %i.z
  %i.ag = getelementptr i8, ptr %i.af, i64 16
  %i.ah = load <2 x i64>, ptr %i.ae, align 8, !noalias !7953
  store <2 x i64> %i.ah, ptr %i.ag, align 8, !noalias !7956
  %i.ai = add i64 %i.z, 2                         ; 2 uses
  %i.aj = add nuw i64 %.sroa.01.0.i, 2            ; 2 uses
  %i.ak = icmp eq i64 %i.aj, %i.e
  br i1 %i.ak, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterTxxEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB11_8adapters3map8map_foldRBQ_BQ_uNvYBQ_NtNtBb_5clone5Clone5cloneNCINvNvBV_8for_each4callBQ_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB3s_3VecBQ_E14extend_trustedINtNtB1N_6cloned6ClonedBF_EE0E0E0ECs1dZk1kIfPhr_19candle_transformers.exit, label %scalar.ph, !llvm.loop !7951

_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterTxxEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB11_8adapters3map8map_foldRBQ_BQ_uNvYBQ_NtNtBb_5clone5Clone5cloneNCINvNvBV_8for_each4callBQ_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB3s_3VecBQ_E14extend_trustedINtNtB1N_6cloned6ClonedBF_EE0E0E0ECs1dZk1kIfPhr_19candle_transformers.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  %storemerge = phi i64 [ %.sroa.4.0.copyload, %bb.a ], [ %i.j, %middle.block ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.ai, %scalar.ph ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.04.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.04.0.copyload, align 8, !noalias !7953
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i32 @_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6copiedINtB5_6CopiedINtNtB7_7flatten7FlatMapINtNtNtBb_5slice4iter4IterINtNtCsgCecv3eZDcN_5alloc3vec3VecmEEIB1r_mENCNvMs4_NtNtNtCs1dZk1kIfPhr_19candle_transformers6models8qwen3_vl6visionNtB2F_18Qwen3VLVisionModel11rot_pos_emb0EENtNtNtB9_6traits8iterator8Iterator4foldmNvYmNtNtBb_3cmp3Ord3maxEB2L_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %0, i32 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7967)
  %.sroa.0.0.copyload.i = load ptr, ptr %0, align 8, !alias.scope !7967 ; 6 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !7967 ; 3 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !7967 ; 5 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.6.0.copyload.i = load ptr, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !7967 ; 3 uses
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.7.0.copyload.i = load ptr, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !7967 ; 5 uses
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.8.0.copyload.i = load ptr, ptr %.sroa.8.0..sroa_idx.i, align 8, !alias.scope !7967 ; 3 uses
  %.not.i.i.i = icmp eq ptr %.sroa.5.0.copyload.i, null
  br i1 %.not.i.i.i, label %_RNCINvNvXsi_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtBa_13FlattenCompatppENtNtNtBe_6traits8iterator8Iterator4fold7flattenINtNtNtBg_5slice4iter4ItermEmNCINvNtBc_6copied9copy_foldmmNvYmNtNtBg_3cmp3Ord3maxE0E0Cs1dZk1kIfPhr_19candle_transformers.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload.i) ]
  %i.a = icmp eq ptr %.sroa.5.0.copyload.i, %.sroa.6.0.copyload.i
  br i1 %i.a, label %_RNCINvNvXsi_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtBa_13FlattenCompatppENtNtNtBe_6traits8iterator8Iterator4fold7flattenINtNtNtBg_5slice4iter4ItermEmNCINvNtBc_6copied9copy_foldmmNvYmNtNtBg_3cmp3Ord3maxE0E0Cs1dZk1kIfPhr_19candle_transformers.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = ptrtoint ptr %.sroa.6.0.copyload.i to i64
  %i.c = ptrtoint ptr %.sroa.5.0.copyload.i to i64
  %i.d = sub nuw i64 %i.b, %i.c                   ; 2 uses
  %i.e = lshr exact i64 %i.d, 2                   ; 3 uses
  %min.iters.check = icmp ult i64 %i.d, 32
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.c
  %n.vec = and i64 %i.e, 4611686018427387896      ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %1, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

end_hunk_0
