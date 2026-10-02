Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/hir_ty-548eb6ecf0a49818.hir_ty.65d5e02866c8e496-cgu.06?download=true
inline.NumInlined: 6037
inline.NumDeleted: 2216
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_RNvMs5_NtNtCs8K4cjrcxBsw_6hir_ty17method_resolution5probeINtB5_12ProbeContextNtB5_18ProbeForNameChoiceE34check_for_shadowed_autorefd_method:bb.a
    i64 0, label %bb.n
  ]

bb.n:                                             ; preds = %bb.m
  %i.ak = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 3 uses
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtCs8K4cjrcxBsw_6hir_ty17method_resolution11CandidateIdENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ak)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs8K4cjrcxBsw_6hir_ty17method_resolution5probe4PickEBH_.exit.i.i27 unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.al = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtCs8K4cjrcxBsw_6hir_ty17method_resolution11CandidateIdENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ak)
          to label %common.resume unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #34
  unreachable

common.resume:                                    ; preds = %bb.l, %bb.o
  %common.resume.op = phi { ptr, i32 } [ %i.al, %bb.o ], [ %i.ai, %bb.l ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs8K4cjrcxBsw_6hir_ty17method_resolution5probe4PickEBH_.exit.i.i27: ; preds = %bb.n
  call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtCs8K4cjrcxBsw_6hir_ty17method_resolution11CandidateIdENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ak)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowINtNtB4_6result6ResultNtNtNtCs8K4cjrcxBsw_6hir_ty17method_resolution5probe4PickNtB1G_11MethodErrorEEEB1I_.exit28

bb.q:                                             ; preds = %bb.m
  call fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs8K4cjrcxBsw_6hir_ty17method_resolution11MethodErrorEBF_(ptr noalias nofree noundef align 8 dereferenceable(104) %.sroa.511.0..sroa_idx.i)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowINtNtB4_6result6ResultNtNtNtCs8K4cjrcxBsw_6hir_ty17method_resolution5probe4PickNtB1G_11MethodErrorEEEB1I_.exit28

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowINtNtB4_6result6ResultNtNtNtCs8K4cjrcxBsw_6hir_ty17method_resolution5probe4PickNtB1G_11MethodErrorEEEB1I_.exit28: ; preds = %bb.m, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs8K4cjrcxBsw_6hir_ty17method_resolution5probe4PickEBH_.exit.i.i27, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.i

bb.r:                                             ; preds = %bb.l
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #34
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs5_NtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer13type_variableNtB5_17TypeVariableTable11instantiate(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, i32 noundef %1, ptr noundef nonnull %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.01.i.i.i.i = alloca [16 x i8], align 8   ; 4 uses
  %i.a = alloca [40 x i8], align 8                ; 8 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [4 x i8], align 4                 ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10531)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !10531
  %i.g = load ptr, ptr %0, align 8, !alias.scope !10531, !nonnull !6, !align !7, !noundef !6 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !10531, !nonnull !6, !align !7, !noundef !6 ; 7 uses
  store ptr %i.g, ptr %i.e, align 8, !noalias !10531
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.i, ptr %i.j, align 8, !noalias !10531
  %i.k = call noundef i32 @_RNvMs4_NtCsciM7tI7r4rL_3ena5unifyINtB5_16UnificationTableINtNtB5_11backing_vec7InPlaceNtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer13type_variable10TyVidEqKeyQINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtB5_8VarValueB1m_EEQNtNtNtB1q_8snapshot8undo_log17InferCtxtUndoLogsEE22uninlined_get_root_keyB1u_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.e, i32 noundef %1) #36, !noalias !10531
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !10531
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.g, ptr %i.f, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.i, ptr %i.l, align 8
  %i.m = call noundef i32 @_RNvMs4_NtCsciM7tI7r4rL_3ena5unifyINtB5_16UnificationTableINtNtB5_11backing_vec7InPlaceNtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer13type_variable10TyVidEqKeyQINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtB5_8VarValueB1m_EEQNtNtNtB1q_8snapshot8undo_log17InferCtxtUndoLogsEE22uninlined_get_root_keyB1u_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(16) %i.f, i32 noundef %i.k) #36, !noalias !10532 ; 2 uses
  %i.n = zext i32 %i.m to i64                     ; 10 uses
  %i.o = getelementptr i8, ptr %i.g, i64 16       ; 3 uses
  %.val1.i.i.i.i.i = load i64, ptr %i.o, align 8, !noalias !10533, !noundef !6 ; 3 uses
  %i.p = icmp ugt i64 %.val1.i.i.i.i.i, %i.n
  br i1 %i.p, label %_RNvMs3_NtCsciM7tI7r4rL_3ena5unifyINtB5_16UnificationTableINtNtB5_11backing_vec7InPlaceNtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer13type_variable10TyVidEqKeyQINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtB5_8VarValueB1m_EEQNtNtNtB1q_8snapshot8undo_log17InferCtxtUndoLogsEE5valueB1u_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef range(i64 0, 4294967296) %i.n, i64 noundef %.val1.i.i.i.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @327) #37, !noalias !10533
  unreachable

_RNvMs3_NtCsciM7tI7r4rL_3ena5unifyINtB5_16UnificationTableINtNtB5_11backing_vec7InPlaceNtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer13type_variable10TyVidEqKeyQINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtB5_8VarValueB1m_EEQNtNtNtB1q_8snapshot8undo_log17InferCtxtUndoLogsEE5valueB1u_.exit.i: ; preds = %bb.a
  %i.q = getelementptr i8, ptr %i.g, i64 8        ; 3 uses
  %.val.i.i.i.i.i = load ptr, ptr %i.q, align 8, !noalias !10533, !nonnull !6, !noundef !6
  %i.r = getelementptr inbounds nuw [24 x i8], ptr %.val.i.i.i.i.i, i64 %i.n ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10534)
  %i.s = load i32, ptr %i.r, align 8, !range !25, !alias.scope !10534, !noalias !10535, !noundef !6
  %i.t = trunc nuw i32 %i.s to i1
  br i1 %i.t, label %_RNvXsb_NtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer13type_variableNtB5_17TypeVariableValueNtNtCsciM7tI7r4rL_3ena5unify10UnifyValue12unify_values.exit.i, label %bb.c

bb.c:                                             ; preds = %_RNvMs3_NtCsciM7tI7r4rL_3ena5unifyINtB5_16UnificationTableINtNtB5_11backing_vec7InPlaceNtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer13type_variable10TyVidEqKeyQINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtB5_8VarValueB1m_EEQNtNtNtB1q_8snapshot8undo_log17InferCtxtUndoLogsEE5valueB1u_.exit.i
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @830, ptr noundef nonnull inttoptr (i64 119 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @832) #37, !noalias !10536
  unreachable

_RNvXsb_NtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer13type_variableNtB5_17TypeVariableValueNtNtCsciM7tI7r4rL_3ena5unify10UnifyValue12unify_values.exit.i: ; preds = %_RNvMs3_NtCsciM7tI7r4rL_3ena5unifyINtB5_16UnificationTableINtNtB5_11backing_vec7InPlaceNtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer13type_variable10TyVidEqKeyQINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtB5_8VarValueB1m_EEQNtNtNtB1q_8snapshot8undo_log17InferCtxtUndoLogsEE5valueB1u_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !10533
  store i32 %i.m, ptr %i.d, align 4, !noalias !10537
  %i.u = getelementptr i8, ptr %i.i, i64 24
  %.val.i.i.i.i8.i = load i64, ptr %i.u, align 8, !noalias !10538, !noundef !6
  %.not.i.i.i.i = icmp eq i64 %.val.i.i.i.i8.i, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_RNvXNtCsciM7tI7r4rL_3ena8undo_logQNtNtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer8snapshot8undo_log17InferCtxtUndoLogsINtB2_8UndoLogsINtNtB4_12snapshot_vec7UndoLogINtNtNtB4_5unify11backing_vec8DelegateNtNtBC_13type_variable10TyVidEqKeyEEE4pushBG_.exit.i.i.i.i, %_RNvXsb_NtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer13type_variableNtB5_17TypeVariableValueNtNtCsciM7tI7r4rL_3ena5unify10UnifyValue12unify_values.exit.i
  %.val1.i9.i.i.i.i = phi i64 [ %.val1.i9.i.i.i.pre.i, %_RNvXNtCsciM7tI7r4rL_3ena8undo_logQNtNtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer8snapshot8undo_log17InferCtxtUndoLogsINtB2_8UndoLogsINtNtB4_12snapshot_vec7UndoLogINtNtNtB4_5unify11backing_vec8DelegateNtNtBC_13type_variable10TyVidEqKeyEEE4pushBG_.exit.i.i.i.i ], [ %.val1.i.i.i.i.i, %_RNvXsb_NtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer13type_variableNtB5_17TypeVariableValueNtNtCsciM7tI7r4rL_3ena5unify10UnifyValue12unify_values.exit.i ] ; 2 uses
  %i.v = icmp ugt i64 %.val1.i9.i.i.i.i, %i.n
  br i1 %i.v, label %_RINvXs0_NtNtCsciM7tI7r4rL_3ena5unify11backing_vecINtB6_7InPlaceNtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer13type_variable10TyVidEqKeyQINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtB8_8VarValueBZ_EEQNtNtNtB13_8snapshot8undo_log17InferCtxtUndoLogsENtB6_19UnificationStoreMut6updateNCINvMs6_B8_INtB8_16UnificationTableBL_E15unify_var_valueNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir7ty_kind5TyVidE0EB17_.exit.i.i, label %bb.g

bb.e:                                             ; preds = %_RNvXsb_NtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer13type_variableNtB5_17TypeVariableValueNtNtCsciM7tI7r4rL_3ena5unify10UnifyValue12unify_values.exit.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.x = load <2 x i32>, ptr %i.w, align 8, !alias.scope !10539, !noalias !10540
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.01.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.01.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.r, i64 16, i1 false), !noalias !10538
  %i.y = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !alias.scope !10541, !noalias !10542, !noundef !6 ; 3 uses
  %i.aa = load i64, ptr %i.i, align 8, !range !16, !alias.scope !10541, !noalias !10542, !noundef !6
  %i.ab = icmp eq i64 %i.z, %i.aa
  br i1 %i.ab, label %bb.f, label %_RNvXNtCsciM7tI7r4rL_3ena8undo_logQNtNtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer8snapshot8undo_log17InferCtxtUndoLogsINtB2_8UndoLogsINtNtB4_12snapshot_vec7UndoLogINtNtNtB4_5unify11backing_vec8DelegateNtNtBC_13type_variable10TyVidEqKeyEEE4pushBG_.exit.i.i.i.i

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvMs4_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer8snapshot8undo_log7UndoLogE8grow_oneBW_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.i) #36, !noalias !10542
  br label %_RNvXNtCsciM7tI7r4rL_3ena8undo_logQNtNtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer8snapshot8undo_log17InferCtxtUndoLogsINtB2_8UndoLogsINtNtB4_12snapshot_vec7UndoLogINtNtNtB4_5unify11backing_vec8DelegateNtNtBC_13type_variable10TyVidEqKeyEEE4pushBG_.exit.i.i.i.i

_RNvXNtCsciM7tI7r4rL_3ena8undo_logQNtNtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer8snapshot8undo_log17InferCtxtUndoLogsINtB2_8UndoLogsINtNtB4_12snapshot_vec7UndoLogINtNtNtB4_5unify11backing_vec8DelegateNtNtBC_13type_variable10TyVidEqKeyEEE4pushBG_.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !alias.scope !10541, !noalias !10542, !nonnull !6, !noundef !6
  %i.ae = getelementptr inbounds nuw [40 x i8], ptr %i.ad, i64 %i.z ; 4 uses
  store i64 2, ptr %i.ae, align 8, !noalias !10543
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.01.i.i.i.i, i64 16, i1 false), !noalias !10538
  %.sroa.42.0..sroa.4.0..sroa_idx.i.i.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  store <2 x i32> %i.x, ptr %.sroa.42.0..sroa.4.0..sroa_idx.i.i.sroa_idx.i.i.i.i, align 8, !noalias !10538
  %.sroa.6.0..sroa.4.0..sroa_idx.i.i.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  store i64 %i.n, ptr %.sroa.6.0..sroa.4.0..sroa_idx.i.i.sroa_idx.i.i.i.i, align 8, !noalias !10538
  %i.af = add i64 %i.z, 1
  store i64 %i.af, ptr %i.y, align 8, !alias.scope !10541, !noalias !10542
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.01.i.i.i.i)
  %.val1.i9.i.i.i.pre.i = load i64, ptr %i.o, align 8, !noalias !10538
  br label %bb.d

bb.g:                                             ; preds = %bb.d
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef range(i64 0, 4294967296) %i.n, i64 noundef %.val1.i9.i.i.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @84) #37, !noalias !10538
  unreachable

_RINvXs0_NtNtCsciM7tI7r4rL_3ena5unify11backing_vecINtB6_7InPlaceNtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer13type_variable10TyVidEqKeyQINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtB8_8VarValueBZ_EEQNtNtNtB13_8snapshot8undo_log17InferCtxtUndoLogsENtB6_19UnificationStoreMut6updateNCINvMs6_B8_INtB8_16UnificationTableBL_E15unify_var_valueNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir7ty_kind5TyVidE0EB17_.exit.i.i: ; preds = %bb.d
  %.val.i8.i.i.i.i = load ptr, ptr %i.q, align 8, !noalias !10538, !nonnull !6, !noundef !6
  %i.ag = getelementptr inbounds nuw [24 x i8], ptr %.val.i8.i.i.i.i, i64 %i.n ; 2 uses
  store i32 0, ptr %i.ag, align 8, !alias.scope !10544, !noalias !10533
  %.sroa.412.sroa.4.0..sroa.412.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr %2, ptr %.sroa.412.sroa.4.0..sroa.412.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !10544, !noalias !10533
  %i.ah = load atomic i64, ptr @_RNvCskym5ilOGwys_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !10537 ; 2 uses
  %i.ai = icmp ult i64 %i.ah, 6
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = icmp samesign ugt i64 %i.ah, 3
  br i1 %i.aj, label %bb.h, label %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultuNtNtCsciM7tI7r4rL_3ena5unify7NoErrorE6unwrapCs8K4cjrcxBsw_6hir_ty.exit

bb.h:                                             ; preds = %_RINvXs0_NtNtCsciM7tI7r4rL_3ena5unify11backing_vecINtB6_7InPlaceNtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer13type_variable10TyVidEqKeyQINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtB8_8VarValueBZ_EEQNtNtNtB13_8snapshot8undo_log17InferCtxtUndoLogsENtB6_19UnificationStoreMut6updateNCINvMs6_B8_INtB8_16UnificationTableBL_E15unify_var_valueNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir7ty_kind5TyVidE0EB17_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !10537
  %.val1.i.i.i.i.i.i = load i64, ptr %i.o, align 8, !noalias !10537, !noundef !6 ; 2 uses
  %i.ak = icmp ugt i64 %.val1.i.i.i.i.i.i, %i.n
  br i1 %i.ak, label %_RNvMs3_NtCsciM7tI7r4rL_3ena5unifyINtB5_16UnificationTableINtNtB5_11backing_vec7InPlaceNtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer13type_variable10TyVidEqKeyQINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtB5_8VarValueB1m_EEQNtNtNtB1q_8snapshot8undo_log17InferCtxtUndoLogsEE5valueB1u_.exit.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef range(i64 0, 4294967296) %i.n, i64 noundef %.val1.i.i.i.i.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @327) #37, !noalias !10537
  unreachable

_RNvMs3_NtCsciM7tI7r4rL_3ena5unifyINtB5_16UnificationTableINtNtB5_11backing_vec7InPlaceNtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer13type_variable10TyVidEqKeyQINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtB5_8VarValueB1m_EEQNtNtNtB1q_8snapshot8undo_log17InferCtxtUndoLogsEE5valueB1u_.exit.i.i: ; preds = %bb.h
  %.val.i.i.i.i.i.i = load ptr, ptr %i.q, align 8, !noalias !10537, !nonnull !6, !noundef !6
  %i.al = getelementptr inbounds nuw [24 x i8], ptr %.val.i.i.i.i.i.i, i64 %i.n
  store ptr %i.al, ptr %i.c, align 8, !noalias !10537
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !10537
  store ptr %i.d, ptr %i.b, align 8, !noalias !10537
  %.sroa.43.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXsn_NtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer13type_variableNtB5_10TyVidEqKeyNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt, ptr %.sroa.43.0..sroa_idx.i.i, align 8, !noalias !10537
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.c, ptr %i.am, align 8, !noalias !10537
  %.sroa.47.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRINtNtCsciM7tI7r4rL_3ena5unify8VarValueNtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer13type_variable10TyVidEqKeyENtB6_5Debug3fmtB1g_, ptr %.sroa.47.0..sroa_idx.i.i, align 8, !noalias !10537
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10537
  store ptr @80, ptr %i.a, align 8, !noalias !10537
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 10, ptr %i.an, align 8, !noalias !10537
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @80, ptr %i.ao, align 8, !noalias !10537
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 10, ptr %i.ap, align 8, !noalias !10537
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr @79, ptr %i.aq, align 8, !noalias !10537
  call void @_RINvNtCskym5ilOGwys_3log13___private_api3loguNtB2_12GlobalLoggerECs8K4cjrcxBsw_6hir_ty(ptr noundef nonnull @78, ptr noundef nonnull %i.b, i64 noundef 4, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.a), !noalias !10537
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !10537
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !10537
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !10537
  br label %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultuNtNtCsciM7tI7r4rL_3ena5unify7NoErrorE6unwrapCs8K4cjrcxBsw_6hir_ty.exit

_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultuNtNtCsciM7tI7r4rL_3ena5unify7NoErrorE6unwrapCs8K4cjrcxBsw_6hir_ty.exit: ; preds = %_RNvMs3_NtCsciM7tI7r4rL_3ena5unifyINtB5_16UnificationTableINtNtB5_11backing_vec7InPlaceNtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer13type_variable10TyVidEqKeyQINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtB5_8VarValueB1m_EEQNtNtNtB1q_8snapshot8undo_log17InferCtxtUndoLogsEE5valueB1u_.exit.i.i, %_RINvXs0_NtNtCsciM7tI7r4rL_3ena5unify11backing_vecINtB6_7InPlaceNtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer13type_variable10TyVidEqKeyQINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtB8_8VarValueBZ_EEQNtNtNtB13_8snapshot8undo_log17InferCtxtUndoLogsENtB6_19UnificationStoreMut6updateNCINvMs6_B8_INtB8_16UnificationTableBL_E15unify_var_valueNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir7ty_kind5TyVidE0EB17_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !10533
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i32 @_RNvMs5_NtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer13type_variableNtB5_17TypeVariableTable30sub_unification_table_root_var(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %2 = load <2 x ptr>, ptr %0, align 8
  %3 = getelementptr inbounds nuw i8, <2 x ptr> %2, <2 x i64> <i64 24, i64 0>
  store <2 x ptr> %3, ptr %i.a, align 16
  %i.b = call noundef i32 @_RNvMs4_NtCsciM7tI7r4rL_3ena5unifyINtB5_16UnificationTableINtNtB5_11backing_vec7InPlaceNtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer13type_variable11TyVidSubKeyQINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtB5_8VarValueB1m_EEQNtNtNtB1q_8snapshot8undo_log17InferCtxtUndoLogsEE22uninlined_get_root_keyB1u_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, i32 noundef %1) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i32 %i.b
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs5_NtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer13type_variableNtB5_17TypeVariableTable5probe(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load ptr, ptr %1, align 8, !nonnull !6, !align !7, !noundef !6 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !6, !align !7, !noundef !6 ; 2 uses
  store ptr %i.b, ptr %i.a, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.d, ptr %i.e, align 8
  %i.f = zext i32 %2 to i64                       ; 3 uses
  %i.g = getelementptr i8, ptr %i.b, i64 16       ; 2 uses
  %.val1.i.i.i.i = load i64, ptr %i.g, align 8, !noundef !6 ; 2 uses
  %i.h = icmp ugt i64 %.val1.i.i.i.i, %i.f
  br i1 %i.h, label %_RNvMs3_NtCsciM7tI7r4rL_3ena5unifyINtB5_16UnificationTableINtNtB5_11backing_vec7InPlaceNtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer13type_variable10TyVidEqKeyQINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtB5_8VarValueB1m_EEQNtNtNtB1q_8snapshot8undo_log17InferCtxtUndoLogsEE5valueB1u_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef range(i64 0, 4294967296) %i.f, i64 noundef %.val1.i.i.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @327) #37
  unreachable

_RNvMs3_NtCsciM7tI7r4rL_3ena5unifyINtB5_16UnificationTableINtNtB5_11backing_vec7InPlaceNtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer13type_variable10TyVidEqKeyQINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtB5_8VarValueB1m_EEQNtNtNtB1q_8snapshot8undo_log17InferCtxtUndoLogsEE5valueB1u_.exit: ; preds = %bb.a
  %i.i = getelementptr i8, ptr %i.b, i64 8        ; 2 uses
  %.val.i.i.i.i = load ptr, ptr %i.i, align 8, !nonnull !6, !noundef !6
  %i.j = getelementptr inbounds nuw [24 x i8], ptr %.val.i.i.i.i, i64 %i.f
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.val2 = load i32, ptr %i.k, align 4, !noundef !6 ; 4 uses
  %i.l = icmp eq i32 %.val2, %2
  br i1 %i.l, label %_RNvMs4_NtCsciM7tI7r4rL_3ena5unifyINtB5_16UnificationTableINtNtB5_11backing_vec7InPlaceNtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer13type_variable10TyVidEqKeyQINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtB5_8VarValueB1m_EEQNtNtNtB1q_8snapshot8undo_log17InferCtxtUndoLogsEE20inlined_get_root_keyB1u_.exit, label %bb.c

bb.c:                                             ; preds = %_RNvMs3_NtCsciM7tI7r4rL_3ena5unifyINtB5_16UnificationTableINtNtB5_11backing_vec7InPlaceNtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer13type_variable10TyVidEqKeyQINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtB5_8VarValueB1m_EEQNtNtNtB1q_8snapshot8undo_log17InferCtxtUndoLogsEE5valueB1u_.exit
  %i.m = call noundef i32 @_RNvMs4_NtCsciM7tI7r4rL_3ena5unifyINtB5_16UnificationTableINtNtB5_11backing_vec7InPlaceNtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer13type_variable10TyVidEqKeyQINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtB5_8VarValueB1m_EEQNtNtNtB1q_8snapshot8undo_log17InferCtxtUndoLogsEE22uninlined_get_root_keyB1u_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, i32 noundef %.val2) #36, !noalias !10550 ; 3 uses
  %.not = icmp eq i32 %i.m, %.val2
  br i1 %.not, label %_RNvMs4_NtCsciM7tI7r4rL_3ena5unifyINtB5_16UnificationTableINtNtB5_11backing_vec7InPlaceNtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer13type_variable10TyVidEqKeyQINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtB5_8VarValueB1m_EEQNtNtNtB1q_8snapshot8undo_log17InferCtxtUndoLogsEE20inlined_get_root_keyB1u_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @_RINvMs4_NtCsciM7tI7r4rL_3ena5unifyINtB6_16UnificationTableINtNtB6_11backing_vec7InPlaceNtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer13type_variable10TyVidEqKeyQINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtB6_8VarValueB1n_EEQNtNtNtB1r_8snapshot8undo_log17InferCtxtUndoLogsEE12update_valueNCNvB2_20inlined_get_root_key0EB1v_(ptr nonnull %i.b, ptr nonnull %i.d, i32 noundef %2, i32 %i.m)
  br label %_RNvMs4_NtCsciM7tI7r4rL_3ena5unifyINtB5_16UnificationTableINtNtB5_11backing_vec7InPlaceNtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer13type_variable10TyVidEqKeyQINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtB5_8VarValueB1m_EEQNtNtNtB1q_8snapshot8undo_log17InferCtxtUndoLogsEE20inlined_get_root_keyB1u_.exit

_RNvMs4_NtCsciM7tI7r4rL_3ena5unifyINtB5_16UnificationTableINtNtB5_11backing_vec7InPlaceNtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer13type_variable10TyVidEqKeyQINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtB5_8VarValueB1m_EEQNtNtNtB1q_8snapshot8undo_log17InferCtxtUndoLogsEE20inlined_get_root_keyB1u_.exit: ; preds = %bb.c, %bb.d, %_RNvMs3_NtCsciM7tI7r4rL_3ena5unifyINtB5_16UnificationTableINtNtB5_11backing_vec7InPlaceNtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer13type_variable10TyVidEqKeyQINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtB5_8VarValueB1m_EEQNtNtNtB1q_8snapshot8undo_log17InferCtxtUndoLogsEE5valueB1u_.exit
  %.sroa.0.0.i = phi i32 [ %2, %_RNvMs3_NtCsciM7tI7r4rL_3ena5unifyINtB5_16UnificationTableINtNtB5_11backing_vec7InPlaceNtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer13type_variable10TyVidEqKeyQINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtB5_8VarValueB1m_EEQNtNtNtB1q_8snapshot8undo_log17InferCtxtUndoLogsEE5valueB1u_.exit ], [ %i.m, %bb.d ], [ %.val2, %bb.c ]
  %i.n = zext i32 %.sroa.0.0.i to i64             ; 3 uses
  %.val1.i.i.i.i9 = load i64, ptr %i.g, align 8, !noundef !6 ; 2 uses
  %i.o = icmp ugt i64 %.val1.i.i.i.i9, %i.n
  br i1 %i.o, label %_RNvMs3_NtCsciM7tI7r4rL_3ena5unifyINtB5_16UnificationTableINtNtB5_11backing_vec7InPlaceNtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer13type_variable10TyVidEqKeyQINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtB5_8VarValueB1m_EEQNtNtNtB1q_8snapshot8undo_log17InferCtxtUndoLogsEE5valueB1u_.exit11, label %bb.e

bb.e:                                             ; preds = %_RNvMs4_NtCsciM7tI7r4rL_3ena5unifyINtB5_16UnificationTableINtNtB5_11backing_vec7InPlaceNtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer13type_variable10TyVidEqKeyQINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtB5_8VarValueB1m_EEQNtNtNtB1q_8snapshot8undo_log17InferCtxtUndoLogsEE20inlined_get_root_keyB1u_.exit
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef range(i64 0, 4294967296) %i.n, i64 noundef %.val1.i.i.i.i9, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @327) #37
  unreachable

_RNvMs3_NtCsciM7tI7r4rL_3ena5unifyINtB5_16UnificationTableINtNtB5_11backing_vec7InPlaceNtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer13type_variable10TyVidEqKeyQINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtB5_8VarValueB1m_EEQNtNtNtB1q_8snapshot8undo_log17InferCtxtUndoLogsEE5valueB1u_.exit11: ; preds = %_RNvMs4_NtCsciM7tI7r4rL_3ena5unifyINtB5_16UnificationTableINtNtB5_11backing_vec7InPlaceNtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer13type_variable10TyVidEqKeyQINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtB5_8VarValueB1m_EEQNtNtNtB1q_8snapshot8undo_log17InferCtxtUndoLogsEE20inlined_get_root_keyB1u_.exit
  %.val.i.i.i.i10 = load ptr, ptr %i.i, align 8, !nonnull !6, !noundef !6
  %i.p = getelementptr inbounds nuw [24 x i8], ptr %.val.i.i.i.i10, i64 %i.n
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.p, i64 16, i1 false), !alias.scope !10551
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs5_NtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer13type_variableNtB5_17TypeVariableTable6equate(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 8 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [4 x i8], align 4                 ; 5 uses
  %i.d = alloca [4 x i8], align 4                 ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 8 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [16 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.h = load ptr, ptr %0, align 8, !nonnull !6, !align !7, !noundef !6 ; 7 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !6, !align !7, !noundef !6 ; 5 uses
  store ptr %i.h, ptr %i.g, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.j, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.l = call noundef i32 @_RNvMs4_NtCsciM7tI7r4rL_3ena5unifyINtB5_16UnificationTableINtNtB5_11backing_vec7InPlaceNtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer13type_variable10TyVidEqKeyQINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtB5_8VarValueB1m_EEQNtNtNtB1q_8snapshot8undo_log17InferCtxtUndoLogsEE22uninlined_get_root_keyB1u_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(16) %i.g, i32 noundef %1) #36 ; 4 uses
  %i.m = call noundef i32 @_RNvMs4_NtCsciM7tI7r4rL_3ena5unifyINtB5_16UnificationTableINtNtB5_11backing_vec7InPlaceNtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer13type_variable10TyVidEqKeyQINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtB5_8VarValueB1m_EEQNtNtNtB1q_8snapshot8undo_log17InferCtxtUndoLogsEE22uninlined_get_root_keyB1u_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(16) %i.g, i32 noundef %2) #36 ; 3 uses
  %i.n = icmp eq i32 %i.l, %i.m
  br i1 %i.n, label %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultuNtNtCsciM7tI7r4rL_3ena5unify7NoErrorE6unwrapCs8K4cjrcxBsw_6hir_ty.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = zext i32 %i.l to i64                     ; 5 uses
  %i.p = getelementptr i8, ptr %i.h, i64 16       ; 2 uses
  %.val1.i.i.i.i.i = load i64, ptr %i.p, align 8, !noalias !10561, !noundef !6 ; 5 uses
  %i.q = icmp ugt i64 %.val1.i.i.i.i.i, %i.o
  br i1 %i.q, label %_RNvMs3_NtCsciM7tI7r4rL_3ena5unifyINtB5_16UnificationTableINtNtB5_11backing_vec7InPlaceNtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer13type_variable10TyVidEqKeyQINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtB5_8VarValueB1m_EEQNtNtNtB1q_8snapshot8undo_log17InferCtxtUndoLogsEE5valueB1u_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef range(i64 0, 4294967296) %i.o, i64 noundef %.val1.i.i.i.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @327) #37, !noalias !10561
  unreachable

_RNvMs3_NtCsciM7tI7r4rL_3ena5unifyINtB5_16UnificationTableINtNtB5_11backing_vec7InPlaceNtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer13type_variable10TyVidEqKeyQINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtB5_8VarValueB1m_EEQNtNtNtB1q_8snapshot8undo_log17InferCtxtUndoLogsEE5valueB1u_.exit.i: ; preds = %bb.b
  %i.r = getelementptr i8, ptr %i.h, i64 8        ; 2 uses
  %.val.i.i.i.i.i = load ptr, ptr %i.r, align 8, !noalias !10561, !nonnull !6, !noundef !6 ; 3 uses
  %i.s = getelementptr inbounds nuw [24 x i8], ptr %.val.i.i.i.i.i, i64 %i.o ; 2 uses
  %i.t = zext i32 %i.m to i64                     ; 4 uses
  %i.u = icmp ugt i64 %.val1.i.i.i.i.i, %i.t
  br i1 %i.u, label %_RNvMs3_NtCsciM7tI7r4rL_3ena5unifyINtB5_16UnificationTableINtNtB5_11backing_vec7InPlaceNtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer13type_variable10TyVidEqKeyQINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtB5_8VarValueB1m_EEQNtNtNtB1q_8snapshot8undo_log17InferCtxtUndoLogsEE5valueB1u_.exit11.i, label %bb.d

bb.d:                                             ; preds = %_RNvMs3_NtCsciM7tI7r4rL_3ena5unifyINtB5_16UnificationTableINtNtB5_11backing_vec7InPlaceNtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer13type_variable10TyVidEqKeyQINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtB5_8VarValueB1m_EEQNtNtNtB1q_8snapshot8undo_log17InferCtxtUndoLogsEE5valueB1u_.exit.i
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef range(i64 0, 4294967296) %i.t, i64 noundef %.val1.i.i.i.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @327) #37, !noalias !10561
  unreachable

_RNvMs3_NtCsciM7tI7r4rL_3ena5unifyINtB5_16UnificationTableINtNtB5_11backing_vec7InPlaceNtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer13type_variable10TyVidEqKeyQINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtB5_8VarValueB1m_EEQNtNtNtB1q_8snapshot8undo_log17InferCtxtUndoLogsEE5valueB1u_.exit11.i: ; preds = %_RNvMs3_NtCsciM7tI7r4rL_3ena5unifyINtB5_16UnificationTableINtNtB5_11backing_vec7InPlaceNtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer13type_variable10TyVidEqKeyQINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtB5_8VarValueB1m_EEQNtNtNtB1q_8snapshot8undo_log17InferCtxtUndoLogsEE5valueB1u_.exit.i
  %i.v = getelementptr inbounds nuw [24 x i8], ptr %.val.i.i.i.i.i, i64 %i.t ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10562)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10563)
  %i.w = load i32, ptr %i.s, align 8, !range !25, !alias.scope !10562, !noalias !10564, !noundef !6
  %i.x = trunc nuw i32 %i.w to i1
  %i.y = load i32, ptr %i.v, align 8, !range !25, !alias.scope !10563, !noalias !10565, !noundef !6
  %i.z = trunc nuw i32 %i.y to i1                 ; 2 uses
  br i1 %i.x, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_RNvMs3_NtCsciM7tI7r4rL_3ena5unifyINtB5_16UnificationTableINtNtB5_11backing_vec7InPlaceNtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer13type_variable10TyVidEqKeyQINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtB5_8VarValueB1m_EEQNtNtNtB1q_8snapshot8undo_log17InferCtxtUndoLogsEE5valueB1u_.exit11.i
  br i1 %i.z, label %bb.i, label %bb.h

bb.f:                                             ; preds = %_RNvMs3_NtCsciM7tI7r4rL_3ena5unifyINtB5_16UnificationTableINtNtB5_11backing_vec7InPlaceNtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer13type_variable10TyVidEqKeyQINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtB5_8VarValueB1m_EEQNtNtNtB1q_8snapshot8undo_log17InferCtxtUndoLogsEE5valueB1u_.exit11.i
  br i1 %i.z, label %bb.h, label %bb.g, !prof !18

bb.g:                                             ; preds = %bb.f
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @830, ptr noundef nonnull inttoptr (i64 119 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @832) #37, !noalias !10566
  unreachable

bb.h:                                             ; preds = %bb.f, %bb.e
  %i.aa = phi i64 [ %i.o, %bb.f ], [ %i.t, %bb.e ]
  %i.ab = getelementptr inbounds nuw [24 x i8], ptr %.val.i.i.i.i.i, i64 %i.aa
  %.sroa.0.0.in.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.sroa.0.0.i.i = load ptr, ptr %.sroa.0.0.in.i.i, align 8, !alias.scope !10567, !noalias !10568, !nonnull !6, !noundef !6
  br label %_RNvXsb_NtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer13type_variableNtB5_17TypeVariableValueNtNtCsciM7tI7r4rL_3ena5unify10UnifyValue12unify_values.exit.i

bb.i:                                             ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %i.ad = load i32, ptr %i.ac, align 4, !alias.scope !10562, !noalias !10564, !noundef !6
  %i.ae = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.af = load i32, ptr %i.ae, align 4, !alias.scope !10563, !noalias !10565, !noundef !6
  %..i.i.i = tail call noundef i32 @llvm.umin.i32(i32 %i.af, i32 %i.ad)
  br label %_RNvXsb_NtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer13type_variableNtB5_17TypeVariableValueNtNtCsciM7tI7r4rL_3ena5unify10UnifyValue12unify_values.exit.i

_RNvXsb_NtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer13type_variableNtB5_17TypeVariableValueNtNtCsciM7tI7r4rL_3ena5unify10UnifyValue12unify_values.exit.i: ; preds = %bb.i, %bb.h
  %.sroa.9.0.i = phi ptr [ undef, %bb.i ], [ %.sroa.0.0.i.i, %bb.h ]
  %.sroa.7.0.i = phi i32 [ %..i.i.i, %bb.i ], [ undef, %bb.h ]
  %.sroa.014.0.i = phi i32 [ 1, %bb.i ], [ 0, %bb.h ]
  store i32 %.sroa.014.0.i, ptr %i.e, align 8, !noalias !10561
  %.sroa.6.0..sroa_idx3.i = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  store i32 %.sroa.7.0.i, ptr %.sroa.6.0..sroa_idx3.i, align 4, !noalias !10561
  %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx3.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %.sroa.9.0.i, ptr %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx3.sroa_idx.i, align 8, !noalias !10561
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !10561
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !10561
  store i32 %i.l, ptr %i.d, align 4, !noalias !10569
  store i32 %i.m, ptr %i.c, align 4, !noalias !10569
  %i.ag = load atomic i64, ptr @_RNvCskym5ilOGwys_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !10569 ; 2 uses
  %i.ah = icmp ult i64 %i.ag, 6
  tail call void @llvm.assume(i1 %i.ah)
  %i.ai = icmp samesign ugt i64 %i.ag, 3
  br i1 %i.ai, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_RNvXsb_NtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer13type_variableNtB5_17TypeVariableValueNtNtCsciM7tI7r4rL_3ena5unify10UnifyValue12unify_values.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !10569
  store ptr %i.d, ptr %i.b, align 8, !noalias !10569
  %.sroa.44.0..sroa_idx.i12.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXsn_NtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer13type_variableNtB5_10TyVidEqKeyNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt, ptr %.sroa.44.0..sroa_idx.i12.i, align 8, !noalias !10569
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.c, ptr %i.aj, align 8, !noalias !10569
  %.sroa.48.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @_RNvXsn_NtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer13type_variableNtB5_10TyVidEqKeyNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt, ptr %.sroa.48.0..sroa_idx.i.i, align 8, !noalias !10569
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10569
  store ptr @80, ptr %i.a, align 8, !noalias !10569
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 10, ptr %i.ak, align 8, !noalias !10569
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @80, ptr %i.al, align 8, !noalias !10569
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 10, ptr %i.am, align 8, !noalias !10569
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr @294, ptr %i.an, align 8, !noalias !10569
  call void @_RINvNtCskym5ilOGwys_3log13___private_api3loguNtB2_12GlobalLoggerECs8K4cjrcxBsw_6hir_ty(ptr noundef nonnull @293, ptr noundef nonnull %i.b, i64 noundef 4, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.a), !noalias !10569
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !10569
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !10569
  %.pre.i.i = load i32, ptr %i.d, align 4, !noalias !10569 ; 2 uses
  %.val1.i.i.i.i.i.pre.i = load i64, ptr %i.p, align 8, !noalias !10569
  %.pre.i = zext i32 %.pre.i.i to i64
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_RNvXsb_NtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer13type_variableNtB5_17TypeVariableValueNtNtCsciM7tI7r4rL_3ena5unify10UnifyValue12unify_values.exit.i
  %.pre-phi.i = phi i64 [ %.pre.i, %bb.j ], [ %i.o, %_RNvXsb_NtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer13type_variableNtB5_17TypeVariableValueNtNtCsciM7tI7r4rL_3ena5unify10UnifyValue12unify_values.exit.i ] ; 3 uses
  %.val1.i.i.i.i.i.i = phi i64 [ %.val1.i.i.i.i.i.pre.i, %bb.j ], [ %.val1.i.i.i.i.i, %_RNvXsb_NtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer13type_variableNtB5_17TypeVariableValueNtNtCsciM7tI7r4rL_3ena5unify10UnifyValue12unify_values.exit.i ] ; 4 uses
  %i.ao = phi i32 [ %.pre.i.i, %bb.j ], [ %i.l, %_RNvXsb_NtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer13type_variableNtB5_17TypeVariableValueNtNtCsciM7tI7r4rL_3ena5unify10UnifyValue12unify_values.exit.i ] ; 3 uses
  %i.ap = icmp ugt i64 %.val1.i.i.i.i.i.i, %.pre-phi.i
  br i1 %i.ap, label %_RNvMs3_NtCsciM7tI7r4rL_3ena5unifyINtB5_16UnificationTableINtNtB5_11backing_vec7InPlaceNtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer13type_variable10TyVidEqKeyQINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtB5_8VarValueB1m_EEQNtNtNtB1q_8snapshot8undo_log17InferCtxtUndoLogsEE5valueB1u_.exit.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef range(i64 0, 4294967296) %.pre-phi.i, i64 noundef %.val1.i.i.i.i.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @327) #37, !noalias !10569
  unreachable
end_hunk_0
