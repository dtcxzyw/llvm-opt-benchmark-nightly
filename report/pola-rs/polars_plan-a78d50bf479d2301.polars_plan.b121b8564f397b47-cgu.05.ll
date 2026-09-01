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
  %.sroa.01.0.i.i = phi i64 [ %i.ao, %bb.k ], [ %.sroa.0.0.i.i.i, %bb.j ], !dbg !26356
  %.sroa.0.0.i.i = phi ptr [ %i.am, %bb.k ], [ %i.aa, %bb.j ], !dbg !26357
  %i.ap = invoke noundef align 16 ptr @_RINvMs3_NtCse4dvU5uQ85g_8indexmap3mapINtB6_8IndexMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE3geteECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i.i, i64 noundef %.sroa.01.0.i.i)
          to label %bb.n unwind label %.loopexit40, !dbg !26358

bb.n:                                             ; preds = %bb.m
  %.not15 = icmp eq ptr %i.ap, null, !dbg !26363
  br i1 %.not15, label %bb.o, label %.backedge, !dbg !26368

bb.o:                                             ; preds = %bb.n
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aa, i64 23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !26369
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !26370
  %i.ar = load i8, ptr %i.aq, align 1, !dbg !26371, !range !1232, !alias.scope !26379, !noundef !14 ; 2 uses
  %i.as = icmp ugt i8 %i.ar, -41, !dbg !26382
  br i1 %i.as, label %bb.q, label %bb.p, !dbg !26382

bb.p:                                             ; preds = %bb.o
  %i.at = add i8 %i.ar, 64, !dbg !26383
  %i.au = call i8 @llvm.umin.i8(i8 %i.at, i8 24), !dbg !26385
  %.sroa.0.0.i.i.i25 = zext nneg i8 %i.au to i64, !dbg !26385
  br label %bb.r, !dbg !26388

bb.q:                                             ; preds = %bb.o
  %i.av = load ptr, ptr %i.aa, align 8, !dbg !26389, !alias.scope !26379, !noundef !14
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aa, i64 8, !dbg !26390
  %i.ax = load i64, ptr %i.aw, align 8, !dbg !26390, !alias.scope !26379, !noundef !14
  br label %bb.r, !dbg !26391

bb.r:                                             ; preds = %bb.q, %bb.p
  %.sroa.01.0.i.i26 = phi i64 [ %i.ax, %bb.q ], [ %.sroa.0.0.i.i.i25, %bb.p ], !dbg !26392
  %.sroa.0.0.i.i27 = phi ptr [ %i.av, %bb.q ], [ %i.aa, %bb.p ], !dbg !26393
  store ptr %.sroa.0.0.i.i27, ptr %i.b, align 8, !dbg !26370
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !26370
  store i64 %.sroa.01.0.i.i26, ptr %i.ay, align 8, !dbg !26370
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !26394
  store ptr %i.f, ptr %i.a, align 8, !dbg !26394
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !26394
  store ptr @_RNvXs1i_NtCscgRAwXFJnXP_4core3fmtReNtB6_7Display3fmtCsfcROwRM8ZtH_11polars_plan, ptr %.sroa.44.0..sroa_idx, align 8, !dbg !26394
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !26394
  store ptr %i.b, ptr %i.az, align 8, !dbg !26394
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !26394
  store ptr @_RNvXs1i_NtCscgRAwXFJnXP_4core3fmtReNtB6_7Display3fmtCsfcROwRM8ZtH_11polars_plan, ptr %.sroa.48.0..sroa_idx, align 8, !dbg !26394
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 32, !dbg !26394
  store ptr %i.g, ptr %i.ba, align 8, !dbg !26394
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40, !dbg !26394
  store ptr @_RNvXs1g_NtCscgRAwXFJnXP_4core3fmtRINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuENtB6_5Debug3fmtCsfcROwRM8ZtH_11polars_plan, ptr %.sroa.412.0..sroa_idx, align 8, !dbg !26394
  invoke void @_RNvNvNtCsgZ49sUHp3tW_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noundef nonnull @24, ptr noundef nonnull %i.a)
          to label %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgZ49sUHp3tW_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfcROwRM8ZtH_11polars_plan.exit unwind label %.loopexit.split-lp41, !dbg !26397

_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgZ49sUHp3tW_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfcROwRM8ZtH_11polars_plan.exit: ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !26369
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !26369
  invoke void @_RNvXs_CsgjwxzEoLG5s_12polars_errorNtB4_9ErrStringINtNtCscgRAwXFJnXP_4core7convert4FromNtNtCsgZ49sUHp3tW_5alloc6string6StringE4fromCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26)
          to label %bb.s unwind label %.loopexit.split-lp41, !dbg !26403

bb.s:                                             ; preds = %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgZ49sUHp3tW_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfcROwRM8ZtH_11polars_plan.exit
  %.sroa.433.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !26369
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.433.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !dbg !26369
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !26369
  store i64 1, ptr %0, align 8, !dbg !26369
  %i.bb = load ptr, ptr %i.i, align 8, !dbg !26407, !alias.scope !26413, !noundef !14
  %i.bc = icmp eq ptr %i.bb, null, !dbg !26407
  br i1 %i.bc, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3map3MapINtNtBL_7flatten7FlatMapNtNtNtCsfcROwRM8ZtH_11polars_plan5plans8iterator9AExprIterINtNtB4_6option6OptionNtNtB1G_7expr_ir10ColumnNodeEFTNtNtCs2mZqlW55729_12polars_utils5arena4NodeRNtNtB1G_5aexpr5AExprEEB2y_ENCNvNtB1I_5utils24aexpr_to_leaf_names_iter0EEB1I_.exit30, label %bb.t, !dbg !26407

bb.t:                                             ; preds = %bb.s
  %i.bd = getelementptr inbounds nuw i8, ptr %i.e, i64 48, !dbg !26424
  call void @_RNvXs4_NtCs2mZqlW55729_12polars_utils7idx_vecINtB5_7UnitVecNtNtB7_5arena4NodeENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bd), !dbg !26427
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3map3MapINtNtBL_7flatten7FlatMapNtNtNtCsfcROwRM8ZtH_11polars_plan5plans8iterator9AExprIterINtNtB4_6option6OptionNtNtB1G_7expr_ir10ColumnNodeEFTNtNtCs2mZqlW55729_12polars_utils5arena4NodeRNtNtB1G_5aexpr5AExprEEB2y_ENCNvNtB1I_5utils24aexpr_to_leaf_names_iter0EEB1I_.exit30, !dbg !26407

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3map3MapINtNtBL_7flatten7FlatMapNtNtNtCsfcROwRM8ZtH_11polars_plan5plans8iterator9AExprIterINtNtB4_6option6OptionNtNtB1G_7expr_ir10ColumnNodeEFTNtNtCs2mZqlW55729_12polars_utils5arena4NodeRNtNtB1G_5aexpr5AExprEEB2y_ENCNvNtB1I_5utils24aexpr_to_leaf_names_iter0EEB1I_.exit30: ; preds = %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !26352
  br label %bb.l, !dbg !26354

bb.u:                                             ; preds = %bb.i
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #40, !dbg !26429
  unreachable, !dbg !26429

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3map3MapINtNtBL_7flatten7FlatMapNtNtNtCsfcROwRM8ZtH_11polars_plan5plans8iterator9AExprIterINtNtB4_6option6OptionNtNtB1G_7expr_ir10ColumnNodeEFTNtNtCs2mZqlW55729_12polars_utils5arena4NodeRNtNtB1G_5aexpr5AExprEEB2y_ENCNvNtB1I_5utils24aexpr_to_leaf_names_iter0EEB1I_.exit: ; preds = %.body, %bb.i
  resume { ptr, i32 } %.pn.ph, !dbg !26429
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions3dsl25validate_columns_in_inputRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrRINtNtCsgZ49sUHp3tW_5alloc3vec3VecB1l_EEB8_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !26430 {
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
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !26431
  %.val20 = load ptr, ptr %i.g, align 8, !dbg !26431, !nonnull !14, !noundef !14 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !26431
  %.val21 = load i64, ptr %i.h, align 8, !dbg !26431, !noundef !14 ; 2 uses
  %.idx = mul nuw nsw i64 %.val21, 24, !dbg !26432
  %i.i = getelementptr inbounds nuw i8, ptr %.val20, i64 %.idx, !dbg !26432
  %i.j = icmp eq i64 %.val21, 0, !dbg !26446
  br i1 %i.j, label %._crit_edge, label %.lr.ph, !dbg !26451

bb.b:                                             ; preds = %_RNvXNtCscgRAwXFJnXP_4core7convertRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrINtB2_5AsRefeE6as_refCsfcROwRM8ZtH_11polars_plan.exit
  %i.k = icmp eq ptr %i.l, %i.i, !dbg !26446
  br i1 %i.k, label %._crit_edge, label %.lr.ph, !dbg !26451

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.040 = phi ptr [ %i.l, %bb.b ], [ %.val20, %bb.a ] ; 9 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.040, i64 24, !dbg !26452 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.040, i64 23, !dbg !26454
  %i.n = load i8, ptr %i.m, align 1, !dbg !26454, !range !1232, !alias.scope !26463, !noundef !14 ; 2 uses
  %i.o = icmp ugt i8 %i.n, -41, !dbg !26466
  br i1 %i.o, label %bb.d, label %bb.c, !dbg !26466

bb.c:                                             ; preds = %.lr.ph
  %i.p = add i8 %i.n, 64, !dbg !26467
  %i.q = tail call i8 @llvm.umin.i8(i8 %i.p, i8 24), !dbg !26469
  %.sroa.0.0.i.i.i = zext nneg i8 %i.q to i64, !dbg !26469
  br label %_RNvXNtCscgRAwXFJnXP_4core7convertRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrINtB2_5AsRefeE6as_refCsfcROwRM8ZtH_11polars_plan.exit, !dbg !26472

bb.d:                                             ; preds = %.lr.ph
  %i.r = load ptr, ptr %.sroa.0.040, align 8, !dbg !26473, !alias.scope !26463, !noundef !14
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.040, i64 8, !dbg !26474
  %i.t = load i64, ptr %i.s, align 8, !dbg !26474, !alias.scope !26463, !noundef !14
  br label %_RNvXNtCscgRAwXFJnXP_4core7convertRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrINtB2_5AsRefeE6as_refCsfcROwRM8ZtH_11polars_plan.exit, !dbg !26475

_RNvXNtCscgRAwXFJnXP_4core7convertRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrINtB2_5AsRefeE6as_refCsfcROwRM8ZtH_11polars_plan.exit: ; preds = %bb.c, %bb.d
  %.sroa.01.0.i.i = phi i64 [ %i.t, %bb.d ], [ %.sroa.0.0.i.i.i, %bb.c ], !dbg !26476
  %.sroa.0.0.i.i = phi ptr [ %i.r, %bb.d ], [ %.sroa.0.040, %bb.c ], !dbg !26477
  %i.u = tail call noundef align 16 ptr @_RINvMs3_NtCse4dvU5uQ85g_8indexmap3mapINtB6_8IndexMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE3geteECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i.i, i64 noundef %.sroa.01.0.i.i), !dbg !26478
  %.not15 = icmp eq ptr %i.u, null, !dbg !26483
  br i1 %.not15, label %bb.e, label %bb.b, !dbg !26488

._crit_edge:                                      ; preds = %bb.b, %bb.a, %_RNvXNtCscgRAwXFJnXP_4core7convertRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrINtB2_5AsRefeE6as_refCsfcROwRM8ZtH_11polars_plan.exit25
  %storemerge = phi i64 [ 1, %_RNvXNtCscgRAwXFJnXP_4core7convertRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrINtB2_5AsRefeE6as_refCsfcROwRM8ZtH_11polars_plan.exit25 ], [ 18, %bb.a ], [ 18, %bb.b ], !dbg !26489
  store i64 %storemerge, ptr %0, align 8, !dbg !26489
  ret void, !dbg !26490

bb.e:                                             ; preds = %_RNvXNtCscgRAwXFJnXP_4core7convertRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrINtB2_5AsRefeE6as_refCsfcROwRM8ZtH_11polars_plan.exit
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.040, i64 23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !26491
  %i.w = load i8, ptr %i.v, align 1, !dbg !26492, !range !1232, !alias.scope !26500, !noundef !14 ; 2 uses
  %i.x = icmp ugt i8 %i.w, -41, !dbg !26503
  br i1 %i.x, label %bb.g, label %bb.f, !dbg !26503

bb.f:                                             ; preds = %bb.e
  %i.y = add i8 %i.w, 64, !dbg !26504
  %i.z = tail call i8 @llvm.umin.i8(i8 %i.y, i8 24), !dbg !26506
  %.sroa.0.0.i.i.i22 = zext nneg i8 %i.z to i64, !dbg !26506
  br label %_RNvXNtCscgRAwXFJnXP_4core7convertRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrINtB2_5AsRefeE6as_refCsfcROwRM8ZtH_11polars_plan.exit25, !dbg !26509

bb.g:                                             ; preds = %bb.e
  %i.aa = load ptr, ptr %.sroa.0.040, align 8, !dbg !26510, !alias.scope !26500, !noundef !14
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.040, i64 8, !dbg !26511
  %i.ac = load i64, ptr %i.ab, align 8, !dbg !26511, !alias.scope !26500, !noundef !14
  br label %_RNvXNtCscgRAwXFJnXP_4core7convertRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrINtB2_5AsRefeE6as_refCsfcROwRM8ZtH_11polars_plan.exit25, !dbg !26512

_RNvXNtCscgRAwXFJnXP_4core7convertRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrINtB2_5AsRefeE6as_refCsfcROwRM8ZtH_11polars_plan.exit25: ; preds = %bb.f, %bb.g
  %.sroa.01.0.i.i23 = phi i64 [ %i.ac, %bb.g ], [ %.sroa.0.0.i.i.i22, %bb.f ], !dbg !26513
  %.sroa.0.0.i.i24 = phi ptr [ %i.aa, %bb.g ], [ %.sroa.0.040, %bb.f ], !dbg !26514
  store ptr %.sroa.0.0.i.i24, ptr %i.b, align 8, !dbg !26491
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !26491
  store i64 %.sroa.01.0.i.i23, ptr %i.ad, align 8, !dbg !26491
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !26515
  store ptr %i.d, ptr %i.a, align 8, !dbg !26515
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !26515
  store ptr @_RNvXs1i_NtCscgRAwXFJnXP_4core3fmtReNtB6_7Display3fmtCsfcROwRM8ZtH_11polars_plan, ptr %.sroa.44.0..sroa_idx, align 8, !dbg !26515
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !26515
  store ptr %i.b, ptr %i.ae, align 8, !dbg !26515
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !26515
  store ptr @_RNvXs1i_NtCscgRAwXFJnXP_4core3fmtReNtB6_7Display3fmtCsfcROwRM8ZtH_11polars_plan, ptr %.sroa.48.0..sroa_idx, align 8, !dbg !26515
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 32, !dbg !26515
  store ptr %i.e, ptr %i.af, align 8, !dbg !26515
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40, !dbg !26515
  store ptr @_RNvXs1g_NtCscgRAwXFJnXP_4core3fmtRINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuENtB6_5Debug3fmtCsfcROwRM8ZtH_11polars_plan, ptr %.sroa.412.0..sroa_idx, align 8, !dbg !26515
  call void @_RNvNvNtCsgZ49sUHp3tW_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noundef nonnull @24, ptr noundef nonnull %i.a), !dbg !26518
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !26524
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !26524
  %.sroa.429.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !26524
  call void @_RNvXs_CsgjwxzEoLG5s_12polars_errorNtB4_9ErrStringINtNtCscgRAwXFJnXP_4core7convert4FromNtNtCsgZ49sUHp3tW_5alloc6string6StringE4fromCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.429.0..sroa_idx, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26), !dbg !26525
  br label %._crit_edge, !dbg !26529
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer19projection_pushdown18min_dtype_size_colINtNtNtCse4dvU5uQ85g_8indexmap3map4iter4IterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeERB2c_EB8_(ptr noundef nonnull %0, ptr noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !26530 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.5.i.i = alloca i64, align 8              ; 6 uses
  %.sroa.8.i.i = alloca i64, align 8              ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !26533
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !26536
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i), !dbg !26536
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i.i), !dbg !26536
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26541), !dbg !26544
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.c = icmp eq ptr %0, %1, !dbg !26545
  br i1 %i.c, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtCse4dvU5uQ85g_8indexmap3map4iter4IterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeENCINvNvNtNtNtB9_6traits8iterator8Iterator10min_by_key3keyTRB1E_RB2t_EjNCINvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer19projection_pushdown18min_dtype_size_colBW_B4m_E0E0EB3x_4nextB4J_.exit.i.i, label %bb.b, !dbg !26551

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !26552
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !26554
  %i.f = load i8, ptr %0, align 16, !dbg !26558, !range !14842, !alias.scope !26579, !noalias !26582, !noundef !14 ; 2 uses
  switch i8 %i.f, label %bb.d [
    i8 25, label %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator10min_by_key3keyTRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrRNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeEjNCINvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer19projection_pushdown18min_dtype_size_colINtNtNtCse4dvU5uQ85g_8indexmap3map4iter4IterB1j_B29_EB1i_E0E0B3i_.exit.i.i.i
    i8 0, label %bb.c
  ], !dbg !26590

bb.c:                                             ; preds = %bb.b
  br label %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator10min_by_key3keyTRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrRNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeEjNCINvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer19projection_pushdown18min_dtype_size_colINtNtNtCse4dvU5uQ85g_8indexmap3map4iter4IterB1j_B29_EB1i_E0E0B3i_.exit.i.i.i, !dbg !26591

bb.d:                                             ; preds = %bb.b
  %i.g = tail call noundef zeroext i1 @_RNvMs4_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtypeNtB5_8DataType9is_nested(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %0), !dbg !26592, !noalias !26582
  br i1 %i.g, label %.preheader.i.i.i.i.i, label %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator10min_by_key3keyTRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrRNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeEjNCINvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer19projection_pushdown18min_dtype_size_colINtNtNtCse4dvU5uQ85g_8indexmap3map4iter4IterB1j_B29_EB1i_E0E0B3i_.exit.i.i.i, !dbg !26593

.preheader.i.i.i.i.i:                             ; preds = %bb.d, %bb.g
  %i.h = phi i8 [ %.pr.i.i.i.i, %bb.g ], [ %i.f, %bb.d ], !dbg !26594
  %.sroa.03.0.i.i.i.i.i = phi ptr [ %.sroa.03.0.pre.i.i.i.i.i, %bb.g ], [ %0, %bb.d ], !dbg !26602
  %.sroa.01.0.i.i.i.i.i = phi i64 [ %i.k, %bb.g ], [ 0, %bb.d ], !dbg !26603 ; 2 uses
  switch i8 %i.h, label %bb.e [
    i8 22, label %bb.g
    i8 23, label %bb.f
  ], !dbg !26604

bb.e:                                             ; preds = %.preheader.i.i.i.i.i
  %i.i = add i64 %.sroa.01.0.i.i.i.i.i, 32, !dbg !26605
  br label %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator10min_by_key3keyTRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrRNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeEjNCINvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer19projection_pushdown18min_dtype_size_colINtNtNtCse4dvU5uQ85g_8indexmap3map4iter4IterB1j_B29_EB1i_E0E0B3i_.exit.i.i.i, !dbg !26606

bb.f:                                             ; preds = %.preheader.i.i.i.i.i
  br label %bb.g, !dbg !26607

bb.g:                                             ; preds = %bb.f, %.preheader.i.i.i.i.i
  %.sink.i.i.i.i.i = phi i64 [ 8, %bb.f ], [ 16, %.preheader.i.i.i.i.i ]
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i.i.i.i.i, i64 %.sink.i.i.i.i.i, !dbg !26608
  %i.k = add i64 %.sroa.01.0.i.i.i.i.i, 1, !dbg !26609
  %.sroa.03.0.pre.i.i.i.i.i = load ptr, ptr %i.j, align 8, !dbg !26602, !noalias !26582 ; 2 uses
  %.pr.i.i.i.i = load i8, ptr %.sroa.03.0.pre.i.i.i.i.i, align 16, !dbg !26594, !noalias !26582
  br label %.preheader.i.i.i.i.i, !dbg !26610

_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator10min_by_key3keyTRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrRNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeEjNCINvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer19projection_pushdown18min_dtype_size_colINtNtNtCse4dvU5uQ85g_8indexmap3map4iter4IterB1j_B29_EB1i_E0E0B3i_.exit.i.i.i: ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.i.i.i.i.i = phi i64 [ 0, %bb.b ], [ 1, %bb.c ], [ %i.i, %bb.e ], [ 2, %bb.d ], !dbg !26611
  %2 = ptrtoint ptr %i.e to i64, !dbg !26612
  store i64 %2, ptr %.sroa.5.i.i, align 8, !dbg !26612, !alias.scope !26541, !noalias !26613
  br label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtCse4dvU5uQ85g_8indexmap3map4iter4IterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeENCINvNvNtNtNtB9_6traits8iterator8Iterator10min_by_key3keyTRB1E_RB2t_EjNCINvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer19projection_pushdown18min_dtype_size_colBW_B4m_E0E0EB3x_4nextB4J_.exit.i.i, !dbg !26614

_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtCse4dvU5uQ85g_8indexmap3map4iter4IterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeENCINvNvNtNtNtB9_6traits8iterator8Iterator10min_by_key3keyTRB1E_RB2t_EjNCINvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer19projection_pushdown18min_dtype_size_colBW_B4m_E0E0EB3x_4nextB4J_.exit.i.i: ; preds = %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator10min_by_key3keyTRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrRNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeEjNCINvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer19projection_pushdown18min_dtype_size_colINtNtNtCse4dvU5uQ85g_8indexmap3map4iter4IterB1j_B29_EB1i_E0E0B3i_.exit.i.i.i, %bb.a
  %.sroa.06.0.i.i = phi i64 [ undef, %bb.a ], [ %.sroa.0.0.i.i.i.i.i, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator10min_by_key3keyTRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrRNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeEjNCINvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer19projection_pushdown18min_dtype_size_colINtNtNtCse4dvU5uQ85g_8indexmap3map4iter4IterB1j_B29_EB1i_E0E0B3i_.exit.i.i.i ], !dbg !26615
  %.sroa.0.0.i.i = phi ptr [ %0, %bb.a ], [ %i.d, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator10min_by_key3keyTRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrRNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeEjNCINvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer19projection_pushdown18min_dtype_size_colINtNtNtCse4dvU5uQ85g_8indexmap3map4iter4IterB1j_B29_EB1i_E0E0B3i_.exit.i.i.i ]
  %.sink6.i.sroa.phi.i.i = phi ptr [ %.sroa.5.i.i, %bb.a ], [ %.sroa.8.i.i, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator10min_by_key3keyTRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrRNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeEjNCINvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer19projection_pushdown18min_dtype_size_colINtNtNtCse4dvU5uQ85g_8indexmap3map4iter4IterB1j_B29_EB1i_E0E0B3i_.exit.i.i.i ]
  %.sink.i.i.i = phi ptr [ null, %bb.a ], [ %0, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator10min_by_key3keyTRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrRNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeEjNCINvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer19projection_pushdown18min_dtype_size_colINtNtNtCse4dvU5uQ85g_8indexmap3map4iter4IterB1j_B29_EB1i_E0E0B3i_.exit.i.i.i ]
  store ptr %.sink.i.i.i, ptr %.sink6.i.sroa.phi.i.i, align 8, !dbg !26616, !alias.scope !26541, !noalias !26613
  %.sroa.5.i.i.0..sroa.5.i.i.0..sroa.5.i.i.0..sroa.5.i.0..sroa.5.i.0..sroa.5.0..sroa.5.0..sroa.5.8..i.i = load i64, ptr %.sroa.5.i.i, align 8, !dbg !26617, !noalias !26620, !noundef !14 ; 2 uses
  %.not.i.i = icmp eq i64 %.sroa.5.i.i.0..sroa.5.i.i.0..sroa.5.i.i.0..sroa.5.i.0..sroa.5.i.0..sroa.5.0..sroa.5.0..sroa.5.8..i.i, 0, !dbg !26617
  br i1 %.not.i.i, label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtCse4dvU5uQ85g_8indexmap3map4iter4IterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeENCINvNvNtNtNtBa_6traits8iterator8Iterator10min_by_key3keyTRB1z_RB2o_EjNCINvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer19projection_pushdown18min_dtype_size_colBR_B4h_E0E0EB3s_6reduceNCINvNvB3s_6min_by4foldTjB4g_EINvB3q_7compareB4g_jEE0EB4E_.exit.thread.i, label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtCse4dvU5uQ85g_8indexmap3map4iter4IterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeENCINvNvNtNtNtBa_6traits8iterator8Iterator10min_by_key3keyTRB1z_RB2o_EjNCINvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer19projection_pushdown18min_dtype_size_colBR_B4h_E0E0EB3s_6reduceNCINvNvB3s_6min_by4foldTjB4g_EINvB3q_7compareB4g_jEE0EB4E_.exit.i, !dbg !26621

_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtCse4dvU5uQ85g_8indexmap3map4iter4IterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeENCINvNvNtNtNtBa_6traits8iterator8Iterator10min_by_key3keyTRB1z_RB2o_EjNCINvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer19projection_pushdown18min_dtype_size_colBR_B4h_E0E0EB3s_6reduceNCINvNvB3s_6min_by4foldTjB4g_EINvB3q_7compareB4g_jEE0EB4E_.exit.thread.i: ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtCse4dvU5uQ85g_8indexmap3map4iter4IterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeENCINvNvNtNtNtB9_6traits8iterator8Iterator10min_by_key3keyTRB1E_RB2t_EjNCINvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer19projection_pushdown18min_dtype_size_colBW_B4m_E0E0EB3x_4nextB4J_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i), !dbg !26622
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i), !dbg !26622
  br label %_RINvYINtNtNtCse4dvU5uQ85g_8indexmap3map4iter4IterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator10min_by_keyjNCINvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer19projection_pushdown18min_dtype_size_colB3_RBL_E0EB3Q_.exit, !dbg !26623

_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtCse4dvU5uQ85g_8indexmap3map4iter4IterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeENCINvNvNtNtNtBa_6traits8iterator8Iterator10min_by_key3keyTRB1z_RB2o_EjNCINvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer19projection_pushdown18min_dtype_size_colBR_B4h_E0E0EB3s_6reduceNCINvNvB3s_6min_by4foldTjB4g_EINvB3q_7compareB4g_jEE0EB4E_.exit.i: ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtCse4dvU5uQ85g_8indexmap3map4iter4IterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeENCINvNvNtNtNtB9_6traits8iterator8Iterator10min_by_key3keyTRB1E_RB2t_EjNCINvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer19projection_pushdown18min_dtype_size_colBW_B4m_E0E0EB3x_4nextB4J_.exit.i.i
  %.sroa.8.i.i.0..sroa.8.i.i.0..sroa.8.i.i.0..sroa.8.i.0..sroa.8.i.0..sroa.8.0..sroa.8.0..sroa.8.0.copyload.i.i = load i64, ptr %.sroa.8.i.i, align 8, !dbg !26626, !noalias !26620
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i), !dbg !26622
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i), !dbg !26622
  store i64 %.sroa.06.0.i.i, ptr %i.a, align 8, !dbg !26536, !noalias !26620
  %.sroa.510.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !26536
  store i64 %.sroa.5.i.i.0..sroa.5.i.i.0..sroa.5.i.i.0..sroa.5.i.0..sroa.5.i.0..sroa.5.0..sroa.5.0..sroa.5.8..i.i, ptr %.sroa.510.0..sroa_idx.i.i, align 8, !dbg !26536, !noalias !26620
  %.sroa.611.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !26536
  store i64 %.sroa.8.i.i.0..sroa.8.i.i.0..sroa.8.i.i.0..sroa.8.i.0..sroa.8.i.0..sroa.8.0..sroa.8.0..sroa.8.0.copyload.i.i, ptr %.sroa.611.0..sroa_idx.i.i, align 8, !dbg !26536, !noalias !26620
  call void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtCse4dvU5uQ85g_8indexmap3map4iter4IterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeENCINvNvNtNtNtBa_6traits8iterator8Iterator10min_by_key3keyTRB1F_RB2u_EjNCINvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer19projection_pushdown18min_dtype_size_colBX_B4n_E0E0EB3y_4foldTjB4m_ENCINvNvB3y_6min_by4foldB6r_INvB3w_7compareB4m_jEE0EB4K_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull %.sroa.0.0.i.i, ptr noundef nonnull %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !dbg !26627
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !dbg !26629
  br label %_RINvYINtNtNtCse4dvU5uQ85g_8indexmap3map4iter4IterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator10min_by_keyjNCINvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer19projection_pushdown18min_dtype_size_colB3_RBL_E0EB3Q_.exit, !dbg !26623

_RINvYINtNtNtCse4dvU5uQ85g_8indexmap3map4iter4IterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator10min_by_keyjNCINvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer19projection_pushdown18min_dtype_size_colB3_RBL_E0EB3Q_.exit: ; preds = %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtCse4dvU5uQ85g_8indexmap3map4iter4IterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeENCINvNvNtNtNtBa_6traits8iterator8Iterator10min_by_key3keyTRB1z_RB2o_EjNCINvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer19projection_pushdown18min_dtype_size_colBR_B4h_E0E0EB3s_6reduceNCINvNvB3s_6min_by4foldTjB4g_EINvB3q_7compareB4g_jEE0EB4E_.exit.i, %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtCse4dvU5uQ85g_8indexmap3map4iter4IterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeENCINvNvNtNtNtBa_6traits8iterator8Iterator10min_by_key3keyTRB1z_RB2o_EjNCINvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer19projection_pushdown18min_dtype_size_colBR_B4h_E0E0EB3s_6reduceNCINvNvB3s_6min_by4foldTjB4g_EINvB3q_7compareB4g_jEE0EB4E_.exit.thread.i
  %i.l = phi ptr [ %.pre.i, %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtCse4dvU5uQ85g_8indexmap3map4iter4IterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeENCINvNvNtNtNtBa_6traits8iterator8Iterator10min_by_key3keyTRB1z_RB2o_EjNCINvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer19projection_pushdown18min_dtype_size_colBR_B4h_E0E0EB3s_6reduceNCINvNvB3s_6min_by4foldTjB4g_EINvB3q_7compareB4g_jEE0EB4E_.exit.i ], [ null, %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtCse4dvU5uQ85g_8indexmap3map4iter4IterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeENCINvNvNtNtNtBa_6traits8iterator8Iterator10min_by_key3keyTRB1z_RB2o_EjNCINvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer19projection_pushdown18min_dtype_size_colBR_B4h_E0E0EB3s_6reduceNCINvNvB3s_6min_by4foldTjB4g_EINvB3q_7compareB4g_jEE0EB4E_.exit.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !26630
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !26631
  ret ptr %i.l, !dbg !26632
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNtCs1LHh8CLbVkQ_11polars_core6scalarNtB3_6ScalarNtNtCscgRAwXFJnXP_4core4hash4Hash4hashNtNtCsk79RHlfmHDk_8foldhash7quality10FoldHasherECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(96) %0, ptr noalias noundef align 16 dereferenceable(48) %1) unnamed_addr #0 !dbg !26633 {
bb.a:
  tail call void @_RINvXs1_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtypeNtB6_8DataTypeNtNtCscgRAwXFJnXP_4core4hash4Hash4hashNtNtCsk79RHlfmHDk_8foldhash7quality10FoldHasherECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias noundef nonnull align 16 dereferenceable(48) %1), !dbg !26635
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !26636
  tail call void @_RINvMs4_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB6_8AnyValue9hash_implNtNtCsk79RHlfmHDk_8foldhash7quality10FoldHasherECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.a, ptr noalias noundef nonnull align 16 dereferenceable(48) %1, i1 noundef zeroext false), !dbg !26637
  ret void, !dbg !26638
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNtCse4dvU5uQ85g_8indexmap5serdeINtNtB5_3map8IndexMapjINtNtCsgZ49sUHp3tW_5alloc4sync3ArcSNtNtBZ_6string6StringENtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateENtNtCs40veMcpUDl8_10serde_core3ser9Serialize9serializeQINtNtCs721FSB8TeJg_9rmp_serde6encode10SerializerINtNtBZ_3vec3VechEEECsfcROwRM8ZtH_11polars_plan(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #0 !dbg !26639 {
bb.a:
  tail call void @_RINvYQINtNtCs721FSB8TeJg_9rmp_serde6encode10SerializerINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_mapRjRINtNtBV_4sync3ArcSNtNtBV_6string6StringERINtNtCse4dvU5uQ85g_8indexmap3map8IndexMapjB2q_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(32) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1), !dbg !26643
  ret void, !dbg !26644
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNtCse4dvU5uQ85g_8indexmap5serdeINtNtB5_3map8IndexMapjINtNtCsgZ49sUHp3tW_5alloc4sync3ArcSNtNtBZ_6string6StringENtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateENtNtCs40veMcpUDl8_10serde_core3ser9Serialize9serializeQINtNtCs721FSB8TeJg_9rmp_serde6encode10SerializerQINtNtBZ_3vec3VechEINtNtB3A_6config15StructMapConfigNtB4D_13DefaultConfigEEECsfcROwRM8ZtH_11polars_plan(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 dereferenceable(16) %2) unnamed_addr #0 !dbg !26645 {
bb.a:
  tail call void @_RINvYQINtNtCs721FSB8TeJg_9rmp_serde6encode10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEINtNtB9_6config15StructMapConfigNtB1t_13DefaultConfigEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_mapRjRINtNtBW_4sync3ArcSNtNtBW_6string6StringERINtNtCse4dvU5uQ85g_8indexmap3map8IndexMapjB3j_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(16) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1), !dbg !26646
  ret void, !dbg !26647
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNtCse4dvU5uQ85g_8indexmap5serdeINtNtB5_3map8IndexMapmINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNtNtCsgZ49sUHp3tW_5alloc6string6StringENtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateENtNtCs40veMcpUDl8_10serde_core3ser9Serialize9serializeQINtNtCs721FSB8TeJg_9rmp_serde6encode10SerializerINtNtB2r_3vec3VechEEECsfcROwRM8ZtH_11polars_plan(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #0 !dbg !26648 {
bb.a:
  tail call void @_RINvYQINtNtCs721FSB8TeJg_9rmp_serde6encode10SerializerINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_mapRmRINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNtNtBV_6string6StringERINtNtCse4dvU5uQ85g_8indexmap3map8IndexMapmB2q_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(32) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1), !dbg !26649
  ret void, !dbg !26650
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNtCse4dvU5uQ85g_8indexmap5serdeINtNtB5_3map8IndexMapmINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNtNtCsgZ49sUHp3tW_5alloc6string6StringENtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateENtNtCs40veMcpUDl8_10serde_core3ser9Serialize9serializeQINtNtCs721FSB8TeJg_9rmp_serde6encode10SerializerQINtNtB2r_3vec3VechEINtNtB4L_6config15StructMapConfigNtB5P_13DefaultConfigEEECsfcROwRM8ZtH_11polars_plan(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 dereferenceable(16) %2) unnamed_addr #0 !dbg !26651 {
bb.a:
  tail call void @_RINvYQINtNtCs721FSB8TeJg_9rmp_serde6encode10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEINtNtB9_6config15StructMapConfigNtB1t_13DefaultConfigEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_mapRmRINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNtNtBW_6string6StringERINtNtCse4dvU5uQ85g_8indexmap3map8IndexMapmB3j_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(16) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1), !dbg !26652
  ret void, !dbg !26653
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNtCse4dvU5uQ85g_8indexmap5serdeINtNtB5_3map8IndexMapmINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNtNtCsgZ49sUHp3tW_5alloc6string6StringENtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateENtNtCs40veMcpUDl8_10serde_core3ser9Serialize9serializeQINtNtCs721FSB8TeJg_9rmp_serde6encode13ExtSerializerINtNtB2r_3vec3VechEEECsfcROwRM8ZtH_11polars_plan(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 dereferenceable(24) %2) unnamed_addr #0 !dbg !26654 {
bb.a:
  tail call void @_RINvYQINtNtCs721FSB8TeJg_9rmp_serde6encode13ExtSerializerINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_mapRmRINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNtNtBY_6string6StringERINtNtCse4dvU5uQ85g_8indexmap3map8IndexMapmB2t_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1), !dbg !26655
  ret void, !dbg !26656
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNtCse4dvU5uQ85g_8indexmap5serdeINtNtB5_3map8IndexMapmINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNtNtCsgZ49sUHp3tW_5alloc6string6StringENtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateENtNtCs40veMcpUDl8_10serde_core3ser9Serialize9serializeQINtNtCs721FSB8TeJg_9rmp_serde6encode13ExtSerializerQINtNtB2r_3vec3VechEEECsfcROwRM8ZtH_11polars_plan(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 dereferenceable(24) %2) unnamed_addr #0 !dbg !26657 {
bb.a:
  tail call void @_RINvYQINtNtCs721FSB8TeJg_9rmp_serde6encode13ExtSerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_mapRmRINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNtNtBZ_6string6StringERINtNtCse4dvU5uQ85g_8indexmap3map8IndexMapmB2u_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1), !dbg !26658
  ret void, !dbg !26659
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNtCse4dvU5uQ85g_8indexmap5serdeINtNtB5_3map8IndexMapmNtNtCs1LHh8CLbVkQ_11polars_core6scalar6ScalarNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateENtNtCs40veMcpUDl8_10serde_core3ser9Serialize9serializeQINtNtCs721FSB8TeJg_9rmp_serde6encode10SerializerINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEECsfcROwRM8ZtH_11polars_plan(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #0 !dbg !26660 {
bb.a:
  tail call void @_RINvYQINtNtCs721FSB8TeJg_9rmp_serde6encode10SerializerINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_mapRmRNtNtCs1LHh8CLbVkQ_11polars_core6scalar6ScalarRINtNtCse4dvU5uQ85g_8indexmap3map8IndexMapmB2q_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(32) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1), !dbg !26661
  ret void, !dbg !26662
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNtCse4dvU5uQ85g_8indexmap5serdeINtNtB5_3map8IndexMapmNtNtCs1LHh8CLbVkQ_11polars_core6scalar6ScalarNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateENtNtCs40veMcpUDl8_10serde_core3ser9Serialize9serializeQINtNtCs721FSB8TeJg_9rmp_serde6encode10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEINtNtB3o_6config15StructMapConfigNtB4I_13DefaultConfigEEECsfcROwRM8ZtH_11polars_plan(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 dereferenceable(16) %2) unnamed_addr #0 !dbg !26663 {
bb.a:
  tail call void @_RINvYQINtNtCs721FSB8TeJg_9rmp_serde6encode10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEINtNtB9_6config15StructMapConfigNtB1t_13DefaultConfigEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_mapRmRNtNtCs1LHh8CLbVkQ_11polars_core6scalar6ScalarRINtNtCse4dvU5uQ85g_8indexmap3map8IndexMapmB3j_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(16) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1), !dbg !26664
  ret void, !dbg !26665
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNtCse4dvU5uQ85g_8indexmap5serdeINtNtB5_3map8IndexMapmNtNtCs1LHh8CLbVkQ_11polars_core6scalar6ScalarNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateENtNtCs40veMcpUDl8_10serde_core3ser9Serialize9serializeQINtNtCs721FSB8TeJg_9rmp_serde6encode13ExtSerializerINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEECsfcROwRM8ZtH_11polars_plan(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 dereferenceable(24) %2) unnamed_addr #0 !dbg !26666 {
bb.a:
  tail call void @_RINvYQINtNtCs721FSB8TeJg_9rmp_serde6encode13ExtSerializerINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_mapRmRNtNtCs1LHh8CLbVkQ_11polars_core6scalar6ScalarRINtNtCse4dvU5uQ85g_8indexmap3map8IndexMapmB2t_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1), !dbg !26667
  ret void, !dbg !26668
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNtCse4dvU5uQ85g_8indexmap5serdeINtNtB5_3map8IndexMapmNtNtCs1LHh8CLbVkQ_11polars_core6scalar6ScalarNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateENtNtCs40veMcpUDl8_10serde_core3ser9Serialize9serializeQINtNtCs721FSB8TeJg_9rmp_serde6encode13ExtSerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEECsfcROwRM8ZtH_11polars_plan(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 dereferenceable(24) %2) unnamed_addr #0 !dbg !26669 {
bb.a:
  tail call void @_RINvYQINtNtCs721FSB8TeJg_9rmp_serde6encode13ExtSerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_mapRmRNtNtCs1LHh8CLbVkQ_11polars_core6scalar6ScalarRINtNtCse4dvU5uQ85g_8indexmap3map8IndexMapmB2u_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1), !dbg !26670
  ret void, !dbg !26671
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNtCse4dvU5uQ85g_8indexmap5serdeINtNtB5_3map8IndexMapmNtNtNtCs1LHh8CLbVkQ_11polars_core6schema7iceberg13IcebergColumnNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateENtNtCs40veMcpUDl8_10serde_core3ser9Serialize9serializeQINtNtCs721FSB8TeJg_9rmp_serde6encode10SerializerINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEECsfcROwRM8ZtH_11polars_plan(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #0 !dbg !26672 {
bb.a:
  tail call void @_RINvYQINtNtCs721FSB8TeJg_9rmp_serde6encode10SerializerINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_mapRmRNtNtNtCs1LHh8CLbVkQ_11polars_core6schema7iceberg13IcebergColumnRINtNtCse4dvU5uQ85g_8indexmap3map8IndexMapmB2q_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(32) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1), !dbg !26673
  ret void, !dbg !26674
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNtCse4dvU5uQ85g_8indexmap5serdeINtNtB5_3map8IndexMapmNtNtNtCs1LHh8CLbVkQ_11polars_core6schema7iceberg13IcebergColumnNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateENtNtCs40veMcpUDl8_10serde_core3ser9Serialize9serializeQINtNtCs721FSB8TeJg_9rmp_serde6encode10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEINtNtB3G_6config15StructMapConfigNtB50_13DefaultConfigEEECsfcROwRM8ZtH_11polars_plan(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 dereferenceable(16) %2) unnamed_addr #0 !dbg !26675 {
bb.a:
  tail call void @_RINvYQINtNtCs721FSB8TeJg_9rmp_serde6encode10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEINtNtB9_6config15StructMapConfigNtB1t_13DefaultConfigEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_mapRmRNtNtNtCs1LHh8CLbVkQ_11polars_core6schema7iceberg13IcebergColumnRINtNtCse4dvU5uQ85g_8indexmap3map8IndexMapmB3j_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(16) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1), !dbg !26676
  ret void, !dbg !26677
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNtCse4dvU5uQ85g_8indexmap5serdeINtNtB5_3map8IndexMapmNtNtNtCs1LHh8CLbVkQ_11polars_core6schema7iceberg13IcebergColumnNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateENtNtCs40veMcpUDl8_10serde_core3ser9Serialize9serializeQINtNtCs721FSB8TeJg_9rmp_serde6encode13ExtSerializerINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEECsfcROwRM8ZtH_11polars_plan(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 dereferenceable(24) %2) unnamed_addr #0 !dbg !26678 {
bb.a:
  tail call void @_RINvYQINtNtCs721FSB8TeJg_9rmp_serde6encode13ExtSerializerINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_mapRmRNtNtNtCs1LHh8CLbVkQ_11polars_core6schema7iceberg13IcebergColumnRINtNtCse4dvU5uQ85g_8indexmap3map8IndexMapmB2t_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1), !dbg !26679
  ret void, !dbg !26680
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNtCse4dvU5uQ85g_8indexmap5serdeINtNtB5_3map8IndexMapmNtNtNtCs1LHh8CLbVkQ_11polars_core6schema7iceberg13IcebergColumnNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateENtNtCs40veMcpUDl8_10serde_core3ser9Serialize9serializeQINtNtCs721FSB8TeJg_9rmp_serde6encode13ExtSerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEECsfcROwRM8ZtH_11polars_plan(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 dereferenceable(24) %2) unnamed_addr #0 !dbg !26681 {
bb.a:
  tail call void @_RINvYQINtNtCs721FSB8TeJg_9rmp_serde6encode13ExtSerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_mapRmRNtNtNtCs1LHh8CLbVkQ_11polars_core6schema7iceberg13IcebergColumnRINtNtCse4dvU5uQ85g_8indexmap3map8IndexMapmB2u_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1), !dbg !26682
  ret void, !dbg !26683
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNtNtCs1LHh8CLbVkQ_11polars_core6scalar5serdeNtB5_6ScalarNtNtCs40veMcpUDl8_10serde_core3ser9Serialize9serializeINtNtCs6ti0Crti64P_13serde_stacker3ser10SerializerQINtNtCs721FSB8TeJg_9rmp_serde6encode10SerializerINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEEECsfcROwRM8ZtH_11polars_plan(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(96) %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !26684 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [72 x i8], align 8                ; 2 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [96 x i8], align 16               ; 4 uses
  %i.e = alloca [80 x i8], align 16               ; 8 uses
  %.sroa.67 = alloca [31 x i8], align 1           ; 6 uses
  %.sroa.6 = alloca [31 x i8], align 1            ; 5 uses
  %i.f = alloca [80 x i8], align 16               ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !26688
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6), !dbg !26688
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.67), !dbg !26688
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !26688
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !26689
  call fastcc void @_RNvXs1_NtCs1LHh8CLbVkQ_11polars_core6scalarNtB5_6ScalarNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(96) %i.d, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(96) %1), !dbg !26690
  call void @_RNvXs0_NtNtCs1LHh8CLbVkQ_11polars_core6scalar5serdeNtB5_18SerializableScalarINtNtCscgRAwXFJnXP_4core7convert7TryFromNtB7_6ScalarE8try_from(ptr noalias noundef nonnull sret([80 x i8]) align 16 captures(none) dereferenceable(80) %i.e, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(96) %i.d), !dbg !26688
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !26691
  %i.g = load i8, ptr %i.e, align 16, !dbg !26692, !range !26695, !noundef !14 ; 2 uses
  %i.h = icmp eq i8 %i.g, 27, !dbg !26692
  br i1 %i.h, label %bb.b, label %bb.c, !dbg !26696

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !26697
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.b, ptr noundef nonnull align 8 dereferenceable(72) %i.i, i64 72, i1 false), !dbg !26697
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !26698
  call void @_RINvXs1_NtCs721FSB8TeJg_9rmp_serde6encodeNtB6_5ErrorNtNtCs40veMcpUDl8_10serde_core3ser5Error6customNtCsgjwxzEoLG5s_12polars_error11PolarsErrorECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(72) %i.b), !dbg !26700
  %.sroa.67.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.67, i64 7, !dbg !26702 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.67.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !dbg !26702
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !26703
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !26704
  %.sroa.6.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.6, i64 7, !dbg !26705 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.6.8..sroa_idx, ptr noundef nonnull align 1 dereferenceable(24) %.sroa.67.8..sroa_idx, i64 24, i1 false), !dbg !26705
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.67), !dbg !26708
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(24) %.sroa.6.8..sroa_idx, i64 24, i1 false), !dbg !26708
  br label %bb.f, !dbg !26709

bb.c:                                             ; preds = %bb.a
  %.sroa.515.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 1, !dbg !26710
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.67, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.515.0..sroa_idx, i64 31, i1 false), !dbg !26710
  %.sroa.616.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 32, !dbg !26710
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 32, !dbg !26711
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(48) %.sroa.616.0..sroa_idx, i64 48, i1 false), !dbg !26710
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !26704
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.6, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.67, i64 31, i1 false), !dbg !26714
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.67), !dbg !26708
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 1, !dbg !26711
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.6, i64 31, i1 false), !dbg !26688
  store i8 %i.g, ptr %i.f, align 16, !dbg !26711
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !26715
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !dbg !26715
  invoke void @_RINvXNvNtNtCs1LHh8CLbVkQ_11polars_core6scalar5serde1__NtB5_18SerializableScalarNtNtCs40veMcpUDl8_10serde_core3ser9Serialize9serializeINtNtCs6ti0Crti64P_13serde_stacker3ser10SerializerQINtNtCs721FSB8TeJg_9rmp_serde6encode10SerializerINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(80) %i.f, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.c)
          to label %bb.e unwind label %bb.d, !dbg !26716

bb.d:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core6scalar5serde18SerializableScalarECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 16 dereferenceable(80) %i.f) #39
          to label %bb.h unwind label %bb.g, !dbg !26717

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !26717
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core6scalar5serde18SerializableScalarECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 16 dereferenceable(80) %i.f), !dbg !26717
  br label %bb.f, !dbg !26709

bb.f:                                             ; preds = %bb.b, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6), !dbg !26717
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !26717
  ret void, !dbg !26718

bb.g:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #40, !dbg !26719
  unreachable, !dbg !26719

bb.h:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.j, !dbg !26719
}

end_hunk_0
begin_hunk_1_@_RNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer15expand_datasets15expand_datasets:bb.a
          to label %bb.y unwind label %bb.d, !dbg !135606

bb.y:                                             ; preds = %_RINvMs0_NtNtCsh8eZTKRCwoO_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtCsidoPH4Qgqxm_12polars_async14RuntimeManagerE5force0ECsfcROwRM8ZtH_11polars_plan.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !135607
  %i.aq = load i64, ptr %i.d, align 8, !dbg !135608, !range !2496, !noundef !14
  %.not1 = icmp eq i64 %i.aq, 18, !dbg !135608
  br i1 %.not1, label %bb.aa, label %bb.z, !dbg !135612

bb.z:                                             ; preds = %bb.y
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.d, i64 72, i1 false), !dbg !135613
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !135614
  br label %bb.ag, !dbg !135615

bb.aa:                                            ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !135614
  br label %bb.v, !dbg !135617

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer15expand_datasets23PyScanResolveThreadPoolEEEB1I_.exit: ; preds = %bb.b, %.body14, %bb.c, %bb.ab
  %.pn5 = phi { ptr, i32 } [ %i.ar, %bb.ab ], [ %.pn3, %bb.c ], [ %.pn3, %.body14 ], [ %.pn3, %bb.b ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCslt8cbK4E2O5_12futures_util6stream17futures_unordered16FuturesUnorderedINtNtNtCs2mZqlW55729_12polars_utils11async_utils16tokio_handle_ext17AbortOnDropHandleTNtNtB24_5arena4NodeINtNtB4_6result6ResultNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir2IRNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEEEEB46_(ptr noalias noundef align 8 dereferenceable(24) %i.j) #39
          to label %common.resume unwind label %bb.aq, !dbg !135618

bb.ab:                                            ; preds = %bb.ai, %bb.x
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer15expand_datasets23PyScanResolveThreadPoolEEEB1I_.exit

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer15expand_datasets23PyScanResolveThreadPoolEEEB1I_.exit18: ; preds = %bb.w, %bb.v, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !135504
  invoke void @_RNvXs8_NtNtCslt8cbK4E2O5_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtNtCs2mZqlW55729_12polars_utils11async_utils16tokio_handle_ext17AbortOnDropHandleTNtNtB1w_5arena4NodeINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir2IRNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEEENtNtNtB3b_3ops4drop4Drop4dropB3O_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %bb.ae unwind label %bb.ac, !dbg !135619

bb.ac:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer15expand_datasets23PyScanResolveThreadPoolEEEB1I_.exit18
  %i.as = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !135621), !dbg !135619
  call void @llvm.experimental.noalias.scope.decl(metadata !135624), !dbg !135627
  %i.at = load ptr, ptr %i.j, align 8, !dbg !135629, !alias.scope !135633, !nonnull !14, !noundef !14
  %i.au = atomicrmw sub ptr %i.at, i64 1 release, align 8, !dbg !135636, !noalias !135639
  %i.av = icmp eq i64 %i.au, 1, !dbg !135640
  br i1 %i.av, label %bb.ad, label %common.resume, !dbg !135640

bb.ad:                                            ; preds = %bb.ac
  fence acquire, !dbg !135641
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtNtNtCslt8cbK4E2O5_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtNtCs2mZqlW55729_12polars_utils11async_utils16tokio_handle_ext17AbortOnDropHandleTNtNtB2p_5arena4NodeINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir2IRNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEEEE9drop_slowB4H_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j) #42
          to label %common.resume unwind label %bb.af, !dbg !135643

bb.ae:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer15expand_datasets23PyScanResolveThreadPoolEEEB1I_.exit18
  call void @llvm.experimental.noalias.scope.decl(metadata !135644), !dbg !135619
  call void @llvm.experimental.noalias.scope.decl(metadata !135647), !dbg !135650
  %i.aw = load ptr, ptr %i.j, align 8, !dbg !135652, !alias.scope !135656, !nonnull !14, !noundef !14
  %i.ax = atomicrmw sub ptr %i.aw, i64 1 release, align 8, !dbg !135657, !noalias !135660
  %i.ay = icmp eq i64 %i.ax, 1, !dbg !135661
  br i1 %i.ay, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCslt8cbK4E2O5_12futures_util6stream17futures_unordered16FuturesUnorderedINtNtNtCs2mZqlW55729_12polars_utils11async_utils16tokio_handle_ext17AbortOnDropHandleTNtNtB24_5arena4NodeINtNtB4_6result6ResultNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir2IRNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEEEEB46_.exit27.sink.split, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCslt8cbK4E2O5_12futures_util6stream17futures_unordered16FuturesUnorderedINtNtNtCs2mZqlW55729_12polars_utils11async_utils16tokio_handle_ext17AbortOnDropHandleTNtNtB24_5arena4NodeINtNtB4_6result6ResultNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir2IRNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEEEEB46_.exit27, !dbg !135661

bb.af:                                            ; preds = %bb.ad
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #40, !dbg !135619
  unreachable, !dbg !135619

common.resume:                                    ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer15expand_datasets23PyScanResolveThreadPoolEEEB1I_.exit, %bb.am, %bb.an, %bb.ac, %bb.ad
  %common.resume.op = phi { ptr, i32 } [ %i.bg, %bb.am ], [ %i.as, %bb.ac ], [ %i.as, %bb.ad ], [ %i.bg, %bb.an ], [ %.pn5, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer15expand_datasets23PyScanResolveThreadPoolEEEB1I_.exit ]
  resume { ptr, i32 } %common.resume.op, !dbg !135662

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCslt8cbK4E2O5_12futures_util6stream17futures_unordered16FuturesUnorderedINtNtNtCs2mZqlW55729_12polars_utils11async_utils16tokio_handle_ext17AbortOnDropHandleTNtNtB24_5arena4NodeINtNtB4_6result6ResultNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir2IRNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEEEEB46_.exit27.sink.split: ; preds = %bb.ae, %bb.ao
  fence acquire, !dbg !135663
  call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtNtNtCslt8cbK4E2O5_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtNtCs2mZqlW55729_12polars_utils11async_utils16tokio_handle_ext17AbortOnDropHandleTNtNtB2p_5arena4NodeINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir2IRNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEEEE9drop_slowB4H_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j) #42, !dbg !135667
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCslt8cbK4E2O5_12futures_util6stream17futures_unordered16FuturesUnorderedINtNtNtCs2mZqlW55729_12polars_utils11async_utils16tokio_handle_ext17AbortOnDropHandleTNtNtB24_5arena4NodeINtNtB4_6result6ResultNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir2IRNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEEEEB46_.exit27, !dbg !135618

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCslt8cbK4E2O5_12futures_util6stream17futures_unordered16FuturesUnorderedINtNtNtCs2mZqlW55729_12polars_utils11async_utils16tokio_handle_ext17AbortOnDropHandleTNtNtB24_5arena4NodeINtNtB4_6result6ResultNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir2IRNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEEEEB46_.exit27: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCslt8cbK4E2O5_12futures_util6stream17futures_unordered16FuturesUnorderedINtNtNtCs2mZqlW55729_12polars_utils11async_utils16tokio_handle_ext17AbortOnDropHandleTNtNtB24_5arena4NodeINtNtB4_6result6ResultNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir2IRNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEEEEB46_.exit27.sink.split, %bb.ae, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !135618
  ret void, !dbg !135668

bb.ag:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs2mZqlW55729_12polars_utils5arena4NodeEECsfcROwRM8ZtH_11polars_plan.exit25, %bb.z
  call void @llvm.experimental.noalias.scope.decl(metadata !135669), !dbg !135504
  %i.ba = load ptr, ptr %i.i, align 8, !dbg !135672, !alias.scope !135669, !noundef !14 ; 2 uses
  %i.bb = icmp eq ptr %i.ba, null, !dbg !135672
  br i1 %i.bb, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer15expand_datasets23PyScanResolveThreadPoolEEEB1I_.exit20, label %bb.ah, !dbg !135672

bb.ah:                                            ; preds = %bb.ag
  %i.bc = atomicrmw sub ptr %i.ba, i64 1 release, align 8, !dbg !135674, !noalias !135679
  %i.bd = icmp eq i64 %i.bc, 1, !dbg !135684
  br i1 %i.bd, label %bb.ai, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer15expand_datasets23PyScanResolveThreadPoolEEEB1I_.exit20, !dbg !135684

bb.ai:                                            ; preds = %bb.ah
  fence acquire, !dbg !135685
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer15expand_datasets23PyScanResolveThreadPoolE9drop_slowBO_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i) #42
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer15expand_datasets23PyScanResolveThreadPoolEEEB1I_.exit20 unwind label %bb.ab, !dbg !135687

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecuEECsfcROwRM8ZtH_11polars_plan.exit: ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !135526
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCs2mZqlW55729_12polars_utils5arena4NodeENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %bb.ak unwind label %bb.aj, !dbg !135688

bb.aj:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecuEECsfcROwRM8ZtH_11polars_plan.exit
  %i.be = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtCs2mZqlW55729_12polars_utils5arena4NodeENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.body14 unwind label %bb.al, !dbg !135690

bb.ak:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecuEECsfcROwRM8ZtH_11polars_plan.exit
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtCs2mZqlW55729_12polars_utils5arena4NodeENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs2mZqlW55729_12polars_utils5arena4NodeEECsfcROwRM8ZtH_11polars_plan.exit25 unwind label %bb.d, !dbg !135692

bb.al:                                            ; preds = %bb.aj
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #40, !dbg !135688
  unreachable, !dbg !135688

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs2mZqlW55729_12polars_utils5arena4NodeEECsfcROwRM8ZtH_11polars_plan.exit25: ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !135526
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !135526
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !135526
  br label %bb.ag, !dbg !135615

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer15expand_datasets23PyScanResolveThreadPoolEEEB1I_.exit20: ; preds = %bb.ah, %bb.ag, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !135504
  invoke void @_RNvXs8_NtNtCslt8cbK4E2O5_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtNtCs2mZqlW55729_12polars_utils11async_utils16tokio_handle_ext17AbortOnDropHandleTNtNtB1w_5arena4NodeINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir2IRNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEEENtNtNtB3b_3ops4drop4Drop4dropB3O_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %bb.ao unwind label %bb.am, !dbg !135694

bb.am:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer15expand_datasets23PyScanResolveThreadPoolEEEB1I_.exit20
  %i.bg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !135696), !dbg !135694
  call void @llvm.experimental.noalias.scope.decl(metadata !135699), !dbg !135702
  %i.bh = load ptr, ptr %i.j, align 8, !dbg !135704, !alias.scope !135708, !nonnull !14, !noundef !14
  %i.bi = atomicrmw sub ptr %i.bh, i64 1 release, align 8, !dbg !135711, !noalias !135714
  %i.bj = icmp eq i64 %i.bi, 1, !dbg !135715
  br i1 %i.bj, label %bb.an, label %common.resume, !dbg !135715

bb.an:                                            ; preds = %bb.am
  fence acquire, !dbg !135716
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtNtNtCslt8cbK4E2O5_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtNtCs2mZqlW55729_12polars_utils11async_utils16tokio_handle_ext17AbortOnDropHandleTNtNtB2p_5arena4NodeINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir2IRNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEEEE9drop_slowB4H_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j) #42
          to label %common.resume unwind label %bb.ap, !dbg !135718

bb.ao:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer15expand_datasets23PyScanResolveThreadPoolEEEB1I_.exit20
  call void @llvm.experimental.noalias.scope.decl(metadata !135719), !dbg !135694
  call void @llvm.experimental.noalias.scope.decl(metadata !135722), !dbg !135725
  %i.bk = load ptr, ptr %i.j, align 8, !dbg !135727, !alias.scope !135731, !nonnull !14, !noundef !14
  %i.bl = atomicrmw sub ptr %i.bk, i64 1 release, align 8, !dbg !135732, !noalias !135735
  %i.bm = icmp eq i64 %i.bl, 1, !dbg !135736
  br i1 %i.bm, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCslt8cbK4E2O5_12futures_util6stream17futures_unordered16FuturesUnorderedINtNtNtCs2mZqlW55729_12polars_utils11async_utils16tokio_handle_ext17AbortOnDropHandleTNtNtB24_5arena4NodeINtNtB4_6result6ResultNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir2IRNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEEEEB46_.exit27.sink.split, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCslt8cbK4E2O5_12futures_util6stream17futures_unordered16FuturesUnorderedINtNtNtCs2mZqlW55729_12polars_utils11async_utils16tokio_handle_ext17AbortOnDropHandleTNtNtB24_5arena4NodeINtNtB4_6result6ResultNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir2IRNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEEEEB46_.exit27, !dbg !135736

bb.ap:                                            ; preds = %bb.an
  %i.bn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #40, !dbg !135694
  unreachable, !dbg !135694

bb.aq:                                            ; preds = %bb.c, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer15expand_datasets23PyScanResolveThreadPoolEEEB1I_.exit, %.body, %bb.e
  %i.bo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #40, !dbg !135737
  unreachable, !dbg !135737
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer15expand_datasets21expand_python_dataset(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([368 x i8]) align 16 captures(none) dereferenceable(368) %0, ptr noalias noundef align 16 captures(address) dead_on_return dereferenceable(368) %1, ptr noundef %2, i64 %3, i64 noundef range(i64 0, 2) %4, i64 %5, ptr noundef %6, i64 %7, i1 noundef zeroext %8, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %9, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %10) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !135738 {
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
  %.sroa.5 = alloca i64, align 8                  ; 7 uses
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
  %i.bp = load i64, ptr %1, align 16, !dbg !135739, !range !19600, !noundef !14 ; 2 uses
  %i.bq = icmp ne i64 %i.bp, -9223372036854775786, !dbg !135739
  tail call void @llvm.assume(i1 %i.bq), !dbg !135739
  %i.br = icmp eq i64 %i.bp, -9223372036854775801, !dbg !135740
  br i1 %i.br, label %bb.b, label %.invoke625, !dbg !135740, !prof !364

bb.b:                                             ; preds = %bb.a
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 272, !dbg !135741 ; 4 uses
  %i.bt = load ptr, ptr %i.bs, align 16, !dbg !135741, !nonnull !14, !noundef !14 ; 4 uses
  %i.bu = load i64, ptr %i.bt, align 8, !dbg !135746, !range !19215, !noundef !14 ; 2 uses
  %i.bv = icmp ne i64 %i.bu, 3, !dbg !135746
  tail call void @llvm.assume(i1 %i.bv), !dbg !135746
  %i.bw = icmp eq i64 %i.bu, 6, !dbg !135747
  br i1 %i.bw, label %bb.c, label %.invoke625, !dbg !135747, !prof !364

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi), !dbg !135748
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bt, i64 16, !dbg !135750 ; 2 uses
  %i.by = load ptr, ptr %i.bx, align 8, !dbg !135750, !nonnull !14, !noundef !14
  %i.bz = atomicrmw add ptr %i.by, i64 1 monotonic, align 8, !dbg !135757
  %i.ca = icmp slt i64 %i.bz, 0, !dbg !135762
  br i1 %i.ca, label %bb.e, label %bb.d, !dbg !135762

.invoke625:                                       ; preds = %bb.b, %bb.a
  %i.cb = phi ptr [ @661, %bb.a ], [ @660, %bb.b ]
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @27, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cb) #41
          to label %.cont626 unwind label %bb.ng, !dbg !135764

.cont626:                                         ; preds = %.invoke625
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.cc = load ptr, ptr %i.bx, align 8, !dbg !135765, !nonnull !14, !noundef !14 ; 2 uses
  store ptr %i.cc, ptr %i.bi, align 8, !dbg !135766
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh), !dbg !135769
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 16, !dbg !135771
  invoke void @_RNvMs5_NtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutexINtB5_5MutexINtNtCscgRAwXFJnXP_4core6option6OptionNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer15expand_datasets15ExpandedDatasetEE4lockB1H_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.bh, ptr noundef nonnull align 16 %i.cd)
          to label %bb.h unwind label %bb.g, !dbg !135773

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.trap(), !dbg !135774
  unreachable, !dbg !135774

.body:                                            ; preds = %bb.j, %bb.g, %.body400
  %.sroa.0197.0 = phi i8 [ %.sroa.0197.2, %.body400 ], [ %.sroa.0197.1, %bb.g ], [ 1, %bb.j ], !dbg !135764 ; 2 uses
  %.sroa.0202.0 = phi i1 [ true, %.body400 ], [ %.sroa.0202.1, %bb.g ], [ true, %bb.j ], !dbg !135739 ; 2 uses
  %.pn321 = phi { ptr, i32 } [ %.pn319, %.body400 ], [ %i.ch, %bb.g ], [ %i.cp, %bb.j ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !135775), !dbg !135778
  call void @llvm.experimental.noalias.scope.decl(metadata !135779), !dbg !135782
  %i.ce = load ptr, ptr %i.bi, align 8, !dbg !135784, !alias.scope !135788, !nonnull !14, !noundef !14
  %i.cf = atomicrmw sub ptr %i.ce, i64 1 release, align 8, !dbg !135789, !noalias !135788
  %i.cg = icmp eq i64 %i.cf, 1, !dbg !135792
  br i1 %i.cg, label %bb.f, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer15expand_datasets15ExpandedDatasetEEEEB2x_.exit, !dbg !135792

bb.f:                                             ; preds = %.body
  fence acquire, !dbg !135793
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex5MutexINtNtCscgRAwXFJnXP_4core6option6OptionNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer15expand_datasets15ExpandedDatasetEEE9drop_slowB2f_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bi) #42
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer15expand_datasets15ExpandedDatasetEEEEB2x_.exit unwind label %bb.df, !dbg !135795

bb.g:                                             ; preds = %bb.ne, %bb.nc, %bb.mu, %bb.ms, %bb.d
  %.sroa.0197.1 = phi i8 [ %.sroa.0197.5, %bb.mu ], [ %.sroa.0197.4617, %bb.ne ], [ 1, %bb.d ], [ %.sroa.0197.5, %bb.ms ], [ %.sroa.0197.4617, %bb.nc ], !dbg !135764
  %.sroa.0202.1 = phi i1 [ true, %bb.mu ], [ false, %bb.ne ], [ true, %bb.d ], [ true, %bb.ms ], [ false, %bb.nc ], !dbg !135764
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.h:                                             ; preds = %bb.d
  call void @llvm.experimental.noalias.scope.decl(metadata !135796), !dbg !135799
  %i.ci = load i64, ptr %i.bh, align 8, !dbg !135800, !range !1103, !alias.scope !135796, !noundef !14
  %i.cj = trunc nuw i64 %i.ci to i1, !dbg !135803
  br i1 %i.cj, label %bb.i, label %bb.m, !dbg !135803, !prof !363

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !dbg !135804, !noalias !135796
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bh, i64 8, !dbg !135804
  %i.cl = load ptr, ptr %i.ck, align 8, !dbg !135804, !alias.scope !135796, !nonnull !14, !align !106, !noundef !14
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bh, i64 16, !dbg !135804
  %i.cn = load i8, ptr %i.cm, align 8, !dbg !135804, !range !6458, !alias.scope !135796, !noundef !14
  store ptr %i.cl, ptr %i.u, align 8, !dbg !135804, !noalias !135796
  %i.co = getelementptr inbounds nuw i8, ptr %i.u, i64 8, !dbg !135804
  store i8 %i.cn, ptr %i.co, align 8, !dbg !135804, !noalias !135796
  invoke void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @407, i64 noundef 43, ptr noundef nonnull %i.u, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @411, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @638) #41
          to label %bb.k unwind label %bb.j, !dbg !135805, !noalias !135796

bb.j:                                             ; preds = %bb.i
  %i.cp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsh8eZTKRCwoO_3std4sync6poison11PoisonErrorINtNtBJ_5mutex10MutexGuardINtNtB4_6option6OptionNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer15expand_datasets15ExpandedDatasetEEEEB2o_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.u) #39
          to label %.body unwind label %bb.l, !dbg !135807, !noalias !135796

bb.k:                                             ; preds = %bb.i
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.cq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #40, !dbg !135808, !noalias !135796
  unreachable, !dbg !135808

bb.m:                                             ; preds = %bb.h
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bh, i64 8, !dbg !135809
  %i.cs = load ptr, ptr %i.cr, align 8, !dbg !135809, !alias.scope !135796, !nonnull !14, !align !106, !noundef !14 ; 75 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bh, i64 16, !dbg !135809
  %i.cu = load i8, ptr %i.ct, align 8, !dbg !135809, !range !6458, !alias.scope !135796, !noundef !14 ; 2 uses
  %i.cv = trunc nuw i8 %i.cu to i1, !dbg !135809  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !dbg !135810
  %i.cw = invoke noundef zeroext i1 @_RNvNtCs1LHh8CLbVkQ_11polars_core6config7verbose()
          to label %bb.o unwind label %bb.n, !dbg !135811

.body400:                                         ; preds = %bb.nv, %bb.nw, %bb.hi, %bb.hd, %bb.he, %bb.gq, %bb.gr, %bb.gk, %bb.gl, %bb.gc, %bb.gh, %bb.cv, %bb.cu, %.body358, %bb.r, %bb.n, %bb.lc, %bb.hb, %bb.nt, %bb.lt, %bb.oa, %bb.my, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit, %bb.jm, %.body430, %bb.fm, %bb.fh, %bb.ev, %bb.eq, %.body388, %.body377, %.body371
  %.sroa.0197.2 = phi i8 [ %.sroa.0197.4617, %bb.lc ], [ %.sroa.0197.4617, %bb.oa ], [ %.sroa.0197.4617, %.body377 ], [ 1, %.body358 ], [ %.sroa.0197.4617, %bb.my ], [ %.sroa.0197.4617, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit ], [ %.sroa.0197.4617, %bb.lt ], [ %.sroa.0197.4617, %bb.nt ], [ %.sroa.0197.4617, %bb.jm ], [ %.sroa.0197.4617, %.body430 ], [ %.sroa.0197.4617, %bb.hd ], [ %.sroa.0197.4617, %bb.hi ], [ %.sroa.0197.4617, %bb.gq ], [ %.sroa.0197.4617, %bb.gk ], [ %.sroa.0197.4617, %bb.gc ], [ %.sroa.0197.4617, %bb.fm ], [ %.sroa.0197.4617, %bb.fh ], [ %.sroa.0197.4617, %bb.ev ], [ %.sroa.0197.4617, %bb.eq ], [ %.sroa.0197.4617, %.body388 ], [ 0, %.body371 ], [ %.sroa.0197.4617, %bb.cv ], [ %.sroa.0197.4617, %bb.hb ], [ %.sroa.0197.3, %bb.n ], [ 1, %bb.r ], [ %.sroa.0197.4617, %bb.cu ], [ %.sroa.0197.4617, %bb.gh ], [ %.sroa.0197.4617, %bb.gl ], [ %.sroa.0197.4617, %bb.gr ], [ %.sroa.0197.4617, %bb.he ], [ %.sroa.0197.4617, %bb.nw ], [ %.sroa.0197.4617, %bb.nv ], !dbg !135764
  %.pn319 = phi { ptr, i32 } [ %eh.lpad-body.i, %bb.lc ], [ %i.agr, %bb.oa ], [ %eh.lpad-body378, %.body377 ], [ %.pn, %.body358 ], [ %.pn314, %bb.my ], [ %.pn314, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit ], [ %i.adk, %bb.lt ], [ %.pn306, %bb.nt ], [ %i.yu, %bb.jm ], [ %.pn304, %.body430 ], [ %i.tm, %bb.hd ], [ %i.ts, %bb.hi ], [ %i.sy, %bb.gq ], [ %i.sm, %bb.gk ], [ %i.ru, %bb.gc ], [ %i.qe, %bb.fm ], [ %i.pn, %bb.fh ], [ %i.op, %bb.ev ], [ %i.oa, %bb.eq ], [ %eh.lpad-body389, %.body388 ], [ %eh.lpad-body372, %.body371 ], [ %i.ju, %bb.cv ], [ %i.tk, %bb.hb ], [ %i.cx, %bb.n ], [ %.pn, %bb.r ], [ %i.ju, %bb.cu ], [ %i.sf, %bb.gh ], [ %i.sm, %bb.gl ], [ %i.sy, %bb.gr ], [ %i.tm, %bb.he ], [ %i.agj, %bb.nw ], [ %i.agj, %bb.nv ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardINtNtB4_6option6OptionNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer15expand_datasets15ExpandedDatasetEEEB25_(ptr nonnull %i.cs, i8 %i.cu) #39
          to label %.body unwind label %bb.df, !dbg !135813

bb.n:                                             ; preds = %.invoke624, %.invoke, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl12scan_sources11ScanSourcesEBM_.exit, %bb.jf, %bb.je, %bb.gx, %bb.gv, %bb.gf, %bb.fz, %bb.ex, %bb.dq, %bb.dp, %bb.do, %bb.ag, %bb.ob, %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgZ49sUHp3tW_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfcROwRM8ZtH_11polars_plan.exit, %bb.mp, %bb.mn, %bb.hk, %bb.hj, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsfcROwRM8ZtH_11polars_plan.exit411, %bb.gi, %bb.dg, %bb.cp, %bb.co, %bb.cm, %bb.bd, %bb.at, %bb.ao, %bb.q, %bb.m
  %.sroa.0197.3 = phi i8 [ 1, %bb.ao ], [ %.sroa.0197.4617, %bb.ob ], [ %.sroa.0197.4617, %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgZ49sUHp3tW_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfcROwRM8ZtH_11polars_plan.exit ], [ %.sroa.0197.4617, %bb.co ], [ %.sroa.0197.4617, %bb.cp ], [ %.sroa.0197.4617, %bb.dg ], [ %.sroa.0197.4617, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsfcROwRM8ZtH_11polars_plan.exit411 ], [ %.sroa.0197.4617, %bb.gv ], [ %.sroa.0197.4617, %bb.mp ], [ %.sroa.0197.4617, %bb.mn ], [ %.sroa.0197.4617, %bb.je ], [ %.sroa.0197.4617, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl12scan_sources11ScanSourcesEBM_.exit ], [ 1, %bb.ag ], [ %.sroa.0197.4617, %bb.jf ], [ %.sroa.0197.4617, %bb.hk ], [ %.sroa.0197.4617, %bb.hj ], [ %.sroa.0197.4617, %bb.fz ], [ %.sroa.0197.4617, %bb.gx ], [ %.sroa.0197.4617, %bb.gi ], [ %.sroa.0197.4617, %bb.gf ], [ %.sroa.0197.4617, %.invoke624 ], [ 1, %bb.m ], [ %.sroa.0197.4617, %bb.do ], [ %.sroa.0197.4617, %bb.ex ], [ %.sroa.0197.4617, %bb.dp ], [ %.sroa.0197.4617, %bb.dq ], [ 1, %bb.at ], [ %.sroa.0197.4617, %.invoke ], [ 1, %bb.cm ], [ 1, %bb.bd ], [ 1, %bb.q ], !dbg !135764
  %i.cx = landingpad { ptr, i32 }
          cleanup
  br label %.body400

bb.o:                                             ; preds = %bb.m
  br i1 %i.cw, label %bb.q, label %bb.p, !dbg !135811

bb.p:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsfcROwRM8ZtH_11polars_plan.exit365, %bb.o
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cs, i64 16, !dbg !135814 ; 5 uses
  %i.cz = load i64, ptr %i.cy, align 16, !dbg !135820, !range !8279, !noundef !14 ; 3 uses
  %.not274 = icmp eq i64 %i.cz, 2, !dbg !135820
  br i1 %.not274, label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit, label %bb.ah, !dbg !135823

bb.q:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg), !dbg !135824
  %i.da = getelementptr inbounds nuw i8, ptr %i.bt, i64 8, !dbg !135825
  %i.db = load ptr, ptr %i.da, align 8, !dbg !135825, !nonnull !14, !noundef !14
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 16, !dbg !135833
  invoke void @_RNvMNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9file_scan14python_datasetNtB2_21PythonDatasetProvider4name(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.bg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.dc)
          to label %bb.t unwind label %bb.n, !dbg !135834

.body358:                                         ; preds = %bb.ac, %bb.ad, %bb.w, %bb.v, %bb.s
  %.pn = phi { ptr, i32 } [ %i.dj, %bb.w ], [ %i.dg, %bb.s ], [ %i.dj, %bb.v ], [ %i.dq, %bb.ad ], [ %i.dq, %bb.ac ] ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.bg, i64 23, !dbg !135835
  %i.de = load i8, ptr %i.dd, align 1, !dbg !135835, !range !1232, !alias.scope !135842, !noundef !14
  %i.df = icmp eq i8 %i.de, -40, !dbg !135851
  br i1 %i.df, label %bb.r, label %.body400, !dbg !135851, !prof !363

bb.r:                                             ; preds = %.body358
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bg)
          to label %.body400 unwind label %bb.df, !dbg !135852

end_hunk_1
begin_hunk_2_@_RNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer15expand_datasets21expand_python_dataset:bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !136786), !dbg !136785
  %i.ol = load ptr, ptr %i.ok, align 8, !dbg !136789, !alias.scope !136786, !noundef !14 ; 2 uses
  %i.om = icmp eq ptr %i.ol, null, !dbg !136789
  br i1 %i.om, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9file_scan14default_values18DefaultFieldValuesEEB1a_.exit, label %bb.et, !dbg !136789

bb.et:                                            ; preds = %_RNvXs0_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9file_scan14default_valuesNtB5_18DefaultFieldValuesNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit
  %i.on = atomicrmw sub ptr %i.ol, i64 1 release, align 8, !dbg !136791, !noalias !136797
  %i.oo = icmp eq i64 %i.on, 1, !dbg !136804
  br i1 %i.oo, label %bb.eu, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9file_scan14default_values18DefaultFieldValuesEEB1a_.exit, !dbg !136804

bb.eu:                                            ; preds = %bb.et
  fence acquire, !dbg !136805
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9file_scan14default_values25IcebergDefaultFieldValuesE9drop_slowBO_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ok) #42
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9file_scan14default_values18DefaultFieldValuesEEB1a_.exit unwind label %bb.ev, !dbg !136807

bb.ev:                                            ; preds = %bb.eu
  %i.op = landingpad { ptr, i32 }
          cleanup
  %i.oq = load ptr, ptr %i.lx, align 8, !dbg !136785, !nonnull !14, !noundef !14
  %i.or = getelementptr inbounds nuw i8, ptr %i.oq, i64 336, !dbg !136785
  store ptr %i.og, ptr %i.or, align 8, !dbg !136785
  br label %.body400, !dbg !136808

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9file_scan14default_values18DefaultFieldValuesEEB1a_.exit: ; preds = %bb.et, %_RNvXs0_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9file_scan14default_valuesNtB5_18DefaultFieldValuesNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit, %bb.eu
  %i.os = load ptr, ptr %i.lx, align 8, !dbg !136785, !nonnull !14, !noundef !14
  %i.ot = getelementptr inbounds nuw i8, ptr %i.os, i64 336, !dbg !136785
  store ptr %i.og, ptr %i.ot, align 8, !dbg !136785
  %i.ou = getelementptr inbounds nuw i8, ptr %i.jo, i64 192, !dbg !136809
  %i.ov = load i64, ptr %i.ou, align 8, !dbg !136809, !range !8279, !noundef !14 ; 2 uses
  %.not294 = icmp eq i64 %i.ov, 2, !dbg !136809
  br i1 %.not294, label %bb.fa, label %bb.ew, !dbg !136812

bb.ew:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9file_scan14default_values18DefaultFieldValuesEEB1a_.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !136813), !dbg !136816
  %i.ow = getelementptr inbounds nuw i8, ptr %i.jo, i64 200, !dbg !136818 ; 2 uses
  %i.ox = trunc nuw i64 %i.ov to i1, !dbg !136818
  br i1 %i.ox, label %bb.ex, label %bb.ey, !dbg !136818

bb.ex:                                            ; preds = %bb.ew
  %i.oy = invoke noundef nonnull ptr @_RNvXs1_NtCs2mZqlW55729_12polars_utils15python_functionNtB5_12PythonObjectNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ow)
          to label %bb.fa unwind label %bb.n, !dbg !136824

bb.ey:                                            ; preds = %bb.ew
  %i.oz = load ptr, ptr %i.ow, align 8, !dbg !136831, !alias.scope !136813, !nonnull !14, !noundef !14 ; 2 uses
  %i.pa = atomicrmw add ptr %i.oz, i64 1 monotonic, align 8, !dbg !136839, !noalias !136813
  %i.pb = icmp slt i64 %i.pa, 0, !dbg !136844
  br i1 %i.pb, label %bb.ez, label %bb.fa, !dbg !136844

bb.ez:                                            ; preds = %bb.ey
  call void @llvm.trap(), !dbg !136846
  unreachable, !dbg !136846

bb.fa:                                            ; preds = %bb.ex, %bb.ey, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9file_scan14default_values18DefaultFieldValuesEEB1a_.exit
  %.sroa.674.0 = phi ptr [ undef, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9file_scan14default_values18DefaultFieldValuesEEB1a_.exit ], [ %i.oz, %bb.ey ], [ %i.oy, %bb.ex ], !dbg !136847 ; 2 uses
  %.sroa.072.0 = phi i64 [ 2, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9file_scan14default_values18DefaultFieldValuesEEB1a_.exit ], [ 0, %bb.ey ], [ 1, %bb.ex ], !dbg !136847 ; 2 uses
  %i.pc = load ptr, ptr %i.lx, align 8, !dbg !136848, !nonnull !14, !noundef !14 ; 2 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pc, i64 192, !dbg !136848
  call void @llvm.experimental.noalias.scope.decl(metadata !136849), !dbg !136848
  %i.pe = load i64, ptr %i.pd, align 8, !dbg !136852, !range !8279, !alias.scope !136849, !noundef !14 ; 2 uses
  %i.pf = icmp eq i64 %i.pe, 2, !dbg !136852
  br i1 %i.pf, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9file_scan8deletion17DeletionFilesListEEB1a_.exit, label %bb.fb, !dbg !136852

bb.fb:                                            ; preds = %bb.fa
  call void @llvm.experimental.noalias.scope.decl(metadata !136854), !dbg !136852
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pc, i64 200, !dbg !136857 ; 3 uses
  %i.ph = icmp eq i64 %i.pe, 0, !dbg !136857
  br i1 %i.ph, label %bb.fc, label %bb.fe, !dbg !136857

bb.fc:                                            ; preds = %bb.fb
  call void @llvm.experimental.noalias.scope.decl(metadata !136859), !dbg !136857
  call void @llvm.experimental.noalias.scope.decl(metadata !136862), !dbg !136865
  %i.pi = load ptr, ptr %i.pg, align 8, !dbg !136867, !alias.scope !136871, !nonnull !14, !noundef !14
  %i.pj = atomicrmw sub ptr %i.pi, i64 1 release, align 8, !dbg !136872, !noalias !136871
  %i.pk = icmp eq i64 %i.pj, 1, !dbg !136875
  br i1 %i.pk, label %bb.fd, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9file_scan8deletion17DeletionFilesListEEB1a_.exit, !dbg !136875

bb.fd:                                            ; preds = %bb.fc
  fence acquire, !dbg !136876
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCse4dvU5uQ85g_8indexmap3map8IndexMapjIBx_SNtNtB7_6string6StringENtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEE9drop_slowCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.pg) #42
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9file_scan8deletion17DeletionFilesListEEB1a_.exit unwind label %bb.fh, !dbg !136878

bb.fe:                                            ; preds = %bb.fb
  %.val.i.i394 = load ptr, ptr %i.pg, align 8, !dbg !136857, !alias.scope !136879, !nonnull !14, !noundef !14 ; 2 uses
  %i.pl = call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCsbm5zPlkZccl_4pyo38internal5state12ATTACH_COUNT0s_023___RUST_STD_INTERNAL_VAL), !dbg !136880
  %.val.i.i.i.i.i.i.i.i = load i64, ptr %i.pl, align 8, !dbg !136890, !noalias !136879, !noundef !14
  %i.pm = icmp sgt i64 %.val.i.i.i.i.i.i.i.i, 0, !dbg !136891
  br i1 %i.pm, label %bb.fg, label %bb.ff, !dbg !136893, !prof !8504

bb.ff:                                            ; preds = %bb.fe
  invoke void @_RNvNvXsA_NtCsbm5zPlkZccl_4pyo38instanceINtB7_2PypENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop9drop_slow(ptr noundef nonnull %.val.i.i394)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9file_scan8deletion17DeletionFilesListEEB1a_.exit unwind label %bb.fh, !dbg !136895

bb.fg:                                            ; preds = %bb.fe
  call void @_Py_DecRef(ptr noundef nonnull %.val.i.i394) #44, !dbg !136896, !noalias !136879
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9file_scan8deletion17DeletionFilesListEEB1a_.exit, !dbg !136898

bb.fh:                                            ; preds = %bb.ff, %bb.fd
  %i.pn = landingpad { ptr, i32 }
          cleanup
  %i.po = load ptr, ptr %i.lx, align 8, !dbg !136848, !nonnull !14, !noundef !14 ; 2 uses
  %i.pp = getelementptr inbounds nuw i8, ptr %i.po, i64 192, !dbg !136848
  store i64 %.sroa.072.0, ptr %i.pp, align 8, !dbg !136848
  %i.pq = getelementptr inbounds nuw i8, ptr %i.po, i64 200, !dbg !136848
  store ptr %.sroa.674.0, ptr %i.pq, align 8, !dbg !136848
  br label %.body400, !dbg !136899

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9file_scan8deletion17DeletionFilesListEEB1a_.exit: ; preds = %bb.fg, %bb.fc, %bb.fa, %bb.fd, %bb.ff
  %i.pr = load ptr, ptr %i.lx, align 8, !dbg !136848, !nonnull !14, !noundef !14 ; 2 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pr, i64 192, !dbg !136848
  store i64 %.sroa.072.0, ptr %i.ps, align 8, !dbg !136848
  %i.pt = getelementptr inbounds nuw i8, ptr %i.pr, i64 200, !dbg !136848
  store ptr %.sroa.674.0, ptr %i.pt, align 8, !dbg !136848
  %i.pu = getelementptr inbounds nuw i8, ptr %i.jo, i64 344, !dbg !136900
  %i.pv = load ptr, ptr %i.pu, align 8, !dbg !136900, !noundef !14 ; 4 uses
  %.not295 = icmp eq ptr %i.pv, null, !dbg !136900
  br i1 %.not295, label %_RNvXsU_NtNtCsfcROwRM8ZtH_11polars_plan3dsl9file_scanNtB5_15TableStatisticsNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit, label %bb.fi, !dbg !136903

bb.fi:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9file_scan8deletion17DeletionFilesListEEB1a_.exit
  %i.pw = atomicrmw add ptr %i.pv, i64 1 monotonic, align 8, !dbg !136904
  %i.px = icmp slt i64 %i.pw, 0, !dbg !136915
  br i1 %i.px, label %bb.fj, label %_RNvXsU_NtNtCsfcROwRM8ZtH_11polars_plan3dsl9file_scanNtB5_15TableStatisticsNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit, !dbg !136915

bb.fj:                                            ; preds = %bb.fi
  call void @llvm.trap(), !dbg !136917
  unreachable, !dbg !136917

_RNvXsU_NtNtCsfcROwRM8ZtH_11polars_plan3dsl9file_scanNtB5_15TableStatisticsNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit: ; preds = %bb.fi, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9file_scan8deletion17DeletionFilesListEEB1a_.exit
  %i.py = load ptr, ptr %i.lx, align 8, !dbg !136918, !nonnull !14, !noundef !14
  %i.pz = getelementptr inbounds nuw i8, ptr %i.py, i64 344, !dbg !136918 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !136919), !dbg !136918
  %i.qa = load ptr, ptr %i.pz, align 8, !dbg !136922, !alias.scope !136919, !noundef !14 ; 2 uses
  %i.qb = icmp eq ptr %i.qa, null, !dbg !136922
  br i1 %i.qb, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9file_scan15TableStatisticsEEB18_.exit, label %bb.fk, !dbg !136922

bb.fk:                                            ; preds = %_RNvXsU_NtNtCsfcROwRM8ZtH_11polars_plan3dsl9file_scanNtB5_15TableStatisticsNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit
  %i.qc = atomicrmw sub ptr %i.qa, i64 1 release, align 8, !dbg !136924, !noalias !136930
  %i.qd = icmp eq i64 %i.qc, 1, !dbg !136937
  br i1 %i.qd, label %bb.fl, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9file_scan15TableStatisticsEEB18_.exit, !dbg !136937

bb.fl:                                            ; preds = %bb.fk
  fence acquire, !dbg !136938
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameE9drop_slowCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.pz) #42
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9file_scan15TableStatisticsEEB18_.exit unwind label %bb.fm, !dbg !136940

bb.fm:                                            ; preds = %bb.fl
  %i.qe = landingpad { ptr, i32 }
          cleanup
  %i.qf = load ptr, ptr %i.lx, align 8, !dbg !136918, !nonnull !14, !noundef !14
  %i.qg = getelementptr inbounds nuw i8, ptr %i.qf, i64 344, !dbg !136918
  store ptr %i.pv, ptr %i.qg, align 8, !dbg !136918
  br label %.body400, !dbg !136941

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9file_scan15TableStatisticsEEB18_.exit: ; preds = %bb.fk, %_RNvXsU_NtNtCsfcROwRM8ZtH_11polars_plan3dsl9file_scanNtB5_15TableStatisticsNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit, %bb.fl
  %i.qh = load ptr, ptr %i.lx, align 8, !dbg !136918, !nonnull !14, !noundef !14
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qh, i64 344, !dbg !136918
  store ptr %i.pv, ptr %i.qi, align 8, !dbg !136918
  %i.qj = load ptr, ptr %i.lx, align 8, !dbg !136942, !nonnull !14, !noundef !14
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.qj, ptr noundef nonnull align 8 dereferenceable(24) %i.jo, i64 24, i1 false), !dbg !136942
  br i1 %8, label %bb.fv, label %bb.fn, !dbg !136943

bb.fn:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnECsfcROwRM8ZtH_11polars_plan.exit, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9file_scan15TableStatisticsEEB18_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5), !dbg !136944
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8), !dbg !136944
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11), !dbg !136944
  %i.qk = getelementptr inbounds nuw i8, ptr %i.cs, i64 40, !dbg !136944
  call void @llvm.experimental.noalias.scope.decl(metadata !136945), !dbg !136948
  call void @llvm.experimental.noalias.scope.decl(metadata !136949), !dbg !136948
  %i.ql = load i64, ptr %i.qk, align 8, !dbg !136951, !range !8279, !alias.scope !136949, !noalias !136945, !noundef !14 ; 3 uses
  %i.qm = getelementptr inbounds nuw i8, ptr %i.cs, i64 48, !dbg !136957
  %i.qn = load ptr, ptr %i.qm, align 16, !dbg !136957, !alias.scope !136949, !noalias !136945, !nonnull !14, !noundef !14 ; 7 uses
  switch i64 %i.ql, label %default.unreachable [
    i64 0, label %bb.fo
    i64 1, label %bb.fp
    i64 2, label %bb.fq
  ], !dbg !136951

bb.fo:                                            ; preds = %bb.fn
  %i.qo = load i64, ptr %i.qn, align 8, !dbg !136958, !range !12595, !noalias !136971, !noundef !14
  %i.qp = icmp eq i64 %i.qo, 3, !dbg !136972
  br i1 %i.qp, label %bb.fr, label %bb.fs, !dbg !136972

bb.fp:                                            ; preds = %bb.fn
  %i.qq = getelementptr inbounds nuw i8, ptr %i.cs, i64 56, !dbg !136973
  %i.qr = load i64, ptr %i.qq, align 8, !dbg !136973, !alias.scope !136949, !noalias !136945, !noundef !14
  %i.qs = atomicrmw add ptr %i.qn, i64 1 monotonic, align 8, !dbg !136983, !noalias !136971
  %i.qt = icmp slt i64 %i.qs, 0, !dbg !136989
  br i1 %i.qt, label %bb.ft, label %bb.jg, !dbg !136989

bb.fq:                                            ; preds = %bb.fn
  %i.qu = getelementptr inbounds nuw i8, ptr %i.cs, i64 56, !dbg !136991
  %i.qv = load i64, ptr %i.qu, align 8, !dbg !136991, !alias.scope !136949, !noalias !136945, !noundef !14
  %i.qw = atomicrmw add ptr %i.qn, i64 1 monotonic, align 8, !dbg !136999, !noalias !136971
  %i.qx = icmp slt i64 %i.qw, 0, !dbg !137002
  br i1 %i.qx, label %bb.fu, label %bb.jg, !dbg !137002

bb.fr:                                            ; preds = %bb.fs, %bb.fo
  %i.qy = getelementptr inbounds nuw i8, ptr %i.cs, i64 56, !dbg !137004
  %i.qz = load ptr, ptr %i.qy, align 8, !dbg !137004, !alias.scope !136949, !noalias !136945, !noundef !14
  %i.ra = getelementptr inbounds nuw i8, ptr %i.cs, i64 64, !dbg !137005
  %i.rb = load i64, ptr %i.ra, align 16, !dbg !137005, !alias.scope !136949, !noalias !136945, !noundef !14
  %11 = ptrtoint ptr %i.qn to i64, !dbg !137006
  store i64 %11, ptr %.sroa.5, align 8, !dbg !137006, !alias.scope !136945, !noalias !136949
  br label %bb.jg, !dbg !137007

bb.fs:                                            ; preds = %bb.fo
  %i.rc = getelementptr inbounds nuw i8, ptr %i.qn, i64 24, !dbg !137008
  %i.rd = atomicrmw add ptr %i.rc, i64 1 monotonic, align 8, !dbg !137017, !noalias !136971 ; 0 uses
  br label %bb.fr, !dbg !137020

bb.ft:                                            ; preds = %bb.fp
  call void @llvm.trap(), !dbg !137021
  unreachable, !dbg !137021

bb.fu:                                            ; preds = %bb.fq
  call void @llvm.trap(), !dbg !137022
  unreachable, !dbg !137022

bb.fv:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9file_scan15TableStatisticsEEB18_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !dbg !137023
  %i.re = load ptr, ptr %i.lx, align 8, !dbg !137024, !nonnull !14, !noundef !14 ; 3 uses
  %i.rf = getelementptr inbounds nuw i8, ptr %i.re, i64 255, !dbg !137025
  %i.rg = load i8, ptr %i.rf, align 1, !dbg !137025, !range !2726, !noundef !14
  %.not296 = icmp eq i8 %i.rg, -38, !dbg !137025
  br i1 %.not296, label %.invoke624, label %bb.fw, !dbg !137028, !prof !363

bb.fw:                                            ; preds = %bb.fv
  %i.rh = getelementptr inbounds nuw i8, ptr %i.re, i64 232, !dbg !137025
  store ptr %i.rh, ptr %i.ba, align 8, !dbg !137029
  %i.ri = getelementptr inbounds nuw i8, ptr %i.re, i64 344, !dbg !137030 ; 6 uses
  %i.rj = load ptr, ptr %i.ri, align 8, !dbg !137030, !noundef !14 ; 2 uses
  %.not297 = icmp eq ptr %i.rj, null, !dbg !137030
  br i1 %.not297, label %.invoke624, label %bb.fx, !dbg !137034, !prof !363

bb.fx:                                            ; preds = %bb.fw
  call void @llvm.experimental.noalias.scope.decl(metadata !137035), !dbg !137038
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !137040
  %i.rk = cmpxchg ptr %i.rj, i64 1, i64 0 acquire monotonic, align 8, !dbg !137049, !noalias !137035
  %i.rl = extractvalue { i64, i1 } %i.rk, 1, !dbg !137049
  %i.rm = load ptr, ptr %i.ri, align 8, !dbg !137054, !alias.scope !137035, !nonnull !14, !noundef !14 ; 7 uses
  br i1 %i.rl, label %bb.fy, label %bb.fz, !dbg !137055

bb.fy:                                            ; preds = %bb.fx
  %i.rn = getelementptr inbounds nuw i8, ptr %i.rm, i64 8, !dbg !137056
  %i.ro = load atomic i64, ptr %i.rn monotonic, align 8, !dbg !137064, !noalias !137035
  %i.rp = icmp eq i64 %i.ro, 1, !dbg !137066
  br i1 %i.rp, label %bb.gb, label %bb.gd, !dbg !137066

bb.fz:                                            ; preds = %bb.fx
  %i.rq = getelementptr inbounds nuw i8, ptr %i.rm, i64 16, !dbg !137067
  %i.rr = invoke noundef nonnull ptr @_RNvMsk_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameE17clone_from_ref_inCsfcROwRM8ZtH_11polars_plan(ptr noundef nonnull align 8 %i.rq)
          to label %.noexc398 unwind label %bb.n, !dbg !137069 ; 3 uses

.noexc398:                                        ; preds = %bb.fz
  %i.rs = atomicrmw sub ptr %i.rm, i64 1 release, align 8, !dbg !137070, !noalias !137075
  %i.rt = icmp eq i64 %i.rs, 1, !dbg !137080
  br i1 %i.rt, label %bb.ga, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameEECsfcROwRM8ZtH_11polars_plan.exit.i, !dbg !137080

bb.ga:                                            ; preds = %.noexc398
  fence acquire, !dbg !137081
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameE9drop_slowCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ri) #42
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameEECsfcROwRM8ZtH_11polars_plan.exit.i unwind label %bb.gh, !dbg !137083

bb.gb:                                            ; preds = %bb.fy
  store atomic i64 1, ptr %i.rm release, align 8, !dbg !137084, !noalias !137035
  br label %bb.gi, !dbg !137088

bb.gc:                                            ; preds = %bb.ge, %bb.gd
  %i.ru = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsN_NtCsgZ49sUHp3tW_5alloc4syncINtB5_4WeakNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.p)
          to label %.body400 unwind label %bb.gg, !dbg !137089, !noalias !137035

bb.gd:                                            ; preds = %bb.fy
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !dbg !137092, !noalias !137035
  store ptr %i.rm, ptr %i.p, align 8, !dbg !137093, !noalias !137035
  %i.rv = getelementptr inbounds nuw i8, ptr %i.rm, i64 16, !dbg !137094 ; 2 uses
  invoke void @_RNvMs1l_NtCsgZ49sUHp3tW_5alloc4syncINtB6_15UniqueArcUninitNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtNtB8_5alloc6GlobalE3newCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.o, ptr noundef nonnull align 8 %i.rv)
          to label %bb.ge unwind label %bb.gc, !dbg !137097, !noalias !137035

bb.ge:                                            ; preds = %bb.gd
  %i.rw = load i64, ptr %i.o, align 8, !dbg !137098, !range !118445, !noalias !137035, !noundef !14 ; 2 uses
  %i.rx = add nuw i64 %i.rw, 15, !dbg !137104
  %i.ry = sub i64 0, %i.rw, !dbg !137113
  %i.rz = and i64 %i.rx, %i.ry, !dbg !137104
  %i.sa = getelementptr inbounds nuw i8, ptr %i.o, i64 16, !dbg !137114
  %i.sb = load ptr, ptr %i.sa, align 8, !dbg !137114, !noalias !137035, !nonnull !14, !noundef !14
  %i.sc = getelementptr inbounds nuw i8, ptr %i.sb, i64 %i.rz, !dbg !137116
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(48) %i.sc, ptr noundef nonnull align 8 dereferenceable(48) %i.rv, i64 48, i1 false), !dbg !137121, !noalias !137035
  %i.sd = invoke noundef nonnull ptr @_RNvMs1l_NtCsgZ49sUHp3tW_5alloc4syncINtB6_15UniqueArcUninitNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtNtB8_5alloc6GlobalE8into_arcCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.o)
          to label %bb.gf unwind label %bb.gc, !dbg !137124, !noalias !137035 ; 2 uses

bb.gf:                                            ; preds = %bb.ge
  store ptr %i.sd, ptr %i.ri, align 8, !dbg !137125, !alias.scope !137035
  invoke void @_RNvXsN_NtCsgZ49sUHp3tW_5alloc4syncINtB5_4WeakNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.p)
          to label %.noexc399 unwind label %bb.n, !dbg !137128

.noexc399:                                        ; preds = %bb.gf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !137130, !noalias !137035
  br label %bb.gi, !dbg !137088

bb.gg:                                            ; preds = %bb.gc
  %i.se = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #40, !dbg !137131, !noalias !137035
  unreachable, !dbg !137131

bb.gh:                                            ; preds = %bb.ga
  %i.sf = landingpad { ptr, i32 }
          cleanup
  store ptr %i.rr, ptr %i.ri, align 8, !dbg !137132, !alias.scope !137035
  br label %.body400, !dbg !137133

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameEECsfcROwRM8ZtH_11polars_plan.exit.i: ; preds = %bb.ga, %.noexc398
  store ptr %i.rr, ptr %i.ri, align 8, !dbg !137132, !alias.scope !137035
  br label %bb.gi, !dbg !137134

.invoke624:                                       ; preds = %bb.fw, %bb.fv
  %i.sg = phi ptr [ @643, %bb.fv ], [ @644, %bb.fw ]
  invoke void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.sg) #41
          to label %.cont unwind label %bb.n, !dbg !137135

.cont:                                            ; preds = %.invoke624
  unreachable

bb.gi:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameEECsfcROwRM8ZtH_11polars_plan.exit.i, %.noexc399, %bb.gb
  %i.sh = phi ptr [ %i.rm, %bb.gb ], [ %i.sd, %.noexc399 ], [ %i.rr, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameEECsfcROwRM8ZtH_11polars_plan.exit.i ], !dbg !137136 ; 3 uses
  %i.si = getelementptr inbounds nuw i8, ptr %i.sh, i64 16, !dbg !137139 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !137140
  %i.sj = invoke noundef nonnull align 8 ptr @_RNvMs_NtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframeNtB4_9DataFrame6schema(ptr noundef nonnull align 8 %i.si)
          to label %bb.gj unwind label %bb.n, !dbg !137141

bb.gj:                                            ; preds = %bb.gi
  %i.sk = load ptr, ptr %i.sj, align 8, !dbg !137143, !nonnull !14, !noundef !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az), !dbg !137152
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay), !dbg !137152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ay, ptr noundef nonnull align 8 dereferenceable(24) @368, i64 24, i1 false), !dbg !137152
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !dbg !137153
  store ptr %i.ba, ptr %i.ax, align 8, !dbg !137153
  %.sroa.4229.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 8, !dbg !137153
  store ptr @_RNvXs1i_NtCscgRAwXFJnXP_4core3fmtRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtB6_7Display3fmtCsfcROwRM8ZtH_11polars_plan, ptr %.sroa.4229.0..sroa_idx, align 8, !dbg !137153
  %i.sl = invoke noundef zeroext i1 @_RNvXs11_Cs7VARH73bmU_11compact_strNtB6_13CompactStringNtNtCscgRAwXFJnXP_4core3fmt5Write9write_fmt(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ay, ptr noundef nonnull @645, ptr noundef nonnull %i.ax)
          to label %bb.gm unwind label %bb.gk, !dbg !137157

bb.gk:                                            ; preds = %bb.gn, %bb.gj
  %i.sm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.sn = getelementptr inbounds nuw i8, ptr %i.ay, i64 23, !dbg !137162
  %i.so = load i8, ptr %i.sn, align 1, !dbg !137162, !range !1232, !alias.scope !137169, !noundef !14
  %i.sp = icmp eq i8 %i.so, -40, !dbg !137178
  br i1 %i.sp, label %bb.gl, label %.body400, !dbg !137178, !prof !363

bb.gl:                                            ; preds = %bb.gk
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ay)
          to label %.body400 unwind label %bb.df, !dbg !137179

bb.gm:                                            ; preds = %bb.gj
  br i1 %i.sl, label %bb.gn, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCsfcROwRM8ZtH_11polars_plan.exit339, !dbg !137180, !prof !363

bb.gn:                                            ; preds = %bb.gm
  invoke void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @407, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @413, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @646) #41
          to label %.noexc338 unwind label %bb.gk, !dbg !137182

.noexc338:                                        ; preds = %bb.gn
  unreachable

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCsfcROwRM8ZtH_11polars_plan.exit339: ; preds = %bb.gm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !dbg !137183
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.az, ptr noundef nonnull align 8 dereferenceable(24) %i.ay, i64 24, i1 false), !dbg !137183
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !dbg !137152
  %i.sq = getelementptr inbounds nuw i8, ptr %i.az, i64 23, !dbg !137184 ; 3 uses
  %i.sr = load i8, ptr %i.sq, align 1, !dbg !137184, !range !1232, !alias.scope !137194, !noundef !14 ; 2 uses
  %i.ss = icmp ugt i8 %i.sr, -41, !dbg !137197
  br i1 %i.ss, label %bb.gp, label %bb.go, !dbg !137197

bb.go:                                            ; preds = %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCsfcROwRM8ZtH_11polars_plan.exit339
  %i.st = add i8 %i.sr, 64, !dbg !137198
  %i.su = call i8 @llvm.umin.i8(i8 %i.st, i8 24), !dbg !137200
  %.sroa.0.0.i.i404 = zext nneg i8 %i.su to i64, !dbg !137200
  br label %bb.gs, !dbg !137203

bb.gp:                                            ; preds = %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCsfcROwRM8ZtH_11polars_plan.exit339
  %i.sv = load ptr, ptr %i.az, align 8, !dbg !137204, !alias.scope !137194, !noundef !14
  %i.sw = getelementptr inbounds nuw i8, ptr %i.az, i64 8, !dbg !137205
  %i.sx = load i64, ptr %i.sw, align 8, !dbg !137205, !alias.scope !137194, !noundef !14
  br label %bb.gs, !dbg !137206

bb.gq:                                            ; preds = %bb.gs
  %i.sy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.sz = load i8, ptr %i.sq, align 1, !dbg !137207, !range !1232, !alias.scope !137214, !noundef !14
  %i.ta = icmp eq i8 %i.sz, -40, !dbg !137223
  br i1 %i.ta, label %bb.gr, label %.body400, !dbg !137223, !prof !363

bb.gr:                                            ; preds = %bb.gq
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.az)
          to label %.body400 unwind label %bb.df, !dbg !137224

bb.gs:                                            ; preds = %bb.gp, %bb.go
  %.sroa.01.0.i405 = phi i64 [ %i.sx, %bb.gp ], [ %.sroa.0.0.i.i404, %bb.go ], !dbg !137225
  %.sroa.0.0.i406 = phi ptr [ %i.sv, %bb.gp ], [ %i.az, %bb.go ], !dbg !137226
  %i.tb = getelementptr inbounds nuw i8, ptr %i.sk, i64 16, !dbg !137227
  %i.tc = invoke noundef align 16 ptr @_RINvMs3_NtCse4dvU5uQ85g_8indexmap3mapINtB6_8IndexMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE3geteECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.tb, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i406, i64 noundef %.sroa.01.0.i405)
end_hunk_2
begin_hunk_3_@_RNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer15expand_datasets21expand_python_dataset:bb.a

bb.in:                                            ; preds = %bb.iq, %bb.im
  %i.xm = landingpad { ptr, i32 }
          cleanup
  %i.xn = getelementptr inbounds nuw i8, ptr %i.am, i64 23, !dbg !137626
  %i.xo = load i8, ptr %i.xn, align 1, !dbg !137626, !range !1232, !alias.scope !137633, !noundef !14
  %i.xp = icmp eq i8 %i.xo, -40, !dbg !137642
  br i1 %i.xp, label %bb.io, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsfcROwRM8ZtH_11polars_plan.exit435, !dbg !137642, !prof !363

bb.io:                                            ; preds = %bb.in
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.am)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsfcROwRM8ZtH_11polars_plan.exit435 unwind label %bb.df, !dbg !137643

bb.ip:                                            ; preds = %bb.im
  br i1 %i.xl, label %bb.iq, label %bb.ir, !dbg !137644, !prof !363

bb.iq:                                            ; preds = %bb.ip
  invoke void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @407, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @413, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @651) #41
          to label %.noexc334 unwind label %bb.in, !dbg !137646

.noexc334:                                        ; preds = %bb.iq
  unreachable

bb.ir:                                            ; preds = %bb.ip
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !dbg !137647
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.an, ptr noundef nonnull align 8 dereferenceable(24) %i.am, i64 24, i1 false), !dbg !137647
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !dbg !137617
  %i.xq = load i64, ptr %i.tz, align 16, !dbg !137648, !range !8279, !alias.scope !137650, !noundef !14
  %i.xr = icmp eq i64 %i.xq, 0, !dbg !137653
  %..i436 = select i1 %i.xr, i64 24, i64 16, !dbg !137654
  %i.xs = getelementptr inbounds nuw i8, ptr %i.tz, i64 %..i436, !dbg !137654
  %.sroa.0.0.i437 = load i64, ptr %i.xs, align 8, !dbg !137654, !alias.scope !137650, !noundef !14
  invoke void @_RNvMNtNtCs1LHh8CLbVkQ_11polars_core5frame6columnNtB2_6Column9full_null(ptr noalias noundef nonnull sret([160 x i8]) align 16 captures(none) dereferenceable(160) %i.ao, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.an, i64 noundef %.sroa.0.0.i437, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(48) @610)
          to label %bb.iu unwind label %bb.it, !dbg !137616

bb.is:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsfcROwRM8ZtH_11polars_plan.exit441, %bb.it
  %.pn301.pn = phi { ptr, i32 } [ %i.xv, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsfcROwRM8ZtH_11polars_plan.exit441 ], [ %i.xt, %bb.it ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 16 dereferenceable(160) %i.av) #39
          to label %.body430 unwind label %bb.df, !dbg !137655

bb.it:                                            ; preds = %bb.ir
  %i.xt = landingpad { ptr, i32 }
          cleanup
  br label %bb.is

bb.iu:                                            ; preds = %bb.ir
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !dbg !137656
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !dbg !137657
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !dbg !137658
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !dbg !137658
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) @368, i64 24, i1 false), !dbg !137658
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !dbg !137659
  store ptr %i.ba, ptr %i.ah, align 8, !dbg !137659
  %.sroa.4241.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 8, !dbg !137659
  store ptr @_RNvXs1i_NtCscgRAwXFJnXP_4core3fmtRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtB6_7Display3fmtCsfcROwRM8ZtH_11polars_plan, ptr %.sroa.4241.0..sroa_idx, align 8, !dbg !137659
  %i.xu = invoke noundef zeroext i1 @_RNvXs11_Cs7VARH73bmU_11compact_strNtB6_13CompactStringNtNtCscgRAwXFJnXP_4core3fmt5Write9write_fmt(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ai, ptr noundef nonnull @652, ptr noundef nonnull %i.ah)
          to label %bb.ix unwind label %bb.iv, !dbg !137663

bb.iv:                                            ; preds = %bb.iy, %bb.iu
  %i.xv = landingpad { ptr, i32 }
          cleanup
  %i.xw = getelementptr inbounds nuw i8, ptr %i.ai, i64 23, !dbg !137667
  %i.xx = load i8, ptr %i.xw, align 1, !dbg !137667, !range !1232, !alias.scope !137674, !noundef !14
  %i.xy = icmp eq i8 %i.xx, -40, !dbg !137683
  br i1 %i.xy, label %bb.iw, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsfcROwRM8ZtH_11polars_plan.exit441, !dbg !137683, !prof !363

bb.iw:                                            ; preds = %bb.iv
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ai)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsfcROwRM8ZtH_11polars_plan.exit441 unwind label %bb.df, !dbg !137684

bb.ix:                                            ; preds = %bb.iu
  br i1 %i.xu, label %bb.iy, label %bb.iz, !dbg !137685, !prof !363

bb.iy:                                            ; preds = %bb.ix
  invoke void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @407, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @413, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @653) #41
          to label %.noexc unwind label %bb.iv, !dbg !137687

.noexc:                                           ; preds = %bb.iy
  unreachable

bb.iz:                                            ; preds = %bb.ix
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !dbg !137688
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aj, ptr noundef nonnull align 8 dereferenceable(24) %i.ai, i64 24, i1 false), !dbg !137688
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !dbg !137658
  %i.xz = load i64, ptr %i.tz, align 16, !dbg !137689, !range !8279, !alias.scope !137691, !noundef !14
  %i.ya = icmp eq i64 %i.xz, 0, !dbg !137694
  %..i442 = select i1 %i.ya, i64 24, i64 16, !dbg !137695
  %i.yb = getelementptr inbounds nuw i8, ptr %i.tz, i64 %..i442, !dbg !137695
  %.sroa.0.0.i443 = load i64, ptr %i.yb, align 8, !dbg !137695, !alias.scope !137691, !noundef !14
  invoke void @_RNvMNtNtCs1LHh8CLbVkQ_11polars_core5frame6columnNtB2_6Column9full_null(ptr noalias noundef nonnull sret([160 x i8]) align 16 captures(none) dereferenceable(160) %i.ak, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.aj, i64 noundef %.sroa.0.0.i443, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(48) @610)
          to label %bb.jb unwind label %bb.ja, !dbg !137657

bb.ja:                                            ; preds = %bb.iz
  %i.yc = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 16 dereferenceable(160) %i.ao) #39
          to label %bb.nu unwind label %bb.df, !dbg !137655

bb.jb:                                            ; preds = %bb.iz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !dbg !137696
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %i.aw, ptr noundef nonnull align 16 dereferenceable(160) %i.av, i64 160, i1 false), !dbg !137306
  %i.yd = getelementptr inbounds nuw i8, ptr %i.aw, i64 160, !dbg !137306
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %i.yd, ptr noundef nonnull align 16 dereferenceable(160) %i.ao, i64 160, i1 false), !dbg !137306
  %i.ye = getelementptr inbounds nuw i8, ptr %i.aw, i64 320, !dbg !137306
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %i.ye, ptr noundef nonnull align 16 dereferenceable(160) %i.ak, i64 160, i1 false), !dbg !137306
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !dbg !137655
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !dbg !137655
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !dbg !137655
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !dbg !137697
  %.sroa.5250.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 16, !dbg !137700
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(480) %.sroa.5250.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(480) %i.aw, i64 480, i1 false), !dbg !137706
  store i64 0, ptr %i.v, align 16, !dbg !137700
  %.sroa.4249.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 8, !dbg !137700
  store i64 3, ptr %.sroa.4249.0..sroa_idx, align 8, !dbg !137700
  invoke void @_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnE14extend_trustedINtNtNtCscgRAwXFJnXP_4core5array4iter8IntoIterBG_Kj3_EECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.si, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(496) %i.v)
          to label %bb.jc unwind label %bb.hl, !dbg !137707

bb.jc:                                            ; preds = %bb.jb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !dbg !137710
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !dbg !137711
  call void @llvm.experimental.noalias.scope.decl(metadata !137712), !dbg !137374
  %i.yf = load i8, ptr %i.au, align 16, !dbg !137715, !range !1200, !alias.scope !137712, !noundef !14
  %i.yg = icmp eq i8 %i.yf, 31, !dbg !137715
  br i1 %i.yg, label %bb.jd, label %bb.jf, !dbg !137715

bb.jd:                                            ; preds = %bb.jc
  %i.yh = getelementptr inbounds nuw i8, ptr %i.au, i64 8, !dbg !137715 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !137717), !dbg !137715
  call void @llvm.experimental.noalias.scope.decl(metadata !137720), !dbg !137723
  call void @llvm.experimental.noalias.scope.decl(metadata !137725), !dbg !137728
  call void @llvm.experimental.noalias.scope.decl(metadata !137730), !dbg !137733
  %i.yi = load ptr, ptr %i.yh, align 8, !dbg !137735, !alias.scope !137739, !nonnull !14, !noundef !14
  %i.yj = atomicrmw sub ptr %i.yi, i64 1 release, align 8, !dbg !137740, !noalias !137739
  %i.yk = icmp eq i64 %i.yj, 1, !dbg !137743
  br i1 %i.yk, label %bb.je, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnECsfcROwRM8ZtH_11polars_plan.exit, !dbg !137743

bb.je:                                            ; preds = %bb.jd
  fence acquire, !dbg !137744
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.yh) #42
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnECsfcROwRM8ZtH_11polars_plan.exit unwind label %bb.n, !dbg !137746

bb.jf:                                            ; preds = %bb.jc
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6scalar12ScalarColumnECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 16 dereferenceable(160) %i.au)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnECsfcROwRM8ZtH_11polars_plan.exit unwind label %bb.n, !dbg !137715

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnECsfcROwRM8ZtH_11polars_plan.exit: ; preds = %bb.jd, %bb.je, %bb.jf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !dbg !137374
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !dbg !137747
  br label %bb.fn, !dbg !137748

bb.jg:                                            ; preds = %bb.fr, %bb.fq, %bb.fp
  %.sink10.i.sroa.phi = phi ptr [ %.sroa.5, %bb.fp ], [ %.sroa.8, %bb.fr ], [ %.sroa.5, %bb.fq ]
  %.sink8.i = phi ptr [ %i.qn, %bb.fp ], [ %i.qz, %bb.fr ], [ %i.qn, %bb.fq ]
  %.sink7.i.sroa.phi = phi ptr [ %.sroa.8, %bb.fp ], [ %.sroa.11, %bb.fr ], [ %.sroa.8, %bb.fq ]
  %.sink5.i = phi i64 [ %i.qr, %bb.fp ], [ %i.rb, %bb.fr ], [ %i.qv, %bb.fq ]
  store ptr %.sink8.i, ptr %.sink10.i.sroa.phi, align 8, !dbg !136951, !alias.scope !136945, !noalias !136949
  store i64 %.sink5.i, ptr %.sink7.i.sroa.phi, align 8, !dbg !136951, !alias.scope !136945, !noalias !136949
  %i.yl = getelementptr inbounds nuw i8, ptr %1, i64 64, !dbg !137749 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !137750), !dbg !137749
  %i.ym = load i64, ptr %i.yl, align 16, !dbg !137753, !range !8279, !alias.scope !137750, !noundef !14
  %i.yn = getelementptr inbounds nuw i8, ptr %1, i64 72, !dbg !137753 ; 7 uses
  switch i64 %i.ym, label %bb.jh [
    i64 0, label %bb.jj
    i64 1, label %bb.jk
  ], !dbg !137753

bb.jh:                                            ; preds = %bb.jg
  call void @llvm.experimental.noalias.scope.decl(metadata !137755), !dbg !137753
  call void @llvm.experimental.noalias.scope.decl(metadata !137758), !dbg !137761
  %i.yo = load ptr, ptr %i.yn, align 8, !dbg !137763, !alias.scope !137767, !nonnull !14, !noundef !14
  %i.yp = atomicrmw sub ptr %i.yo, i64 1 release, align 8, !dbg !137768, !noalias !137767
  %i.yq = icmp eq i64 %i.yp, 1, !dbg !137771
  br i1 %i.yq, label %bb.ji, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl12scan_sources11ScanSourcesEBM_.exit, !dbg !137771

bb.ji:                                            ; preds = %bb.jh
  fence acquire, !dbg !137772
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcSINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEE9drop_slowCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.yn) #42
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl12scan_sources11ScanSourcesEBM_.exit unwind label %bb.jm, !dbg !137774

bb.jj:                                            ; preds = %bb.jg
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStorageNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.yn)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl12scan_sources11ScanSourcesEBM_.exit unwind label %bb.jm, !dbg !137775

bb.jk:                                            ; preds = %bb.jg
  call void @llvm.experimental.noalias.scope.decl(metadata !137778), !dbg !137753
  call void @llvm.experimental.noalias.scope.decl(metadata !137781), !dbg !137784
  %i.yr = load ptr, ptr %i.yn, align 8, !dbg !137786, !alias.scope !137790, !nonnull !14, !noundef !14
  %i.ys = atomicrmw sub ptr %i.yr, i64 1 release, align 8, !dbg !137791, !noalias !137790
  %i.yt = icmp eq i64 %i.ys, 1, !dbg !137794
  br i1 %i.yt, label %bb.jl, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl12scan_sources11ScanSourcesEBM_.exit, !dbg !137794

bb.jl:                                            ; preds = %bb.jk
  fence acquire, !dbg !137795
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcSNtNtCsh8eZTKRCwoO_3std2fs4FileE9drop_slowCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.yn) #42
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl12scan_sources11ScanSourcesEBM_.exit unwind label %bb.jm, !dbg !137797

bb.jm:                                            ; preds = %bb.jl, %bb.jj, %bb.ji
  %i.yu = landingpad { ptr, i32 }
          cleanup
  store i64 %i.ql, ptr %i.yl, align 16, !dbg !137749
  %.sroa.5.0..sroa.5.0..sroa.5.0..sroa.5.0.copyload = load i64, ptr %.sroa.5, align 8, !dbg !137749
  store i64 %.sroa.5.0..sroa.5.0..sroa.5.0..sroa.5.0.copyload, ptr %i.yn, align 8, !dbg !137749
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 80, !dbg !137749
  %.sroa.8.0..sroa.8.0..sroa.8.0..sroa.8.0.copyload = load i64, ptr %.sroa.8, align 8, !dbg !137749
  store i64 %.sroa.8.0..sroa.8.0..sroa.8.0..sroa.8.0.copyload, ptr %.sroa.8.0..sroa_idx, align 16, !dbg !137749
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 88, !dbg !137749
  %.sroa.11.0..sroa.11.0..sroa.11.0..sroa.11.0.copyload = load i64, ptr %.sroa.11, align 8, !dbg !137749
  store i64 %.sroa.11.0..sroa.11.0..sroa.11.0..sroa.11.0.copyload, ptr %.sroa.11.0..sroa_idx, align 8, !dbg !137749
  br label %.body400, !dbg !137798

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl12scan_sources11ScanSourcesEBM_.exit: ; preds = %bb.jk, %bb.jh, %bb.ji, %bb.jj, %bb.jl
  store i64 %i.ql, ptr %i.yl, align 16, !dbg !137749
  %.sroa.5.0..sroa.5.0..sroa.5.0..sroa.5.0.copyload509 = load i64, ptr %.sroa.5, align 8, !dbg !137749
  store i64 %.sroa.5.0..sroa.5.0..sroa.5.0..sroa.5.0.copyload509, ptr %i.yn, align 8, !dbg !137749
  %.sroa.8.0..sroa_idx510 = getelementptr inbounds nuw i8, ptr %1, i64 80, !dbg !137749 ; 2 uses
  %.sroa.8.0..sroa.8.0..sroa.8.0..sroa.8.0.copyload511 = load i64, ptr %.sroa.8, align 8, !dbg !137749
  store i64 %.sroa.8.0..sroa.8.0..sroa.8.0..sroa.8.0.copyload511, ptr %.sroa.8.0..sroa_idx510, align 16, !dbg !137749
  %.sroa.11.0..sroa_idx512 = getelementptr inbounds nuw i8, ptr %1, i64 88, !dbg !137749 ; 2 uses
  %.sroa.11.0..sroa.11.0..sroa.11.0..sroa.11.0.copyload513 = load i64, ptr %.sroa.11, align 8, !dbg !137749
  store i64 %.sroa.11.0..sroa.11.0..sroa.11.0..sroa.11.0.copyload513, ptr %.sroa.11.0..sroa_idx512, align 8, !dbg !137749
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5), !dbg !137798
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8), !dbg !137798
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11), !dbg !137798
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.26), !dbg !137799
  %i.yv = getelementptr inbounds nuw i8, ptr %i.cs, i64 80, !dbg !137800
  %.val354 = load ptr, ptr %i.yv, align 16, !dbg !137801 ; 34 uses
  %i.yw = invoke noundef nonnull align 8 ptr @_RNvMs_NtCsgZ49sUHp3tW_5alloc5boxedINtB4_3BoxNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9file_scan11FileScanDslE13new_uninit_inBM_()
          to label %.noexc453 unwind label %bb.n, !dbg !137802 ; 17 uses

.noexc453:                                        ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl12scan_sources11ScanSourcesEBM_.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val354) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !137806), !dbg !137809
  call void @llvm.experimental.noalias.scope.decl(metadata !137816), !dbg !137819
  call void @llvm.experimental.noalias.scope.decl(metadata !137825), !dbg !137819
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !137827, !noalias !137806
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !137827, !noalias !137806
  %i.yx = load i64, ptr %.val354, align 8, !dbg !137827, !range !10363, !alias.scope !137831, !noalias !137816, !noundef !14 ; 4 uses
  %i.yy = add nsw i64 %i.yx, -2, !dbg !137827
  %i.yz = icmp samesign ugt i64 %i.yx, 1, !dbg !137827
  %i.za = select i1 %i.yz, i64 %i.yy, i64 7, !dbg !137827
  switch i64 %i.za, label %bb.jn [
    i64 0, label %bb.jo
    i64 1, label %bb.jp
    i64 2, label %bb.jv
    i64 3, label %bb.jw
    i64 4, label %bb.jx
    i64 5, label %bb.jy
    i64 6, label %bb.jz
    i64 7, label %bb.ka
  ], !dbg !137827

bb.jn:                                            ; preds = %.noexc453
  unreachable, !dbg !137832

bb.jo:                                            ; preds = %.noexc453
  %i.zb = getelementptr inbounds nuw i8, ptr %.val354, i64 8, !dbg !137834
  %i.zc = load ptr, ptr %i.zb, align 8, !dbg !137834, !alias.scope !137831, !noalias !137816, !nonnull !14, !noundef !14 ; 2 uses
  %i.zd = atomicrmw add ptr %i.zc, i64 1 monotonic, align 8, !dbg !137844, !noalias !137850
  %i.ze = icmp slt i64 %i.zd, 0, !dbg !137851
  br i1 %i.ze, label %bb.kc, label %bb.kb, !dbg !137851

bb.jp:                                            ; preds = %.noexc453
  %i.zf = getelementptr inbounds nuw i8, ptr %.val354, i64 8, !dbg !137853
  call void @llvm.experimental.noalias.scope.decl(metadata !137854), !dbg !137857
  %i.zg = load i64, ptr %i.zf, align 8, !dbg !137859, !range !1103, !alias.scope !137865, !noalias !137866, !noundef !14
  %i.zh = getelementptr inbounds nuw i8, ptr %.val354, i64 16, !dbg !137859
  %i.zi = load i64, ptr %i.zh, align 8, !dbg !137859, !alias.scope !137865, !noalias !137866 ; 4 uses
  %i.zj = getelementptr inbounds nuw i8, ptr %.val354, i64 32, !dbg !137868
  %i.zk = load i64, ptr %i.zj, align 8, !dbg !137868, !alias.scope !137865, !noalias !137866, !noundef !14
  %i.zl = getelementptr inbounds nuw i8, ptr %.val354, i64 24, !dbg !137871
  %i.zm = load i64, ptr %i.zl, align 8, !dbg !137871, !range !41541, !alias.scope !137865, !noalias !137866, !noundef !14
  %i.zn = getelementptr inbounds nuw i8, ptr %.val354, i64 56, !dbg !137875
  %i.zo = load i16, ptr %i.zn, align 8, !dbg !137875, !alias.scope !137865, !noalias !137866
  %i.zp = zext i16 %i.zo to i64, !dbg !137875
  %i.zq = getelementptr inbounds nuw i8, ptr %.val354, i64 40, !dbg !137876
  %i.zr = load ptr, ptr %i.zq, align 8, !dbg !137876, !alias.scope !137865, !noalias !137866, !noundef !14 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.zr, null, !dbg !137876
  br i1 %.not.i.i.i.i, label %bb.jr, label %bb.jq, !dbg !137879

bb.jq:                                            ; preds = %bb.jp
  %i.zs = atomicrmw add ptr %i.zr, i64 1 monotonic, align 8, !dbg !137880, !noalias !137889
  %i.zt = icmp slt i64 %i.zs, 0, !dbg !137890
  br i1 %i.zt, label %bb.js, label %bb.jr, !dbg !137890

bb.jr:                                            ; preds = %bb.jq, %bb.jp
  %i.zu = getelementptr inbounds nuw i8, ptr %.val354, i64 48, !dbg !137892
  %i.zv = load ptr, ptr %i.zu, align 8, !dbg !137892, !alias.scope !137865, !noalias !137866, !noundef !14 ; 3 uses
  %.not4.i.i.i.i = icmp eq ptr %i.zv, null, !dbg !137892
  br i1 %.not4.i.i.i.i, label %_RNvXs1U_NtNtCsfcROwRM8ZtH_11polars_plan3dsl7optionsNtB6_17NDJsonReadOptionsNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i.i, label %bb.jt, !dbg !137894

bb.js:                                            ; preds = %bb.jq
  call void @llvm.trap(), !dbg !137895
  unreachable, !dbg !137895

bb.jt:                                            ; preds = %bb.jr
  %i.zw = atomicrmw add ptr %i.zv, i64 1 monotonic, align 8, !dbg !137896, !noalias !137889
  %i.zx = icmp slt i64 %i.zw, 0, !dbg !137904
  br i1 %i.zx, label %bb.ju, label %_RNvXs1U_NtNtCsfcROwRM8ZtH_11polars_plan3dsl7optionsNtB6_17NDJsonReadOptionsNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i.i, !dbg !137904

bb.ju:                                            ; preds = %bb.jt
  call void @llvm.trap(), !dbg !137906
  unreachable, !dbg !137906

_RNvXs1U_NtNtCsfcROwRM8ZtH_11polars_plan3dsl7optionsNtB6_17NDJsonReadOptionsNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i.i: ; preds = %bb.jt, %bb.jr
  %.sroa.18.sroa.0.0.extract.trunc26.i.i = trunc i64 %i.zi to i8, !dbg !137907
  %.sroa.18.sroa.9.0.extract.shift33.i.i = lshr i64 %i.zi, 8, !dbg !137907
  %.sroa.18.sroa.9.0.extract.trunc34.i.i = trunc i64 %.sroa.18.sroa.9.0.extract.shift33.i.i to i8, !dbg !137907
  %.sroa.18.sroa.10.0.extract.shift41.i.i = lshr i64 %i.zi, 16, !dbg !137907
  %.sroa.18.sroa.10.0.extract.trunc42.i.i = trunc i64 %.sroa.18.sroa.10.0.extract.shift41.i.i to i8, !dbg !137907
  %.sroa.18.sroa.11.0.extract.shift49.i.i = and i64 %i.zi, -16777216, !dbg !137908
  %i.zy = inttoptr i64 %i.zp to ptr, !dbg !137907
  br label %bb.ld, !dbg !137911

bb.jv:                                            ; preds = %.noexc453
  %i.zz = getelementptr inbounds nuw i8, ptr %.val354, i64 8, !dbg !137912
  %i.aaa = load ptr, ptr %i.zz, align 8, !dbg !137912, !alias.scope !137831, !noalias !137816, !noundef !14 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.aaa, null, !dbg !137912
  br i1 %.not.i.i.i, label %bb.ke, label %bb.kd, !dbg !137922

bb.jw:                                            ; preds = %.noexc453
  %.sroa.11.0..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %.val354, i64 8, !dbg !137923
  %.sroa.11.0.copyload3.i.i = load i64, ptr %.sroa.11.0..sroa_idx2.i.i, align 8, !dbg !137923, !alias.scope !137850
  %.sroa.18.0..sroa_idx5.i.i = getelementptr inbounds nuw i8, ptr %.val354, i64 16, !dbg !137923
  %.sroa.18.0.copyload6.i.i = load i64, ptr %.sroa.18.0..sroa_idx5.i.i, align 8, !dbg !137923, !alias.scope !137850 ; 4 uses
  %.sroa.18.sroa.0.0.extract.trunc.i.i = trunc i64 %.sroa.18.0.copyload6.i.i to i8, !dbg !137923
  %.sroa.18.sroa.9.0.extract.shift.i.i = lshr i64 %.sroa.18.0.copyload6.i.i, 8, !dbg !137923
  %.sroa.18.sroa.9.0.extract.trunc.i.i = trunc i64 %.sroa.18.sroa.9.0.extract.shift.i.i to i8, !dbg !137923
  %.sroa.18.sroa.10.0.extract.shift.i.i = lshr i64 %.sroa.18.0.copyload6.i.i, 16, !dbg !137923
  %.sroa.18.sroa.10.0.extract.trunc.i.i = trunc i64 %.sroa.18.sroa.10.0.extract.shift.i.i to i8, !dbg !137923
  %.sroa.18.sroa.11.0.extract.shift.i.i = and i64 %.sroa.18.0.copyload6.i.i, -16777216, !dbg !137908
  %.sroa.23.0..sroa_idx9.i.i = getelementptr inbounds nuw i8, ptr %.val354, i64 24, !dbg !137923
  %.sroa.23.0.copyload10.i.i = load i64, ptr %.sroa.23.0..sroa_idx9.i.i, align 8, !dbg !137923, !alias.scope !137850
  %.sroa.25.0..sroa_idx13.i.i = getelementptr inbounds nuw i8, ptr %.val354, i64 32, !dbg !137923
  %.sroa.25.0.copyload14.i.i = load i64, ptr %.sroa.25.0..sroa_idx13.i.i, align 8, !dbg !137923, !alias.scope !137850
  %.sroa.27.0..sroa_idx15.i.i = getelementptr inbounds nuw i8, ptr %.val354, i64 40, !dbg !137923
  %.sroa.27.0.copyload16.i.i = load ptr, ptr %.sroa.27.0..sroa_idx15.i.i, align 8, !dbg !137923, !alias.scope !137850
  %.sroa.29.0..sroa_idx17.i.i = getelementptr inbounds nuw i8, ptr %.val354, i64 48, !dbg !137923
  %.sroa.29.0.copyload18.i.i = load ptr, ptr %.sroa.29.0..sroa_idx17.i.i, align 8, !dbg !137923, !alias.scope !137850
  %.sroa.31.0..sroa_idx19.i.i = getelementptr inbounds nuw i8, ptr %.val354, i64 56, !dbg !137923
  %.sroa.31.0.copyload20.i.i = load ptr, ptr %.sroa.31.0..sroa_idx19.i.i, align 8, !dbg !137923, !alias.scope !137850
  %.sroa.34.0..sroa_idx21.i.i = getelementptr inbounds nuw i8, ptr %.val354, i64 64, !dbg !137923
  %.sroa.34.0.copyload22.i.i = load ptr, ptr %.sroa.34.0..sroa_idx21.i.i, align 8, !dbg !137923, !alias.scope !137850
  br label %bb.ld, !dbg !137911

bb.jx:                                            ; preds = %.noexc453
  %i.aab = getelementptr inbounds nuw i8, ptr %.val354, i64 8, !dbg !137925
  %i.aac = load ptr, ptr %i.aab, align 8, !dbg !137925, !alias.scope !137831, !noalias !137816, !nonnull !14, !noundef !14 ; 2 uses
  %i.aad = atomicrmw add ptr %i.aac, i64 1 monotonic, align 8, !dbg !137935, !noalias !137850
  %i.aae = icmp slt i64 %i.aad, 0, !dbg !137939
  br i1 %i.aae, label %bb.kh, label %bb.kg, !dbg !137939

bb.jy:                                            ; preds = %.noexc453
  %i.aaf = getelementptr inbounds nuw i8, ptr %.val354, i64 8, !dbg !137941 ; 2 uses
  %i.aag = getelementptr inbounds nuw i8, ptr %.val354, i64 31, !dbg !137948
  %i.aah = load i8, ptr %i.aag, align 1, !dbg !137948, !range !1232, !alias.scope !137831, !noalias !137816, !noundef !14
  %i.aai = icmp eq i8 %i.aah, -40, !dbg !137958
  br i1 %i.aai, label %bb.ki, label %bb.kj, !dbg !137958

bb.jz:                                            ; preds = %.noexc453
  %i.aaj = getelementptr inbounds nuw i8, ptr %.val354, i64 8, !dbg !137959 ; 2 uses
  %i.aak = getelementptr inbounds nuw i8, ptr %.val354, i64 31, !dbg !137963
  %i.aal = load i8, ptr %i.aak, align 1, !dbg !137963, !range !1232, !alias.scope !137831, !noalias !137816, !noundef !14
  %i.aam = icmp eq i8 %i.aal, -40, !dbg !137967
  br i1 %i.aam, label %bb.kk, label %bb.kl, !dbg !137967

bb.ka:                                            ; preds = %.noexc453
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !137968, !noalias !137850
  %i.aan = getelementptr inbounds nuw i8, ptr %.val354, i64 48, !dbg !137970
  %i.aao = load ptr, ptr %i.aan, align 8, !dbg !137970, !alias.scope !137831, !noalias !137816, !nonnull !14, !noundef !14 ; 3 uses
  %i.aap = atomicrmw add ptr %i.aao, i64 1 monotonic, align 8, !dbg !137977, !noalias !137850
  %i.aaq = icmp slt i64 %i.aap, 0, !dbg !137980
  br i1 %i.aaq, label %bb.kn, label %bb.km, !dbg !137980

bb.kb:                                            ; preds = %bb.jo
  %i.aar = ptrtoint ptr %i.zc to i64, !dbg !137982
  br label %bb.ld, !dbg !137911

bb.kc:                                            ; preds = %bb.jo
  call void @llvm.trap(), !dbg !137983
  unreachable, !dbg !137983

bb.kd:                                            ; preds = %bb.jv
  %i.aas = atomicrmw add ptr %i.aaa, i64 1 monotonic, align 8, !dbg !137984, !noalias !137850
  %i.aat = icmp slt i64 %i.aas, 0, !dbg !137992
  br i1 %i.aat, label %bb.kf, label %bb.ke, !dbg !137992

bb.ke:                                            ; preds = %bb.kd, %bb.jv
  %i.aau = getelementptr inbounds nuw i8, ptr %.val354, i64 16, !dbg !137994
  %i.aav = load i8, ptr %i.aau, align 8, !dbg !137994, !range !67741, !alias.scope !137831, !noalias !137816, !noundef !14
  %i.aaw = getelementptr inbounds nuw i8, ptr %.val354, i64 17, !dbg !137999
  %i.aax = load i8, ptr %i.aaw, align 1, !dbg !137999, !range !6458, !alias.scope !137831, !noalias !137816, !noundef !14
  %i.aay = getelementptr inbounds nuw i8, ptr %.val354, i64 18, !dbg !137999
  %i.aaz = load i8, ptr %i.aay, align 2, !dbg !137999, !range !6458, !alias.scope !137831, !noalias !137816, !noundef !14
  %i.aba = ptrtoint ptr %i.aaa to i64, !dbg !138000
  br label %bb.ld, !dbg !137911

bb.kf:                                            ; preds = %bb.kd
  call void @llvm.trap(), !dbg !138001
  unreachable, !dbg !138001

bb.kg:                                            ; preds = %bb.jx
  %i.abb = ptrtoint ptr %i.aac to i64, !dbg !138002
  br label %bb.ld, !dbg !137911

bb.kh:                                            ; preds = %bb.jx
  call void @llvm.trap(), !dbg !138003
  unreachable, !dbg !138003

bb.ki:                                            ; preds = %bb.jy
  invoke void @_RNvNvXs1_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone10clone_heap(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aaf) #42
          to label %.noexc.i452 unwind label %bb.lb, !dbg !138004

bb.kj:                                            ; preds = %bb.jy
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.aaf, i64 24, i1 false), !dbg !138005, !noalias !137816
end_hunk_3
