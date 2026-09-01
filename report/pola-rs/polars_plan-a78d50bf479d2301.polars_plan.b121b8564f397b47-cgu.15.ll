Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_plan-a78d50bf479d2301.polars_plan.b121b8564f397b47-cgu.15?download=true
inline.NumInlined: 9256
inline.NumDeleted: 3478
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_RNvXNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer13collapse_sortNtB2_12CollapseSortNtNtB4_9stack_opt16OptimizationRule13optimize_plan:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.iq, i64 32, i1 false), !dbg !136380, !noalias !136186
  %i.kg = load i8, ptr %i.it, align 1, !dbg !136381, !range !13971, !alias.scope !136389, !noalias !136186, !noundef !12
  %i.kh = icmp eq i8 %i.kg, -40, !dbg !136400
  br i1 %i.kh, label %bb.ce, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions4hint6SortedEBO_.exit.i.i, !dbg !136400, !prof !175

bb.ce:                                            ; preds = %bb.cd
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions4hint6SortedEBO_.exit.i.i unwind label %.loopexit.i6, !dbg !136401, !noalias !136014

_RNCNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer13collapse_sort30try_prune_sort_with_sortednesss1_0B9_.exit.thread.i.i: ; preds = %bb.cc, %bb.cb, %_RNvXsl_NtCs2mZqlW55729_12polars_utils6pl_strNtB5_10PlSmallStrNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eqCsfcROwRM8ZtH_11polars_plan.exit.i.i.i.i, %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit9.i.i.i.i, %bb.bv
  %i.ki = phi i8 [ %.pre.i.i, %bb.bv ], [ %i.js, %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit9.i.i.i.i ], [ %i.js, %_RNvXsl_NtCs2mZqlW55729_12polars_utils6pl_strNtB5_10PlSmallStrNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eqCsfcROwRM8ZtH_11polars_plan.exit.i.i.i.i ], [ %i.js, %bb.cb ], [ %i.js, %bb.cc ]
  %.sroa.0.0.i.i = phi i1 [ %.not8.i.i, %bb.bv ], [ false, %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit9.i.i.i.i ], [ false, %_RNvXsl_NtCs2mZqlW55729_12polars_utils6pl_strNtB5_10PlSmallStrNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eqCsfcROwRM8ZtH_11polars_plan.exit.i.i.i.i ], [ false, %bb.cb ], [ false, %bb.cc ], !dbg !136402
  %.not10.i.i = icmp ne i8 %i.jj, 3, !dbg !136403
  %i.kj = icmp eq i8 %i.ki, -40
  %or.cond39.i.i = select i1 %.not10.i.i, i1 %i.kj, i1 false, !dbg !136403, !prof !341
  br i1 %or.cond39.i.i, label %bb.cf, label %bb.ci, !dbg !136403, !prof !341

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions4hint6SortedEBO_.exit.i.i: ; preds = %bb.ce, %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !136404, !noalias !136186
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !136403, !noalias !136186
  br label %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions4hint6SortedENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBX_.exit.i.i, !dbg !136405

bb.cf:                                            ; preds = %_RNCNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer13collapse_sort30try_prune_sort_with_sortednesss1_0B9_.exit.thread.i.i
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.iq)
          to label %bb.ci unwind label %.loopexit.split-lp.i, !dbg !136406, !noalias !136014

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer10sortedness8IRSortedEBO_.exit20.i: ; preds = %._crit_edge, %bb.ck, %bb.cj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !136412, !noalias !136136
  br label %_RNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer13collapse_sort30try_prune_sort_with_sortedness.exit.thread, !dbg !136413

.loopexit.i6:                                     ; preds = %bb.ce, %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB4_3ZipINtNtB6_3map3MapINtNtNtBa_5slice4iter4IterNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIRENCNvNtNtB1F_9optimizer13collapse_sort30try_prune_sort_with_sortednesss_0EIBM_IB1c_bEB3J_EENtNtNtB8_6traits8iterator8Iterator4nextB1H_.exit.i.i.i
  %lpad.loopexit.i7 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cg

.loopexit.split-lp.i:                             ; preds = %bb.cr, %bb.cq, %bb.cf, %bb.bt
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.cg

bb.cg:                                            ; preds = %.loopexit.split-lp.i, %.loopexit.i6
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i7, %.loopexit.i6 ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ] ; 2 uses
  %i.kk = atomicrmw sub ptr %i.ij, i64 1 release, align 8, !dbg !136415, !noalias !136422
  %i.kl = icmp eq i64 %i.kk, 1, !dbg !136429
  br i1 %i.kl, label %bb.ch, label %common.resume, !dbg !136429

bb.ch:                                            ; preds = %bb.cg
  fence acquire, !dbg !136430
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcSNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions4hint6SortedE9drop_slowBP_(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %i.g) #52
          to label %common.resume unwind label %bb.cu, !dbg !136432, !noalias !136014

bb.ci:                                            ; preds = %bb.cf, %_RNCNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer13collapse_sort30try_prune_sort_with_sortednesss1_0B9_.exit.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !136403, !noalias !136186
  br i1 %.sroa.0.0.i.i, label %bb.cl, label %bb.cj, !dbg !136433

bb.cj:                                            ; preds = %bb.ci
  %i.km = atomicrmw sub ptr %i.ij, i64 1 release, align 8, !dbg !136436, !noalias !136442
  %i.kn = icmp eq i64 %i.km, 1, !dbg !136449
  br i1 %i.kn, label %bb.ck, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer10sortedness8IRSortedEBO_.exit20.i, !dbg !136449

bb.ck:                                            ; preds = %bb.cj
  fence acquire, !dbg !136450
  call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcSNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions4hint6SortedE9drop_slowBP_(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %i.g) #52, !dbg !136452, !noalias !136014
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer10sortedness8IRSortedEBO_.exit20.i, !dbg !136452

bb.cl:                                            ; preds = %bb.ci
  %i.ko = getelementptr inbounds nuw i8, ptr %i.af, i64 8, !dbg !136453
  %i.kp = load i64, ptr %i.ko, align 8, !dbg !136453, !range !171, !noalias !136014, !noundef !12
  %i.kq = trunc nuw i64 %i.kp to i1, !dbg !136456
  br i1 %i.kq, label %bb.cm, label %bb.cn, !dbg !136456

bb.cm:                                            ; preds = %bb.cl
  %i.kr = load i64, ptr %i.ig, align 16, !dbg !136457, !noalias !136014, !noundef !12
  %i.ks = getelementptr inbounds nuw i8, ptr %i.af, i64 16, !dbg !136458
  %i.kt = load i64, ptr %i.ks, align 16, !dbg !136458, !noalias !136014, !noundef !12
  %i.ku = getelementptr inbounds nuw i8, ptr %i.af, i64 24, !dbg !136459
  %i.kv = load i64, ptr %i.ku, align 8, !dbg !136459, !noalias !136014, !noundef !12
  %i.kw = trunc i64 %i.kv to i32, !dbg !136459
  br label %bb.co, !dbg !136460

bb.cn:                                            ; preds = %bb.cl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !136461, !noalias !136136
  %i.kx = load i64, ptr %i.ig, align 16, !dbg !136462, !noalias !136014, !noundef !12 ; 2 uses
  %i.ky = icmp ult i64 %i.kx, %.val2, !dbg !136463
  br i1 %i.ky, label %bb.cr, label %bb.cq, !dbg !136463, !prof !1720

bb.co:                                            ; preds = %bb.ct, %bb.cm
  %.sroa.1018.0 = phi i32 [ %i.kw, %bb.cm ], [ %.sroa.1018.0.copyload20, %bb.ct ], !dbg !136472
  %.sroa.915.0 = phi i64 [ %i.kt, %bb.cm ], [ %.sroa.915.0.copyload17, %bb.ct ], !dbg !136472
  %.sroa.812.0 = phi i64 [ %i.kr, %bb.cm ], [ %.sroa.812.0.copyload14, %bb.ct ], !dbg !136472
  %.sroa.010.1 = phi i64 [ -9223372036854775803, %bb.cm ], [ %.sroa.010.0.copyload11, %bb.ct ], !dbg !136472 ; 2 uses
  %i.kz = atomicrmw sub ptr %i.ij, i64 1 release, align 8, !dbg !136473, !noalias !136479
  %i.la = icmp eq i64 %i.kz, 1, !dbg !136486
  br i1 %i.la, label %bb.cp, label %_RNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer13collapse_sort30try_prune_sort_with_sortedness.exit, !dbg !136486

bb.cp:                                            ; preds = %bb.co
  fence acquire, !dbg !136487
  call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcSNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions4hint6SortedE9drop_slowBP_(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %i.g) #52, !dbg !136489, !noalias !136014
  br label %_RNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer13collapse_sort30try_prune_sort_with_sortedness.exit, !dbg !136489

bb.cq:                                            ; preds = %bb.cn
  invoke void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @181) #49
          to label %bb.cs unwind label %.loopexit.split-lp.i, !dbg !136490, !noalias !136014

bb.cr:                                            ; preds = %bb.cn
  %i.lb = getelementptr inbounds nuw [368 x i8], ptr %.val, i64 %i.kx, !dbg !136493
  invoke fastcc void @_RNvXs5_NtNtCsfcROwRM8ZtH_11polars_plan5plans2irNtB5_2IRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(368) %i.f, ptr noundef nonnull align 16 %i.lb)
          to label %bb.ct unwind label %.loopexit.split-lp.i, !dbg !136494, !noalias !136014

bb.cs:                                            ; preds = %bb.cq
  unreachable

bb.ct:                                            ; preds = %bb.cr
  %.sroa.010.0.copyload11 = load i64, ptr %i.f, align 16, !dbg !136495, !noalias !136496
  %.sroa.812.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !136495
  %.sroa.812.0.copyload14 = load i64, ptr %.sroa.812.0..sroa_idx13, align 8, !dbg !136495, !noalias !136496
  %.sroa.915.0..sroa_idx16 = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !136495
  %.sroa.915.0.copyload17 = load i64, ptr %.sroa.915.0..sroa_idx16, align 16, !dbg !136495, !noalias !136496
  %.sroa.1018.0..sroa_idx19 = getelementptr inbounds nuw i8, ptr %i.f, i64 24, !dbg !136495
  %.sroa.1018.0.copyload20 = load i32, ptr %.sroa.1018.0..sroa_idx19, align 8, !dbg !136495, !noalias !136496
  %.sroa.1121.0..sroa_idx22 = getelementptr inbounds nuw i8, ptr %i.f, i64 28, !dbg !136495
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(340) %.sroa.1121, ptr noundef nonnull align 4 dereferenceable(340) %.sroa.1121.0..sroa_idx22, i64 340, i1 false), !dbg !136495, !noalias !136496
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !136497, !noalias !136136
  br label %bb.co, !dbg !136460

bb.cu:                                            ; preds = %bb.ch
  %i.lc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #50, !dbg !136498, !noalias !136014
  unreachable, !dbg !136498

_RNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer13collapse_sort30try_prune_sort_with_sortedness.exit: ; preds = %bb.co, %bb.cp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !136412, !noalias !136136
  %.not1 = icmp eq i64 %.sroa.010.1, -9223372036854775781, !dbg !135990
  br i1 %.not1, label %_RNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer13collapse_sort30try_prune_sort_with_sortedness.exit.thread, label %bb.cw, !dbg !136499

bb.cv:                                            ; preds = %_RNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer13collapse_sort30try_prune_sort_with_sortedness.exit.thread, %bb.cw, %bb.bm
  ret void, !dbg !136500

bb.cw:                                            ; preds = %_RNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer13collapse_sort30try_prune_sort_with_sortedness.exit
  store i64 %.sroa.010.1, ptr %0, align 16, !dbg !136501
  %.sroa.812.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !136501
  store i64 %.sroa.812.0, ptr %.sroa.812.0..sroa_idx, align 8, !dbg !136501
  %.sroa.915.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !136501
  store i64 %.sroa.915.0, ptr %.sroa.915.0..sroa_idx, align 16, !dbg !136501
  %.sroa.1018.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !136501
  store i32 %.sroa.1018.0, ptr %.sroa.1018.0..sroa_idx, align 8, !dbg !136501
  %.sroa.1121.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28, !dbg !136501
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(340) %.sroa.1121.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(340) %.sroa.1121, i64 340, i1 false), !dbg !136501
  br label %bb.cv, !dbg !135985

_RNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer13collapse_sort30try_prune_sort_with_sortedness.exit.thread: ; preds = %_RNCNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer13collapse_sort30try_prune_sort_with_sortedness0B9_.exit.i.i, %bb.bn, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer10sortedness8IRSortedEBO_.exit20.i, %_RNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer13collapse_sort30try_prune_sort_with_sortedness.exit
  store i64 -9223372036854775781, ptr %0, align 16, !dbg !136502
  br label %bb.cv, !dbg !136500
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer13simplify_exprNtB2_19SimplifyBooleanRuleNtNtB4_9stack_opt16OptimizationRule13optimize_expr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([144 x i8]) align 16 captures(none) dereferenceable(144) %0, ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %1, ptr noalias noundef align 8 captures(address, read_provenance) dereferenceable(32) %2, i64 noundef %3, ptr noalias noundef readonly align 8 captures(none) dereferenceable(64) %4, i32 noundef %5) unnamed_addr #1 !dbg !136503 {
bb.a:
  %i.a = alloca [48 x i8], align 16               ; 15 uses
  %i.b = alloca [17 x i8], align 1                ; 4 uses
  %i.c = alloca [144 x i8], align 16              ; 6 uses
  %i.d = alloca [144 x i8], align 16              ; 28 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !136505 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !136520 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !dbg !136520, !noundef !12 ; 9 uses
  %i.h = icmp ult i64 %3, %i.g, !dbg !136521
  br i1 %i.h, label %bb.c, label %bb.b, !dbg !136521, !prof !1720

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @181) #53, !dbg !136526
  unreachable, !dbg !136526

bb.c:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.e, align 8, !dbg !136505, !nonnull !12, !noundef !12 ; 9 uses
  %i.j = getelementptr inbounds nuw [144 x i8], ptr %i.i, i64 %3, !dbg !136529 ; 11 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 112, !dbg !136530
  %i.l = load i64, ptr %i.k, align 16, !dbg !136530, !range !42867, !noundef !12 ; 3 uses
  %i.m = icmp ne i64 %i.l, -9223372036854775791, !dbg !136530
  tail call void @llvm.assume(i1 %i.m), !dbg !136530
  %i.n = xor i64 %i.l, -9223372036854775808, !dbg !136530
  %i.o = icmp slt i64 %i.l, 0, !dbg !136530
  %i.p = select i1 %i.o, i64 %i.n, i64 17, !dbg !136530
  switch i64 %i.p, label %_RNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer13simplify_expr11eval_negate.exit [
    i64 5, label %bb.d
    i64 12, label %bb.be
    i64 17, label %bb.bv
  ], !dbg !136532

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !136533
  %i.q = load i64, ptr %i.j, align 16, !dbg !136535, !noundef !12 ; 7 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 16, !dbg !136536
  %i.s = load i8, ptr %i.r, align 16, !dbg !136536, !range !135404, !noundef !12
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 8, !dbg !136537
  %i.u = load i64, ptr %i.t, align 8, !dbg !136537, !noundef !12 ; 6 uses
  %i.v = load i8, ptr %1, align 1, !dbg !136538, !range !1822, !noundef !12
  %i.w = trunc nuw i8 %i.v to i1, !dbg !136538    ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !136539), !dbg !136533
  tail call void @llvm.experimental.noalias.scope.decl(metadata !136542), !dbg !136533
  %i.x = and i32 %5, 65536, !dbg !136544          ; 3 uses
  %i.y = icmp ne i32 %i.x, 0, !dbg !136544        ; 4 uses
  switch i8 %i.s, label %.thread.i [
    i8 15, label %bb.e
    i8 16, label %bb.f
  ], !dbg !136547

.thread.i:                                        ; preds = %bb.bc, %bb.bb, %bb.ay, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.y, %bb.x, %bb.w, %bb.r, %bb.o, %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 112, !dbg !136549
  store i64 -9223372036854775786, ptr %i.z, align 16, !dbg !136549, !alias.scope !136539, !noalias !136542
  br label %_RNvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer13simplify_expr5arity15simplify_binary.exit, !dbg !136550

bb.e:                                             ; preds = %bb.d
  %i.aa = icmp ult i64 %i.q, %i.g, !dbg !136551
  br i1 %i.aa, label %bb.h, label %bb.g, !dbg !136551, !prof !1720

bb.f:                                             ; preds = %bb.d
  %i.ab = icmp ult i64 %i.q, %i.g, !dbg !136560
  br i1 %i.ab, label %bb.ao, label %bb.an, !dbg !136560, !prof !1720

bb.g:                                             ; preds = %bb.e
  tail call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @181) #53, !dbg !136564, !noalias !136567
  unreachable, !dbg !136564

bb.h:                                             ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw [144 x i8], ptr %i.i, i64 %i.q, !dbg !136568 ; 9 uses
  %i.ad = icmp ult i64 %i.u, %i.g, !dbg !136569
  br i1 %i.ad, label %bb.j, label %bb.i, !dbg !136569, !prof !1720

bb.i:                                             ; preds = %bb.h
  tail call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @181) #53, !dbg !136576, !noalias !136567
  unreachable, !dbg !136576

bb.j:                                             ; preds = %bb.h
  %i.ae = getelementptr inbounds nuw [144 x i8], ptr %i.i, i64 %i.u, !dbg !136578 ; 9 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 112, !dbg !136579 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 16, !dbg !136579, !range !42867, !noalias !136567, !noundef !12 ; 2 uses
  %i.ah = icmp ne i64 %i.ag, -9223372036854775791, !dbg !136579
  tail call void @llvm.assume(i1 %i.ah), !dbg !136579
  %i.ai = icmp eq i64 %i.ag, -9223372036854775804, !dbg !136583
  br i1 %i.ai, label %bb.k, label %bb.l, !dbg !136583

bb.k:                                             ; preds = %bb.j
  %i.aj = tail call noundef i8 @_RNvMs7_NtNtCsfcROwRM8ZtH_11polars_plan5plans3litNtB5_12LiteralValue4bool(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(96) %i.ac), !dbg !136584, !noalias !136567
  %6 = and i8 %i.aj, 1, !dbg !136585
  %or.cond.not.i = icmp eq i8 %6, 0, !dbg !136585
  %.not.i = icmp eq i32 %i.x, 0, !dbg !136585
  %brmerge.i = or i1 %.not.i, %or.cond.not.i, !dbg !136585
  br i1 %brmerge.i, label %bb.l, label %bb.m, !dbg !136585

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 112, !dbg !136588 ; 3 uses
  %i.al = load i64, ptr %i.ak, align 16, !dbg !136588, !range !42867, !noalias !136567, !noundef !12 ; 2 uses
  %i.am = icmp ne i64 %i.al, -9223372036854775791, !dbg !136588
  tail call void @llvm.assume(i1 %i.am), !dbg !136588
  %i.an = icmp eq i64 %i.al, -9223372036854775804, !dbg !136591
  br i1 %i.an, label %bb.n, label %bb.o, !dbg !136591

bb.m:                                             ; preds = %bb.k
  call fastcc void @_RNvXs5_NtNtCsfcROwRM8ZtH_11polars_plan5plans5aexprNtB5_5AExprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef nonnull align 16 captures(none) dereferenceable(144) %i.d, ptr noundef nonnull align 16 %i.ae) #54, !dbg !136592, !noalias !136542
  br label %_RNvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer13simplify_expr5arity15simplify_binary.exit, !dbg !136593

bb.n:                                             ; preds = %bb.l
  %i.ao = tail call noundef i8 @_RNvMs7_NtNtCsfcROwRM8ZtH_11polars_plan5plans3litNtB5_12LiteralValue4bool(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(96) %i.ae), !dbg !136595, !noalias !136567
  %i.ap = and i8 %i.ao, 1, !dbg !136596
  %or.cond5.not.i = icmp eq i8 %i.ap, 0, !dbg !136596
  br i1 %or.cond5.not.i, label %bb.o, label %bb.p, !dbg !136596

bb.o:                                             ; preds = %bb.n, %bb.l
  %i.aq = tail call noundef zeroext i1 @_RNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr6scalar12is_scalar_ae(i64 noundef %i.q, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2), !dbg !136598, !noalias !136539
  %i.ar = or i1 %i.y, %i.aq, !dbg !136599
  br i1 %i.ar, label %bb.q, label %.thread.i, !dbg !136599

bb.p:                                             ; preds = %bb.n
  call fastcc void @_RNvXs5_NtNtCsfcROwRM8ZtH_11polars_plan5plans5aexprNtB5_5AExprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef nonnull align 16 captures(none) dereferenceable(144) %i.d, ptr noundef nonnull align 16 %i.ac) #54, !dbg !136600, !noalias !136542
  br label %_RNvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer13simplify_expr5arity15simplify_binary.exit, !dbg !136593

bb.q:                                             ; preds = %bb.o
  %i.as = load i64, ptr %i.ak, align 16, !dbg !136601, !range !42867, !noalias !136539, !noundef !12 ; 2 uses
  %i.at = icmp ne i64 %i.as, -9223372036854775791, !dbg !136601
  tail call void @llvm.assume(i1 %i.at), !dbg !136601
  %i.au = icmp eq i64 %i.as, -9223372036854775804, !dbg !136604
  br i1 %i.au, label %bb.s, label %bb.r, !dbg !136604

bb.r:                                             ; preds = %bb.s, %bb.q
  br i1 %i.y, label %bb.u, label %.thread.i, !dbg !136605

bb.s:                                             ; preds = %bb.q
  %i.av = tail call noundef i8 @_RNvMs7_NtNtCsfcROwRM8ZtH_11polars_plan5plans3litNtB5_12LiteralValue4bool(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(96) %i.ae), !dbg !136606, !noalias !136539
  %or.cond8.not.not.i = icmp eq i8 %i.av, 0, !dbg !136607
  br i1 %or.cond8.not.not.i, label %bb.t, label %bb.r, !dbg !136607

bb.t:                                             ; preds = %bb.s
  store i8 0, ptr %i.d, align 16, !dbg !136609, !alias.scope !136539, !noalias !136542
  %.sroa.028.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 48, !dbg !136609
  store i8 1, ptr %.sroa.028.sroa.5.0..sroa_idx.i, align 16, !dbg !136609, !alias.scope !136539, !noalias !136542
  %.sroa.028.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 49, !dbg !136609
  store i8 0, ptr %.sroa.028.sroa.6.0..sroa_idx.i, align 1, !dbg !136609, !alias.scope !136539, !noalias !136542
  %.sroa.429.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 112, !dbg !136609
  store i64 -9223372036854775804, ptr %.sroa.429.0..sroa_idx.i, align 16, !dbg !136609, !alias.scope !136539, !noalias !136542
  br label %_RNvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer13simplify_expr5arity15simplify_binary.exit, !dbg !136593

bb.u:                                             ; preds = %bb.r
  %i.aw = tail call fastcc noundef zeroext i1 @_RNvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer13simplify_expr5arity16is_self_negation(i64 noundef %i.q, ptr noundef nonnull align 16 %i.ac, ptr noundef nonnull align 16 %i.ae, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2, i1 noundef zeroext %i.w), !dbg !136610, !noalias !136539
  br i1 %i.aw, label %bb.am, label %bb.v, !dbg !136610

bb.v:                                             ; preds = %bb.u
  %i.ax = tail call fastcc noundef zeroext i1 @_RNvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer13simplify_expr5arity16is_self_negation(i64 noundef %i.u, ptr noundef nonnull align 16 %i.ae, ptr noundef nonnull align 16 %i.ac, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2, i1 noundef zeroext %i.w), !dbg !136611, !noalias !136539
  br i1 %i.ax, label %bb.am, label %bb.w, !dbg !136611

bb.w:                                             ; preds = %bb.v
  %i.ay = load i64, ptr %i.af, align 16, !dbg !136612, !range !42867, !noalias !136539, !noundef !12 ; 2 uses
  %i.az = icmp ne i64 %i.ay, -9223372036854775791, !dbg !136612
  tail call void @llvm.assume(i1 %i.az), !dbg !136612
  %i.ba = icmp eq i64 %i.ay, -9223372036854775803, !dbg !136614
  br i1 %i.ba, label %bb.x, label %.thread.i, !dbg !136614

bb.x:                                             ; preds = %bb.w
  %i.bb = load i64, ptr %i.ak, align 16, !dbg !136612, !range !42867, !noalias !136539, !noundef !12 ; 2 uses
  %i.bc = icmp ne i64 %i.bb, -9223372036854775791, !dbg !136612
  tail call void @llvm.assume(i1 %i.bc), !dbg !136612
  %i.bd = icmp eq i64 %i.bb, -9223372036854775803, !dbg !136614
  br i1 %i.bd, label %bb.y, label %.thread.i, !dbg !136614

bb.y:                                             ; preds = %bb.x
  %i.be = getelementptr inbounds nuw i8, ptr %i.ac, i64 16, !dbg !136615
  %i.bf = load i8, ptr %i.be, align 16, !dbg !136615, !range !135404, !noalias !136539, !noundef !12
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ae, i64 16, !dbg !136616
  %i.bh = load i8, ptr %i.bg, align 16, !dbg !136616, !range !135404, !noalias !136539, !noundef !12
  %i.bi = tail call fastcc noundef zeroext i1 @_RNvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer13simplify_expr5arity22comparisons_contradict(i8 noundef %i.bf, i8 noundef %i.bh), !dbg !136617
  br i1 %i.bi, label %bb.z, label %.thread.i, !dbg !136617

bb.z:                                             ; preds = %bb.y
  %i.bj = load i64, ptr %i.ac, align 16, !dbg !136618, !noalias !136539, !noundef !12 ; 2 uses
  %i.bk = load ptr, ptr %i.e, align 8, !dbg !136619, !alias.scope !136542, !noalias !136539, !nonnull !12, !noundef !12 ; 4 uses
  %i.bl = load i64, ptr %i.f, align 8, !dbg !136639, !alias.scope !136542, !noalias !136539, !noundef !12 ; 4 uses
  %i.bm = icmp ult i64 %i.bj, %i.bl, !dbg !136640
  br i1 %i.bm, label %bb.ab, label %bb.aa, !dbg !136640, !prof !1720

bb.aa:                                            ; preds = %bb.z
  tail call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @181) #53, !dbg !136644, !noalias !136539
  unreachable, !dbg !136644

bb.ab:                                            ; preds = %bb.z
  %i.bn = getelementptr inbounds nuw [144 x i8], ptr %i.bk, i64 %i.bj, !dbg !136646
  %i.bo = load i64, ptr %i.ae, align 16, !dbg !136647, !noalias !136539, !noundef !12 ; 2 uses
  %i.bp = icmp ult i64 %i.bo, %i.bl, !dbg !136649
  br i1 %i.bp, label %bb.ad, label %bb.ac, !dbg !136649, !prof !1720

bb.ac:                                            ; preds = %bb.ab
  tail call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @181) #53, !dbg !136655, !noalias !136539
  unreachable, !dbg !136655

bb.ad:                                            ; preds = %bb.ab
  %i.bq = getelementptr inbounds nuw [144 x i8], ptr %i.bk, i64 %i.bo, !dbg !136657
  %i.br = getelementptr inbounds nuw i8, ptr %i.ac, i64 8, !dbg !136658 ; 2 uses
  %i.bs = load i64, ptr %i.br, align 8, !dbg !136658, !noalias !136539, !noundef !12 ; 2 uses
  %i.bt = icmp ult i64 %i.bs, %i.bl, !dbg !136660
  br i1 %i.bt, label %bb.af, label %bb.ae, !dbg !136660, !prof !1720

bb.ae:                                            ; preds = %bb.ad
  tail call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @181) #53, !dbg !136666, !noalias !136539
  unreachable, !dbg !136666

bb.af:                                            ; preds = %bb.ad
  %i.bu = getelementptr inbounds nuw [144 x i8], ptr %i.bk, i64 %i.bs, !dbg !136668
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ae, i64 8, !dbg !136669
  %i.bw = load i64, ptr %i.bv, align 8, !dbg !136669, !noalias !136539, !noundef !12 ; 2 uses
  %i.bx = icmp ult i64 %i.bw, %i.bl, !dbg !136671
  br i1 %i.bx, label %bb.ah, label %bb.ag, !dbg !136671, !prof !1720

bb.ag:                                            ; preds = %bb.af
  tail call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @181) #53, !dbg !136677, !noalias !136539
  unreachable, !dbg !136677

bb.ah:                                            ; preds = %bb.af
  %i.by = tail call noundef zeroext i1 @_RNvMNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr8equalityNtB4_5AExpr16is_expr_equal_to(ptr noundef nonnull align 16 %i.bn, ptr noundef nonnull align 16 %i.bq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2), !dbg !136679, !noalias !136539
  br i1 %i.by, label %bb.ai, label %.thread.i, !dbg !136681

bb.ai:                                            ; preds = %bb.ah
  %i.bz = getelementptr inbounds nuw [144 x i8], ptr %i.bk, i64 %i.bw, !dbg !136682
  %i.ca = tail call noundef zeroext i1 @_RNvMNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr8equalityNtB4_5AExpr16is_expr_equal_to(ptr noundef nonnull align 16 %i.bu, ptr noundef nonnull align 16 %i.bz, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2), !dbg !136683, !noalias !136539
  br i1 %i.ca, label %bb.aj, label %.thread.i, !dbg !136684

bb.aj:                                            ; preds = %bb.ai
  %i.cb = load i64, ptr %i.ac, align 16, !dbg !136685, !noalias !136539, !noundef !12
  %i.cc = tail call fastcc noundef zeroext i1 @_RNvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer13simplify_expr5arity15is_safe_to_drop(i64 noundef %i.cb, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2, i1 noundef zeroext %i.w), !dbg !136686, !noalias !136539
  br i1 %i.cc, label %bb.ak, label %.thread.i, !dbg !136686

bb.ak:                                            ; preds = %bb.aj
  %i.cd = load i64, ptr %i.br, align 8, !dbg !136687, !noalias !136539, !noundef !12
  %i.ce = tail call fastcc noundef zeroext i1 @_RNvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer13simplify_expr5arity15is_safe_to_drop(i64 noundef %i.cd, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2, i1 noundef zeroext %i.w), !dbg !136688, !noalias !136539
  br i1 %i.ce, label %bb.al, label %.thread.i, !dbg !136688

bb.al:                                            ; preds = %bb.ak
  store i8 0, ptr %i.d, align 16, !dbg !136689, !alias.scope !136539, !noalias !136542
  %.sroa.034.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 48, !dbg !136689
  store i8 1, ptr %.sroa.034.sroa.5.0..sroa_idx.i, align 16, !dbg !136689, !alias.scope !136539, !noalias !136542
  %.sroa.034.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 49, !dbg !136689
  store i8 0, ptr %.sroa.034.sroa.6.0..sroa_idx.i, align 1, !dbg !136689, !alias.scope !136539, !noalias !136542
  %.sroa.435.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 112, !dbg !136689
  store i64 -9223372036854775804, ptr %.sroa.435.0..sroa_idx.i, align 16, !dbg !136689, !alias.scope !136539, !noalias !136542
  br label %_RNvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer13simplify_expr5arity15simplify_binary.exit, !dbg !136593

bb.am:                                            ; preds = %bb.v, %bb.u
  store i8 0, ptr %i.d, align 16, !dbg !136690, !alias.scope !136539, !noalias !136542
  %.sroa.031.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 48, !dbg !136690
  store i8 1, ptr %.sroa.031.sroa.5.0..sroa_idx.i, align 16, !dbg !136690, !alias.scope !136539, !noalias !136542
  %.sroa.031.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 49, !dbg !136690
  store i8 0, ptr %.sroa.031.sroa.6.0..sroa_idx.i, align 1, !dbg !136690, !alias.scope !136539, !noalias !136542
  %.sroa.432.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 112, !dbg !136690
  store i64 -9223372036854775804, ptr %.sroa.432.0..sroa_idx.i, align 16, !dbg !136690, !alias.scope !136539, !noalias !136542
  br label %_RNvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer13simplify_expr5arity15simplify_binary.exit, !dbg !136593

bb.an:                                            ; preds = %bb.f
  tail call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @181) #53, !dbg !136691, !noalias !136567
  unreachable, !dbg !136691

bb.ao:                                            ; preds = %bb.f
  %i.cf = getelementptr inbounds nuw [144 x i8], ptr %i.i, i64 %i.q, !dbg !136693 ; 4 uses
  %i.cg = icmp ult i64 %i.u, %i.g, !dbg !136694
  br i1 %i.cg, label %bb.aq, label %bb.ap, !dbg !136694, !prof !1720

bb.ap:                                            ; preds = %bb.ao
  tail call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @181) #53, !dbg !136701, !noalias !136567
  unreachable, !dbg !136701

bb.aq:                                            ; preds = %bb.ao
  %i.ch = getelementptr inbounds nuw [144 x i8], ptr %i.i, i64 %i.u, !dbg !136703 ; 4 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 112, !dbg !136704 ; 2 uses
  %i.cj = load i64, ptr %i.ci, align 16, !dbg !136704, !range !42867, !noalias !136567, !noundef !12 ; 2 uses
  %i.ck = icmp ne i64 %i.cj, -9223372036854775791, !dbg !136704
  tail call void @llvm.assume(i1 %i.ck), !dbg !136704
  %i.cl = icmp eq i64 %i.cj, -9223372036854775804, !dbg !136708
  br i1 %i.cl, label %bb.ar, label %bb.as, !dbg !136708

bb.ar:                                            ; preds = %bb.aq
  %i.cm = tail call noundef i8 @_RNvMs7_NtNtCsfcROwRM8ZtH_11polars_plan5plans3litNtB5_12LiteralValue4bool(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(96) %i.cf), !dbg !136709, !noalias !136567
  %or.cond11.not.not.i = icmp ne i8 %i.cm, 0, !dbg !136710
  %or.cond11.not.not.i.a = icmp eq i32 %i.x, 0, !dbg !136710
  %brmerge86.i = or i1 %or.cond11.not.not.i.a, %or.cond11.not.not.i, !dbg !136710
  br i1 %brmerge86.i, label %bb.as, label %bb.at, !dbg !136710

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ch, i64 112, !dbg !136712 ; 2 uses
  %i.co = load i64, ptr %i.cn, align 16, !dbg !136712, !range !42867, !noalias !136567, !noundef !12 ; 2 uses
  %i.cp = icmp ne i64 %i.co, -9223372036854775791, !dbg !136712
  tail call void @llvm.assume(i1 %i.cp), !dbg !136712
  %i.cq = icmp eq i64 %i.co, -9223372036854775804, !dbg !136715
  br i1 %i.cq, label %bb.au, label %bb.av, !dbg !136715

bb.at:                                            ; preds = %bb.ar
  call fastcc void @_RNvXs5_NtNtCsfcROwRM8ZtH_11polars_plan5plans5aexprNtB5_5AExprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef nonnull align 16 captures(none) dereferenceable(144) %i.d, ptr noundef nonnull align 16 %i.ch) #54, !dbg !136716, !noalias !136542
  br label %_RNvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer13simplify_expr5arity15simplify_binary.exit, !dbg !136717

bb.au:                                            ; preds = %bb.as
  %i.cr = tail call noundef i8 @_RNvMs7_NtNtCsfcROwRM8ZtH_11polars_plan5plans3litNtB5_12LiteralValue4bool(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(96) %i.ch), !dbg !136719, !noalias !136567
  %or.cond14.not.not.i = icmp eq i8 %i.cr, 0, !dbg !136720
  br i1 %or.cond14.not.not.i, label %bb.aw, label %bb.av, !dbg !136720

bb.av:                                            ; preds = %bb.au, %bb.as
  %i.cs = tail call noundef zeroext i1 @_RNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr6scalar12is_scalar_ae(i64 noundef %i.q, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2), !dbg !136722, !noalias !136539
  %i.ct = or i1 %i.y, %i.cs, !dbg !136723
  br i1 %i.ct, label %bb.ax, label %bb.ay, !dbg !136723

bb.aw:                                            ; preds = %bb.au
  call fastcc void @_RNvXs5_NtNtCsfcROwRM8ZtH_11polars_plan5plans5aexprNtB5_5AExprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef nonnull align 16 captures(none) dereferenceable(144) %i.d, ptr noundef nonnull align 16 %i.cf) #54, !dbg !136724, !noalias !136542
  br label %_RNvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer13simplify_expr5arity15simplify_binary.exit, !dbg !136717

bb.ax:                                            ; preds = %bb.av
  %i.cu = load i64, ptr %i.cn, align 16, !dbg !136725, !range !42867, !noalias !136539, !noundef !12 ; 2 uses
  %i.cv = icmp ne i64 %i.cu, -9223372036854775791, !dbg !136725
  tail call void @llvm.assume(i1 %i.cv), !dbg !136725
  %i.cw = icmp eq i64 %i.cu, -9223372036854775804, !dbg !136728
  br i1 %i.cw, label %bb.az, label %bb.ay, !dbg !136728

bb.ay:                                            ; preds = %bb.az, %bb.ax, %bb.av
  %i.cx = load i64, ptr %i.ci, align 16, !dbg !136729, !range !42867, !noalias !136539, !noundef !12 ; 2 uses
  %i.cy = icmp ne i64 %i.cx, -9223372036854775791, !dbg !136729
  tail call void @llvm.assume(i1 %i.cy), !dbg !136729
  %i.cz = icmp eq i64 %i.cx, -9223372036854775804, !dbg !136732
  br i1 %i.cz, label %bb.bb, label %.thread.i, !dbg !136732

bb.az:                                            ; preds = %bb.ax
  %i.da = tail call noundef i8 @_RNvMs7_NtNtCsfcROwRM8ZtH_11polars_plan5plans3litNtB5_12LiteralValue4bool(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(96) %i.ch), !dbg !136733, !noalias !136539
  %i.db = and i8 %i.da, 1, !dbg !136734
  %or.cond17.not.i = icmp eq i8 %i.db, 0, !dbg !136734
  br i1 %or.cond17.not.i, label %bb.ay, label %bb.ba, !dbg !136734

bb.ba:                                            ; preds = %bb.az
  store i8 0, ptr %i.d, align 16, !dbg !136736, !alias.scope !136539, !noalias !136542
  %.sroa.043.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 48, !dbg !136736
  store i8 1, ptr %.sroa.043.sroa.5.0..sroa_idx.i, align 16, !dbg !136736, !alias.scope !136539, !noalias !136542
  %.sroa.043.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 49, !dbg !136736
  store i8 1, ptr %.sroa.043.sroa.6.0..sroa_idx.i, align 1, !dbg !136736, !alias.scope !136539, !noalias !136542
  %.sroa.444.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 112, !dbg !136736
  store i64 -9223372036854775804, ptr %.sroa.444.0..sroa_idx.i, align 16, !dbg !136736, !alias.scope !136539, !noalias !136542
  br label %_RNvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer13simplify_expr5arity15simplify_binary.exit, !dbg !136717

bb.bb:                                            ; preds = %bb.ay
  %i.dc = tail call noundef i8 @_RNvMs7_NtNtCsfcROwRM8ZtH_11polars_plan5plans3litNtB5_12LiteralValue4bool(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(96) %i.cf), !dbg !136737, !noalias !136539
  %i.dd = and i8 %i.dc, 1, !dbg !136738
  %or.cond20.not.i = icmp eq i8 %i.dd, 0, !dbg !136738
  br i1 %or.cond20.not.i, label %.thread.i, label %bb.bc, !dbg !136738

bb.bc:                                            ; preds = %bb.bb
  %i.de = tail call noundef zeroext i1 @_RNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr6scalar12is_scalar_ae(i64 noundef %i.u, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2), !dbg !136740, !noalias !136539
  %i.df = or i1 %i.y, %i.de, !dbg !136741
  br i1 %i.df, label %bb.bd, label %.thread.i, !dbg !136741

bb.bd:                                            ; preds = %bb.bc
  store i8 0, ptr %i.d, align 16, !dbg !136742, !alias.scope !136539, !noalias !136542
  %.sroa.048.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 48, !dbg !136742
  store i8 1, ptr %.sroa.048.sroa.5.0..sroa_idx.i, align 16, !dbg !136742, !alias.scope !136539, !noalias !136542
  %.sroa.048.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 49, !dbg !136742
  store i8 1, ptr %.sroa.048.sroa.6.0..sroa_idx.i, align 1, !dbg !136742, !alias.scope !136539, !noalias !136542
  %.sroa.449.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 112, !dbg !136742
  store i64 -9223372036854775804, ptr %.sroa.449.0..sroa_idx.i, align 16, !dbg !136742, !alias.scope !136539, !noalias !136542
  br label %_RNvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer13simplify_expr5arity15simplify_binary.exit, !dbg !136717

_RNvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer13simplify_expr5arity15simplify_binary.exit: ; preds = %.thread.i, %bb.m, %bb.p, %bb.t, %bb.al, %bb.am, %bb.at, %bb.aw, %bb.ba, %bb.bd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %0, ptr noundef nonnull align 16 dereferenceable(144) %i.d, i64 144, i1 false), !dbg !136743
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !136744
  br label %bb.bw, !dbg !136745

bb.be:                                            ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !136747
  %i.dg = load i64, ptr %i.j, align 16, !dbg !136749, !noundef !12 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.j, i64 8, !dbg !136750
  %i.di = load i64, ptr %i.dh, align 8, !dbg !136750, !noundef !12 ; 6 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.j, i64 16, !dbg !136751
  %i.dk = load i64, ptr %i.dj, align 16, !dbg !136751, !noundef !12 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !136752), !dbg !136747
  %i.dl = icmp ult i64 %i.dg, %i.g, !dbg !136755
  br i1 %i.dl, label %bb.bg, label %bb.bf, !dbg !136755, !prof !1720

bb.bf:                                            ; preds = %bb.be
  tail call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @181) #53, !dbg !136764, !noalias !136767
  unreachable, !dbg !136764

bb.bg:                                            ; preds = %bb.be
  %i.dm = getelementptr inbounds nuw [144 x i8], ptr %i.i, i64 %i.dg, !dbg !136769 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 112, !dbg !136770
  %i.do = load i64, ptr %i.dn, align 16, !dbg !136770, !range !42867, !noalias !136767, !noundef !12 ; 2 uses
  %i.dp = icmp ne i64 %i.do, -9223372036854775791, !dbg !136770
  tail call void @llvm.assume(i1 %i.dp), !dbg !136770
  %i.dq = icmp eq i64 %i.do, -9223372036854775804, !dbg !136773
  br i1 %i.dq, label %bb.bh, label %bb.bi, !dbg !136773

bb.bh:                                            ; preds = %bb.bg
  %i.dr = tail call noundef i8 @_RNvMs7_NtNtCsfcROwRM8ZtH_11polars_plan5plans3litNtB5_12LiteralValue4bool(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(96) %i.dm), !dbg !136774, !noalias !136767
  switch i8 %i.dr, label %bb.bk [
    i8 2, label %bb.bi
    i8 0, label %bb.bj
  ], !dbg !136775

bb.bi:                                            ; preds = %bb.br, %bb.bq, %bb.bm, %bb.bl, %bb.bk, %bb.bj, %bb.bh, %bb.bg
  %i.ds = getelementptr inbounds nuw i8, ptr %i.c, i64 112, !dbg !136776
  store i64 -9223372036854775786, ptr %i.ds, align 16, !dbg !136776, !alias.scope !136752, !noalias !136777
  br label %_RNvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer13simplify_expr5arity16simplify_ternary.exit, !dbg !136778

bb.bj:                                            ; preds = %bb.bh
  %i.dt = tail call noundef zeroext i1 @_RNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr6scalar12is_scalar_ae(i64 noundef %i.di, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2), !dbg !136779, !noalias !136752
  %i.du = tail call noundef zeroext i1 @_RNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr6scalar12is_scalar_ae(i64 noundef %i.dk, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2), !dbg !136780, !noalias !136752
  %i.dv = xor i1 %i.dt, %i.du, !dbg !136782
  br i1 %i.dv, label %bb.bi, label %bb.bl, !dbg !136782

bb.bk:                                            ; preds = %bb.bh
  %i.dw = tail call noundef zeroext i1 @_RNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr6scalar12is_scalar_ae(i64 noundef %i.di, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2), !dbg !136784, !noalias !136752
  %i.dx = tail call noundef zeroext i1 @_RNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr6scalar12is_scalar_ae(i64 noundef %i.dk, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2), !dbg !136785, !noalias !136752
  %i.dy = xor i1 %i.dw, %i.dx, !dbg !136787
  br i1 %i.dy, label %bb.bi, label %bb.bq, !dbg !136787

bb.bl:                                            ; preds = %bb.bj
  %i.dz = tail call noundef zeroext i1 @_RNvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr10properties7general18is_elementwise_rec(i64 noundef %i.di, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2), !dbg !136789, !noalias !136752
  br i1 %i.dz, label %bb.bm, label %bb.bi, !dbg !136789

bb.bm:                                            ; preds = %bb.bl
  %i.ea = tail call noundef zeroext i1 @_RNvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr10properties7general18is_elementwise_rec(i64 noundef %i.dk, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2), !dbg !136790, !noalias !136752
  br i1 %i.ea, label %bb.bn, label %bb.bi, !dbg !136790

bb.bn:                                            ; preds = %bb.bm
  %i.eb = icmp ult i64 %i.dk, %i.g, !dbg !136791
  br i1 %i.eb, label %bb.bp, label %bb.bo, !dbg !136791, !prof !1720

bb.bo:                                            ; preds = %bb.bn
  tail call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @181) #53, !dbg !136797, !noalias !136752
  unreachable, !dbg !136797

bb.bp:                                            ; preds = %bb.bn
  %i.ec = getelementptr inbounds nuw [144 x i8], ptr %i.i, i64 %i.dk, !dbg !136799
  call fastcc void @_RNvXs5_NtNtCsfcROwRM8ZtH_11polars_plan5plans5aexprNtB5_5AExprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef nonnull align 16 captures(none) dereferenceable(144) %i.c, ptr noundef nonnull align 16 %i.ec) #54, !dbg !136800
  br label %_RNvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer13simplify_expr5arity16simplify_ternary.exit, !dbg !136801

bb.bq:                                            ; preds = %bb.bk
  %i.ed = tail call noundef zeroext i1 @_RNvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr10properties7general18is_elementwise_rec(i64 noundef %i.di, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2), !dbg !136803, !noalias !136752
  br i1 %i.ed, label %bb.br, label %bb.bi, !dbg !136803

bb.br:                                            ; preds = %bb.bq
  %i.ee = tail call noundef zeroext i1 @_RNvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr10properties7general18is_elementwise_rec(i64 noundef %i.dk, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2), !dbg !136804, !noalias !136752
  br i1 %i.ee, label %bb.bs, label %bb.bi, !dbg !136804

bb.bs:                                            ; preds = %bb.br
  %i.ef = icmp ult i64 %i.di, %i.g, !dbg !136805
  br i1 %i.ef, label %bb.bu, label %bb.bt, !dbg !136805, !prof !1720

bb.bt:                                            ; preds = %bb.bs
  tail call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @181) #53, !dbg !136811, !noalias !136752
  unreachable, !dbg !136811

bb.bu:                                            ; preds = %bb.bs
  %i.eg = getelementptr inbounds nuw [144 x i8], ptr %i.i, i64 %i.di, !dbg !136813
  call fastcc void @_RNvXs5_NtNtCsfcROwRM8ZtH_11polars_plan5plans5aexprNtB5_5AExprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef nonnull align 16 captures(none) dereferenceable(144) %i.c, ptr noundef nonnull align 16 %i.eg) #54, !dbg !136814
  br label %_RNvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer13simplify_expr5arity16simplify_ternary.exit, !dbg !136801

_RNvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer13simplify_expr5arity16simplify_ternary.exit: ; preds = %bb.bi, %bb.bp, %bb.bu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %0, ptr noundef nonnull align 16 dereferenceable(144) %i.c, i64 144, i1 false), !dbg !136815
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !136816
  br label %bb.bw, !dbg !136745

bb.bv:                                            ; preds = %bb.c
  %i.eh = load i8, ptr %i.j, align 16, !dbg !136530, !range !46823, !noundef !12
  switch i8 %i.eh, label %_RNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer13simplify_expr11eval_negate.exit [
    i8 12, label %bb.bx
    i8 111, label %bb.by
  ], !dbg !136532

bb.bw:                                            ; preds = %_RNvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer13simplify_expr5arity15simplify_binary.exit, %_RNvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer13simplify_expr5arity16simplify_ternary.exit, %_RNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer13simplify_expr11eval_negate.exit
  ret void, !dbg !136817

bb.bx:                                            ; preds = %bb.bv
  %i.ei = getelementptr inbounds nuw i8, ptr %i.j, i64 128, !dbg !136818
  %i.ej = load i64, ptr %i.ei, align 16, !dbg !136818, !noundef !12 ; 2 uses
  %i.ek = icmp ult i64 %i.ej, 82351536043346213, !dbg !136821
  tail call void @llvm.assume(i1 %i.ek), !dbg !136823
  %i.el = icmp eq i64 %i.ej, 1, !dbg !136824
  br i1 %i.el, label %bb.bz, label %_RNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer13simplify_expr11eval_negate.exit, !dbg !136824

bb.by:                                            ; preds = %bb.bv
  %i.em = getelementptr inbounds nuw i8, ptr %i.j, i64 8, !dbg !136825
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !136826
  call void @_RNvMs6_NtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer18predicate_pushdown7dynamicNtB5_18DynamicPredWeakRef2id(ptr noalias noundef nonnull sret([17 x i8]) align 1 captures(none) dereferenceable(17) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.em), !dbg !136827
end_hunk_0
