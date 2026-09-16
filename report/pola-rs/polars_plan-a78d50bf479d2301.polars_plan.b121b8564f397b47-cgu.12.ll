Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_plan-a78d50bf479d2301.polars_plan.b121b8564f397b47-cgu.12?download=true
inline.NumInlined: 7821
inline.NumDeleted: 2854
loop-unroll.NumCompletelyUnrolled: 29
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 48
begin_hunk_0_@_RNvMs0_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer17slice_pushdown_lpNtB5_13SlicePushDown8pushdown:bb.a
  br label %_RINvCsiMOpCev58qw_7stacker10maybe_growINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir2IRNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENCNvMs0_NtNtB1g_9optimizer17slice_pushdown_lpNtB2L_13SlicePushDown8pushdown0EB1i_.exit, !dbg !92351

_RINvCsiMOpCev58qw_7stacker10maybe_growINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir2IRNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENCNvMs0_NtNtB1g_9optimizer17slice_pushdown_lpNtB2L_13SlicePushDown8pushdown0EB1i_.exit: ; preds = %bb.b, %_RNCNvMs0_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer17slice_pushdown_lpNtB7_13SlicePushDown8pushdown0Bd_.exit
  ret void, !dbg !93250
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer19slice_pushdown_exprNtNtB7_17slice_pushdown_lp13SlicePushDown24aexpr_slice_pushdown_rec(ptr noalias noundef align 8 dereferenceable(200) initializes((16, 24)) %0, i64 noundef %1, ptr noalias noundef align 8 dereferenceable(32) %2, ptr noalias noundef align 8 dereferenceable(24) %3, ptr noalias noundef align 8 dereferenceable(16) %4, ptr noalias noundef align 8 dereferenceable(64) %5, i1 noundef zeroext %6) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !93251 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [1 x i8], align 1                 ; 2 uses
  %i.f = zext i1 %6 to i8
  store i8 %i.f, ptr %i.e, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !93378
  store ptr %3, ptr %i.d, align 8, !dbg !93379
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !93379
  store ptr %4, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !93379
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !93379
  store ptr %5, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !93379
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24, !dbg !93379
  store ptr %i.e, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !93379
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !93373
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !93380
  store i64 0, ptr %i.g, align 8, !dbg !93380
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !93381
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !93381
  %i.j = load ptr, ptr %i.i, align 8, !dbg !93381, !nonnull !2568, !noundef !2568 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !93382 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !dbg !93382, !noundef !2568 ; 4 uses
  store i64 0, ptr %i.k, align 8, !dbg !93383
  call void @llvm.experimental.noalias.scope.decl(metadata !93365), !dbg !93384
  %i.m = icmp eq i64 %i.l, 0, !dbg !93385
  br i1 %i.m, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeSNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer19slice_pushdown_expr5StateEBP_.exit, label %.lr.ph.i, !dbg !93385

.lr.ph.i:                                         ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %bb.b, !dbg !93385

bb.b:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer19slice_pushdown_expr5StateEBO_.exit.i, %.lr.ph.i
  %.sroa.0.08.i = phi i64 [ 0, %.lr.ph.i ], [ %i.q, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer19slice_pushdown_expr5StateEBO_.exit.i ] ; 2 uses
  %i.p = getelementptr inbounds nuw [24 x i8], ptr %i.j, i64 %.sroa.0.08.i, !dbg !93385 ; 3 uses
  %i.q = add nuw i64 %.sroa.0.08.i, 1, !dbg !93385 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !93366), !dbg !93385
  call void @llvm.experimental.noalias.scope.decl(metadata !93367), !dbg !93386
  call void @llvm.experimental.noalias.scope.decl(metadata !93368), !dbg !93387
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8, !dbg !93388
  store i32 0, ptr %i.r, align 8, !dbg !93388, !alias.scope !93369
  call void @llvm.experimental.noalias.scope.decl(metadata !93370), !dbg !93389
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 12, !dbg !93390
  %i.t = load i32, ptr %i.s, align 4, !dbg !93390, !range !2869, !alias.scope !93371, !noundef !2568 ; 2 uses
  %i.u = icmp eq i32 %i.t, 1, !dbg !93391
  br i1 %i.u, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer19slice_pushdown_expr5StateEBO_.exit.i, label %bb.c, !dbg !93391

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !93392, !noalias !93371
  %i.v = load ptr, ptr %i.p, align 8, !dbg !93393, !alias.scope !93371, !nonnull !2568, !noundef !2568
  %i.w = zext i32 %i.t to i64, !dbg !93394
  store i64 %i.w, ptr %i.b, align 8, !dbg !93395, !noalias !93371
  store ptr %i.v, ptr %i.n, align 8, !dbg !93395, !noalias !93371
  store i64 0, ptr %i.o, align 8, !dbg !93395, !noalias !93371
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtNtCscgRAwXFJnXP_4core3mem13manually_drop12ManuallyDropNtNtCs2mZqlW55729_12polars_utils5arena4NodeEENtNtNtBM_3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.f unwind label %bb.d, !dbg !93396, !noalias !93371

bb.d:                                             ; preds = %bb.c
  %i.x = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i.i.i.i = load i64, ptr %i.b, align 8, !dbg !93396, !alias.scope !93372, !noalias !93371 ; 2 uses
  %i.y = icmp eq i64 %.val2.i.i.i.i.i.i, 0
  br i1 %i.y, label %.body.i, label %bb.e, !dbg !93397

bb.e:                                             ; preds = %bb.d
  %.val3.i.i.i.i.i.i = load ptr, ptr %i.n, align 8, !dbg !93396, !alias.scope !93372, !noalias !93371, !nonnull !2568, !noundef !2568
  %i.z = shl nuw i64 %.val2.i.i.i.i.i.i, 3, !dbg !93398
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i.i.i, i64 noundef %i.z, i64 noundef range(i64 1, -9223372036854775807) 8) #46, !dbg !93399, !noalias !93371
  br label %.body.i, !dbg !93400

bb.f:                                             ; preds = %bb.c
  %.val.i.i.i.i.i.i = load i64, ptr %i.b, align 8, !dbg !93396, !alias.scope !93372, !noalias !93371 ; 2 uses
  %i.aa = icmp eq i64 %.val.i.i.i.i.i.i, 0
  br i1 %i.aa, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtNtB4_3mem13manually_drop12ManuallyDropNtNtCs2mZqlW55729_12polars_utils5arena4NodeEEECsfcROwRM8ZtH_11polars_plan.exit.i.i.i.i.i, label %bb.g, !dbg !93401

bb.g:                                             ; preds = %bb.f
  %.val1.i.i.i.i.i.i = load ptr, ptr %i.n, align 8, !dbg !93396, !alias.scope !93372, !noalias !93371, !nonnull !2568, !noundef !2568
  %i.ab = shl nuw i64 %.val.i.i.i.i.i.i, 3, !dbg !93402
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i, i64 noundef %i.ab, i64 noundef range(i64 1, -9223372036854775807) 8) #46, !dbg !93403, !noalias !93371
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtNtB4_3mem13manually_drop12ManuallyDropNtNtCs2mZqlW55729_12polars_utils5arena4NodeEEECsfcROwRM8ZtH_11polars_plan.exit.i.i.i.i.i, !dbg !93404

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtNtB4_3mem13manually_drop12ManuallyDropNtNtCs2mZqlW55729_12polars_utils5arena4NodeEEECsfcROwRM8ZtH_11polars_plan.exit.i.i.i.i.i: ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !93405, !noalias !93371
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer19slice_pushdown_expr5StateEBO_.exit.i, !dbg !93406

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer19slice_pushdown_expr5StateEBO_.exit.i: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtNtB4_3mem13manually_drop12ManuallyDropNtNtCs2mZqlW55729_12polars_utils5arena4NodeEEECsfcROwRM8ZtH_11polars_plan.exit.i.i.i.i.i, %bb.b
  %i.ac = icmp eq i64 %i.q, %i.l, !dbg !93385
  br i1 %i.ac, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeSNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer19slice_pushdown_expr5StateEBP_.exit, label %bb.b, !dbg !93385

bb.h:                                             ; preds = %.lr.ph
  %i.ad = add i64 %.sroa.0.1.i35, 1, !dbg !93385  ; 2 uses
  %i.ae = icmp eq i64 %i.ad, %i.l, !dbg !93385
  br i1 %i.ae, label %common.resume, label %.lr.ph, !dbg !93385

.body.i:                                          ; preds = %bb.e, %bb.d
  %i.af = icmp eq i64 %i.q, %i.l, !dbg !93385
  br i1 %i.af, label %common.resume, label %.lr.ph, !dbg !93385

.lr.ph:                                           ; preds = %.body.i, %bb.h
  %.sroa.0.1.i35 = phi i64 [ %i.ad, %bb.h ], [ %i.q, %.body.i ] ; 2 uses
  %i.ag = getelementptr inbounds nuw [24 x i8], ptr %i.j, i64 %.sroa.0.1.i35, !dbg !93385
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer19slice_pushdown_expr5StateEBO_(ptr noalias noundef align 8 dereferenceable(24) %i.ag) #49
          to label %bb.h unwind label %bb.i, !dbg !93385

common.resume:                                    ; preds = %bb.h, %.body.i, %bb.l, %bb.m
  %common.resume.op = phi { ptr, i32 } [ %i.ap, %bb.l ], [ %i.ap, %bb.m ], [ %i.x, %.body.i ], [ %i.x, %bb.h ]
  resume { ptr, i32 } %common.resume.op, !dbg !93407

bb.i:                                             ; preds = %.lr.ph
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #50, !dbg !93385, !noalias !93365
  unreachable, !dbg !93385

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeSNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer19slice_pushdown_expr5StateEBP_.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer19slice_pushdown_expr5StateEBO_.exit.i, %bb.a
  call void @_RINvNtNtCsfcROwRM8ZtH_11polars_plan9traversal14tree_traversal14tree_traversalNtNtCs2mZqlW55729_12polars_utils5arena4NodeINtB1f_5ArenaNtNtNtB6_5plans5aexpr5AExprENtNtNtB2b_9optimizer19slice_pushdown_expr5StateuEB6_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %2, ptr noalias noundef nonnull align 8 dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) @569), !dbg !93408
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !93409
  %i.aj = load i8, ptr %i.ai, align 8, !dbg !93409, !range !3506, !noundef !2568
  %i.ak = icmp eq i8 %i.aj, 4, !dbg !93409
  br i1 %i.ak, label %bb.p, label %bb.j, !dbg !93410

bb.j:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeSNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer19slice_pushdown_expr5StateEBP_.exit
  %.sroa.07.sroa.0.0.copyload = load ptr, ptr %i.c, align 8, !dbg !93411 ; 2 uses
  %.sroa.07.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 12, !dbg !93411
  %.sroa.07.sroa.5.0.copyload = load i32, ptr %.sroa.07.sroa.5.0..sroa_idx, align 4, !dbg !93411 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !93412
  %i.al = icmp eq i32 %.sroa.07.sroa.5.0.copyload, 1, !dbg !93413
  br i1 %i.al, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer19slice_pushdown_expr5StateEBO_.exit, label %bb.k, !dbg !93413

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !93414, !noalias !93375
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.07.sroa.0.0.copyload) ]
  %i.am = zext i32 %.sroa.07.sroa.5.0.copyload to i64, !dbg !93415
  store i64 %i.am, ptr %i.a, align 8, !dbg !93416, !noalias !93375
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !93416 ; 3 uses
  store ptr %.sroa.07.sroa.0.0.copyload, ptr %i.an, align 8, !dbg !93416, !noalias !93375
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !93416
  store i64 0, ptr %i.ao, align 8, !dbg !93416, !noalias !93375
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtNtCscgRAwXFJnXP_4core3mem13manually_drop12ManuallyDropNtNtCs2mZqlW55729_12polars_utils5arena4NodeEENtNtNtBM_3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %bb.n unwind label %bb.l, !dbg !93417, !noalias !93375

bb.l:                                             ; preds = %bb.k
  %i.ap = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i.i.i = load i64, ptr %i.a, align 8, !dbg !93417, !alias.scope !93376, !noalias !93375 ; 2 uses
  %i.aq = icmp eq i64 %.val2.i.i.i.i.i, 0
  br i1 %i.aq, label %common.resume, label %bb.m, !dbg !93418

bb.m:                                             ; preds = %bb.l
  %.val3.i.i.i.i.i = load ptr, ptr %i.an, align 8, !dbg !93417, !alias.scope !93376, !noalias !93375, !nonnull !2568, !noundef !2568
  %i.ar = shl nuw i64 %.val2.i.i.i.i.i, 3, !dbg !93419
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i.i, i64 noundef %i.ar, i64 noundef range(i64 1, -9223372036854775807) 8) #46, !dbg !93420, !noalias !93375
  br label %common.resume, !dbg !93421

bb.n:                                             ; preds = %bb.k
  %.val.i.i.i.i.i = load i64, ptr %i.a, align 8, !dbg !93417, !alias.scope !93376, !noalias !93375 ; 2 uses
  %i.as = icmp eq i64 %.val.i.i.i.i.i, 0
  br i1 %i.as, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtNtB4_3mem13manually_drop12ManuallyDropNtNtCs2mZqlW55729_12polars_utils5arena4NodeEEECsfcROwRM8ZtH_11polars_plan.exit.i.i.i.i, label %bb.o, !dbg !93422

bb.o:                                             ; preds = %bb.n
  %.val1.i.i.i.i.i = load ptr, ptr %i.an, align 8, !dbg !93417, !alias.scope !93376, !noalias !93375, !nonnull !2568, !noundef !2568
  %i.at = shl nuw i64 %.val.i.i.i.i.i, 3, !dbg !93423
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i, i64 noundef %i.at, i64 noundef range(i64 1, -9223372036854775807) 8) #46, !dbg !93424, !noalias !93375
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtNtB4_3mem13manually_drop12ManuallyDropNtNtCs2mZqlW55729_12polars_utils5arena4NodeEEECsfcROwRM8ZtH_11polars_plan.exit.i.i.i.i, !dbg !93425

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtNtB4_3mem13manually_drop12ManuallyDropNtNtCs2mZqlW55729_12polars_utils5arena4NodeEEECsfcROwRM8ZtH_11polars_plan.exit.i.i.i.i: ; preds = %bb.o, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !93426, !noalias !93375
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer19slice_pushdown_expr5StateEBO_.exit, !dbg !93427

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer19slice_pushdown_expr5StateEBO_.exit: ; preds = %bb.j, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtNtB4_3mem13manually_drop12ManuallyDropNtNtCs2mZqlW55729_12polars_utils5arena4NodeEEECsfcROwRM8ZtH_11polars_plan.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !93428
  ret void, !dbg !93429

bb.p:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeSNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer19slice_pushdown_expr5StateEBP_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !93412
  call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @570) #54, !dbg !93430
  unreachable, !dbg !93430
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i8 @_RNvMs0_NtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer17simplify_ordering4exprNtB5_19ExprOrderSimplifier24simplify_projected_exprs(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address) %1, i64 noundef range(i64 0, 1152921504606846976) %2, i1 noundef zeroext %3) unnamed_addr #0 !dbg !93431 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !93489
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 25, !dbg !93490 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !93490 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !93490 ; 2 uses
  %.idx = shl nuw nsw i64 %2, 3, !dbg !93491
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %.idx, !dbg !93491
  %i.f = icmp eq i64 %2, 0, !dbg !93492
  br i1 %i.f, label %.thread, label %bb.b, !dbg !93473

.thread:                                          ; preds = %bb.a
  store i8 0, ptr %i.c, align 8, !dbg !93493
  store i64 0, ptr %i.d, align 8, !dbg !93494
  store i64 0, ptr %i.a, align 8, !dbg !93495
  store i8 0, ptr %i.b, align 1, !dbg !93496
  br label %bb.h, !dbg !93497

bb.b:                                             ; preds = %bb.a, %_RNvMNtNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer17simplify_ordering4expr10__order_accNtB2_12ExprOrderAcc3add.exit
  %i.g = phi i64 [ %i.aa, %_RNvMNtNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer17simplify_ordering4expr10__order_accNtB2_12ExprOrderAcc3add.exit ], [ undef, %bb.a ]
  %.sroa.02.016 = phi ptr [ %i.n, %_RNvMNtNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer17simplify_ordering4expr10__order_accNtB2_12ExprOrderAcc3add.exit ], [ %1, %bb.a ] ; 2 uses
  %i.h = phi i64 [ %i.af, %_RNvMNtNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer17simplify_ordering4expr10__order_accNtB2_12ExprOrderAcc3add.exit ], [ 0, %bb.a ] ; 2 uses
  %i.i = phi i8 [ %i.ae, %_RNvMNtNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer17simplify_ordering4expr10__order_accNtB2_12ExprOrderAcc3add.exit ], [ 0, %bb.a ] ; 3 uses
  %i.j = phi i8 [ %i.ag, %_RNvMNtNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer17simplify_ordering4expr10__order_accNtB2_12ExprOrderAcc3add.exit ], [ 0, %bb.a ] ; 3 uses
  %i.k = phi i8 [ %i.ad, %_RNvMNtNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer17simplify_ordering4expr10__order_accNtB2_12ExprOrderAcc3add.exit ], [ 0, %bb.a ] ; 2 uses
  %i.l = phi i64 [ %i.ac, %_RNvMNtNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer17simplify_ordering4expr10__order_accNtB2_12ExprOrderAcc3add.exit ], [ 0, %bb.a ]
  %i.m = phi i64 [ %i.ab, %_RNvMNtNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer17simplify_ordering4expr10__order_accNtB2_12ExprOrderAcc3add.exit ], [ 0, %bb.a ]
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.02.016, i64 8, !dbg !93498 ; 2 uses
  %i.o = load i64, ptr %.sroa.02.016, align 8, !dbg !93499, !noundef !2568 ; 2 uses
  %i.p = tail call noundef i8 @_RNvMs0_NtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer17simplify_ordering4exprNtB5_19ExprOrderSimplifier3rec(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.o, i1 noundef zeroext false), !dbg !93500 ; 3 uses
  %i.q = and i8 %i.j, 2, !dbg !93501
  %i.r = icmp eq i8 %i.q, 0, !dbg !93502
  %i.s = icmp eq i8 %i.p, 0                       ; 2 uses
  %or.cond.i = or i1 %i.r, %i.s, !dbg !93502
  br i1 %or.cond.i, label %bb.c, label %.thread.i, !dbg !93502

bb.c:                                             ; preds = %bb.b
  %i.t = and i8 %i.p, 2, !dbg !93503
  %.not.i = icmp eq i8 %i.t, 0, !dbg !93504
  br i1 %.not.i, label %bb.d, label %bb.e, !dbg !93504

.thread.i:                                        ; preds = %bb.e, %bb.b
  %.sroa.0.0.ph.i = phi i8 [ 1, %bb.b ], [ %i.w, %bb.e ]
  %i.u = or i8 %.sroa.0.0.ph.i, %i.i, !dbg !93493 ; 2 uses
  br label %bb.f, !dbg !93505

bb.d:                                             ; preds = %bb.c
  br i1 %i.s, label %_RNvMNtNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer17simplify_ordering4expr10__order_accNtB2_12ExprOrderAcc3add.exit, label %bb.f, !dbg !93505

bb.e:                                             ; preds = %bb.c
  %i.v = icmp ne i8 %i.j, 0, !dbg !93506
  %i.w = zext i1 %i.v to i8, !dbg !93493
  br label %.thread.i, !dbg !93507

bb.f:                                             ; preds = %bb.d, %.thread.i
  %i.x = phi i8 [ %i.k, %bb.d ], [ %i.u, %.thread.i ]
  %i.y = phi i8 [ %i.i, %bb.d ], [ %i.u, %.thread.i ]
  %i.z = add i64 %i.h, 1, !dbg !93494             ; 2 uses
  br label %_RNvMNtNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer17simplify_ordering4expr10__order_accNtB2_12ExprOrderAcc3add.exit, !dbg !93508

_RNvMNtNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer17simplify_ordering4expr10__order_accNtB2_12ExprOrderAcc3add.exit: ; preds = %bb.d, %bb.f
  %i.aa = phi i64 [ %i.g, %bb.d ], [ %i.o, %bb.f ] ; 2 uses
  %i.ab = phi i64 [ %i.m, %bb.d ], [ 1, %bb.f ]   ; 2 uses
  %i.ac = phi i64 [ %i.l, %bb.d ], [ %i.z, %bb.f ] ; 2 uses
  %i.ad = phi i8 [ %i.k, %bb.d ], [ %i.x, %bb.f ] ; 2 uses
  %i.ae = phi i8 [ %i.i, %bb.d ], [ %i.y, %bb.f ] ; 2 uses
  %i.af = phi i64 [ %i.h, %bb.d ], [ %i.z, %bb.f ]
  %i.ag = or i8 %i.p, %i.j, !dbg !93509           ; 5 uses
  %i.ah = icmp eq ptr %i.n, %i.e, !dbg !93492
  br i1 %i.ah, label %bb.g, label %bb.b, !dbg !93473

bb.g:                                             ; preds = %_RNvMNtNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer17simplify_ordering4expr10__order_accNtB2_12ExprOrderAcc3add.exit
  %4 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.aa, ptr %4, align 8, !dbg !93495
  %i.ai = trunc nuw i8 %i.ae to i1, !dbg !93510
  store i8 %i.ad, ptr %i.c, align 8, !dbg !93493
  store i64 %i.ac, ptr %i.d, align 8, !dbg !93494
  store i64 %i.ab, ptr %i.a, align 8, !dbg !93495
  store i8 %i.ag, ptr %i.b, align 1, !dbg !93496
  br i1 %i.ai, label %bb.i, label %bb.h, !dbg !93497

bb.h:                                             ; preds = %.thread, %bb.i, %bb.g
  %.lcssa1535 = phi i8 [ 0, %.thread ], [ %i.ag, %bb.i ], [ %i.ag, %bb.g ]
  %i.aj = call { i64, i64 } @_RNvMNtNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer17simplify_ordering4expr10__order_accNtB2_12ExprOrderAcc19single_ordered_node(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a), !dbg !93511 ; 2 uses
  %i.ak = extractvalue { i64, i64 } %i.aj, 0, !dbg !93511
  %i.al = trunc nuw i64 %i.ak to i1, !dbg !93512
  %brmerge.demorgan = and i1 %3, %i.al, !dbg !93512
  br i1 %brmerge.demorgan, label %bb.j, label %bb.k, !dbg !93512

bb.i:                                             ; preds = %bb.g
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !93513 ; 2 uses
  %i.an = load i8, ptr %i.am, align 8, !dbg !93513, !noundef !2568
  %i.ao = or i8 %i.an, %i.ag, !dbg !93514
  store i8 %i.ao, ptr %i.am, align 8, !dbg !93513
  br label %bb.h, !dbg !93515

bb.j:                                             ; preds = %bb.h
  %i.ap = extractvalue { i64, i64 } %i.aj, 1, !dbg !93511
  %i.aq = call noundef i8 @_RNvMs0_NtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer17simplify_ordering4exprNtB5_19ExprOrderSimplifier3rec(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.ap, i1 noundef zeroext true), !dbg !93516
  br label %bb.k, !dbg !93517

bb.k:                                             ; preds = %bb.h, %bb.j
  %.sroa.0.0 = phi i8 [ %i.aq, %bb.j ], [ %.lcssa1535, %bb.h ], !dbg !93518
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !93519
  ret i8 %.sroa.0.0, !dbg !93520
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i8 @_RNvMs0_NtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer17simplify_ordering4exprNtB5_19ExprOrderSimplifier3rec(ptr noalias noundef align 8 dereferenceable(24) %0, i64 noundef %1, i1 noundef zeroext %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !93521 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = alloca [16 x i8], align 8                ; 3 uses
  %i.c = alloca [16 x i8], align 8                ; 3 uses
  %i.d = alloca [16 x i8], align 8                ; 3 uses
  %i.e = alloca [16 x i8], align 8                ; 3 uses
  %i.f = alloca [16 x i8], align 8                ; 3 uses
  %i.g = alloca [16 x i8], align 8                ; 3 uses
  %i.h = alloca [16 x i8], align 8                ; 3 uses
  %i.i = alloca [16 x i8], align 8                ; 3 uses
  %i.j = alloca [16 x i8], align 8                ; 3 uses
  %i.k = alloca [16 x i8], align 8                ; 3 uses
  %i.l = alloca [144 x i8], align 16              ; 7 uses
  %i.m = alloca [144 x i8], align 16              ; 4 uses
  %i.n = alloca [32 x i8], align 8                ; 9 uses
  %i.o = alloca [8 x i8], align 8                 ; 4 uses
  %i.p = alloca [144 x i8], align 16              ; 4 uses
  %i.q = alloca [144 x i8], align 16              ; 4 uses
  %i.r = alloca [16 x i8], align 8                ; 5 uses
  %i.s = alloca [144 x i8], align 16              ; 4 uses
  %i.t = alloca [144 x i8], align 16              ; 4 uses
  %i.u = alloca [32 x i8], align 8                ; 11 uses
  %i.v = alloca [32 x i8], align 8                ; 11 uses
  %i.w = alloca [24 x i8], align 8                ; 12 uses
  %i.x = alloca [24 x i8], align 8                ; 7 uses
  %i.y = tail call noundef i64 @_RNvCseW9CSxMs6pk_9recursive22get_minimum_stack_size(), !dbg !94334
  %i.z = tail call noundef i64 @_RNvCseW9CSxMs6pk_9recursive25get_stack_allocation_size(), !dbg !94334
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !dbg !94334
  store ptr %0, ptr %i.x, align 8, !dbg !94334
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 8, !dbg !94334
  store i64 %1, ptr %i.aa, align 8, !dbg !94334
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 16, !dbg !94334
  %i.ac = zext i1 %2 to i8, !dbg !94334
  store i8 %i.ac, ptr %i.ab, align 8, !dbg !94334
  %i.ad = tail call { i64, i64 } @_RNvCsiMOpCev58qw_7stacker15remaining_stack(), !dbg !94335, !noalias !94131 ; 2 uses
  %i.ae = extractvalue { i64, i64 } %i.ad, 0, !dbg !94335
  %i.af = trunc nuw i64 %i.ae to i1, !dbg !94336
  %i.ag = extractvalue { i64, i64 } %i.ad, 1
  %.not.i = icmp uge i64 %i.ag, %i.y
  %or.cond.i.not = select i1 %i.af, i1 %.not.i, i1 false, !dbg !94336
  br i1 %or.cond.i.not, label %bb.c, label %bb.b, !dbg !94336

bb.b:                                             ; preds = %bb.a
  %i.ah = call noundef i8 @_RINvCsiMOpCev58qw_7stacker4growNtNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer17simplify_ordering4expr16ObservableOrdersNCNvMs0_Bv_NtBv_19ExprOrderSimplifier3rec0EBD_(i64 noundef %i.z, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.x), !dbg !94337
  br label %_RINvCsiMOpCev58qw_7stacker10maybe_growNtNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer17simplify_ordering4expr16ObservableOrdersNCNvMs0_BC_NtBC_19ExprOrderSimplifier3rec0EBK_.exit, !dbg !94338

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !dbg !94339, !noalias !94131
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.x, i64 24, i1 false), !dbg !94339
  tail call void @llvm.experimental.noalias.scope.decl(metadata !94132), !dbg !94339
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !94340
  %i.ai = load ptr, ptr %i.w, align 8, !dbg !94340, !alias.scope !94132, !noalias !94131, !nonnull !2568, !align !2783, !noundef !2568 ; 86 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8, !dbg !94340 ; 9 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !dbg !94340, !noalias !94133, !nonnull !2568, !align !2783, !noundef !2568 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.w, i64 8, !dbg !94341 ; 26 uses
  %i.am = load i64, ptr %i.al, align 8, !dbg !94341, !alias.scope !94132, !noalias !94131, !noundef !2568 ; 16 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 16, !dbg !94342 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !dbg !94342, !noalias !94133, !noundef !2568 ; 2 uses
  %i.ap = icmp ult i64 %i.am, %i.ao, !dbg !94343
  br i1 %i.ap, label %bb.e, label %bb.d, !dbg !94343, !prof !2644

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @426) #54, !dbg !94344, !noalias !94133, !inline_history !93541
  unreachable, !dbg !94344

bb.e:                                             ; preds = %bb.c
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ak, i64 8, !dbg !94345 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !dbg !94345, !noalias !94133, !nonnull !2568, !noundef !2568 ; 2 uses
  %i.as = getelementptr inbounds nuw [144 x i8], ptr %i.ar, i64 %i.am, !dbg !94346 ; 36 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 112, !dbg !94340 ; 2 uses
  %i.au = load i64, ptr %i.at, align 16, !dbg !94340, !range !2923, !noalias !94133, !noundef !2568 ; 3 uses
  %i.av = icmp ne i64 %i.au, -9223372036854775791, !dbg !94340
  tail call void @llvm.assume(i1 %i.av), !dbg !94340, !noalias !94131
  %i.aw = xor i64 %i.au, -9223372036854775808, !dbg !94340
  %i.ax = icmp slt i64 %i.au, 0, !dbg !94340
  %i.ay = select i1 %i.ax, i64 %i.aw, i64 17, !dbg !94340
  switch i64 %i.ay, label %bb.f [
    i64 0, label %_RNCNvMs0_NtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer17simplify_ordering4exprNtB7_19ExprOrderSimplifier3rec0Bf_.exit
    i64 1, label %bb.g
    i64 2, label %bb.h
    i64 3, label %bb.i
    i64 4, label %bb.j
    i64 5, label %bb.k
    i64 6, label %bb.l
    i64 7, label %bb.m
    i64 8, label %bb.n
    i64 9, label %bb.o
    i64 10, label %bb.p
    i64 11, label %bb.q
    i64 12, label %bb.k
    i64 13, label %bb.r
    i64 14, label %bb.cf
    i64 15, label %bb.s
    i64 16, label %bb.t
    i64 17, label %bb.u
    i64 18, label %bb.v
    i64 19, label %bb.w
    i64 20, label %bb.x
    i64 21, label %bb.z
  ], !dbg !94347

default.unreachable334:                           ; preds = %bb.ax
  unreachable

bb.f:                                             ; preds = %bb.e
  unreachable, !dbg !94348

bb.g:                                             ; preds = %bb.e
  %i.az = load i64, ptr %i.as, align 16, !dbg !94349, !noalias !94133, !noundef !2568
  %i.ba = getelementptr inbounds nuw i8, ptr %i.w, i64 16, !dbg !94350
  %i.bb = load i8, ptr %i.ba, align 8, !dbg !94350, !range !2723, !alias.scope !94132, !noalias !94131, !noundef !2568
  %i.bc = trunc nuw i8 %i.bb to i1, !dbg !94350
  %i.bd = tail call noundef i8 @_RNvMs0_NtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer17simplify_ordering4exprNtB5_19ExprOrderSimplifier3rec(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ai, i64 noundef %i.az, i1 noundef zeroext %i.bc), !dbg !94351, !noalias !94133, !inline_history !93541
  %i.be = or i8 %i.bd, 2, !dbg !94352
  br label %_RNCNvMs0_NtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer17simplify_ordering4exprNtB7_19ExprOrderSimplifier3rec0Bf_.exit, !dbg !94353

bb.h:                                             ; preds = %bb.e
  br label %_RNCNvMs0_NtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer17simplify_ordering4exprNtB7_19ExprOrderSimplifier3rec0Bf_.exit, !dbg !94354

bb.i:                                             ; preds = %bb.e
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ai, i64 17, !dbg !94355
  %i.bg = load i8, ptr %i.bf, align 1, !dbg !94355, !range !2723, !noalias !94133, !noundef !2568
  %i.bh = trunc nuw i8 %i.bg to i1, !dbg !94355
  br i1 %i.bh, label %bb.aa, label %bb.ab, !dbg !94356, !prof !2644

bb.j:                                             ; preds = %bb.e
  %i.bi = load i8, ptr %i.as, align 16, !dbg !94357, !range !2905, !noalias !94133, !noundef !2568 ; 2 uses
  %i.bj = icmp ne i8 %i.bi, 32, !dbg !94357
  tail call void @llvm.assume(i1 %i.bj), !dbg !94357, !noalias !94131
  %i.bk = tail call i8 @llvm.umax.i8(i8 %i.bi, i8 31), !dbg !94357
  %narrow.off.i = add nsw i8 %i.bk, -33, !dbg !94357
  %switch.i = icmp ult i8 %narrow.off.i, 2, !dbg !94358
  %..i = select i1 %switch.i, i8 2, i8 0, !dbg !94359
  br label %_RNCNvMs0_NtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer17simplify_ordering4exprNtB7_19ExprOrderSimplifier3rec0Bf_.exit, !dbg !94359

bb.k:                                             ; preds = %bb.e, %bb.e
  %i.bl = load ptr, ptr %i.ai, align 8, !dbg !94360, !noalias !94133, !nonnull !2568, !align !2783, !noundef !2568
  %i.bm = call noundef ptr @_RINvMs3_NtCse4dvU5uQ85g_8indexmap3mapINtB6_8IndexMapNtNtCs2mZqlW55729_12polars_utils5arena4NodeNtNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer17simplify_ordering4expr16ObservableOrdersNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE3getBO_EB1F_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.bl, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.al), !dbg !94361, !noalias !94131, !inline_history !93541 ; 2 uses
  %.not144.i = icmp eq ptr %i.bm, null, !dbg !94360
  br i1 %.not144.i, label %bb.bg, label %bb.bf, !dbg !94362

bb.l:                                             ; preds = %bb.e
  %i.bn = getelementptr inbounds nuw i8, ptr %i.as, i64 48, !dbg !94363
  %i.bo = load i64, ptr %i.bn, align 16, !dbg !94363, !noalias !94133, !noundef !2568
  %i.bp = getelementptr inbounds nuw i8, ptr %i.w, i64 16, !dbg !94364
  %i.bq = load i8, ptr %i.bp, align 8, !dbg !94364, !range !2723, !alias.scope !94132, !noalias !94131, !noundef !2568
  %i.br = trunc nuw i8 %i.bq to i1, !dbg !94364
  %i.bs = tail call noundef i8 @_RNvMs0_NtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer17simplify_ordering4exprNtB5_19ExprOrderSimplifier3rec(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ai, i64 noundef %i.bo, i1 noundef zeroext %i.br), !dbg !94365, !noalias !94133, !inline_history !93541
  br label %_RNCNvMs0_NtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer17simplify_ordering4exprNtB7_19ExprOrderSimplifier3rec0Bf_.exit, !dbg !94366

bb.m:                                             ; preds = %bb.e
  %i.bt = load i64, ptr %i.as, align 16, !dbg !94367, !noalias !94133, !noundef !2568 ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.w, i64 16, !dbg !94368
  %i.bv = load i8, ptr %i.bu, align 8, !dbg !94368, !range !2723, !alias.scope !94132, !noalias !94131, !noundef !2568
  %i.bw = trunc nuw i8 %i.bv to i1, !dbg !94368
  br i1 %i.bw, label %bb.ad, label %bb.ac, !dbg !94369

bb.n:                                             ; preds = %bb.e
  %i.bx = load i64, ptr %i.as, align 16, !dbg !94370, !noalias !94133, !noundef !2568
  %i.by = getelementptr inbounds nuw i8, ptr %i.as, i64 8, !dbg !94371
  %i.bz = load i64, ptr %i.by, align 8, !dbg !94371, !noalias !94133, !noundef !2568
  %i.ca = getelementptr inbounds nuw i8, ptr %i.as, i64 16, !dbg !94372
  %i.cb = load i8, ptr %i.ca, align 16, !dbg !94372, !range !2723, !noalias !94133, !noundef !2568
  %i.cc = load ptr, ptr %i.ai, align 8, !dbg !94373, !noalias !94133, !nonnull !2568, !align !2783, !noundef !2568
end_hunk_0
