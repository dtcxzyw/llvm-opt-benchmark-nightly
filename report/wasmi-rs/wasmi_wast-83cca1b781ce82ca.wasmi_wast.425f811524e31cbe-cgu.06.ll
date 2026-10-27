Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wasmi-rs/original/wasmi_wast-83cca1b781ce82ca.wasmi_wast.425f811524e31cbe-cgu.06?download=true
inline.NumInlined: 336
inline.NumDeleted: 199
begin_hunk_0_@_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNvXsy_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtBK_8IntoIterpppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtCsefoF4u9kbII_5wasmi6linker9ImportKeyINtB2u_10DefinitionuENtNtBQ_5alloc6GlobalEECs5HiJSMzJl2A_10wasmi_wast:bb.a

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45)
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !46, !nonnull !5, !noundef !5
  %i.k = atomicrmw add ptr %i.j, i64 -1 release, align 8, !noalias !46
  %i.l = icmp eq i64 %i.k, 1
  br i1 %i.l, label %bb.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeECs5HiJSMzJl2A_10wasmi_wast.exit.i.i.i.i.i.i

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcSNtNtCs5zeGauAcNNa_10wasmi_core5value7ValTypeE9drop_slowCsefoF4u9kbII_5wasmi(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.i) #17
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeECs5HiJSMzJl2A_10wasmi_wast.exit.i.i.i.i.i.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !47)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !48)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49)
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !50, !nonnull !5, !noundef !5
  %i.p = atomicrmw add ptr %i.o, i64 -1 release, align 8, !noalias !51
  %i.q = icmp eq i64 %i.p, 1
  br i1 %i.q, label %bb.g, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsefoF4u9kbII_5wasmi4func16TrampolineEntityuEECs5HiJSMzJl2A_10wasmi_wast.exit.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.f
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDG_INtNtNtCskKLDkoKarTP_4core3ops8function2FnTINtNtNtCsefoF4u9kbII_5wasmi4func6caller6CallerL0_uENtNtNtNtB1x_6engine8executor5inout11InOutParamsEEp6OutputINtNtBQ_6result6ResultNtB2h_12InOutResultsNtNtB1x_5error5ErrorENtNtBQ_6marker4SendNtB4d_4SyncEL_E9drop_slowCs5HiJSMzJl2A_10wasmi_wast(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.n) #17
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsefoF4u9kbII_5wasmi4func16TrampolineEntityuEECs5HiJSMzJl2A_10wasmi_wast.exit.i.i.i.i.i.i unwind label %bb.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeECs5HiJSMzJl2A_10wasmi_wast.exit.i.i.i.i.i.i: ; preds = %bb.e, %bb.d, %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !52)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !53)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54)
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !55, !nonnull !5, !noundef !5
  %i.t = atomicrmw add ptr %i.s, i64 -1 release, align 8, !noalias !56
  %i.u = icmp eq i64 %i.t, 1
  br i1 %i.u, label %bb.h, label %_RNvMsT_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5DyingNtNtCsefoF4u9kbII_5wasmi6linker9ImportKeyINtB1G_10DefinitionuENtB1m_14LeafOrInternalENtB1m_2KVE12drop_key_valCs5HiJSMzJl2A_10wasmi_wast.exit.i

bb.h:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeECs5HiJSMzJl2A_10wasmi_wast.exit.i.i.i.i.i.i
  fence acquire
  tail call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDG_INtNtNtCskKLDkoKarTP_4core3ops8function2FnTINtNtNtCsefoF4u9kbII_5wasmi4func6caller6CallerL0_uENtNtNtNtB1x_6engine8executor5inout11InOutParamsEEp6OutputINtNtBQ_6result6ResultNtB2h_12InOutResultsNtNtB1x_5error5ErrorENtNtBQ_6marker4SendNtB4d_4SyncEL_E9drop_slowCs5HiJSMzJl2A_10wasmi_wast(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.r) #17
  br label %_RNvMsT_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5DyingNtNtCsefoF4u9kbII_5wasmi6linker9ImportKeyINtB1G_10DefinitionuENtB1m_14LeafOrInternalENtB1m_2KVE12drop_key_valCs5HiJSMzJl2A_10wasmi_wast.exit.i

bb.i:                                             ; preds = %bb.g
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsefoF4u9kbII_5wasmi4func16TrampolineEntityuEECs5HiJSMzJl2A_10wasmi_wast.exit.i.i.i.i.i.i: ; preds = %bb.g, %bb.f
  resume { ptr, i32 } %i.m

_RNvMsT_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5DyingNtNtCsefoF4u9kbII_5wasmi6linker9ImportKeyINtB1G_10DefinitionuENtB1m_14LeafOrInternalENtB1m_2KVE12drop_key_valCs5HiJSMzJl2A_10wasmi_wast.exit.i: ; preds = %bb.h, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeECs5HiJSMzJl2A_10wasmi_wast.exit.i.i.i.i.i.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_RNvMsz_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_8IntoIterNtNtCsefoF4u9kbII_5wasmi6linker9ImportKeyINtB19_10DefinitionuEE10dying_nextCs5HiJSMzJl2A_10wasmi_wast(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %.0.val)
  %i.w = load ptr, ptr %i.a, align 8, !noundef !5 ; 2 uses
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %_RNvXNvXsy_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB8_8IntoIterpppENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropINtB2_9DropGuardNtNtCsefoF4u9kbII_5wasmi6linker9ImportKeyINtB2e_10DefinitionuENtNtBe_5alloc6GlobalEB1e_4dropCs5HiJSMzJl2A_10wasmi_wast.exit, label %bb.b

_RNvXNvXsy_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB8_8IntoIterpppENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropINtB2_9DropGuardNtNtCsefoF4u9kbII_5wasmi6linker9ImportKeyINtB2e_10DefinitionuENtNtBe_5alloc6GlobalEB1e_4dropCs5HiJSMzJl2A_10wasmi_wast.exit: ; preds = %_RNvMsT_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5DyingNtNtCsefoF4u9kbII_5wasmi6linker9ImportKeyINtB1G_10DefinitionuENtB1m_14LeafOrInternalENtB1m_2KVE12drop_key_valCs5HiJSMzJl2A_10wasmi_wast.exit.i, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNvXsy_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtBK_8IntoIterpppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtNtCsg06799QCvd1_17wasmi_collections15string_interner6detail8LenOrderNtB2w_3SymNtNtBQ_5alloc6GlobalEECs5HiJSMzJl2A_10wasmi_wast(ptr nonnull %.0.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_RNvMsz_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_8IntoIterNtNtNtCsg06799QCvd1_17wasmi_collections15string_interner6detail8LenOrderNtB1b_3SymE10dying_nextCs5HiJSMzJl2A_10wasmi_wast(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %.0.val)
  %i.b = load ptr, ptr %i.a, align 8, !noundef !5 ; 2 uses
  %.not2.i = icmp eq ptr %i.b, null
  br i1 %.not2.i, label %_RNvXNvXsy_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB8_8IntoIterpppENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropINtB2_9DropGuardNtNtNtCsg06799QCvd1_17wasmi_collections15string_interner6detail8LenOrderNtB2g_3SymNtNtBe_5alloc6GlobalEB1e_4dropCs5HiJSMzJl2A_10wasmi_wast.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %.sroa.41.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.b

bb.b:                                             ; preds = %_RNvMsT_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5DyingNtNtNtCsg06799QCvd1_17wasmi_collections15string_interner6detail8LenOrderNtB1I_3SymNtB1m_14LeafOrInternalENtB1m_2KVE12drop_key_valCs5HiJSMzJl2A_10wasmi_wast.exit.i, %.lr.ph.i
  %i.c = phi ptr [ %i.b, %.lr.ph.i ], [ %i.h, %_RNvMsT_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5DyingNtNtNtCsg06799QCvd1_17wasmi_collections15string_interner6detail8LenOrderNtB1I_3SymNtB1m_14LeafOrInternalENtB1m_2KVE12drop_key_valCs5HiJSMzJl2A_10wasmi_wast.exit.i ]
  %.sroa.41.0.copyload.i = load i64, ptr %.sroa.41.0..sroa_idx.i, align 8
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %.sroa.41.0.copyload.i ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !63)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !64)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !65)
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !66, !nonnull !5, !noundef !5
  %i.f = atomicrmw add ptr %i.e, i64 -1 release, align 8, !noalias !66
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.c, label %_RNvMsT_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5DyingNtNtNtCsg06799QCvd1_17wasmi_collections15string_interner6detail8LenOrderNtB1I_3SymNtB1m_14LeafOrInternalENtB1m_2KVE12drop_key_valCs5HiJSMzJl2A_10wasmi_wast.exit.i

bb.c:                                             ; preds = %bb.b
  fence acquire
  tail call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArceE9drop_slowCsg06799QCvd1_17wasmi_collections(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.d) #17
  br label %_RNvMsT_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5DyingNtNtNtCsg06799QCvd1_17wasmi_collections15string_interner6detail8LenOrderNtB1I_3SymNtB1m_14LeafOrInternalENtB1m_2KVE12drop_key_valCs5HiJSMzJl2A_10wasmi_wast.exit.i

_RNvMsT_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5DyingNtNtNtCsg06799QCvd1_17wasmi_collections15string_interner6detail8LenOrderNtB1I_3SymNtB1m_14LeafOrInternalENtB1m_2KVE12drop_key_valCs5HiJSMzJl2A_10wasmi_wast.exit.i: ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_RNvMsz_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_8IntoIterNtNtNtCsg06799QCvd1_17wasmi_collections15string_interner6detail8LenOrderNtB1b_3SymE10dying_nextCs5HiJSMzJl2A_10wasmi_wast(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %.0.val)
  %i.h = load ptr, ptr %i.a, align 8, !noundef !5 ; 2 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %_RNvXNvXsy_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB8_8IntoIterpppENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropINtB2_9DropGuardNtNtNtCsg06799QCvd1_17wasmi_collections15string_interner6detail8LenOrderNtB2g_3SymNtNtBe_5alloc6GlobalEB1e_4dropCs5HiJSMzJl2A_10wasmi_wast.exit, label %bb.b

_RNvXNvXsy_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB8_8IntoIterpppENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropINtB2_9DropGuardNtNtNtCsg06799QCvd1_17wasmi_collections15string_interner6detail8LenOrderNtB2g_3SymNtNtBe_5alloc6GlobalEB1e_4dropCs5HiJSMzJl2A_10wasmi_wast.exit: ; preds = %_RNvMsT_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5DyingNtNtNtCsg06799QCvd1_17wasmi_collections15string_interner6detail8LenOrderNtB1I_3SymNtB1m_14LeafOrInternalENtB1m_2KVE12drop_key_valCs5HiJSMzJl2A_10wasmi_wast.exit.i, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs8VXqOAwmH9S_4wast4core4expr10ExpressionECs5HiJSMzJl2A_10wasmi_wast(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val2 = load i64, ptr %i.a, align 8, !noundef !5 ; 6 uses
  %cond = icmp eq i64 %.val2, 0
  br i1 %cond, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSNtNtNtCs8VXqOAwmH9S_4wast4core4expr11InstructionEECs5HiJSMzJl2A_10wasmi_wast.exit, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.b = icmp eq i64 %i.d, %.val2
  br i1 %i.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtCs8VXqOAwmH9S_4wast4core4expr11InstructionECs5HiJSMzJl2A_10wasmi_wast.exit.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i14 = phi i64 [ %i.d, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw [88 x i8], ptr %.val, i64 %.sroa.0.0.i.i14
  %i.d = add nuw nsw i64 %.sroa.0.0.i.i14, 1      ; 4 uses
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs8VXqOAwmH9S_4wast4core4expr11InstructionECs5HiJSMzJl2A_10wasmi_wast(ptr noalias nofree noundef align 8 dereferenceable(88) %i.c)
          to label %bb.b unwind label %bb.d

bb.c:                                             ; preds = %.lr.ph16
  %i.e = add i64 %.sroa.0.1.i.i15, 1              ; 2 uses
  %i.f = icmp eq i64 %i.e, %.val2
  br i1 %i.f, label %.body.i, label %.lr.ph16

bb.d:                                             ; preds = %.lr.ph
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = icmp eq i64 %i.d, %.val2
  br i1 %i.h, label %.body.i, label %.lr.ph16

.lr.ph16:                                         ; preds = %bb.d, %bb.c
  %.sroa.0.1.i.i15 = phi i64 [ %i.e, %bb.c ], [ %i.d, %bb.d ] ; 2 uses
  %i.i = getelementptr inbounds nuw [88 x i8], ptr %.val, i64 %.sroa.0.1.i.i15
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs8VXqOAwmH9S_4wast4core4expr11InstructionECs5HiJSMzJl2A_10wasmi_wast(ptr noalias nofree noundef align 8 dereferenceable(88) %i.i) #19
          to label %bb.c unwind label %bb.e

bb.e:                                             ; preds = %.lr.ph16
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18
  unreachable

.body.i:                                          ; preds = %bb.c, %bb.d
  %i.k = mul nuw nsw i64 %.val2, 88
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.k, i64 noundef 8) #16
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val6 = load i64, ptr %i.l, align 8, !noundef !5 ; 2 uses
  %i.m = icmp eq i64 %.val6, 0
  br i1 %i.m, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSNtNtNtCs8VXqOAwmH9S_4wast4core4expr10BranchHintEECs5HiJSMzJl2A_10wasmi_wast.exit, label %bb.f

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtCs8VXqOAwmH9S_4wast4core4expr11InstructionECs5HiJSMzJl2A_10wasmi_wast.exit.i: ; preds = %bb.b
  %i.n = mul nuw nsw i64 %.val2, 88
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.n, i64 noundef 8) #16
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSNtNtNtCs8VXqOAwmH9S_4wast4core4expr11InstructionEECs5HiJSMzJl2A_10wasmi_wast.exit

bb.f:                                             ; preds = %.body.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val5 = load ptr, ptr %i.o, align 8, !nonnull !5, !noundef !5
  %i.p = shl nuw nsw i64 %.val6, 4
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5, i64 noundef range(i64 1, 0) %i.p, i64 noundef 8) #16
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSNtNtNtCs8VXqOAwmH9S_4wast4core4expr10BranchHintEECs5HiJSMzJl2A_10wasmi_wast.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSNtNtNtCs8VXqOAwmH9S_4wast4core4expr11InstructionEECs5HiJSMzJl2A_10wasmi_wast.exit: ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtCs8VXqOAwmH9S_4wast4core4expr11InstructionECs5HiJSMzJl2A_10wasmi_wast.exit.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val4 = load i64, ptr %i.q, align 8, !noundef !5 ; 2 uses
  %i.r = icmp eq i64 %.val4, 0
  br i1 %i.r, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSNtNtNtCs8VXqOAwmH9S_4wast4core4expr10BranchHintEECs5HiJSMzJl2A_10wasmi_wast.exit11, label %bb.g

bb.g:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSNtNtNtCs8VXqOAwmH9S_4wast4core4expr11InstructionEECs5HiJSMzJl2A_10wasmi_wast.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val3 = load ptr, ptr %i.s, align 8, !nonnull !5, !noundef !5
  %i.t = shl nuw nsw i64 %.val4, 4
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3, i64 noundef range(i64 1, 0) %i.t, i64 noundef 8) #16
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSNtNtNtCs8VXqOAwmH9S_4wast4core4expr10BranchHintEECs5HiJSMzJl2A_10wasmi_wast.exit11

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSNtNtNtCs8VXqOAwmH9S_4wast4core4expr10BranchHintEECs5HiJSMzJl2A_10wasmi_wast.exit: ; preds = %bb.f, %.body.i
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val9 = load ptr, ptr %i.u, align 8, !align !8, !noundef !5 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val10 = load i64, ptr %i.v, align 8           ; 2 uses
  %i.w = icmp eq ptr %.val9, null
  %i.x = icmp eq i64 %.val10, 0
  %or.cond.i = select i1 %i.w, i1 true, i1 %i.x
  br i1 %or.cond.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSNtNtCs8VXqOAwmH9S_4wast5token4SpanEEECs5HiJSMzJl2A_10wasmi_wast.exit, label %bb.h

bb.h:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSNtNtNtCs8VXqOAwmH9S_4wast4core4expr10BranchHintEECs5HiJSMzJl2A_10wasmi_wast.exit
  %1 = shl nuw nsw i64 %.val10, 3
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9) ]
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9, i64 noundef range(i64 1, 0) %1, i64 noundef 8) #16
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSNtNtCs8VXqOAwmH9S_4wast5token4SpanEEECs5HiJSMzJl2A_10wasmi_wast.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSNtNtNtCs8VXqOAwmH9S_4wast4core4expr10BranchHintEECs5HiJSMzJl2A_10wasmi_wast.exit11: ; preds = %bb.g, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSNtNtNtCs8VXqOAwmH9S_4wast4core4expr11InstructionEECs5HiJSMzJl2A_10wasmi_wast.exit
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val7 = load ptr, ptr %i.y, align 8, !align !8, !noundef !5 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val8 = load i64, ptr %i.z, align 8            ; 2 uses
  %i.aa = icmp eq ptr %.val7, null
  %i.ab = icmp eq i64 %.val8, 0
  %or.cond.i12 = select i1 %i.aa, i1 true, i1 %i.ab
  br i1 %or.cond.i12, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSNtNtCs8VXqOAwmH9S_4wast5token4SpanEEECs5HiJSMzJl2A_10wasmi_wast.exit13, label %bb.i

bb.i:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSNtNtNtCs8VXqOAwmH9S_4wast4core4expr10BranchHintEECs5HiJSMzJl2A_10wasmi_wast.exit11
  %2 = shl nuw nsw i64 %.val8, 3
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val7) ]
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val7, i64 noundef range(i64 1, 0) %2, i64 noundef 8) #16
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSNtNtCs8VXqOAwmH9S_4wast5token4SpanEEECs5HiJSMzJl2A_10wasmi_wast.exit13

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSNtNtCs8VXqOAwmH9S_4wast5token4SpanEEECs5HiJSMzJl2A_10wasmi_wast.exit13: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSNtNtNtCs8VXqOAwmH9S_4wast4core4expr10BranchHintEECs5HiJSMzJl2A_10wasmi_wast.exit11, %bb.i
  ret void

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSNtNtCs8VXqOAwmH9S_4wast5token4SpanEEECs5HiJSMzJl2A_10wasmi_wast.exit: ; preds = %bb.h, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSNtNtNtCs8VXqOAwmH9S_4wast4core4expr10BranchHintEECs5HiJSMzJl2A_10wasmi_wast.exit
  resume { ptr, i32 } %i.g
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs8VXqOAwmH9S_4wast4core4expr11InstructionECs5HiJSMzJl2A_10wasmi_wast(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !129, !noundef !5 ; 3 uses
  %i.b = icmp ne i64 %i.a, -9223372036854775199
  tail call void @llvm.assume(i1 %i.b)
  %i.c = xor i64 %i.a, -9223372036854775808
  %i.d = icmp slt i64 %i.a, 0
  %i.e = select i1 %i.d, i64 %i.c, i64 609
  switch i64 %i.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs8VXqOAwmH9S_4wast4core4expr11SelectTypesECs5HiJSMzJl2A_10wasmi_wast.exit [
    i64 0, label %bb.b
    i64 1, label %bb.f
    i64 3, label %bb.j
    i64 9, label %bb.n
    i64 12, label %bb.q
    i64 14, label %bb.u
    i64 18, label %bb.y
    i64 94, label %bb.ac
    i64 95, label %bb.ad
    i64 578, label %bb.ae
    i64 580, label %bb.al
    i64 608, label %bb.ap
    i64 609, label %bb.as
  ]

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs8VXqOAwmH9S_4wast4core4expr11SelectTypesECs5HiJSMzJl2A_10wasmi_wast.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs8VXqOAwmH9S_4wast4core5types7ValTypeEECs5HiJSMzJl2A_10wasmi_wast.exit.i.i, %bb.y, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs8VXqOAwmH9S_4wast4core4expr11ResumeThrowECs5HiJSMzJl2A_10wasmi_wast.exit, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs8VXqOAwmH9S_4wast4core4expr6ResumeECs5HiJSMzJl2A_10wasmi_wast.exit, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCs8VXqOAwmH9S_4wast4core4expr9BlockTypeEECs5HiJSMzJl2A_10wasmi_wast.exit31, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs8VXqOAwmH9S_4wast4core4expr8TryTableECs5HiJSMzJl2A_10wasmi_wast.exit, %bb.ad, %bb.ac, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCs8VXqOAwmH9S_4wast4core4expr12CallIndirectEECs5HiJSMzJl2A_10wasmi_wast.exit26, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCs8VXqOAwmH9S_4wast4core4expr12CallIndirectEECs5HiJSMzJl2A_10wasmi_wast.exit, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs8VXqOAwmH9S_4wast4core4expr14BrTableIndicesECs5HiJSMzJl2A_10wasmi_wast.exit, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCs8VXqOAwmH9S_4wast4core4expr9BlockTypeEECs5HiJSMzJl2A_10wasmi_wast.exit17, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCs8VXqOAwmH9S_4wast4core4expr9BlockTypeEECs5HiJSMzJl2A_10wasmi_wast.exit12, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCs8VXqOAwmH9S_4wast4core4expr9BlockTypeEECs5HiJSMzJl2A_10wasmi_wast.exit, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val3 = load ptr, ptr %i.f, align 8, !nonnull !5, !noundef !5 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !130)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !131)
  %i.g = getelementptr inbounds nuw i8, ptr %.val3, i64 40
  tail call void @llvm.experimental.noalias.scope.decl(metadata !132)
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !133, !noundef !5 ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCs8VXqOAwmH9S_4wast4core4expr9BlockTypeEECs5HiJSMzJl2A_10wasmi_wast.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !134)
  %i.j = getelementptr inbounds nuw i8, ptr %.val3, i64 48
  %.val1.i.i.i.i.i = load i64, ptr %i.j, align 8, !alias.scope !135, !noundef !5 ; 2 uses
  %i.k = icmp eq i64 %.val1.i.i.i.i.i, 0
  br i1 %i.k, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSTINtNtB4_6option6OptionNtNtCs8VXqOAwmH9S_4wast5token2IdEIB1d_NtB1A_14NameAnnotationENtNtNtB1C_4core5types7ValTypeEEECs5HiJSMzJl2A_10wasmi_wast.exit.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = mul nuw nsw i64 %.val1.i.i.i.i.i, 96
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.h, i64 noundef range(i64 1, 0) %i.l, i64 noundef 8) #16, !noalias !135
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSTINtNtB4_6option6OptionNtNtCs8VXqOAwmH9S_4wast5token2IdEIB1d_NtB1A_14NameAnnotationENtNtNtB1C_4core5types7ValTypeEEECs5HiJSMzJl2A_10wasmi_wast.exit.i.i.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSTINtNtB4_6option6OptionNtNtCs8VXqOAwmH9S_4wast5token2IdEIB1d_NtB1A_14NameAnnotationENtNtNtB1C_4core5types7ValTypeEEECs5HiJSMzJl2A_10wasmi_wast.exit.i.i.i.i.i: ; preds = %bb.d, %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %.val3, i64 64
  %.val3.i.i.i.i.i = load i64, ptr %i.m, align 8, !alias.scope !135, !noundef !5 ; 2 uses
  %i.n = icmp eq i64 %.val3.i.i.i.i.i, 0
  br i1 %i.n, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCs8VXqOAwmH9S_4wast4core4expr9BlockTypeEECs5HiJSMzJl2A_10wasmi_wast.exit, label %bb.e

bb.e:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSTINtNtB4_6option6OptionNtNtCs8VXqOAwmH9S_4wast5token2IdEIB1d_NtB1A_14NameAnnotationENtNtNtB1C_4core5types7ValTypeEEECs5HiJSMzJl2A_10wasmi_wast.exit.i.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.val3, i64 56
  %.val2.i.i.i.i.i = load ptr, ptr %i.o, align 8, !alias.scope !135, !nonnull !5, !noundef !5
  %i.p = mul nuw nsw i64 %.val3.i.i.i.i.i, 48
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i.i.i.i.i, i64 noundef range(i64 1, 0) %i.p, i64 noundef 8) #16, !noalias !135
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCs8VXqOAwmH9S_4wast4core4expr9BlockTypeEECs5HiJSMzJl2A_10wasmi_wast.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCs8VXqOAwmH9S_4wast4core4expr9BlockTypeEECs5HiJSMzJl2A_10wasmi_wast.exit: ; preds = %bb.b, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSTINtNtB4_6option6OptionNtNtCs8VXqOAwmH9S_4wast5token2IdEIB1d_NtB1A_14NameAnnotationENtNtNtB1C_4core5types7ValTypeEEECs5HiJSMzJl2A_10wasmi_wast.exit.i.i.i.i.i, %bb.e
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3, i64 noundef 120, i64 noundef 8) #16
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs8VXqOAwmH9S_4wast4core4expr11SelectTypesECs5HiJSMzJl2A_10wasmi_wast.exit

bb.f:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val2 = load ptr, ptr %i.q, align 8, !nonnull !5, !noundef !5 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !136)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !137)
  %i.r = getelementptr inbounds nuw i8, ptr %.val2, i64 40
  tail call void @llvm.experimental.noalias.scope.decl(metadata !138)
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !139, !noundef !5 ; 2 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCs8VXqOAwmH9S_4wast4core4expr9BlockTypeEECs5HiJSMzJl2A_10wasmi_wast.exit12, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !140)
  %i.u = getelementptr inbounds nuw i8, ptr %.val2, i64 48
  %.val1.i.i.i.i.i8 = load i64, ptr %i.u, align 8, !alias.scope !141, !noundef !5 ; 2 uses
  %i.v = icmp eq i64 %.val1.i.i.i.i.i8, 0
  br i1 %i.v, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSTINtNtB4_6option6OptionNtNtCs8VXqOAwmH9S_4wast5token2IdEIB1d_NtB1A_14NameAnnotationENtNtNtB1C_4core5types7ValTypeEEECs5HiJSMzJl2A_10wasmi_wast.exit.i.i.i.i.i9, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = mul nuw nsw i64 %.val1.i.i.i.i.i8, 96
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.s, i64 noundef range(i64 1, 0) %i.w, i64 noundef 8) #16, !noalias !141
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSTINtNtB4_6option6OptionNtNtCs8VXqOAwmH9S_4wast5token2IdEIB1d_NtB1A_14NameAnnotationENtNtNtB1C_4core5types7ValTypeEEECs5HiJSMzJl2A_10wasmi_wast.exit.i.i.i.i.i9

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSTINtNtB4_6option6OptionNtNtCs8VXqOAwmH9S_4wast5token2IdEIB1d_NtB1A_14NameAnnotationENtNtNtB1C_4core5types7ValTypeEEECs5HiJSMzJl2A_10wasmi_wast.exit.i.i.i.i.i9: ; preds = %bb.h, %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %.val2, i64 64
  %.val3.i.i.i.i.i10 = load i64, ptr %i.x, align 8, !alias.scope !141, !noundef !5 ; 2 uses
  %i.y = icmp eq i64 %.val3.i.i.i.i.i10, 0
  br i1 %i.y, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCs8VXqOAwmH9S_4wast4core4expr9BlockTypeEECs5HiJSMzJl2A_10wasmi_wast.exit12, label %bb.i

bb.i:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSTINtNtB4_6option6OptionNtNtCs8VXqOAwmH9S_4wast5token2IdEIB1d_NtB1A_14NameAnnotationENtNtNtB1C_4core5types7ValTypeEEECs5HiJSMzJl2A_10wasmi_wast.exit.i.i.i.i.i9
  %i.z = getelementptr inbounds nuw i8, ptr %.val2, i64 56
  %.val2.i.i.i.i.i11 = load ptr, ptr %i.z, align 8, !alias.scope !141, !nonnull !5, !noundef !5
  %i.aa = mul nuw nsw i64 %.val3.i.i.i.i.i10, 48
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i.i.i.i.i11, i64 noundef range(i64 1, 0) %i.aa, i64 noundef 8) #16, !noalias !141
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCs8VXqOAwmH9S_4wast4core4expr9BlockTypeEECs5HiJSMzJl2A_10wasmi_wast.exit12

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCs8VXqOAwmH9S_4wast4core4expr9BlockTypeEECs5HiJSMzJl2A_10wasmi_wast.exit12: ; preds = %bb.f, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSTINtNtB4_6option6OptionNtNtCs8VXqOAwmH9S_4wast5token2IdEIB1d_NtB1A_14NameAnnotationENtNtNtB1C_4core5types7ValTypeEEECs5HiJSMzJl2A_10wasmi_wast.exit.i.i.i.i.i9, %bb.i
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2, i64 noundef 120, i64 noundef 8) #16
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs8VXqOAwmH9S_4wast4core4expr11SelectTypesECs5HiJSMzJl2A_10wasmi_wast.exit

bb.j:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.ab, align 8, !nonnull !5, !noundef !5 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !142)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !143)
  %i.ac = getelementptr inbounds nuw i8, ptr %.val1, i64 40
  tail call void @llvm.experimental.noalias.scope.decl(metadata !144)
  %i.ad = load ptr, ptr %i.ac, align 8, !alias.scope !145, !noundef !5 ; 2 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCs8VXqOAwmH9S_4wast4core4expr9BlockTypeEECs5HiJSMzJl2A_10wasmi_wast.exit17, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.experimental.noalias.scope.decl(metadata !146)
  %i.af = getelementptr inbounds nuw i8, ptr %.val1, i64 48
  %.val1.i.i.i.i.i13 = load i64, ptr %i.af, align 8, !alias.scope !147, !noundef !5 ; 2 uses
  %i.ag = icmp eq i64 %.val1.i.i.i.i.i13, 0
  br i1 %i.ag, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSTINtNtB4_6option6OptionNtNtCs8VXqOAwmH9S_4wast5token2IdEIB1d_NtB1A_14NameAnnotationENtNtNtB1C_4core5types7ValTypeEEECs5HiJSMzJl2A_10wasmi_wast.exit.i.i.i.i.i14, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ah = mul nuw nsw i64 %.val1.i.i.i.i.i13, 96
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ad, i64 noundef range(i64 1, 0) %i.ah, i64 noundef 8) #16, !noalias !147
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSTINtNtB4_6option6OptionNtNtCs8VXqOAwmH9S_4wast5token2IdEIB1d_NtB1A_14NameAnnotationENtNtNtB1C_4core5types7ValTypeEEECs5HiJSMzJl2A_10wasmi_wast.exit.i.i.i.i.i14

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSTINtNtB4_6option6OptionNtNtCs8VXqOAwmH9S_4wast5token2IdEIB1d_NtB1A_14NameAnnotationENtNtNtB1C_4core5types7ValTypeEEECs5HiJSMzJl2A_10wasmi_wast.exit.i.i.i.i.i14: ; preds = %bb.l, %bb.k
  %i.ai = getelementptr inbounds nuw i8, ptr %.val1, i64 64
  %.val3.i.i.i.i.i15 = load i64, ptr %i.ai, align 8, !alias.scope !147, !noundef !5 ; 2 uses
  %i.aj = icmp eq i64 %.val3.i.i.i.i.i15, 0
  br i1 %i.aj, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCs8VXqOAwmH9S_4wast4core4expr9BlockTypeEECs5HiJSMzJl2A_10wasmi_wast.exit17, label %bb.m

bb.m:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSTINtNtB4_6option6OptionNtNtCs8VXqOAwmH9S_4wast5token2IdEIB1d_NtB1A_14NameAnnotationENtNtNtB1C_4core5types7ValTypeEEECs5HiJSMzJl2A_10wasmi_wast.exit.i.i.i.i.i14
  %i.ak = getelementptr inbounds nuw i8, ptr %.val1, i64 56
  %.val2.i.i.i.i.i16 = load ptr, ptr %i.ak, align 8, !alias.scope !147, !nonnull !5, !noundef !5
  %i.al = mul nuw nsw i64 %.val3.i.i.i.i.i15, 48
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i.i.i.i.i16, i64 noundef range(i64 1, 0) %i.al, i64 noundef 8) #16, !noalias !147
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCs8VXqOAwmH9S_4wast4core4expr9BlockTypeEECs5HiJSMzJl2A_10wasmi_wast.exit17

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCs8VXqOAwmH9S_4wast4core4expr9BlockTypeEECs5HiJSMzJl2A_10wasmi_wast.exit17: ; preds = %bb.j, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSTINtNtB4_6option6OptionNtNtCs8VXqOAwmH9S_4wast5token2IdEIB1d_NtB1A_14NameAnnotationENtNtNtB1C_4core5types7ValTypeEEECs5HiJSMzJl2A_10wasmi_wast.exit.i.i.i.i.i14, %bb.m
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef 120, i64 noundef 8) #16
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs8VXqOAwmH9S_4wast4core4expr11SelectTypesECs5HiJSMzJl2A_10wasmi_wast.exit

bb.n:                                             ; preds = %bb.a
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs8VXqOAwmH9S_4wast5token5IndexENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5HiJSMzJl2A_10wasmi_wast(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.am)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs8VXqOAwmH9S_4wast4core4expr14BrTableIndicesECs5HiJSMzJl2A_10wasmi_wast.exit unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.an = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs8VXqOAwmH9S_4wast5token5IndexENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5HiJSMzJl2A_10wasmi_wast(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.am)
          to label %common.resume unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18
  unreachable

common.resume:                                    ; preds = %bb.at, %bb.aq, %bb.aj, %bb.aa, %bb.o
  %common.resume.op = phi { ptr, i32 } [ %i.cs, %bb.aq ], [ %i.an, %bb.o ], [ %i.bo, %bb.aa ], [ %i.ce, %bb.aj ], [ %i.cu, %bb.at ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs8VXqOAwmH9S_4wast4core4expr14BrTableIndicesECs5HiJSMzJl2A_10wasmi_wast.exit: ; preds = %bb.n
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs8VXqOAwmH9S_4wast5token5IndexENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5HiJSMzJl2A_10wasmi_wast(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.am)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs8VXqOAwmH9S_4wast4core4expr11SelectTypesECs5HiJSMzJl2A_10wasmi_wast.exit

bb.q:                                             ; preds = %bb.a
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val5 = load ptr, ptr %i.ap, align 8, !nonnull !5, !noundef !5 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !148)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !149)
  %i.aq = getelementptr inbounds nuw i8, ptr %.val5, i64 40
  tail call void @llvm.experimental.noalias.scope.decl(metadata !150)
  %i.ar = load ptr, ptr %i.aq, align 8, !alias.scope !151, !noundef !5 ; 2 uses
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCs8VXqOAwmH9S_4wast4core4expr12CallIndirectEECs5HiJSMzJl2A_10wasmi_wast.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @llvm.experimental.noalias.scope.decl(metadata !152)
  %i.at = getelementptr inbounds nuw i8, ptr %.val5, i64 48
  %.val1.i.i.i.i.i18 = load i64, ptr %i.at, align 8, !alias.scope !153, !noundef !5 ; 2 uses
  %i.au = icmp eq i64 %.val1.i.i.i.i.i18, 0
  br i1 %i.au, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSTINtNtB4_6option6OptionNtNtCs8VXqOAwmH9S_4wast5token2IdEIB1d_NtB1A_14NameAnnotationENtNtNtB1C_4core5types7ValTypeEEECs5HiJSMzJl2A_10wasmi_wast.exit.i.i.i.i.i19, label %bb.s
end_hunk_0
begin_hunk_1_@_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs8VXqOAwmH9S_4wast4core4expr11InstructionECs5HiJSMzJl2A_10wasmi_wast:bb.a
bb.af:                                            ; preds = %bb.ae
  tail call void @llvm.experimental.noalias.scope.decl(metadata !167)
  %i.bx = getelementptr inbounds nuw i8, ptr %.val.i, i64 48
  %.val1.i.i.i.i.i.i = load i64, ptr %i.bx, align 8, !alias.scope !168, !noalias !162, !noundef !5 ; 2 uses
  %i.by = icmp eq i64 %.val1.i.i.i.i.i.i, 0
  br i1 %i.by, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSTINtNtB4_6option6OptionNtNtCs8VXqOAwmH9S_4wast5token2IdEIB1d_NtB1A_14NameAnnotationENtNtNtB1C_4core5types7ValTypeEEECs5HiJSMzJl2A_10wasmi_wast.exit.i.i.i.i.i.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.bz = mul nuw nsw i64 %.val1.i.i.i.i.i.i, 96
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bv, i64 noundef range(i64 1, 0) %i.bz, i64 noundef 8) #16, !noalias !169
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSTINtNtB4_6option6OptionNtNtCs8VXqOAwmH9S_4wast5token2IdEIB1d_NtB1A_14NameAnnotationENtNtNtB1C_4core5types7ValTypeEEECs5HiJSMzJl2A_10wasmi_wast.exit.i.i.i.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSTINtNtB4_6option6OptionNtNtCs8VXqOAwmH9S_4wast5token2IdEIB1d_NtB1A_14NameAnnotationENtNtNtB1C_4core5types7ValTypeEEECs5HiJSMzJl2A_10wasmi_wast.exit.i.i.i.i.i.i: ; preds = %bb.ag, %bb.af
  %i.ca = getelementptr inbounds nuw i8, ptr %.val.i, i64 64
  %.val3.i.i.i.i.i.i = load i64, ptr %i.ca, align 8, !alias.scope !168, !noalias !162, !noundef !5 ; 2 uses
  %i.cb = icmp eq i64 %.val3.i.i.i.i.i.i, 0
  br i1 %i.cb, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSTINtNtB4_6option6OptionNtNtCs8VXqOAwmH9S_4wast5token2IdEIB1d_NtB1A_14NameAnnotationENtNtNtB1C_4core5types7ValTypeEEECs5HiJSMzJl2A_10wasmi_wast.exit.i.i.i.i.i.i
  %i.cc = getelementptr inbounds nuw i8, ptr %.val.i, i64 56
  %.val2.i.i.i.i.i.i = load ptr, ptr %i.cc, align 8, !alias.scope !168, !noalias !162, !nonnull !5, !noundef !5
  %i.cd = mul nuw nsw i64 %.val3.i.i.i.i.i.i, 48
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i.i.i.i.i.i, i64 noundef range(i64 1, 0) %i.cd, i64 noundef 8) #16, !noalias !169
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSTINtNtB4_6option6OptionNtNtCs8VXqOAwmH9S_4wast5token2IdEIB1d_NtB1A_14NameAnnotationENtNtNtB1C_4core5types7ValTypeEEECs5HiJSMzJl2A_10wasmi_wast.exit.i.i.i.i.i.i, %bb.ae
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef 120, i64 noundef 8) #16, !noalias !162
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs8VXqOAwmH9S_4wast4core4expr13TryTableCatchENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5HiJSMzJl2A_10wasmi_wast(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bs)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs8VXqOAwmH9S_4wast4core4expr8TryTableECs5HiJSMzJl2A_10wasmi_wast.exit unwind label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ce = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs8VXqOAwmH9S_4wast4core4expr13TryTableCatchENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5HiJSMzJl2A_10wasmi_wast(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bs)
          to label %common.resume unwind label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.cf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs8VXqOAwmH9S_4wast4core4expr8TryTableECs5HiJSMzJl2A_10wasmi_wast.exit: ; preds = %bb.ai
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs8VXqOAwmH9S_4wast4core4expr13TryTableCatchENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5HiJSMzJl2A_10wasmi_wast(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bs)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs8VXqOAwmH9S_4wast4core4expr11SelectTypesECs5HiJSMzJl2A_10wasmi_wast.exit

bb.al:                                            ; preds = %bb.a
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.cg, align 8, !nonnull !5, !noundef !5 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !170)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !171)
  %i.ch = getelementptr inbounds nuw i8, ptr %.val, i64 40
  tail call void @llvm.experimental.noalias.scope.decl(metadata !172)
  %i.ci = load ptr, ptr %i.ch, align 8, !alias.scope !173, !noundef !5 ; 2 uses
  %i.cj = icmp eq ptr %i.ci, null
  br i1 %i.cj, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCs8VXqOAwmH9S_4wast4core4expr9BlockTypeEECs5HiJSMzJl2A_10wasmi_wast.exit31, label %bb.am

bb.am:                                            ; preds = %bb.al
  tail call void @llvm.experimental.noalias.scope.decl(metadata !174)
  %i.ck = getelementptr inbounds nuw i8, ptr %.val, i64 48
  %.val1.i.i.i.i.i27 = load i64, ptr %i.ck, align 8, !alias.scope !175, !noundef !5 ; 2 uses
  %i.cl = icmp eq i64 %.val1.i.i.i.i.i27, 0
  br i1 %i.cl, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSTINtNtB4_6option6OptionNtNtCs8VXqOAwmH9S_4wast5token2IdEIB1d_NtB1A_14NameAnnotationENtNtNtB1C_4core5types7ValTypeEEECs5HiJSMzJl2A_10wasmi_wast.exit.i.i.i.i.i28, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.cm = mul nuw nsw i64 %.val1.i.i.i.i.i27, 96
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ci, i64 noundef range(i64 1, 0) %i.cm, i64 noundef 8) #16, !noalias !175
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSTINtNtB4_6option6OptionNtNtCs8VXqOAwmH9S_4wast5token2IdEIB1d_NtB1A_14NameAnnotationENtNtNtB1C_4core5types7ValTypeEEECs5HiJSMzJl2A_10wasmi_wast.exit.i.i.i.i.i28

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSTINtNtB4_6option6OptionNtNtCs8VXqOAwmH9S_4wast5token2IdEIB1d_NtB1A_14NameAnnotationENtNtNtB1C_4core5types7ValTypeEEECs5HiJSMzJl2A_10wasmi_wast.exit.i.i.i.i.i28: ; preds = %bb.an, %bb.am
  %i.cn = getelementptr inbounds nuw i8, ptr %.val, i64 64
  %.val3.i.i.i.i.i29 = load i64, ptr %i.cn, align 8, !alias.scope !175, !noundef !5 ; 2 uses
  %i.co = icmp eq i64 %.val3.i.i.i.i.i29, 0
  br i1 %i.co, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCs8VXqOAwmH9S_4wast4core4expr9BlockTypeEECs5HiJSMzJl2A_10wasmi_wast.exit31, label %bb.ao

bb.ao:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSTINtNtB4_6option6OptionNtNtCs8VXqOAwmH9S_4wast5token2IdEIB1d_NtB1A_14NameAnnotationENtNtNtB1C_4core5types7ValTypeEEECs5HiJSMzJl2A_10wasmi_wast.exit.i.i.i.i.i28
  %i.cp = getelementptr inbounds nuw i8, ptr %.val, i64 56
  %.val2.i.i.i.i.i30 = load ptr, ptr %i.cp, align 8, !alias.scope !175, !nonnull !5, !noundef !5
  %i.cq = mul nuw nsw i64 %.val3.i.i.i.i.i29, 48
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i.i.i.i.i30, i64 noundef range(i64 1, 0) %i.cq, i64 noundef 8) #16, !noalias !175
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCs8VXqOAwmH9S_4wast4core4expr9BlockTypeEECs5HiJSMzJl2A_10wasmi_wast.exit31

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCs8VXqOAwmH9S_4wast4core4expr9BlockTypeEECs5HiJSMzJl2A_10wasmi_wast.exit31: ; preds = %bb.al, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSTINtNtB4_6option6OptionNtNtCs8VXqOAwmH9S_4wast5token2IdEIB1d_NtB1A_14NameAnnotationENtNtNtB1C_4core5types7ValTypeEEECs5HiJSMzJl2A_10wasmi_wast.exit.i.i.i.i.i28, %bb.ao
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef 120, i64 noundef 8) #16
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs8VXqOAwmH9S_4wast4core4expr11SelectTypesECs5HiJSMzJl2A_10wasmi_wast.exit

bb.ap:                                            ; preds = %bb.a
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs8VXqOAwmH9S_4wast4core4expr6HandleENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5HiJSMzJl2A_10wasmi_wast(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.cr)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs8VXqOAwmH9S_4wast4core4expr6ResumeECs5HiJSMzJl2A_10wasmi_wast.exit unwind label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.cs = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs8VXqOAwmH9S_4wast4core4expr6HandleENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5HiJSMzJl2A_10wasmi_wast(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.cr)
          to label %common.resume unwind label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ct = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs8VXqOAwmH9S_4wast4core4expr6ResumeECs5HiJSMzJl2A_10wasmi_wast.exit: ; preds = %bb.ap
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs8VXqOAwmH9S_4wast4core4expr6HandleENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5HiJSMzJl2A_10wasmi_wast(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.cr)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs8VXqOAwmH9S_4wast4core4expr11SelectTypesECs5HiJSMzJl2A_10wasmi_wast.exit

bb.as:                                            ; preds = %bb.a
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs8VXqOAwmH9S_4wast4core4expr6HandleENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5HiJSMzJl2A_10wasmi_wast(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs8VXqOAwmH9S_4wast4core4expr11ResumeThrowECs5HiJSMzJl2A_10wasmi_wast.exit unwind label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.cu = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs8VXqOAwmH9S_4wast4core4expr6HandleENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5HiJSMzJl2A_10wasmi_wast(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %0)
          to label %common.resume unwind label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.cv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs8VXqOAwmH9S_4wast4core4expr11ResumeThrowECs5HiJSMzJl2A_10wasmi_wast.exit: ; preds = %bb.as
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs8VXqOAwmH9S_4wast4core4expr6HandleENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5HiJSMzJl2A_10wasmi_wast(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %0)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs8VXqOAwmH9S_4wast4core4expr11SelectTypesECs5HiJSMzJl2A_10wasmi_wast.exit
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs8VXqOAwmH9S_4wast4core4func8FuncKindECs5HiJSMzJl2A_10wasmi_wast(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(64) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !noundef !5   ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSNtNtNtCs8VXqOAwmH9S_4wast4core4func5LocalEECs5HiJSMzJl2A_10wasmi_wast.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !178)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i = load i64, ptr %i.c, align 8, !alias.scope !178, !noundef !5 ; 2 uses
  %i.d = icmp eq i64 %.val1.i, 0
  br i1 %i.d, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSNtNtNtCs8VXqOAwmH9S_4wast4core4func5LocalEECs5HiJSMzJl2A_10wasmi_wast.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = mul nuw nsw i64 %.val1.i, 96
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef range(i64 1, 0) %i.e, i64 noundef 8) #16, !noalias !178
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSNtNtNtCs8VXqOAwmH9S_4wast4core4func5LocalEECs5HiJSMzJl2A_10wasmi_wast.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSNtNtNtCs8VXqOAwmH9S_4wast4core4func5LocalEECs5HiJSMzJl2A_10wasmi_wast.exit: ; preds = %bb.d, %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs8VXqOAwmH9S_4wast4core4expr10ExpressionECs5HiJSMzJl2A_10wasmi_wast(ptr noalias nofree noundef align 8 dereferenceable(48) %i.f)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs8VXqOAwmH9S_4wast4core6export12InlineExportECs5HiJSMzJl2A_10wasmi_wast(ptr noalias nofree noundef align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecReENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5HiJSMzJl2A_10wasmi_wast(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecReEECs5HiJSMzJl2A_10wasmi_wast.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecReENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5HiJSMzJl2A_10wasmi_wast(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecReEECs5HiJSMzJl2A_10wasmi_wast.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecReEECs5HiJSMzJl2A_10wasmi_wast.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecReEECs5HiJSMzJl2A_10wasmi_wast.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecReENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5HiJSMzJl2A_10wasmi_wast(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMs0_NtCsefoF4u9kbII_5wasmi5storeINtB5_5StoreuE22can_create_more_tablesCs5HiJSMzJl2A_10wasmi_wast(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(1688) %0, i64 noundef %1) unnamed_addr #1 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !182)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1616
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !182, !noundef !5 ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_RNvMs0_NtCsefoF4u9kbII_5wasmi5storeINtB5_5StoreuE36store_inner_and_resource_limiter_refCs5HiJSMzJl2A_10wasmi_wast.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1624
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1608
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !182, !nonnull !5, !noundef !5
  %i.f = load ptr, ptr %i.c, align 8, !alias.scope !182, !nonnull !5, !align !8, !noundef !5
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !invariant.load !5, !noalias !183, !nonnull !5
  %i.i = tail call { ptr, ptr } %i.h(ptr noundef nonnull %i.b, ptr noalias nofree noundef nonnull %i.e) #20, !noalias !183, !inline_history !9 ; 2 uses
  %i.j = extractvalue { ptr, ptr } %i.i, 0        ; 2 uses
  %i.k = extractvalue { ptr, ptr } %i.i, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.j), "nonnull"(ptr %i.k) ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.m = load i64, ptr %i.l, align 8, !noundef !5
  %i.n = tail call i64 @llvm.uadd.sat.i64(i64 %i.m, i64 %1)
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  %i.p = load ptr, ptr %i.o, align 8, !invariant.load !5, !nonnull !5
  %i.q = tail call noundef i64 %i.p(ptr noundef nonnull %i.j) #20
  %i.r = icmp ule i64 %i.n, %i.q
  br label %_RNvMs0_NtCsefoF4u9kbII_5wasmi5storeINtB5_5StoreuE36store_inner_and_resource_limiter_refCs5HiJSMzJl2A_10wasmi_wast.exit.thread

_RNvMs0_NtCsefoF4u9kbII_5wasmi5storeINtB5_5StoreuE36store_inner_and_resource_limiter_refCs5HiJSMzJl2A_10wasmi_wast.exit.thread: ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i1 [ %i.r, %bb.b ], [ true, %bb.a ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMs0_NtCsefoF4u9kbII_5wasmi5storeINtB5_5StoreuE24can_create_more_memoriesCs5HiJSMzJl2A_10wasmi_wast(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(1688) %0, i64 noundef %1) unnamed_addr #1 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !187)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1616
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !187, !noundef !5 ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_RNvMs0_NtCsefoF4u9kbII_5wasmi5storeINtB5_5StoreuE36store_inner_and_resource_limiter_refCs5HiJSMzJl2A_10wasmi_wast.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1624
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1608
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !187, !nonnull !5, !noundef !5
  %i.f = load ptr, ptr %i.c, align 8, !alias.scope !187, !nonnull !5, !align !8, !noundef !5
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !invariant.load !5, !noalias !188, !nonnull !5
  %i.i = tail call { ptr, ptr } %i.h(ptr noundef nonnull %i.b, ptr noalias nofree noundef nonnull %i.e) #20, !noalias !188, !inline_history !9 ; 2 uses
  %i.j = extractvalue { ptr, ptr } %i.i, 0        ; 2 uses
  %i.k = extractvalue { ptr, ptr } %i.i, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.j), "nonnull"(ptr %i.k) ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.m = load i64, ptr %i.l, align 8, !noundef !5
  %i.n = tail call i64 @llvm.uadd.sat.i64(i64 %i.m, i64 %1)
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 72
  %i.p = load ptr, ptr %i.o, align 8, !invariant.load !5, !nonnull !5
  %i.q = tail call noundef i64 %i.p(ptr noundef nonnull %i.j) #20
  %i.r = icmp ule i64 %i.n, %i.q
  br label %_RNvMs0_NtCsefoF4u9kbII_5wasmi5storeINtB5_5StoreuE36store_inner_and_resource_limiter_refCs5HiJSMzJl2A_10wasmi_wast.exit.thread

_RNvMs0_NtCsefoF4u9kbII_5wasmi5storeINtB5_5StoreuE36store_inner_and_resource_limiter_refCs5HiJSMzJl2A_10wasmi_wast.exit.thread: ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i1 [ %i.r, %bb.b ], [ true, %bb.a ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMs0_NtCsefoF4u9kbII_5wasmi5storeINtB5_5StoreuE25can_create_more_instancesCs5HiJSMzJl2A_10wasmi_wast(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(1688) %0, i64 noundef %1) unnamed_addr #1 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !192)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1616
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !192, !noundef !5 ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_RNvMs0_NtCsefoF4u9kbII_5wasmi5storeINtB5_5StoreuE36store_inner_and_resource_limiter_refCs5HiJSMzJl2A_10wasmi_wast.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1624
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1608
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !192, !nonnull !5, !noundef !5
  %i.f = load ptr, ptr %i.c, align 8, !alias.scope !192, !nonnull !5, !align !8, !noundef !5
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !invariant.load !5, !noalias !193, !nonnull !5
  %i.i = tail call { ptr, ptr } %i.h(ptr noundef nonnull %i.b, ptr noalias nofree noundef nonnull %i.e) #20, !noalias !193, !inline_history !9 ; 2 uses
  %i.j = extractvalue { ptr, ptr } %i.i, 0        ; 2 uses
  %i.k = extractvalue { ptr, ptr } %i.i, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.j), "nonnull"(ptr %i.k) ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.m = load i64, ptr %i.l, align 8, !noundef !5 ; 2 uses
  %i.n = icmp ult i64 %i.m, 576460752303423488
  tail call void @llvm.assume(i1 %i.n)
  %i.o = tail call i64 @llvm.uadd.sat.i64(i64 %i.m, i64 %1)
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  %i.q = load ptr, ptr %i.p, align 8, !invariant.load !5, !nonnull !5
  %i.r = tail call noundef i64 %i.q(ptr noundef nonnull %i.j) #20
  %i.s = icmp ule i64 %i.o, %i.r
  br label %_RNvMs0_NtCsefoF4u9kbII_5wasmi5storeINtB5_5StoreuE36store_inner_and_resource_limiter_refCs5HiJSMzJl2A_10wasmi_wast.exit.thread

_RNvMs0_NtCsefoF4u9kbII_5wasmi5storeINtB5_5StoreuE36store_inner_and_resource_limiter_refCs5HiJSMzJl2A_10wasmi_wast.exit.thread: ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i1 [ %i.s, %bb.b ], [ true, %bb.a ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtCsefoF4u9kbII_5wasmi5storeINtB5_5StoreuE36store_inner_and_resource_limiter_refCs5HiJSMzJl2A_10wasmi_wast(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef align 8 dereferenceable(1688) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 1616
  %i.b = load ptr, ptr %i.a, align 8, !noundef !5 ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 1624
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 1608
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !5, !noundef !5
  %i.f = load ptr, ptr %i.c, align 8, !nonnull !5, !align !8, !noundef !5
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !invariant.load !5, !nonnull !5
  %i.i = tail call { ptr, ptr } %i.h(ptr noundef nonnull %i.b, ptr noalias nofree noundef nonnull %i.e) #20 ; 2 uses
  %i.j = extractvalue { ptr, ptr } %i.i, 0        ; 2 uses
  %i.k = extractvalue { ptr, ptr } %i.i, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.j), "nonnull"(ptr %i.k) ]
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.3.0 = phi ptr [ %i.k, %bb.b ], [ undef, %bb.a ]
  %.sroa.0.0 = phi ptr [ %i.j, %bb.b ], [ null, %bb.a ]
  store ptr %1, ptr %0, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.0, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.3.0, ptr %i.m, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i32 } @_RNvMs1_NtCsefoF4u9kbII_5wasmi5storeINtB5_5StoreuE16alloc_trampolineCs5HiJSMzJl2A_10wasmi_wast(ptr noalias nofree noundef align 8 dereferenceable(1688) %0, ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1584 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !219)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %1, ptr %i.b, align 8, !noalias !220
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %2, ptr %i.d, align 8, !noalias !220
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1600 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !219, !noundef !5 ; 3 uses
  %i.g = icmp ult i64 %i.f, 576460752303423488
  tail call void @llvm.assume(i1 %i.g)
  %i.h = invoke { i64, i64 } @_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCs5HiJSMzJl2A_10wasmi_wast(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.f, i64 noundef 1, i64 noundef 8, i64 noundef 16)
          to label %bb.b unwind label %bb.j, !noalias !221

bb.b:                                             ; preds = %bb.a
  %i.i = extractvalue { i64, i64 } %i.h, 0
  %.not.i = icmp eq i64 %i.i, -1
  br i1 %.not.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = atomicrmw add ptr %1, i64 -1 release, align 8, !noalias !222
  %i.k = icmp eq i64 %i.j, 1
  br i1 %i.k, label %bb.d, label %bb.m

bb.d:                                             ; preds = %bb.c
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDG_INtNtNtCskKLDkoKarTP_4core3ops8function2FnTINtNtNtCsefoF4u9kbII_5wasmi4func6caller6CallerL0_uENtNtNtNtB1x_6engine8executor5inout11InOutParamsEEp6OutputINtNtBQ_6result6ResultNtB2h_12InOutResultsNtNtB1x_5error5ErrorENtNtBQ_6marker4SendNtB4d_4SyncEL_E9drop_slowCs5HiJSMzJl2A_10wasmi_wast(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b) #17, !noalias !221
  br label %bb.m

bb.e:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !223)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !220
  store ptr %1, ptr %i.a, align 8, !noalias !224
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %2, ptr %i.l, align 8, !noalias !224
  %i.m = load i64, ptr %i.e, align 8, !alias.scope !225, !noundef !5 ; 3 uses
  %i.n = load i64, ptr %i.c, align 8, !range !226, !alias.scope !225, !noundef !5
  %i.o = icmp eq i64 %i.m, %i.n
  br i1 %i.o, label %bb.f, label %bb.n

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtCsefoF4u9kbII_5wasmi4func16TrampolineEntityuEE8grow_oneCs5HiJSMzJl2A_10wasmi_wast(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.n unwind label %bb.g, !noalias !221

bb.g:                                             ; preds = %bb.f
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.q = atomicrmw add ptr %1, i64 -1 release, align 8, !noalias !227
  %i.r = icmp eq i64 %i.q, 1
  br i1 %i.r, label %bb.h, label %.body.i

bb.h:                                             ; preds = %bb.g
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDG_INtNtNtCskKLDkoKarTP_4core3ops8function2FnTINtNtNtCsefoF4u9kbII_5wasmi4func6caller6CallerL0_uENtNtNtNtB1x_6engine8executor5inout11InOutParamsEEp6OutputINtNtBQ_6result6ResultNtB2h_12InOutResultsNtNtB1x_5error5ErrorENtNtBQ_6marker4SendNtB4d_4SyncEL_E9drop_slowCs5HiJSMzJl2A_10wasmi_wast(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #17
          to label %.body.i unwind label %bb.i, !noalias !221

bb.i:                                             ; preds = %bb.h
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18, !noalias !221
  unreachable

.body.i:                                          ; preds = %bb.k, %bb.j, %bb.h, %bb.g
  %eh.lpad-body16.i = phi { ptr, i32 } [ %i.p, %bb.h ], [ %i.p, %bb.g ], [ %i.t, %bb.k ], [ %i.t, %bb.j ]
  resume { ptr, i32 } %eh.lpad-body16.i

bb.j:                                             ; preds = %bb.a
  %i.t = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.u = atomicrmw add ptr %1, i64 -1 release, align 8, !noalias !228
  %i.v = icmp eq i64 %i.u, 1
  br i1 %i.v, label %bb.k, label %.body.i

bb.k:                                             ; preds = %bb.j
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDG_INtNtNtCskKLDkoKarTP_4core3ops8function2FnTINtNtNtCsefoF4u9kbII_5wasmi4func6caller6CallerL0_uENtNtNtNtB1x_6engine8executor5inout11InOutParamsEEp6OutputINtNtBQ_6result6ResultNtB2h_12InOutResultsNtNtB1x_5error5ErrorENtNtBQ_6marker4SendNtB4d_4SyncEL_E9drop_slowCs5HiJSMzJl2A_10wasmi_wast(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b) #17
          to label %.body.i unwind label %bb.l, !noalias !221

bb.l:                                             ; preds = %bb.k
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18, !noalias !221
  unreachable

bb.m:                                             ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @_RNvNtCsefoF4u9kbII_5wasmi5store16handle_arena_err(i8 noundef 0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 26) #21
  unreachable

bb.n:                                             ; preds = %bb.f, %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 1592
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !225, !nonnull !5, !noundef !5
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %i.m ; 2 uses
  store ptr %1, ptr %i.z, align 8, !noalias !221
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr %2, ptr %i.aa, align 8, !noalias !221
  %i.ab = add i64 %i.m, 1
  store i64 %i.ab, ptr %i.e, align 8, !alias.scope !225
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !220
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 1576
  %i.ad = load i32, ptr %i.ac, align 8, !noundef !5
  %i.ae = insertvalue { i64, i32 } poison, i64 %i.f, 0
  %i.af = insertvalue { i64, i32 } %i.ae, i32 %i.ad, 1
  ret { i64, i32 } %i.af
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef align 8 ptr @_RNvMs1_NtCsefoF4u9kbII_5wasmi5storeINtB5_5StoreuE21invoke_call_hook_implCs5HiJSMzJl2A_10wasmi_wast(ptr noalias nofree noundef nonnull %0, i8 noundef range(i8 0, 4) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %2) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !nonnull !5, !noundef !5
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !5, !align !8, !noundef !5
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !5, !nonnull !5
  %i.f = tail call noundef align 8 ptr %i.e(ptr noundef nonnull %i.a, ptr noalias nofree noundef nonnull %0, i8 noundef %1) #20
  ret ptr %i.f
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvMs_NtCsefoF4u9kbII_5wasmi5storeINtB4_5StoreuE3newCs5HiJSMzJl2A_10wasmi_wast(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([1688 x i8]) align 8 captures(none) dereferenceable(1688) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.val, i64 172
  %i.b = load i8, ptr %i.a, align 4, !range !4, !noalias !231, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %.val, i64 144 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !noalias !231, !noundef !5 ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = atomicrmw add ptr %i.d, i64 1 monotonic, align 8, !noalias !231
  %i.f = icmp slt i64 %i.e, 0
  br i1 %i.f, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.d, %bb.a
  %i.g = phi <2 x ptr> [ %i.l, %bb.d ], [ <ptr null, ptr undef>, %bb.a ]
  %i.h = getelementptr inbounds nuw i8, ptr %.val, i64 168
  %i.i = load i32, ptr %i.h, align 8, !noalias !231, !noundef !5
  %i.j = atomicrmw add ptr %.val, i64 1 monotonic, align 8, !noalias !231
  %i.k = icmp slt i64 %i.j, 0
  br i1 %i.k, label %bb.f, label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.l = load <2 x ptr>, ptr %i.c, align 8, !noalias !231
  br label %bb.c

bb.e:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.f:                                             ; preds = %bb.c
  tail call void @llvm.trap()
  unreachable

bb.g:                                             ; preds = %bb.c
  %i.m = atomicrmw add ptr @_RNvNvMNtNtCsefoF4u9kbII_5wasmi5store2idNtB4_7StoreId3new8STORE_ID, i32 1 acq_rel, align 4, !noalias !231
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 240
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %.sroa.21.0..sroa_idx, i8 0, i64 216, i1 false)
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 464
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %.sroa.23.0..sroa_idx, i8 0, i64 216, i1 false)
  %.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 688
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %.sroa.25.0..sroa_idx, i8 0, i64 216, i1 false)
  %.sroa.27.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 912
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %.sroa.27.0..sroa_idx, i8 0, i64 216, i1 false)
  %.sroa.29.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1136
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %.sroa.29.0..sroa_idx, i8 0, i64 216, i1 false)
  %.sroa.31.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1360
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %.sroa.31.0..sroa_idx, i8 0, i64 216, i1 false)
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx, i8 0, i64 24, i1 false)
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %.sroa.8.0..sroa_idx, i8 0, i64 44, i1 false)
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 160
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.12.0..sroa_idx, i8 0, i64 16, i1 false)
  store i64 0, ptr %0, align 8
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.5.0..sroa_idx6, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.97.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
end_hunk_1
begin_hunk_2_@_RNvYNCINvMNtNtCsefoF4u9kbII_5wasmi5store6prunedNtB8_17PrunedStoreVTable3newuE0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTQNtB8_11PrunedStoreNtNtBc_4func10TrampolineINtNtB1l_6option6OptionNtNtNtNtNtBc_6engine8executor7handler5state4InstENtNtB39_5inout11InOutParamsNtBa_9CallHooksEE9call_onceCs5HiJSMzJl2A_10wasmi_wast:bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.i = zext i1 %7 to i8
  store i8 %i.i, ptr %i.h, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !409)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !410)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 1672
  %.sroa.0.0.copyload.i.i = load i128, ptr %i.j, align 8, !alias.scope !411
  %.not.i.i = icmp eq i128 %.sroa.0.0.copyload.i.i, 7954624184318742432034558525444319996
  br i1 %.not.i.i, label %bb.b, label %_RINvMs3_NtNtCsefoF4u9kbII_5wasmi5store6prunedNtB6_11PrunedStore7restoreuECs5HiJSMzJl2A_10wasmi_wast.exit.i, !prof !11

_RINvMs3_NtNtCsefoF4u9kbII_5wasmi5store6prunedNtB6_11PrunedStore7restoreuECs5HiJSMzJl2A_10wasmi_wast.exit.i: ; preds = %bb.a
  store i64 0, ptr %0, align 8, !alias.scope !409
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @_RINvNtCskKLDkoKarTP_4core3any9type_nameuECs5HiJSMzJl2A_10wasmi_wast, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !409
  br label %_RNCINvMNtNtCsefoF4u9kbII_5wasmi5store6prunedNtB5_17PrunedStoreVTable3newuE0Cs5HiJSMzJl2A_10wasmi_wast.exit

bb.b:                                             ; preds = %bb.a
  br i1 %7, label %bb.c, label %bb.p

bb.c:                                             ; preds = %bb.q, %bb.p, %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !412)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !413
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 1576
  %i.l = load i32, ptr %i.k, align 8, !alias.scope !414, !noundef !5
  %.not.i.i.i = icmp eq i32 %3, %i.l
  br i1 %.not.i.i.i, label %bb.d, label %bb.s, !prof !11

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 1600
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !414, !noundef !5
  %i.o = icmp ult i64 %2, %i.n
  br i1 %i.o, label %bb.e, label %bb.s, !prof !11

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 1592
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !414, !nonnull !5, !noundef !5
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %2 ; 3 uses
  %i.s = load ptr, ptr %i.r, align 8, !noalias !413, !nonnull !5, !noundef !5
  %i.t = atomicrmw add ptr %i.s, i64 1 monotonic, align 8, !noalias !413
  %i.u = icmp slt i64 %i.t, 0
  br i1 %i.u, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = load <2 x ptr>, ptr %i.r, align 8, !noalias !413
  %i.w = load ptr, ptr %i.r, align 8, !noalias !413, !nonnull !5, !noundef !5 ; 2 uses
  store <2 x ptr> %i.v, ptr %i.a, align 16, !noalias !413
  %i.x = invoke noundef align 8 ptr @_RINvMs7_NtCsefoF4u9kbII_5wasmi4funcINtB6_16TrampolineEntityuE4callQINtNtB8_5store5StoreuEECs5HiJSMzJl2A_10wasmi_wast(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(1688) %1, i64 noundef range(i64 0, 2) %4, double %5, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.g)
          to label %bb.j unwind label %bb.h, !noalias !415 ; 3 uses

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.trap()
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.y = landingpad { ptr, i32 }
          cleanup
  %i.z = atomicrmw add ptr %i.w, i64 -1 release, align 8, !noalias !416
  %i.aa = icmp eq i64 %i.z, 1
  br i1 %i.aa, label %bb.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsefoF4u9kbII_5wasmi4func16TrampolineEntityuEECs5HiJSMzJl2A_10wasmi_wast.exit.i.i

bb.i:                                             ; preds = %bb.h
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDG_INtNtNtCskKLDkoKarTP_4core3ops8function2FnTINtNtNtCsefoF4u9kbII_5wasmi4func6caller6CallerL0_uENtNtNtNtB1x_6engine8executor5inout11InOutParamsEEp6OutputINtNtBQ_6result6ResultNtB2h_12InOutResultsNtNtB1x_5error5ErrorENtNtBQ_6marker4SendNtB4d_4SyncEL_E9drop_slowCs5HiJSMzJl2A_10wasmi_wast(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #17
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsefoF4u9kbII_5wasmi4func16TrampolineEntityuEECs5HiJSMzJl2A_10wasmi_wast.exit.i.i unwind label %bb.o, !noalias !417

bb.j:                                             ; preds = %bb.f
  %.not21.i.i = icmp eq ptr %i.x, null
  %i.ab = atomicrmw add ptr %i.w, i64 -1 release, align 8, !noalias !417
  %i.ac = icmp eq i64 %i.ab, 1                    ; 2 uses
  br i1 %.not21.i.i, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  br i1 %i.ac, label %bb.l, label %bb.s

bb.l:                                             ; preds = %bb.k
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDG_INtNtNtCskKLDkoKarTP_4core3ops8function2FnTINtNtNtCsefoF4u9kbII_5wasmi4func6caller6CallerL0_uENtNtNtNtB1x_6engine8executor5inout11InOutParamsEEp6OutputINtNtBQ_6result6ResultNtB2h_12InOutResultsNtNtB1x_5error5ErrorENtNtBQ_6marker4SendNtB4d_4SyncEL_E9drop_slowCs5HiJSMzJl2A_10wasmi_wast(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #17, !noalias !417
  br label %bb.s

bb.m:                                             ; preds = %bb.j
  br i1 %i.ac, label %bb.n, label %bb.t

bb.n:                                             ; preds = %bb.m
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDG_INtNtNtCskKLDkoKarTP_4core3ops8function2FnTINtNtNtCsefoF4u9kbII_5wasmi4func6caller6CallerL0_uENtNtNtNtB1x_6engine8executor5inout11InOutParamsEEp6OutputINtNtBQ_6result6ResultNtB2h_12InOutResultsNtNtB1x_5error5ErrorENtNtBQ_6marker4SendNtB4d_4SyncEL_E9drop_slowCs5HiJSMzJl2A_10wasmi_wast(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #17, !noalias !417
  br label %bb.t

bb.o:                                             ; preds = %bb.i
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18, !noalias !417
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsefoF4u9kbII_5wasmi4func16TrampolineEntityuEECs5HiJSMzJl2A_10wasmi_wast.exit.i.i: ; preds = %bb.i, %bb.h
  resume { ptr, i32 } %i.y

bb.p:                                             ; preds = %bb.b
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 1632
  %i.af = load ptr, ptr %i.ae, align 8, !alias.scope !410, !noundef !5 ; 2 uses
  %.not34.i = icmp eq ptr %i.af, null
  br i1 %.not34.i, label %bb.c, label %bb.q, !prof !11

bb.q:                                             ; preds = %bb.p
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 1608
  %i.ah = load ptr, ptr %i.ag, align 8, !alias.scope !410, !nonnull !5, !noundef !5
  tail call void @llvm.experimental.noalias.scope.decl(metadata !418)
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 1640
  %i.aj = load ptr, ptr %i.ai, align 8, !alias.scope !419, !nonnull !5, !align !8, !noundef !5
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  %i.al = load ptr, ptr %i.ak, align 8, !invariant.load !5, !noalias !420, !nonnull !5
  %i.am = tail call noundef align 8 ptr %i.al(ptr noundef nonnull %i.af, ptr noalias nofree noundef nonnull %i.ah, i8 noundef 2) #20, !noalias !421, !inline_history !405 ; 2 uses
  %.not35.i = icmp eq ptr %i.am, null
  br i1 %.not35.i, label %bb.c, label %bb.r

bb.r:                                             ; preds = %bb.q
  store i64 -1, ptr %0, align 8, !alias.scope !409
  %.sroa.419.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.am, ptr %.sroa.419.0..sroa_idx.i, align 8, !alias.scope !409
  br label %_RNCINvMNtNtCsefoF4u9kbII_5wasmi5store6prunedNtB5_17PrunedStoreVTable3newuE0Cs5HiJSMzJl2A_10wasmi_wast.exit

bb.s:                                             ; preds = %bb.l, %bb.k, %bb.d, %bb.c
  %.sroa.8.0.ph.i = phi ptr [ undef, %bb.c ], [ undef, %bb.d ], [ %i.x, %bb.k ], [ %i.x, %bb.l ]
  %.sroa.02.0.ph.i = phi i64 [ 1, %bb.c ], [ 2, %bb.d ], [ -1, %bb.k ], [ -1, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !413
  store i64 %.sroa.02.0.ph.i, ptr %0, align 8, !alias.scope !409
  %.sroa.412.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.8.0.ph.i, ptr %.sroa.412.0..sroa_idx.i, align 8, !alias.scope !409
  br label %_RNCINvMNtNtCsefoF4u9kbII_5wasmi5store6prunedNtB5_17PrunedStoreVTable3newuE0Cs5HiJSMzJl2A_10wasmi_wast.exit

bb.t:                                             ; preds = %bb.n, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !413
  br i1 %7, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.w, %bb.v, %bb.t
  store i64 -2, ptr %0, align 8, !alias.scope !409
  br label %_RNCINvMNtNtCsefoF4u9kbII_5wasmi5store6prunedNtB5_17PrunedStoreVTable3newuE0Cs5HiJSMzJl2A_10wasmi_wast.exit

bb.v:                                             ; preds = %bb.t
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 1632
  %i.ao = load ptr, ptr %i.an, align 8, !alias.scope !410, !noundef !5 ; 2 uses
  %.not37.i = icmp eq ptr %i.ao, null
  br i1 %.not37.i, label %bb.u, label %bb.w, !prof !11

bb.w:                                             ; preds = %bb.v
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 1608
  %i.aq = load ptr, ptr %i.ap, align 8, !alias.scope !410, !nonnull !5, !noundef !5
  call void @llvm.experimental.noalias.scope.decl(metadata !422)
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 1640
  %i.as = load ptr, ptr %i.ar, align 8, !alias.scope !423, !nonnull !5, !align !8, !noundef !5
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 32
  %i.au = load ptr, ptr %i.at, align 8, !invariant.load !5, !noalias !424, !nonnull !5
  %i.av = call noundef align 8 ptr %i.au(ptr noundef nonnull %i.ao, ptr noalias nofree noundef nonnull %i.aq, i8 noundef 3) #20, !noalias !425, !inline_history !405 ; 2 uses
  %.not38.i = icmp eq ptr %i.av, null
  br i1 %.not38.i, label %bb.u, label %bb.x

bb.x:                                             ; preds = %bb.w
  store i64 -1, ptr %0, align 8, !alias.scope !409
  %.sroa.433.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.av, ptr %.sroa.433.0..sroa_idx.i, align 8, !alias.scope !409
  br label %_RNCINvMNtNtCsefoF4u9kbII_5wasmi5store6prunedNtB5_17PrunedStoreVTable3newuE0Cs5HiJSMzJl2A_10wasmi_wast.exit

_RNCINvMNtNtCsefoF4u9kbII_5wasmi5store6prunedNtB5_17PrunedStoreVTable3newuE0Cs5HiJSMzJl2A_10wasmi_wast.exit: ; preds = %_RINvMs3_NtNtCsefoF4u9kbII_5wasmi5store6prunedNtB6_11PrunedStore7restoreuECs5HiJSMzJl2A_10wasmi_wast.exit.i, %bb.r, %bb.s, %bb.u, %bb.x
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvYNCINvMNtNtCsefoF4u9kbII_5wasmi5store6prunedNtB8_17PrunedStoreVTable3newuEs0_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTQNtB8_11PrunedStoreRNtNtBc_5table5TableyNtNtNtCs5zeGauAcNNa_10wasmi_core5table3raw6RawRefEE9call_onceCs5HiJSMzJl2A_10wasmi_wast(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, ptr noalias nofree noundef align 8 dereferenceable(1688) %1, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(8) %2, i64 noundef %3, i32 noundef %4) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !436)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !437)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 1672
  %.sroa.0.0.copyload.i.i = load i128, ptr %i.d, align 8, !alias.scope !438
  %.not.i.i = icmp eq i128 %.sroa.0.0.copyload.i.i, 7954624184318742432034558525444319996
  br i1 %.not.i.i, label %bb.b, label %_RINvMs3_NtNtCsefoF4u9kbII_5wasmi5store6prunedNtB6_11PrunedStore7restoreuECs5HiJSMzJl2A_10wasmi_wast.exit.i, !prof !11

_RINvMs3_NtNtCsefoF4u9kbII_5wasmi5store6prunedNtB6_11PrunedStore7restoreuECs5HiJSMzJl2A_10wasmi_wast.exit.i: ; preds = %bb.a
  %.sroa.55.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 16, i1 false), !alias.scope !436
  store ptr @_RINvNtCskKLDkoKarTP_4core3any9type_nameuECs5HiJSMzJl2A_10wasmi_wast, ptr %.sroa.55.0..sroa_idx.i, align 8, !alias.scope !436
  br label %_RNCINvMNtNtCsefoF4u9kbII_5wasmi5store6prunedNtB5_17PrunedStoreVTable3newuEs0_0Cs5HiJSMzJl2A_10wasmi_wast.exit

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !439)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 1616
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !440, !noundef !5 ; 2 uses
  %.not.i13.i = icmp eq ptr %i.f, null
  br i1 %.not.i13.i, label %_RNvMs0_NtCsefoF4u9kbII_5wasmi5storeINtB5_5StoreuE36store_inner_and_resource_limiter_refCs5HiJSMzJl2A_10wasmi_wast.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 1624
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 1608
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !440, !nonnull !5, !noundef !5
  %i.j = load ptr, ptr %i.g, align 8, !alias.scope !440, !nonnull !5, !align !8, !noundef !5
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !invariant.load !5, !noalias !441, !nonnull !5
  %i.m = tail call { ptr, ptr } %i.l(ptr noundef nonnull %i.f, ptr noalias nofree noundef nonnull %i.i) #20, !noalias !441, !inline_history !435 ; 2 uses
  %i.n = extractvalue { ptr, ptr } %i.m, 0        ; 2 uses
  %i.o = extractvalue { ptr, ptr } %i.m, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.n), "nonnull"(ptr %i.o) ]
  br label %_RNvMs0_NtCsefoF4u9kbII_5wasmi5storeINtB5_5StoreuE36store_inner_and_resource_limiter_refCs5HiJSMzJl2A_10wasmi_wast.exit.i

_RNvMs0_NtCsefoF4u9kbII_5wasmi5storeINtB5_5StoreuE36store_inner_and_resource_limiter_refCs5HiJSMzJl2A_10wasmi_wast.exit.i: ; preds = %bb.c, %bb.b
  %.sroa.3.0.i.i = phi ptr [ %i.o, %bb.c ], [ undef, %bb.b ]
  %.sroa.0.0.i.i = phi ptr [ %i.n, %bb.c ], [ null, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !442
  store ptr %.sroa.0.0.i.i, ptr %i.c, align 8, !noalias !442
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %.sroa.3.0.i.i, ptr %i.p, align 8, !noalias !442
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !442
  call void @_RNvMs4_NtNtCsefoF4u9kbII_5wasmi5store5innerNtB5_10StoreInner30try_resolve_table_and_fuel_mut(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(1688) %1, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %2), !noalias !436
  %i.q = load i64, ptr %i.b, align 8, !range !6, !noalias !442, !noundef !5
  %i.r = trunc nuw i64 %i.q to i1
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !noalias !442 ; 2 uses
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_RNvMs0_NtCsefoF4u9kbII_5wasmi5storeINtB5_5StoreuE36store_inner_and_resource_limiter_refCs5HiJSMzJl2A_10wasmi_wast.exit.i
  %i.v = load i64, ptr %i.s, align 8, !range !12, !noalias !442, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !442
  store i64 0, ptr %0, align 8, !alias.scope !436
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.v, ptr %.sroa.47.0..sroa_idx.i, align 8, !alias.scope !436
  %.sroa.58.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.u, ptr %.sroa.58.0..sroa_idx.i, align 8, !alias.scope !436
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !442
  br label %_RNCINvMNtNtCsefoF4u9kbII_5wasmi5store6prunedNtB5_17PrunedStoreVTable3newuEs0_0Cs5HiJSMzJl2A_10wasmi_wast.exit

bb.e:                                             ; preds = %_RNvMs0_NtCsefoF4u9kbII_5wasmi5storeINtB5_5StoreuE36store_inner_and_resource_limiter_refCs5HiJSMzJl2A_10wasmi_wast.exit.i
  %i.w = load ptr, ptr %i.s, align 8, !noalias !442, !nonnull !5, !align !8, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !442
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !442
  call void @_RNvMNtCs5zeGauAcNNa_10wasmi_core5tableNtB2_5Table8grow_raw(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.w, i64 noundef %3, i32 noundef %4, ptr noalias nofree noundef nonnull align 8 dereferenceable_or_null(32) %i.u, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c), !noalias !436
  %i.x = load i64, ptr %i.a, align 8, !range !443, !noalias !442, !noundef !5 ; 2 uses
  %.not12.i = icmp eq i64 %i.x, -1
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.z = load i64, ptr %i.y, align 8, !noalias !442 ; 2 uses
  br i1 %.not12.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.sroa.511.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.z, ptr %.sroa.511.0..sroa_idx.i, align 8, !alias.scope !436
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sink7.i = phi i64 [ %i.x, %bb.f ], [ %i.z, %bb.e ]
  %.sink.i = phi i64 [ 1, %bb.f ], [ 2, %bb.e ]
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink7.i, ptr %i.aa, align 8, !alias.scope !436
  store i64 %.sink.i, ptr %0, align 8, !alias.scope !436
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !442
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !442
  br label %_RNCINvMNtNtCsefoF4u9kbII_5wasmi5store6prunedNtB5_17PrunedStoreVTable3newuEs0_0Cs5HiJSMzJl2A_10wasmi_wast.exit

_RNCINvMNtNtCsefoF4u9kbII_5wasmi5store6prunedNtB5_17PrunedStoreVTable3newuEs0_0Cs5HiJSMzJl2A_10wasmi_wast.exit: ; preds = %_RINvMs3_NtNtCsefoF4u9kbII_5wasmi5store6prunedNtB6_11PrunedStore7restoreuECs5HiJSMzJl2A_10wasmi_wast.exit.i, %bb.d, %bb.g
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvYNCINvMNtNtCsefoF4u9kbII_5wasmi5store6prunedNtB8_17PrunedStoreVTable3newuEs_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTQNtB8_11PrunedStoreRNtNtBc_6memory6MemoryyEE9call_onceCs5HiJSMzJl2A_10wasmi_wast(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, ptr noalias nofree noundef align 8 dereferenceable(1688) %1, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(8) %2, i64 noundef %3) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !454)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !455)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 1672
  %.sroa.0.0.copyload.i.i = load i128, ptr %i.d, align 8, !alias.scope !456
  %.not.i.i = icmp eq i128 %.sroa.0.0.copyload.i.i, 7954624184318742432034558525444319996
  br i1 %.not.i.i, label %bb.b, label %_RINvMs3_NtNtCsefoF4u9kbII_5wasmi5store6prunedNtB6_11PrunedStore7restoreuECs5HiJSMzJl2A_10wasmi_wast.exit.i, !prof !11

_RINvMs3_NtNtCsefoF4u9kbII_5wasmi5store6prunedNtB6_11PrunedStore7restoreuECs5HiJSMzJl2A_10wasmi_wast.exit.i: ; preds = %bb.a
  %.sroa.55.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 16, i1 false), !alias.scope !454
  store ptr @_RINvNtCskKLDkoKarTP_4core3any9type_nameuECs5HiJSMzJl2A_10wasmi_wast, ptr %.sroa.55.0..sroa_idx.i, align 8, !alias.scope !454
  br label %_RNCINvMNtNtCsefoF4u9kbII_5wasmi5store6prunedNtB5_17PrunedStoreVTable3newuEs_0Cs5HiJSMzJl2A_10wasmi_wast.exit

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !457)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 1616
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !458, !noundef !5 ; 2 uses
  %.not.i13.i = icmp eq ptr %i.f, null
  br i1 %.not.i13.i, label %_RNvMs0_NtCsefoF4u9kbII_5wasmi5storeINtB5_5StoreuE36store_inner_and_resource_limiter_refCs5HiJSMzJl2A_10wasmi_wast.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 1624
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 1608
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !458, !nonnull !5, !noundef !5
  %i.j = load ptr, ptr %i.g, align 8, !alias.scope !458, !nonnull !5, !align !8, !noundef !5
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !invariant.load !5, !noalias !459, !nonnull !5
  %i.m = tail call { ptr, ptr } %i.l(ptr noundef nonnull %i.f, ptr noalias nofree noundef nonnull %i.i) #20, !noalias !459, !inline_history !453 ; 2 uses
  %i.n = extractvalue { ptr, ptr } %i.m, 0        ; 2 uses
  %i.o = extractvalue { ptr, ptr } %i.m, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.n), "nonnull"(ptr %i.o) ]
  br label %_RNvMs0_NtCsefoF4u9kbII_5wasmi5storeINtB5_5StoreuE36store_inner_and_resource_limiter_refCs5HiJSMzJl2A_10wasmi_wast.exit.i

_RNvMs0_NtCsefoF4u9kbII_5wasmi5storeINtB5_5StoreuE36store_inner_and_resource_limiter_refCs5HiJSMzJl2A_10wasmi_wast.exit.i: ; preds = %bb.c, %bb.b
  %.sroa.3.0.i.i = phi ptr [ %i.o, %bb.c ], [ undef, %bb.b ]
  %.sroa.0.0.i.i = phi ptr [ %i.n, %bb.c ], [ null, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !460
  store ptr %.sroa.0.0.i.i, ptr %i.c, align 8, !noalias !460
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %.sroa.3.0.i.i, ptr %i.p, align 8, !noalias !460
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !460
  call void @_RNvMs4_NtNtCsefoF4u9kbII_5wasmi5store5innerNtB5_10StoreInner31try_resolve_memory_and_fuel_mut(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(1688) %1, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %2), !noalias !454
  %i.q = load i64, ptr %i.b, align 8, !range !6, !noalias !460, !noundef !5
  %i.r = trunc nuw i64 %i.q to i1
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !noalias !460 ; 2 uses
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_RNvMs0_NtCsefoF4u9kbII_5wasmi5storeINtB5_5StoreuE36store_inner_and_resource_limiter_refCs5HiJSMzJl2A_10wasmi_wast.exit.i
  %i.v = load i64, ptr %i.s, align 8, !range !12, !noalias !460, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !460
  store i64 0, ptr %0, align 8, !alias.scope !454
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.v, ptr %.sroa.47.0..sroa_idx.i, align 8, !alias.scope !454
  %.sroa.58.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.u, ptr %.sroa.58.0..sroa_idx.i, align 8, !alias.scope !454
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !460
  br label %_RNCINvMNtNtCsefoF4u9kbII_5wasmi5store6prunedNtB5_17PrunedStoreVTable3newuEs_0Cs5HiJSMzJl2A_10wasmi_wast.exit

bb.e:                                             ; preds = %_RNvMs0_NtCsefoF4u9kbII_5wasmi5storeINtB5_5StoreuE36store_inner_and_resource_limiter_refCs5HiJSMzJl2A_10wasmi_wast.exit.i
  %i.w = load ptr, ptr %i.s, align 8, !noalias !460, !nonnull !5, !align !8, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !460
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !460
  call void @_RNvMNtCs5zeGauAcNNa_10wasmi_core6memoryNtB2_6Memory4grow(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.w, i64 noundef %3, ptr noalias nofree noundef nonnull align 8 dereferenceable_or_null(32) %i.u, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c), !noalias !454
  %i.x = load i64, ptr %i.a, align 8, !range !461, !noalias !460, !noundef !5 ; 2 uses
  %.not12.i = icmp eq i64 %i.x, -1
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.z = load i64, ptr %i.y, align 8, !noalias !460 ; 2 uses
  br i1 %.not12.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.sroa.511.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.z, ptr %.sroa.511.0..sroa_idx.i, align 8, !alias.scope !454
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sink7.i = phi i64 [ %i.x, %bb.f ], [ %i.z, %bb.e ]
  %.sink.i = phi i64 [ 1, %bb.f ], [ 2, %bb.e ]
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink7.i, ptr %i.aa, align 8, !alias.scope !454
  store i64 %.sink.i, ptr %0, align 8, !alias.scope !454
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !460
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !460
  br label %_RNCINvMNtNtCsefoF4u9kbII_5wasmi5store6prunedNtB5_17PrunedStoreVTable3newuEs_0Cs5HiJSMzJl2A_10wasmi_wast.exit

_RNCINvMNtNtCsefoF4u9kbII_5wasmi5store6prunedNtB5_17PrunedStoreVTable3newuEs_0Cs5HiJSMzJl2A_10wasmi_wast.exit: ; preds = %_RINvMs3_NtNtCsefoF4u9kbII_5wasmi5store6prunedNtB6_11PrunedStore7restoreuECs5HiJSMzJl2A_10wasmi_wast.exit.i, %bb.d, %bb.g
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMsb_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingINtNtBb_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi8instance7exports6ExternE10take_frontCs5HiJSMzJl2A_10wasmi_wast(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(64)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMsj_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingINtNtBc_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi8instance7exports6ExternNtB1z_4LeafENtB1z_4EdgeE16deallocating_endNtNtBc_5alloc6GlobalECs5HiJSMzJl2A_10wasmi_wast(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RNvMsc_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingINtNtBb_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi8instance7exports6ExternE10init_frontCs5HiJSMzJl2A_10wasmi_wast(ptr noalias nofree noundef align 8 dereferenceable(64)) unnamed_addr #1

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #7

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMsb_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtCsefoF4u9kbII_5wasmi6linker9ImportKeyINtB1L_10DefinitionuEE10take_frontCs5HiJSMzJl2A_10wasmi_wast(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(64)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMsj_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingNtNtCsefoF4u9kbII_5wasmi6linker9ImportKeyINtB1U_10DefinitionuENtB1z_4LeafENtB1z_4EdgeE16deallocating_endNtNtBc_5alloc6GlobalECs5HiJSMzJl2A_10wasmi_wast(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RNvMsc_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtCsefoF4u9kbII_5wasmi6linker9ImportKeyINtB1L_10DefinitionuEE10init_frontCs5HiJSMzJl2A_10wasmi_wast(ptr noalias nofree noundef align 8 dereferenceable(64)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMsb_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtNtCsg06799QCvd1_17wasmi_collections15string_interner6detail8LenOrderNtB1N_3SymE10take_frontCs5HiJSMzJl2A_10wasmi_wast(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(64)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMsj_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingNtNtNtCsg06799QCvd1_17wasmi_collections15string_interner6detail8LenOrderNtB1W_3SymNtB1z_4LeafENtB1z_4EdgeE16deallocating_endNtNtBc_5alloc6GlobalECs5HiJSMzJl2A_10wasmi_wast(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RNvMsc_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtNtCsg06799QCvd1_17wasmi_collections15string_interner6detail8LenOrderNtB1N_3SymE10init_frontCs5HiJSMzJl2A_10wasmi_wast(ptr noalias nofree noundef align 8 dereferenceable(64)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker5ImmutNtNtCsefoF4u9kbII_5wasmi6linker9ImportKeyINtB1C_10DefinitionuENtB1i_14LeafOrInternalE11search_treeB1A_ECs5HiJSMzJl2A_10wasmi_wast(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noundef nonnull, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvMsP_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5ImmutNtNtCsefoF4u9kbII_5wasmi6linker9ImportKeyINtB1G_10DefinitionuENtB1m_14LeafOrInternalENtB1m_2KVE7into_kvCs5HiJSMzJl2A_10wasmi_wast(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCsg06799QCvd1_17wasmi_collections15string_interner6detail8LenOrderNtB1E_3SymNtB1i_14LeafOrInternalE11search_treeNtB1C_11LenOrderStrECs5HiJSMzJl2A_10wasmi_wast(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noundef nonnull, i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvMsP_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5ImmutNtNtNtCsg06799QCvd1_17wasmi_collections15string_interner6detail8LenOrderNtB1I_3SymNtB1m_14LeafOrInternalENtB1m_2KVE7into_kvCs5HiJSMzJl2A_10wasmi_wast(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #1

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() unnamed_addr #8

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs8VXqOAwmH9S_4wast5token5IndexENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5HiJSMzJl2A_10wasmi_wast(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs8VXqOAwmH9S_4wast4core4expr13TryTableCatchENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5HiJSMzJl2A_10wasmi_wast(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs8VXqOAwmH9S_4wast4core4expr6HandleENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5HiJSMzJl2A_10wasmi_wast(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs8VXqOAwmH9S_4wast4core5types7ValTypeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5HiJSMzJl2A_10wasmi_wast(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecReENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5HiJSMzJl2A_10wasmi_wast(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs8VXqOAwmH9S_4wast5token5IndexENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5HiJSMzJl2A_10wasmi_wast(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs8VXqOAwmH9S_4wast4core4expr13TryTableCatchENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5HiJSMzJl2A_10wasmi_wast(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs8VXqOAwmH9S_4wast4core4expr6HandleENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5HiJSMzJl2A_10wasmi_wast(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs8VXqOAwmH9S_4wast4core5types7ValTypeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5HiJSMzJl2A_10wasmi_wast(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecReENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5HiJSMzJl2A_10wasmi_wast(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs4_NtNtCsefoF4u9kbII_5wasmi5store5innerNtB5_10StoreInner30try_resolve_table_and_fuel_mut(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(1584), ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtCs5zeGauAcNNa_10wasmi_core5tableNtB2_5Table8grow_raw(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(56), i64 noundef, i32 noundef, ptr noalias nofree noundef align 8 dereferenceable_or_null(32), ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs4_NtNtCsefoF4u9kbII_5wasmi5store5innerNtB5_10StoreInner31try_resolve_memory_and_fuel_mut(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(1584), ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtCs5zeGauAcNNa_10wasmi_core6memoryNtB2_6Memory4grow(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(64), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable_or_null(32), ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMsj_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingINtNtBc_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi8instance7exports6ExternNtB1z_4LeafENtB1z_4EdgeE17deallocating_nextNtNtBc_5alloc6GlobalECs5HiJSMzJl2A_10wasmi_wast(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMsj_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingNtNtCsefoF4u9kbII_5wasmi6linker9ImportKeyINtB1U_10DefinitionuENtB1z_4LeafENtB1z_4EdgeE17deallocating_nextNtNtBc_5alloc6GlobalECs5HiJSMzJl2A_10wasmi_wast(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMsj_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingNtNtNtCsg06799QCvd1_17wasmi_collections15string_interner6detail8LenOrderNtB1W_3SymNtB1z_4LeafENtB1z_4EdgeE17deallocating_nextNtNtBc_5alloc6GlobalECs5HiJSMzJl2A_10wasmi_wast(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMsh_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutNtNtCsefoF4u9kbII_5wasmi6linker9ImportKeyINtB1T_10DefinitionuENtB1y_4LeafENtB1y_4EdgeE7next_kvCs5HiJSMzJl2A_10wasmi_wast(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutNtNtCsefoF4u9kbII_5wasmi6linker9ImportKeyINtB1T_10DefinitionuENtB1y_14LeafOrInternalENtB1y_2KVE14next_leaf_edgeCs5HiJSMzJl2A_10wasmi_wast(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RINvMs7_NtCsefoF4u9kbII_5wasmi4funcINtB6_16TrampolineEntityuE4callQINtNtB8_5store5StoreuEECs5HiJSMzJl2A_10wasmi_wast(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(1688), i64 noundef range(i64 0, 2), double, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #1

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.uadd.sat.i64(i64, i64) #10

; Function Attrs: cold noreturn nonlazybind uwtable
declare void @_RNvNtCsefoF4u9kbII_5wasmi5store16handle_arena_err(i8 noundef range(i8 0, 4), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #11

; Function Attrs: nonlazybind uwtable
declare hidden { i64, i64 } @_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCs5HiJSMzJl2A_10wasmi_wast(ptr noalias nofree noundef align 8 dereferenceable(16), i64 noundef, i64 noundef, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #1

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtCsefoF4u9kbII_5wasmi4func16TrampolineEntityuEE8grow_oneCs5HiJSMzJl2A_10wasmi_wast(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #12

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker3MutNtNtCsefoF4u9kbII_5wasmi6linker9ImportKeyINtB1A_10DefinitionuENtB1i_14LeafOrInternalE11search_treeB1y_ECs5HiJSMzJl2A_10wasmi_wast(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noundef nonnull, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker3MutNtNtNtCsg06799QCvd1_17wasmi_collections15string_interner6detail8LenOrderNtB1C_3SymNtB1i_14LeafOrInternalE11search_treeB1y_ECs5HiJSMzJl2A_10wasmi_wast(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noundef nonnull, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #1

end_hunk_2
