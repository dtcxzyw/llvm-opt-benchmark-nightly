Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/hir_ty-548eb6ecf0a49818.hir_ty.65d5e02866c8e496-cgu.08?download=true
inline.NumInlined: 5960
inline.NumDeleted: 2694
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_RNvMNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve12alias_relateINtNtB4_9eval_ctxt8EvalCtxtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6solver13SolverContextNtNtB1E_8interner10DbInternerE25compute_alias_relate_goalB1G_:bb.a
bb.g:                                             ; preds = %.noexc50
  %i.bu = ptrtoint ptr %i.aq to i64
  %i.bv = trunc i64 %i.bu to i1
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %i.bx = load ptr, ptr %i.aj, align 8, !alias.scope !4505, !noalias !4503, !nonnull !18, !align !26, !noundef !18 ; 2 uses
  br i1 %i.bv, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.by = invoke noundef nonnull ptr @_RNvXNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer7contextNtB4_9InferCtxtNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir10infer_ctxt13InferCtxtLike16next_const_infer(ptr noundef nonnull align 8 %i.bx)
          to label %.noexc51 unwind label %bb.b   ; 3 uses

.noexc51:                                         ; preds = %bb.h
  invoke void @_RINvMs4_NtNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve7inspect5buildINtB6_21EvaluationStepBuilderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6solver13SolverContextNtNtB1M_8interner10DbInternerE13add_var_valueNtNtB1M_6consts5ConstEB1O_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bw, ptr noundef nonnull %i.by)
          to label %.noexc52 unwind label %bb.b

.noexc52:                                         ; preds = %.noexc51
  %i.bz = invoke noundef i64 @_RNvMs0_NtCs50pZefIA5Ye_8triomphe3arcINtB5_8ArcInnerNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6consts13ConstInternedE14offset_of_dataBT_(ptr noundef nonnull %i.by)
          to label %.noexc53 unwind label %bb.b

.noexc53:                                         ; preds = %.noexc52
  %i.ca = sub nsw i64 0, %i.bz
  %i.cb = getelementptr inbounds i8, ptr %i.by, i64 %i.ca
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8 ; 2 uses
  %i.cd = ptrtoint ptr %i.cc to i64
  %.not.i.i.i.i56.i = and i64 %i.cd, 1
  %i.ce = xor i64 %.not.i.i.i.i56.i, 1
  %i.cf = getelementptr i8, ptr %i.cc, i64 %i.ce  ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cf) ]
  br label %_RNvMs0_NtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve9eval_ctxtINtB5_8EvalCtxtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6solver13SolverContextNtNtB1r_8interner10DbInternerE23next_term_infer_of_kindB1t_.exit57.i

bb.i:                                             ; preds = %bb.g
  %i.cg = invoke noundef nonnull ptr @_RNvXNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer7contextNtB4_9InferCtxtNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir10infer_ctxt13InferCtxtLike13next_ty_infer(ptr noundef nonnull align 8 %i.bx)
          to label %.noexc54 unwind label %bb.b   ; 3 uses

.noexc54:                                         ; preds = %bb.i
  invoke void @_RINvMs4_NtNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve7inspect5buildINtB6_21EvaluationStepBuilderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6solver13SolverContextNtNtB1M_8interner10DbInternerE13add_var_valueNtNtB1M_2ty2TyEB1O_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bw, ptr noundef nonnull %i.cg)
          to label %.noexc55 unwind label %bb.b

.noexc55:                                         ; preds = %.noexc54
  %i.ch = invoke noundef i64 @_RNvMs0_NtCs50pZefIA5Ye_8triomphe3arcINtB5_8ArcInnerNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty10TyInternedE14offset_of_dataBT_(ptr noundef nonnull %i.cg)
          to label %.noexc56 unwind label %bb.b

.noexc56:                                         ; preds = %.noexc55
  %i.ci = sub nsw i64 0, %i.ch
  %i.cj = getelementptr inbounds i8, ptr %i.cg, i64 %i.ci
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  br label %_RNvMs0_NtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve9eval_ctxtINtB5_8EvalCtxtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6solver13SolverContextNtNtB1r_8interner10DbInternerE23next_term_infer_of_kindB1t_.exit57.i

_RNvMs0_NtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve9eval_ctxtINtB5_8EvalCtxtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6solver13SolverContextNtNtB1r_8interner10DbInternerE23next_term_infer_of_kindB1t_.exit57.i: ; preds = %.noexc56, %.noexc53
  %.sroa.0.0.i55.i = phi ptr [ %i.cf, %.noexc53 ], [ %i.ck, %.noexc56 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !4503
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false), !noalias !4503
  %i.cl = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store ptr %.sroa.0.0.i55.i, ptr %i.cl, align 8, !noalias !4503
  %i.cm = invoke { ptr, ptr } @_RINvMs6_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir5solveINtB6_4GoalNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerTNtNtB12_11generic_arg4TermB1Y_NtNtB8_14predicate_kind22AliasRelationDirectionEE4withNtNtB12_9predicate9PredicateINtNtB8_9predicate12NormalizesToBY_EEB14_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.ai, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.v, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.p)
          to label %.noexc57 unwind label %bb.b   ; 2 uses

.noexc57:                                         ; preds = %_RNvMs0_NtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve9eval_ctxtINtB5_8EvalCtxtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6solver13SolverContextNtNtB1r_8interner10DbInternerE23next_term_infer_of_kindB1t_.exit57.i
  %i.cn = extractvalue { ptr, ptr } %i.cm, 0
  %i.co = extractvalue { ptr, ptr } %i.cm, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !4503
  invoke void @_RNvMs0_NtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve9eval_ctxtINtB5_8EvalCtxtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6solver13SolverContextNtNtB1r_8interner10DbInternerE8add_goalB1t_(ptr noalias nofree noundef nonnull align 8 dereferenceable(152) %1, i8 noundef 5, ptr noundef nonnull %i.cn, ptr noundef nonnull %i.co)
          to label %.noexc58 unwind label %bb.b

.noexc58:                                         ; preds = %.noexc57, %.noexc50
  %.sroa.02.0.i = phi ptr [ %i.aq, %.noexc50 ], [ %.sroa.0.0.i55.i, %.noexc57 ]
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 136
  invoke void @_RNvMs4_NtNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve7inspect5buildINtB5_21EvaluationStepBuilderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6solver13SolverContextNtNtB1L_8interner10DbInternerE23make_canonical_responseB1N_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.cp, i32 131328)
          to label %.noexc59 unwind label %bb.b

.noexc59:                                         ; preds = %.noexc58
  %i.cq = invoke i32 @_RNvMs0_NtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve9eval_ctxtINtB5_8EvalCtxtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6solver13SolverContextNtNtB1r_8interner10DbInternerE24try_evaluate_added_goalsB1t_(ptr noalias nofree noundef nonnull align 8 dereferenceable(152) %1)
          to label %.noexc60 unwind label %bb.b

.noexc60:                                         ; preds = %.noexc59
  %i.cr = and i32 %i.cq, 255
  %i.cs = icmp eq i32 %i.cr, 255
  br i1 %i.cs, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.noexc60
  %i.ct = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  store i8 -1, ptr %i.ct, align 8, !alias.scope !4501, !noalias !4502
  br label %bb.an

bb.k:                                             ; preds = %.noexc60
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !4503
  %.val54.i = load ptr, ptr %i.aj, align 8, !noalias !4503, !nonnull !18, !align !26, !noundef !18
  %i.cu = invoke noundef nonnull ptr @_RINvXNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer7contextNtB5_9InferCtxtNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir10infer_ctxt13InferCtxtLike24resolve_vars_if_possibleNtNtB7_11generic_arg4TermEB9_(ptr noundef nonnull align 8 %.val54.i, ptr noundef nonnull %.sroa.0.0.i)
          to label %.noexc61 unwind label %bb.b

.noexc61:                                         ; preds = %bb.k
  store ptr %i.cu, ptr %i.o, align 8, !noalias !4503
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !4503
  %.val.i = load ptr, ptr %i.aj, align 8, !noalias !4503, !nonnull !18, !align !26, !noundef !18
  %i.cv = invoke noundef nonnull ptr @_RINvXNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer7contextNtB5_9InferCtxtNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir10infer_ctxt13InferCtxtLike24resolve_vars_if_possibleNtNtB7_11generic_arg4TermEB9_(ptr noundef nonnull align 8 %.val.i, ptr noundef nonnull %.sroa.02.0.i)
          to label %.noexc62 unwind label %bb.b

.noexc62:                                         ; preds = %.noexc61
  store ptr %i.cv, ptr %i.n, align 8, !noalias !4503
  %i.cw = load atomic i64, ptr @_RNvNtCsaMQbKjKCVRW_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !noalias !4503
  %i.cx = icmp eq i64 %i.cw, 0
  br i1 %i.cx, label %bb.l, label %bb.o

bb.l:                                             ; preds = %.noexc62
  %i.cy = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNvMNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve12alias_relateINtNtB8_9eval_ctxt8EvalCtxtppE25compute_alias_relate_goal010___CALLSITE, i64 16) monotonic, align 8, !noalias !4503 ; 3 uses
  switch i8 %i.cy, label %bb.m [
    i8 0, label %bb.o
    i8 1, label %bb.n
    i8 2, label %bb.n
  ], !prof !27

bb.m:                                             ; preds = %bb.l
  %i.cz = invoke noundef i8 @_RNvMNtCsaMQbKjKCVRW_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNvMNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve12alias_relateINtNtB8_9eval_ctxt8EvalCtxtppE25compute_alias_relate_goal010___CALLSITE) #49
          to label %.noexc63 unwind label %bb.b   ; 2 uses

.noexc63:                                         ; preds = %bb.m
  %i.da = icmp eq i8 %i.cz, 0
  br i1 %i.da, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.l, %.noexc63, %bb.l
  %.sroa.016.0.i = phi i8 [ %i.cz, %.noexc63 ], [ %i.cy, %bb.l ], [ %i.cy, %bb.l ]
  %i.db = load ptr, ptr @_RNvNCNvMNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve12alias_relateINtNtB8_9eval_ctxt8EvalCtxtppE25compute_alias_relate_goal010___CALLSITE, align 8, !noalias !4503, !nonnull !18, !align !26, !noundef !18
  %i.dc = invoke noundef zeroext i1 @_RNvNtCsbDqbwph1Irx_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.db, i8 noundef %.sroa.016.0.i)
          to label %.noexc64 unwind label %bb.b

.noexc64:                                         ; preds = %bb.n
  br i1 %i.dc, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.noexc67, %.noexc64, %.noexc63, %bb.l, %.noexc62
  %not..i = xor i8 %i.as, 1                       ; 3 uses
  %i.dd = load ptr, ptr %i.o, align 8, !noalias !4503, !nonnull !18, !noundef !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !4503
  %i.de = load ptr, ptr %i.aj, align 8, !noalias !4503, !nonnull !18, !align !26, !noundef !18
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.df, i64 32, i1 false), !noalias !4503
  invoke void @_RNvYNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_arg4TermINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir8inherent4TermNtNtB6_8interner10DbInternerE13to_alias_termB8_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, ptr noundef nonnull %i.dd, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.i)
          to label %.noexc65 unwind label %bb.b

.noexc65:                                         ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !4503
  %i.dg = load ptr, ptr %i.n, align 8, !noalias !4503, !nonnull !18, !noundef !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !4503
  %i.dh = load ptr, ptr %i.aj, align 8, !noalias !4503, !nonnull !18, !align !26, !noundef !18
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.di, i64 32, i1 false), !noalias !4503
  invoke void @_RNvYNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_arg4TermINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir8inherent4TermNtNtB6_8interner10DbInternerE13to_alias_termB8_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noundef nonnull %i.dg, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.g)
          to label %.noexc66 unwind label %bb.b

.noexc66:                                         ; preds = %.noexc65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !4503
  %i.dj = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.dk = load i32, ptr %i.dj, align 8, !range !77, !noalias !4503, !noundef !18
  %.not50.i = icmp eq i32 %i.dk, -1
  %i.dl = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.dm = load i32, ptr %i.dl, align 8, !range !77, !noalias !4503, !noundef !18
  %.not51.i = icmp eq i32 %i.dm, -1               ; 2 uses
  br i1 %.not50.i, label %bb.r, label %bb.q

bb.p:                                             ; preds = %.noexc64
  %i.dn = load ptr, ptr @_RNvNCNvMNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve12alias_relateINtNtB8_9eval_ctxt8EvalCtxtppE25compute_alias_relate_goal010___CALLSITE, align 8, !noalias !4503, !nonnull !18, !align !26, !noundef !18 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !4503
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !4503
  store ptr %i.o, ptr %i.l, align 8, !noalias !4503
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !4503
  store ptr %i.n, ptr %i.k, align 8, !noalias !4503
  store ptr %i.l, ptr %i.m, align 8, !noalias !4503
  %i.dp = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr @61, ptr %i.dp, align 8, !noalias !4503
  %i.dq = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store ptr %i.k, ptr %i.dq, align 8, !noalias !4503
  %i.dr = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store ptr @61, ptr %i.dr, align 8, !noalias !4503
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4503
  store i64 1, ptr %i.b, align 8, !noalias !4503
  %.sroa.018.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.m, ptr %.sroa.018.sroa.4.0..sroa_idx.i, align 8, !noalias !4503
  %.sroa.018.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 2, ptr %.sroa.018.sroa.5.0..sroa_idx.i, align 8, !noalias !4503
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.do, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !4503
  invoke void @_RNvMNtCsaMQbKjKCVRW_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.dn, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.b)
          to label %.noexc67 unwind label %bb.b

.noexc67:                                         ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4503
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !4503
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !4503
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !4503
  br label %bb.o

bb.q:                                             ; preds = %.noexc66
  br i1 %.not51.i, label %bb.aa, label %bb.z

bb.r:                                             ; preds = %.noexc66
  br i1 %.not51.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !4503
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !noalias !4503
  %trunc.not.i = icmp eq i8 %i.as, 0
  %.53.i = select i1 %trunc.not.i, i8 1, i8 2
  %i.ds = load ptr, ptr %i.o, align 8, !noalias !4503, !nonnull !18, !noundef !18
  %i.dt = invoke noundef zeroext i1 @_RNvMs0_NtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve9eval_ctxtINtB5_8EvalCtxtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6solver13SolverContextNtNtB1r_8interner10DbInternerE28relate_rigid_alias_non_aliasB1t_(ptr noalias nofree noundef nonnull align 8 dereferenceable(152) %1, ptr noundef nonnull %i.am, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.e, i8 noundef %.53.i, ptr noundef nonnull %i.ds)
          to label %.noexc68 unwind label %bb.b

.noexc68:                                         ; preds = %bb.s
  br i1 %i.dt, label %bb.x, label %bb.y

bb.t:                                             ; preds = %bb.r
  %i.du = load ptr, ptr %i.o, align 8, !noalias !4503, !nonnull !18, !noundef !18
  %i.dv = load ptr, ptr %i.n, align 8, !noalias !4503, !nonnull !18, !noundef !18
  %i.dw = invoke fastcc noundef zeroext i1 @_RINvMs0_NtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve9eval_ctxtINtB6_8EvalCtxtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6solver13SolverContextNtNtB1s_8interner10DbInternerE6relateNtNtB1s_11generic_arg4TermEB1u_(ptr noalias nofree noundef align 8 dereferenceable(152) %1, ptr noundef nonnull %i.am, ptr noundef nonnull %i.du, i8 noundef %not..i, ptr noundef nonnull %i.dv)
          to label %.noexc69 unwind label %bb.b

.noexc69:                                         ; preds = %bb.t
  br i1 %i.dw, label %bb.u, label %bb.v

bb.u:                                             ; preds = %.noexc69
  %i.dx = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  store i8 -1, ptr %i.dx, align 8, !alias.scope !4501, !noalias !4502
  br label %bb.w

bb.v:                                             ; preds = %.noexc69
  invoke void @_RNvMs0_NtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve9eval_ctxtINtB5_8EvalCtxtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6solver13SolverContextNtNtB1r_8interner10DbInternerE48evaluate_added_goals_and_make_canonical_responseB1t_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.aa, ptr noalias nofree noundef nonnull align 8 dereferenceable(152) %1, i32 2)
          to label %.noexc70 unwind label %bb.b

.noexc70:                                         ; preds = %bb.v, %.noexc75, %.noexc74, %.noexc71
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !4503
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !4503
  br label %bb.an

bb.w:                                             ; preds = %bb.ad, %bb.ab, %bb.x, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !4503
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !4503
  br label %bb.an

bb.x:                                             ; preds = %.noexc68
  %i.dy = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  store i8 -1, ptr %i.dy, align 8, !alias.scope !4501, !noalias !4502
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !4503
  br label %bb.w

bb.y:                                             ; preds = %.noexc68
  invoke void @_RNvMs0_NtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve9eval_ctxtINtB5_8EvalCtxtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6solver13SolverContextNtNtB1r_8interner10DbInternerE48evaluate_added_goals_and_make_canonical_responseB1t_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.aa, ptr noalias nofree noundef nonnull align 8 dereferenceable(152) %1, i32 2)
          to label %.noexc71 unwind label %bb.b

.noexc71:                                         ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !4503
  br label %.noexc70

bb.z:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !4503
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false), !noalias !4503
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4503
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !noalias !4503
  %i.dz = invoke fastcc noundef zeroext i1 @_RINvMs0_NtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve9eval_ctxtINtB6_8EvalCtxtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6solver13SolverContextNtNtB1s_8interner10DbInternerE6relateINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9predicate9AliasTermB2o_EEB1u_(ptr noalias nofree noundef align 8 dereferenceable(152) %1, ptr noundef nonnull %i.am, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable(24) %i.d, i8 noundef %not..i, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable(24) %i.c)
          to label %.noexc72 unwind label %bb.b

.noexc72:                                         ; preds = %bb.z
  br i1 %i.dz, label %bb.ad, label %bb.ae

bb.aa:                                            ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !4503
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false), !noalias !4503
  %i.ea = load ptr, ptr %i.n, align 8, !noalias !4503, !nonnull !18, !noundef !18
  %i.eb = invoke noundef zeroext i1 @_RNvMs0_NtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve9eval_ctxtINtB5_8EvalCtxtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6solver13SolverContextNtNtB1r_8interner10DbInternerE28relate_rigid_alias_non_aliasB1t_(ptr noalias nofree noundef nonnull align 8 dereferenceable(152) %1, ptr noundef nonnull %i.am, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.f, i8 noundef %not..i, ptr noundef nonnull %i.ea)
          to label %.noexc73 unwind label %bb.b

.noexc73:                                         ; preds = %bb.aa
  br i1 %i.eb, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %.noexc73
  %i.ec = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  store i8 -1, ptr %i.ec, align 8, !alias.scope !4501, !noalias !4502
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !4503
  br label %bb.w

bb.ac:                                            ; preds = %.noexc73
  invoke void @_RNvMs0_NtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve9eval_ctxtINtB5_8EvalCtxtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6solver13SolverContextNtNtB1r_8interner10DbInternerE48evaluate_added_goals_and_make_canonical_responseB1t_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.aa, ptr noalias nofree noundef nonnull align 8 dereferenceable(152) %1, i32 2)
          to label %.noexc74 unwind label %bb.b

.noexc74:                                         ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !4503
  br label %.noexc70

bb.ad:                                            ; preds = %.noexc72
  %i.ed = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  store i8 -1, ptr %i.ed, align 8, !alias.scope !4501, !noalias !4502
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4503
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4503
  br label %bb.w

bb.ae:                                            ; preds = %.noexc72
  invoke void @_RNvMs0_NtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve9eval_ctxtINtB5_8EvalCtxtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6solver13SolverContextNtNtB1r_8interner10DbInternerE48evaluate_added_goals_and_make_canonical_responseB1t_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.aa, ptr noalias nofree noundef nonnull align 8 dereferenceable(152) %1, i32 2)
          to label %.noexc75 unwind label %bb.b

.noexc75:                                         ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4503
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4503
  br label %.noexc70

bb.af:                                            ; preds = %bb.a
  %i.ee = load atomic i64, ptr @_RNvNtCsaMQbKjKCVRW_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.ef = icmp eq i64 %i.ee, 0
  br i1 %i.ef, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.ah, %bb.af, %bb.aj, %bb.ai
  store i64 2, ptr %i.ab, align 8
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  store ptr null, ptr %i.eg, align 8
  br label %bb.al

bb.ah:                                            ; preds = %bb.af
  %i.eh = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve12alias_relateINtNtB6_9eval_ctxt8EvalCtxtppE25compute_alias_relate_goal10___CALLSITE, i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.eh, label %bb.ai [
    i8 0, label %bb.ag
    i8 1, label %bb.aj
    i8 2, label %bb.aj
  ], !prof !27

bb.ai:                                            ; preds = %bb.ah
  %i.ei = tail call noundef i8 @_RNvMNtCsaMQbKjKCVRW_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvMNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve12alias_relateINtNtB6_9eval_ctxt8EvalCtxtppE25compute_alias_relate_goal10___CALLSITE) ; 2 uses
  %.not = icmp eq i8 %i.ei, 0
  br i1 %.not, label %bb.ag, label %bb.aj

bb.aj:                                            ; preds = %bb.ah, %bb.ah, %bb.ai
  %.sroa.010.0 = phi i8 [ %i.ei, %bb.ai ], [ %i.eh, %bb.ah ], [ %i.eh, %bb.ah ]
  %i.ej = load ptr, ptr @_RNvNvMNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve12alias_relateINtNtB6_9eval_ctxt8EvalCtxtppE25compute_alias_relate_goal10___CALLSITE, align 8, !nonnull !18, !align !26, !noundef !18
  %i.ek = tail call noundef zeroext i1 @_RNvNtCsbDqbwph1Irx_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ej, i8 noundef %.sroa.010.0)
  br i1 %i.ek, label %bb.ak, label %bb.ag

bb.ak:                                            ; preds = %bb.aj
  %i.el = load ptr, ptr @_RNvNvMNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve12alias_relateINtNtB6_9eval_ctxt8EvalCtxtppE25compute_alias_relate_goal10___CALLSITE, align 8, !nonnull !18, !align !26, !noundef !18 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  store ptr %2, ptr %i.ac, align 8
  store ptr %i.ac, ptr %i.ad, align 8
  %i.en = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr @219, ptr %i.en, align 8
  store i64 1, ptr %i.ae, align 8
  %.sroa.428.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr %i.ad, ptr %.sroa.428.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store i64 1, ptr %.sroa.5.0..sroa_idx, align 8
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  store ptr %i.em, ptr %i.eo, align 8
  call void @_RNvMNtCsbDqbwph1Irx_7tracing4spanNtB2_4Span3new(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.ab, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.el, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ae)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.ag
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.af, ptr noundef nonnull align 8 dereferenceable(40) %i.ab, i64 40, i1 false)
  %i.ep = load i64, ptr %i.af, align 8, !range !28, !noundef !18
  %.not39 = icmp eq i64 %i.ep, 2
  br i1 %.not39, label %bb.c, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.eq = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  invoke void @_RNvMs2_NtCsaMQbKjKCVRW_12tracing_core10dispatcherNtB5_8Dispatch5enter(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.af, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.eq)
          to label %bb.c unwind label %bb.ax

bb.an:                                            ; preds = %bb.j, %.noexc70, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !4503
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  %i.er = load atomic i64, ptr @_RNvNtCsaMQbKjKCVRW_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.es = icmp eq i64 %i.er, 0
  br i1 %i.es, label %bb.ao, label %bb.at

bb.ao:                                            ; preds = %bb.an
  %i.et = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve12alias_relateINtNtB6_9eval_ctxt8EvalCtxtppE25compute_alias_relate_goals_10___CALLSITE, i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.et, label %bb.ap [
    i8 0, label %bb.at
    i8 1, label %bb.aq
    i8 2, label %bb.aq
  ], !prof !27

bb.ap:                                            ; preds = %bb.ao
  %i.eu = invoke noundef i8 @_RNvMNtCsaMQbKjKCVRW_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvMNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve12alias_relateINtNtB6_9eval_ctxt8EvalCtxtppE25compute_alias_relate_goals_10___CALLSITE)
          to label %bb.ar unwind label %bb.b      ; 2 uses

bb.aq:                                            ; preds = %bb.ao, %bb.ao, %bb.ar
  %.sroa.018.0 = phi i8 [ %i.eu, %bb.ar ], [ %i.et, %bb.ao ], [ %i.et, %bb.ao ]
  %i.ev = load ptr, ptr @_RNvNvMNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve12alias_relateINtNtB6_9eval_ctxt8EvalCtxtppE25compute_alias_relate_goals_10___CALLSITE, align 8, !nonnull !18, !align !26, !noundef !18
  %i.ew = invoke noundef zeroext i1 @_RNvNtCsbDqbwph1Irx_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ev, i8 noundef %.sroa.018.0)
          to label %bb.as unwind label %bb.b

bb.ar:                                            ; preds = %bb.ap
  %i.ex = icmp eq i8 %i.eu, 0
  br i1 %i.ex, label %bb.at, label %bb.aq

bb.as:                                            ; preds = %bb.aq
  br i1 %i.ew, label %bb.au, label %bb.at

end_hunk_0
