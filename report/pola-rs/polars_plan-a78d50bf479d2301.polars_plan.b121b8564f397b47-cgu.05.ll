Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_plan-a78d50bf479d2301.polars_plan.b121b8564f397b47-cgu.05?download=true
inline.NumInlined: 10337
inline.NumDeleted: 5105
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_RINvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions3dsl25validate_columns_in_inputRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtB2f_7flatten7FlatMapNtNtB6_8iterator9AExprIterINtNtB2j_6option6OptionNtNtB6_7expr_ir10ColumnNodeEFTNtNtB1p_5arena4NodeRNtNtB6_5aexpr5AExprEEB3N_ENCNvNtB8_5utils24aexpr_to_leaf_names_iter0EEB8_:bb.a
  %lpad.loopexit42 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp41:                             ; preds = %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgZ49sUHp3tW_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfcROwRM8ZtH_11polars_plan.exit, %bb.r
  %lpad.loopexit.split-lp43 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.m:                                             ; preds = %bb.k, %bb.j
  %.sroa.01.0.i.i = phi i64 [ %i.ao, %bb.k ], [ %.sroa.0.0.i.i.i, %bb.j ], !dbg !29244
  %.sroa.0.0.i.i = phi ptr [ %i.am, %bb.k ], [ %i.aa, %bb.j ], !dbg !29245
  %i.ap = invoke noundef align 16 ptr @_RINvMs3_NtCse4dvU5uQ85g_8indexmap3mapINtB6_8IndexMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE3geteECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i.i, i64 noundef %.sroa.01.0.i.i)
          to label %bb.n unwind label %.loopexit40, !dbg !29246

bb.n:                                             ; preds = %bb.m
  %.not15 = icmp eq ptr %i.ap, null, !dbg !29247
  br i1 %.not15, label %bb.o, label %.backedge, !dbg !29248

bb.o:                                             ; preds = %bb.n
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aa, i64 23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !29249
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !29250
  %i.ar = load i8, ptr %i.aq, align 1, !dbg !29251, !range !3542, !alias.scope !29200, !noundef !3394 ; 2 uses
  %i.as = icmp ugt i8 %i.ar, -41, !dbg !29252
  br i1 %i.as, label %bb.q, label %bb.p, !dbg !29252

bb.p:                                             ; preds = %bb.o
  %i.at = add i8 %i.ar, 64, !dbg !29253
  %i.au = call i8 @llvm.umin.i8(i8 %i.at, i8 24), !dbg !29254
  %.sroa.0.0.i.i.i25 = zext nneg i8 %i.au to i64, !dbg !29254
  br label %bb.r, !dbg !29255

bb.q:                                             ; preds = %bb.o
  %i.av = load ptr, ptr %i.aa, align 8, !dbg !29256, !alias.scope !29200, !noundef !3394
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aa, i64 8, !dbg !29257
  %i.ax = load i64, ptr %i.aw, align 8, !dbg !29257, !alias.scope !29200, !noundef !3394
  br label %bb.r, !dbg !29258

bb.r:                                             ; preds = %bb.q, %bb.p
  %.sroa.01.0.i.i26 = phi i64 [ %i.ax, %bb.q ], [ %.sroa.0.0.i.i.i25, %bb.p ], !dbg !29259
  %.sroa.0.0.i.i27 = phi ptr [ %i.av, %bb.q ], [ %i.aa, %bb.p ], !dbg !29260
  store ptr %.sroa.0.0.i.i27, ptr %i.b, align 8, !dbg !29250
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !29250
  store i64 %.sroa.01.0.i.i26, ptr %i.ay, align 8, !dbg !29250
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !29261
  store ptr %i.f, ptr %i.a, align 8, !dbg !29261
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !29261
  store ptr @_RNvXs1i_NtCscgRAwXFJnXP_4core3fmtReNtB6_7Display3fmtCsfcROwRM8ZtH_11polars_plan, ptr %.sroa.44.0..sroa_idx, align 8, !dbg !29261
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !29261
  store ptr %i.b, ptr %i.az, align 8, !dbg !29261
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !29261
  store ptr @_RNvXs1i_NtCscgRAwXFJnXP_4core3fmtReNtB6_7Display3fmtCsfcROwRM8ZtH_11polars_plan, ptr %.sroa.48.0..sroa_idx, align 8, !dbg !29261
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 32, !dbg !29261
  store ptr %i.g, ptr %i.ba, align 8, !dbg !29261
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40, !dbg !29261
  store ptr @_RNvXs1g_NtCscgRAwXFJnXP_4core3fmtRINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuENtB6_5Debug3fmtCsfcROwRM8ZtH_11polars_plan, ptr %.sroa.412.0..sroa_idx, align 8, !dbg !29261
  invoke void @_RNvNvNtCsgZ49sUHp3tW_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noundef nonnull @24, ptr noundef nonnull %i.a)
          to label %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgZ49sUHp3tW_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfcROwRM8ZtH_11polars_plan.exit unwind label %.loopexit.split-lp41, !dbg !29262

_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgZ49sUHp3tW_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfcROwRM8ZtH_11polars_plan.exit: ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !29249
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !29249
  invoke void @_RNvXs_CsgjwxzEoLG5s_12polars_errorNtB4_9ErrStringINtNtCscgRAwXFJnXP_4core7convert4FromNtNtCsgZ49sUHp3tW_5alloc6string6StringE4fromCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26)
          to label %bb.s unwind label %.loopexit.split-lp41, !dbg !29263

bb.s:                                             ; preds = %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgZ49sUHp3tW_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfcROwRM8ZtH_11polars_plan.exit
  %.sroa.433.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !29249
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.433.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !dbg !29249
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !29249
  store i64 1, ptr %0, align 8, !dbg !29249
  %i.bb = load ptr, ptr %i.i, align 8, !dbg !29264, !alias.scope !29206, !noundef !3394
  %i.bc = icmp eq ptr %i.bb, null, !dbg !29264
  br i1 %i.bc, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3map3MapINtNtBL_7flatten7FlatMapNtNtNtCsfcROwRM8ZtH_11polars_plan5plans8iterator9AExprIterINtNtB4_6option6OptionNtNtB1G_7expr_ir10ColumnNodeEFTNtNtCs2mZqlW55729_12polars_utils5arena4NodeRNtNtB1G_5aexpr5AExprEEB2y_ENCNvNtB1I_5utils24aexpr_to_leaf_names_iter0EEB1I_.exit30, label %bb.t, !dbg !29264

bb.t:                                             ; preds = %bb.s
  %i.bd = getelementptr inbounds nuw i8, ptr %i.e, i64 48, !dbg !29265
  call void @_RNvXs4_NtCs2mZqlW55729_12polars_utils7idx_vecINtB5_7UnitVecNtNtB7_5arena4NodeENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bd), !dbg !29266
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3map3MapINtNtBL_7flatten7FlatMapNtNtNtCsfcROwRM8ZtH_11polars_plan5plans8iterator9AExprIterINtNtB4_6option6OptionNtNtB1G_7expr_ir10ColumnNodeEFTNtNtCs2mZqlW55729_12polars_utils5arena4NodeRNtNtB1G_5aexpr5AExprEEB2y_ENCNvNtB1I_5utils24aexpr_to_leaf_names_iter0EEB1I_.exit30, !dbg !29264

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3map3MapINtNtBL_7flatten7FlatMapNtNtNtCsfcROwRM8ZtH_11polars_plan5plans8iterator9AExprIterINtNtB4_6option6OptionNtNtB1G_7expr_ir10ColumnNodeEFTNtNtCs2mZqlW55729_12polars_utils5arena4NodeRNtNtB1G_5aexpr5AExprEEB2y_ENCNvNtB1I_5utils24aexpr_to_leaf_names_iter0EEB1I_.exit30: ; preds = %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !29240
  br label %bb.l, !dbg !29242

bb.u:                                             ; preds = %bb.i
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #40, !dbg !29267
  unreachable, !dbg !29267

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3map3MapINtNtBL_7flatten7FlatMapNtNtNtCsfcROwRM8ZtH_11polars_plan5plans8iterator9AExprIterINtNtB4_6option6OptionNtNtB1G_7expr_ir10ColumnNodeEFTNtNtCs2mZqlW55729_12polars_utils5arena4NodeRNtNtB1G_5aexpr5AExprEEB2y_ENCNvNtB1I_5utils24aexpr_to_leaf_names_iter0EEB1I_.exit: ; preds = %.body, %bb.i
  resume { ptr, i32 } %.pn.ph, !dbg !29267
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions3dsl25validate_columns_in_inputRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrRINtNtCsgZ49sUHp3tW_5alloc3vec3VecB1l_EEB8_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !29268 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 9 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 2 uses
  %i.d = alloca [16 x i8], align 8                ; 3 uses
  %i.e = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %2, ptr %i.e, align 8
  store ptr %3, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %4, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !29323
  %.val20 = load ptr, ptr %i.g, align 8, !dbg !29323, !nonnull !3394, !noundef !3394 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !29323
  %.val21 = load i64, ptr %i.h, align 8, !dbg !29323, !noundef !3394 ; 2 uses
  %.idx = mul nuw nsw i64 %.val21, 24, !dbg !29324
  %i.i = getelementptr inbounds nuw i8, ptr %.val20, i64 %.idx, !dbg !29324
  %i.j = icmp eq i64 %.val21, 0, !dbg !29325
  br i1 %i.j, label %._crit_edge, label %.lr.ph, !dbg !29326

bb.b:                                             ; preds = %_RNvXNtCscgRAwXFJnXP_4core7convertRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrINtB2_5AsRefeE6as_refCsfcROwRM8ZtH_11polars_plan.exit
  %i.k = icmp eq ptr %i.l, %i.i, !dbg !29325
  br i1 %i.k, label %._crit_edge, label %.lr.ph, !dbg !29326

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.040 = phi ptr [ %i.l, %bb.b ], [ %.val20, %bb.a ] ; 9 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.040, i64 24, !dbg !29327 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.040, i64 23, !dbg !29328
  %i.n = load i8, ptr %i.m, align 1, !dbg !29328, !range !3542, !alias.scope !29312, !noundef !3394 ; 2 uses
  %i.o = icmp ugt i8 %i.n, -41, !dbg !29329
  br i1 %i.o, label %bb.d, label %bb.c, !dbg !29329

bb.c:                                             ; preds = %.lr.ph
  %i.p = add i8 %i.n, 64, !dbg !29330
  %i.q = tail call i8 @llvm.umin.i8(i8 %i.p, i8 24), !dbg !29331
  %.sroa.0.0.i.i.i = zext nneg i8 %i.q to i64, !dbg !29331
  br label %_RNvXNtCscgRAwXFJnXP_4core7convertRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrINtB2_5AsRefeE6as_refCsfcROwRM8ZtH_11polars_plan.exit, !dbg !29332

bb.d:                                             ; preds = %.lr.ph
  %i.r = load ptr, ptr %.sroa.0.040, align 8, !dbg !29333, !alias.scope !29312, !noundef !3394
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.040, i64 8, !dbg !29334
  %i.t = load i64, ptr %i.s, align 8, !dbg !29334, !alias.scope !29312, !noundef !3394
  br label %_RNvXNtCscgRAwXFJnXP_4core7convertRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrINtB2_5AsRefeE6as_refCsfcROwRM8ZtH_11polars_plan.exit, !dbg !29335

_RNvXNtCscgRAwXFJnXP_4core7convertRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrINtB2_5AsRefeE6as_refCsfcROwRM8ZtH_11polars_plan.exit: ; preds = %bb.c, %bb.d
  %.sroa.01.0.i.i = phi i64 [ %i.t, %bb.d ], [ %.sroa.0.0.i.i.i, %bb.c ], !dbg !29336
  %.sroa.0.0.i.i = phi ptr [ %i.r, %bb.d ], [ %.sroa.0.040, %bb.c ], !dbg !29337
  %i.u = tail call noundef align 16 ptr @_RINvMs3_NtCse4dvU5uQ85g_8indexmap3mapINtB6_8IndexMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE3geteECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i.i, i64 noundef %.sroa.01.0.i.i), !dbg !29338
  %.not15 = icmp eq ptr %i.u, null, !dbg !29339
  br i1 %.not15, label %bb.e, label %bb.b, !dbg !29340

._crit_edge:                                      ; preds = %bb.b, %bb.a, %_RNvXNtCscgRAwXFJnXP_4core7convertRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrINtB2_5AsRefeE6as_refCsfcROwRM8ZtH_11polars_plan.exit25
  %storemerge = phi i64 [ 1, %_RNvXNtCscgRAwXFJnXP_4core7convertRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrINtB2_5AsRefeE6as_refCsfcROwRM8ZtH_11polars_plan.exit25 ], [ 18, %bb.a ], [ 18, %bb.b ], !dbg !29341
  store i64 %storemerge, ptr %0, align 8, !dbg !29341
  ret void, !dbg !29342

bb.e:                                             ; preds = %_RNvXNtCscgRAwXFJnXP_4core7convertRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrINtB2_5AsRefeE6as_refCsfcROwRM8ZtH_11polars_plan.exit
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.040, i64 23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !29343
  %i.w = load i8, ptr %i.v, align 1, !dbg !29344, !range !3542, !alias.scope !29317, !noundef !3394 ; 2 uses
  %i.x = icmp ugt i8 %i.w, -41, !dbg !29345
  br i1 %i.x, label %bb.g, label %bb.f, !dbg !29345

bb.f:                                             ; preds = %bb.e
  %i.y = add i8 %i.w, 64, !dbg !29346
  %i.z = tail call i8 @llvm.umin.i8(i8 %i.y, i8 24), !dbg !29347
  %.sroa.0.0.i.i.i22 = zext nneg i8 %i.z to i64, !dbg !29347
  br label %_RNvXNtCscgRAwXFJnXP_4core7convertRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrINtB2_5AsRefeE6as_refCsfcROwRM8ZtH_11polars_plan.exit25, !dbg !29348

bb.g:                                             ; preds = %bb.e
  %i.aa = load ptr, ptr %.sroa.0.040, align 8, !dbg !29349, !alias.scope !29317, !noundef !3394
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.040, i64 8, !dbg !29350
  %i.ac = load i64, ptr %i.ab, align 8, !dbg !29350, !alias.scope !29317, !noundef !3394
  br label %_RNvXNtCscgRAwXFJnXP_4core7convertRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrINtB2_5AsRefeE6as_refCsfcROwRM8ZtH_11polars_plan.exit25, !dbg !29351

_RNvXNtCscgRAwXFJnXP_4core7convertRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrINtB2_5AsRefeE6as_refCsfcROwRM8ZtH_11polars_plan.exit25: ; preds = %bb.f, %bb.g
  %.sroa.01.0.i.i23 = phi i64 [ %i.ac, %bb.g ], [ %.sroa.0.0.i.i.i22, %bb.f ], !dbg !29352
  %.sroa.0.0.i.i24 = phi ptr [ %i.aa, %bb.g ], [ %.sroa.0.040, %bb.f ], !dbg !29353
  store ptr %.sroa.0.0.i.i24, ptr %i.b, align 8, !dbg !29343
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !29343
  store i64 %.sroa.01.0.i.i23, ptr %i.ad, align 8, !dbg !29343
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !29354
  store ptr %i.d, ptr %i.a, align 8, !dbg !29354
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !29354
  store ptr @_RNvXs1i_NtCscgRAwXFJnXP_4core3fmtReNtB6_7Display3fmtCsfcROwRM8ZtH_11polars_plan, ptr %.sroa.44.0..sroa_idx, align 8, !dbg !29354
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !29354
  store ptr %i.b, ptr %i.ae, align 8, !dbg !29354
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !29354
  store ptr @_RNvXs1i_NtCscgRAwXFJnXP_4core3fmtReNtB6_7Display3fmtCsfcROwRM8ZtH_11polars_plan, ptr %.sroa.48.0..sroa_idx, align 8, !dbg !29354
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 32, !dbg !29354
  store ptr %i.e, ptr %i.af, align 8, !dbg !29354
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40, !dbg !29354
  store ptr @_RNvXs1g_NtCscgRAwXFJnXP_4core3fmtRINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuENtB6_5Debug3fmtCsfcROwRM8ZtH_11polars_plan, ptr %.sroa.412.0..sroa_idx, align 8, !dbg !29354
  call void @_RNvNvNtCsgZ49sUHp3tW_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noundef nonnull @24, ptr noundef nonnull %i.a), !dbg !29355
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !29356
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !29356
  %.sroa.429.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !29356
  call void @_RNvXs_CsgjwxzEoLG5s_12polars_errorNtB4_9ErrStringINtNtCscgRAwXFJnXP_4core7convert4FromNtNtCsgZ49sUHp3tW_5alloc6string6StringE4fromCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.429.0..sroa_idx, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26), !dbg !29357
  br label %._crit_edge, !dbg !29358
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer19projection_pushdown18min_dtype_size_colINtNtNtCse4dvU5uQ85g_8indexmap3map4iter4IterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeERB2c_EB8_(ptr noundef nonnull %0, ptr noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !29359 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.5.i.i = alloca ptr, align 8              ; 6 uses
  %.sroa.8.i.i = alloca ptr, align 8              ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !29420
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !29421
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i), !dbg !29421
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i.i), !dbg !29421
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29411), !dbg !29422
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.c = icmp eq ptr %0, %1, !dbg !29423
  br i1 %i.c, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtCse4dvU5uQ85g_8indexmap3map4iter4IterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeENCINvNvNtNtNtB9_6traits8iterator8Iterator10min_by_key3keyTRB1E_RB2t_EjNCINvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer19projection_pushdown18min_dtype_size_colBW_B4m_E0E0EB3x_4nextB4J_.exit.i.i, label %bb.b, !dbg !29424

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !29425
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !29426
  %i.f = load i8, ptr %0, align 16, !dbg !29427, !range !3890, !alias.scope !29412, !noalias !29413, !noundef !3394 ; 2 uses
  switch i8 %i.f, label %bb.d [
    i8 25, label %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator10min_by_key3keyTRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrRNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeEjNCINvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer19projection_pushdown18min_dtype_size_colINtNtNtCse4dvU5uQ85g_8indexmap3map4iter4IterB1j_B29_EB1i_E0E0B3i_.exit.i.i.i
    i8 0, label %bb.c
  ], !dbg !29428

bb.c:                                             ; preds = %bb.b
  br label %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator10min_by_key3keyTRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrRNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeEjNCINvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer19projection_pushdown18min_dtype_size_colINtNtNtCse4dvU5uQ85g_8indexmap3map4iter4IterB1j_B29_EB1i_E0E0B3i_.exit.i.i.i, !dbg !29429

bb.d:                                             ; preds = %bb.b
  %i.g = tail call noundef zeroext i1 @_RNvMs4_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtypeNtB5_8DataType9is_nested(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %0), !dbg !29430, !noalias !29413
  br i1 %i.g, label %.preheader.i.i.i.i.i, label %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator10min_by_key3keyTRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrRNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeEjNCINvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer19projection_pushdown18min_dtype_size_colINtNtNtCse4dvU5uQ85g_8indexmap3map4iter4IterB1j_B29_EB1i_E0E0B3i_.exit.i.i.i, !dbg !29431

.preheader.i.i.i.i.i:                             ; preds = %bb.d, %bb.g
  %i.h = phi i8 [ %.pr.i.i.i.i, %bb.g ], [ %i.f, %bb.d ], !dbg !29432
  %.sroa.03.0.i.i.i.i.i = phi ptr [ %.sroa.03.0.pre.i.i.i.i.i, %bb.g ], [ %0, %bb.d ], !dbg !29433
  %.sroa.01.0.i.i.i.i.i = phi i64 [ %i.k, %bb.g ], [ 0, %bb.d ], !dbg !29434 ; 2 uses
  switch i8 %i.h, label %bb.e [
    i8 22, label %bb.g
    i8 23, label %bb.f
  ], !dbg !29435

bb.e:                                             ; preds = %.preheader.i.i.i.i.i
  %i.i = add i64 %.sroa.01.0.i.i.i.i.i, 32, !dbg !29436
  br label %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator10min_by_key3keyTRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrRNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeEjNCINvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer19projection_pushdown18min_dtype_size_colINtNtNtCse4dvU5uQ85g_8indexmap3map4iter4IterB1j_B29_EB1i_E0E0B3i_.exit.i.i.i, !dbg !29437

bb.f:                                             ; preds = %.preheader.i.i.i.i.i
  br label %bb.g, !dbg !29438

bb.g:                                             ; preds = %bb.f, %.preheader.i.i.i.i.i
  %.sink.i.i.i.i.i = phi i64 [ 8, %bb.f ], [ 16, %.preheader.i.i.i.i.i ]
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i.i.i.i.i, i64 %.sink.i.i.i.i.i, !dbg !29439
  %i.k = add i64 %.sroa.01.0.i.i.i.i.i, 1, !dbg !29440
  %.sroa.03.0.pre.i.i.i.i.i = load ptr, ptr %i.j, align 8, !dbg !29433, !noalias !29413 ; 2 uses
  %.pr.i.i.i.i = load i8, ptr %.sroa.03.0.pre.i.i.i.i.i, align 16, !dbg !29432, !noalias !29413
  br label %.preheader.i.i.i.i.i, !dbg !29441

_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator10min_by_key3keyTRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrRNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeEjNCINvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer19projection_pushdown18min_dtype_size_colINtNtNtCse4dvU5uQ85g_8indexmap3map4iter4IterB1j_B29_EB1i_E0E0B3i_.exit.i.i.i: ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.i.i.i.i.i = phi i64 [ 0, %bb.b ], [ 1, %bb.c ], [ %i.i, %bb.e ], [ 2, %bb.d ], !dbg !29442
  store ptr %i.e, ptr %.sroa.5.i.i, align 8, !dbg !29443, !alias.scope !29411, !noalias !29418
  br label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtCse4dvU5uQ85g_8indexmap3map4iter4IterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeENCINvNvNtNtNtB9_6traits8iterator8Iterator10min_by_key3keyTRB1E_RB2t_EjNCINvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer19projection_pushdown18min_dtype_size_colBW_B4m_E0E0EB3x_4nextB4J_.exit.i.i, !dbg !29444

_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtCse4dvU5uQ85g_8indexmap3map4iter4IterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeENCINvNvNtNtNtB9_6traits8iterator8Iterator10min_by_key3keyTRB1E_RB2t_EjNCINvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer19projection_pushdown18min_dtype_size_colBW_B4m_E0E0EB3x_4nextB4J_.exit.i.i: ; preds = %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator10min_by_key3keyTRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrRNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeEjNCINvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer19projection_pushdown18min_dtype_size_colINtNtNtCse4dvU5uQ85g_8indexmap3map4iter4IterB1j_B29_EB1i_E0E0B3i_.exit.i.i.i, %bb.a
  %.sroa.06.0.i.i = phi i64 [ undef, %bb.a ], [ %.sroa.0.0.i.i.i.i.i, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator10min_by_key3keyTRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrRNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeEjNCINvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer19projection_pushdown18min_dtype_size_colINtNtNtCse4dvU5uQ85g_8indexmap3map4iter4IterB1j_B29_EB1i_E0E0B3i_.exit.i.i.i ], !dbg !29445
  %.sroa.0.0.i.i = phi ptr [ %0, %bb.a ], [ %i.d, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator10min_by_key3keyTRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrRNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeEjNCINvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer19projection_pushdown18min_dtype_size_colINtNtNtCse4dvU5uQ85g_8indexmap3map4iter4IterB1j_B29_EB1i_E0E0B3i_.exit.i.i.i ]
  %.sink6.i.sroa.phi.i.i = phi ptr [ %.sroa.5.i.i, %bb.a ], [ %.sroa.8.i.i, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator10min_by_key3keyTRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrRNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeEjNCINvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer19projection_pushdown18min_dtype_size_colINtNtNtCse4dvU5uQ85g_8indexmap3map4iter4IterB1j_B29_EB1i_E0E0B3i_.exit.i.i.i ]
  %.sink.i.i.i = phi ptr [ null, %bb.a ], [ %0, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator10min_by_key3keyTRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrRNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeEjNCINvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer19projection_pushdown18min_dtype_size_colINtNtNtCse4dvU5uQ85g_8indexmap3map4iter4IterB1j_B29_EB1i_E0E0B3i_.exit.i.i.i ]
  store ptr %.sink.i.i.i, ptr %.sink6.i.sroa.phi.i.i, align 8, !dbg !29446, !alias.scope !29411, !noalias !29418
  %.sroa.5.i.i.0..sroa.5.i.i.0..sroa.5.i.i.0..sroa.5.i.0..sroa.5.i.0..sroa.5.0..sroa.5.0..sroa.5.8..i.i = load ptr, ptr %.sroa.5.i.i, align 8, !dbg !29447, !noalias !29419, !noundef !3394 ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.5.i.i.0..sroa.5.i.i.0..sroa.5.i.i.0..sroa.5.i.0..sroa.5.i.0..sroa.5.0..sroa.5.0..sroa.5.8..i.i, null, !dbg !29447
  br i1 %.not.i.i, label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtCse4dvU5uQ85g_8indexmap3map4iter4IterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeENCINvNvNtNtNtBa_6traits8iterator8Iterator10min_by_key3keyTRB1z_RB2o_EjNCINvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer19projection_pushdown18min_dtype_size_colBR_B4h_E0E0EB3s_6reduceNCINvNvB3s_6min_by4foldTjB4g_EINvB3q_7compareB4g_jEE0EB4E_.exit.thread.i, label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtCse4dvU5uQ85g_8indexmap3map4iter4IterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeENCINvNvNtNtNtBa_6traits8iterator8Iterator10min_by_key3keyTRB1z_RB2o_EjNCINvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer19projection_pushdown18min_dtype_size_colBR_B4h_E0E0EB3s_6reduceNCINvNvB3s_6min_by4foldTjB4g_EINvB3q_7compareB4g_jEE0EB4E_.exit.i, !dbg !29448

_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtCse4dvU5uQ85g_8indexmap3map4iter4IterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeENCINvNvNtNtNtBa_6traits8iterator8Iterator10min_by_key3keyTRB1z_RB2o_EjNCINvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer19projection_pushdown18min_dtype_size_colBR_B4h_E0E0EB3s_6reduceNCINvNvB3s_6min_by4foldTjB4g_EINvB3q_7compareB4g_jEE0EB4E_.exit.thread.i: ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtCse4dvU5uQ85g_8indexmap3map4iter4IterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeENCINvNvNtNtNtB9_6traits8iterator8Iterator10min_by_key3keyTRB1E_RB2t_EjNCINvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer19projection_pushdown18min_dtype_size_colBW_B4m_E0E0EB3x_4nextB4J_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i), !dbg !29449
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i), !dbg !29449
  br label %_RINvYINtNtNtCse4dvU5uQ85g_8indexmap3map4iter4IterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator10min_by_keyjNCINvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer19projection_pushdown18min_dtype_size_colB3_RBL_E0EB3Q_.exit, !dbg !29450

_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtCse4dvU5uQ85g_8indexmap3map4iter4IterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeENCINvNvNtNtNtBa_6traits8iterator8Iterator10min_by_key3keyTRB1z_RB2o_EjNCINvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer19projection_pushdown18min_dtype_size_colBR_B4h_E0E0EB3s_6reduceNCINvNvB3s_6min_by4foldTjB4g_EINvB3q_7compareB4g_jEE0EB4E_.exit.i: ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtCse4dvU5uQ85g_8indexmap3map4iter4IterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeENCINvNvNtNtNtB9_6traits8iterator8Iterator10min_by_key3keyTRB1E_RB2t_EjNCINvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer19projection_pushdown18min_dtype_size_colBW_B4m_E0E0EB3x_4nextB4J_.exit.i.i
  %.sroa.8.i.i.0..sroa.8.i.i.0..sroa.8.i.i.0..sroa.8.i.0..sroa.8.i.0..sroa.8.0..sroa.8.0..sroa.8.0.copyload.i.i = load ptr, ptr %.sroa.8.i.i, align 8, !dbg !29451, !noalias !29419
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i), !dbg !29449
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i), !dbg !29449
  store i64 %.sroa.06.0.i.i, ptr %i.a, align 8, !dbg !29421, !noalias !29419
  %.sroa.510.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !29421
  store ptr %.sroa.5.i.i.0..sroa.5.i.i.0..sroa.5.i.i.0..sroa.5.i.0..sroa.5.i.0..sroa.5.0..sroa.5.0..sroa.5.8..i.i, ptr %.sroa.510.0..sroa_idx.i.i, align 8, !dbg !29421, !noalias !29419
  %.sroa.611.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !29421
  store ptr %.sroa.8.i.i.0..sroa.8.i.i.0..sroa.8.i.i.0..sroa.8.i.0..sroa.8.i.0..sroa.8.0..sroa.8.0..sroa.8.0.copyload.i.i, ptr %.sroa.611.0..sroa_idx.i.i, align 8, !dbg !29421, !noalias !29419
  call void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtCse4dvU5uQ85g_8indexmap3map4iter4IterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeENCINvNvNtNtNtBa_6traits8iterator8Iterator10min_by_key3keyTRB1F_RB2u_EjNCINvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer19projection_pushdown18min_dtype_size_colBX_B4n_E0E0EB3y_4foldTjB4m_ENCINvNvB3y_6min_by4foldB6r_INvB3w_7compareB4m_jEE0EB4K_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull %.sroa.0.0.i.i, ptr noundef nonnull %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !dbg !29452
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !dbg !29453
  br label %_RINvYINtNtNtCse4dvU5uQ85g_8indexmap3map4iter4IterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator10min_by_keyjNCINvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer19projection_pushdown18min_dtype_size_colB3_RBL_E0EB3Q_.exit, !dbg !29450

_RINvYINtNtNtCse4dvU5uQ85g_8indexmap3map4iter4IterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator10min_by_keyjNCINvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer19projection_pushdown18min_dtype_size_colB3_RBL_E0EB3Q_.exit: ; preds = %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtCse4dvU5uQ85g_8indexmap3map4iter4IterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeENCINvNvNtNtNtBa_6traits8iterator8Iterator10min_by_key3keyTRB1z_RB2o_EjNCINvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer19projection_pushdown18min_dtype_size_colBR_B4h_E0E0EB3s_6reduceNCINvNvB3s_6min_by4foldTjB4g_EINvB3q_7compareB4g_jEE0EB4E_.exit.i, %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtCse4dvU5uQ85g_8indexmap3map4iter4IterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeENCINvNvNtNtNtBa_6traits8iterator8Iterator10min_by_key3keyTRB1z_RB2o_EjNCINvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer19projection_pushdown18min_dtype_size_colBR_B4h_E0E0EB3s_6reduceNCINvNvB3s_6min_by4foldTjB4g_EINvB3q_7compareB4g_jEE0EB4E_.exit.thread.i
  %i.l = phi ptr [ %.pre.i, %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtCse4dvU5uQ85g_8indexmap3map4iter4IterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeENCINvNvNtNtNtBa_6traits8iterator8Iterator10min_by_key3keyTRB1z_RB2o_EjNCINvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer19projection_pushdown18min_dtype_size_colBR_B4h_E0E0EB3s_6reduceNCINvNvB3s_6min_by4foldTjB4g_EINvB3q_7compareB4g_jEE0EB4E_.exit.i ], [ null, %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtCse4dvU5uQ85g_8indexmap3map4iter4IterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeENCINvNvNtNtNtBa_6traits8iterator8Iterator10min_by_key3keyTRB1z_RB2o_EjNCINvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer19projection_pushdown18min_dtype_size_colBR_B4h_E0E0EB3s_6reduceNCINvNvB3s_6min_by4foldTjB4g_EINvB3q_7compareB4g_jEE0EB4E_.exit.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !29454
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !29455
  ret ptr %i.l, !dbg !29456
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNtCs1LHh8CLbVkQ_11polars_core6scalarNtB3_6ScalarNtNtCscgRAwXFJnXP_4core4hash4Hash4hashNtNtCsk79RHlfmHDk_8foldhash7quality10FoldHasherECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(96) %0, ptr noalias noundef align 16 dereferenceable(48) %1) unnamed_addr #0 !dbg !29457 {
bb.a:
  tail call void @_RINvXs1_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtypeNtB6_8DataTypeNtNtCscgRAwXFJnXP_4core4hash4Hash4hashNtNtCsk79RHlfmHDk_8foldhash7quality10FoldHasherECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias noundef nonnull align 16 dereferenceable(48) %1), !dbg !29459
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !29460
  tail call void @_RINvMs4_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB6_8AnyValue9hash_implNtNtCsk79RHlfmHDk_8foldhash7quality10FoldHasherECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.a, ptr noalias noundef nonnull align 16 dereferenceable(48) %1, i1 noundef zeroext false), !dbg !29461
  ret void, !dbg !29462
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNtCse4dvU5uQ85g_8indexmap5serdeINtNtB5_3map8IndexMapjINtNtCsgZ49sUHp3tW_5alloc4sync3ArcSNtNtBZ_6string6StringENtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateENtNtCs40veMcpUDl8_10serde_core3ser9Serialize9serializeQINtNtCs721FSB8TeJg_9rmp_serde6encode10SerializerINtNtBZ_3vec3VechEEECsfcROwRM8ZtH_11polars_plan(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #0 !dbg !29463 {
bb.a:
  tail call void @_RINvYQINtNtCs721FSB8TeJg_9rmp_serde6encode10SerializerINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_mapRjRINtNtBV_4sync3ArcSNtNtBV_6string6StringERINtNtCse4dvU5uQ85g_8indexmap3map8IndexMapjB2q_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(32) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1), !dbg !29464
  ret void, !dbg !29465
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNtCse4dvU5uQ85g_8indexmap5serdeINtNtB5_3map8IndexMapjINtNtCsgZ49sUHp3tW_5alloc4sync3ArcSNtNtBZ_6string6StringENtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateENtNtCs40veMcpUDl8_10serde_core3ser9Serialize9serializeQINtNtCs721FSB8TeJg_9rmp_serde6encode10SerializerQINtNtBZ_3vec3VechEINtNtB3A_6config15StructMapConfigNtB4D_13DefaultConfigEEECsfcROwRM8ZtH_11polars_plan(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 dereferenceable(16) %2) unnamed_addr #0 !dbg !29466 {
bb.a:
  tail call void @_RINvYQINtNtCs721FSB8TeJg_9rmp_serde6encode10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEINtNtB9_6config15StructMapConfigNtB1t_13DefaultConfigEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_mapRjRINtNtBW_4sync3ArcSNtNtBW_6string6StringERINtNtCse4dvU5uQ85g_8indexmap3map8IndexMapjB3j_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(16) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1), !dbg !29467
  ret void, !dbg !29468
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNtCse4dvU5uQ85g_8indexmap5serdeINtNtB5_3map8IndexMapmINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNtNtCsgZ49sUHp3tW_5alloc6string6StringENtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateENtNtCs40veMcpUDl8_10serde_core3ser9Serialize9serializeQINtNtCs721FSB8TeJg_9rmp_serde6encode10SerializerINtNtB2r_3vec3VechEEECsfcROwRM8ZtH_11polars_plan(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #0 !dbg !29469 {
bb.a:
  tail call void @_RINvYQINtNtCs721FSB8TeJg_9rmp_serde6encode10SerializerINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_mapRmRINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNtNtBV_6string6StringERINtNtCse4dvU5uQ85g_8indexmap3map8IndexMapmB2q_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(32) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1), !dbg !29470
  ret void, !dbg !29471
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNtCse4dvU5uQ85g_8indexmap5serdeINtNtB5_3map8IndexMapmINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNtNtCsgZ49sUHp3tW_5alloc6string6StringENtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateENtNtCs40veMcpUDl8_10serde_core3ser9Serialize9serializeQINtNtCs721FSB8TeJg_9rmp_serde6encode10SerializerQINtNtB2r_3vec3VechEINtNtB4L_6config15StructMapConfigNtB5P_13DefaultConfigEEECsfcROwRM8ZtH_11polars_plan(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 dereferenceable(16) %2) unnamed_addr #0 !dbg !29472 {
bb.a:
  tail call void @_RINvYQINtNtCs721FSB8TeJg_9rmp_serde6encode10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEINtNtB9_6config15StructMapConfigNtB1t_13DefaultConfigEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_mapRmRINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNtNtBW_6string6StringERINtNtCse4dvU5uQ85g_8indexmap3map8IndexMapmB3j_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(16) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1), !dbg !29473
  ret void, !dbg !29474
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNtCse4dvU5uQ85g_8indexmap5serdeINtNtB5_3map8IndexMapmINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNtNtCsgZ49sUHp3tW_5alloc6string6StringENtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateENtNtCs40veMcpUDl8_10serde_core3ser9Serialize9serializeQINtNtCs721FSB8TeJg_9rmp_serde6encode13ExtSerializerINtNtB2r_3vec3VechEEECsfcROwRM8ZtH_11polars_plan(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 dereferenceable(24) %2) unnamed_addr #0 !dbg !29475 {
bb.a:
  tail call void @_RINvYQINtNtCs721FSB8TeJg_9rmp_serde6encode13ExtSerializerINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_mapRmRINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNtNtBY_6string6StringERINtNtCse4dvU5uQ85g_8indexmap3map8IndexMapmB2t_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1), !dbg !29476
  ret void, !dbg !29477
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNtCse4dvU5uQ85g_8indexmap5serdeINtNtB5_3map8IndexMapmINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNtNtCsgZ49sUHp3tW_5alloc6string6StringENtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateENtNtCs40veMcpUDl8_10serde_core3ser9Serialize9serializeQINtNtCs721FSB8TeJg_9rmp_serde6encode13ExtSerializerQINtNtB2r_3vec3VechEEECsfcROwRM8ZtH_11polars_plan(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 dereferenceable(24) %2) unnamed_addr #0 !dbg !29478 {
bb.a:
  tail call void @_RINvYQINtNtCs721FSB8TeJg_9rmp_serde6encode13ExtSerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_mapRmRINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNtNtBZ_6string6StringERINtNtCse4dvU5uQ85g_8indexmap3map8IndexMapmB2u_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1), !dbg !29479
  ret void, !dbg !29480
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNtCse4dvU5uQ85g_8indexmap5serdeINtNtB5_3map8IndexMapmNtNtCs1LHh8CLbVkQ_11polars_core6scalar6ScalarNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateENtNtCs40veMcpUDl8_10serde_core3ser9Serialize9serializeQINtNtCs721FSB8TeJg_9rmp_serde6encode10SerializerINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEECsfcROwRM8ZtH_11polars_plan(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #0 !dbg !29481 {
bb.a:
  tail call void @_RINvYQINtNtCs721FSB8TeJg_9rmp_serde6encode10SerializerINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_mapRmRNtNtCs1LHh8CLbVkQ_11polars_core6scalar6ScalarRINtNtCse4dvU5uQ85g_8indexmap3map8IndexMapmB2q_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(32) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1), !dbg !29482
  ret void, !dbg !29483
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNtCse4dvU5uQ85g_8indexmap5serdeINtNtB5_3map8IndexMapmNtNtCs1LHh8CLbVkQ_11polars_core6scalar6ScalarNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateENtNtCs40veMcpUDl8_10serde_core3ser9Serialize9serializeQINtNtCs721FSB8TeJg_9rmp_serde6encode10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEINtNtB3o_6config15StructMapConfigNtB4I_13DefaultConfigEEECsfcROwRM8ZtH_11polars_plan(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 dereferenceable(16) %2) unnamed_addr #0 !dbg !29484 {
bb.a:
  tail call void @_RINvYQINtNtCs721FSB8TeJg_9rmp_serde6encode10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEINtNtB9_6config15StructMapConfigNtB1t_13DefaultConfigEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_mapRmRNtNtCs1LHh8CLbVkQ_11polars_core6scalar6ScalarRINtNtCse4dvU5uQ85g_8indexmap3map8IndexMapmB3j_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(16) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1), !dbg !29485
  ret void, !dbg !29486
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNtCse4dvU5uQ85g_8indexmap5serdeINtNtB5_3map8IndexMapmNtNtCs1LHh8CLbVkQ_11polars_core6scalar6ScalarNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateENtNtCs40veMcpUDl8_10serde_core3ser9Serialize9serializeQINtNtCs721FSB8TeJg_9rmp_serde6encode13ExtSerializerINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEECsfcROwRM8ZtH_11polars_plan(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 dereferenceable(24) %2) unnamed_addr #0 !dbg !29487 {
bb.a:
  tail call void @_RINvYQINtNtCs721FSB8TeJg_9rmp_serde6encode13ExtSerializerINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_mapRmRNtNtCs1LHh8CLbVkQ_11polars_core6scalar6ScalarRINtNtCse4dvU5uQ85g_8indexmap3map8IndexMapmB2t_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1), !dbg !29488
  ret void, !dbg !29489
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNtCse4dvU5uQ85g_8indexmap5serdeINtNtB5_3map8IndexMapmNtNtCs1LHh8CLbVkQ_11polars_core6scalar6ScalarNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateENtNtCs40veMcpUDl8_10serde_core3ser9Serialize9serializeQINtNtCs721FSB8TeJg_9rmp_serde6encode13ExtSerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEECsfcROwRM8ZtH_11polars_plan(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 dereferenceable(24) %2) unnamed_addr #0 !dbg !29490 {
bb.a:
  tail call void @_RINvYQINtNtCs721FSB8TeJg_9rmp_serde6encode13ExtSerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_mapRmRNtNtCs1LHh8CLbVkQ_11polars_core6scalar6ScalarRINtNtCse4dvU5uQ85g_8indexmap3map8IndexMapmB2u_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1), !dbg !29491
  ret void, !dbg !29492
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNtCse4dvU5uQ85g_8indexmap5serdeINtNtB5_3map8IndexMapmNtNtNtCs1LHh8CLbVkQ_11polars_core6schema7iceberg13IcebergColumnNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateENtNtCs40veMcpUDl8_10serde_core3ser9Serialize9serializeQINtNtCs721FSB8TeJg_9rmp_serde6encode10SerializerINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEECsfcROwRM8ZtH_11polars_plan(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #0 !dbg !29493 {
bb.a:
  tail call void @_RINvYQINtNtCs721FSB8TeJg_9rmp_serde6encode10SerializerINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_mapRmRNtNtNtCs1LHh8CLbVkQ_11polars_core6schema7iceberg13IcebergColumnRINtNtCse4dvU5uQ85g_8indexmap3map8IndexMapmB2q_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(32) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1), !dbg !29494
  ret void, !dbg !29495
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNtCse4dvU5uQ85g_8indexmap5serdeINtNtB5_3map8IndexMapmNtNtNtCs1LHh8CLbVkQ_11polars_core6schema7iceberg13IcebergColumnNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateENtNtCs40veMcpUDl8_10serde_core3ser9Serialize9serializeQINtNtCs721FSB8TeJg_9rmp_serde6encode10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEINtNtB3G_6config15StructMapConfigNtB50_13DefaultConfigEEECsfcROwRM8ZtH_11polars_plan(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 dereferenceable(16) %2) unnamed_addr #0 !dbg !29496 {
bb.a:
  tail call void @_RINvYQINtNtCs721FSB8TeJg_9rmp_serde6encode10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEINtNtB9_6config15StructMapConfigNtB1t_13DefaultConfigEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_mapRmRNtNtNtCs1LHh8CLbVkQ_11polars_core6schema7iceberg13IcebergColumnRINtNtCse4dvU5uQ85g_8indexmap3map8IndexMapmB3j_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(16) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1), !dbg !29497
  ret void, !dbg !29498
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNtCse4dvU5uQ85g_8indexmap5serdeINtNtB5_3map8IndexMapmNtNtNtCs1LHh8CLbVkQ_11polars_core6schema7iceberg13IcebergColumnNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateENtNtCs40veMcpUDl8_10serde_core3ser9Serialize9serializeQINtNtCs721FSB8TeJg_9rmp_serde6encode13ExtSerializerINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEECsfcROwRM8ZtH_11polars_plan(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 dereferenceable(24) %2) unnamed_addr #0 !dbg !29499 {
bb.a:
  tail call void @_RINvYQINtNtCs721FSB8TeJg_9rmp_serde6encode13ExtSerializerINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_mapRmRNtNtNtCs1LHh8CLbVkQ_11polars_core6schema7iceberg13IcebergColumnRINtNtCse4dvU5uQ85g_8indexmap3map8IndexMapmB2t_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1), !dbg !29500
  ret void, !dbg !29501
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNtCse4dvU5uQ85g_8indexmap5serdeINtNtB5_3map8IndexMapmNtNtNtCs1LHh8CLbVkQ_11polars_core6schema7iceberg13IcebergColumnNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateENtNtCs40veMcpUDl8_10serde_core3ser9Serialize9serializeQINtNtCs721FSB8TeJg_9rmp_serde6encode13ExtSerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEECsfcROwRM8ZtH_11polars_plan(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 dereferenceable(24) %2) unnamed_addr #0 !dbg !29502 {
bb.a:
  tail call void @_RINvYQINtNtCs721FSB8TeJg_9rmp_serde6encode13ExtSerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_mapRmRNtNtNtCs1LHh8CLbVkQ_11polars_core6schema7iceberg13IcebergColumnRINtNtCse4dvU5uQ85g_8indexmap3map8IndexMapmB2u_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1), !dbg !29503
  ret void, !dbg !29504
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNtNtCs1LHh8CLbVkQ_11polars_core6scalar5serdeNtB5_6ScalarNtNtCs40veMcpUDl8_10serde_core3ser9Serialize9serializeINtNtCs6ti0Crti64P_13serde_stacker3ser10SerializerQINtNtCs721FSB8TeJg_9rmp_serde6encode10SerializerINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEEECsfcROwRM8ZtH_11polars_plan(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(96) %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !29505 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [72 x i8], align 8                ; 2 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [96 x i8], align 16               ; 4 uses
  %i.e = alloca [80 x i8], align 16               ; 8 uses
  %.sroa.67 = alloca [31 x i8], align 1           ; 6 uses
  %.sroa.6 = alloca [31 x i8], align 1            ; 5 uses
  %i.f = alloca [80 x i8], align 16               ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !29515
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6), !dbg !29515
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.67), !dbg !29515
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !29515
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !29516
  call fastcc void @_RNvXs1_NtCs1LHh8CLbVkQ_11polars_core6scalarNtB5_6ScalarNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(96) %i.d, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(96) %1), !dbg !29517
  call void @_RNvXs0_NtNtCs1LHh8CLbVkQ_11polars_core6scalar5serdeNtB5_18SerializableScalarINtNtCscgRAwXFJnXP_4core7convert7TryFromNtB7_6ScalarE8try_from(ptr noalias noundef nonnull sret([80 x i8]) align 16 captures(none) dereferenceable(80) %i.e, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(96) %i.d), !dbg !29515
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !29518
  %i.g = load i8, ptr %i.e, align 16, !dbg !29519, !range !3993, !noundef !3394 ; 2 uses
  %i.h = icmp eq i8 %i.g, 27, !dbg !29519
  br i1 %i.h, label %bb.b, label %bb.c, !dbg !29520

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !29521
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.b, ptr noundef nonnull align 8 dereferenceable(72) %i.i, i64 72, i1 false), !dbg !29521
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !29514
  call void @_RINvXs1_NtCs721FSB8TeJg_9rmp_serde6encodeNtB6_5ErrorNtNtCs40veMcpUDl8_10serde_core3ser5Error6customNtCsgjwxzEoLG5s_12polars_error11PolarsErrorECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(72) %i.b), !dbg !29522
  %.sroa.67.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.67, i64 7, !dbg !29523 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.67.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !dbg !29523
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !29524
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !29525
  %.sroa.6.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.6, i64 7, !dbg !29526 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.6.8..sroa_idx, ptr noundef nonnull align 1 dereferenceable(24) %.sroa.67.8..sroa_idx, i64 24, i1 false), !dbg !29526
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.67), !dbg !29527
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(24) %.sroa.6.8..sroa_idx, i64 24, i1 false), !dbg !29527
  br label %bb.f, !dbg !29528

bb.c:                                             ; preds = %bb.a
  %.sroa.515.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 1, !dbg !29529
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.67, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.515.0..sroa_idx, i64 31, i1 false), !dbg !29529
  %.sroa.616.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 32, !dbg !29529
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 32, !dbg !29530
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(48) %.sroa.616.0..sroa_idx, i64 48, i1 false), !dbg !29529
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !29525
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.6, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.67, i64 31, i1 false), !dbg !29531
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.67), !dbg !29527
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 1, !dbg !29530
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.6, i64 31, i1 false), !dbg !29515
  store i8 %i.g, ptr %i.f, align 16, !dbg !29530
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !29532
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !dbg !29532
  invoke void @_RINvXNvNtNtCs1LHh8CLbVkQ_11polars_core6scalar5serde1__NtB5_18SerializableScalarNtNtCs40veMcpUDl8_10serde_core3ser9Serialize9serializeINtNtCs6ti0Crti64P_13serde_stacker3ser10SerializerQINtNtCs721FSB8TeJg_9rmp_serde6encode10SerializerINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(80) %i.f, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.c)
          to label %bb.e unwind label %bb.d, !dbg !29533

bb.d:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core6scalar5serde18SerializableScalarECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 16 dereferenceable(80) %i.f) #39
          to label %bb.h unwind label %bb.g, !dbg !29534

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !29534
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core6scalar5serde18SerializableScalarECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 16 dereferenceable(80) %i.f), !dbg !29534
  br label %bb.f, !dbg !29528

bb.f:                                             ; preds = %bb.b, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6), !dbg !29534
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !29534
  ret void, !dbg !29535

bb.g:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #40, !dbg !29536
  unreachable, !dbg !29536

bb.h:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.j, !dbg !29536
}

end_hunk_0
begin_hunk_1_@_RNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer15expand_datasets15expand_datasets:bb.a
          to label %bb.y unwind label %bb.d, !dbg !135915

bb.y:                                             ; preds = %_RINvMs0_NtNtCsh8eZTKRCwoO_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtCsidoPH4Qgqxm_12polars_async14RuntimeManagerE5force0ECsfcROwRM8ZtH_11polars_plan.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !135916
  %i.aq = load i64, ptr %i.d, align 8, !dbg !135917, !range !3608, !noundef !3394
  %.not1 = icmp eq i64 %i.aq, 18, !dbg !135917
  br i1 %.not1, label %bb.aa, label %bb.z, !dbg !135918

bb.z:                                             ; preds = %bb.y
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.d, i64 72, i1 false), !dbg !135919
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !135920
  br label %bb.ag, !dbg !135921

bb.aa:                                            ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !135920
  br label %bb.v, !dbg !135922

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer15expand_datasets23PyScanResolveThreadPoolEEEB1I_.exit: ; preds = %bb.b, %.body14, %bb.c, %bb.ab
  %.pn5 = phi { ptr, i32 } [ %i.ar, %bb.ab ], [ %.pn3, %bb.c ], [ %.pn3, %.body14 ], [ %.pn3, %bb.b ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCslt8cbK4E2O5_12futures_util6stream17futures_unordered16FuturesUnorderedINtNtNtCs2mZqlW55729_12polars_utils11async_utils16tokio_handle_ext17AbortOnDropHandleTNtNtB24_5arena4NodeINtNtB4_6result6ResultNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir2IRNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEEEEB46_(ptr noalias noundef align 8 dereferenceable(24) %i.j) #39
          to label %common.resume unwind label %bb.aq, !dbg !135856

bb.ab:                                            ; preds = %bb.ai, %bb.x
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer15expand_datasets23PyScanResolveThreadPoolEEEB1I_.exit

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer15expand_datasets23PyScanResolveThreadPoolEEEB1I_.exit18: ; preds = %bb.w, %bb.v, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !135879
  invoke void @_RNvXs8_NtNtCslt8cbK4E2O5_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtNtCs2mZqlW55729_12polars_utils11async_utils16tokio_handle_ext17AbortOnDropHandleTNtNtB1w_5arena4NodeINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir2IRNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEEENtNtNtB3b_3ops4drop4Drop4dropB3O_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %bb.ae unwind label %bb.ac, !dbg !135923

bb.ac:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer15expand_datasets23PyScanResolveThreadPoolEEEB1I_.exit18
  %i.as = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !135848), !dbg !135923
  call void @llvm.experimental.noalias.scope.decl(metadata !135849), !dbg !135924
  %i.at = load ptr, ptr %i.j, align 8, !dbg !135925, !alias.scope !135850, !nonnull !3394, !noundef !3394
  %i.au = atomicrmw sub ptr %i.at, i64 1 release, align 8, !dbg !135926, !noalias !135851
  %i.av = icmp eq i64 %i.au, 1, !dbg !135927
  br i1 %i.av, label %bb.ad, label %common.resume, !dbg !135927

bb.ad:                                            ; preds = %bb.ac
  fence acquire, !dbg !135928
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtNtNtCslt8cbK4E2O5_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtNtCs2mZqlW55729_12polars_utils11async_utils16tokio_handle_ext17AbortOnDropHandleTNtNtB2p_5arena4NodeINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir2IRNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEEEE9drop_slowB4H_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j) #42
          to label %common.resume unwind label %bb.af, !dbg !135929

bb.ae:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer15expand_datasets23PyScanResolveThreadPoolEEEB1I_.exit18
  call void @llvm.experimental.noalias.scope.decl(metadata !135852), !dbg !135923
  call void @llvm.experimental.noalias.scope.decl(metadata !135853), !dbg !135930
  %i.aw = load ptr, ptr %i.j, align 8, !dbg !135931, !alias.scope !135854, !nonnull !3394, !noundef !3394
  %i.ax = atomicrmw sub ptr %i.aw, i64 1 release, align 8, !dbg !135932, !noalias !135855
  %i.ay = icmp eq i64 %i.ax, 1, !dbg !135933
  br i1 %i.ay, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCslt8cbK4E2O5_12futures_util6stream17futures_unordered16FuturesUnorderedINtNtNtCs2mZqlW55729_12polars_utils11async_utils16tokio_handle_ext17AbortOnDropHandleTNtNtB24_5arena4NodeINtNtB4_6result6ResultNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir2IRNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEEEEB46_.exit27.sink.split, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCslt8cbK4E2O5_12futures_util6stream17futures_unordered16FuturesUnorderedINtNtNtCs2mZqlW55729_12polars_utils11async_utils16tokio_handle_ext17AbortOnDropHandleTNtNtB24_5arena4NodeINtNtB4_6result6ResultNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir2IRNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEEEEB46_.exit27, !dbg !135933

bb.af:                                            ; preds = %bb.ad
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #40, !dbg !135923
  unreachable, !dbg !135923

common.resume:                                    ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer15expand_datasets23PyScanResolveThreadPoolEEEB1I_.exit, %bb.am, %bb.an, %bb.ac, %bb.ad
  %common.resume.op = phi { ptr, i32 } [ %i.bg, %bb.am ], [ %i.as, %bb.ac ], [ %i.as, %bb.ad ], [ %i.bg, %bb.an ], [ %.pn5, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer15expand_datasets23PyScanResolveThreadPoolEEEB1I_.exit ]
  resume { ptr, i32 } %common.resume.op, !dbg !135934

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCslt8cbK4E2O5_12futures_util6stream17futures_unordered16FuturesUnorderedINtNtNtCs2mZqlW55729_12polars_utils11async_utils16tokio_handle_ext17AbortOnDropHandleTNtNtB24_5arena4NodeINtNtB4_6result6ResultNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir2IRNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEEEEB46_.exit27.sink.split: ; preds = %bb.ae, %bb.ao
  fence acquire, !dbg !135935
  call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtNtNtCslt8cbK4E2O5_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtNtCs2mZqlW55729_12polars_utils11async_utils16tokio_handle_ext17AbortOnDropHandleTNtNtB2p_5arena4NodeINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir2IRNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEEEE9drop_slowB4H_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j) #42, !dbg !135936
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCslt8cbK4E2O5_12futures_util6stream17futures_unordered16FuturesUnorderedINtNtNtCs2mZqlW55729_12polars_utils11async_utils16tokio_handle_ext17AbortOnDropHandleTNtNtB24_5arena4NodeINtNtB4_6result6ResultNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir2IRNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEEEEB46_.exit27, !dbg !135856

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCslt8cbK4E2O5_12futures_util6stream17futures_unordered16FuturesUnorderedINtNtNtCs2mZqlW55729_12polars_utils11async_utils16tokio_handle_ext17AbortOnDropHandleTNtNtB24_5arena4NodeINtNtB4_6result6ResultNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir2IRNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEEEEB46_.exit27: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCslt8cbK4E2O5_12futures_util6stream17futures_unordered16FuturesUnorderedINtNtNtCs2mZqlW55729_12polars_utils11async_utils16tokio_handle_ext17AbortOnDropHandleTNtNtB24_5arena4NodeINtNtB4_6result6ResultNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir2IRNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEEEEB46_.exit27.sink.split, %bb.ae, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !135856
  ret void, !dbg !135937

bb.ag:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs2mZqlW55729_12polars_utils5arena4NodeEECsfcROwRM8ZtH_11polars_plan.exit25, %bb.z
  call void @llvm.experimental.noalias.scope.decl(metadata !135860), !dbg !135879
  %i.ba = load ptr, ptr %i.i, align 8, !dbg !135938, !alias.scope !135860, !noundef !3394 ; 2 uses
  %i.bb = icmp eq ptr %i.ba, null, !dbg !135938
  br i1 %i.bb, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer15expand_datasets23PyScanResolveThreadPoolEEEB1I_.exit20, label %bb.ah, !dbg !135938

bb.ah:                                            ; preds = %bb.ag
  %i.bc = atomicrmw sub ptr %i.ba, i64 1 release, align 8, !dbg !135939, !noalias !135861
  %i.bd = icmp eq i64 %i.bc, 1, !dbg !135940
  br i1 %i.bd, label %bb.ai, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer15expand_datasets23PyScanResolveThreadPoolEEEB1I_.exit20, !dbg !135940

bb.ai:                                            ; preds = %bb.ah
  fence acquire, !dbg !135941
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer15expand_datasets23PyScanResolveThreadPoolE9drop_slowBO_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i) #42
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer15expand_datasets23PyScanResolveThreadPoolEEEB1I_.exit20 unwind label %bb.ab, !dbg !135942

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecuEECsfcROwRM8ZtH_11polars_plan.exit: ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !135885
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCs2mZqlW55729_12polars_utils5arena4NodeENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %bb.ak unwind label %bb.aj, !dbg !135943

bb.aj:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecuEECsfcROwRM8ZtH_11polars_plan.exit
  %i.be = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtCs2mZqlW55729_12polars_utils5arena4NodeENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.body14 unwind label %bb.al, !dbg !135944

bb.ak:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecuEECsfcROwRM8ZtH_11polars_plan.exit
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtCs2mZqlW55729_12polars_utils5arena4NodeENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs2mZqlW55729_12polars_utils5arena4NodeEECsfcROwRM8ZtH_11polars_plan.exit25 unwind label %bb.d, !dbg !135945

bb.al:                                            ; preds = %bb.aj
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #40, !dbg !135943
  unreachable, !dbg !135943

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs2mZqlW55729_12polars_utils5arena4NodeEECsfcROwRM8ZtH_11polars_plan.exit25: ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !135885
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !135885
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !135885
  br label %bb.ag, !dbg !135921

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer15expand_datasets23PyScanResolveThreadPoolEEEB1I_.exit20: ; preds = %bb.ah, %bb.ag, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !135879
  invoke void @_RNvXs8_NtNtCslt8cbK4E2O5_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtNtCs2mZqlW55729_12polars_utils11async_utils16tokio_handle_ext17AbortOnDropHandleTNtNtB1w_5arena4NodeINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir2IRNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEEENtNtNtB3b_3ops4drop4Drop4dropB3O_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %bb.ao unwind label %bb.am, !dbg !135946

bb.am:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer15expand_datasets23PyScanResolveThreadPoolEEEB1I_.exit20
  %i.bg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !135862), !dbg !135946
  call void @llvm.experimental.noalias.scope.decl(metadata !135863), !dbg !135947
  %i.bh = load ptr, ptr %i.j, align 8, !dbg !135948, !alias.scope !135864, !nonnull !3394, !noundef !3394
  %i.bi = atomicrmw sub ptr %i.bh, i64 1 release, align 8, !dbg !135949, !noalias !135865
  %i.bj = icmp eq i64 %i.bi, 1, !dbg !135950
  br i1 %i.bj, label %bb.an, label %common.resume, !dbg !135950

bb.an:                                            ; preds = %bb.am
  fence acquire, !dbg !135951
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtNtNtCslt8cbK4E2O5_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtNtCs2mZqlW55729_12polars_utils11async_utils16tokio_handle_ext17AbortOnDropHandleTNtNtB2p_5arena4NodeINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir2IRNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEEEE9drop_slowB4H_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j) #42
          to label %common.resume unwind label %bb.ap, !dbg !135952

bb.ao:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer15expand_datasets23PyScanResolveThreadPoolEEEB1I_.exit20
  call void @llvm.experimental.noalias.scope.decl(metadata !135866), !dbg !135946
  call void @llvm.experimental.noalias.scope.decl(metadata !135867), !dbg !135953
  %i.bk = load ptr, ptr %i.j, align 8, !dbg !135954, !alias.scope !135868, !nonnull !3394, !noundef !3394
  %i.bl = atomicrmw sub ptr %i.bk, i64 1 release, align 8, !dbg !135955, !noalias !135869
  %i.bm = icmp eq i64 %i.bl, 1, !dbg !135956
  br i1 %i.bm, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCslt8cbK4E2O5_12futures_util6stream17futures_unordered16FuturesUnorderedINtNtNtCs2mZqlW55729_12polars_utils11async_utils16tokio_handle_ext17AbortOnDropHandleTNtNtB24_5arena4NodeINtNtB4_6result6ResultNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir2IRNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEEEEB46_.exit27.sink.split, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCslt8cbK4E2O5_12futures_util6stream17futures_unordered16FuturesUnorderedINtNtNtCs2mZqlW55729_12polars_utils11async_utils16tokio_handle_ext17AbortOnDropHandleTNtNtB24_5arena4NodeINtNtB4_6result6ResultNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir2IRNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEEEEB46_.exit27, !dbg !135956

bb.ap:                                            ; preds = %bb.an
  %i.bn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #40, !dbg !135946
  unreachable, !dbg !135946

bb.aq:                                            ; preds = %bb.c, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer15expand_datasets23PyScanResolveThreadPoolEEEB1I_.exit, %.body, %bb.e
  %i.bo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #40, !dbg !135957
  unreachable, !dbg !135957
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer15expand_datasets21expand_python_dataset(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([368 x i8]) align 16 captures(none) dereferenceable(368) %0, ptr noalias noundef align 16 captures(address) dead_on_return dereferenceable(368) %1, ptr noundef %2, i64 %3, i64 noundef range(i64 0, 2) %4, i64 %5, ptr noundef %6, i64 %7, i1 noundef zeroext %8, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %9, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %10) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !135958 {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [16 x i8], align 8                ; 6 uses
  %i.f = alloca [8 x i8], align 8                 ; 5 uses
  %.sroa.0.i.i = alloca [120 x i8], align 16      ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 5 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [160 x i8], align 16              ; 4 uses
  %i.j = alloca [48 x i8], align 16               ; 4 uses
  %i.k = alloca [48 x i8], align 16               ; 5 uses
  %i.l = alloca [96 x i8], align 16               ; 6 uses
  %i.m = alloca [48 x i8], align 16               ; 5 uses
  %i.n = alloca [24 x i8], align 8                ; 5 uses
  %i.o = alloca [32 x i8], align 8                ; 6 uses
  %i.p = alloca [8 x i8], align 8                 ; 5 uses
  %i.q = alloca [32 x i8], align 8                ; 4 uses
  %i.r = alloca [16 x i8], align 8                ; 5 uses
  %i.s = alloca [8 x i8], align 8                 ; 4 uses
  %i.t = alloca [24 x i8], align 8                ; 7 uses
  %.sroa.0.i = alloca [23 x i8], align 1          ; 5 uses
  %i.u = alloca [16 x i8], align 8                ; 5 uses
  %i.v = alloca [496 x i8], align 16              ; 6 uses
  %i.w = alloca [16 x i8], align 8                ; 5 uses
  %i.x = alloca [80 x i8], align 8                ; 5 uses
  %.sroa.5187 = alloca [72 x i8], align 8         ; 6 uses
  %i.y = alloca [72 x i8], align 8                ; 7 uses
  %i.z = alloca [24 x i8], align 8                ; 2 uses
  %i.aa = alloca [24 x i8], align 8               ; 5 uses
  %i.ab = alloca [24 x i8], align 8               ; 6 uses
  %.sroa.0176 = alloca [24 x i8], align 8         ; 5 uses
  %.sroa.6162 = alloca [48 x i8], align 8         ; 4 uses
  %i.ac = alloca [64 x i8], align 8               ; 4 uses
  %i.ad = alloca [8 x i8], align 8                ; 4 uses
  %i.ae = alloca [72 x i8], align 8               ; 7 uses
  %i.af = alloca [64 x i8], align 8               ; 9 uses
  %i.ag = alloca [8 x i8], align 8                ; 4 uses
  %.sroa.26 = alloca [16 x i8], align 8           ; 6 uses
  %.sroa.5 = alloca ptr, align 8                  ; 7 uses
  %.sroa.8 = alloca i64, align 8                  ; 7 uses
  %.sroa.11 = alloca i64, align 8                 ; 5 uses
  %i.ah = alloca [16 x i8], align 8               ; 5 uses
  %i.ai = alloca [24 x i8], align 8               ; 7 uses
  %i.aj = alloca [24 x i8], align 8               ; 4 uses
  %i.ak = alloca [160 x i8], align 16             ; 4 uses
  %i.al = alloca [16 x i8], align 8               ; 5 uses
  %i.am = alloca [24 x i8], align 8               ; 7 uses
  %i.an = alloca [24 x i8], align 8               ; 4 uses
  %i.ao = alloca [160 x i8], align 16             ; 6 uses
  %i.ap = alloca [24 x i8], align 8               ; 6 uses
  %i.aq = alloca [16 x i8], align 8               ; 5 uses
  %i.ar = alloca [24 x i8], align 8               ; 7 uses
  %i.as = alloca [24 x i8], align 8               ; 6 uses
  %i.at = alloca [56 x i8], align 8               ; 4 uses
  %i.au = alloca [160 x i8], align 16             ; 26 uses
  %i.av = alloca [160 x i8], align 16             ; 11 uses
  %i.aw = alloca [480 x i8], align 16             ; 6 uses
  %i.ax = alloca [16 x i8], align 8               ; 5 uses
  %i.ay = alloca [24 x i8], align 8               ; 7 uses
  %i.az = alloca [24 x i8], align 8               ; 11 uses
  %i.ba = alloca [8 x i8], align 8                ; 7 uses
  %.sroa.665.sroa.0 = alloca [72 x i8], align 8   ; 5 uses
  %.sroa.665.sroa.9 = alloca [24 x i8], align 8   ; 5 uses
  %i.bb = alloca [16 x i8], align 8               ; 4 uses
  %i.bc = alloca [8 x i8], align 8                ; 2 uses
  %.sroa.733 = alloca [72 x i8], align 8          ; 4 uses
  %.sroa.835 = alloca [288 x i8], align 16        ; 4 uses
  %.sroa.1349 = alloca [24 x i8], align 16        ; 5 uses
  %.sroa.1553 = alloca [24 x i8], align 16        ; 4 uses
  %.sroa.7 = alloca [72 x i8], align 8            ; 4 uses
  %.sroa.417 = alloca [320 x i8], align 16        ; 4 uses
  %i.bd = alloca [400 x i8], align 16             ; 7 uses
  %i.be = alloca [48 x i8], align 8               ; 9 uses
  %.sroa.0 = alloca [23 x i8], align 8            ; 4 uses
  %i.bf = alloca [24 x i8], align 8               ; 10 uses
  %i.bg = alloca [24 x i8], align 8               ; 8 uses
  %i.bh = alloca [24 x i8], align 8               ; 8 uses
  %i.bi = alloca [8 x i8], align 8                ; 10 uses
  %i.bj = alloca [16 x i8], align 8               ; 11 uses
  %i.bk = alloca [16 x i8], align 8               ; 6 uses
  %i.bl = alloca [16 x i8], align 8               ; 12 uses
  store ptr %2, ptr %i.bl, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 5 uses
  store i64 %3, ptr %i.bm, align 8
  store i64 %4, ptr %i.bk, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 8 ; 4 uses
  store i64 %5, ptr %i.bn, align 8
  store ptr %6, ptr %i.bj, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bj, i64 8 ; 4 uses
  store i64 %7, ptr %i.bo, align 8
  %i.bp = load i64, ptr %1, align 16, !dbg !137889, !range !3901, !noundef !3394 ; 2 uses
  %i.bq = icmp ne i64 %i.bp, -9223372036854775786, !dbg !137889
  tail call void @llvm.assume(i1 %i.bq), !dbg !137889
  %i.br = icmp eq i64 %i.bp, -9223372036854775801, !dbg !137890
  br i1 %i.br, label %bb.b, label %.invoke625, !dbg !137890, !prof !3464

bb.b:                                             ; preds = %bb.a
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 272, !dbg !137891 ; 4 uses
  %i.bt = load ptr, ptr %i.bs, align 16, !dbg !137891, !nonnull !3394, !noundef !3394 ; 4 uses
  %i.bu = load i64, ptr %i.bt, align 8, !dbg !137892, !range !3900, !noundef !3394 ; 2 uses
  %i.bv = icmp ne i64 %i.bu, 3, !dbg !137892
  tail call void @llvm.assume(i1 %i.bv), !dbg !137892
  %i.bw = icmp eq i64 %i.bu, 6, !dbg !137893
  br i1 %i.bw, label %bb.c, label %.invoke625, !dbg !137893, !prof !3464

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi), !dbg !137894
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bt, i64 16, !dbg !137895 ; 2 uses
  %i.by = load ptr, ptr %i.bx, align 8, !dbg !137895, !nonnull !3394, !noundef !3394
  %i.bz = atomicrmw add ptr %i.by, i64 1 monotonic, align 8, !dbg !137896
  %i.ca = icmp slt i64 %i.bz, 0, !dbg !137897
  br i1 %i.ca, label %bb.e, label %bb.d, !dbg !137897

.invoke625:                                       ; preds = %bb.b, %bb.a
  %i.cb = phi ptr [ @661, %bb.a ], [ @660, %bb.b ]
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @27, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cb) #41
          to label %.cont626 unwind label %bb.ng, !dbg !137898

.cont626:                                         ; preds = %.invoke625
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.cc = load ptr, ptr %i.bx, align 8, !dbg !137899, !nonnull !3394, !noundef !3394 ; 2 uses
  store ptr %i.cc, ptr %i.bi, align 8, !dbg !137900
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh), !dbg !137404
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 16, !dbg !137901
  invoke void @_RNvMs5_NtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutexINtB5_5MutexINtNtCscgRAwXFJnXP_4core6option6OptionNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer15expand_datasets15ExpandedDatasetEE4lockB1H_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.bh, ptr noundef nonnull align 16 %i.cd)
          to label %bb.h unwind label %bb.g, !dbg !137902

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.trap(), !dbg !137903
  unreachable, !dbg !137903

.body:                                            ; preds = %bb.j, %bb.g, %.body400
  %.sroa.0197.0 = phi i8 [ %.sroa.0197.2, %.body400 ], [ %.sroa.0197.1, %bb.g ], [ 1, %bb.j ], !dbg !137898 ; 2 uses
  %.sroa.0202.0 = phi i1 [ true, %.body400 ], [ %.sroa.0202.1, %bb.g ], [ true, %bb.j ], !dbg !137889 ; 2 uses
  %.pn321 = phi { ptr, i32 } [ %.pn319, %.body400 ], [ %i.ch, %bb.g ], [ %i.cp, %bb.j ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !137405), !dbg !137904
  call void @llvm.experimental.noalias.scope.decl(metadata !137406), !dbg !137905
  %i.ce = load ptr, ptr %i.bi, align 8, !dbg !137906, !alias.scope !137407, !nonnull !3394, !noundef !3394
  %i.cf = atomicrmw sub ptr %i.ce, i64 1 release, align 8, !dbg !137907, !noalias !137407
  %i.cg = icmp eq i64 %i.cf, 1, !dbg !137908
  br i1 %i.cg, label %bb.f, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer15expand_datasets15ExpandedDatasetEEEEB2x_.exit, !dbg !137908

bb.f:                                             ; preds = %.body
  fence acquire, !dbg !137909
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex5MutexINtNtCscgRAwXFJnXP_4core6option6OptionNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer15expand_datasets15ExpandedDatasetEEE9drop_slowB2f_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bi) #42
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer15expand_datasets15ExpandedDatasetEEEEB2x_.exit unwind label %bb.df, !dbg !137910

bb.g:                                             ; preds = %bb.ne, %bb.nc, %bb.mu, %bb.ms, %bb.d
  %.sroa.0197.1 = phi i8 [ %.sroa.0197.5, %bb.mu ], [ %.sroa.0197.4617, %bb.ne ], [ 1, %bb.d ], [ %.sroa.0197.5, %bb.ms ], [ %.sroa.0197.4617, %bb.nc ], !dbg !137898
  %.sroa.0202.1 = phi i1 [ true, %bb.mu ], [ false, %bb.ne ], [ true, %bb.d ], [ true, %bb.ms ], [ false, %bb.nc ], !dbg !137898
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.h:                                             ; preds = %bb.d
  call void @llvm.experimental.noalias.scope.decl(metadata !137408), !dbg !137911
  %i.ci = load i64, ptr %i.bh, align 8, !dbg !137912, !range !3524, !alias.scope !137408, !noundef !3394
  %i.cj = trunc nuw i64 %i.ci to i1, !dbg !137913
  br i1 %i.cj, label %bb.i, label %bb.m, !dbg !137913, !prof !3463

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !dbg !137914, !noalias !137408
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bh, i64 8, !dbg !137914
  %i.cl = load ptr, ptr %i.ck, align 8, !dbg !137914, !alias.scope !137408, !nonnull !3394, !align !3410, !noundef !3394
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bh, i64 16, !dbg !137914
  %i.cn = load i8, ptr %i.cm, align 8, !dbg !137914, !range !3721, !alias.scope !137408, !noundef !3394
  store ptr %i.cl, ptr %i.u, align 8, !dbg !137914, !noalias !137408
  %i.co = getelementptr inbounds nuw i8, ptr %i.u, i64 8, !dbg !137914
  store i8 %i.cn, ptr %i.co, align 8, !dbg !137914, !noalias !137408
  invoke void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @407, i64 noundef 43, ptr noundef nonnull %i.u, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @411, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @638) #41
          to label %bb.k unwind label %bb.j, !dbg !137915, !noalias !137408

bb.j:                                             ; preds = %bb.i
  %i.cp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsh8eZTKRCwoO_3std4sync6poison11PoisonErrorINtNtBJ_5mutex10MutexGuardINtNtB4_6option6OptionNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer15expand_datasets15ExpandedDatasetEEEEB2o_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.u) #39
          to label %.body unwind label %bb.l, !dbg !137916, !noalias !137408

bb.k:                                             ; preds = %bb.i
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.cq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #40, !dbg !137917, !noalias !137408
  unreachable, !dbg !137917

bb.m:                                             ; preds = %bb.h
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bh, i64 8, !dbg !137918
  %i.cs = load ptr, ptr %i.cr, align 8, !dbg !137918, !alias.scope !137408, !nonnull !3394, !align !3410, !noundef !3394 ; 75 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bh, i64 16, !dbg !137918
  %i.cu = load i8, ptr %i.ct, align 8, !dbg !137918, !range !3721, !alias.scope !137408, !noundef !3394 ; 2 uses
  %i.cv = trunc nuw i8 %i.cu to i1, !dbg !137918  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !dbg !137919
  %i.cw = invoke noundef zeroext i1 @_RNvNtCs1LHh8CLbVkQ_11polars_core6config7verbose()
          to label %bb.o unwind label %bb.n, !dbg !137920

.body400:                                         ; preds = %bb.nv, %bb.nw, %bb.hi, %bb.hd, %bb.he, %bb.gq, %bb.gr, %bb.gk, %bb.gl, %bb.gc, %bb.gh, %bb.cv, %bb.cu, %.body358, %bb.r, %bb.n, %bb.lc, %bb.hb, %bb.nt, %bb.lt, %bb.oa, %bb.my, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit, %bb.jm, %.body430, %bb.fm, %bb.fh, %bb.ev, %bb.eq, %.body388, %.body377, %.body371
  %.sroa.0197.2 = phi i8 [ %.sroa.0197.4617, %bb.lc ], [ %.sroa.0197.4617, %bb.oa ], [ %.sroa.0197.4617, %.body377 ], [ 1, %.body358 ], [ %.sroa.0197.4617, %bb.my ], [ %.sroa.0197.4617, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit ], [ %.sroa.0197.4617, %bb.lt ], [ %.sroa.0197.4617, %bb.nt ], [ %.sroa.0197.4617, %bb.jm ], [ %.sroa.0197.4617, %.body430 ], [ %.sroa.0197.4617, %bb.hd ], [ %.sroa.0197.4617, %bb.hi ], [ %.sroa.0197.4617, %bb.gq ], [ %.sroa.0197.4617, %bb.gk ], [ %.sroa.0197.4617, %bb.gc ], [ %.sroa.0197.4617, %bb.fm ], [ %.sroa.0197.4617, %bb.fh ], [ %.sroa.0197.4617, %bb.ev ], [ %.sroa.0197.4617, %bb.eq ], [ %.sroa.0197.4617, %.body388 ], [ 0, %.body371 ], [ %.sroa.0197.4617, %bb.cv ], [ %.sroa.0197.4617, %bb.hb ], [ %.sroa.0197.3, %bb.n ], [ 1, %bb.r ], [ %.sroa.0197.4617, %bb.cu ], [ %.sroa.0197.4617, %bb.gh ], [ %.sroa.0197.4617, %bb.gl ], [ %.sroa.0197.4617, %bb.gr ], [ %.sroa.0197.4617, %bb.he ], [ %.sroa.0197.4617, %bb.nw ], [ %.sroa.0197.4617, %bb.nv ], !dbg !137898
  %.pn319 = phi { ptr, i32 } [ %eh.lpad-body.i, %bb.lc ], [ %i.agr, %bb.oa ], [ %eh.lpad-body378, %.body377 ], [ %.pn, %.body358 ], [ %.pn314, %bb.my ], [ %.pn314, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit ], [ %i.adk, %bb.lt ], [ %.pn306, %bb.nt ], [ %i.yu, %bb.jm ], [ %.pn304, %.body430 ], [ %i.tm, %bb.hd ], [ %i.ts, %bb.hi ], [ %i.sy, %bb.gq ], [ %i.sm, %bb.gk ], [ %i.ru, %bb.gc ], [ %i.qe, %bb.fm ], [ %i.pn, %bb.fh ], [ %i.op, %bb.ev ], [ %i.oa, %bb.eq ], [ %eh.lpad-body389, %.body388 ], [ %eh.lpad-body372, %.body371 ], [ %i.ju, %bb.cv ], [ %i.tk, %bb.hb ], [ %i.cx, %bb.n ], [ %.pn, %bb.r ], [ %i.ju, %bb.cu ], [ %i.sf, %bb.gh ], [ %i.sm, %bb.gl ], [ %i.sy, %bb.gr ], [ %i.tm, %bb.he ], [ %i.agj, %bb.nw ], [ %i.agj, %bb.nv ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardINtNtB4_6option6OptionNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer15expand_datasets15ExpandedDatasetEEEB25_(ptr nonnull %i.cs, i8 %i.cu) #39
          to label %.body unwind label %bb.df, !dbg !137921

bb.n:                                             ; preds = %.invoke624, %.invoke, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl12scan_sources11ScanSourcesEBM_.exit, %bb.jf, %bb.je, %bb.gx, %bb.gv, %bb.gf, %bb.fz, %bb.ex, %bb.dq, %bb.dp, %bb.do, %bb.ag, %bb.ob, %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgZ49sUHp3tW_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfcROwRM8ZtH_11polars_plan.exit, %bb.mp, %bb.mn, %bb.hk, %bb.hj, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsfcROwRM8ZtH_11polars_plan.exit411, %bb.gi, %bb.dg, %bb.cp, %bb.co, %bb.cm, %bb.bd, %bb.at, %bb.ao, %bb.q, %bb.m
  %.sroa.0197.3 = phi i8 [ 1, %bb.ao ], [ %.sroa.0197.4617, %bb.ob ], [ %.sroa.0197.4617, %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgZ49sUHp3tW_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfcROwRM8ZtH_11polars_plan.exit ], [ %.sroa.0197.4617, %bb.co ], [ %.sroa.0197.4617, %bb.cp ], [ %.sroa.0197.4617, %bb.dg ], [ %.sroa.0197.4617, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsfcROwRM8ZtH_11polars_plan.exit411 ], [ %.sroa.0197.4617, %bb.gv ], [ %.sroa.0197.4617, %bb.mp ], [ %.sroa.0197.4617, %bb.mn ], [ %.sroa.0197.4617, %bb.je ], [ %.sroa.0197.4617, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl12scan_sources11ScanSourcesEBM_.exit ], [ 1, %bb.ag ], [ %.sroa.0197.4617, %bb.jf ], [ %.sroa.0197.4617, %bb.hk ], [ %.sroa.0197.4617, %bb.hj ], [ %.sroa.0197.4617, %bb.fz ], [ %.sroa.0197.4617, %bb.gx ], [ %.sroa.0197.4617, %bb.gi ], [ %.sroa.0197.4617, %bb.gf ], [ %.sroa.0197.4617, %.invoke624 ], [ 1, %bb.m ], [ %.sroa.0197.4617, %bb.do ], [ %.sroa.0197.4617, %bb.ex ], [ %.sroa.0197.4617, %bb.dp ], [ %.sroa.0197.4617, %bb.dq ], [ 1, %bb.at ], [ %.sroa.0197.4617, %.invoke ], [ 1, %bb.cm ], [ 1, %bb.bd ], [ 1, %bb.q ], !dbg !137898
  %i.cx = landingpad { ptr, i32 }
          cleanup
  br label %.body400

bb.o:                                             ; preds = %bb.m
  br i1 %i.cw, label %bb.q, label %bb.p, !dbg !137920

bb.p:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsfcROwRM8ZtH_11polars_plan.exit365, %bb.o
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cs, i64 16, !dbg !137922 ; 5 uses
  %i.cz = load i64, ptr %i.cy, align 16, !dbg !137923, !range !3838, !noundef !3394 ; 3 uses
  %.not274 = icmp eq i64 %i.cz, 2, !dbg !137923
  br i1 %.not274, label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit, label %bb.ah, !dbg !137924

bb.q:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg), !dbg !137415
  %i.da = getelementptr inbounds nuw i8, ptr %i.bt, i64 8, !dbg !137925
  %i.db = load ptr, ptr %i.da, align 8, !dbg !137925, !nonnull !3394, !noundef !3394
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 16, !dbg !137926
  invoke void @_RNvMNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9file_scan14python_datasetNtB2_21PythonDatasetProvider4name(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.bg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.dc)
          to label %bb.t unwind label %bb.n, !dbg !137927

.body358:                                         ; preds = %bb.ac, %bb.ad, %bb.w, %bb.v, %bb.s
  %.pn = phi { ptr, i32 } [ %i.dj, %bb.w ], [ %i.dg, %bb.s ], [ %i.dj, %bb.v ], [ %i.dq, %bb.ad ], [ %i.dq, %bb.ac ] ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.bg, i64 23, !dbg !137928
  %i.de = load i8, ptr %i.dd, align 1, !dbg !137928, !range !3542, !alias.scope !137418, !noundef !3394
  %i.df = icmp eq i8 %i.de, -40, !dbg !137929
  br i1 %i.df, label %bb.r, label %.body400, !dbg !137929, !prof !3463

bb.r:                                             ; preds = %.body358
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bg)
          to label %.body400 unwind label %bb.df, !dbg !137930

end_hunk_1
begin_hunk_2_@_RNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer15expand_datasets21expand_python_dataset:bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !137629), !dbg !138207
  %i.ol = load ptr, ptr %i.ok, align 8, !dbg !138208, !alias.scope !137629, !noundef !3394 ; 2 uses
  %i.om = icmp eq ptr %i.ol, null, !dbg !138208
  br i1 %i.om, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9file_scan14default_values18DefaultFieldValuesEEB1a_.exit, label %bb.et, !dbg !138208

bb.et:                                            ; preds = %_RNvXs0_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9file_scan14default_valuesNtB5_18DefaultFieldValuesNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit
  %i.on = atomicrmw sub ptr %i.ol, i64 1 release, align 8, !dbg !138209, !noalias !137630
  %i.oo = icmp eq i64 %i.on, 1, !dbg !138210
  br i1 %i.oo, label %bb.eu, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9file_scan14default_values18DefaultFieldValuesEEB1a_.exit, !dbg !138210

bb.eu:                                            ; preds = %bb.et
  fence acquire, !dbg !138211
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9file_scan14default_values25IcebergDefaultFieldValuesE9drop_slowBO_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ok) #42
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9file_scan14default_values18DefaultFieldValuesEEB1a_.exit unwind label %bb.ev, !dbg !138212

bb.ev:                                            ; preds = %bb.eu
  %i.op = landingpad { ptr, i32 }
          cleanup
  %i.oq = load ptr, ptr %i.lx, align 8, !dbg !138207, !nonnull !3394, !noundef !3394
  %i.or = getelementptr inbounds nuw i8, ptr %i.oq, i64 336, !dbg !138207
  store ptr %i.og, ptr %i.or, align 8, !dbg !138207
  br label %.body400, !dbg !138213

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9file_scan14default_values18DefaultFieldValuesEEB1a_.exit: ; preds = %bb.et, %_RNvXs0_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9file_scan14default_valuesNtB5_18DefaultFieldValuesNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit, %bb.eu
  %i.os = load ptr, ptr %i.lx, align 8, !dbg !138207, !nonnull !3394, !noundef !3394
  %i.ot = getelementptr inbounds nuw i8, ptr %i.os, i64 336, !dbg !138207
  store ptr %i.og, ptr %i.ot, align 8, !dbg !138207
  %i.ou = getelementptr inbounds nuw i8, ptr %i.jo, i64 192, !dbg !138214
  %i.ov = load i64, ptr %i.ou, align 8, !dbg !138214, !range !3838, !noundef !3394 ; 2 uses
  %.not294 = icmp eq i64 %i.ov, 2, !dbg !138214
  br i1 %.not294, label %bb.fa, label %bb.ew, !dbg !138215

bb.ew:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9file_scan14default_values18DefaultFieldValuesEEB1a_.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !137632), !dbg !138216
  %i.ow = getelementptr inbounds nuw i8, ptr %i.jo, i64 200, !dbg !138217 ; 2 uses
  %i.ox = trunc nuw i64 %i.ov to i1, !dbg !138217
  br i1 %i.ox, label %bb.ex, label %bb.ey, !dbg !138217

bb.ex:                                            ; preds = %bb.ew
  %i.oy = invoke noundef nonnull ptr @_RNvXs1_NtCs2mZqlW55729_12polars_utils15python_functionNtB5_12PythonObjectNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ow)
          to label %bb.fa unwind label %bb.n, !dbg !138218

bb.ey:                                            ; preds = %bb.ew
  %i.oz = load ptr, ptr %i.ow, align 8, !dbg !138219, !alias.scope !137632, !nonnull !3394, !noundef !3394 ; 2 uses
  %i.pa = atomicrmw add ptr %i.oz, i64 1 monotonic, align 8, !dbg !138220, !noalias !137632
  %i.pb = icmp slt i64 %i.pa, 0, !dbg !138221
  br i1 %i.pb, label %bb.ez, label %bb.fa, !dbg !138221

bb.ez:                                            ; preds = %bb.ey
  call void @llvm.trap(), !dbg !138222
  unreachable, !dbg !138222

bb.fa:                                            ; preds = %bb.ex, %bb.ey, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9file_scan14default_values18DefaultFieldValuesEEB1a_.exit
  %.sroa.674.0 = phi ptr [ undef, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9file_scan14default_values18DefaultFieldValuesEEB1a_.exit ], [ %i.oz, %bb.ey ], [ %i.oy, %bb.ex ], !dbg !138223 ; 2 uses
  %.sroa.072.0 = phi i64 [ 2, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9file_scan14default_values18DefaultFieldValuesEEB1a_.exit ], [ 0, %bb.ey ], [ 1, %bb.ex ], !dbg !138223 ; 2 uses
  %i.pc = load ptr, ptr %i.lx, align 8, !dbg !138224, !nonnull !3394, !noundef !3394 ; 2 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pc, i64 192, !dbg !138224
  call void @llvm.experimental.noalias.scope.decl(metadata !137639), !dbg !138224
  %i.pe = load i64, ptr %i.pd, align 8, !dbg !138225, !range !3838, !alias.scope !137639, !noundef !3394 ; 2 uses
  %i.pf = icmp eq i64 %i.pe, 2, !dbg !138225
  br i1 %i.pf, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9file_scan8deletion17DeletionFilesListEEB1a_.exit, label %bb.fb, !dbg !138225

bb.fb:                                            ; preds = %bb.fa
  call void @llvm.experimental.noalias.scope.decl(metadata !137640), !dbg !138225
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pc, i64 200, !dbg !138226 ; 3 uses
  %i.ph = icmp eq i64 %i.pe, 0, !dbg !138226
  br i1 %i.ph, label %bb.fc, label %bb.fe, !dbg !138226

bb.fc:                                            ; preds = %bb.fb
  call void @llvm.experimental.noalias.scope.decl(metadata !137641), !dbg !138226
  call void @llvm.experimental.noalias.scope.decl(metadata !137642), !dbg !138227
  %i.pi = load ptr, ptr %i.pg, align 8, !dbg !138228, !alias.scope !137643, !nonnull !3394, !noundef !3394
  %i.pj = atomicrmw sub ptr %i.pi, i64 1 release, align 8, !dbg !138229, !noalias !137643
  %i.pk = icmp eq i64 %i.pj, 1, !dbg !138230
  br i1 %i.pk, label %bb.fd, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9file_scan8deletion17DeletionFilesListEEB1a_.exit, !dbg !138230

bb.fd:                                            ; preds = %bb.fc
  fence acquire, !dbg !138231
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCse4dvU5uQ85g_8indexmap3map8IndexMapjIBx_SNtNtB7_6string6StringENtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEE9drop_slowCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.pg) #42
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9file_scan8deletion17DeletionFilesListEEB1a_.exit unwind label %bb.fh, !dbg !138232

bb.fe:                                            ; preds = %bb.fb
  %.val.i.i394 = load ptr, ptr %i.pg, align 8, !dbg !138226, !alias.scope !137644, !nonnull !3394, !noundef !3394 ; 2 uses
  %i.pl = call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCsbm5zPlkZccl_4pyo38internal5state12ATTACH_COUNT0s_023___RUST_STD_INTERNAL_VAL), !dbg !138233
  %.val.i.i.i.i.i.i.i.i = load i64, ptr %i.pl, align 8, !dbg !138234, !noalias !137644, !noundef !3394
  %i.pm = icmp sgt i64 %.val.i.i.i.i.i.i.i.i, 0, !dbg !138235
  br i1 %i.pm, label %bb.fg, label %bb.ff, !dbg !138236, !prof !3855

bb.ff:                                            ; preds = %bb.fe
  invoke void @_RNvNvXsA_NtCsbm5zPlkZccl_4pyo38instanceINtB7_2PypENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop9drop_slow(ptr noundef nonnull %.val.i.i394)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9file_scan8deletion17DeletionFilesListEEB1a_.exit unwind label %bb.fh, !dbg !138237

bb.fg:                                            ; preds = %bb.fe
  call void @_Py_DecRef(ptr noundef nonnull %.val.i.i394) #44, !dbg !138238, !noalias !137644
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9file_scan8deletion17DeletionFilesListEEB1a_.exit, !dbg !138239

bb.fh:                                            ; preds = %bb.ff, %bb.fd
  %i.pn = landingpad { ptr, i32 }
          cleanup
  %i.po = load ptr, ptr %i.lx, align 8, !dbg !138224, !nonnull !3394, !noundef !3394 ; 2 uses
  %i.pp = getelementptr inbounds nuw i8, ptr %i.po, i64 192, !dbg !138224
  store i64 %.sroa.072.0, ptr %i.pp, align 8, !dbg !138224
  %i.pq = getelementptr inbounds nuw i8, ptr %i.po, i64 200, !dbg !138224
  store ptr %.sroa.674.0, ptr %i.pq, align 8, !dbg !138224
  br label %.body400, !dbg !138240

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9file_scan8deletion17DeletionFilesListEEB1a_.exit: ; preds = %bb.fg, %bb.fc, %bb.fa, %bb.fd, %bb.ff
  %i.pr = load ptr, ptr %i.lx, align 8, !dbg !138224, !nonnull !3394, !noundef !3394 ; 2 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pr, i64 192, !dbg !138224
  store i64 %.sroa.072.0, ptr %i.ps, align 8, !dbg !138224
  %i.pt = getelementptr inbounds nuw i8, ptr %i.pr, i64 200, !dbg !138224
  store ptr %.sroa.674.0, ptr %i.pt, align 8, !dbg !138224
  %i.pu = getelementptr inbounds nuw i8, ptr %i.jo, i64 344, !dbg !138241
  %i.pv = load ptr, ptr %i.pu, align 8, !dbg !138241, !noundef !3394 ; 4 uses
  %.not295 = icmp eq ptr %i.pv, null, !dbg !138241
  br i1 %.not295, label %_RNvXsU_NtNtCsfcROwRM8ZtH_11polars_plan3dsl9file_scanNtB5_15TableStatisticsNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit, label %bb.fi, !dbg !138242

bb.fi:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9file_scan8deletion17DeletionFilesListEEB1a_.exit
  %i.pw = atomicrmw add ptr %i.pv, i64 1 monotonic, align 8, !dbg !138243
  %i.px = icmp slt i64 %i.pw, 0, !dbg !138244
  br i1 %i.px, label %bb.fj, label %_RNvXsU_NtNtCsfcROwRM8ZtH_11polars_plan3dsl9file_scanNtB5_15TableStatisticsNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit, !dbg !138244

bb.fj:                                            ; preds = %bb.fi
  call void @llvm.trap(), !dbg !138245
  unreachable, !dbg !138245

_RNvXsU_NtNtCsfcROwRM8ZtH_11polars_plan3dsl9file_scanNtB5_15TableStatisticsNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit: ; preds = %bb.fi, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9file_scan8deletion17DeletionFilesListEEB1a_.exit
  %i.py = load ptr, ptr %i.lx, align 8, !dbg !138246, !nonnull !3394, !noundef !3394
  %i.pz = getelementptr inbounds nuw i8, ptr %i.py, i64 344, !dbg !138246 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !137647), !dbg !138246
  %i.qa = load ptr, ptr %i.pz, align 8, !dbg !138247, !alias.scope !137647, !noundef !3394 ; 2 uses
  %i.qb = icmp eq ptr %i.qa, null, !dbg !138247
  br i1 %i.qb, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9file_scan15TableStatisticsEEB18_.exit, label %bb.fk, !dbg !138247

bb.fk:                                            ; preds = %_RNvXsU_NtNtCsfcROwRM8ZtH_11polars_plan3dsl9file_scanNtB5_15TableStatisticsNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit
  %i.qc = atomicrmw sub ptr %i.qa, i64 1 release, align 8, !dbg !138248, !noalias !137648
  %i.qd = icmp eq i64 %i.qc, 1, !dbg !138249
  br i1 %i.qd, label %bb.fl, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9file_scan15TableStatisticsEEB18_.exit, !dbg !138249

bb.fl:                                            ; preds = %bb.fk
  fence acquire, !dbg !138250
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameE9drop_slowCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.pz) #42
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9file_scan15TableStatisticsEEB18_.exit unwind label %bb.fm, !dbg !138251

bb.fm:                                            ; preds = %bb.fl
  %i.qe = landingpad { ptr, i32 }
          cleanup
  %i.qf = load ptr, ptr %i.lx, align 8, !dbg !138246, !nonnull !3394, !noundef !3394
  %i.qg = getelementptr inbounds nuw i8, ptr %i.qf, i64 344, !dbg !138246
  store ptr %i.pv, ptr %i.qg, align 8, !dbg !138246
  br label %.body400, !dbg !138252

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9file_scan15TableStatisticsEEB18_.exit: ; preds = %bb.fk, %_RNvXsU_NtNtCsfcROwRM8ZtH_11polars_plan3dsl9file_scanNtB5_15TableStatisticsNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit, %bb.fl
  %i.qh = load ptr, ptr %i.lx, align 8, !dbg !138246, !nonnull !3394, !noundef !3394
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qh, i64 344, !dbg !138246
  store ptr %i.pv, ptr %i.qi, align 8, !dbg !138246
  %i.qj = load ptr, ptr %i.lx, align 8, !dbg !138253, !nonnull !3394, !noundef !3394
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.qj, ptr noundef nonnull align 8 dereferenceable(24) %i.jo, i64 24, i1 false), !dbg !138253
  br i1 %8, label %bb.fv, label %bb.fn, !dbg !138254

bb.fn:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnECsfcROwRM8ZtH_11polars_plan.exit, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9file_scan15TableStatisticsEEB18_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5), !dbg !138255
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8), !dbg !138255
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11), !dbg !138255
  %i.qk = getelementptr inbounds nuw i8, ptr %i.cs, i64 40, !dbg !138255
  call void @llvm.experimental.noalias.scope.decl(metadata !137649), !dbg !138256
  call void @llvm.experimental.noalias.scope.decl(metadata !137650), !dbg !138256
  %i.ql = load i64, ptr %i.qk, align 8, !dbg !138257, !range !3838, !alias.scope !137650, !noalias !137649, !noundef !3394 ; 3 uses
  %i.qm = getelementptr inbounds nuw i8, ptr %i.cs, i64 48, !dbg !138258
  %i.qn = load ptr, ptr %i.qm, align 16, !dbg !138258, !alias.scope !137650, !noalias !137649, !nonnull !3394, !noundef !3394 ; 7 uses
  switch i64 %i.ql, label %default.unreachable [
    i64 0, label %bb.fo
    i64 1, label %bb.fp
    i64 2, label %bb.fq
  ], !dbg !138257

bb.fo:                                            ; preds = %bb.fn
  %i.qo = load i64, ptr %i.qn, align 8, !dbg !138259, !range !3886, !noalias !137654, !noundef !3394
  %i.qp = icmp eq i64 %i.qo, 3, !dbg !138260
  br i1 %i.qp, label %bb.fr, label %bb.fs, !dbg !138260

bb.fp:                                            ; preds = %bb.fn
  %i.qq = getelementptr inbounds nuw i8, ptr %i.cs, i64 56, !dbg !138261
  %i.qr = load i64, ptr %i.qq, align 8, !dbg !138261, !alias.scope !137650, !noalias !137649, !noundef !3394
  %i.qs = atomicrmw add ptr %i.qn, i64 1 monotonic, align 8, !dbg !138262, !noalias !137654
  %i.qt = icmp slt i64 %i.qs, 0, !dbg !138263
  br i1 %i.qt, label %bb.ft, label %bb.jg, !dbg !138263

bb.fq:                                            ; preds = %bb.fn
  %i.qu = getelementptr inbounds nuw i8, ptr %i.cs, i64 56, !dbg !138264
  %i.qv = load i64, ptr %i.qu, align 8, !dbg !138264, !alias.scope !137650, !noalias !137649, !noundef !3394
  %i.qw = atomicrmw add ptr %i.qn, i64 1 monotonic, align 8, !dbg !138265, !noalias !137654
  %i.qx = icmp slt i64 %i.qw, 0, !dbg !138266
  br i1 %i.qx, label %bb.fu, label %bb.jg, !dbg !138266

bb.fr:                                            ; preds = %bb.fs, %bb.fo
  %i.qy = getelementptr inbounds nuw i8, ptr %i.cs, i64 56, !dbg !138267
  %i.qz = load ptr, ptr %i.qy, align 8, !dbg !138267, !alias.scope !137650, !noalias !137649, !noundef !3394
  %i.ra = getelementptr inbounds nuw i8, ptr %i.cs, i64 64, !dbg !138268
  %i.rb = load i64, ptr %i.ra, align 16, !dbg !138268, !alias.scope !137650, !noalias !137649, !noundef !3394
  store ptr %i.qn, ptr %.sroa.5, align 8, !dbg !138269, !alias.scope !137649, !noalias !137650
  br label %bb.jg, !dbg !138270

bb.fs:                                            ; preds = %bb.fo
  %i.rc = getelementptr inbounds nuw i8, ptr %i.qn, i64 24, !dbg !138271
  %i.rd = atomicrmw add ptr %i.rc, i64 1 monotonic, align 8, !dbg !138272, !noalias !137654 ; 0 uses
  br label %bb.fr, !dbg !138273

bb.ft:                                            ; preds = %bb.fp
  call void @llvm.trap(), !dbg !138274
  unreachable, !dbg !138274

bb.fu:                                            ; preds = %bb.fq
  call void @llvm.trap(), !dbg !138275
  unreachable, !dbg !138275

bb.fv:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9file_scan15TableStatisticsEEB18_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !dbg !138276
  %i.re = load ptr, ptr %i.lx, align 8, !dbg !138277, !nonnull !3394, !noundef !3394 ; 3 uses
  %i.rf = getelementptr inbounds nuw i8, ptr %i.re, i64 255, !dbg !138278
  %i.rg = load i8, ptr %i.rf, align 1, !dbg !138278, !range !3618, !noundef !3394
  %.not296 = icmp eq i8 %i.rg, -38, !dbg !138278
  br i1 %.not296, label %.invoke624, label %bb.fw, !dbg !138279, !prof !3463

bb.fw:                                            ; preds = %bb.fv
  %i.rh = getelementptr inbounds nuw i8, ptr %i.re, i64 232, !dbg !138278
  store ptr %i.rh, ptr %i.ba, align 8, !dbg !138280
  %i.ri = getelementptr inbounds nuw i8, ptr %i.re, i64 344, !dbg !138281 ; 6 uses
  %i.rj = load ptr, ptr %i.ri, align 8, !dbg !138281, !noundef !3394 ; 2 uses
  %.not297 = icmp eq ptr %i.rj, null, !dbg !138281
  br i1 %.not297, label %.invoke624, label %bb.fx, !dbg !138282, !prof !3463

bb.fx:                                            ; preds = %bb.fw
  call void @llvm.experimental.noalias.scope.decl(metadata !137667), !dbg !138283
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !138284
  %i.rk = cmpxchg ptr %i.rj, i64 1, i64 0 acquire monotonic, align 8, !dbg !138285, !noalias !137667
  %i.rl = extractvalue { i64, i1 } %i.rk, 1, !dbg !138285
  %i.rm = load ptr, ptr %i.ri, align 8, !dbg !138286, !alias.scope !137667, !nonnull !3394, !noundef !3394 ; 7 uses
  br i1 %i.rl, label %bb.fy, label %bb.fz, !dbg !138287

bb.fy:                                            ; preds = %bb.fx
  %i.rn = getelementptr inbounds nuw i8, ptr %i.rm, i64 8, !dbg !138288
  %i.ro = load atomic i64, ptr %i.rn monotonic, align 8, !dbg !138289, !noalias !137667
  %i.rp = icmp eq i64 %i.ro, 1, !dbg !138290
  br i1 %i.rp, label %bb.gb, label %bb.gd, !dbg !138290

bb.fz:                                            ; preds = %bb.fx
  %i.rq = getelementptr inbounds nuw i8, ptr %i.rm, i64 16, !dbg !138291
  %i.rr = invoke noundef nonnull ptr @_RNvMsk_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameE17clone_from_ref_inCsfcROwRM8ZtH_11polars_plan(ptr noundef nonnull align 8 %i.rq)
          to label %.noexc398 unwind label %bb.n, !dbg !138292 ; 3 uses

.noexc398:                                        ; preds = %bb.fz
  %i.rs = atomicrmw sub ptr %i.rm, i64 1 release, align 8, !dbg !138293, !noalias !137669
  %i.rt = icmp eq i64 %i.rs, 1, !dbg !138294
  br i1 %i.rt, label %bb.ga, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameEECsfcROwRM8ZtH_11polars_plan.exit.i, !dbg !138294

bb.ga:                                            ; preds = %.noexc398
  fence acquire, !dbg !138295
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameE9drop_slowCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ri) #42
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameEECsfcROwRM8ZtH_11polars_plan.exit.i unwind label %bb.gh, !dbg !138296

bb.gb:                                            ; preds = %bb.fy
  store atomic i64 1, ptr %i.rm release, align 8, !dbg !138297, !noalias !137667
  br label %bb.gi, !dbg !138298

bb.gc:                                            ; preds = %bb.ge, %bb.gd
  %i.ru = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsN_NtCsgZ49sUHp3tW_5alloc4syncINtB5_4WeakNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.p)
          to label %.body400 unwind label %bb.gg, !dbg !138299, !noalias !137667

bb.gd:                                            ; preds = %bb.fy
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !dbg !138300, !noalias !137667
  store ptr %i.rm, ptr %i.p, align 8, !dbg !138301, !noalias !137667
  %i.rv = getelementptr inbounds nuw i8, ptr %i.rm, i64 16, !dbg !138302 ; 2 uses
  invoke void @_RNvMs1l_NtCsgZ49sUHp3tW_5alloc4syncINtB6_15UniqueArcUninitNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtNtB8_5alloc6GlobalE3newCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.o, ptr noundef nonnull align 8 %i.rv)
          to label %bb.ge unwind label %bb.gc, !dbg !138303, !noalias !137667

bb.ge:                                            ; preds = %bb.gd
  %i.rw = load i64, ptr %i.o, align 8, !dbg !138304, !range !4495, !noalias !137667, !noundef !3394 ; 2 uses
  %i.rx = add nuw i64 %i.rw, 15, !dbg !138305
  %i.ry = sub i64 0, %i.rw, !dbg !138306
  %i.rz = and i64 %i.rx, %i.ry, !dbg !138305
  %i.sa = getelementptr inbounds nuw i8, ptr %i.o, i64 16, !dbg !138307
  %i.sb = load ptr, ptr %i.sa, align 8, !dbg !138307, !noalias !137667, !nonnull !3394, !noundef !3394
  %i.sc = getelementptr inbounds nuw i8, ptr %i.sb, i64 %i.rz, !dbg !138308
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(48) %i.sc, ptr noundef nonnull align 8 dereferenceable(48) %i.rv, i64 48, i1 false), !dbg !138309, !noalias !137667
  %i.sd = invoke noundef nonnull ptr @_RNvMs1l_NtCsgZ49sUHp3tW_5alloc4syncINtB6_15UniqueArcUninitNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtNtB8_5alloc6GlobalE8into_arcCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.o)
          to label %bb.gf unwind label %bb.gc, !dbg !138310, !noalias !137667 ; 2 uses

bb.gf:                                            ; preds = %bb.ge
  store ptr %i.sd, ptr %i.ri, align 8, !dbg !138311, !alias.scope !137667
  invoke void @_RNvXsN_NtCsgZ49sUHp3tW_5alloc4syncINtB5_4WeakNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.p)
          to label %.noexc399 unwind label %bb.n, !dbg !138312

.noexc399:                                        ; preds = %bb.gf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !138313, !noalias !137667
  br label %bb.gi, !dbg !138298

bb.gg:                                            ; preds = %bb.gc
  %i.se = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #40, !dbg !138314, !noalias !137667
  unreachable, !dbg !138314

bb.gh:                                            ; preds = %bb.ga
  %i.sf = landingpad { ptr, i32 }
          cleanup
  store ptr %i.rr, ptr %i.ri, align 8, !dbg !138315, !alias.scope !137667
  br label %.body400, !dbg !138316

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameEECsfcROwRM8ZtH_11polars_plan.exit.i: ; preds = %bb.ga, %.noexc398
  store ptr %i.rr, ptr %i.ri, align 8, !dbg !138315, !alias.scope !137667
  br label %bb.gi, !dbg !138317

.invoke624:                                       ; preds = %bb.fw, %bb.fv
  %i.sg = phi ptr [ @643, %bb.fv ], [ @644, %bb.fw ]
  invoke void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.sg) #41
          to label %.cont unwind label %bb.n, !dbg !138318

.cont:                                            ; preds = %.invoke624
  unreachable

bb.gi:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameEECsfcROwRM8ZtH_11polars_plan.exit.i, %.noexc399, %bb.gb
  %i.sh = phi ptr [ %i.rm, %bb.gb ], [ %i.sd, %.noexc399 ], [ %i.rr, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameEECsfcROwRM8ZtH_11polars_plan.exit.i ], !dbg !138319 ; 3 uses
  %i.si = getelementptr inbounds nuw i8, ptr %i.sh, i64 16, !dbg !138320 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !138321
  %i.sj = invoke noundef nonnull align 8 ptr @_RNvMs_NtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframeNtB4_9DataFrame6schema(ptr noundef nonnull align 8 %i.si)
          to label %bb.gj unwind label %bb.n, !dbg !138322

bb.gj:                                            ; preds = %bb.gi
  %i.sk = load ptr, ptr %i.sj, align 8, !dbg !138323, !nonnull !3394, !noundef !3394
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az), !dbg !138324
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay), !dbg !138324
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ay, ptr noundef nonnull align 8 dereferenceable(24) @368, i64 24, i1 false), !dbg !138324
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !dbg !138325
  store ptr %i.ba, ptr %i.ax, align 8, !dbg !138325
  %.sroa.4229.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 8, !dbg !138325
  store ptr @_RNvXs1i_NtCscgRAwXFJnXP_4core3fmtRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtB6_7Display3fmtCsfcROwRM8ZtH_11polars_plan, ptr %.sroa.4229.0..sroa_idx, align 8, !dbg !138325
  %i.sl = invoke noundef zeroext i1 @_RNvXs11_Cs7VARH73bmU_11compact_strNtB6_13CompactStringNtNtCscgRAwXFJnXP_4core3fmt5Write9write_fmt(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ay, ptr noundef nonnull @645, ptr noundef nonnull %i.ax)
          to label %bb.gm unwind label %bb.gk, !dbg !138326

bb.gk:                                            ; preds = %bb.gn, %bb.gj
  %i.sm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.sn = getelementptr inbounds nuw i8, ptr %i.ay, i64 23, !dbg !138327
  %i.so = load i8, ptr %i.sn, align 1, !dbg !138327, !range !3542, !alias.scope !137679, !noundef !3394
  %i.sp = icmp eq i8 %i.so, -40, !dbg !138328
  br i1 %i.sp, label %bb.gl, label %.body400, !dbg !138328, !prof !3463

bb.gl:                                            ; preds = %bb.gk
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ay)
          to label %.body400 unwind label %bb.df, !dbg !138329

bb.gm:                                            ; preds = %bb.gj
  br i1 %i.sl, label %bb.gn, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCsfcROwRM8ZtH_11polars_plan.exit339, !dbg !138330, !prof !3463

bb.gn:                                            ; preds = %bb.gm
  invoke void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @407, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @413, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @646) #41
          to label %.noexc338 unwind label %bb.gk, !dbg !138331

.noexc338:                                        ; preds = %bb.gn
  unreachable

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCsfcROwRM8ZtH_11polars_plan.exit339: ; preds = %bb.gm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !dbg !138332
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.az, ptr noundef nonnull align 8 dereferenceable(24) %i.ay, i64 24, i1 false), !dbg !138332
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !dbg !138324
  %i.sq = getelementptr inbounds nuw i8, ptr %i.az, i64 23, !dbg !138333 ; 3 uses
  %i.sr = load i8, ptr %i.sq, align 1, !dbg !138333, !range !3542, !alias.scope !137686, !noundef !3394 ; 2 uses
  %i.ss = icmp ugt i8 %i.sr, -41, !dbg !138334
  br i1 %i.ss, label %bb.gp, label %bb.go, !dbg !138334

bb.go:                                            ; preds = %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCsfcROwRM8ZtH_11polars_plan.exit339
  %i.st = add i8 %i.sr, 64, !dbg !138335
  %i.su = call i8 @llvm.umin.i8(i8 %i.st, i8 24), !dbg !138336
  %.sroa.0.0.i.i404 = zext nneg i8 %i.su to i64, !dbg !138336
  br label %bb.gs, !dbg !138337

bb.gp:                                            ; preds = %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCsfcROwRM8ZtH_11polars_plan.exit339
  %i.sv = load ptr, ptr %i.az, align 8, !dbg !138338, !alias.scope !137686, !noundef !3394
  %i.sw = getelementptr inbounds nuw i8, ptr %i.az, i64 8, !dbg !138339
  %i.sx = load i64, ptr %i.sw, align 8, !dbg !138339, !alias.scope !137686, !noundef !3394
  br label %bb.gs, !dbg !138340

bb.gq:                                            ; preds = %bb.gs
  %i.sy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.sz = load i8, ptr %i.sq, align 1, !dbg !138341, !range !3542, !alias.scope !137687, !noundef !3394
  %i.ta = icmp eq i8 %i.sz, -40, !dbg !138342
  br i1 %i.ta, label %bb.gr, label %.body400, !dbg !138342, !prof !3463

bb.gr:                                            ; preds = %bb.gq
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.az)
          to label %.body400 unwind label %bb.df, !dbg !138343

bb.gs:                                            ; preds = %bb.gp, %bb.go
  %.sroa.01.0.i405 = phi i64 [ %i.sx, %bb.gp ], [ %.sroa.0.0.i.i404, %bb.go ], !dbg !138344
  %.sroa.0.0.i406 = phi ptr [ %i.sv, %bb.gp ], [ %i.az, %bb.go ], !dbg !138345
  %i.tb = getelementptr inbounds nuw i8, ptr %i.sk, i64 16, !dbg !138346
  %i.tc = invoke noundef align 16 ptr @_RINvMs3_NtCse4dvU5uQ85g_8indexmap3mapINtB6_8IndexMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE3geteECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.tb, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i406, i64 noundef %.sroa.01.0.i405)
end_hunk_2
begin_hunk_3_@_RNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer15expand_datasets21expand_python_dataset:bb.a

bb.in:                                            ; preds = %bb.iq, %bb.im
  %i.xm = landingpad { ptr, i32 }
          cleanup
  %i.xn = getelementptr inbounds nuw i8, ptr %i.am, i64 23, !dbg !138490
  %i.xo = load i8, ptr %i.xn, align 1, !dbg !138490, !range !3542, !alias.scope !137744, !noundef !3394
  %i.xp = icmp eq i8 %i.xo, -40, !dbg !138491
  br i1 %i.xp, label %bb.io, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsfcROwRM8ZtH_11polars_plan.exit435, !dbg !138491, !prof !3463

bb.io:                                            ; preds = %bb.in
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.am)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsfcROwRM8ZtH_11polars_plan.exit435 unwind label %bb.df, !dbg !138492

bb.ip:                                            ; preds = %bb.im
  br i1 %i.xl, label %bb.iq, label %bb.ir, !dbg !138493, !prof !3463

bb.iq:                                            ; preds = %bb.ip
  invoke void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @407, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @413, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @651) #41
          to label %.noexc334 unwind label %bb.in, !dbg !138494

.noexc334:                                        ; preds = %bb.iq
  unreachable

bb.ir:                                            ; preds = %bb.ip
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !dbg !138495
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.an, ptr noundef nonnull align 8 dereferenceable(24) %i.am, i64 24, i1 false), !dbg !138495
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !dbg !138487
  %i.xq = load i64, ptr %i.tz, align 16, !dbg !138496, !range !3838, !alias.scope !137745, !noundef !3394
  %i.xr = icmp eq i64 %i.xq, 0, !dbg !138497
  %..i436 = select i1 %i.xr, i64 24, i64 16, !dbg !138498
  %i.xs = getelementptr inbounds nuw i8, ptr %i.tz, i64 %..i436, !dbg !138498
  %.sroa.0.0.i437 = load i64, ptr %i.xs, align 8, !dbg !138498, !alias.scope !137745, !noundef !3394
  invoke void @_RNvMNtNtCs1LHh8CLbVkQ_11polars_core5frame6columnNtB2_6Column9full_null(ptr noalias noundef nonnull sret([160 x i8]) align 16 captures(none) dereferenceable(160) %i.ao, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.an, i64 noundef %.sroa.0.0.i437, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(48) @610)
          to label %bb.iu unwind label %bb.it, !dbg !138486

bb.is:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsfcROwRM8ZtH_11polars_plan.exit441, %bb.it
  %.pn301.pn = phi { ptr, i32 } [ %i.xv, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsfcROwRM8ZtH_11polars_plan.exit441 ], [ %i.xt, %bb.it ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 16 dereferenceable(160) %i.av) #39
          to label %.body430 unwind label %bb.df, !dbg !138499

bb.it:                                            ; preds = %bb.ir
  %i.xt = landingpad { ptr, i32 }
          cleanup
  br label %bb.is

bb.iu:                                            ; preds = %bb.ir
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !dbg !138500
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !dbg !138501
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !dbg !138502
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !dbg !138502
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) @368, i64 24, i1 false), !dbg !138502
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !dbg !138503
  store ptr %i.ba, ptr %i.ah, align 8, !dbg !138503
  %.sroa.4241.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 8, !dbg !138503
  store ptr @_RNvXs1i_NtCscgRAwXFJnXP_4core3fmtRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtB6_7Display3fmtCsfcROwRM8ZtH_11polars_plan, ptr %.sroa.4241.0..sroa_idx, align 8, !dbg !138503
  %i.xu = invoke noundef zeroext i1 @_RNvXs11_Cs7VARH73bmU_11compact_strNtB6_13CompactStringNtNtCscgRAwXFJnXP_4core3fmt5Write9write_fmt(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ai, ptr noundef nonnull @652, ptr noundef nonnull %i.ah)
          to label %bb.ix unwind label %bb.iv, !dbg !138504

bb.iv:                                            ; preds = %bb.iy, %bb.iu
  %i.xv = landingpad { ptr, i32 }
          cleanup
  %i.xw = getelementptr inbounds nuw i8, ptr %i.ai, i64 23, !dbg !138505
  %i.xx = load i8, ptr %i.xw, align 1, !dbg !138505, !range !3542, !alias.scope !137750, !noundef !3394
  %i.xy = icmp eq i8 %i.xx, -40, !dbg !138506
  br i1 %i.xy, label %bb.iw, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsfcROwRM8ZtH_11polars_plan.exit441, !dbg !138506, !prof !3463

bb.iw:                                            ; preds = %bb.iv
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ai)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsfcROwRM8ZtH_11polars_plan.exit441 unwind label %bb.df, !dbg !138507

bb.ix:                                            ; preds = %bb.iu
  br i1 %i.xu, label %bb.iy, label %bb.iz, !dbg !138508, !prof !3463

bb.iy:                                            ; preds = %bb.ix
  invoke void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @407, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @413, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @653) #41
          to label %.noexc unwind label %bb.iv, !dbg !138509

.noexc:                                           ; preds = %bb.iy
  unreachable

bb.iz:                                            ; preds = %bb.ix
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !dbg !138510
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aj, ptr noundef nonnull align 8 dereferenceable(24) %i.ai, i64 24, i1 false), !dbg !138510
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !dbg !138502
  %i.xz = load i64, ptr %i.tz, align 16, !dbg !138511, !range !3838, !alias.scope !137751, !noundef !3394
  %i.ya = icmp eq i64 %i.xz, 0, !dbg !138512
  %..i442 = select i1 %i.ya, i64 24, i64 16, !dbg !138513
  %i.yb = getelementptr inbounds nuw i8, ptr %i.tz, i64 %..i442, !dbg !138513
  %.sroa.0.0.i443 = load i64, ptr %i.yb, align 8, !dbg !138513, !alias.scope !137751, !noundef !3394
  invoke void @_RNvMNtNtCs1LHh8CLbVkQ_11polars_core5frame6columnNtB2_6Column9full_null(ptr noalias noundef nonnull sret([160 x i8]) align 16 captures(none) dereferenceable(160) %i.ak, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.aj, i64 noundef %.sroa.0.0.i443, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(48) @610)
          to label %bb.jb unwind label %bb.ja, !dbg !138501

bb.ja:                                            ; preds = %bb.iz
  %i.yc = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 16 dereferenceable(160) %i.ao) #39
          to label %bb.nu unwind label %bb.df, !dbg !138499

bb.jb:                                            ; preds = %bb.iz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !dbg !138514
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %i.aw, ptr noundef nonnull align 16 dereferenceable(160) %i.av, i64 160, i1 false), !dbg !138369
  %i.yd = getelementptr inbounds nuw i8, ptr %i.aw, i64 160, !dbg !138369
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %i.yd, ptr noundef nonnull align 16 dereferenceable(160) %i.ao, i64 160, i1 false), !dbg !138369
  %i.ye = getelementptr inbounds nuw i8, ptr %i.aw, i64 320, !dbg !138369
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %i.ye, ptr noundef nonnull align 16 dereferenceable(160) %i.ak, i64 160, i1 false), !dbg !138369
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !dbg !138499
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !dbg !138499
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !dbg !138499
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !dbg !138515
  %.sroa.5250.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 16, !dbg !138516
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(480) %.sroa.5250.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(480) %i.aw, i64 480, i1 false), !dbg !138517
  store i64 0, ptr %i.v, align 16, !dbg !138516
  %.sroa.4249.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 8, !dbg !138516
  store i64 3, ptr %.sroa.4249.0..sroa_idx, align 8, !dbg !138516
  invoke void @_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnE14extend_trustedINtNtNtCscgRAwXFJnXP_4core5array4iter8IntoIterBG_Kj3_EECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.si, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(496) %i.v)
          to label %bb.jc unwind label %bb.hl, !dbg !138518

bb.jc:                                            ; preds = %bb.jb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !dbg !138519
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !dbg !138520
  call void @llvm.experimental.noalias.scope.decl(metadata !137756), !dbg !138390
  %i.yf = load i8, ptr %i.au, align 16, !dbg !138521, !range !3532, !alias.scope !137756, !noundef !3394
  %i.yg = icmp eq i8 %i.yf, 31, !dbg !138521
  br i1 %i.yg, label %bb.jd, label %bb.jf, !dbg !138521

bb.jd:                                            ; preds = %bb.jc
  %i.yh = getelementptr inbounds nuw i8, ptr %i.au, i64 8, !dbg !138521 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !137757), !dbg !138521
  call void @llvm.experimental.noalias.scope.decl(metadata !137758), !dbg !138522
  call void @llvm.experimental.noalias.scope.decl(metadata !137759), !dbg !138523
  call void @llvm.experimental.noalias.scope.decl(metadata !137760), !dbg !138524
  %i.yi = load ptr, ptr %i.yh, align 8, !dbg !138525, !alias.scope !137761, !nonnull !3394, !noundef !3394
  %i.yj = atomicrmw sub ptr %i.yi, i64 1 release, align 8, !dbg !138526, !noalias !137761
  %i.yk = icmp eq i64 %i.yj, 1, !dbg !138527
  br i1 %i.yk, label %bb.je, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnECsfcROwRM8ZtH_11polars_plan.exit, !dbg !138527

bb.je:                                            ; preds = %bb.jd
  fence acquire, !dbg !138528
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.yh) #42
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnECsfcROwRM8ZtH_11polars_plan.exit unwind label %bb.n, !dbg !138529

bb.jf:                                            ; preds = %bb.jc
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6scalar12ScalarColumnECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 16 dereferenceable(160) %i.au)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnECsfcROwRM8ZtH_11polars_plan.exit unwind label %bb.n, !dbg !138521

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnECsfcROwRM8ZtH_11polars_plan.exit: ; preds = %bb.jd, %bb.je, %bb.jf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !dbg !138390
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !dbg !138530
  br label %bb.fn, !dbg !138531

bb.jg:                                            ; preds = %bb.fr, %bb.fq, %bb.fp
  %.sink10.i.sroa.phi = phi ptr [ %.sroa.5, %bb.fp ], [ %.sroa.8, %bb.fr ], [ %.sroa.5, %bb.fq ]
  %.sink8.i = phi ptr [ %i.qn, %bb.fp ], [ %i.qz, %bb.fr ], [ %i.qn, %bb.fq ]
  %.sink7.i.sroa.phi = phi ptr [ %.sroa.8, %bb.fp ], [ %.sroa.11, %bb.fr ], [ %.sroa.8, %bb.fq ]
  %.sink5.i = phi i64 [ %i.qr, %bb.fp ], [ %i.rb, %bb.fr ], [ %i.qv, %bb.fq ]
  store ptr %.sink8.i, ptr %.sink10.i.sroa.phi, align 8, !dbg !138257, !alias.scope !137649, !noalias !137650
  store i64 %.sink5.i, ptr %.sink7.i.sroa.phi, align 8, !dbg !138257, !alias.scope !137649, !noalias !137650
  %i.yl = getelementptr inbounds nuw i8, ptr %1, i64 64, !dbg !138532 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !137762), !dbg !138532
  %i.ym = load i64, ptr %i.yl, align 16, !dbg !138533, !range !3838, !alias.scope !137762, !noundef !3394
  %i.yn = getelementptr inbounds nuw i8, ptr %1, i64 72, !dbg !138533 ; 7 uses
  switch i64 %i.ym, label %bb.jh [
    i64 0, label %bb.jj
    i64 1, label %bb.jk
  ], !dbg !138533

bb.jh:                                            ; preds = %bb.jg
  call void @llvm.experimental.noalias.scope.decl(metadata !137763), !dbg !138533
  call void @llvm.experimental.noalias.scope.decl(metadata !137764), !dbg !138534
  %i.yo = load ptr, ptr %i.yn, align 8, !dbg !138535, !alias.scope !137765, !nonnull !3394, !noundef !3394
  %i.yp = atomicrmw sub ptr %i.yo, i64 1 release, align 8, !dbg !138536, !noalias !137765
  %i.yq = icmp eq i64 %i.yp, 1, !dbg !138537
  br i1 %i.yq, label %bb.ji, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl12scan_sources11ScanSourcesEBM_.exit, !dbg !138537

bb.ji:                                            ; preds = %bb.jh
  fence acquire, !dbg !138538
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcSINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEE9drop_slowCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.yn) #42
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl12scan_sources11ScanSourcesEBM_.exit unwind label %bb.jm, !dbg !138539

bb.jj:                                            ; preds = %bb.jg
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStorageNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.yn)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl12scan_sources11ScanSourcesEBM_.exit unwind label %bb.jm, !dbg !138540

bb.jk:                                            ; preds = %bb.jg
  call void @llvm.experimental.noalias.scope.decl(metadata !137766), !dbg !138533
  call void @llvm.experimental.noalias.scope.decl(metadata !137767), !dbg !138541
  %i.yr = load ptr, ptr %i.yn, align 8, !dbg !138542, !alias.scope !137768, !nonnull !3394, !noundef !3394
  %i.ys = atomicrmw sub ptr %i.yr, i64 1 release, align 8, !dbg !138543, !noalias !137768
  %i.yt = icmp eq i64 %i.ys, 1, !dbg !138544
  br i1 %i.yt, label %bb.jl, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl12scan_sources11ScanSourcesEBM_.exit, !dbg !138544

bb.jl:                                            ; preds = %bb.jk
  fence acquire, !dbg !138545
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcSNtNtCsh8eZTKRCwoO_3std2fs4FileE9drop_slowCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.yn) #42
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl12scan_sources11ScanSourcesEBM_.exit unwind label %bb.jm, !dbg !138546

bb.jm:                                            ; preds = %bb.jl, %bb.jj, %bb.ji
  %i.yu = landingpad { ptr, i32 }
          cleanup
  store i64 %i.ql, ptr %i.yl, align 16, !dbg !138532
  %.sroa.5.0..sroa.5.0..sroa.5.0..sroa.5.0.copyload = load ptr, ptr %.sroa.5, align 8, !dbg !138532
  store ptr %.sroa.5.0..sroa.5.0..sroa.5.0..sroa.5.0.copyload, ptr %i.yn, align 8, !dbg !138532
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 80, !dbg !138532
  %.sroa.8.0..sroa.8.0..sroa.8.0..sroa.8.0.copyload = load i64, ptr %.sroa.8, align 8, !dbg !138532
  store i64 %.sroa.8.0..sroa.8.0..sroa.8.0..sroa.8.0.copyload, ptr %.sroa.8.0..sroa_idx, align 16, !dbg !138532
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 88, !dbg !138532
  %.sroa.11.0..sroa.11.0..sroa.11.0..sroa.11.0.copyload = load i64, ptr %.sroa.11, align 8, !dbg !138532
  store i64 %.sroa.11.0..sroa.11.0..sroa.11.0..sroa.11.0.copyload, ptr %.sroa.11.0..sroa_idx, align 8, !dbg !138532
  br label %.body400, !dbg !138547

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl12scan_sources11ScanSourcesEBM_.exit: ; preds = %bb.jk, %bb.jh, %bb.ji, %bb.jj, %bb.jl
  store i64 %i.ql, ptr %i.yl, align 16, !dbg !138532
  %.sroa.5.0..sroa.5.0..sroa.5.0..sroa.5.0.copyload509 = load ptr, ptr %.sroa.5, align 8, !dbg !138532
  store ptr %.sroa.5.0..sroa.5.0..sroa.5.0..sroa.5.0.copyload509, ptr %i.yn, align 8, !dbg !138532
  %.sroa.8.0..sroa_idx510 = getelementptr inbounds nuw i8, ptr %1, i64 80, !dbg !138532 ; 2 uses
  %.sroa.8.0..sroa.8.0..sroa.8.0..sroa.8.0.copyload511 = load i64, ptr %.sroa.8, align 8, !dbg !138532
  store i64 %.sroa.8.0..sroa.8.0..sroa.8.0..sroa.8.0.copyload511, ptr %.sroa.8.0..sroa_idx510, align 16, !dbg !138532
  %.sroa.11.0..sroa_idx512 = getelementptr inbounds nuw i8, ptr %1, i64 88, !dbg !138532 ; 2 uses
  %.sroa.11.0..sroa.11.0..sroa.11.0..sroa.11.0.copyload513 = load i64, ptr %.sroa.11, align 8, !dbg !138532
  store i64 %.sroa.11.0..sroa.11.0..sroa.11.0..sroa.11.0.copyload513, ptr %.sroa.11.0..sroa_idx512, align 8, !dbg !138532
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5), !dbg !138547
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8), !dbg !138547
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11), !dbg !138547
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.26), !dbg !138548
  %i.yv = getelementptr inbounds nuw i8, ptr %i.cs, i64 80, !dbg !138549
  %.val354 = load ptr, ptr %i.yv, align 16, !dbg !138550 ; 34 uses
  %i.yw = invoke noundef nonnull align 8 ptr @_RNvMs_NtCsgZ49sUHp3tW_5alloc5boxedINtB4_3BoxNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9file_scan11FileScanDslE13new_uninit_inBM_()
          to label %.noexc453 unwind label %bb.n, !dbg !138551 ; 17 uses

.noexc453:                                        ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl12scan_sources11ScanSourcesEBM_.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val354) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !137769), !dbg !138552
  call void @llvm.experimental.noalias.scope.decl(metadata !137770), !dbg !138553
  call void @llvm.experimental.noalias.scope.decl(metadata !137771), !dbg !138553
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !138554, !noalias !137769
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !138554, !noalias !137769
  %i.yx = load i64, ptr %.val354, align 8, !dbg !138554, !range !3870, !alias.scope !137773, !noalias !137770, !noundef !3394 ; 4 uses
  %i.yy = add nsw i64 %i.yx, -2, !dbg !138554
  %i.yz = icmp samesign ugt i64 %i.yx, 1, !dbg !138554
  %i.za = select i1 %i.yz, i64 %i.yy, i64 7, !dbg !138554
  switch i64 %i.za, label %bb.jn [
    i64 0, label %bb.jo
    i64 1, label %bb.jp
    i64 2, label %bb.jv
    i64 3, label %bb.jw
    i64 4, label %bb.jx
    i64 5, label %bb.jy
    i64 6, label %bb.jz
    i64 7, label %bb.ka
  ], !dbg !138554

bb.jn:                                            ; preds = %.noexc453
  unreachable, !dbg !138555

bb.jo:                                            ; preds = %.noexc453
  %i.zb = getelementptr inbounds nuw i8, ptr %.val354, i64 8, !dbg !138556
  %i.zc = load ptr, ptr %i.zb, align 8, !dbg !138556, !alias.scope !137773, !noalias !137770, !nonnull !3394, !noundef !3394 ; 2 uses
  %i.zd = atomicrmw add ptr %i.zc, i64 1 monotonic, align 8, !dbg !138557, !noalias !137777
  %i.ze = icmp slt i64 %i.zd, 0, !dbg !138558
  br i1 %i.ze, label %bb.kc, label %bb.kb, !dbg !138558

bb.jp:                                            ; preds = %.noexc453
  %i.zf = getelementptr inbounds nuw i8, ptr %.val354, i64 8, !dbg !138559
  call void @llvm.experimental.noalias.scope.decl(metadata !137779), !dbg !138560
  %i.zg = load i64, ptr %i.zf, align 8, !dbg !138561, !range !3524, !alias.scope !137780, !noalias !137781, !noundef !3394
  %i.zh = getelementptr inbounds nuw i8, ptr %.val354, i64 16, !dbg !138561
  %i.zi = load i64, ptr %i.zh, align 8, !dbg !138561, !alias.scope !137780, !noalias !137781 ; 4 uses
  %i.zj = getelementptr inbounds nuw i8, ptr %.val354, i64 32, !dbg !138562
  %i.zk = load i64, ptr %i.zj, align 8, !dbg !138562, !alias.scope !137780, !noalias !137781, !noundef !3394
  %i.zl = getelementptr inbounds nuw i8, ptr %.val354, i64 24, !dbg !138563
  %i.zm = load i64, ptr %i.zl, align 8, !dbg !138563, !range !4162, !alias.scope !137780, !noalias !137781, !noundef !3394
  %i.zn = getelementptr inbounds nuw i8, ptr %.val354, i64 56, !dbg !138564
  %i.zo = load i16, ptr %i.zn, align 8, !dbg !138564, !alias.scope !137780, !noalias !137781
  %i.zp = zext i16 %i.zo to i64, !dbg !138564
  %i.zq = getelementptr inbounds nuw i8, ptr %.val354, i64 40, !dbg !138565
  %i.zr = load ptr, ptr %i.zq, align 8, !dbg !138565, !alias.scope !137780, !noalias !137781, !noundef !3394 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.zr, null, !dbg !138565
  br i1 %.not.i.i.i.i, label %bb.jr, label %bb.jq, !dbg !138566

bb.jq:                                            ; preds = %bb.jp
  %i.zs = atomicrmw add ptr %i.zr, i64 1 monotonic, align 8, !dbg !138567, !noalias !137784
  %i.zt = icmp slt i64 %i.zs, 0, !dbg !138568
  br i1 %i.zt, label %bb.js, label %bb.jr, !dbg !138568

bb.jr:                                            ; preds = %bb.jq, %bb.jp
  %i.zu = getelementptr inbounds nuw i8, ptr %.val354, i64 48, !dbg !138569
  %i.zv = load ptr, ptr %i.zu, align 8, !dbg !138569, !alias.scope !137780, !noalias !137781, !noundef !3394 ; 3 uses
  %.not4.i.i.i.i = icmp eq ptr %i.zv, null, !dbg !138569
  br i1 %.not4.i.i.i.i, label %_RNvXs1U_NtNtCsfcROwRM8ZtH_11polars_plan3dsl7optionsNtB6_17NDJsonReadOptionsNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i.i, label %bb.jt, !dbg !138570

bb.js:                                            ; preds = %bb.jq
  call void @llvm.trap(), !dbg !138571
  unreachable, !dbg !138571

bb.jt:                                            ; preds = %bb.jr
  %i.zw = atomicrmw add ptr %i.zv, i64 1 monotonic, align 8, !dbg !138572, !noalias !137784
  %i.zx = icmp slt i64 %i.zw, 0, !dbg !138573
  br i1 %i.zx, label %bb.ju, label %_RNvXs1U_NtNtCsfcROwRM8ZtH_11polars_plan3dsl7optionsNtB6_17NDJsonReadOptionsNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i.i, !dbg !138573

bb.ju:                                            ; preds = %bb.jt
  call void @llvm.trap(), !dbg !138574
  unreachable, !dbg !138574

_RNvXs1U_NtNtCsfcROwRM8ZtH_11polars_plan3dsl7optionsNtB6_17NDJsonReadOptionsNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i.i: ; preds = %bb.jt, %bb.jr
  %.sroa.18.sroa.0.0.extract.trunc26.i.i = trunc i64 %i.zi to i8, !dbg !138575
  %.sroa.18.sroa.9.0.extract.shift33.i.i = lshr i64 %i.zi, 8, !dbg !138575
  %.sroa.18.sroa.9.0.extract.trunc34.i.i = trunc i64 %.sroa.18.sroa.9.0.extract.shift33.i.i to i8, !dbg !138575
  %.sroa.18.sroa.10.0.extract.shift41.i.i = lshr i64 %i.zi, 16, !dbg !138575
  %.sroa.18.sroa.10.0.extract.trunc42.i.i = trunc i64 %.sroa.18.sroa.10.0.extract.shift41.i.i to i8, !dbg !138575
  %.sroa.18.sroa.11.0.extract.shift49.i.i = and i64 %i.zi, -16777216, !dbg !138576
  %i.zy = inttoptr i64 %i.zp to ptr, !dbg !138575
  br label %bb.ld, !dbg !138577

bb.jv:                                            ; preds = %.noexc453
  %i.zz = getelementptr inbounds nuw i8, ptr %.val354, i64 8, !dbg !138578
  %i.aaa = load ptr, ptr %i.zz, align 8, !dbg !138578, !alias.scope !137773, !noalias !137770, !noundef !3394 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.aaa, null, !dbg !138578
  br i1 %.not.i.i.i, label %bb.ke, label %bb.kd, !dbg !138579

bb.jw:                                            ; preds = %.noexc453
  %.sroa.11.0..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %.val354, i64 8, !dbg !138580
  %.sroa.11.0.copyload3.i.i = load i64, ptr %.sroa.11.0..sroa_idx2.i.i, align 8, !dbg !138580, !alias.scope !137777
  %.sroa.18.0..sroa_idx5.i.i = getelementptr inbounds nuw i8, ptr %.val354, i64 16, !dbg !138580
  %.sroa.18.0.copyload6.i.i = load i64, ptr %.sroa.18.0..sroa_idx5.i.i, align 8, !dbg !138580, !alias.scope !137777 ; 4 uses
  %.sroa.18.sroa.0.0.extract.trunc.i.i = trunc i64 %.sroa.18.0.copyload6.i.i to i8, !dbg !138580
  %.sroa.18.sroa.9.0.extract.shift.i.i = lshr i64 %.sroa.18.0.copyload6.i.i, 8, !dbg !138580
  %.sroa.18.sroa.9.0.extract.trunc.i.i = trunc i64 %.sroa.18.sroa.9.0.extract.shift.i.i to i8, !dbg !138580
  %.sroa.18.sroa.10.0.extract.shift.i.i = lshr i64 %.sroa.18.0.copyload6.i.i, 16, !dbg !138580
  %.sroa.18.sroa.10.0.extract.trunc.i.i = trunc i64 %.sroa.18.sroa.10.0.extract.shift.i.i to i8, !dbg !138580
  %.sroa.18.sroa.11.0.extract.shift.i.i = and i64 %.sroa.18.0.copyload6.i.i, -16777216, !dbg !138576
  %.sroa.23.0..sroa_idx9.i.i = getelementptr inbounds nuw i8, ptr %.val354, i64 24, !dbg !138580
  %.sroa.23.0.copyload10.i.i = load i64, ptr %.sroa.23.0..sroa_idx9.i.i, align 8, !dbg !138580, !alias.scope !137777
  %.sroa.25.0..sroa_idx13.i.i = getelementptr inbounds nuw i8, ptr %.val354, i64 32, !dbg !138580
  %.sroa.25.0.copyload14.i.i = load i64, ptr %.sroa.25.0..sroa_idx13.i.i, align 8, !dbg !138580, !alias.scope !137777
  %.sroa.27.0..sroa_idx15.i.i = getelementptr inbounds nuw i8, ptr %.val354, i64 40, !dbg !138580
  %.sroa.27.0.copyload16.i.i = load ptr, ptr %.sroa.27.0..sroa_idx15.i.i, align 8, !dbg !138580, !alias.scope !137777
  %.sroa.29.0..sroa_idx17.i.i = getelementptr inbounds nuw i8, ptr %.val354, i64 48, !dbg !138580
  %.sroa.29.0.copyload18.i.i = load ptr, ptr %.sroa.29.0..sroa_idx17.i.i, align 8, !dbg !138580, !alias.scope !137777
  %.sroa.31.0..sroa_idx19.i.i = getelementptr inbounds nuw i8, ptr %.val354, i64 56, !dbg !138580
  %.sroa.31.0.copyload20.i.i = load ptr, ptr %.sroa.31.0..sroa_idx19.i.i, align 8, !dbg !138580, !alias.scope !137777
  %.sroa.34.0..sroa_idx21.i.i = getelementptr inbounds nuw i8, ptr %.val354, i64 64, !dbg !138580
  %.sroa.34.0.copyload22.i.i = load ptr, ptr %.sroa.34.0..sroa_idx21.i.i, align 8, !dbg !138580, !alias.scope !137777
  br label %bb.ld, !dbg !138577

bb.jx:                                            ; preds = %.noexc453
  %i.aab = getelementptr inbounds nuw i8, ptr %.val354, i64 8, !dbg !138581
  %i.aac = load ptr, ptr %i.aab, align 8, !dbg !138581, !alias.scope !137773, !noalias !137770, !nonnull !3394, !noundef !3394 ; 2 uses
  %i.aad = atomicrmw add ptr %i.aac, i64 1 monotonic, align 8, !dbg !138582, !noalias !137777
  %i.aae = icmp slt i64 %i.aad, 0, !dbg !138583
  br i1 %i.aae, label %bb.kh, label %bb.kg, !dbg !138583

bb.jy:                                            ; preds = %.noexc453
  %i.aaf = getelementptr inbounds nuw i8, ptr %.val354, i64 8, !dbg !138584 ; 2 uses
  %i.aag = getelementptr inbounds nuw i8, ptr %.val354, i64 31, !dbg !138585
  %i.aah = load i8, ptr %i.aag, align 1, !dbg !138585, !range !3542, !alias.scope !137773, !noalias !137770, !noundef !3394
  %i.aai = icmp eq i8 %i.aah, -40, !dbg !138586
  br i1 %i.aai, label %bb.ki, label %bb.kj, !dbg !138586

bb.jz:                                            ; preds = %.noexc453
  %i.aaj = getelementptr inbounds nuw i8, ptr %.val354, i64 8, !dbg !138587 ; 2 uses
  %i.aak = getelementptr inbounds nuw i8, ptr %.val354, i64 31, !dbg !138588
  %i.aal = load i8, ptr %i.aak, align 1, !dbg !138588, !range !3542, !alias.scope !137773, !noalias !137770, !noundef !3394
  %i.aam = icmp eq i8 %i.aal, -40, !dbg !138589
  br i1 %i.aam, label %bb.kk, label %bb.kl, !dbg !138589

bb.ka:                                            ; preds = %.noexc453
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !138590, !noalias !137777
  %i.aan = getelementptr inbounds nuw i8, ptr %.val354, i64 48, !dbg !138591
  %i.aao = load ptr, ptr %i.aan, align 8, !dbg !138591, !alias.scope !137773, !noalias !137770, !nonnull !3394, !noundef !3394 ; 3 uses
  %i.aap = atomicrmw add ptr %i.aao, i64 1 monotonic, align 8, !dbg !138592, !noalias !137777
  %i.aaq = icmp slt i64 %i.aap, 0, !dbg !138593
  br i1 %i.aaq, label %bb.kn, label %bb.km, !dbg !138593

bb.kb:                                            ; preds = %bb.jo
  %i.aar = ptrtoint ptr %i.zc to i64, !dbg !138594
  br label %bb.ld, !dbg !138577

bb.kc:                                            ; preds = %bb.jo
  call void @llvm.trap(), !dbg !138595
  unreachable, !dbg !138595

bb.kd:                                            ; preds = %bb.jv
  %i.aas = atomicrmw add ptr %i.aaa, i64 1 monotonic, align 8, !dbg !138596, !noalias !137777
  %i.aat = icmp slt i64 %i.aas, 0, !dbg !138597
  br i1 %i.aat, label %bb.kf, label %bb.ke, !dbg !138597

bb.ke:                                            ; preds = %bb.kd, %bb.jv
  %i.aau = getelementptr inbounds nuw i8, ptr %.val354, i64 16, !dbg !138598
  %i.aav = load i8, ptr %i.aau, align 8, !dbg !138598, !range !4380, !alias.scope !137773, !noalias !137770, !noundef !3394
  %i.aaw = getelementptr inbounds nuw i8, ptr %.val354, i64 17, !dbg !138599
  %i.aax = load i8, ptr %i.aaw, align 1, !dbg !138599, !range !3721, !alias.scope !137773, !noalias !137770, !noundef !3394
  %i.aay = getelementptr inbounds nuw i8, ptr %.val354, i64 18, !dbg !138599
  %i.aaz = load i8, ptr %i.aay, align 2, !dbg !138599, !range !3721, !alias.scope !137773, !noalias !137770, !noundef !3394
  %i.aba = ptrtoint ptr %i.aaa to i64, !dbg !138600
  br label %bb.ld, !dbg !138577

bb.kf:                                            ; preds = %bb.kd
  call void @llvm.trap(), !dbg !138601
  unreachable, !dbg !138601

bb.kg:                                            ; preds = %bb.jx
  %i.abb = ptrtoint ptr %i.aac to i64, !dbg !138602
  br label %bb.ld, !dbg !138577

bb.kh:                                            ; preds = %bb.jx
  call void @llvm.trap(), !dbg !138603
  unreachable, !dbg !138603

bb.ki:                                            ; preds = %bb.jy
  invoke void @_RNvNvXs1_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone10clone_heap(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aaf) #42
          to label %.noexc.i452 unwind label %bb.lb, !dbg !138604

bb.kj:                                            ; preds = %bb.jy
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.aaf, i64 24, i1 false), !dbg !138605, !noalias !137770
end_hunk_3
