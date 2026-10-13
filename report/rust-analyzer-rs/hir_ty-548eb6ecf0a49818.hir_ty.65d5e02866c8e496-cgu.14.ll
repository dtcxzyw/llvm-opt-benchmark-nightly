Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/hir_ty-548eb6ecf0a49818.hir_ty.65d5e02866c8e496-cgu.14?download=true
inline.NumInlined: 5511
inline.NumDeleted: 2265
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 10
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_RINvMNtNtCs8K4cjrcxBsw_6hir_ty5infer6coerceINtB3_6CoerceNtB3_25InferenceCoercionDelegateE9unify_andANtB5_10Adjustmentj0_EB7_:bb.a

bb.g:                                             ; preds = %bb.e
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #41, !noalias !105
  unreachable

bb.i:                                             ; preds = %bb.c
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.j:                                             ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !105
  tail call void @llvm.experimental.noalias.scope.decl(metadata !106)
  store i64 1, ptr %i.c, align 8, !alias.scope !107, !noalias !108
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i.i, i8 0, i64 16, i1 false), !noalias !105
  store ptr %i.m, ptr %i.s, align 8, !alias.scope !109, !noalias !105
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i16 %4, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !109, !noalias !105
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !105
  invoke void @_RNvXNtNtCsbSS6DM8SDEO_5alloc3vec14spec_from_iterINtB4_3VecNtNtCs8K4cjrcxBsw_6hir_ty5infer10AdjustmentEINtB2_12SpecFromIterBU_INtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtNtB28_5array4iter8IntoIterBU_Kj0_EINtNtNtB26_7sources4once4OnceBU_EEE9from_iterBY_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.c)
          to label %_RNCINvMNtNtCs8K4cjrcxBsw_6hir_ty5infer6coerceINtB5_6CoerceNtB5_25InferenceCoercionDelegateE9unify_andANtB7_10Adjustmentj0_E0B9_.exit unwind label %bb.d, !noalias !105

.body.i:                                          ; preds = %bb.i, %bb.f
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.r, %bb.i ], [ %i.p, %bb.f ]
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  invoke void @_RNvXs_NtNtNtCshzWfHUSfYae_4core5array4iter10iter_innerAINtNtNtBa_3mem12maybe_uninit11MaybeUninitNtNtCs8K4cjrcxBsw_6hir_ty5infer10AdjustmentEj0_NtB4_11PartialDrop12partial_dropB1A_(ptr noalias nofree noundef nonnull align 8 %i.t, i64 noundef 0, i64 noundef 0)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_5array4iter8IntoIterNtNtCs8K4cjrcxBsw_6hir_ty5infer10AdjustmentKj0_EEB19_.exit.i unwind label %bb.k, !noalias !105

bb.k:                                             ; preds = %.body.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_5array4iter8IntoIterNtNtCs8K4cjrcxBsw_6hir_ty5infer10AdjustmentKj0_EEB19_.exit.i
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #41, !noalias !105
  unreachable

bb.l:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_5array4iter8IntoIterNtNtCs8K4cjrcxBsw_6hir_ty5infer10AdjustmentKj0_EEB19_.exit.i
  resume { ptr, i32 } %.pn.i

_RNCINvMNtNtCs8K4cjrcxBsw_6hir_ty5infer6coerceINtB5_6CoerceNtB5_25InferenceCoercionDelegateE9unify_andANtB7_10Adjustmentj0_E0B9_.exit: ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !105
  %.sroa.518.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.518.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !110
  %.sroa.417.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.4.0.copyload, ptr %.sroa.417.0..sroa_idx.i, align 8, !alias.scope !104, !noalias !110
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !105
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !105
  br label %bb.m

bb.m:                                             ; preds = %_RNCINvMNtNtCs8K4cjrcxBsw_6hir_ty5infer6coerceINtB5_6CoerceNtB5_25InferenceCoercionDelegateE9unify_andANtB7_10Adjustmentj0_E0B9_.exit, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvMNtNtCs8K4cjrcxBsw_6hir_ty5infer6coerceINtB3_6CoerceNtB3_25InferenceCoercionDelegateE9unify_andINtNtNtNtCshzWfHUSfYae_4core4iter8adapters7flatten7FlatMapINtNtB1I_6option8IntoIterTNtB5_10AdjustmentB2V_EEAB2V_j2_NCNvB2_14coerce_unsizeds_0EEB7_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noalias nofree noundef nonnull align 8 captures(address) dead_on_return dereferenceable(144) %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [144 x i8], align 8               ; 4 uses
  %i.c = alloca [160 x i8], align 8               ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [40 x i8], align 8                ; 5 uses
  %i.g = alloca [152 x i8], align 8               ; 5 uses
  invoke fastcc void @_RNvMNtNtCs8K4cjrcxBsw_6hir_ty5infer6coerceINtB2_6CoerceNtB2_25InferenceCoercionDelegateE9unify_rawB6_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(40) %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noundef nonnull %2, ptr noundef nonnull %3)
          to label %bb.b unwind label %bb.o

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.g, ptr noundef nonnull align 8 dereferenceable(144) %4, i64 144, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 144
  store i16 1797, ptr %i.h, align 8
  %i.i = load i8, ptr %i.f, align 8, !range !8, !noundef !9
  %.not = icmp eq i8 %i.i, -1
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.j, ptr noundef nonnull align 8 dereferenceable(40) %i.f, i64 40, i1 false)
  store i64 -1, ptr %0, align 8
  call fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlatMapINtNtB4_6option8IntoIterTNtNtCs8K4cjrcxBsw_6hir_ty5infer10AdjustmentB1G_EEAB1G_j2_NCNvMNtB1I_6coerceINtB2G_6CoerceNtB2G_25InferenceCoercionDelegateE14coerce_unsizeds_0EEB1K_(ptr noalias nofree noundef nonnull align 8 dereferenceable(152) %i.g)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNCINvMNtNtCs8K4cjrcxBsw_6hir_ty5infer6coerceINtBH_6CoerceNtBH_25InferenceCoercionDelegateE9unify_andINtNtNtNtB4_4iter8adapters7flatten7FlatMapINtNtB4_6option8IntoIterTNtBJ_10AdjustmentB3i_EEAB3i_j2_NCNvBG_14coerce_unsizeds_0EE0EBL_.exit

bb.d:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !nonnull !9, !noundef !9 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !119)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !120
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !120
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.b, ptr noundef nonnull align 8 dereferenceable(144) %4, i64 144, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !120
  %i.l = invoke noundef i64 @_RNvMs0_NtCs50pZefIA5Ye_8triomphe3arcINtB5_8ArcInnerNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty10TyInternedE14offset_of_dataBT_(ptr noundef nonnull %.sroa.4.0.copyload)
          to label %.noexc.i unwind label %bb.k, !noalias !120

bb.e:                                             ; preds = %.body.i, %bb.f
  %.pn.i = phi { ptr, i32 } [ %i.m, %bb.f ], [ %eh.lpad-body.i, %.body.i ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer6traits10ObligationNtNtB1f_9predicate9PredicateEEEB1h_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #39
          to label %.body.thread unwind label %bb.m, !noalias !120

bb.f:                                             ; preds = %bb.l
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

.noexc.i:                                         ; preds = %bb.d
  %i.n = sub nsw i64 0, %i.l
  %i.o = getelementptr inbounds i8, ptr %.sroa.4.0.copyload, i64 %i.n ; 3 uses
  store ptr %i.o, ptr %i.a, align 8, !noalias !120
  %i.p = atomicrmw add ptr %i.o, i64 1 monotonic, align 8, !noalias !120
  %i.q = icmp slt i64 %i.p, 0
  br i1 %i.q, label %bb.g, label %bb.l, !prof !10

bb.g:                                             ; preds = %.noexc.i
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #40
          to label %bb.i unwind label %bb.h, !noalias !120

bb.h:                                             ; preds = %bb.g
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty10TyInternedE10drop_innerBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %.body.i unwind label %bb.j, !noalias !120

bb.i:                                             ; preds = %bb.g
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #41, !noalias !120
  unreachable

bb.k:                                             ; preds = %bb.d
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.l:                                             ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.c, ptr noundef nonnull align 8 dereferenceable(144) %4, i64 144, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  store ptr %i.o, ptr %i.u, align 8, !alias.scope !121, !noalias !122
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 152
  store i16 1797, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !121, !noalias !122
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !120
  invoke void @_RNvXNtNtCsbSS6DM8SDEO_5alloc3vec14spec_from_iterINtB4_3VecNtNtCs8K4cjrcxBsw_6hir_ty5infer10AdjustmentEINtB2_12SpecFromIterBU_INtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtB24_7flatten7FlatMapINtNtB28_6option8IntoIterTBU_BU_EEABU_j2_NCNvMNtBW_6coerceINtB40_6CoerceNtB40_25InferenceCoercionDelegateE14coerce_unsizeds_0EINtNtNtB26_7sources4once4OnceBU_EEE9from_iterBY_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(160) %i.c)
          to label %bb.n unwind label %bb.f, !noalias !120

.body.i:                                          ; preds = %bb.k, %bb.h
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.t, %bb.k ], [ %i.r, %bb.h ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlatMapINtNtB4_6option8IntoIterTNtNtCs8K4cjrcxBsw_6hir_ty5infer10AdjustmentB1G_EEAB1G_j2_NCNvMNtB1I_6coerceINtB2G_6CoerceNtB2G_25InferenceCoercionDelegateE14coerce_unsizeds_0EEB1K_(ptr noalias nofree noundef align 8 dereferenceable(144) %i.b) #39
          to label %bb.e unwind label %bb.m, !noalias !120

bb.m:                                             ; preds = %.body.i, %bb.e
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #41, !noalias !120
  unreachable

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !120
  %.sroa.516.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.516.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !123
  %.sroa.415.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.4.0.copyload, ptr %.sroa.415.0..sroa_idx.i, align 8, !alias.scope !119, !noalias !123
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !120
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !120
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNCINvMNtNtCs8K4cjrcxBsw_6hir_ty5infer6coerceINtBH_6CoerceNtBH_25InferenceCoercionDelegateE9unify_andINtNtNtNtB4_4iter8adapters7flatten7FlatMapINtNtB4_6option8IntoIterTNtBJ_10AdjustmentB3i_EEAB3i_j2_NCNvBG_14coerce_unsizeds_0EE0EBL_.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNCINvMNtNtCs8K4cjrcxBsw_6hir_ty5infer6coerceINtBH_6CoerceNtBH_25InferenceCoercionDelegateE9unify_andINtNtNtNtB4_4iter8adapters7flatten7FlatMapINtNtB4_6option8IntoIterTNtBJ_10AdjustmentB3i_EEAB3i_j2_NCNvBG_14coerce_unsizeds_0EE0EBL_.exit: ; preds = %bb.c, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret void

.body.thread:                                     ; preds = %bb.e, %bb.o
  %eh.lpad-body10 = phi { ptr, i32 } [ %.pn.i, %bb.e ], [ %i.w, %bb.o ]
  resume { ptr, i32 } %eh.lpad-body10

bb.o:                                             ; preds = %bb.a
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlatMapINtNtB4_6option8IntoIterTNtNtCs8K4cjrcxBsw_6hir_ty5infer10AdjustmentB1G_EEAB1G_j2_NCNvMNtB1I_6coerceINtB2G_6CoerceNtB2G_25InferenceCoercionDelegateE14coerce_unsizeds_0EEB1K_(ptr noalias nofree noundef align 8 dereferenceable(144) %4) #39
          to label %.body.thread unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #41
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RINvMs1_NtNtNtNtCs8K4cjrcxBsw_6hir_ty5infer7closure8analysis16expr_use_visitorINtB6_14ExprUseVisitorQNtB8_15InferBorrowKindE10walk_localNCNvB2_9walk_expr0EBe_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i32 noundef %2, i32 %.0.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [88 x i8], align 8                ; 4 uses
  %i.b = alloca [88 x i8], align 8                ; 4 uses
  %i.c = alloca [88 x i8], align 8                ; 6 uses
  %i.d = alloca [88 x i8], align 8                ; 7 uses
  %i.e = tail call fastcc noundef zeroext i1 @_RNvMs1_NtNtNtNtCs8K4cjrcxBsw_6hir_ty5infer7closure8analysis16expr_use_visitorINtB5_14ExprUseVisitorQNtB7_15InferBorrowKindE9walk_exprBd_(ptr noalias nofree noundef align 8 dereferenceable(40) %0, i32 noundef %1)
  br i1 %i.e, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call fastcc void @_RNvMs2_NtNtNtNtCs8K4cjrcxBsw_6hir_ty5infer7closure8analysis16expr_use_visitorINtB5_14ExprUseVisitorQNtB7_15InferBorrowKindE8cat_exprBd_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(88) %i.c, ptr noalias nofree noundef align 8 dereferenceable(40) %0, i32 noundef %1)
  %i.f = load i64, ptr %i.c, align 8, !range !11, !noundef !9
  %i.g = icmp eq i64 %i.f, -1
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.d, ptr noundef nonnull align 8 dereferenceable(88) %i.c, i64 88, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.h = invoke fastcc noundef zeroext i1 @_RNvMs1_NtNtNtNtCs8K4cjrcxBsw_6hir_ty5infer7closure8analysis16expr_use_visitorINtB5_14ExprUseVisitorQNtB7_15InferBorrowKindE11borrow_exprBd_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %.0.val, i8 noundef 0)
          to label %_RNCNvMs1_NtNtNtNtCs8K4cjrcxBsw_6hir_ty5infer7closure8analysis16expr_use_visitorINtB7_14ExprUseVisitorQNtB9_15InferBorrowKindE9walk_expr0Bf_.exit unwind label %bb.l, !inline_history !124

_RNCNvMs1_NtNtNtNtCs8K4cjrcxBsw_6hir_ty5infer7closure8analysis16expr_use_visitorINtB7_14ExprUseVisitorQNtB9_15InferBorrowKindE9walk_expr0Bf_.exit: ; preds = %bb.d
  br i1 %i.h, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_RNCNvMs1_NtNtNtNtCs8K4cjrcxBsw_6hir_ty5infer7closure8analysis16expr_use_visitorINtB7_14ExprUseVisitorQNtB9_15InferBorrowKindE9walk_expr0Bf_.exit
  call fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtNtCs8K4cjrcxBsw_6hir_ty5infer7closure8analysis16expr_use_visitor15PlaceWithOriginEBL_(ptr noalias nofree noundef align 8 dereferenceable(88) %i.d)
  br label %bb.i

bb.f:                                             ; preds = %_RNCNvMs1_NtNtNtNtCs8K4cjrcxBsw_6hir_ty5infer7closure8analysis16expr_use_visitorINtB7_14ExprUseVisitorQNtB9_15InferBorrowKindE9walk_expr0Bf_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke fastcc void @_RNvXsv_NtNtNtNtCs8K4cjrcxBsw_6hir_ty5infer7closure8analysis16expr_use_visitorNtB5_15PlaceWithOriginNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef align 8 captures(none) dereferenceable(88) %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.d)
          to label %bb.g unwind label %bb.l

bb.g:                                             ; preds = %bb.f
  invoke fastcc void @_RNvMs1_NtNtNtNtCs8K4cjrcxBsw_6hir_ty5infer7closure8analysis16expr_use_visitorINtB5_14ExprUseVisitorQNtB7_15InferBorrowKindE19fake_read_scrutineeBd_(ptr noalias nofree noundef align 8 dereferenceable(40) %0, ptr noalias nofree noundef align 8 captures(address) dereferenceable(88) %i.b, i1 noundef zeroext false)
          to label %bb.h unwind label %bb.l

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.a, ptr noundef nonnull align 8 dereferenceable(88) %i.d, i64 88, i1 false)
  %i.i = call fastcc noundef zeroext i1 @_RNvMs1_NtNtNtNtCs8K4cjrcxBsw_6hir_ty5infer7closure8analysis16expr_use_visitorINtB5_14ExprUseVisitorQNtB7_15InferBorrowKindE8walk_patBd_(ptr noalias nofree noundef align 8 dereferenceable(40) %0, ptr noalias nofree noundef align 8 captures(address) dereferenceable(88) %i.a, i32 noundef %2, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %i.i, label %bb.i, label %.sink.split

bb.i:                                             ; preds = %bb.h, %bb.e, %bb.c
  br label %.sink.split

.sink.split:                                      ; preds = %bb.h, %bb.i
  %.sroa.02.1.ph = phi i1 [ true, %bb.i ], [ false, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.j

bb.j:                                             ; preds = %.sink.split, %bb.a
  %.sroa.02.1 = phi i1 [ true, %bb.a ], [ %.sroa.02.1.ph, %.sink.split ]
  ret i1 %.sroa.02.1

bb.k:                                             ; preds = %bb.l
  resume { ptr, i32 } %lpad.thr_comm

bb.l:                                             ; preds = %bb.d, %bb.g, %bb.f
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtNtCs8K4cjrcxBsw_6hir_ty5infer7closure8analysis16expr_use_visitor15PlaceWithOriginEBL_(ptr noalias nofree noundef align 8 dereferenceable(88) %i.d) #39
          to label %bb.k unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #41
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RINvMs2_NtNtNtNtCs8K4cjrcxBsw_6hir_ty5infer7closure8analysis16expr_use_visitorINtB6_14ExprUseVisitorQNtB8_15InferBorrowKindE11cat_patternNCNvMs1_B6_B1e_8walk_pat0EBe_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dead_on_return dereferenceable(88) %1, i32 noundef %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [88 x i8], align 8                ; 6 uses
  %i.b = alloca [4 x i8], align 4                 ; 5 uses
  %i.c = alloca [12 x i8], align 4                ; 2 uses
  %i.d = alloca [12 x i8], align 4                ; 2 uses
  %i.e = alloca [88 x i8], align 8                ; 4 uses
  %i.f = alloca [12 x i8], align 4                ; 4 uses
  %i.g = alloca [88 x i8], align 8                ; 4 uses
  %i.h = alloca [88 x i8], align 8                ; 4 uses
  %i.i = alloca [88 x i8], align 8                ; 4 uses
  %i.j = alloca [12 x i8], align 4                ; 4 uses
  %i.k = alloca [88 x i8], align 8                ; 4 uses
  %i.l = alloca [88 x i8], align 8                ; 11 uses
  %i.m = alloca [16 x i8], align 8                ; 5 uses
  %i.n = alloca [16 x i8], align 8                ; 5 uses
  %i.o = alloca [16 x i8], align 8                ; 5 uses
  %i.p = alloca [32 x i8], align 8                ; 7 uses
  %i.q = alloca [88 x i8], align 8                ; 2 uses
  %i.r = alloca [88 x i8], align 8                ; 4 uses
  %i.s = alloca [88 x i8], align 8                ; 6 uses
  %i.t = alloca [88 x i8], align 8                ; 2 uses
  %i.u = alloca [88 x i8], align 8                ; 4 uses
  %i.v = alloca [88 x i8], align 8                ; 6 uses
  %i.w = alloca [88 x i8], align 8                ; 4 uses
  %i.x = alloca [88 x i8], align 8                ; 4 uses
  %i.y = alloca [12 x i8], align 4                ; 6 uses
  %i.z = alloca [88 x i8], align 8                ; 4 uses
  %i.aa = alloca [88 x i8], align 8               ; 4 uses
  %i.ab = alloca [16 x i8], align 4               ; 6 uses
  %i.ac = alloca [88 x i8], align 8               ; 4 uses
  %i.ad = alloca [88 x i8], align 8               ; 4 uses
  %i.ae = alloca [12 x i8], align 4               ; 6 uses
  %i.af = alloca [40 x i8], align 8               ; 5 uses
  %i.ag = alloca [40 x i8], align 8               ; 2 uses
  %i.ah = alloca [16 x i8], align 4               ; 6 uses
  %i.ai = alloca [88 x i8], align 8               ; 4 uses
  %i.aj = alloca [88 x i8], align 8               ; 4 uses
  %i.ak = alloca [12 x i8], align 4               ; 6 uses
  %i.al = alloca [40 x i8], align 8               ; 5 uses
  %i.am = alloca [40 x i8], align 8               ; 2 uses
  %i.an = alloca [88 x i8], align 8               ; 4 uses
  %i.ao = alloca [104 x i8], align 8              ; 7 uses
  %i.ap = alloca [16 x i8], align 8               ; 5 uses
  %i.aq = alloca [16 x i8], align 8               ; 5 uses
  %i.ar = alloca [16 x i8], align 8               ; 5 uses
  %i.as = alloca [32 x i8], align 8               ; 7 uses
  %i.at = alloca [88 x i8], align 8               ; 22 uses
  %i.au = alloca [88 x i8], align 8               ; 3 uses
  %i.av = alloca [88 x i8], align 8               ; 4 uses
  %i.aw = alloca [88 x i8], align 8               ; 6 uses
  %i.ax = alloca [88 x i8], align 8               ; 4 uses
  %i.ay = alloca [104 x i8], align 8              ; 7 uses
  %i.az = alloca [88 x i8], align 8               ; 4 uses
  %i.ba = alloca [88 x i8], align 8               ; 6 uses
  %i.bb = alloca [16 x i8], align 8               ; 5 uses
  %i.bc = alloca [16 x i8], align 8               ; 5 uses
  %i.bd = alloca [16 x i8], align 8               ; 5 uses
  %i.be = alloca [32 x i8], align 8               ; 7 uses
  %i.bf = alloca [88 x i8], align 8               ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf)
  %.val141 = load ptr, ptr %0, align 8, !nonnull !9, !align !12, !noundef !9 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !149)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !150
  store i32 %2, ptr %i.b, align 4, !noalias !151
  %i.bg = getelementptr inbounds nuw i8, ptr %.val141, i64 1176
  %i.bh = load i64, ptr %i.bg, align 8, !alias.scope !152, !noalias !153, !noundef !9
  %i.bi = icmp eq i64 %i.bh, 0
  br i1 %i.bi, label %_RNvMs9_NtCs8K4cjrcxBsw_6hir_ty5inferNtB5_15InferenceResult14pat_adjustment.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.bj = getelementptr inbounds nuw i8, ptr %.val141, i64 1184
  %i.bk = invoke noundef i64 @_RINvYNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherNtNtCshzWfHUSfYae_4core4hash11BuildHasher8hash_oneRINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir3PatEECs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bj, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.b)
          to label %.noexc unwind label %.loopexit.split-lp221 ; 2 uses

.noexc:                                           ; preds = %bb.b
  %i.bl = getelementptr inbounds nuw i8, ptr %.val141, i64 1152
  call void @llvm.experimental.noalias.scope.decl(metadata !154)
  call void @llvm.experimental.noalias.scope.decl(metadata !155)
  %i.bm = lshr i64 %i.bk, 57
  %i.bn = trunc nuw nsw i64 %i.bm to i8
  %i.bo = getelementptr inbounds nuw i8, ptr %.val141, i64 1160
  %i.bp = load i64, ptr %i.bo, align 8, !alias.scope !156, !noalias !157, !noundef !9 ; 2 uses
  %i.bq = load ptr, ptr %i.bl, align 8, !alias.scope !156, !noalias !157, !nonnull !9, !noundef !9 ; 2 uses
  %i.br = insertelement <16 x i8> poison, i8 %i.bn, i64 0
  %i.bs = shufflevector <16 x i8> %i.br, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %.noexc
  %.sroa.9.0.i.i.i.i.i = phi i64 [ 0, %.noexc ], [ %i.cj, %bb.e ]
  %.pn.i.i.i.i = phi i64 [ %i.bk, %.noexc ], [ %i.ck, %bb.e ]
  %.sroa.01.0.i.i.i.i.i = and i64 %.pn.i.i.i.i, %i.bp ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 %.sroa.01.0.i.i.i.i.i
  %.sroa.0.0.copyload.i24.i.i.i.i = load <16 x i8>, ptr %i.bt, align 1, !noalias !158 ; 2 uses
  %i.bu = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i, %i.bs
  %i.bv = bitcast <16 x i1> %i.bu to i16          ; 2 uses
  %.not.i.not30.i.i.i.i = icmp eq i16 %i.bv, 0
  br i1 %.not.i.not30.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %bb.d
  %.sroa.06.0.i31.i.i.i.i = phi i16 [ %i.ci, %bb.d ], [ %i.bv, %bb.c ] ; 3 uses
  %i.bw = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i.i.i, i1 true)
  %i.bx = zext nneg i16 %i.bw to i64
  %i.by = add i64 %.sroa.01.0.i.i.i.i.i, %i.bx
  %i.bz = and i64 %i.by, %i.bp
  %i.ca = sub nsw i64 0, %i.bz
  %i.cb = getelementptr inbounds [32 x i8], ptr %i.bq, i64 %i.ca ; 3 uses
  %i.cc = getelementptr inbounds i8, ptr %i.cb, i64 -32
  %i.cd = invoke noundef zeroext i1 @_RNvXCsfjX3T6UU9IB_9hashbrownINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir3PatEINtB2_10EquivalentBq_E10equivalentCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.cc)
          to label %.noexc149 unwind label %.body.thread252

.noexc149:                                        ; preds = %.lr.ph.i.i.i.i
  br i1 %i.cd, label %_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir3PatEINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs8K4cjrcxBsw_6hir_ty5infer13PatAdjustmentENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE3getBO_EB2s_.exit.i.i, label %bb.d, !prof !13

._crit_edge.i.i.i.i:                              ; preds = %bb.d, %bb.c
  %i.ce = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i, splat (i8 -1)
  %i.cf = bitcast <16 x i1> %i.ce to i16
  %i.cg = icmp eq i16 %i.cf, 0
  br i1 %i.cg, label %bb.e, label %_RNvMs9_NtCs8K4cjrcxBsw_6hir_ty5inferNtB5_15InferenceResult14pat_adjustment.exit.i, !prof !10

bb.d:                                             ; preds = %.noexc149
end_hunk_0
begin_hunk_1_@_RNvMs1_NtNtCs8K4cjrcxBsw_6hir_ty5infer6coerceNtB5_10CoerceMany12coerce_inner:bb.a

bb.p:                                             ; preds = %bb.n, %bb.o, %bb.k, %bb.j, %bb.g
  %i.ar = load atomic i64, ptr @_RNvNtCsaMQbKjKCVRW_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.as = icmp ult i64 %i.ar, 2
  br i1 %i.as, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.at = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMs1_NtNtCs8K4cjrcxBsw_6hir_ty5infer6coerceNtB7_10CoerceMany12coerce_inner10___CALLSITE, i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.at, label %bb.r [
    i8 0, label %bb.t
    i8 1, label %bb.s
    i8 2, label %bb.s
  ], !prof !14

bb.r:                                             ; preds = %bb.q
  %i.au = call noundef i8 @_RNvMNtCsaMQbKjKCVRW_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvMs1_NtNtCs8K4cjrcxBsw_6hir_ty5infer6coerceNtB7_10CoerceMany12coerce_inner10___CALLSITE) #43 ; 2 uses
  %i.av = icmp eq i8 %i.au, 0
  br i1 %i.av, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.q, %bb.r
  %.sroa.012.0 = phi i8 [ %i.au, %bb.r ], [ %i.at, %bb.q ], [ %i.at, %bb.q ]
  %i.aw = load ptr, ptr @_RNvNvMs1_NtNtCs8K4cjrcxBsw_6hir_ty5infer6coerceNtB7_10CoerceMany12coerce_inner10___CALLSITE, align 8, !nonnull !9, !align !12, !noundef !9
  %i.ax = call noundef zeroext i1 @_RNvNtCsbDqbwph1Irx_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.aw, i8 noundef %.sroa.012.0)
  br i1 %i.ax, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.q, %bb.p, %bb.u, %bb.s
  %i.ay = load i8, ptr %i.f, align 8, !range !8, !noundef !9
  %.not23 = icmp eq i8 %i.ay, -1
  br i1 %.not23, label %bb.w, label %bb.v

bb.u:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.az = load ptr, ptr @_RNvNvMs1_NtNtCs8K4cjrcxBsw_6hir_ty5infer6coerceNtB7_10CoerceMany12coerce_inner10___CALLSITE, align 8, !nonnull !9, !align !12, !noundef !9 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.f, ptr %i.b, align 8
  store ptr %i.b, ptr %i.c, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @352, ptr %i.bb, align 8
  store i64 1, ptr %i.d, align 8
  %.sroa.014.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.c, ptr %.sroa.014.sroa.4.0..sroa_idx, align 8
  %.sroa.014.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 1, ptr %.sroa.014.sroa.5.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr %i.ba, ptr %.sroa.4.0..sroa_idx, align 8
  call void @_RNvMNtCsaMQbKjKCVRW_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.az, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.t

bb.v:                                             ; preds = %bb.t
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 1296
  store i8 1, ptr %i.bc, align 8, !alias.scope !5101
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 1504
  %i.be = load ptr, ptr %i.bd, align 8, !nonnull !9, !align !12, !noundef !9
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 168
  %i.bg = load ptr, ptr %i.bf, align 8, !nonnull !9, !noundef !9
  store ptr %i.bg, ptr %i.n, align 8
  call void @_RNvMsa_NtCs8K4cjrcxBsw_6hir_ty5inferNtB5_16InferenceContext18emit_type_mismatch(ptr noalias nofree noundef nonnull align 8 dereferenceable(1784) %1, i32 noundef %3, ptr noundef nonnull %spec.select.i, ptr noundef nonnull %.sroa.0.0)
  br label %bb.ad

bb.w:                                             ; preds = %bb.t
  %i.bh = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !nonnull !9, !noundef !9
  store ptr %i.bi, ptr %i.n, align 8
  %i.bj = load i64, ptr %0, align 8, !range !27, !noundef !9
  %i.bk = trunc nuw i64 %i.bj to i1
  br i1 %i.bk, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bm = load i64, ptr %i.bl, align 8, !noundef !9 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bo = load i64, ptr %i.bn, align 8, !noundef !9 ; 3 uses
  %i.bp = icmp ult i64 %i.bo, %i.bm
  br i1 %i.bp, label %bb.aa, label %bb.ab

bb.y:                                             ; preds = %bb.w
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.bs = load i64, ptr %i.br, align 8, !alias.scope !5102, !noalias !5103, !noundef !9 ; 2 uses
  %i.bt = icmp ugt i64 %i.bs, 4                   ; 2 uses
  %i.bu = load ptr, ptr %i.bq, align 8, !alias.scope !5102, !noalias !5103, !nonnull !9
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.sink10.i.i = select i1 %i.bt, ptr %i.bu, ptr %i.bq
  %.sink9.i.i = select i1 %i.bt, ptr %i.bv, ptr %i.br ; 2 uses
  %.sink.i.i = call i64 @llvm.umax.i64(i64 %i.bs, i64 4)
  %i.bw = load i64, ptr %.sink9.i.i, align 8, !alias.scope !5104, !noundef !9 ; 2 uses
  %i.bx = icmp eq i64 %i.bw, %.sink.i.i
  br i1 %i.bx, label %bb.z, label %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir4ExprEj4_E4pushCs8K4cjrcxBsw_6hir_ty.exit, !prof !10

bb.z:                                             ; preds = %bb.y
  call void @_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir4ExprEj4_E21reserve_one_uncheckedCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bq)
  %i.by = load ptr, ptr %i.bq, align 8, !alias.scope !5104, !nonnull !9, !noundef !9
  %.pre.i = load i64, ptr %i.bv, align 8, !alias.scope !5104
  br label %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir4ExprEj4_E4pushCs8K4cjrcxBsw_6hir_ty.exit

_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir4ExprEj4_E4pushCs8K4cjrcxBsw_6hir_ty.exit: ; preds = %bb.y, %bb.z
  %i.bz = phi i64 [ %.pre.i, %bb.z ], [ %i.bw, %bb.y ]
  %.sroa.01.0.i = phi ptr [ %i.bv, %bb.z ], [ %.sink9.i.i, %bb.y ] ; 2 uses
  %.sroa.0.0.i37 = phi ptr [ %i.by, %bb.z ], [ %.sink10.i.i, %bb.y ]
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.i37, i64 %i.bz
  store i32 %3, ptr %i.ca, align 4
  %i.cb = load i64, ptr %.sroa.01.0.i, align 8, !alias.scope !5104, !noundef !9
  %i.cc = add i64 %i.cb, 1
  store i64 %i.cc, ptr %.sroa.01.0.i, align 8, !alias.scope !5104
  br label %bb.ad

bb.aa:                                            ; preds = %bb.x
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8, !nonnull !9, !align !21, !noundef !9
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %i.bo ; 2 uses
  %i.cg = load i32, ptr %i.cf, align 4, !noundef !9
  %i.ch = icmp eq i32 %i.cg, %3
  br i1 %i.ch, label %bb.ad, label %bb.ac, !prof !13

bb.ab:                                            ; preds = %bb.x
  call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %i.bo, i64 noundef %i.bm, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @353) #42
  unreachable

bb.ac:                                            ; preds = %bb.aa
  call void @_RINvNtCshzWfHUSfYae_4core9panicking13assert_failedINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir4ExprEBM_ECs8K4cjrcxBsw_6hir_ty(i8 noundef 0, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.cf, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.g, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @354) #42
  unreachable

bb.ad:                                            ; preds = %bb.v, %bb.aa, %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir4ExprEj4_E4pushCs8K4cjrcxBsw_6hir_ty.exit
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.cj = load i64, ptr %i.ci, align 8, !noundef !9
  %i.ck = add i64 %i.cj, 1
  store i64 %i.ck, ptr %i.ci, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_RNvMs1_NtNtCs8K4cjrcxBsw_6hir_ty5infer6coerceNtB5_10CoerceMany8complete(ptr noalias nofree noundef nonnull align 8 captures(address) dead_on_return dereferenceable(56) %0, ptr nofree readonly captures(none) %.1504.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !noundef !9 ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !9
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.e, label %bb.f, !prof !13

bb.c:                                             ; preds = %bb.a, %bb.e
  %.sroa.0.0 = phi ptr [ %i.j, %bb.e ], [ %i.b, %bb.a ]
  %i.f = load i64, ptr %0, align 8, !range !27, !alias.scope !5113, !noundef !9
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.d, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs8K4cjrcxBsw_6hir_ty5infer6coerce10CoerceManyEBH_.exit

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvXsw_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir4ExprEj4_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs8K4cjrcxBsw_6hir_ty5infer6coerce10CoerceManyEBH_.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs8K4cjrcxBsw_6hir_ty5infer6coerce10CoerceManyEBH_.exit: ; preds = %bb.c, %bb.d
  ret ptr %.sroa.0.0

bb.e:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.1504.val) ]
  %i.i = getelementptr inbounds nuw i8, ptr %.1504.val, i64 160
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !9, !noundef !9
  br label %bb.c

bb.f:                                             ; preds = %bb.b
  invoke void @_RINvNtCshzWfHUSfYae_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @122, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @355) #40
          to label %bb.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = load i64, ptr %0, align 8, !range !27, !alias.scope !5114, !noundef !9
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %bb.h, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs8K4cjrcxBsw_6hir_ty5infer6coerce10CoerceManyEBH_.exit2

bb.h:                                             ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_RNvXsw_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir4ExprEj4_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs8K4cjrcxBsw_6hir_ty5infer6coerce10CoerceManyEBH_.exit2 unwind label %bb.j

bb.i:                                             ; preds = %bb.f
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #41
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs8K4cjrcxBsw_6hir_ty5infer6coerce10CoerceManyEBH_.exit2: ; preds = %bb.g, %bb.h
  resume { ptr, i32 } %i.k
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvMs1_NtNtNtNtCs8K4cjrcxBsw_6hir_ty5infer7closure8analysis16expr_use_visitorINtB5_14ExprUseVisitorQNtB7_15InferBorrowKindE11borrow_exprBd_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i8 noundef range(i8 0, 3) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [88 x i8], align 8                ; 2 uses
  %i.b = alloca [88 x i8], align 8                ; 6 uses
  %i.c = alloca [40 x i8], align 8                ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [32 x i8], align 8                ; 7 uses
  %i.g = alloca [32 x i8], align 8                ; 7 uses
  %i.h = alloca [40 x i8], align 8                ; 24 uses
  %i.i = alloca [1 x i8], align 1                 ; 3 uses
  %i.j = alloca [4 x i8], align 4                 ; 4 uses
  store i32 %1, ptr %i.j, align 4
  store i8 %2, ptr %i.i, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.k = load atomic i64, ptr @_RNvNtCsaMQbKjKCVRW_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.l = icmp ugt i64 %i.k, 1                     ; 4 uses
  br i1 %i.l, label %bb.c, label %bb.d

bb.b:                                             ; preds = %bb.n, %_RNvXs0_NtNtNtNtCs8K4cjrcxBsw_6hir_ty5infer7closure8analysis16expr_use_visitorQNtB7_15InferBorrowKindNtB5_8Delegate6borrowBd_.exit, %bb.c
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  br i1 %i.l, label %common.resume, label %bb.af

bb.c:                                             ; preds = %bb.j, %bb.k, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.m = load i32, ptr %i.j, align 4, !noundef !9
  invoke fastcc void @_RNvMs2_NtNtNtNtCs8K4cjrcxBsw_6hir_ty5infer7closure8analysis16expr_use_visitorINtB5_14ExprUseVisitorQNtB7_15InferBorrowKindE8cat_exprBd_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(88) %i.b, ptr noalias nofree noundef align 8 dereferenceable(40) %0, i32 noundef %i.m)
          to label %bb.l unwind label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.n = load atomic i64, ptr @_RNvNtCsaMQbKjKCVRW_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.o = icmp ult i64 %i.n, 2
  br i1 %i.o, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d, %bb.h, %bb.g
  store i64 2, ptr %i.c, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr null, ptr %i.p, align 8
  br label %bb.j

bb.f:                                             ; preds = %bb.d
  %i.q = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMs1_NtNtNtNtCs8K4cjrcxBsw_6hir_ty5infer7closure8analysis16expr_use_visitorINtB7_14ExprUseVisitorpE11borrow_expr10___CALLSITE, i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.q, label %bb.g [
    i8 0, label %bb.e
    i8 1, label %bb.h
    i8 2, label %bb.h
  ], !prof !14

bb.g:                                             ; preds = %bb.f
  %i.r = tail call noundef i8 @_RNvMNtCsaMQbKjKCVRW_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvMs1_NtNtNtNtCs8K4cjrcxBsw_6hir_ty5infer7closure8analysis16expr_use_visitorINtB7_14ExprUseVisitorpE11borrow_expr10___CALLSITE) ; 2 uses
  %.not = icmp eq i8 %i.r, 0
  br i1 %.not, label %bb.e, label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.f, %bb.g
  %.sroa.011.0 = phi i8 [ %i.r, %bb.g ], [ %i.q, %bb.f ], [ %i.q, %bb.f ]
  %i.s = load ptr, ptr @_RNvNvMs1_NtNtNtNtCs8K4cjrcxBsw_6hir_ty5infer7closure8analysis16expr_use_visitorINtB7_14ExprUseVisitorpE11borrow_expr10___CALLSITE, align 8, !nonnull !9, !align !12, !noundef !9
  %i.t = tail call noundef zeroext i1 @_RNvNtCsbDqbwph1Irx_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.s, i8 noundef %.sroa.011.0)
  br i1 %i.t, label %bb.i, label %bb.e

bb.i:                                             ; preds = %bb.h
  %i.u = load ptr, ptr @_RNvNvMs1_NtNtNtNtCs8K4cjrcxBsw_6hir_ty5infer7closure8analysis16expr_use_visitorINtB7_14ExprUseVisitorpE11borrow_expr10___CALLSITE, align 8, !nonnull !9, !align !12, !noundef !9 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.j, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.i, ptr %i.d, align 8
  store ptr %i.e, ptr %i.f, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @164, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.d, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr @356, ptr %i.y, align 8
  store i64 1, ptr %i.g, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.f, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 2, ptr %.sroa.5.0..sroa_idx, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr %i.v, ptr %i.z, align 8
  call void @_RNvMNtCsbDqbwph1Irx_7tracing4spanNtB2_4Span3new(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.u, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.h, ptr noundef nonnull align 8 dereferenceable(40) %i.c, i64 40, i1 false)
  %i.aa = load i64, ptr %i.h, align 8, !range !22, !noundef !9
  %.not27 = icmp eq i64 %i.aa, 2
  br i1 %.not27, label %bb.c, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  invoke void @_RNvMs2_NtCsaMQbKjKCVRW_12tracing_core10dispatcherNtB5_8Dispatch5enter(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ab)
          to label %bb.c unwind label %bb.r

bb.l:                                             ; preds = %bb.c
  %i.ac = load i64, ptr %i.b, align 8, !range !11, !noundef !9
  %i.ad = icmp eq i64 %i.ac, -1
  br i1 %i.ad, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.y

bb.n:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.a, ptr noundef nonnull align 8 dereferenceable(88) %i.b, i64 88, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load ptr, ptr %0, align 8, !nonnull !9, !align !12, !noundef !9
  %i.ag = load i8, ptr %i.i, align 1, !range !20, !noundef !9
  %.val31 = load ptr, ptr %i.ae, align 8, !nonnull !9, !align !12, !noundef !9
  invoke void @_RNvXs1_NtNtNtCs8K4cjrcxBsw_6hir_ty5infer7closure8analysisNtB5_15InferBorrowKindNtNtB5_16expr_use_visitor8Delegate6borrow(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %.val31, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(88) %i.a, i8 noundef range(i8 0, 3) %i.ag, ptr noalias nofree noundef nonnull align 8 dereferenceable(1784) %i.af)
          to label %_RNvXs0_NtNtNtNtCs8K4cjrcxBsw_6hir_ty5infer7closure8analysis16expr_use_visitorQNtB7_15InferBorrowKindNtB5_8Delegate6borrowBd_.exit unwind label %bb.b

_RNvXs0_NtNtNtNtCs8K4cjrcxBsw_6hir_ty5infer7closure8analysis16expr_use_visitorQNtB7_15InferBorrowKindNtB5_8Delegate6borrowBd_.exit: ; preds = %bb.n
  %i.ah = load i32, ptr %i.j, align 4, !noundef !9
  %i.ai = invoke fastcc noundef zeroext i1 @_RNvMs1_NtNtNtNtCs8K4cjrcxBsw_6hir_ty5infer7closure8analysis16expr_use_visitorINtB5_14ExprUseVisitorQNtB7_15InferBorrowKindE9walk_exprBd_(ptr noalias nofree noundef align 8 dereferenceable(40) %0, i32 noundef %i.ah)
          to label %bb.o unwind label %bb.b

bb.o:                                             ; preds = %_RNvXs0_NtNtNtNtCs8K4cjrcxBsw_6hir_ty5infer7closure8analysis16expr_use_visitorQNtB7_15InferBorrowKindNtB5_8Delegate6borrowBd_.exit
  br i1 %i.ai, label %bb.y, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aj = load i64, ptr %i.h, align 8, !range !22
  %.not.i.i = icmp eq i64 %i.aj, 2
  %or.cond = select i1 %i.l, i1 true, i1 %.not.i.i
  br i1 %or.cond, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbDqbwph1Irx_7tracing4span4SpanECs8K4cjrcxBsw_6hir_ty.exit37, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ak = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 2 uses
  invoke void @_RNvMs2_NtCsaMQbKjKCVRW_12tracing_core10dispatcherNtB5_8Dispatch4exit(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ak)
          to label %.thread45 unwind label %bb.s

bb.r:                                             ; preds = %bb.k
  %lpad.thr_comm.split-lp57 = landingpad { ptr, i32 }
          cleanup
  br label %.thread47

bb.s:                                             ; preds = %bb.z, %bb.q
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %.thread47

.thread45:                                        ; preds = %bb.q
  %.pr = load i64, ptr %i.h, align 8, !alias.scope !5149 ; 2 uses
  %.not.i.i32 = icmp eq i64 %.pr, 2
  br i1 %.not.i.i32, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbDqbwph1Irx_7tracing4span4SpanECs8K4cjrcxBsw_6hir_ty.exit37, label %bb.t

bb.t:                                             ; preds = %.thread45
  %i.am = load i64, ptr %i.ak, align 8, !range !23, !alias.scope !5150, !noundef !9
  %i.an = invoke noundef zeroext i1 @_RNvMs2_NtCsaMQbKjKCVRW_12tracing_core10dispatcherNtB5_8Dispatch9try_close(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.h, i64 noundef %i.am)
          to label %bb.v unwind label %bb.u       ; 0 uses

bb.u:                                             ; preds = %bb.t
  %i.ao = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbDqbwph1Irx_7tracing4span5InnerEECs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.h) #39
          to label %common.resume unwind label %bb.x

bb.v:                                             ; preds = %bb.t
  call void @llvm.experimental.noalias.scope.decl(metadata !5151)
  call void @llvm.experimental.noalias.scope.decl(metadata !5152)
  call void @llvm.experimental.noalias.scope.decl(metadata !5153)
  call void @llvm.experimental.noalias.scope.decl(metadata !5154)
  %i.ap = icmp eq i64 %.pr, 0
  br i1 %i.ap, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbDqbwph1Irx_7tracing4span4SpanECs8K4cjrcxBsw_6hir_ty.exit37, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.aq = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5155)
  call void @llvm.experimental.noalias.scope.decl(metadata !5156)
  %i.ar = load ptr, ptr %i.aq, align 8, !alias.scope !5157, !nonnull !9, !noundef !9
  %i.as = atomicrmw sub ptr %i.ar, i64 1 release, align 8, !noalias !5158
  %i.at = icmp eq i64 %i.as, 1
  br i1 %i.at, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbDqbwph1Irx_7tracing4span4SpanECs8K4cjrcxBsw_6hir_ty.exit37.sink.split, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbDqbwph1Irx_7tracing4span4SpanECs8K4cjrcxBsw_6hir_ty.exit37

bb.x:                                             ; preds = %bb.u
  %i.au = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #41
  unreachable

common.resume:                                    ; preds = %.thread47, %bb.b, %bb.ab, %bb.u
  %common.resume.op = phi { ptr, i32 } [ %i.az, %bb.ab ], [ %i.ao, %bb.u ], [ %.pn51, %.thread47 ], [ %lpad.thr_comm.split-lp, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbDqbwph1Irx_7tracing4span4SpanECs8K4cjrcxBsw_6hir_ty.exit37.sink.split: ; preds = %bb.w, %bb.ad
  %.sink = phi ptr [ %i.bb, %bb.ad ], [ %i.aq, %bb.w ]
  %.sroa.0.0.ph = phi i1 [ true, %bb.ad ], [ false, %bb.w ]
  fence acquire
  call void @_RNvMsn_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArcDNtNtCsaMQbKjKCVRW_12tracing_core10subscriber10SubscriberNtNtCshzWfHUSfYae_4core6marker4SyncNtB1D_4SendEL_E9drop_slowBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %.sink) #43
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbDqbwph1Irx_7tracing4span4SpanECs8K4cjrcxBsw_6hir_ty.exit37

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbDqbwph1Irx_7tracing4span4SpanECs8K4cjrcxBsw_6hir_ty.exit37: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbDqbwph1Irx_7tracing4span4SpanECs8K4cjrcxBsw_6hir_ty.exit37.sink.split, %bb.p, %.thread45, %bb.v, %bb.w, %bb.y, %.thread62, %bb.ac, %bb.ad
  %.sroa.0.0 = phi i1 [ true, %bb.y ], [ false, %.thread45 ], [ true, %bb.ad ], [ true, %bb.ac ], [ true, %.thread62 ], [ false, %bb.p ], [ false, %bb.w ], [ false, %bb.v ], [ %.sroa.0.0.ph, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbDqbwph1Irx_7tracing4span4SpanECs8K4cjrcxBsw_6hir_ty.exit37.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  ret i1 %.sroa.0.0

bb.y:                                             ; preds = %bb.o, %bb.m
  %i.av = load i64, ptr %i.h, align 8, !range !22
  %.not.i.i33 = icmp eq i64 %i.av, 2
  %or.cond67 = select i1 %i.l, i1 true, i1 %.not.i.i33
  br i1 %or.cond67, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbDqbwph1Irx_7tracing4span4SpanECs8K4cjrcxBsw_6hir_ty.exit37, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.aw = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 2 uses
  invoke void @_RNvMs2_NtCsaMQbKjKCVRW_12tracing_core10dispatcherNtB5_8Dispatch4exit(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.aw)
          to label %.thread62 unwind label %bb.s

.thread62:                                        ; preds = %bb.z
  %.pr63 = load i64, ptr %i.h, align 8, !alias.scope !5159 ; 2 uses
  %.not.i.i36 = icmp eq i64 %.pr63, 2
  br i1 %.not.i.i36, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbDqbwph1Irx_7tracing4span4SpanECs8K4cjrcxBsw_6hir_ty.exit37, label %bb.aa

bb.aa:                                            ; preds = %.thread62
  %i.ax = load i64, ptr %i.aw, align 8, !range !23, !alias.scope !5160, !noundef !9
  %i.ay = invoke noundef zeroext i1 @_RNvMs2_NtCsaMQbKjKCVRW_12tracing_core10dispatcherNtB5_8Dispatch9try_close(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.h, i64 noundef %i.ax)
          to label %bb.ac unwind label %bb.ab     ; 0 uses

bb.ab:                                            ; preds = %bb.aa
  %i.az = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbDqbwph1Irx_7tracing4span5InnerEECs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.h) #39
          to label %common.resume unwind label %bb.ae

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.experimental.noalias.scope.decl(metadata !5161)
  call void @llvm.experimental.noalias.scope.decl(metadata !5162)
  call void @llvm.experimental.noalias.scope.decl(metadata !5163)
  call void @llvm.experimental.noalias.scope.decl(metadata !5164)
  %i.ba = icmp eq i64 %.pr63, 0
  br i1 %i.ba, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbDqbwph1Irx_7tracing4span4SpanECs8K4cjrcxBsw_6hir_ty.exit37, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bb = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5165)
  call void @llvm.experimental.noalias.scope.decl(metadata !5166)
  %i.bc = load ptr, ptr %i.bb, align 8, !alias.scope !5167, !nonnull !9, !noundef !9
  %i.bd = atomicrmw sub ptr %i.bc, i64 1 release, align 8, !noalias !5168
  %i.be = icmp eq i64 %i.bd, 1
  br i1 %i.be, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbDqbwph1Irx_7tracing4span4SpanECs8K4cjrcxBsw_6hir_ty.exit37.sink.split, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbDqbwph1Irx_7tracing4span4SpanECs8K4cjrcxBsw_6hir_ty.exit37

bb.ae:                                            ; preds = %bb.ab
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #41
  unreachable

bb.af:                                            ; preds = %bb.b
  %i.bg = load i64, ptr %i.h, align 8, !range !22, !noalias !5169, !noundef !9
  %.not.i.i38 = icmp eq i64 %i.bg, 2
  br i1 %.not.i.i38, label %.thread47, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.bh = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  invoke void @_RNvMs2_NtCsaMQbKjKCVRW_12tracing_core10dispatcherNtB5_8Dispatch4exit(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bh)
          to label %.thread47 unwind label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %.thread47
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #41
  unreachable

.thread47:                                        ; preds = %bb.af, %bb.ag, %bb.s, %bb.r
  %.pn51 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp57, %bb.r ], [ %i.al, %bb.s ], [ %lpad.thr_comm.split-lp, %bb.ag ], [ %lpad.thr_comm.split-lp, %bb.af ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbDqbwph1Irx_7tracing4span4SpanECs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef align 8 dereferenceable(40) %i.h) #39
          to label %common.resume unwind label %bb.ah
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvMs1_NtNtNtNtCs8K4cjrcxBsw_6hir_ty5infer7closure8analysis16expr_use_visitorINtB5_14ExprUseVisitorQNtB7_15InferBorrowKindE11mutate_exprBd_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [88 x i8], align 8                ; 2 uses
  %i.b = alloca [88 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call fastcc void @_RNvMs2_NtNtNtNtCs8K4cjrcxBsw_6hir_ty5infer7closure8analysis16expr_use_visitorINtB5_14ExprUseVisitorQNtB7_15InferBorrowKindE8cat_exprBd_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(88) %i.b, ptr noalias nofree noundef align 8 dereferenceable(40) %0, i32 noundef %1)
  %i.c = load i64, ptr %i.b, align 8, !range !11, !noundef !9
  %i.d = icmp eq i64 %i.c, -1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.a, ptr noundef nonnull align 8 dereferenceable(88) %i.b, i64 88, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %0, align 8, !nonnull !9, !align !12, !noundef !9
  %.val = load ptr, ptr %i.e, align 8, !nonnull !9, !align !12, !noundef !9
  call void @_RNvXs1_NtNtNtCs8K4cjrcxBsw_6hir_ty5infer7closure8analysisNtB5_15InferBorrowKindNtNtB5_16expr_use_visitor8Delegate6mutate(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %.val, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(88) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(1784) %i.f)
  %i.g = call fastcc noundef zeroext i1 @_RNvMs1_NtNtNtNtCs8K4cjrcxBsw_6hir_ty5infer7closure8analysis16expr_use_visitorINtB5_14ExprUseVisitorQNtB7_15InferBorrowKindE9walk_exprBd_(ptr noalias nofree noundef align 8 dereferenceable(40) %0, i32 noundef %1)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0 = phi i1 [ true, %bb.b ], [ %i.g, %bb.c ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvMs1_NtNtNtNtCs8K4cjrcxBsw_6hir_ty5infer7closure8analysis16expr_use_visitorINtB5_14ExprUseVisitorQNtB7_15InferBorrowKindE12consume_exprBd_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [88 x i8], align 8                ; 2 uses
  %i.b = alloca [88 x i8], align 8                ; 6 uses
  %i.c = alloca [40 x i8], align 8                ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [32 x i8], align 8                ; 7 uses
  %i.g = alloca [40 x i8], align 8                ; 24 uses
  %i.h = alloca [4 x i8], align 4                 ; 4 uses
  store i32 %1, ptr %i.h, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.i = load atomic i64, ptr @_RNvNtCsaMQbKjKCVRW_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.j = icmp ugt i64 %i.i, 1                     ; 4 uses
  br i1 %i.j, label %bb.c, label %bb.d

bb.b:                                             ; preds = %bb.o, %bb.n, %bb.c
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  br i1 %i.j, label %common.resume, label %bb.ag

bb.c:                                             ; preds = %bb.j, %bb.k, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.k = load i32, ptr %i.h, align 4, !noundef !9
  invoke fastcc void @_RNvMs2_NtNtNtNtCs8K4cjrcxBsw_6hir_ty5infer7closure8analysis16expr_use_visitorINtB5_14ExprUseVisitorQNtB7_15InferBorrowKindE8cat_exprBd_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(88) %i.b, ptr noalias nofree noundef align 8 dereferenceable(40) %0, i32 noundef %i.k)
          to label %bb.l unwind label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.l = load atomic i64, ptr @_RNvNtCsaMQbKjKCVRW_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.m = icmp ult i64 %i.l, 2
  br i1 %i.m, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d, %bb.h, %bb.g
  store i64 2, ptr %i.c, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr null, ptr %i.n, align 8
  br label %bb.j

bb.f:                                             ; preds = %bb.d
  %i.o = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMs1_NtNtNtNtCs8K4cjrcxBsw_6hir_ty5infer7closure8analysis16expr_use_visitorINtB7_14ExprUseVisitorpE12consume_expr10___CALLSITE, i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.o, label %bb.g [
    i8 0, label %bb.e
    i8 1, label %bb.h
    i8 2, label %bb.h
  ], !prof !14

bb.g:                                             ; preds = %bb.f
  %i.p = tail call noundef i8 @_RNvMNtCsaMQbKjKCVRW_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvMs1_NtNtNtNtCs8K4cjrcxBsw_6hir_ty5infer7closure8analysis16expr_use_visitorINtB7_14ExprUseVisitorpE12consume_expr10___CALLSITE) ; 2 uses
  %.not = icmp eq i8 %i.p, 0
  br i1 %.not, label %bb.e, label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.f, %bb.g
  %.sroa.011.0 = phi i8 [ %i.p, %bb.g ], [ %i.o, %bb.f ], [ %i.o, %bb.f ]
  %i.q = load ptr, ptr @_RNvNvMs1_NtNtNtNtCs8K4cjrcxBsw_6hir_ty5infer7closure8analysis16expr_use_visitorINtB7_14ExprUseVisitorpE12consume_expr10___CALLSITE, align 8, !nonnull !9, !align !12, !noundef !9
  %i.r = tail call noundef zeroext i1 @_RNvNtCsbDqbwph1Irx_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.q, i8 noundef %.sroa.011.0)
  br i1 %i.r, label %bb.i, label %bb.e

bb.i:                                             ; preds = %bb.h
  %i.s = load ptr, ptr @_RNvNvMs1_NtNtNtNtCs8K4cjrcxBsw_6hir_ty5infer7closure8analysis16expr_use_visitorINtB7_14ExprUseVisitorpE12consume_expr10___CALLSITE, align 8, !nonnull !9, !align !12, !noundef !9 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.h, ptr %i.d, align 8
  store ptr %i.d, ptr %i.e, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @164, ptr %i.u, align 8
  store i64 1, ptr %i.f, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.e, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 1, ptr %.sroa.5.0..sroa_idx, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr %i.t, ptr %i.v, align 8
  call void @_RNvMNtCsbDqbwph1Irx_7tracing4spanNtB2_4Span3new(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.s, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, ptr noundef nonnull align 8 dereferenceable(40) %i.c, i64 40, i1 false)
  %i.w = load i64, ptr %i.g, align 8, !range !22, !noundef !9
  %.not27 = icmp eq i64 %i.w, 2
  br i1 %.not27, label %bb.c, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.x = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  invoke void @_RNvMs2_NtCsaMQbKjKCVRW_12tracing_core10dispatcherNtB5_8Dispatch5enter(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.x)
          to label %bb.c unwind label %bb.s

bb.l:                                             ; preds = %bb.c
  %i.y = load i64, ptr %i.b, align 8, !range !11, !noundef !9
  %i.z = icmp eq i64 %i.y, -1
  br i1 %i.z, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.z

bb.n:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.a, ptr noundef nonnull align 8 dereferenceable(88) %i.b, i64 88, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke fastcc void @_RNvMs1_NtNtNtNtCs8K4cjrcxBsw_6hir_ty5infer7closure8analysis16expr_use_visitorINtB5_14ExprUseVisitorQNtB7_15InferBorrowKindE15consume_or_copyBd_(ptr noalias nofree noundef align 8 dereferenceable(40) %0, ptr noalias nofree noundef align 8 captures(address) dereferenceable(88) %i.a)
          to label %bb.o unwind label %bb.b

bb.o:                                             ; preds = %bb.n
  %i.aa = load i32, ptr %i.h, align 4, !noundef !9
  %i.ab = invoke fastcc noundef zeroext i1 @_RNvMs1_NtNtNtNtCs8K4cjrcxBsw_6hir_ty5infer7closure8analysis16expr_use_visitorINtB5_14ExprUseVisitorQNtB7_15InferBorrowKindE9walk_exprBd_(ptr noalias nofree noundef align 8 dereferenceable(40) %0, i32 noundef %i.aa)
          to label %bb.p unwind label %bb.b

bb.p:                                             ; preds = %bb.o
  br i1 %i.ab, label %bb.z, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ac = load i64, ptr %i.g, align 8, !range !22
  %.not.i.i = icmp eq i64 %i.ac, 2
  %or.cond = select i1 %i.j, i1 true, i1 %.not.i.i
  br i1 %or.cond, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbDqbwph1Irx_7tracing4span4SpanECs8K4cjrcxBsw_6hir_ty.exit36, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ad = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  invoke void @_RNvMs2_NtCsaMQbKjKCVRW_12tracing_core10dispatcherNtB5_8Dispatch4exit(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ad)
          to label %.thread44 unwind label %bb.t

bb.s:                                             ; preds = %bb.k
  %lpad.thr_comm.split-lp56 = landingpad { ptr, i32 }
          cleanup
  br label %.thread46

bb.t:                                             ; preds = %bb.aa, %bb.r
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %.thread46

.thread44:                                        ; preds = %bb.r
  %.pr = load i64, ptr %i.g, align 8, !alias.scope !5204 ; 2 uses
  %.not.i.i31 = icmp eq i64 %.pr, 2
  br i1 %.not.i.i31, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbDqbwph1Irx_7tracing4span4SpanECs8K4cjrcxBsw_6hir_ty.exit36, label %bb.u

bb.u:                                             ; preds = %.thread44
  %i.af = load i64, ptr %i.ad, align 8, !range !23, !alias.scope !5205, !noundef !9
  %i.ag = invoke noundef zeroext i1 @_RNvMs2_NtCsaMQbKjKCVRW_12tracing_core10dispatcherNtB5_8Dispatch9try_close(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.g, i64 noundef %i.af)
          to label %bb.w unwind label %bb.v       ; 0 uses

bb.v:                                             ; preds = %bb.u
  %i.ah = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbDqbwph1Irx_7tracing4span5InnerEECs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.g) #39
          to label %common.resume unwind label %bb.y

bb.w:                                             ; preds = %bb.u
  call void @llvm.experimental.noalias.scope.decl(metadata !5206)
  call void @llvm.experimental.noalias.scope.decl(metadata !5207)
  call void @llvm.experimental.noalias.scope.decl(metadata !5208)
  call void @llvm.experimental.noalias.scope.decl(metadata !5209)
  %i.ai = icmp eq i64 %.pr, 0
  br i1 %i.ai, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbDqbwph1Irx_7tracing4span4SpanECs8K4cjrcxBsw_6hir_ty.exit36, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.aj = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5210)
  call void @llvm.experimental.noalias.scope.decl(metadata !5211)
  %i.ak = load ptr, ptr %i.aj, align 8, !alias.scope !5212, !nonnull !9, !noundef !9
  %i.al = atomicrmw sub ptr %i.ak, i64 1 release, align 8, !noalias !5213
  %i.am = icmp eq i64 %i.al, 1
  br i1 %i.am, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbDqbwph1Irx_7tracing4span4SpanECs8K4cjrcxBsw_6hir_ty.exit36.sink.split, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbDqbwph1Irx_7tracing4span4SpanECs8K4cjrcxBsw_6hir_ty.exit36

bb.y:                                             ; preds = %bb.v
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #41
  unreachable

common.resume:                                    ; preds = %.thread46, %bb.b, %bb.ac, %bb.v
  %common.resume.op = phi { ptr, i32 } [ %i.as, %bb.ac ], [ %i.ah, %bb.v ], [ %.pn50, %.thread46 ], [ %lpad.thr_comm.split-lp, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbDqbwph1Irx_7tracing4span4SpanECs8K4cjrcxBsw_6hir_ty.exit36.sink.split: ; preds = %bb.x, %bb.ae
  %.sink = phi ptr [ %i.au, %bb.ae ], [ %i.aj, %bb.x ]
  %.sroa.0.0.ph = phi i1 [ true, %bb.ae ], [ false, %bb.x ]
  fence acquire
  call void @_RNvMsn_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArcDNtNtCsaMQbKjKCVRW_12tracing_core10subscriber10SubscriberNtNtCshzWfHUSfYae_4core6marker4SyncNtB1D_4SendEL_E9drop_slowBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %.sink) #43
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbDqbwph1Irx_7tracing4span4SpanECs8K4cjrcxBsw_6hir_ty.exit36

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbDqbwph1Irx_7tracing4span4SpanECs8K4cjrcxBsw_6hir_ty.exit36: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbDqbwph1Irx_7tracing4span4SpanECs8K4cjrcxBsw_6hir_ty.exit36.sink.split, %bb.q, %.thread44, %bb.w, %bb.x, %bb.z, %.thread61, %bb.ad, %bb.ae
  %.sroa.0.0 = phi i1 [ true, %bb.z ], [ false, %.thread44 ], [ true, %bb.ae ], [ true, %bb.ad ], [ true, %.thread61 ], [ false, %bb.q ], [ false, %bb.x ], [ false, %bb.w ], [ %.sroa.0.0.ph, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbDqbwph1Irx_7tracing4span4SpanECs8K4cjrcxBsw_6hir_ty.exit36.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret i1 %.sroa.0.0

bb.z:                                             ; preds = %bb.p, %bb.m
  %i.ao = load i64, ptr %i.g, align 8, !range !22
  %.not.i.i32 = icmp eq i64 %i.ao, 2
  %or.cond66 = select i1 %i.j, i1 true, i1 %.not.i.i32
  br i1 %or.cond66, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbDqbwph1Irx_7tracing4span4SpanECs8K4cjrcxBsw_6hir_ty.exit36, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ap = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  invoke void @_RNvMs2_NtCsaMQbKjKCVRW_12tracing_core10dispatcherNtB5_8Dispatch4exit(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ap)
          to label %.thread61 unwind label %bb.t

end_hunk_1
begin_hunk_2_@_RNvMs1_NtNtNtNtCs8K4cjrcxBsw_6hir_ty5infer7closure8analysis16expr_use_visitorINtB5_14ExprUseVisitorQNtB7_15InferBorrowKindE15walk_adjustmentBd_:bb.a
  store ptr @_RNvXsa_Csbq3eHDLgq0Z_8la_arenaINtB5_3IdxNtNtCsileJQcQObtj_7hir_def3hir4ExprENtNtCshzWfHUSfYae_4core3fmt5Debug3fmtCs8K4cjrcxBsw_6hir_ty, ptr %.sroa.441.0..sroa_idx.i, align 8, !noalias !5428
  store ptr %i.y, ptr %i.az, align 8, !noalias !5428
  store ptr @_RNvXsw_NtNtNtNtCs8K4cjrcxBsw_6hir_ty5infer7closure8analysis16expr_use_visitorNtB5_15PlaceWithOriginNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt, ptr %.sroa.445.0..sroa_idx.i, align 8, !noalias !5428
  store ptr @358, ptr %i.e, align 8, !noalias !5428
  store ptr %i.d, ptr %i.ba, align 8, !noalias !5428
  store ptr %i.e, ptr %i.f, align 8, !noalias !5428
  store ptr @6, ptr %i.bb, align 8, !noalias !5428
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5428
  store i64 1, ptr %i.a, align 8, !noalias !5428
  store ptr %i.f, ptr %.sroa.018.sroa.4.0..sroa_idx.i, align 8, !noalias !5428
  store i64 1, ptr %.sroa.018.sroa.5.0..sroa_idx.i, align 8, !noalias !5428
  store ptr %i.dq, ptr %.sroa.419.0..sroa_idx.i, align 8, !noalias !5428
  invoke void @_RNvMNtCsaMQbKjKCVRW_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.dp, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a)
          to label %bb.ax unwind label %bb.ay, !noalias !5430

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5428
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !5428
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !5428
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !5428
  br label %_RNvXs0_NtNtNtNtCs8K4cjrcxBsw_6hir_ty5infer7closure8analysis16expr_use_visitorQNtB7_15InferBorrowKindNtB5_8Delegate6borrowBd_.exit55.i

bb.ay:                                            ; preds = %bb.aw, %bb.at, %bb.as, %bb.ao, %bb.ak, %bb.aj
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtNtCs8K4cjrcxBsw_6hir_ty5infer7closure8analysis16expr_use_visitor15PlaceWithOriginEBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.y) #39
          to label %.body.thread unwind label %bb.az, !noalias !5430

bb.az:                                            ; preds = %bb.ay
  %i.dr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #41, !noalias !5430
  unreachable

bb.ba:                                            ; preds = %.noexc33, %.noexc32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  br label %bb.s

bb.bb:                                            ; preds = %bb.p
  invoke fastcc void @_RNvMs1_NtNtNtNtCs8K4cjrcxBsw_6hir_ty5infer7closure8analysis16expr_use_visitorINtB5_14ExprUseVisitorQNtB7_15InferBorrowKindE15consume_or_copyBd_(ptr noalias nofree noundef align 8 dereferenceable(40) %0, ptr noalias nofree noundef align 8 captures(address) dereferenceable(88) %i.aa)
          to label %bb.bc unwind label %.body.thread43.loopexit

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  br label %bb.s

bb.bd:                                            ; preds = %bb.z, %bb.ab
  %.pr = load i64, ptr %i.x, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !5415
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !5415
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  %i.ds = icmp eq i64 %.pr, -1
  br i1 %i.ds, label %.loopexit, label %bb.be

.loopexit:                                        ; preds = %bb.bd, %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  br label %bb.bf

bb.be:                                            ; preds = %bb.bd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.ah, ptr noundef nonnull align 8 dereferenceable(88) %i.x, i64 88, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  %i.dt = icmp eq ptr %i.bk, %i.ap
  br i1 %i.dt, label %._crit_edge, label %bb.g

bb.bf:                                            ; preds = %._crit_edge, %bb.d, %.loopexit
  %.sroa.0.1 = phi i1 [ true, %bb.d ], [ true, %.loopexit ], [ false, %._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  call void @_RNvXsw_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCs8K4cjrcxBsw_6hir_ty5infer10Adjustmentj5_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.ai)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  ret i1 %.sroa.0.1

.body.thread:                                     ; preds = %.body.thread43.loopexit, %.body.thread43.loopexit.split-lp, %bb.ay
  %eh.lpad-body39 = phi { ptr, i32 } [ %lpad.thr_comm.i, %bb.ay ], [ %lpad.loopexit, %.body.thread43.loopexit ], [ %lpad.loopexit.split-lp, %.body.thread43.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtNtCs8K4cjrcxBsw_6hir_ty5infer7closure8analysis16expr_use_visitor15PlaceWithOriginEBL_(ptr noalias nofree noundef align 8 dereferenceable(88) %i.ah) #39
          to label %.body.thread40 unwind label %bb.bg

bb.bg:                                            ; preds = %.body.thread40, %.body.thread
  %i.du = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #41
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsjpcu9PwIgok_8smallvec8SmallVecANtNtCs8K4cjrcxBsw_6hir_ty5infer10Adjustmentj5_EEB1f_.exit: ; preds = %.body.thread40
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs1_NtNtNtNtCs8K4cjrcxBsw_6hir_ty5infer7closure8analysis16expr_use_visitorINtB5_14ExprUseVisitorQNtB7_15InferBorrowKindE16expr_adjustmentsBd_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(88) %0, ptr captures(address, read_provenance) %.0.val, i32 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [88 x i8], align 8                ; 6 uses
  %i.b = alloca [4 x i8], align 4                 ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5449)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %1, ptr %i.b, align 4, !noalias !5449
  %i.c = getelementptr inbounds nuw i8, ptr %.0.val, i64 1144
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !5450, !noalias !5451, !noundef !9
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RNvMs9_NtCs8K4cjrcxBsw_6hir_ty5inferNtB5_15InferenceResult15expr_adjustment.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %.0.val, i64 1120
  %i.g = getelementptr inbounds nuw i8, ptr %.0.val, i64 1152
  %i.h = call noundef i64 @_RINvYNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherNtNtCshzWfHUSfYae_4core4hash11BuildHasher8hash_oneRINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir4ExprEECs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.g, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.b) ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5452)
  call void @llvm.experimental.noalias.scope.decl(metadata !5453)
  %i.i = lshr i64 %i.h, 57
  %i.j = trunc nuw nsw i64 %i.i to i8
  %i.k = getelementptr inbounds nuw i8, ptr %.0.val, i64 1128
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !5454, !noalias !5455, !noundef !9 ; 2 uses
  %i.m = load ptr, ptr %i.f, align 8, !alias.scope !5454, !noalias !5455, !nonnull !9, !noundef !9 ; 2 uses
  %i.n = insertelement <16 x i8> poison, i8 %i.j, i64 0
  %i.o = shufflevector <16 x i8> %i.n, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.b
  %.sroa.9.0.i.i.i.i = phi i64 [ 0, %bb.b ], [ %i.af, %bb.e ]
  %.pn.i.i.i = phi i64 [ %i.h, %bb.b ], [ %i.ag, %bb.e ]
  %.sroa.01.0.i.i.i.i = and i64 %.pn.i.i.i, %i.l  ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 %.sroa.01.0.i.i.i.i
  %.sroa.0.0.copyload.i24.i.i.i = load <16 x i8>, ptr %i.p, align 1, !noalias !5456 ; 2 uses
  %i.q = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i, %i.o
  %i.r = bitcast <16 x i1> %i.q to i16            ; 2 uses
  %.not.i.not30.i.i.i = icmp eq i16 %i.r, 0
  br i1 %.not.i.not30.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %bb.d
  %.sroa.06.0.i31.i.i.i = phi i16 [ %i.ae, %bb.d ], [ %i.r, %bb.c ] ; 3 uses
  %i.s = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i.i, i1 true)
  %i.t = zext nneg i16 %i.s to i64
  %i.u = add i64 %.sroa.01.0.i.i.i.i, %i.t
  %i.v = and i64 %i.u, %i.l
  %i.w = sub nsw i64 0, %i.v
  %i.x = getelementptr inbounds [24 x i8], ptr %i.m, i64 %i.w ; 3 uses
  %i.y = getelementptr inbounds i8, ptr %i.x, i64 -24
  %i.z = call noundef zeroext i1 @_RNvXCsfjX3T6UU9IB_9hashbrownINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir4ExprEINtB2_10EquivalentBq_E10equivalentCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.y), !noalias !5457
  br i1 %i.z, label %_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir4ExprEINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSNtNtCs8K4cjrcxBsw_6hir_ty5infer10AdjustmentENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE3getBO_EB2w_.exit.i, label %bb.d, !prof !13

._crit_edge.i.i.i:                                ; preds = %bb.d, %bb.c
  %i.aa = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i, splat (i8 -1)
  %i.ab = bitcast <16 x i1> %i.aa to i16
  %i.ac = icmp eq i16 %i.ab, 0
  br i1 %i.ac, label %bb.e, label %_RNvMs9_NtCs8K4cjrcxBsw_6hir_ty5inferNtB5_15InferenceResult15expr_adjustment.exit, !prof !10

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.ad = add i16 %.sroa.06.0.i31.i.i.i, -1
  %i.ae = and i16 %i.ad, %.sroa.06.0.i31.i.i.i    ; 2 uses
  %.not.i.not.i.i.i = icmp eq i16 %i.ae, 0
  br i1 %.not.i.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

bb.e:                                             ; preds = %._crit_edge.i.i.i
  %i.af = add i64 %.sroa.9.0.i.i.i.i, 16          ; 2 uses
  %i.ag = add i64 %.sroa.01.0.i.i.i.i, %i.af
  br label %bb.c

_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir4ExprEINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSNtNtCs8K4cjrcxBsw_6hir_ty5infer10AdjustmentENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE3getBO_EB2w_.exit.i: ; preds = %.lr.ph.i.i.i
  %i.ah = getelementptr inbounds i8, ptr %i.x, i64 -16
  %i.ai = load ptr, ptr %i.ah, align 8, !nonnull !9, !noundef !9
  %i.aj = getelementptr inbounds i8, ptr %i.x, i64 -8
  %i.ak = load i64, ptr %i.aj, align 8, !noundef !9
  br label %_RNvMs9_NtCs8K4cjrcxBsw_6hir_ty5inferNtB5_15InferenceResult15expr_adjustment.exit

_RNvMs9_NtCs8K4cjrcxBsw_6hir_ty5inferNtB5_15InferenceResult15expr_adjustment.exit: ; preds = %._crit_edge.i.i.i, %bb.a, %_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir4ExprEINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSNtNtCs8K4cjrcxBsw_6hir_ty5infer10AdjustmentENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE3getBO_EB2w_.exit.i
  %.sroa.3.0.i = phi i64 [ %i.ak, %_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir4ExprEINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSNtNtCs8K4cjrcxBsw_6hir_ty5infer10AdjustmentENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE3getBO_EB2w_.exit.i ], [ undef, %bb.a ], [ undef, %._crit_edge.i.i.i ]
  %.sroa.0.0.i = phi ptr [ %i.ai, %_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir4ExprEINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSNtNtCs8K4cjrcxBsw_6hir_ty5infer10AdjustmentENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE3getBO_EB2w_.exit.i ], [ null, %bb.a ], [ null, %._crit_edge.i.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not = icmp eq ptr %.sroa.0.0.i, null          ; 2 uses
  %.sroa.4.0 = select i1 %.not, i64 0, i64 %.sroa.3.0.i
  %.sroa.0.0 = select i1 %.not, ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.0.i ; 2 uses
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0, i64 %.sroa.4.0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5458
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store i64 0, ptr %i.am, align 8, !noalias !5458
  invoke void @_RINvXst_Csjpcu9PwIgok_8smallvecINtB6_8SmallVecANtNtCs8K4cjrcxBsw_6hir_ty5infer10Adjustmentj5_EINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect6ExtendBJ_E6extendINtNtNtB1B_8adapters6cloned6ClonedINtNtNtB1D_5slice4iter4IterBJ_EEEBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.a, ptr noundef nonnull %.sroa.0.0, ptr noundef nonnull %i.al)
          to label %_RINvXss_Csjpcu9PwIgok_8smallvecINtB6_8SmallVecANtNtCs8K4cjrcxBsw_6hir_ty5infer10Adjustmentj5_EINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect12FromIteratorBJ_E9from_iterINtNtNtB1B_8adapters6cloned6ClonedINtNtNtB1D_5slice4iter4IterBJ_EEEBN_.exit unwind label %bb.f, !noalias !5458

bb.f:                                             ; preds = %_RNvMs9_NtCs8K4cjrcxBsw_6hir_ty5inferNtB5_15InferenceResult15expr_adjustment.exit
  %i.an = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsw_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCs8K4cjrcxBsw_6hir_ty5infer10Adjustmentj5_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.a)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsjpcu9PwIgok_8smallvec8SmallVecANtNtCs8K4cjrcxBsw_6hir_ty5infer10Adjustmentj5_EEB1f_.exit.i unwind label %bb.g, !noalias !5458

bb.g:                                             ; preds = %bb.f
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #41, !noalias !5458
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsjpcu9PwIgok_8smallvec8SmallVecANtNtCs8K4cjrcxBsw_6hir_ty5infer10Adjustmentj5_EEB1f_.exit.i: ; preds = %bb.f
  resume { ptr, i32 } %i.an

_RINvXss_Csjpcu9PwIgok_8smallvecINtB6_8SmallVecANtNtCs8K4cjrcxBsw_6hir_ty5infer10Adjustmentj5_EINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect12FromIteratorBJ_E9from_iterINtNtNtB1B_8adapters6cloned6ClonedINtNtNtB1D_5slice4iter4IterBJ_EEEBN_.exit: ; preds = %_RNvMs9_NtCs8K4cjrcxBsw_6hir_ty5inferNtB5_15InferenceResult15expr_adjustment.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(88) %i.a, i64 88, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5458
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvMs1_NtNtNtNtCs8K4cjrcxBsw_6hir_ty5infer7closure8analysis16expr_use_visitorINtB5_14ExprUseVisitorQNtB7_15InferBorrowKindE16walk_struct_exprBd_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address) %1, i64 noundef range(i64 0, 576460752303423488) %2, i32 noundef range(i32 0, 3) %3, i32 %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 7 uses
  %i.b = alloca [12 x i8], align 4                ; 4 uses
  %i.c = alloca [12 x i8], align 4                ; 6 uses
  %i.d = alloca [32 x i8], align 8                ; 4 uses
  %i.e = alloca [88 x i8], align 8                ; 5 uses
  %i.f = alloca [88 x i8], align 8                ; 4 uses
  %i.g = alloca [12 x i8], align 4                ; 4 uses
  %i.h = alloca [88 x i8], align 8                ; 6 uses
  %i.i = alloca [88 x i8], align 8                ; 9 uses
  %.idx = shl nuw nsw i64 %2, 4
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 %.idx ; 2 uses
  %i.k = icmp eq i64 %2, 0
  br i1 %i.k, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.03.052, i64 16 ; 2 uses
  %i.m = icmp eq ptr %i.l, %i.j
  br i1 %i.m, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.03.052 = phi ptr [ %i.l, %bb.b ], [ %1, %bb.a ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.03.052, i64 8
  %i.o = load i32, ptr %i.n, align 8, !noundef !9
  %i.p = tail call fastcc noundef zeroext i1 @_RNvMs1_NtNtNtNtCs8K4cjrcxBsw_6hir_ty5infer7closure8analysis16expr_use_visitorINtB5_14ExprUseVisitorQNtB7_15InferBorrowKindE12consume_exprBd_(ptr noalias nofree noundef align 8 dereferenceable(40) %0, i32 noundef %i.o)
  br i1 %i.p, label %.loopexit51, label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.q = icmp eq i32 %3, 2
  br i1 %i.q, label %bb.c, label %.loopexit51

.loopexit51.sink.split:                           ; preds = %bb.x, %bb.y
  %.sroa.02.0.ph = phi i1 [ true, %bb.y ], [ false, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %.loopexit51

.loopexit51:                                      ; preds = %.lr.ph, %.loopexit51.sink.split, %._crit_edge
  %.sroa.02.0 = phi i1 [ false, %._crit_edge ], [ %.sroa.02.0.ph, %.loopexit51.sink.split ], [ true, %.lr.ph ]
  ret i1 %.sroa.02.0

bb.c:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call fastcc void @_RNvMs2_NtNtNtNtCs8K4cjrcxBsw_6hir_ty5infer7closure8analysis16expr_use_visitorINtB5_14ExprUseVisitorQNtB7_15InferBorrowKindE8cat_exprBd_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(88) %i.h, ptr noalias nofree noundef align 8 dereferenceable(40) %0, i32 noundef %4)
  %i.r = load i64, ptr %i.h, align 8, !range !11, !noundef !9
  %i.s = icmp eq i64 %i.r, -1
  br i1 %i.s, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.y

bb.e:                                             ; preds = %.loopexit50, %.loopexit.split-lp, %bb.q, %bb.v
  %.pn = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %bb.q ], [ %lpad.thr_comm, %bb.v ], [ %lpad.loopexit, %.loopexit50 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtNtCs8K4cjrcxBsw_6hir_ty5infer7closure8analysis16expr_use_visitor15PlaceWithOriginEBL_(ptr noalias nofree noundef align 8 dereferenceable(88) %i.i) #39
          to label %bb.z unwind label %bb.w

.loopexit50:                                      ; preds = %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtCsileJQcQObtj_7hir_def3hir14RecordLitFieldENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs1_NtNtNtNtCs8K4cjrcxBsw_6hir_ty5infer7closure8analysis16expr_use_visitorINtB2s_14ExprUseVisitorQNtB2u_15InferBorrowKindE16walk_struct_expr0EB2A_.exit, %bb.t
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

.loopexit.split-lp:                               ; preds = %.loopexit, %bb.k, %bb.l, %bb.f, %bb.h, %.noexc20, %bb.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.f:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.i, ptr noundef nonnull align 8 dereferenceable(88) %i.h, i64 88, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.t = load ptr, ptr %0, align 8, !nonnull !9, !align !12, !noundef !9 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.v = load i64, ptr %i.u, align 8, !alias.scope !5468, !noundef !9 ; 2 uses
  %.not.i = icmp eq i64 %i.v, 0
  %i.w = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !alias.scope !5468, !nonnull !9
  %i.y = getelementptr [24 x i8], ptr %i.x, i64 %i.v
  %i.z = getelementptr i8, ptr %i.y, i64 -24      ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %.not.i1.i = icmp eq ptr %i.z, null
  %.not.i.i = select i1 %.not.i, i1 true, i1 %.not.i1.i
  %spec.select.i = select i1 %.not.i.i, ptr %i.aa, ptr %i.z
  %.val.i.pn.i = load ptr, ptr %spec.select.i, align 8, !nonnull !9, !noundef !9
  %.sroa.02.0.i.i = getelementptr inbounds nuw i8, ptr %.val.i.pn.i, i64 8 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5469)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.t, i64 56
  %i.ac = and i32 %4, 2147483647                  ; 2 uses
  %.lobit.i.i = lshr i32 %4, 31                   ; 2 uses
  %i.ad = invoke noundef nonnull ptr @_RNvMs_NtNtCs8K4cjrcxBsw_6hir_ty5infer5unifyNtB4_14InferenceTable29try_structurally_resolve_type(ptr noalias nofree noundef nonnull align 8 dereferenceable(704) %i.ab, i32 noundef %.lobit.i.i, i32 %i.ac, ptr noundef nonnull %.sroa.02.0.i.i)
          to label %.noexc unwind label %.loopexit.split-lp ; 3 uses

.noexc:                                           ; preds = %bb.f
  %.sroa.0.0.copyload.i = load i32, ptr %i.ad, align 8 ; 3 uses
  %i.ae = icmp ne i32 %.sroa.0.0.copyload.i, 27
  tail call void @llvm.assume(i1 %i.ae)
  %i.af = icmp eq i32 %.sroa.0.0.copyload.i, 29
  br i1 %i.af, label %bb.g, label %thread-pre-split

bb.g:                                             ; preds = %.noexc
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  %.sroa.5.0.copyload.i = load i32, ptr %.sroa.5.0..sroa_idx.i, align 4
  %i.ag = icmp eq i32 %.sroa.5.0.copyload.i, 0
  br i1 %i.ag, label %bb.h, label %.loopexit

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5470)
  %i.ah = invoke noundef i64 @_RNvMs0_NtCs50pZefIA5Ye_8triomphe3arcINtB5_8ArcInnerNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty10TyInternedE14offset_of_dataBT_(ptr noundef nonnull %.sroa.02.0.i.i)
          to label %.noexc20 unwind label %.loopexit.split-lp

.noexc20:                                         ; preds = %bb.h
  %i.ai = sub nsw i64 0, %i.ah
  %i.aj = getelementptr inbounds i8, ptr %.sroa.02.0.i.i, i64 %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.t, i64 1544
  %i.am = invoke noundef zeroext i1 @_RNvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB5_7HashMapNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_arg4TermuNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE6insertBT_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.al, ptr noundef nonnull %i.ak)
          to label %.noexc21 unwind label %.loopexit.split-lp

.noexc21:                                         ; preds = %.noexc20
  br i1 %i.am, label %_RNvMsa_NtCs8K4cjrcxBsw_6hir_ty5inferNtB5_16InferenceContext32type_must_be_known_at_this_point.exit.i, label %bb.i

bb.i:                                             ; preds = %.noexc21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5471
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %.lobit.i.i, ptr %i.an, align 8, !noalias !5471
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 %i.ac, ptr %i.ao, align 4, !noalias !5471
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr null, ptr %i.ap, align 16, !noalias !5471
  store i64 -9223372036854775774, ptr %i.a, align 16, !noalias !5471
  %i.aq = getelementptr inbounds nuw i8, ptr %i.t, i64 1720
  invoke void @_RNvMNtNtCs8K4cjrcxBsw_6hir_ty5infer11diagnosticsNtB2_11Diagnostics4push(ptr noundef nonnull align 8 %i.aq, ptr noalias nofree noundef nonnull align 16 captures(address) dereferenceable(64) %i.a)
          to label %.noexc22 unwind label %.loopexit.split-lp

.noexc22:                                         ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5471
  br label %_RNvMsa_NtCs8K4cjrcxBsw_6hir_ty5inferNtB5_16InferenceContext32type_must_be_known_at_this_point.exit.i

_RNvMsa_NtCs8K4cjrcxBsw_6hir_ty5inferNtB5_16InferenceContext32type_must_be_known_at_this_point.exit.i: ; preds = %.noexc22, %.noexc21
  %i.ar = getelementptr inbounds nuw i8, ptr %i.t, i64 1504
  %i.as = load ptr, ptr %i.ar, align 8, !alias.scope !5471, !nonnull !9, !align !12, !noundef !9
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 168
  %i.au = load ptr, ptr %i.at, align 8, !nonnull !9, !noundef !9 ; 2 uses
  %.sroa.0.0.copyload.pr.pre = load i32, ptr %i.au, align 8
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %_RNvMsa_NtCs8K4cjrcxBsw_6hir_ty5inferNtB5_16InferenceContext32type_must_be_known_at_this_point.exit.i, %.noexc
  %.sroa.0.0.copyload = phi i32 [ %.sroa.0.0.copyload.i, %.noexc ], [ %.sroa.0.0.copyload.pr.pre, %_RNvMsa_NtCs8K4cjrcxBsw_6hir_ty5inferNtB5_16InferenceContext32type_must_be_known_at_this_point.exit.i ] ; 2 uses
  %.sroa.0.0.i = phi ptr [ %i.ad, %.noexc ], [ %i.au, %_RNvMsa_NtCs8K4cjrcxBsw_6hir_ty5inferNtB5_16InferenceContext32type_must_be_known_at_this_point.exit.i ] ; 3 uses
  %.sroa.424.0..sroa.0.0.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 8
  %.sroa.424.0.copyload = load ptr, ptr %.sroa.424.0..sroa.0.0.i.sroa_idx, align 8 ; 2 uses
  %.sroa.5.sroa.5.0..sroa.5.0..sroa.0.0.i.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 20
  %i.av = load <2 x i32>, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa.0.0.i.sroa_idx.sroa_idx, align 4
  %i.aw = icmp ne i32 %.sroa.0.0.copyload, 27
  call void @llvm.assume(i1 %i.aw)
  %i.ax = icmp eq i32 %.sroa.0.0.copyload, 7
  br i1 %i.ax, label %bb.j, label %.loopexit

.loopexit:                                        ; preds = %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtCsileJQcQObtj_7hir_def3hir14RecordLitFieldENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs1_NtNtNtNtCs8K4cjrcxBsw_6hir_ty5infer7closure8analysis16expr_use_visitorINtB2s_14ExprUseVisitorQNtB2u_15InferBorrowKindE16walk_struct_expr0EB2A_.exit.thread, %bb.g, %bb.m, %bb.j, %thread-pre-split
  %i.ay = invoke fastcc noundef zeroext i1 @_RNvMs1_NtNtNtNtCs8K4cjrcxBsw_6hir_ty5infer7closure8analysis16expr_use_visitorINtB5_14ExprUseVisitorQNtB7_15InferBorrowKindE9walk_exprBd_(ptr noalias nofree noundef align 8 dereferenceable(40) %0, i32 noundef %4)
          to label %bb.x unwind label %.loopexit.split-lp

bb.j:                                             ; preds = %thread-pre-split
  %.sroa.5.0..sroa.0.0.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 16
  %.sroa.5.sroa.0.0.copyload = load i8, ptr %.sroa.5.0..sroa.0.0.i.sroa_idx, align 8
  %i.az = icmp eq i8 %.sroa.5.sroa.0.0.copyload, 0
  br i1 %i.az, label %bb.k, label %.loopexit

bb.k:                                             ; preds = %bb.j
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.424.0.copyload) ]
  %i.ba = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  store <2 x i32> %i.av, ptr %i.ba, align 4
  store i32 1, ptr %i.g, align 4
  %5 = load ptr, ptr %0, align 8, !nonnull !9, !align !12, !noundef !9 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 1424
  %i.bc = load ptr, ptr %i.bb, align 8, !nonnull !9, !noundef !9
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 1432
  %i.be = load ptr, ptr %i.bd, align 8, !nonnull !9, !align !12, !noundef !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.b, ptr noundef nonnull align 4 dereferenceable(12) %i.g, i64 12, i1 false)
  %i.bf = invoke noundef nonnull align 8 ptr @_RNvMsG_CsileJQcQObtj_7hir_defNtB5_9VariantId6fields(ptr noalias nofree noundef nonnull align 4 captures(address) dereferenceable(12) %i.b, ptr noundef nonnull %i.bc, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %i.be)
          to label %bb.l unwind label %.loopexit.split-lp ; 2 uses

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %6 = load ptr, ptr %0, align 8, !nonnull !9, !align !12, !noundef !9 ; 2 uses
  %7 = getelementptr inbounds nuw i8, ptr %6, i64 1424
  %i.bg = load ptr, ptr %7, align 8, !nonnull !9, !noundef !9
  %8 = getelementptr inbounds nuw i8, ptr %6, i64 1432
  %i.bh = load ptr, ptr %8, align 8, !nonnull !9, !align !12, !noundef !9
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 488
  %i.bj = load ptr, ptr %i.bi, align 8, !invariant.load !9, !nonnull !9
  %i.bk = invoke noundef nonnull align 8 ptr %i.bj(ptr noundef nonnull %i.bg, ptr noalias nofree noundef nonnull align 4 captures(address) dereferenceable(12) %i.g)
          to label %bb.m unwind label %.loopexit.split-lp

bb.m:                                             ; preds = %bb.l
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !nonnull !9, !noundef !9 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bo = load i64, ptr %i.bn, align 8, !noundef !9 ; 2 uses
  %.idx57 = mul nuw nsw i64 %i.bo, 40
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 %.idx57
  %i.bq = icmp eq i64 %i.bo, 0
  br i1 %i.bq, label %.loopexit, label %.lr.ph56

.lr.ph56:                                         ; preds = %bb.m
  %i.br = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.bs = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.not.not.not.i.not70 = icmp eq i64 %2, 0
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph56, %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtCsileJQcQObtj_7hir_def3hir14RecordLitFieldENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs1_NtNtNtNtCs8K4cjrcxBsw_6hir_ty5infer7closure8analysis16expr_use_visitorINtB2s_14ExprUseVisitorQNtB2u_15InferBorrowKindE16walk_struct_expr0EB2A_.exit.thread
  %.sroa.032.054 = phi ptr [ %i.bm, %.lr.ph56 ], [ %i.bt, %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtCsileJQcQObtj_7hir_def3hir14RecordLitFieldENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs1_NtNtNtNtCs8K4cjrcxBsw_6hir_ty5infer7closure8analysis16expr_use_visitorINtB2s_14ExprUseVisitorQNtB2u_15InferBorrowKindE16walk_struct_expr0EB2A_.exit.thread ] ; 2 uses
  %.sroa.734.053 = phi i32 [ 0, %.lr.ph56 ], [ %i.bu, %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtCsileJQcQObtj_7hir_def3hir14RecordLitFieldENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs1_NtNtNtNtCs8K4cjrcxBsw_6hir_ty5infer7closure8analysis16expr_use_visitorINtB2s_14ExprUseVisitorQNtB2u_15InferBorrowKindE16walk_struct_expr0EB2A_.exit.thread ] ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.032.054, i64 40 ; 2 uses
  %i.bu = add i32 %.sroa.734.053, 1
  call void @llvm.experimental.noalias.scope.decl(metadata !5472)
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.032.054, i64 24
  %i.bw = load ptr, ptr %i.bv, align 8, !alias.scope !5472, !noalias !5473, !nonnull !9
  br i1 %.not.not.not.i.not70, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtCsileJQcQObtj_7hir_def3hir14RecordLitFieldENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs1_NtNtNtNtCs8K4cjrcxBsw_6hir_ty5infer7closure8analysis16expr_use_visitorINtB2s_14ExprUseVisitorQNtB2u_15InferBorrowKindE16walk_struct_expr0EB2A_.exit, label %.lr.ph72

bb.o:                                             ; preds = %.lr.ph72
  %i.bx = getelementptr inbounds nuw i8, ptr %i.by, i64 16 ; 2 uses
  %.not.not.not.i.not = icmp eq ptr %i.bx, %i.j
  br i1 %.not.not.not.i.not, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtCsileJQcQObtj_7hir_def3hir14RecordLitFieldENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs1_NtNtNtNtCs8K4cjrcxBsw_6hir_ty5infer7closure8analysis16expr_use_visitorINtB2s_14ExprUseVisitorQNtB2u_15InferBorrowKindE16walk_struct_expr0EB2A_.exit, label %.lr.ph72

.lr.ph72:                                         ; preds = %bb.n, %bb.o
  %i.by = phi ptr [ %i.bx, %bb.o ], [ %1, %bb.n ] ; 2 uses
  %.val2.i = load ptr, ptr %i.by, align 8, !noalias !5474, !nonnull !9, !noundef !9
  %i.bz = icmp eq ptr %.val2.i, %i.bw
  br i1 %i.bz, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtCsileJQcQObtj_7hir_def3hir14RecordLitFieldENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs1_NtNtNtNtCs8K4cjrcxBsw_6hir_ty5infer7closure8analysis16expr_use_visitorINtB2s_14ExprUseVisitorQNtB2u_15InferBorrowKindE16walk_struct_expr0EB2A_.exit.thread, label %bb.o

_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtCsileJQcQObtj_7hir_def3hir14RecordLitFieldENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs1_NtNtNtNtCs8K4cjrcxBsw_6hir_ty5infer7closure8analysis16expr_use_visitorINtB2s_14ExprUseVisitorQNtB2u_15InferBorrowKindE16walk_struct_expr0EB2A_.exit: ; preds = %bb.o, %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  invoke fastcc void @_RNvXsv_NtNtNtNtCs8K4cjrcxBsw_6hir_ty5infer7closure8analysis16expr_use_visitorNtB5_15PlaceWithOriginNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef align 8 captures(none) dereferenceable(88) %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.i)
          to label %bb.p unwind label %.loopexit50

_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtCsileJQcQObtj_7hir_def3hir14RecordLitFieldENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs1_NtNtNtNtCs8K4cjrcxBsw_6hir_ty5infer7closure8analysis16expr_use_visitorINtB2s_14ExprUseVisitorQNtB2u_15InferBorrowKindE16walk_struct_expr0EB2A_.exit.thread: ; preds = %.lr.ph72, %bb.u
  %i.ca = icmp eq ptr %i.bt, %i.bp
  br i1 %i.ca, label %.loopexit, label %bb.n

bb.p:                                             ; preds = %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtCsileJQcQObtj_7hir_def3hir14RecordLitFieldENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs1_NtNtNtNtCs8K4cjrcxBsw_6hir_ty5infer7closure8analysis16expr_use_visitorINtB2s_14ExprUseVisitorQNtB2u_15InferBorrowKindE16walk_struct_expr0EB2A_.exit
  %i.cb = invoke noundef nonnull align 8 ptr @_RNvXs_NtCsbq3eHDLgq0Z_8la_arena3mapINtB4_8ArenaMapINtB6_3IdxNtNtCsileJQcQObtj_7hir_def10signatures9FieldDataENtNtCs8K4cjrcxBsw_6hir_ty5lower9FieldTypeEINtNtNtCshzWfHUSfYae_4core3ops5index5IndexBM_E5indexB1N_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bk, i32 noundef %.sroa.734.053, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @363)
          to label %bb.r unwind label %bb.v

bb.q:                                             ; preds = %bb.s
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.r:                                             ; preds = %bb.p
  %.val19 = load ptr, ptr %i.cb, align 8, !nonnull !9, !noundef !9
  %i.cc = getelementptr inbounds nuw i8, ptr %.val19, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %9 = load ptr, ptr %0, align 8, !nonnull !9, !align !12, !noundef !9
  %10 = getelementptr inbounds nuw i8, ptr %9, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull readonly align 8 dereferenceable(32) %10, i64 32, i1 false)
  %i.cd = invoke noundef nonnull ptr @_RINvMsq_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binderINtB6_11EarlyBinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerNtNtB1b_2ty2TyE11instantiateNtNtB1b_11generic_arg11GenericArgsEB1d_(ptr noundef nonnull %i.cc, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.d, ptr noundef nonnull %.sroa.424.0.copyload)
          to label %bb.s unwind label %bb.v

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i32 %.sroa.734.053, ptr %i.br, align 4
  store i32 0, ptr %i.bs, align 4
  store i32 1, ptr %i.c, align 4
  invoke fastcc void @_RNvMs2_NtNtNtNtCs8K4cjrcxBsw_6hir_ty5infer7closure8analysis16expr_use_visitorINtB5_14ExprUseVisitorQNtB7_15InferBorrowKindE14cat_projectionBd_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(88) %i.f, i32 noundef %4, ptr noalias nofree noundef align 8 captures(address) dereferenceable(88) %i.e, ptr noundef nonnull %i.cd, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(12) %i.c)
          to label %bb.t unwind label %bb.q

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  invoke fastcc void @_RNvMs1_NtNtNtNtCs8K4cjrcxBsw_6hir_ty5infer7closure8analysis16expr_use_visitorINtB5_14ExprUseVisitorQNtB7_15InferBorrowKindE15consume_or_copyBd_(ptr noalias nofree noundef align 8 dereferenceable(40) %0, ptr noalias nofree noundef align 8 captures(address) dereferenceable(88) %i.f)
          to label %bb.u unwind label %.loopexit50

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtCsileJQcQObtj_7hir_def3hir14RecordLitFieldENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs1_NtNtNtNtCs8K4cjrcxBsw_6hir_ty5infer7closure8analysis16expr_use_visitorINtB2s_14ExprUseVisitorQNtB2u_15InferBorrowKindE16walk_struct_expr0EB2A_.exit.thread

bb.v:                                             ; preds = %bb.r, %bb.p
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtNtCs8K4cjrcxBsw_6hir_ty5infer7closure8analysis16expr_use_visitor15PlaceWithOriginEBL_(ptr noalias nofree noundef align 8 dereferenceable(88) %i.e) #39
          to label %bb.e unwind label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.e
  %i.ce = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #41
  unreachable

bb.x:                                             ; preds = %.loopexit
  call fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtNtCs8K4cjrcxBsw_6hir_ty5infer7closure8analysis16expr_use_visitor15PlaceWithOriginEBL_(ptr noalias nofree noundef align 8 dereferenceable(88) %i.i)
  br i1 %i.ay, label %bb.y, label %.loopexit51.sink.split

bb.y:                                             ; preds = %bb.x, %bb.d
  br label %.loopexit51.sink.split

bb.z:                                             ; preds = %bb.e
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs1_NtNtNtNtCs8K4cjrcxBsw_6hir_ty5infer7closure8analysis16expr_use_visitorINtB5_14ExprUseVisitorQNtB7_15InferBorrowKindE19fake_read_scrutineeBd_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dead_on_return dereferenceable(88) %1, i1 noundef zeroext %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [88 x i8], align 8                ; 4 uses
  %i.b = alloca [12 x i8], align 4                ; 4 uses
  %i.c = alloca [40 x i8], align 8                ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = alloca [32 x i8], align 8                ; 7 uses
  %i.g = alloca [40 x i8], align 8                ; 17 uses
  %i.h = alloca [1 x i8], align 1                 ; 3 uses
  %i.i = zext i1 %2 to i8
  store i8 %i.i, ptr %i.h, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.j = load atomic i64, ptr @_RNvNtCsaMQbKjKCVRW_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.k = icmp ugt i64 %i.j, 1                     ; 3 uses
  br i1 %i.k, label %bb.c, label %bb.d

bb.b:                                             ; preds = %bb.c
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  br i1 %i.k, label %.thread64, label %bb.y

bb.c:                                             ; preds = %bb.l, %bb.n, %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.m = load i32, ptr %i.l, align 8, !range !28, !noundef !9
  %i.n = icmp eq i32 %i.m, 3                      ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.p = load i32, ptr %i.o, align 4
  %.sroa.4.0 = select i1 %i.n, i32 %i.p, i32 undef
  %.sroa.012.0 = zext i1 %i.n to i32
  %i.q = load i8, ptr %i.h, align 1, !range !15, !noundef !9
  %i.r = trunc nuw i8 %i.q to i1
  %spec.select = select i1 %i.r, i32 1, i32 3
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 %.sroa.012.0, ptr %i.s, align 4
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 %.sroa.4.0, ptr %i.t, align 4
  store i32 %spec.select, ptr %i.b, align 4
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.a, ptr noundef nonnull align 8 dereferenceable(88) %1, i64 88, i1 false)
  %i.v = load ptr, ptr %0, align 8, !nonnull !9, !align !12, !noundef !9
  %.val34 = load ptr, ptr %i.u, align 8, !nonnull !9, !align !12, !noundef !9
  invoke void @_RNvXs1_NtNtNtCs8K4cjrcxBsw_6hir_ty5infer7closure8analysisNtB5_15InferBorrowKindNtNtB5_16expr_use_visitor8Delegate9fake_read(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %.val34, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(88) %i.a, ptr noalias nofree noundef nonnull readonly align 4 captures(address) dereferenceable(12) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(1784) %i.v)
          to label %_RNvXs0_NtNtNtNtCs8K4cjrcxBsw_6hir_ty5infer7closure8analysis16expr_use_visitorQNtB7_15InferBorrowKindNtB5_8Delegate9fake_readBd_.exit unwind label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.w = load atomic i64, ptr @_RNvNtCsaMQbKjKCVRW_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.x = icmp ult i64 %i.w, 2
  br i1 %i.x, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d, %bb.j, %bb.i
  store i64 2, ptr %i.c, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr null, ptr %i.y, align 8
  br label %bb.l

bb.f:                                             ; preds = %bb.d
  %i.z = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMs1_NtNtNtNtCs8K4cjrcxBsw_6hir_ty5infer7closure8analysis16expr_use_visitorINtB7_14ExprUseVisitorpE19fake_read_scrutinee10___CALLSITE, i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.z, label %bb.g [
    i8 0, label %bb.e
    i8 1, label %bb.h
    i8 2, label %bb.h
  ], !prof !14

bb.g:                                             ; preds = %bb.f
  %i.aa = invoke noundef i8 @_RNvMNtCsaMQbKjKCVRW_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvMs1_NtNtNtNtCs8K4cjrcxBsw_6hir_ty5infer7closure8analysis16expr_use_visitorINtB7_14ExprUseVisitorpE19fake_read_scrutinee10___CALLSITE)
          to label %bb.i unwind label %.thread68  ; 2 uses

bb.h:                                             ; preds = %bb.f, %bb.f, %bb.i
  %.sroa.010.0 = phi i8 [ %i.aa, %bb.i ], [ %i.z, %bb.f ], [ %i.z, %bb.f ]
  %i.ab = load ptr, ptr @_RNvNvMs1_NtNtNtNtCs8K4cjrcxBsw_6hir_ty5infer7closure8analysis16expr_use_visitorINtB7_14ExprUseVisitorpE19fake_read_scrutinee10___CALLSITE, align 8, !nonnull !9, !align !12, !noundef !9
  %i.ac = invoke noundef zeroext i1 @_RNvNtCsbDqbwph1Irx_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ab, i8 noundef %.sroa.010.0)
          to label %bb.j unwind label %.thread68

bb.i:                                             ; preds = %bb.g
  %.not = icmp eq i8 %i.aa, 0
  br i1 %.not, label %bb.e, label %bb.h

bb.j:                                             ; preds = %bb.h
  br i1 %i.ac, label %bb.k, label %bb.e

bb.k:                                             ; preds = %bb.j
  %i.ad = load ptr, ptr @_RNvNvMs1_NtNtNtNtCs8K4cjrcxBsw_6hir_ty5infer7closure8analysis16expr_use_visitorINtB7_14ExprUseVisitorpE19fake_read_scrutinee10___CALLSITE, align 8, !nonnull !9, !align !12, !noundef !9 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %1, ptr %i.d, align 8
  store ptr %i.d, ptr %i.e, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @361, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.h, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr @364, ptr %i.ah, align 8
  store i64 1, ptr %i.f, align 8
  %.sroa.423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.e, ptr %.sroa.423.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 2, ptr %.sroa.5.0..sroa_idx, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr %i.ae, ptr %i.ai, align 8
  invoke void @_RNvMNtCsbDqbwph1Irx_7tracing4spanNtB2_4Span3new(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ad, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.f)
          to label %bb.m unwind label %.thread68

bb.l:                                             ; preds = %bb.m, %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, ptr noundef nonnull align 8 dereferenceable(40) %i.c, i64 40, i1 false)
  %i.aj = load i64, ptr %i.g, align 8, !range !22, !noundef !9
  %.not29 = icmp eq i64 %i.aj, 2
  br i1 %.not29, label %bb.c, label %bb.n

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.l

bb.n:                                             ; preds = %bb.l
  %i.ak = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  invoke void @_RNvMs2_NtCsaMQbKjKCVRW_12tracing_core10dispatcherNtB5_8Dispatch5enter(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ak)
          to label %bb.c unwind label %bb.p

_RNvXs0_NtNtNtNtCs8K4cjrcxBsw_6hir_ty5infer7closure8analysis16expr_use_visitorQNtB7_15InferBorrowKindNtB5_8Delegate9fake_readBd_.exit: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.al = load i64, ptr %i.g, align 8, !range !22
  %.not.i.i = icmp eq i64 %i.al, 2
  %or.cond = select i1 %i.k, i1 true, i1 %.not.i.i
  br i1 %or.cond, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbDqbwph1Irx_7tracing4span4SpanECs8K4cjrcxBsw_6hir_ty.exit, label %bb.o

bb.o:                                             ; preds = %_RNvXs0_NtNtNtNtCs8K4cjrcxBsw_6hir_ty5infer7closure8analysis16expr_use_visitorQNtB7_15InferBorrowKindNtB5_8Delegate9fake_readBd_.exit
  %i.am = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  invoke void @_RNvMs2_NtCsaMQbKjKCVRW_12tracing_core10dispatcherNtB5_8Dispatch4exit(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.am)
          to label %.thread44 unwind label %bb.q

.thread68:                                        ; preds = %bb.k, %bb.h, %bb.g
  %lpad.thr_comm57 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.p:                                             ; preds = %bb.n
  %lpad.thr_comm.split-lp58 = landingpad { ptr, i32 }
          cleanup
  br label %.thread46

bb.q:                                             ; preds = %bb.o
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %.thread46

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbDqbwph1Irx_7tracing4span4SpanECs8K4cjrcxBsw_6hir_ty.exit: ; preds = %bb.v, %bb.u, %bb.t, %.thread44, %_RNvXs0_NtNtNtNtCs8K4cjrcxBsw_6hir_ty5infer7closure8analysis16expr_use_visitorQNtB7_15InferBorrowKindNtB5_8Delegate9fake_readBd_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret void

end_hunk_2
begin_hunk_3_@_RNvMs1_NtNtNtNtCs8K4cjrcxBsw_6hir_ty5infer7closure8analysis16expr_use_visitorINtB5_14ExprUseVisitorQNtB7_15InferBorrowKindE8walk_patBd_:bb.a

bb.e:                                             ; preds = %bb.f, %bb.d, %bb.j, %bb.i
  store i64 2, ptr %i.c, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr null, ptr %i.p, align 8
  br label %bb.l

bb.f:                                             ; preds = %bb.d
  %i.q = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMs1_NtNtNtNtCs8K4cjrcxBsw_6hir_ty5infer7closure8analysis16expr_use_visitorINtB7_14ExprUseVisitorpE8walk_pat10___CALLSITE, i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.q, label %bb.g [
    i8 0, label %bb.e
    i8 1, label %bb.h
    i8 2, label %bb.h
  ], !prof !14

bb.g:                                             ; preds = %bb.f
  %i.r = invoke noundef i8 @_RNvMNtCsaMQbKjKCVRW_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvMs1_NtNtNtNtCs8K4cjrcxBsw_6hir_ty5infer7closure8analysis16expr_use_visitorINtB7_14ExprUseVisitorpE8walk_pat10___CALLSITE)
          to label %bb.i unwind label %.thread49  ; 2 uses

bb.h:                                             ; preds = %bb.f, %bb.f, %bb.i
  %.sroa.010.0 = phi i8 [ %i.r, %bb.i ], [ %i.q, %bb.f ], [ %i.q, %bb.f ]
  %i.s = load ptr, ptr @_RNvNvMs1_NtNtNtNtCs8K4cjrcxBsw_6hir_ty5infer7closure8analysis16expr_use_visitorINtB7_14ExprUseVisitorpE8walk_pat10___CALLSITE, align 8, !nonnull !9, !align !12, !noundef !9
  %i.t = invoke noundef zeroext i1 @_RNvNtCsbDqbwph1Irx_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.s, i8 noundef %.sroa.010.0)
          to label %bb.j unwind label %.thread49

bb.i:                                             ; preds = %bb.g
  %.not = icmp eq i8 %i.r, 0
  br i1 %.not, label %bb.e, label %bb.h

bb.j:                                             ; preds = %bb.h
  br i1 %i.t, label %bb.k, label %bb.e

bb.k:                                             ; preds = %bb.j
  %i.u = load ptr, ptr @_RNvNvMs1_NtNtNtNtCs8K4cjrcxBsw_6hir_ty5infer7closure8analysis16expr_use_visitorINtB7_14ExprUseVisitorpE8walk_pat10___CALLSITE, align 8, !nonnull !9, !align !12, !noundef !9 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %1, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.j, ptr %i.d, align 8
  store ptr %i.e, ptr %i.f, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @361, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.d, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr @366, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store ptr %i.i, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  store ptr @364, ptr %i.aa, align 8
  store i64 1, ptr %i.g, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.f, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 3, ptr %.sroa.5.0..sroa_idx, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr %i.v, ptr %i.ab, align 8
  invoke void @_RNvMNtCsbDqbwph1Irx_7tracing4spanNtB2_4Span3new(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.u, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.g)
          to label %bb.m unwind label %.thread49

bb.l:                                             ; preds = %bb.m, %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.h, ptr noundef nonnull align 8 dereferenceable(40) %i.c, i64 40, i1 false)
  %i.ac = load i64, ptr %i.h, align 8, !range !22, !noundef !9
  %.not24 = icmp eq i64 %i.ac, 2
  br i1 %.not24, label %bb.c, label %bb.n

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.l

bb.n:                                             ; preds = %bb.l
  %i.ad = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  invoke void @_RNvMs2_NtCsaMQbKjKCVRW_12tracing_core10dispatcherNtB5_8Dispatch5enter(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ad)
          to label %bb.c unwind label %bb.r

bb.o:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.i, ptr %i.a, align 8
  %i.ae = load i32, ptr %i.j, align 4, !noundef !9
  %i.af = invoke fastcc noundef zeroext i1 @_RINvMs2_NtNtNtNtCs8K4cjrcxBsw_6hir_ty5infer7closure8analysis16expr_use_visitorINtB6_14ExprUseVisitorQNtB8_15InferBorrowKindE11cat_patternNCNvMs1_B6_B1e_8walk_pat0EBe_(ptr noalias nofree noundef align 8 dereferenceable(40) %0, ptr noalias nofree noundef align 8 captures(address) dereferenceable(88) %i.b, i32 noundef %i.ae, ptr noalias nofree noundef align 8 dereferenceable(8) %i.a)
          to label %bb.p unwind label %bb.b

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ag = load i64, ptr %i.h, align 8, !range !22
  %.not.i.i = icmp eq i64 %i.ag, 2
  %or.cond = select i1 %i.m, i1 true, i1 %.not.i.i
  br i1 %or.cond, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbDqbwph1Irx_7tracing4span4SpanECs8K4cjrcxBsw_6hir_ty.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ah = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 2 uses
  invoke void @_RNvMs2_NtCsaMQbKjKCVRW_12tracing_core10dispatcherNtB5_8Dispatch4exit(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ah)
          to label %.thread37 unwind label %bb.s

.thread49:                                        ; preds = %bb.g, %bb.h, %bb.k
  %lpad.thr_comm47 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.r:                                             ; preds = %bb.n
  %lpad.thr_comm.split-lp48 = landingpad { ptr, i32 }
          cleanup
  br label %.thread39

bb.s:                                             ; preds = %bb.q
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %.thread39

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbDqbwph1Irx_7tracing4span4SpanECs8K4cjrcxBsw_6hir_ty.exit: ; preds = %bb.w, %bb.v, %.thread37, %bb.x, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtNtCs8K4cjrcxBsw_6hir_ty5infer7closure8analysis16expr_use_visitor15PlaceWithOriginEBL_(ptr noalias nofree noundef align 8 dereferenceable(88) %1)
  ret i1 %i.af

.thread37:                                        ; preds = %bb.q
  %.pr = load i64, ptr %i.h, align 8, !alias.scope !5522 ; 2 uses
  %.not.i.i29 = icmp eq i64 %.pr, 2
  br i1 %.not.i.i29, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbDqbwph1Irx_7tracing4span4SpanECs8K4cjrcxBsw_6hir_ty.exit, label %bb.t

bb.t:                                             ; preds = %.thread37
  %i.aj = load i64, ptr %i.ah, align 8, !range !23, !alias.scope !5523, !noundef !9
  %i.ak = invoke noundef zeroext i1 @_RNvMs2_NtCsaMQbKjKCVRW_12tracing_core10dispatcherNtB5_8Dispatch9try_close(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.h, i64 noundef %i.aj)
          to label %bb.v unwind label %bb.u       ; 0 uses

bb.u:                                             ; preds = %bb.t
  %i.al = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbDqbwph1Irx_7tracing4span5InnerEECs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.h) #39
          to label %.body unwind label %bb.y

bb.v:                                             ; preds = %bb.t
  call void @llvm.experimental.noalias.scope.decl(metadata !5524)
  call void @llvm.experimental.noalias.scope.decl(metadata !5525)
  call void @llvm.experimental.noalias.scope.decl(metadata !5526)
  call void @llvm.experimental.noalias.scope.decl(metadata !5527)
  %i.am = icmp eq i64 %.pr, 0
  br i1 %i.am, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbDqbwph1Irx_7tracing4span4SpanECs8K4cjrcxBsw_6hir_ty.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.an = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5528)
  call void @llvm.experimental.noalias.scope.decl(metadata !5529)
  %i.ao = load ptr, ptr %i.an, align 8, !alias.scope !5530, !nonnull !9, !noundef !9
  %i.ap = atomicrmw sub ptr %i.ao, i64 1 release, align 8, !noalias !5531
  %i.aq = icmp eq i64 %i.ap, 1
  br i1 %i.aq, label %bb.x, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbDqbwph1Irx_7tracing4span4SpanECs8K4cjrcxBsw_6hir_ty.exit

bb.x:                                             ; preds = %bb.w
  fence acquire
  invoke void @_RNvMsn_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArcDNtNtCsaMQbKjKCVRW_12tracing_core10subscriber10SubscriberNtNtCshzWfHUSfYae_4core6marker4SyncNtB1D_4SendEL_E9drop_slowBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.an) #43
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbDqbwph1Irx_7tracing4span4SpanECs8K4cjrcxBsw_6hir_ty.exit unwind label %bb.z

bb.y:                                             ; preds = %bb.u
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #41
  unreachable

.body:                                            ; preds = %bb.b, %bb.z, %bb.u, %.thread49, %.thread39
  %.pn26 = phi { ptr, i32 } [ %i.al, %bb.u ], [ %.pn42, %.thread39 ], [ %lpad.thr_comm47, %.thread49 ], [ %i.as, %bb.z ], [ %lpad.thr_comm.split-lp, %bb.b ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtNtCs8K4cjrcxBsw_6hir_ty5infer7closure8analysis16expr_use_visitor15PlaceWithOriginEBL_(ptr noalias nofree noundef align 8 dereferenceable(88) %1) #39
          to label %bb.ad unwind label %bb.ac

bb.z:                                             ; preds = %bb.x
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.aa:                                            ; preds = %bb.b
  %i.at = load i64, ptr %i.h, align 8, !range !22, !noalias !5532, !noundef !9
  %.not.i.i31 = icmp eq i64 %i.at, 2
  br i1 %.not.i.i31, label %.thread39, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.au = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  invoke void @_RNvMs2_NtCsaMQbKjKCVRW_12tracing_core10dispatcherNtB5_8Dispatch4exit(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.au)
          to label %.thread39 unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %.thread39, %.body
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #41
  unreachable

.thread39:                                        ; preds = %bb.aa, %bb.ab, %bb.s, %bb.r
  %.pn42 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp48, %bb.r ], [ %i.ai, %bb.s ], [ %lpad.thr_comm.split-lp, %bb.ab ], [ %lpad.thr_comm.split-lp, %bb.aa ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbDqbwph1Irx_7tracing4span4SpanECs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef align 8 dereferenceable(40) %i.h) #39
          to label %.body unwind label %bb.ac

bb.ad:                                            ; preds = %.body
  resume { ptr, i32 } %.pn26
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvMs1_NtNtNtNtCs8K4cjrcxBsw_6hir_ty5infer7closure8analysis16expr_use_visitorINtB5_14ExprUseVisitorQNtB7_15InferBorrowKindE9walk_exprBd_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [88 x i8], align 8                ; 4 uses
  %i.b = alloca [88 x i8], align 8                ; 4 uses
  %i.c = alloca [88 x i8], align 8                ; 6 uses
  %i.d = alloca [88 x i8], align 8                ; 7 uses
  %i.e = alloca [88 x i8], align 8                ; 5 uses
  %i.f = alloca [88 x i8], align 8                ; 6 uses
  %i.g = alloca [88 x i8], align 8                ; 4 uses
  %i.h = alloca [16 x i8], align 4                ; 4 uses
  %i.i = alloca [88 x i8], align 8                ; 6 uses
  %i.j = alloca [88 x i8], align 8                ; 6 uses
  %i.k = alloca [88 x i8], align 8                ; 5 uses
  %i.l = alloca [88 x i8], align 8                ; 4 uses
  %i.m = alloca [88 x i8], align 8                ; 6 uses
  %i.n = alloca [88 x i8], align 8                ; 9 uses
  %i.o = alloca [40 x i8], align 8                ; 4 uses
  %i.p = alloca [8 x i8], align 8                 ; 4 uses
  %i.q = alloca [16 x i8], align 8                ; 5 uses
  %i.r = alloca [32 x i8], align 8                ; 7 uses
  %i.s = alloca [40 x i8], align 8                ; 24 uses
  %i.t = alloca [4 x i8], align 4                 ; 5 uses
  store i32 %1, ptr %i.t, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  %i.u = load atomic i64, ptr @_RNvNtCsaMQbKjKCVRW_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.v = icmp ult i64 %i.u, 2
  br i1 %i.v, label %bb.d, label %bb.c

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit, %.thread113, %bb.bk, %bb.bd, %bb.dw, %bb.by
  %.sroa.046.0 = phi i8 [ %.sroa.043.2, %.thread113 ], [ %.sroa.043.2, %bb.by ], [ %.sroa.043.2, %bb.dw ], [ %.sroa.043.2, %bb.bk ], [ %.sroa.043.2, %bb.bd ], [ %.sroa.043.2, %.loopexit ], [ %.sroa.043.2, %.loopexit.split-lp.loopexit ], [ %.sroa.043.2, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %.sroa.043.2, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %.sroa.043.2, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %.sroa.043.2, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %.sroa.046.1.ph.ph.ph.ph.ph.ph, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.sroa.043.0 = phi i8 [ %.sroa.043.2, %.thread113 ], [ %.sroa.043.2, %bb.by ], [ %.sroa.043.2, %bb.dw ], [ %.sroa.043.2, %bb.bk ], [ %.sroa.043.2, %bb.bd ], [ %.sroa.043.2, %.loopexit ], [ %.sroa.043.2, %.loopexit.split-lp.loopexit ], [ %.sroa.043.2, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %.sroa.043.2, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %.sroa.043.2, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %.sroa.043.2, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %.sroa.043.1.ph.ph.ph.ph.ph.ph, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.pn = phi { ptr, i32 } [ %lpad.thr_comm111, %.thread113 ], [ %lpad.phi150, %bb.by ], [ %lpad.thr_comm.split-lp112, %bb.dw ], [ %lpad.thr_comm, %bb.bk ], [ %lpad.thr_comm.split-lp, %bb.bd ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit138, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit143, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit153, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit158, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit162, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp163, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.w = trunc nuw i8 %.sroa.043.0 to i1
  %i.x = load i64, ptr %i.s, align 8, !range !22
  %.not.i.i97 = icmp ne i64 %i.x, 2
  %or.cond.not = select i1 %i.w, i1 %.not.i.i97, i1 false
  br i1 %or.cond.not, label %bb.fk, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbDqbwph1Irx_7tracing4span7EnteredECs8K4cjrcxBsw_6hir_ty.exit99

.loopexit:                                        ; preds = %bb.ay, %bb.az, %bb.ba
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit:                      ; preds = %.lr.ph178
  %lpad.loopexit138 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %.lr.ph175
  %lpad.loopexit143 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %.lr.ph172
  %lpad.loopexit153 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %.lr.ph169
  %lpad.loopexit158 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %bb.er, %.noexc88, %bb.eq, %bb.ev, %bb.en, %bb.em, %bb.ek
  %lpad.loopexit162 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.v, %bb.s, %bb.r, %bb.ef, %bb.ed, %bb.ea, %bb.dx, %bb.dn, %bb.dk, %bb.dh, %bb.df, %bb.de, %bb.da, %bb.cz, %bb.cx, %bb.cs, %bb.cq, %bb.co, %bb.cm, %.loopexit151, %._crit_edge266, %bb.bm, %bb.as, %bb.ap, %bb.aj, %bb.ai, %bb.ag, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.u, %bb.n, %bb.k, %bb.h, %bb.g, %bb.c
  %.sroa.046.1.ph.ph.ph.ph.ph.ph = phi i8 [ %.sroa.043.2, %bb.v ], [ %.sroa.043.2, %bb.z ], [ %.sroa.043.2, %.loopexit151 ], [ %.sroa.043.2, %._crit_edge266 ], [ %.sroa.043.2, %bb.aa ], [ %.sroa.043.2, %bb.cm ], [ %.sroa.043.2, %bb.co ], [ %.sroa.043.2, %bb.cq ], [ %.sroa.043.2, %bb.cs ], [ %.sroa.043.2, %bb.ab ], [ %.sroa.043.2, %bb.ac ], [ %.sroa.043.2, %bb.ad ], [ %.sroa.043.2, %bb.cx ], [ %.sroa.043.2, %bb.r ], [ %.sroa.043.2, %bb.cz ], [ %.sroa.043.2, %bb.da ], [ %.sroa.043.2, %bb.dh ], [ %.sroa.043.2, %bb.df ], [ %.sroa.043.2, %bb.dk ], [ %.sroa.043.2, %bb.de ], [ %.sroa.043.2, %bb.dn ], [ %.sroa.043.2, %bb.ag ], [ %.sroa.043.2, %bb.ea ], [ %.sroa.043.2, %bb.dx ], [ %.sroa.043.2, %bb.ed ], [ %.sroa.043.2, %bb.ai ], [ %.sroa.043.2, %bb.aj ], [ %.sroa.043.2, %bb.ap ], [ %.sroa.043.2, %bb.ef ], [ 0, %bb.g ], [ %.sroa.043.2, %bb.bm ], [ %.sroa.043.2, %bb.u ], [ %.sroa.043.2, %bb.x ], [ %.sroa.043.2, %bb.as ], [ %.sroa.043.2, %bb.y ], [ %.sroa.043.2, %bb.s ], [ %.sroa.043.2, %bb.c ], [ 1, %bb.n ], [ 0, %bb.k ], [ 0, %bb.h ]
  %.sroa.043.1.ph.ph.ph.ph.ph.ph = phi i8 [ %.sroa.043.2, %bb.v ], [ %.sroa.043.2, %bb.z ], [ %.sroa.043.2, %.loopexit151 ], [ %.sroa.043.2, %._crit_edge266 ], [ %.sroa.043.2, %bb.aa ], [ %.sroa.043.2, %bb.cm ], [ %.sroa.043.2, %bb.co ], [ %.sroa.043.2, %bb.cq ], [ %.sroa.043.2, %bb.cs ], [ %.sroa.043.2, %bb.ab ], [ %.sroa.043.2, %bb.ac ], [ %.sroa.043.2, %bb.ad ], [ %.sroa.043.2, %bb.cx ], [ %.sroa.043.2, %bb.r ], [ %.sroa.043.2, %bb.cz ], [ %.sroa.043.2, %bb.da ], [ %.sroa.043.2, %bb.dh ], [ %.sroa.043.2, %bb.df ], [ %.sroa.043.2, %bb.dk ], [ %.sroa.043.2, %bb.de ], [ %.sroa.043.2, %bb.dn ], [ %.sroa.043.2, %bb.ag ], [ %.sroa.043.2, %bb.ea ], [ %.sroa.043.2, %bb.dx ], [ %.sroa.043.2, %bb.ed ], [ %.sroa.043.2, %bb.ai ], [ %.sroa.043.2, %bb.aj ], [ %.sroa.043.2, %bb.ap ], [ %.sroa.043.2, %bb.ef ], [ 0, %bb.g ], [ %.sroa.043.2, %bb.bm ], [ %.sroa.043.2, %bb.u ], [ %.sroa.043.2, %bb.x ], [ %.sroa.043.2, %bb.as ], [ %.sroa.043.2, %bb.y ], [ %.sroa.043.2, %bb.s ], [ %.sroa.043.2, %bb.c ], [ 0, %bb.n ], [ 0, %bb.k ], [ 0, %bb.h ]
  %lpad.loopexit.split-lp163 = landingpad { ptr, i32 }
          cleanup
  br label %.body

default.unreachable:                              ; preds = %bb.ej
  unreachable

bb.b:                                             ; preds = %bb.t
  unreachable

bb.c:                                             ; preds = %bb.l, %bb.n, %bb.a
  %.sroa.043.2 = phi i8 [ 0, %bb.a ], [ 1, %bb.n ], [ 1, %bb.l ] ; 96 uses
  %i.y = load i32, ptr %i.t, align 4, !noundef !9
  %i.z = invoke fastcc noundef zeroext i1 @_RNvMs1_NtNtNtNtCs8K4cjrcxBsw_6hir_ty5infer7closure8analysis16expr_use_visitorINtB5_14ExprUseVisitorQNtB7_15InferBorrowKindE15walk_adjustmentBd_(ptr noalias nofree noundef align 8 dereferenceable(40) %0, i32 noundef %i.y)
          to label %bb.o unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.d:                                             ; preds = %bb.a
  %i.aa = load atomic i64, ptr @_RNvNtCsaMQbKjKCVRW_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.ab = icmp ult i64 %i.aa, 2
  br i1 %i.ab, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d, %bb.j, %bb.i
  store i64 2, ptr %i.o, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  store ptr null, ptr %i.ac, align 8
  br label %bb.l

bb.f:                                             ; preds = %bb.d
  %i.ad = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMs1_NtNtNtNtCs8K4cjrcxBsw_6hir_ty5infer7closure8analysis16expr_use_visitorINtB7_14ExprUseVisitorpE9walk_expr10___CALLSITE, i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.ad, label %bb.g [
    i8 0, label %bb.e
    i8 1, label %bb.h
    i8 2, label %bb.h
  ], !prof !14

bb.g:                                             ; preds = %bb.f
  %i.ae = invoke noundef i8 @_RNvMNtCsaMQbKjKCVRW_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvMs1_NtNtNtNtCs8K4cjrcxBsw_6hir_ty5infer7closure8analysis16expr_use_visitorINtB7_14ExprUseVisitorpE9walk_expr10___CALLSITE)
          to label %bb.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.h:                                             ; preds = %bb.f, %bb.f, %bb.i
  %.sroa.011.0 = phi i8 [ %i.ae, %bb.i ], [ %i.ad, %bb.f ], [ %i.ad, %bb.f ]
  %i.af = load ptr, ptr @_RNvNvMs1_NtNtNtNtCs8K4cjrcxBsw_6hir_ty5infer7closure8analysis16expr_use_visitorINtB7_14ExprUseVisitorpE9walk_expr10___CALLSITE, align 8, !nonnull !9, !align !12, !noundef !9
  %i.ag = invoke noundef zeroext i1 @_RNvNtCsbDqbwph1Irx_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.af, i8 noundef %.sroa.011.0)
          to label %bb.j unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.i:                                             ; preds = %bb.g
  %.not = icmp eq i8 %i.ae, 0
  br i1 %.not, label %bb.e, label %bb.h

bb.j:                                             ; preds = %bb.h
  br i1 %i.ag, label %bb.k, label %bb.e

bb.k:                                             ; preds = %bb.j
  %i.ah = load ptr, ptr @_RNvNvMs1_NtNtNtNtCs8K4cjrcxBsw_6hir_ty5infer7closure8analysis16expr_use_visitorINtB7_14ExprUseVisitorpE9walk_expr10___CALLSITE, align 8, !nonnull !9, !align !12, !noundef !9 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store ptr %i.t, ptr %i.p, align 8
  store ptr %i.p, ptr %i.q, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr @164, ptr %i.aj, align 8
  store i64 1, ptr %i.r, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr %i.q, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.553.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i64 1, ptr %.sroa.553.0..sroa_idx, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store ptr %i.ai, ptr %i.ak, align 8
  invoke void @_RNvMNtCsbDqbwph1Irx_7tracing4spanNtB2_4Span3new(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.o, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ah, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.r)
          to label %bb.m unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.l:                                             ; preds = %bb.m, %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.s, ptr noundef nonnull align 8 dereferenceable(40) %i.o, i64 40, i1 false)
  %i.al = load i64, ptr %i.s, align 8, !range !22, !noundef !9
  %.not59 = icmp eq i64 %i.al, 2
  br i1 %.not59, label %bb.c, label %bb.n

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %bb.l

bb.n:                                             ; preds = %bb.l
  %i.am = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  invoke void @_RNvMs2_NtCsaMQbKjKCVRW_12tracing_core10dispatcherNtB5_8Dispatch5enter(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.s, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.am)
          to label %bb.c unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.o:                                             ; preds = %bb.c
  br i1 %i.z, label %_RNvMs1_NtNtNtNtCs8K4cjrcxBsw_6hir_ty5infer7closure8analysis16expr_use_visitorINtB5_14ExprUseVisitorQNtB7_15InferBorrowKindE13consume_exprsBd_.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.an = load ptr, ptr %0, align 8, !nonnull !9, !align !12, !noundef !9
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 1440
  %i.ap = load ptr, ptr %i.ao, align 8, !nonnull !9, !align !12, !noundef !9
  %i.aq = load i32, ptr %i.t, align 4, !noundef !9 ; 2 uses
  %i.ar = getelementptr i8, ptr %i.ap, i64 48
  %.val67 = load ptr, ptr %i.ar, align 8, !align !12, !noundef !9 ; 3 uses
  %.not.i = icmp eq ptr %.val67, null
  br i1 %.not.i, label %bb.r, label %bb.q, !prof !10

bb.q:                                             ; preds = %bb.p
  %i.as = zext i32 %i.aq to i64                   ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.val67, i64 16
  %i.au = load i64, ptr %i.at, align 8, !noalias !5594, !noundef !9 ; 2 uses
  %i.av = icmp ugt i64 %i.au, %i.as
  br i1 %i.av, label %bb.t, label %bb.s

bb.r:                                             ; preds = %bb.p
  invoke void @_RNvNtCshzWfHUSfYae_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1072, i64 noundef 40, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @367) #42
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.r
  unreachable

bb.s:                                             ; preds = %bb.q
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %i.as, i64 noundef %i.au, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @367) #42
          to label %.noexc68 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc68:                                         ; preds = %bb.s
  unreachable

bb.t:                                             ; preds = %bb.q
  %i.aw = getelementptr inbounds nuw i8, ptr %.val67, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !noalias !5594, !nonnull !9, !noundef !9
  %i.ay = getelementptr inbounds nuw [48 x i8], ptr %i.ax, i64 %i.as ; 53 uses
  %i.az = load i32, ptr %i.ay, align 16, !range !52, !noundef !9 ; 3 uses
  %i.ba = icmp ne i32 %i.az, 29
  call void @llvm.assume(i1 %i.ba)
end_hunk_3
