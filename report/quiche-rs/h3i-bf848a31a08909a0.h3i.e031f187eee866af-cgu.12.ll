Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quiche-rs/original/h3i-bf848a31a08909a0.h3i.e031f187eee866af-cgu.12?download=true
inline.NumInlined: 450
inline.NumDeleted: 226
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_RNvMsb_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingyyE10take_frontCsjfnSKV9Rz3v_3h3i:bb.a
    #dbg_value(i64 %.sroa.020.036, !13267, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13323)
    #dbg_value(i64 %.sroa.020.036, !13326, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13329)
    #dbg_value(i64 %.sroa.020.036, !13282, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13331)
    #dbg_value(i64 %.sroa.020.036, !13272, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13278)
    #dbg_value(ptr %i.j, !13282, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13331)
    #dbg_value(ptr %i.j, !13272, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13278)
    #dbg_value(ptr %i.j, !13273, !DIExpression(), !13332)
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 192, !dbg !13362
    #dbg_value(ptr %i.k, !13334, !DIExpression(), !13341)
    #dbg_value(ptr %i.k, !13343, !DIExpression(), !13348)
    #dbg_value(ptr %i.k, !13349, !DIExpression(), !13352)
  %i.l = load ptr, ptr %i.k, align 8, !dbg !13363, !nonnull !1652, !noundef !1652
    #dbg_value(ptr %i.l, !13267, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13323)
    #dbg_value(ptr %i.l, !13279, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13324)
    #dbg_value(ptr %i.l, !13280, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13325)
    #dbg_value(ptr %i.l, !13326, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13329)
    #dbg_value(ptr %i.l, !13274, !DIExpression(), !13330)
    #dbg_value(i64 %.sroa.020.036, !13280, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13325)
    #dbg_value(i64 %.sroa.020.036, !13279, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13324)
    #dbg_value(i64 %.sroa.020.036, !13267, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13323)
    #dbg_value(i64 %.sroa.020.036, !13326, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13329)
    #dbg_value(i64 %.sroa.020.036, !13282, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13331)
    #dbg_value(i64 %.sroa.020.036, !13272, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13278)
    #dbg_value(ptr %i.l, !13282, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13331)
    #dbg_value(ptr %i.l, !13272, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13278)
    #dbg_value(ptr %i.l, !13273, !DIExpression(), !13332)
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 192, !dbg !13362
    #dbg_value(ptr %i.m, !13334, !DIExpression(), !13341)
    #dbg_value(ptr %i.m, !13343, !DIExpression(), !13348)
    #dbg_value(ptr %i.m, !13349, !DIExpression(), !13352)
  %i.n = load ptr, ptr %i.m, align 8, !dbg !13363, !nonnull !1652, !noundef !1652
    #dbg_value(ptr %i.n, !13267, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13323)
    #dbg_value(ptr %i.n, !13279, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13324)
    #dbg_value(ptr %i.n, !13280, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13325)
    #dbg_value(ptr %i.n, !13326, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13329)
    #dbg_value(ptr %i.n, !13274, !DIExpression(), !13330)
    #dbg_value(i64 %.sroa.020.036, !13280, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13325)
    #dbg_value(i64 %.sroa.020.036, !13279, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13324)
    #dbg_value(i64 %.sroa.020.036, !13267, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13323)
    #dbg_value(i64 %.sroa.020.036, !13326, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13329)
    #dbg_value(i64 %.sroa.020.036, !13282, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13331)
    #dbg_value(i64 %.sroa.020.036, !13272, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13278)
    #dbg_value(ptr %i.n, !13282, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13331)
    #dbg_value(ptr %i.n, !13272, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13278)
    #dbg_value(ptr %i.n, !13273, !DIExpression(), !13332)
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 192, !dbg !13362
    #dbg_value(ptr %i.o, !13334, !DIExpression(), !13341)
    #dbg_value(ptr %i.o, !13343, !DIExpression(), !13348)
    #dbg_value(ptr %i.o, !13349, !DIExpression(), !13352)
  %i.p = load ptr, ptr %i.o, align 8, !dbg !13363, !nonnull !1652, !noundef !1652
    #dbg_value(ptr %i.p, !13267, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13323)
    #dbg_value(ptr %i.p, !13279, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13324)
    #dbg_value(ptr %i.p, !13280, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13325)
    #dbg_value(ptr %i.p, !13326, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13329)
    #dbg_value(ptr %i.p, !13274, !DIExpression(), !13330)
    #dbg_value(i64 %.sroa.020.036, !13280, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13325)
    #dbg_value(i64 %.sroa.020.036, !13279, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13324)
    #dbg_value(i64 %.sroa.020.036, !13267, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13323)
    #dbg_value(i64 %.sroa.020.036, !13326, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13329)
    #dbg_value(i64 %.sroa.020.036, !13282, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13331)
    #dbg_value(i64 %.sroa.020.036, !13272, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13278)
    #dbg_value(ptr %i.p, !13282, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13331)
    #dbg_value(ptr %i.p, !13272, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13278)
    #dbg_value(ptr %i.p, !13273, !DIExpression(), !13332)
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 192, !dbg !13362
    #dbg_value(ptr %i.q, !13334, !DIExpression(), !13341)
    #dbg_value(ptr %i.q, !13343, !DIExpression(), !13348)
    #dbg_value(ptr %i.q, !13349, !DIExpression(), !13352)
  %i.r = load ptr, ptr %i.q, align 8, !dbg !13363, !nonnull !1652, !noundef !1652
    #dbg_value(ptr %i.r, !13267, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13323)
    #dbg_value(ptr %i.r, !13279, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13324)
    #dbg_value(ptr %i.r, !13280, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13325)
    #dbg_value(ptr %i.r, !13326, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13329)
    #dbg_value(ptr %i.r, !13274, !DIExpression(), !13330)
    #dbg_value(i64 %.sroa.020.036, !13280, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13325)
    #dbg_value(i64 %.sroa.020.036, !13279, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13324)
    #dbg_value(i64 %.sroa.020.036, !13267, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13323)
    #dbg_value(i64 %.sroa.020.036, !13326, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13329)
    #dbg_value(i64 %.sroa.020.036, !13282, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13331)
    #dbg_value(i64 %.sroa.020.036, !13272, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13278)
    #dbg_value(ptr %i.r, !13282, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13331)
    #dbg_value(ptr %i.r, !13272, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13278)
    #dbg_value(ptr %i.r, !13273, !DIExpression(), !13332)
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 192, !dbg !13362
    #dbg_value(ptr %i.s, !13334, !DIExpression(), !13341)
    #dbg_value(ptr %i.s, !13343, !DIExpression(), !13348)
    #dbg_value(ptr %i.s, !13349, !DIExpression(), !13352)
  %i.t = load ptr, ptr %i.s, align 8, !dbg !13363, !nonnull !1652, !noundef !1652
    #dbg_value(ptr %i.t, !13267, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13323)
    #dbg_value(ptr %i.t, !13279, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13324)
    #dbg_value(ptr %i.t, !13280, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13325)
    #dbg_value(ptr %i.t, !13326, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13329)
    #dbg_value(ptr %i.t, !13274, !DIExpression(), !13330)
    #dbg_value(i64 %.sroa.020.036, !13280, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13325)
    #dbg_value(i64 %.sroa.020.036, !13279, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13324)
    #dbg_value(i64 %.sroa.020.036, !13267, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13323)
    #dbg_value(i64 %.sroa.020.036, !13326, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13329)
    #dbg_value(i64 %.sroa.020.036, !13282, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13331)
    #dbg_value(i64 %.sroa.020.036, !13272, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13278)
    #dbg_value(ptr %i.t, !13282, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13331)
    #dbg_value(ptr %i.t, !13272, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13278)
    #dbg_value(ptr %i.t, !13273, !DIExpression(), !13332)
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 192, !dbg !13362
    #dbg_value(ptr %i.u, !13334, !DIExpression(), !13341)
    #dbg_value(ptr %i.u, !13343, !DIExpression(), !13348)
    #dbg_value(ptr %i.u, !13349, !DIExpression(), !13352)
  %i.v = load ptr, ptr %i.u, align 8, !dbg !13363, !nonnull !1652, !noundef !1652 ; 2 uses
    #dbg_value(ptr %i.v, !13267, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13323)
    #dbg_value(ptr %i.v, !13279, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13324)
    #dbg_value(ptr %i.v, !13280, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13325)
    #dbg_value(ptr %i.v, !13326, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13329)
    #dbg_value(ptr %i.v, !13274, !DIExpression(), !13330)
  %i.w = add i64 %.sroa.020.036, -8, !dbg !13364  ; 2 uses
    #dbg_value(i64 %i.w, !13326, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13329)
    #dbg_value(i64 %i.w, !13280, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13325)
    #dbg_value(i64 %i.w, !13279, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13324)
    #dbg_value(i64 %i.w, !13267, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13323)
  %i.x = icmp eq i64 %i.w, 0, !dbg !13361
  br i1 %i.x, label %._crit_edge, label %.lr.ph, !dbg !13361
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef align 8 ptr @_RNvMsc_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtBb_6string6StringNtNtCsenfyI6F4F2A_10serde_json5value5ValueE10init_frontCsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef align 8 captures(ret: address, provenance) dereferenceable(64) %0) unnamed_addr #4 !dbg !13374 {
bb.a:
    #dbg_value(ptr %0, !13398, !DIExpression(), !13403)
    #dbg_value(i64 0, !13404, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !13410)
  %i.a = load i64, ptr %0, align 8, !dbg !13435, !range !5398, !noundef !1652
  %i.b = trunc nuw i64 %i.a to i1, !dbg !13436    ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.c, !dbg !13436

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !13435 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !dbg !13435, !noundef !1652
  %.not = icmp eq ptr %i.d, null, !dbg !13435
  br i1 %.not, label %bb.d, label %bb.c, !dbg !13436

bb.c:                                             ; preds = %._crit_edge, %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !13437
  %.sroa.0.0 = select i1 %i.b, ptr %i.e, ptr null, !dbg !13437
  ret ptr %.sroa.0.0, !dbg !13438

bb.d:                                             ; preds = %bb.b
    #dbg_value(ptr %0, !13400, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !13416)
    #dbg_value(ptr %i.c, !13418, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !13425)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !13439 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !13439
  %i.h = load i64, ptr %i.g, align 8, !dbg !13439, !noundef !1652 ; 5 uses
    #dbg_value(i64 %i.h, !13411, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13426)
    #dbg_value(i64 %i.h, !13412, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13427)
    #dbg_value(i64 %i.h, !13428, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13431)
    #dbg_value(ptr poison, !13411, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13426)
    #dbg_value(ptr poison, !13412, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13427)
    #dbg_value(ptr poison, !13428, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13431)
    #dbg_value(ptr poison, !13406, !DIExpression(), !13432)
  %.sroa.013.029 = load ptr, ptr %i.f, align 8, !dbg !13440, !nonnull !1652, !noundef !1652 ; 3 uses
  %i.i = icmp eq i64 %i.h, 0, !dbg !13441
  br i1 %i.i, label %._crit_edge, label %.lr.ph.preheader, !dbg !13441

.lr.ph.preheader:                                 ; preds = %bb.d
  %xtraiter = and i64 %i.h, 7, !dbg !13441        ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !13441
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !dbg !13441

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.sroa.013.031.prol = phi ptr [ %.sroa.013.0.prol, %.lr.ph.prol ], [ %.sroa.013.029, %.lr.ph.preheader ]
  %.sroa.011.030.prol = phi i64 [ %i.k, %.lr.ph.prol ], [ %i.h, %.lr.ph.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
    #dbg_value(i64 %.sroa.011.030.prol, !13428, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13431)
    #dbg_value(i64 %.sroa.011.030.prol, !13414, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13433)
    #dbg_value(i64 %.sroa.011.030.prol, !13404, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13410)
    #dbg_value(ptr %.sroa.013.031.prol, !13414, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13433)
    #dbg_value(ptr %.sroa.013.031.prol, !13404, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13410)
    #dbg_value(ptr %.sroa.013.031.prol, !13405, !DIExpression(), !13434)
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.013.031.prol, i64 1072, !dbg !13442
    #dbg_value(ptr poison, !13411, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13426)
    #dbg_value(ptr poison, !13412, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13427)
    #dbg_value(ptr poison, !13428, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13431)
    #dbg_value(ptr poison, !13406, !DIExpression(), !13432)
  %i.k = add i64 %.sroa.011.030.prol, -1, !dbg !13443 ; 2 uses
    #dbg_value(i64 %i.k, !13411, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13426)
    #dbg_value(i64 %i.k, !13412, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13427)
    #dbg_value(i64 %i.k, !13428, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13431)
  %.sroa.013.0.prol = load ptr, ptr %i.j, align 8, !dbg !13440, !nonnull !1652, !noundef !1652 ; 3 uses
    #dbg_value(ptr %.sroa.013.0.prol, !13406, !DIExpression(), !13432)
    #dbg_value(ptr %.sroa.013.0.prol, !13428, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13431)
    #dbg_value(ptr %.sroa.013.0.prol, !13412, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13427)
    #dbg_value(ptr %.sroa.013.0.prol, !13411, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13426)
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !13441 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !13441
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !dbg !13441, !llvm.loop !13384

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.sroa.013.0.lcssa35.unr = phi ptr [ poison, %.lr.ph.preheader ], [ %.sroa.013.0.prol, %.lr.ph.prol ]
  %.sroa.013.031.unr = phi ptr [ %.sroa.013.029, %.lr.ph.preheader ], [ %.sroa.013.0.prol, %.lr.ph.prol ]
  %.sroa.011.030.unr = phi i64 [ %i.h, %.lr.ph.preheader ], [ %i.k, %.lr.ph.prol ]
  %i.l = icmp ult i64 %i.h, 8, !dbg !13441
  br i1 %i.l, label %._crit_edge, label %.lr.ph, !dbg !13441

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.d
  %.sroa.013.0.lcssa = phi ptr [ %.sroa.013.029, %bb.d ], [ %.sroa.013.0.lcssa35.unr, %.lr.ph.prol.loopexit ], [ %.sroa.013.0.7, %.lr.ph ], !dbg !13440
  store i64 1, ptr %0, align 8, !dbg !13444
  store ptr %.sroa.013.0.lcssa, ptr %i.c, align 8, !dbg !13444
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false), !dbg !13444
  br label %bb.c, !dbg !13445

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.sroa.013.031 = phi ptr [ %.sroa.013.0.7, %.lr.ph ], [ %.sroa.013.031.unr, %.lr.ph.prol.loopexit ]
  %.sroa.011.030 = phi i64 [ %i.u, %.lr.ph ], [ %.sroa.011.030.unr, %.lr.ph.prol.loopexit ]
    #dbg_value(i64 %.sroa.011.030, !13428, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13431)
    #dbg_value(i64 %.sroa.011.030, !13414, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13433)
    #dbg_value(i64 %.sroa.011.030, !13404, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13410)
    #dbg_value(ptr %.sroa.013.031, !13414, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13433)
    #dbg_value(ptr %.sroa.013.031, !13404, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13410)
    #dbg_value(ptr %.sroa.013.031, !13405, !DIExpression(), !13434)
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.013.031, i64 1072, !dbg !13442
    #dbg_value(ptr poison, !13411, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13426)
    #dbg_value(ptr poison, !13412, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13427)
    #dbg_value(ptr poison, !13428, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13431)
    #dbg_value(ptr poison, !13406, !DIExpression(), !13432)
    #dbg_value(i64 %.sroa.011.030, !13411, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13426)
    #dbg_value(i64 %.sroa.011.030, !13412, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13427)
    #dbg_value(i64 %.sroa.011.030, !13428, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13431)
  %.sroa.013.0 = load ptr, ptr %i.m, align 8, !dbg !13440, !nonnull !1652, !noundef !1652
    #dbg_value(ptr %.sroa.013.0, !13406, !DIExpression(), !13432)
    #dbg_value(ptr %.sroa.013.0, !13428, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13431)
    #dbg_value(ptr %.sroa.013.0, !13412, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13427)
    #dbg_value(ptr %.sroa.013.0, !13411, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13426)
    #dbg_value(i64 %.sroa.011.030, !13428, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13431)
    #dbg_value(i64 %.sroa.011.030, !13414, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13433)
    #dbg_value(i64 %.sroa.011.030, !13404, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13410)
    #dbg_value(ptr %.sroa.013.0, !13414, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13433)
    #dbg_value(ptr %.sroa.013.0, !13404, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13410)
    #dbg_value(ptr %.sroa.013.0, !13405, !DIExpression(), !13434)
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.013.0, i64 1072, !dbg !13442
    #dbg_value(ptr poison, !13411, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13426)
    #dbg_value(ptr poison, !13412, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13427)
    #dbg_value(ptr poison, !13428, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13431)
    #dbg_value(ptr poison, !13406, !DIExpression(), !13432)
    #dbg_value(i64 %.sroa.011.030, !13411, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13426)
    #dbg_value(i64 %.sroa.011.030, !13412, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13427)
    #dbg_value(i64 %.sroa.011.030, !13428, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13431)
  %.sroa.013.0.1 = load ptr, ptr %i.n, align 8, !dbg !13440, !nonnull !1652, !noundef !1652
    #dbg_value(ptr %.sroa.013.0.1, !13406, !DIExpression(), !13432)
    #dbg_value(ptr %.sroa.013.0.1, !13428, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13431)
    #dbg_value(ptr %.sroa.013.0.1, !13412, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13427)
    #dbg_value(ptr %.sroa.013.0.1, !13411, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13426)
    #dbg_value(i64 %.sroa.011.030, !13428, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13431)
    #dbg_value(i64 %.sroa.011.030, !13414, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13433)
    #dbg_value(i64 %.sroa.011.030, !13404, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13410)
    #dbg_value(ptr %.sroa.013.0.1, !13414, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13433)
    #dbg_value(ptr %.sroa.013.0.1, !13404, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13410)
    #dbg_value(ptr %.sroa.013.0.1, !13405, !DIExpression(), !13434)
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.013.0.1, i64 1072, !dbg !13442
    #dbg_value(ptr poison, !13411, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13426)
    #dbg_value(ptr poison, !13412, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13427)
    #dbg_value(ptr poison, !13428, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13431)
    #dbg_value(ptr poison, !13406, !DIExpression(), !13432)
    #dbg_value(i64 %.sroa.011.030, !13411, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13426)
    #dbg_value(i64 %.sroa.011.030, !13412, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13427)
    #dbg_value(i64 %.sroa.011.030, !13428, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13431)
  %.sroa.013.0.2 = load ptr, ptr %i.o, align 8, !dbg !13440, !nonnull !1652, !noundef !1652
    #dbg_value(ptr %.sroa.013.0.2, !13406, !DIExpression(), !13432)
    #dbg_value(ptr %.sroa.013.0.2, !13428, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13431)
    #dbg_value(ptr %.sroa.013.0.2, !13412, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13427)
    #dbg_value(ptr %.sroa.013.0.2, !13411, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13426)
    #dbg_value(i64 %.sroa.011.030, !13428, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13431)
    #dbg_value(i64 %.sroa.011.030, !13414, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13433)
    #dbg_value(i64 %.sroa.011.030, !13404, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13410)
    #dbg_value(ptr %.sroa.013.0.2, !13414, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13433)
    #dbg_value(ptr %.sroa.013.0.2, !13404, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13410)
    #dbg_value(ptr %.sroa.013.0.2, !13405, !DIExpression(), !13434)
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.013.0.2, i64 1072, !dbg !13442
    #dbg_value(ptr poison, !13411, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13426)
    #dbg_value(ptr poison, !13412, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13427)
    #dbg_value(ptr poison, !13428, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13431)
    #dbg_value(ptr poison, !13406, !DIExpression(), !13432)
    #dbg_value(i64 %.sroa.011.030, !13411, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13426)
    #dbg_value(i64 %.sroa.011.030, !13412, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13427)
    #dbg_value(i64 %.sroa.011.030, !13428, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13431)
  %.sroa.013.0.3 = load ptr, ptr %i.p, align 8, !dbg !13440, !nonnull !1652, !noundef !1652
    #dbg_value(ptr %.sroa.013.0.3, !13406, !DIExpression(), !13432)
    #dbg_value(ptr %.sroa.013.0.3, !13428, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13431)
    #dbg_value(ptr %.sroa.013.0.3, !13412, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13427)
    #dbg_value(ptr %.sroa.013.0.3, !13411, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13426)
    #dbg_value(i64 %.sroa.011.030, !13428, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13431)
    #dbg_value(i64 %.sroa.011.030, !13414, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13433)
    #dbg_value(i64 %.sroa.011.030, !13404, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13410)
    #dbg_value(ptr %.sroa.013.0.3, !13414, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13433)
    #dbg_value(ptr %.sroa.013.0.3, !13404, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13410)
    #dbg_value(ptr %.sroa.013.0.3, !13405, !DIExpression(), !13434)
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.013.0.3, i64 1072, !dbg !13442
    #dbg_value(ptr poison, !13411, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13426)
    #dbg_value(ptr poison, !13412, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13427)
    #dbg_value(ptr poison, !13428, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13431)
    #dbg_value(ptr poison, !13406, !DIExpression(), !13432)
    #dbg_value(i64 %.sroa.011.030, !13411, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13426)
    #dbg_value(i64 %.sroa.011.030, !13412, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13427)
    #dbg_value(i64 %.sroa.011.030, !13428, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13431)
  %.sroa.013.0.4 = load ptr, ptr %i.q, align 8, !dbg !13440, !nonnull !1652, !noundef !1652
    #dbg_value(ptr %.sroa.013.0.4, !13406, !DIExpression(), !13432)
    #dbg_value(ptr %.sroa.013.0.4, !13428, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13431)
    #dbg_value(ptr %.sroa.013.0.4, !13412, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13427)
    #dbg_value(ptr %.sroa.013.0.4, !13411, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13426)
    #dbg_value(i64 %.sroa.011.030, !13428, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13431)
    #dbg_value(i64 %.sroa.011.030, !13414, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13433)
    #dbg_value(i64 %.sroa.011.030, !13404, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13410)
    #dbg_value(ptr %.sroa.013.0.4, !13414, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13433)
    #dbg_value(ptr %.sroa.013.0.4, !13404, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13410)
    #dbg_value(ptr %.sroa.013.0.4, !13405, !DIExpression(), !13434)
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.013.0.4, i64 1072, !dbg !13442
    #dbg_value(ptr poison, !13411, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13426)
    #dbg_value(ptr poison, !13412, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13427)
    #dbg_value(ptr poison, !13428, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13431)
    #dbg_value(ptr poison, !13406, !DIExpression(), !13432)
    #dbg_value(i64 %.sroa.011.030, !13411, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13426)
    #dbg_value(i64 %.sroa.011.030, !13412, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13427)
    #dbg_value(i64 %.sroa.011.030, !13428, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13431)
  %.sroa.013.0.5 = load ptr, ptr %i.r, align 8, !dbg !13440, !nonnull !1652, !noundef !1652
    #dbg_value(ptr %.sroa.013.0.5, !13406, !DIExpression(), !13432)
    #dbg_value(ptr %.sroa.013.0.5, !13428, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13431)
    #dbg_value(ptr %.sroa.013.0.5, !13412, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13427)
    #dbg_value(ptr %.sroa.013.0.5, !13411, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13426)
    #dbg_value(i64 %.sroa.011.030, !13428, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13431)
    #dbg_value(i64 %.sroa.011.030, !13414, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13433)
    #dbg_value(i64 %.sroa.011.030, !13404, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13410)
    #dbg_value(ptr %.sroa.013.0.5, !13414, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13433)
    #dbg_value(ptr %.sroa.013.0.5, !13404, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13410)
    #dbg_value(ptr %.sroa.013.0.5, !13405, !DIExpression(), !13434)
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.013.0.5, i64 1072, !dbg !13442
    #dbg_value(ptr poison, !13411, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13426)
    #dbg_value(ptr poison, !13412, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13427)
    #dbg_value(ptr poison, !13428, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13431)
    #dbg_value(ptr poison, !13406, !DIExpression(), !13432)
    #dbg_value(i64 %.sroa.011.030, !13411, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13426)
    #dbg_value(i64 %.sroa.011.030, !13412, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13427)
    #dbg_value(i64 %.sroa.011.030, !13428, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13431)
  %.sroa.013.0.6 = load ptr, ptr %i.s, align 8, !dbg !13440, !nonnull !1652, !noundef !1652
    #dbg_value(ptr %.sroa.013.0.6, !13406, !DIExpression(), !13432)
    #dbg_value(ptr %.sroa.013.0.6, !13428, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13431)
    #dbg_value(ptr %.sroa.013.0.6, !13412, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13427)
    #dbg_value(ptr %.sroa.013.0.6, !13411, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13426)
    #dbg_value(i64 %.sroa.011.030, !13428, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13431)
    #dbg_value(i64 %.sroa.011.030, !13414, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13433)
    #dbg_value(i64 %.sroa.011.030, !13404, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13410)
    #dbg_value(ptr %.sroa.013.0.6, !13414, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13433)
    #dbg_value(ptr %.sroa.013.0.6, !13404, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13410)
    #dbg_value(ptr %.sroa.013.0.6, !13405, !DIExpression(), !13434)
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.013.0.6, i64 1072, !dbg !13442
    #dbg_value(ptr poison, !13411, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13426)
    #dbg_value(ptr poison, !13412, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13427)
    #dbg_value(ptr poison, !13428, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13431)
    #dbg_value(ptr poison, !13406, !DIExpression(), !13432)
  %i.u = add i64 %.sroa.011.030, -8, !dbg !13443  ; 2 uses
    #dbg_value(i64 %i.u, !13411, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13426)
    #dbg_value(i64 %i.u, !13412, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13427)
    #dbg_value(i64 %i.u, !13428, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13431)
  %.sroa.013.0.7 = load ptr, ptr %i.t, align 8, !dbg !13440, !nonnull !1652, !noundef !1652 ; 2 uses
    #dbg_value(ptr %.sroa.013.0.7, !13406, !DIExpression(), !13432)
    #dbg_value(ptr %.sroa.013.0.7, !13428, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13431)
    #dbg_value(ptr %.sroa.013.0.7, !13412, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13427)
    #dbg_value(ptr %.sroa.013.0.7, !13411, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13426)
  %i.v = icmp eq i64 %i.u, 0, !dbg !13441
  br i1 %i.v, label %._crit_edge, label %.lr.ph, !dbg !13441
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef align 8 ptr @_RNvMsc_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingTNtNtNtCskKLDkoKarTP_4core3net11socket_addr10SocketAddrB1K_EjE10init_frontCsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef align 8 captures(ret: address, provenance) dereferenceable(64) %0) unnamed_addr #4 !dbg !13452 {
bb.a:
    #dbg_value(ptr %0, !13476, !DIExpression(), !13481)
    #dbg_value(i64 0, !13482, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !13488)
  %i.a = load i64, ptr %0, align 8, !dbg !13513, !range !5398, !noundef !1652
  %i.b = trunc nuw i64 %i.a to i1, !dbg !13514    ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.c, !dbg !13514

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !13513 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !dbg !13513, !noundef !1652
  %.not = icmp eq ptr %i.d, null, !dbg !13513
  br i1 %.not, label %bb.d, label %bb.c, !dbg !13514

bb.c:                                             ; preds = %._crit_edge, %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !13515
  %.sroa.0.0 = select i1 %i.b, ptr %i.e, ptr null, !dbg !13515
  ret ptr %.sroa.0.0, !dbg !13516

bb.d:                                             ; preds = %bb.b
    #dbg_value(ptr %0, !13478, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !13494)
    #dbg_value(ptr %i.c, !13496, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !13503)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !13517 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !13517
  %i.h = load i64, ptr %i.g, align 8, !dbg !13517, !noundef !1652 ; 5 uses
    #dbg_value(i64 %i.h, !13489, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13504)
    #dbg_value(i64 %i.h, !13490, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13505)
    #dbg_value(i64 %i.h, !13506, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13509)
    #dbg_value(ptr poison, !13489, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13504)
    #dbg_value(ptr poison, !13490, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13505)
    #dbg_value(ptr poison, !13506, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13509)
    #dbg_value(ptr poison, !13484, !DIExpression(), !13510)
  %.sroa.013.029 = load ptr, ptr %i.f, align 8, !dbg !13518, !nonnull !1652, !noundef !1652 ; 3 uses
  %i.i = icmp eq i64 %i.h, 0, !dbg !13519
  br i1 %i.i, label %._crit_edge, label %.lr.ph.preheader, !dbg !13519

.lr.ph.preheader:                                 ; preds = %bb.d
  %xtraiter = and i64 %i.h, 7, !dbg !13519        ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !13519
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !dbg !13519

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.sroa.013.031.prol = phi ptr [ %.sroa.013.0.prol, %.lr.ph.prol ], [ %.sroa.013.029, %.lr.ph.preheader ]
  %.sroa.011.030.prol = phi i64 [ %i.k, %.lr.ph.prol ], [ %i.h, %.lr.ph.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
    #dbg_value(i64 %.sroa.011.030.prol, !13506, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13509)
    #dbg_value(i64 %.sroa.011.030.prol, !13492, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13511)
    #dbg_value(i64 %.sroa.011.030.prol, !13482, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13488)
    #dbg_value(ptr %.sroa.013.031.prol, !13492, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13511)
    #dbg_value(ptr %.sroa.013.031.prol, !13482, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13488)
    #dbg_value(ptr %.sroa.013.031.prol, !13483, !DIExpression(), !13512)
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.013.031.prol, i64 808, !dbg !13520
    #dbg_value(ptr poison, !13489, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13504)
    #dbg_value(ptr poison, !13490, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13505)
    #dbg_value(ptr poison, !13506, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13509)
    #dbg_value(ptr poison, !13484, !DIExpression(), !13510)
  %i.k = add i64 %.sroa.011.030.prol, -1, !dbg !13521 ; 2 uses
    #dbg_value(i64 %i.k, !13489, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13504)
    #dbg_value(i64 %i.k, !13490, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13505)
    #dbg_value(i64 %i.k, !13506, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13509)
  %.sroa.013.0.prol = load ptr, ptr %i.j, align 8, !dbg !13518, !nonnull !1652, !noundef !1652 ; 3 uses
    #dbg_value(ptr %.sroa.013.0.prol, !13484, !DIExpression(), !13510)
    #dbg_value(ptr %.sroa.013.0.prol, !13506, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13509)
    #dbg_value(ptr %.sroa.013.0.prol, !13490, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13505)
    #dbg_value(ptr %.sroa.013.0.prol, !13489, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13504)
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !13519 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !13519
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !dbg !13519, !llvm.loop !13462

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.sroa.013.0.lcssa35.unr = phi ptr [ poison, %.lr.ph.preheader ], [ %.sroa.013.0.prol, %.lr.ph.prol ]
  %.sroa.013.031.unr = phi ptr [ %.sroa.013.029, %.lr.ph.preheader ], [ %.sroa.013.0.prol, %.lr.ph.prol ]
  %.sroa.011.030.unr = phi i64 [ %i.h, %.lr.ph.preheader ], [ %i.k, %.lr.ph.prol ]
  %i.l = icmp ult i64 %i.h, 8, !dbg !13519
  br i1 %i.l, label %._crit_edge, label %.lr.ph, !dbg !13519

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.d
  %.sroa.013.0.lcssa = phi ptr [ %.sroa.013.029, %bb.d ], [ %.sroa.013.0.lcssa35.unr, %.lr.ph.prol.loopexit ], [ %.sroa.013.0.7, %.lr.ph ], !dbg !13518
  store i64 1, ptr %0, align 8, !dbg !13522
  store ptr %.sroa.013.0.lcssa, ptr %i.c, align 8, !dbg !13522
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false), !dbg !13522
  br label %bb.c, !dbg !13523

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.sroa.013.031 = phi ptr [ %.sroa.013.0.7, %.lr.ph ], [ %.sroa.013.031.unr, %.lr.ph.prol.loopexit ]
  %.sroa.011.030 = phi i64 [ %i.u, %.lr.ph ], [ %.sroa.011.030.unr, %.lr.ph.prol.loopexit ]
    #dbg_value(i64 %.sroa.011.030, !13506, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13509)
    #dbg_value(i64 %.sroa.011.030, !13492, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13511)
    #dbg_value(i64 %.sroa.011.030, !13482, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13488)
    #dbg_value(ptr %.sroa.013.031, !13492, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13511)
    #dbg_value(ptr %.sroa.013.031, !13482, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13488)
    #dbg_value(ptr %.sroa.013.031, !13483, !DIExpression(), !13512)
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.013.031, i64 808, !dbg !13520
    #dbg_value(ptr poison, !13489, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13504)
    #dbg_value(ptr poison, !13490, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13505)
    #dbg_value(ptr poison, !13506, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13509)
    #dbg_value(ptr poison, !13484, !DIExpression(), !13510)
    #dbg_value(i64 %.sroa.011.030, !13489, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13504)
    #dbg_value(i64 %.sroa.011.030, !13490, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13505)
    #dbg_value(i64 %.sroa.011.030, !13506, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13509)
  %.sroa.013.0 = load ptr, ptr %i.m, align 8, !dbg !13518, !nonnull !1652, !noundef !1652
    #dbg_value(ptr %.sroa.013.0, !13484, !DIExpression(), !13510)
    #dbg_value(ptr %.sroa.013.0, !13506, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13509)
    #dbg_value(ptr %.sroa.013.0, !13490, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13505)
    #dbg_value(ptr %.sroa.013.0, !13489, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13504)
    #dbg_value(i64 %.sroa.011.030, !13506, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13509)
    #dbg_value(i64 %.sroa.011.030, !13492, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13511)
    #dbg_value(i64 %.sroa.011.030, !13482, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13488)
    #dbg_value(ptr %.sroa.013.0, !13492, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13511)
    #dbg_value(ptr %.sroa.013.0, !13482, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13488)
    #dbg_value(ptr %.sroa.013.0, !13483, !DIExpression(), !13512)
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.013.0, i64 808, !dbg !13520
    #dbg_value(ptr poison, !13489, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13504)
    #dbg_value(ptr poison, !13490, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13505)
    #dbg_value(ptr poison, !13506, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13509)
    #dbg_value(ptr poison, !13484, !DIExpression(), !13510)
    #dbg_value(i64 %.sroa.011.030, !13489, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13504)
    #dbg_value(i64 %.sroa.011.030, !13490, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13505)
    #dbg_value(i64 %.sroa.011.030, !13506, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13509)
  %.sroa.013.0.1 = load ptr, ptr %i.n, align 8, !dbg !13518, !nonnull !1652, !noundef !1652
    #dbg_value(ptr %.sroa.013.0.1, !13484, !DIExpression(), !13510)
    #dbg_value(ptr %.sroa.013.0.1, !13506, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13509)
    #dbg_value(ptr %.sroa.013.0.1, !13490, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13505)
    #dbg_value(ptr %.sroa.013.0.1, !13489, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13504)
    #dbg_value(i64 %.sroa.011.030, !13506, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13509)
    #dbg_value(i64 %.sroa.011.030, !13492, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13511)
    #dbg_value(i64 %.sroa.011.030, !13482, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13488)
    #dbg_value(ptr %.sroa.013.0.1, !13492, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13511)
    #dbg_value(ptr %.sroa.013.0.1, !13482, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13488)
    #dbg_value(ptr %.sroa.013.0.1, !13483, !DIExpression(), !13512)
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.013.0.1, i64 808, !dbg !13520
    #dbg_value(ptr poison, !13489, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13504)
    #dbg_value(ptr poison, !13490, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13505)
    #dbg_value(ptr poison, !13506, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13509)
    #dbg_value(ptr poison, !13484, !DIExpression(), !13510)
    #dbg_value(i64 %.sroa.011.030, !13489, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13504)
    #dbg_value(i64 %.sroa.011.030, !13490, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13505)
    #dbg_value(i64 %.sroa.011.030, !13506, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13509)
  %.sroa.013.0.2 = load ptr, ptr %i.o, align 8, !dbg !13518, !nonnull !1652, !noundef !1652
    #dbg_value(ptr %.sroa.013.0.2, !13484, !DIExpression(), !13510)
    #dbg_value(ptr %.sroa.013.0.2, !13506, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13509)
    #dbg_value(ptr %.sroa.013.0.2, !13490, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13505)
    #dbg_value(ptr %.sroa.013.0.2, !13489, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13504)
    #dbg_value(i64 %.sroa.011.030, !13506, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13509)
    #dbg_value(i64 %.sroa.011.030, !13492, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13511)
    #dbg_value(i64 %.sroa.011.030, !13482, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13488)
    #dbg_value(ptr %.sroa.013.0.2, !13492, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13511)
    #dbg_value(ptr %.sroa.013.0.2, !13482, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13488)
    #dbg_value(ptr %.sroa.013.0.2, !13483, !DIExpression(), !13512)
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.013.0.2, i64 808, !dbg !13520
    #dbg_value(ptr poison, !13489, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13504)
    #dbg_value(ptr poison, !13490, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13505)
    #dbg_value(ptr poison, !13506, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13509)
    #dbg_value(ptr poison, !13484, !DIExpression(), !13510)
    #dbg_value(i64 %.sroa.011.030, !13489, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13504)
    #dbg_value(i64 %.sroa.011.030, !13490, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13505)
    #dbg_value(i64 %.sroa.011.030, !13506, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13509)
  %.sroa.013.0.3 = load ptr, ptr %i.p, align 8, !dbg !13518, !nonnull !1652, !noundef !1652
    #dbg_value(ptr %.sroa.013.0.3, !13484, !DIExpression(), !13510)
    #dbg_value(ptr %.sroa.013.0.3, !13506, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13509)
    #dbg_value(ptr %.sroa.013.0.3, !13490, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13505)
    #dbg_value(ptr %.sroa.013.0.3, !13489, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13504)
    #dbg_value(i64 %.sroa.011.030, !13506, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13509)
    #dbg_value(i64 %.sroa.011.030, !13492, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13511)
    #dbg_value(i64 %.sroa.011.030, !13482, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13488)
    #dbg_value(ptr %.sroa.013.0.3, !13492, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13511)
    #dbg_value(ptr %.sroa.013.0.3, !13482, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13488)
    #dbg_value(ptr %.sroa.013.0.3, !13483, !DIExpression(), !13512)
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.013.0.3, i64 808, !dbg !13520
    #dbg_value(ptr poison, !13489, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13504)
    #dbg_value(ptr poison, !13490, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13505)
    #dbg_value(ptr poison, !13506, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13509)
    #dbg_value(ptr poison, !13484, !DIExpression(), !13510)
    #dbg_value(i64 %.sroa.011.030, !13489, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13504)
    #dbg_value(i64 %.sroa.011.030, !13490, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13505)
    #dbg_value(i64 %.sroa.011.030, !13506, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13509)
  %.sroa.013.0.4 = load ptr, ptr %i.q, align 8, !dbg !13518, !nonnull !1652, !noundef !1652
    #dbg_value(ptr %.sroa.013.0.4, !13484, !DIExpression(), !13510)
    #dbg_value(ptr %.sroa.013.0.4, !13506, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13509)
    #dbg_value(ptr %.sroa.013.0.4, !13490, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13505)
    #dbg_value(ptr %.sroa.013.0.4, !13489, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13504)
    #dbg_value(i64 %.sroa.011.030, !13506, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13509)
    #dbg_value(i64 %.sroa.011.030, !13492, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13511)
    #dbg_value(i64 %.sroa.011.030, !13482, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13488)
    #dbg_value(ptr %.sroa.013.0.4, !13492, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13511)
    #dbg_value(ptr %.sroa.013.0.4, !13482, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13488)
    #dbg_value(ptr %.sroa.013.0.4, !13483, !DIExpression(), !13512)
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.013.0.4, i64 808, !dbg !13520
    #dbg_value(ptr poison, !13489, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13504)
    #dbg_value(ptr poison, !13490, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13505)
    #dbg_value(ptr poison, !13506, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13509)
    #dbg_value(ptr poison, !13484, !DIExpression(), !13510)
    #dbg_value(i64 %.sroa.011.030, !13489, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13504)
    #dbg_value(i64 %.sroa.011.030, !13490, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13505)
    #dbg_value(i64 %.sroa.011.030, !13506, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13509)
  %.sroa.013.0.5 = load ptr, ptr %i.r, align 8, !dbg !13518, !nonnull !1652, !noundef !1652
    #dbg_value(ptr %.sroa.013.0.5, !13484, !DIExpression(), !13510)
    #dbg_value(ptr %.sroa.013.0.5, !13506, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13509)
    #dbg_value(ptr %.sroa.013.0.5, !13490, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13505)
    #dbg_value(ptr %.sroa.013.0.5, !13489, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13504)
    #dbg_value(i64 %.sroa.011.030, !13506, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13509)
    #dbg_value(i64 %.sroa.011.030, !13492, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13511)
    #dbg_value(i64 %.sroa.011.030, !13482, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13488)
    #dbg_value(ptr %.sroa.013.0.5, !13492, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13511)
    #dbg_value(ptr %.sroa.013.0.5, !13482, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13488)
    #dbg_value(ptr %.sroa.013.0.5, !13483, !DIExpression(), !13512)
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.013.0.5, i64 808, !dbg !13520
    #dbg_value(ptr poison, !13489, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13504)
    #dbg_value(ptr poison, !13490, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13505)
    #dbg_value(ptr poison, !13506, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13509)
    #dbg_value(ptr poison, !13484, !DIExpression(), !13510)
    #dbg_value(i64 %.sroa.011.030, !13489, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13504)
    #dbg_value(i64 %.sroa.011.030, !13490, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13505)
    #dbg_value(i64 %.sroa.011.030, !13506, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13509)
  %.sroa.013.0.6 = load ptr, ptr %i.s, align 8, !dbg !13518, !nonnull !1652, !noundef !1652
    #dbg_value(ptr %.sroa.013.0.6, !13484, !DIExpression(), !13510)
    #dbg_value(ptr %.sroa.013.0.6, !13506, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13509)
    #dbg_value(ptr %.sroa.013.0.6, !13490, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13505)
    #dbg_value(ptr %.sroa.013.0.6, !13489, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13504)
    #dbg_value(i64 %.sroa.011.030, !13506, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13509)
    #dbg_value(i64 %.sroa.011.030, !13492, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13511)
    #dbg_value(i64 %.sroa.011.030, !13482, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13488)
    #dbg_value(ptr %.sroa.013.0.6, !13492, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13511)
    #dbg_value(ptr %.sroa.013.0.6, !13482, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13488)
    #dbg_value(ptr %.sroa.013.0.6, !13483, !DIExpression(), !13512)
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.013.0.6, i64 808, !dbg !13520
    #dbg_value(ptr poison, !13489, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13504)
    #dbg_value(ptr poison, !13490, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13505)
    #dbg_value(ptr poison, !13506, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13509)
    #dbg_value(ptr poison, !13484, !DIExpression(), !13510)
  %i.u = add i64 %.sroa.011.030, -8, !dbg !13521  ; 2 uses
    #dbg_value(i64 %i.u, !13489, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13504)
    #dbg_value(i64 %i.u, !13490, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13505)
    #dbg_value(i64 %i.u, !13506, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13509)
  %.sroa.013.0.7 = load ptr, ptr %i.t, align 8, !dbg !13518, !nonnull !1652, !noundef !1652 ; 2 uses
    #dbg_value(ptr %.sroa.013.0.7, !13484, !DIExpression(), !13510)
    #dbg_value(ptr %.sroa.013.0.7, !13506, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13509)
    #dbg_value(ptr %.sroa.013.0.7, !13490, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13505)
    #dbg_value(ptr %.sroa.013.0.7, !13489, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13504)
  %i.v = icmp eq i64 %i.u, 0, !dbg !13519
  br i1 %i.v, label %._crit_edge, label %.lr.ph, !dbg !13519
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef align 8 ptr @_RNvMsc_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingyNtNtCs3f36owOmepS_6quiche9range_buf8RangeBufE10init_frontCsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef align 8 captures(ret: address, provenance) dereferenceable(64) %0) unnamed_addr #4 !dbg !13530 {
bb.a:
    #dbg_value(ptr %0, !13554, !DIExpression(), !13559)
    #dbg_value(i64 0, !13560, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !13566)
  %i.a = load i64, ptr %0, align 8, !dbg !13591, !range !5398, !noundef !1652
  %i.b = trunc nuw i64 %i.a to i1, !dbg !13592    ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.c, !dbg !13592

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !13591 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !dbg !13591, !noundef !1652
  %.not = icmp eq ptr %i.d, null, !dbg !13591
  br i1 %.not, label %bb.d, label %bb.c, !dbg !13592

bb.c:                                             ; preds = %._crit_edge, %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !13593
  %.sroa.0.0 = select i1 %i.b, ptr %i.e, ptr null, !dbg !13593
  ret ptr %.sroa.0.0, !dbg !13594

bb.d:                                             ; preds = %bb.b
    #dbg_value(ptr %0, !13556, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !13572)
    #dbg_value(ptr %i.c, !13574, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !13581)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !13595 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !13595
  %i.h = load i64, ptr %i.g, align 8, !dbg !13595, !noundef !1652 ; 5 uses
    #dbg_value(i64 %i.h, !13567, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13582)
    #dbg_value(i64 %i.h, !13568, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13583)
    #dbg_value(i64 %i.h, !13584, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13587)
    #dbg_value(ptr poison, !13567, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13582)
    #dbg_value(ptr poison, !13568, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13583)
    #dbg_value(ptr poison, !13584, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13587)
    #dbg_value(ptr poison, !13562, !DIExpression(), !13588)
  %.sroa.013.029 = load ptr, ptr %i.f, align 8, !dbg !13596, !nonnull !1652, !noundef !1652 ; 3 uses
  %i.i = icmp eq i64 %i.h, 0, !dbg !13597
  br i1 %i.i, label %._crit_edge, label %.lr.ph.preheader, !dbg !13597

.lr.ph.preheader:                                 ; preds = %bb.d
  %xtraiter = and i64 %i.h, 7, !dbg !13597        ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !13597
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !dbg !13597

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.sroa.013.031.prol = phi ptr [ %.sroa.013.0.prol, %.lr.ph.prol ], [ %.sroa.013.029, %.lr.ph.preheader ]
  %.sroa.011.030.prol = phi i64 [ %i.k, %.lr.ph.prol ], [ %i.h, %.lr.ph.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
    #dbg_value(i64 %.sroa.011.030.prol, !13584, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13587)
    #dbg_value(i64 %.sroa.011.030.prol, !13570, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13589)
    #dbg_value(i64 %.sroa.011.030.prol, !13560, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13566)
    #dbg_value(ptr %.sroa.013.031.prol, !13570, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13589)
    #dbg_value(ptr %.sroa.013.031.prol, !13560, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13566)
    #dbg_value(ptr %.sroa.013.031.prol, !13561, !DIExpression(), !13590)
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.013.031.prol, i64 720, !dbg !13598
    #dbg_value(ptr poison, !13567, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13582)
    #dbg_value(ptr poison, !13568, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13583)
    #dbg_value(ptr poison, !13584, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13587)
    #dbg_value(ptr poison, !13562, !DIExpression(), !13588)
  %i.k = add i64 %.sroa.011.030.prol, -1, !dbg !13599 ; 2 uses
    #dbg_value(i64 %i.k, !13567, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13582)
    #dbg_value(i64 %i.k, !13568, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13583)
    #dbg_value(i64 %i.k, !13584, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13587)
  %.sroa.013.0.prol = load ptr, ptr %i.j, align 8, !dbg !13596, !nonnull !1652, !noundef !1652 ; 3 uses
    #dbg_value(ptr %.sroa.013.0.prol, !13562, !DIExpression(), !13588)
    #dbg_value(ptr %.sroa.013.0.prol, !13584, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13587)
    #dbg_value(ptr %.sroa.013.0.prol, !13568, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13583)
    #dbg_value(ptr %.sroa.013.0.prol, !13567, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13582)
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !13597 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !13597
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !dbg !13597, !llvm.loop !13540

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.sroa.013.0.lcssa35.unr = phi ptr [ poison, %.lr.ph.preheader ], [ %.sroa.013.0.prol, %.lr.ph.prol ]
  %.sroa.013.031.unr = phi ptr [ %.sroa.013.029, %.lr.ph.preheader ], [ %.sroa.013.0.prol, %.lr.ph.prol ]
  %.sroa.011.030.unr = phi i64 [ %i.h, %.lr.ph.preheader ], [ %i.k, %.lr.ph.prol ]
  %i.l = icmp ult i64 %i.h, 8, !dbg !13597
  br i1 %i.l, label %._crit_edge, label %.lr.ph, !dbg !13597

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.d
  %.sroa.013.0.lcssa = phi ptr [ %.sroa.013.029, %bb.d ], [ %.sroa.013.0.lcssa35.unr, %.lr.ph.prol.loopexit ], [ %.sroa.013.0.7, %.lr.ph ], !dbg !13596
  store i64 1, ptr %0, align 8, !dbg !13600
  store ptr %.sroa.013.0.lcssa, ptr %i.c, align 8, !dbg !13600
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false), !dbg !13600
  br label %bb.c, !dbg !13601

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.sroa.013.031 = phi ptr [ %.sroa.013.0.7, %.lr.ph ], [ %.sroa.013.031.unr, %.lr.ph.prol.loopexit ]
  %.sroa.011.030 = phi i64 [ %i.u, %.lr.ph ], [ %.sroa.011.030.unr, %.lr.ph.prol.loopexit ]
    #dbg_value(i64 %.sroa.011.030, !13584, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13587)
    #dbg_value(i64 %.sroa.011.030, !13570, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13589)
    #dbg_value(i64 %.sroa.011.030, !13560, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13566)
    #dbg_value(ptr %.sroa.013.031, !13570, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13589)
    #dbg_value(ptr %.sroa.013.031, !13560, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13566)
    #dbg_value(ptr %.sroa.013.031, !13561, !DIExpression(), !13590)
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.013.031, i64 720, !dbg !13598
    #dbg_value(ptr poison, !13567, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13582)
    #dbg_value(ptr poison, !13568, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13583)
    #dbg_value(ptr poison, !13584, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13587)
    #dbg_value(ptr poison, !13562, !DIExpression(), !13588)
    #dbg_value(i64 %.sroa.011.030, !13567, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13582)
    #dbg_value(i64 %.sroa.011.030, !13568, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13583)
    #dbg_value(i64 %.sroa.011.030, !13584, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13587)
  %.sroa.013.0 = load ptr, ptr %i.m, align 8, !dbg !13596, !nonnull !1652, !noundef !1652
    #dbg_value(ptr %.sroa.013.0, !13562, !DIExpression(), !13588)
    #dbg_value(ptr %.sroa.013.0, !13584, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13587)
    #dbg_value(ptr %.sroa.013.0, !13568, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13583)
    #dbg_value(ptr %.sroa.013.0, !13567, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13582)
    #dbg_value(i64 %.sroa.011.030, !13584, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13587)
    #dbg_value(i64 %.sroa.011.030, !13570, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13589)
    #dbg_value(i64 %.sroa.011.030, !13560, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13566)
    #dbg_value(ptr %.sroa.013.0, !13570, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13589)
    #dbg_value(ptr %.sroa.013.0, !13560, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13566)
    #dbg_value(ptr %.sroa.013.0, !13561, !DIExpression(), !13590)
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.013.0, i64 720, !dbg !13598
    #dbg_value(ptr poison, !13567, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13582)
    #dbg_value(ptr poison, !13568, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13583)
    #dbg_value(ptr poison, !13584, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13587)
    #dbg_value(ptr poison, !13562, !DIExpression(), !13588)
    #dbg_value(i64 %.sroa.011.030, !13567, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13582)
    #dbg_value(i64 %.sroa.011.030, !13568, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13583)
    #dbg_value(i64 %.sroa.011.030, !13584, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13587)
  %.sroa.013.0.1 = load ptr, ptr %i.n, align 8, !dbg !13596, !nonnull !1652, !noundef !1652
    #dbg_value(ptr %.sroa.013.0.1, !13562, !DIExpression(), !13588)
    #dbg_value(ptr %.sroa.013.0.1, !13584, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13587)
    #dbg_value(ptr %.sroa.013.0.1, !13568, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13583)
    #dbg_value(ptr %.sroa.013.0.1, !13567, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13582)
    #dbg_value(i64 %.sroa.011.030, !13584, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13587)
    #dbg_value(i64 %.sroa.011.030, !13570, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13589)
    #dbg_value(i64 %.sroa.011.030, !13560, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13566)
    #dbg_value(ptr %.sroa.013.0.1, !13570, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13589)
    #dbg_value(ptr %.sroa.013.0.1, !13560, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13566)
    #dbg_value(ptr %.sroa.013.0.1, !13561, !DIExpression(), !13590)
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.013.0.1, i64 720, !dbg !13598
    #dbg_value(ptr poison, !13567, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13582)
    #dbg_value(ptr poison, !13568, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13583)
    #dbg_value(ptr poison, !13584, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13587)
    #dbg_value(ptr poison, !13562, !DIExpression(), !13588)
    #dbg_value(i64 %.sroa.011.030, !13567, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13582)
    #dbg_value(i64 %.sroa.011.030, !13568, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13583)
    #dbg_value(i64 %.sroa.011.030, !13584, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13587)
  %.sroa.013.0.2 = load ptr, ptr %i.o, align 8, !dbg !13596, !nonnull !1652, !noundef !1652
    #dbg_value(ptr %.sroa.013.0.2, !13562, !DIExpression(), !13588)
    #dbg_value(ptr %.sroa.013.0.2, !13584, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13587)
    #dbg_value(ptr %.sroa.013.0.2, !13568, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13583)
    #dbg_value(ptr %.sroa.013.0.2, !13567, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13582)
    #dbg_value(i64 %.sroa.011.030, !13584, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13587)
    #dbg_value(i64 %.sroa.011.030, !13570, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13589)
    #dbg_value(i64 %.sroa.011.030, !13560, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13566)
    #dbg_value(ptr %.sroa.013.0.2, !13570, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13589)
    #dbg_value(ptr %.sroa.013.0.2, !13560, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13566)
    #dbg_value(ptr %.sroa.013.0.2, !13561, !DIExpression(), !13590)
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.013.0.2, i64 720, !dbg !13598
    #dbg_value(ptr poison, !13567, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13582)
    #dbg_value(ptr poison, !13568, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13583)
    #dbg_value(ptr poison, !13584, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13587)
    #dbg_value(ptr poison, !13562, !DIExpression(), !13588)
    #dbg_value(i64 %.sroa.011.030, !13567, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13582)
    #dbg_value(i64 %.sroa.011.030, !13568, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13583)
    #dbg_value(i64 %.sroa.011.030, !13584, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13587)
  %.sroa.013.0.3 = load ptr, ptr %i.p, align 8, !dbg !13596, !nonnull !1652, !noundef !1652
    #dbg_value(ptr %.sroa.013.0.3, !13562, !DIExpression(), !13588)
    #dbg_value(ptr %.sroa.013.0.3, !13584, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13587)
    #dbg_value(ptr %.sroa.013.0.3, !13568, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13583)
    #dbg_value(ptr %.sroa.013.0.3, !13567, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13582)
    #dbg_value(i64 %.sroa.011.030, !13584, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13587)
    #dbg_value(i64 %.sroa.011.030, !13570, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13589)
    #dbg_value(i64 %.sroa.011.030, !13560, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13566)
    #dbg_value(ptr %.sroa.013.0.3, !13570, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13589)
    #dbg_value(ptr %.sroa.013.0.3, !13560, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13566)
    #dbg_value(ptr %.sroa.013.0.3, !13561, !DIExpression(), !13590)
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.013.0.3, i64 720, !dbg !13598
    #dbg_value(ptr poison, !13567, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13582)
    #dbg_value(ptr poison, !13568, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13583)
    #dbg_value(ptr poison, !13584, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13587)
    #dbg_value(ptr poison, !13562, !DIExpression(), !13588)
    #dbg_value(i64 %.sroa.011.030, !13567, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13582)
    #dbg_value(i64 %.sroa.011.030, !13568, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13583)
    #dbg_value(i64 %.sroa.011.030, !13584, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13587)
  %.sroa.013.0.4 = load ptr, ptr %i.q, align 8, !dbg !13596, !nonnull !1652, !noundef !1652
    #dbg_value(ptr %.sroa.013.0.4, !13562, !DIExpression(), !13588)
    #dbg_value(ptr %.sroa.013.0.4, !13584, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13587)
    #dbg_value(ptr %.sroa.013.0.4, !13568, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13583)
    #dbg_value(ptr %.sroa.013.0.4, !13567, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13582)
    #dbg_value(i64 %.sroa.011.030, !13584, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13587)
    #dbg_value(i64 %.sroa.011.030, !13570, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13589)
    #dbg_value(i64 %.sroa.011.030, !13560, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13566)
    #dbg_value(ptr %.sroa.013.0.4, !13570, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13589)
    #dbg_value(ptr %.sroa.013.0.4, !13560, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13566)
    #dbg_value(ptr %.sroa.013.0.4, !13561, !DIExpression(), !13590)
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.013.0.4, i64 720, !dbg !13598
    #dbg_value(ptr poison, !13567, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13582)
    #dbg_value(ptr poison, !13568, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13583)
    #dbg_value(ptr poison, !13584, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13587)
    #dbg_value(ptr poison, !13562, !DIExpression(), !13588)
    #dbg_value(i64 %.sroa.011.030, !13567, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13582)
    #dbg_value(i64 %.sroa.011.030, !13568, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13583)
    #dbg_value(i64 %.sroa.011.030, !13584, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13587)
  %.sroa.013.0.5 = load ptr, ptr %i.r, align 8, !dbg !13596, !nonnull !1652, !noundef !1652
    #dbg_value(ptr %.sroa.013.0.5, !13562, !DIExpression(), !13588)
    #dbg_value(ptr %.sroa.013.0.5, !13584, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13587)
    #dbg_value(ptr %.sroa.013.0.5, !13568, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13583)
    #dbg_value(ptr %.sroa.013.0.5, !13567, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13582)
    #dbg_value(i64 %.sroa.011.030, !13584, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13587)
    #dbg_value(i64 %.sroa.011.030, !13570, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13589)
    #dbg_value(i64 %.sroa.011.030, !13560, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13566)
    #dbg_value(ptr %.sroa.013.0.5, !13570, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13589)
    #dbg_value(ptr %.sroa.013.0.5, !13560, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13566)
    #dbg_value(ptr %.sroa.013.0.5, !13561, !DIExpression(), !13590)
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.013.0.5, i64 720, !dbg !13598
    #dbg_value(ptr poison, !13567, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13582)
    #dbg_value(ptr poison, !13568, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13583)
    #dbg_value(ptr poison, !13584, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13587)
    #dbg_value(ptr poison, !13562, !DIExpression(), !13588)
    #dbg_value(i64 %.sroa.011.030, !13567, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13582)
    #dbg_value(i64 %.sroa.011.030, !13568, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13583)
    #dbg_value(i64 %.sroa.011.030, !13584, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13587)
  %.sroa.013.0.6 = load ptr, ptr %i.s, align 8, !dbg !13596, !nonnull !1652, !noundef !1652
    #dbg_value(ptr %.sroa.013.0.6, !13562, !DIExpression(), !13588)
    #dbg_value(ptr %.sroa.013.0.6, !13584, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13587)
    #dbg_value(ptr %.sroa.013.0.6, !13568, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13583)
    #dbg_value(ptr %.sroa.013.0.6, !13567, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13582)
    #dbg_value(i64 %.sroa.011.030, !13584, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13587)
    #dbg_value(i64 %.sroa.011.030, !13570, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13589)
    #dbg_value(i64 %.sroa.011.030, !13560, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13566)
    #dbg_value(ptr %.sroa.013.0.6, !13570, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13589)
    #dbg_value(ptr %.sroa.013.0.6, !13560, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13566)
    #dbg_value(ptr %.sroa.013.0.6, !13561, !DIExpression(), !13590)
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.013.0.6, i64 720, !dbg !13598
    #dbg_value(ptr poison, !13567, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13582)
    #dbg_value(ptr poison, !13568, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13583)
    #dbg_value(ptr poison, !13584, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13587)
    #dbg_value(ptr poison, !13562, !DIExpression(), !13588)
  %i.u = add i64 %.sroa.011.030, -8, !dbg !13599  ; 2 uses
    #dbg_value(i64 %i.u, !13567, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13582)
    #dbg_value(i64 %i.u, !13568, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13583)
    #dbg_value(i64 %i.u, !13584, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13587)
  %.sroa.013.0.7 = load ptr, ptr %i.t, align 8, !dbg !13596, !nonnull !1652, !noundef !1652 ; 2 uses
    #dbg_value(ptr %.sroa.013.0.7, !13562, !DIExpression(), !13588)
    #dbg_value(ptr %.sroa.013.0.7, !13584, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13587)
    #dbg_value(ptr %.sroa.013.0.7, !13568, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13583)
    #dbg_value(ptr %.sroa.013.0.7, !13567, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13582)
  %i.v = icmp eq i64 %i.u, 0, !dbg !13597
  br i1 %i.v, label %._crit_edge, label %.lr.ph, !dbg !13597
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef align 8 ptr @_RNvMsc_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingyyE10init_frontCsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef align 8 captures(ret: address, provenance) dereferenceable(64) %0) unnamed_addr #4 !dbg !13608 {
bb.a:
    #dbg_value(ptr %0, !13632, !DIExpression(), !13637)
    #dbg_value(i64 0, !13638, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !13644)
  %i.a = load i64, ptr %0, align 8, !dbg !13669, !range !5398, !noundef !1652
  %i.b = trunc nuw i64 %i.a to i1, !dbg !13670    ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.c, !dbg !13670

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !13669 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !dbg !13669, !noundef !1652
  %.not = icmp eq ptr %i.d, null, !dbg !13669
  br i1 %.not, label %bb.d, label %bb.c, !dbg !13670

bb.c:                                             ; preds = %._crit_edge, %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !13671
  %.sroa.0.0 = select i1 %i.b, ptr %i.e, ptr null, !dbg !13671
  ret ptr %.sroa.0.0, !dbg !13672

bb.d:                                             ; preds = %bb.b
    #dbg_value(ptr %0, !13634, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !13650)
    #dbg_value(ptr %i.c, !13652, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !13659)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !13673 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !13673
  %i.h = load i64, ptr %i.g, align 8, !dbg !13673, !noundef !1652 ; 5 uses
    #dbg_value(i64 %i.h, !13645, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13660)
    #dbg_value(i64 %i.h, !13646, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13661)
    #dbg_value(i64 %i.h, !13662, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13665)
    #dbg_value(ptr poison, !13645, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13660)
    #dbg_value(ptr poison, !13646, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13661)
    #dbg_value(ptr poison, !13662, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13665)
    #dbg_value(ptr poison, !13640, !DIExpression(), !13666)
  %.sroa.013.029 = load ptr, ptr %i.f, align 8, !dbg !13674, !nonnull !1652, !noundef !1652 ; 3 uses
  %i.i = icmp eq i64 %i.h, 0, !dbg !13675
  br i1 %i.i, label %._crit_edge, label %.lr.ph.preheader, !dbg !13675

.lr.ph.preheader:                                 ; preds = %bb.d
  %xtraiter = and i64 %i.h, 7, !dbg !13675        ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !13675
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !dbg !13675

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.sroa.013.031.prol = phi ptr [ %.sroa.013.0.prol, %.lr.ph.prol ], [ %.sroa.013.029, %.lr.ph.preheader ]
  %.sroa.011.030.prol = phi i64 [ %i.k, %.lr.ph.prol ], [ %i.h, %.lr.ph.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
    #dbg_value(i64 %.sroa.011.030.prol, !13662, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13665)
    #dbg_value(i64 %.sroa.011.030.prol, !13648, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13667)
    #dbg_value(i64 %.sroa.011.030.prol, !13638, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13644)
    #dbg_value(ptr %.sroa.013.031.prol, !13648, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13667)
    #dbg_value(ptr %.sroa.013.031.prol, !13638, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13644)
    #dbg_value(ptr %.sroa.013.031.prol, !13639, !DIExpression(), !13668)
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.013.031.prol, i64 192, !dbg !13676
    #dbg_value(ptr poison, !13645, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13660)
    #dbg_value(ptr poison, !13646, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13661)
    #dbg_value(ptr poison, !13662, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13665)
    #dbg_value(ptr poison, !13640, !DIExpression(), !13666)
  %i.k = add i64 %.sroa.011.030.prol, -1, !dbg !13677 ; 2 uses
    #dbg_value(i64 %i.k, !13645, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13660)
    #dbg_value(i64 %i.k, !13646, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13661)
    #dbg_value(i64 %i.k, !13662, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13665)
  %.sroa.013.0.prol = load ptr, ptr %i.j, align 8, !dbg !13674, !nonnull !1652, !noundef !1652 ; 3 uses
    #dbg_value(ptr %.sroa.013.0.prol, !13640, !DIExpression(), !13666)
    #dbg_value(ptr %.sroa.013.0.prol, !13662, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13665)
    #dbg_value(ptr %.sroa.013.0.prol, !13646, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13661)
    #dbg_value(ptr %.sroa.013.0.prol, !13645, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13660)
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !13675 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !13675
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !dbg !13675, !llvm.loop !13618

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.sroa.013.0.lcssa35.unr = phi ptr [ poison, %.lr.ph.preheader ], [ %.sroa.013.0.prol, %.lr.ph.prol ]
  %.sroa.013.031.unr = phi ptr [ %.sroa.013.029, %.lr.ph.preheader ], [ %.sroa.013.0.prol, %.lr.ph.prol ]
  %.sroa.011.030.unr = phi i64 [ %i.h, %.lr.ph.preheader ], [ %i.k, %.lr.ph.prol ]
  %i.l = icmp ult i64 %i.h, 8, !dbg !13675
  br i1 %i.l, label %._crit_edge, label %.lr.ph, !dbg !13675

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.d
  %.sroa.013.0.lcssa = phi ptr [ %.sroa.013.029, %bb.d ], [ %.sroa.013.0.lcssa35.unr, %.lr.ph.prol.loopexit ], [ %.sroa.013.0.7, %.lr.ph ], !dbg !13674
  store i64 1, ptr %0, align 8, !dbg !13678
  store ptr %.sroa.013.0.lcssa, ptr %i.c, align 8, !dbg !13678
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false), !dbg !13678
  br label %bb.c, !dbg !13679

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.sroa.013.031 = phi ptr [ %.sroa.013.0.7, %.lr.ph ], [ %.sroa.013.031.unr, %.lr.ph.prol.loopexit ]
  %.sroa.011.030 = phi i64 [ %i.u, %.lr.ph ], [ %.sroa.011.030.unr, %.lr.ph.prol.loopexit ]
    #dbg_value(i64 %.sroa.011.030, !13662, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13665)
    #dbg_value(i64 %.sroa.011.030, !13648, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13667)
    #dbg_value(i64 %.sroa.011.030, !13638, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13644)
    #dbg_value(ptr %.sroa.013.031, !13648, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13667)
    #dbg_value(ptr %.sroa.013.031, !13638, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13644)
    #dbg_value(ptr %.sroa.013.031, !13639, !DIExpression(), !13668)
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.013.031, i64 192, !dbg !13676
    #dbg_value(ptr poison, !13645, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13660)
    #dbg_value(ptr poison, !13646, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13661)
    #dbg_value(ptr poison, !13662, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13665)
    #dbg_value(ptr poison, !13640, !DIExpression(), !13666)
    #dbg_value(i64 %.sroa.011.030, !13645, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13660)
    #dbg_value(i64 %.sroa.011.030, !13646, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13661)
    #dbg_value(i64 %.sroa.011.030, !13662, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13665)
  %.sroa.013.0 = load ptr, ptr %i.m, align 8, !dbg !13674, !nonnull !1652, !noundef !1652
    #dbg_value(ptr %.sroa.013.0, !13640, !DIExpression(), !13666)
    #dbg_value(ptr %.sroa.013.0, !13662, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13665)
    #dbg_value(ptr %.sroa.013.0, !13646, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13661)
    #dbg_value(ptr %.sroa.013.0, !13645, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13660)
    #dbg_value(i64 %.sroa.011.030, !13662, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13665)
    #dbg_value(i64 %.sroa.011.030, !13648, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13667)
    #dbg_value(i64 %.sroa.011.030, !13638, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13644)
    #dbg_value(ptr %.sroa.013.0, !13648, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13667)
    #dbg_value(ptr %.sroa.013.0, !13638, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13644)
    #dbg_value(ptr %.sroa.013.0, !13639, !DIExpression(), !13668)
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.013.0, i64 192, !dbg !13676
    #dbg_value(ptr poison, !13645, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13660)
    #dbg_value(ptr poison, !13646, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13661)
    #dbg_value(ptr poison, !13662, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13665)
    #dbg_value(ptr poison, !13640, !DIExpression(), !13666)
    #dbg_value(i64 %.sroa.011.030, !13645, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13660)
    #dbg_value(i64 %.sroa.011.030, !13646, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13661)
    #dbg_value(i64 %.sroa.011.030, !13662, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13665)
  %.sroa.013.0.1 = load ptr, ptr %i.n, align 8, !dbg !13674, !nonnull !1652, !noundef !1652
    #dbg_value(ptr %.sroa.013.0.1, !13640, !DIExpression(), !13666)
    #dbg_value(ptr %.sroa.013.0.1, !13662, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13665)
    #dbg_value(ptr %.sroa.013.0.1, !13646, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13661)
    #dbg_value(ptr %.sroa.013.0.1, !13645, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13660)
    #dbg_value(i64 %.sroa.011.030, !13662, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13665)
    #dbg_value(i64 %.sroa.011.030, !13648, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13667)
    #dbg_value(i64 %.sroa.011.030, !13638, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13644)
    #dbg_value(ptr %.sroa.013.0.1, !13648, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13667)
    #dbg_value(ptr %.sroa.013.0.1, !13638, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13644)
    #dbg_value(ptr %.sroa.013.0.1, !13639, !DIExpression(), !13668)
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.013.0.1, i64 192, !dbg !13676
    #dbg_value(ptr poison, !13645, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13660)
    #dbg_value(ptr poison, !13646, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13661)
    #dbg_value(ptr poison, !13662, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13665)
    #dbg_value(ptr poison, !13640, !DIExpression(), !13666)
    #dbg_value(i64 %.sroa.011.030, !13645, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13660)
    #dbg_value(i64 %.sroa.011.030, !13646, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13661)
    #dbg_value(i64 %.sroa.011.030, !13662, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13665)
  %.sroa.013.0.2 = load ptr, ptr %i.o, align 8, !dbg !13674, !nonnull !1652, !noundef !1652
    #dbg_value(ptr %.sroa.013.0.2, !13640, !DIExpression(), !13666)
    #dbg_value(ptr %.sroa.013.0.2, !13662, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13665)
    #dbg_value(ptr %.sroa.013.0.2, !13646, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13661)
    #dbg_value(ptr %.sroa.013.0.2, !13645, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13660)
    #dbg_value(i64 %.sroa.011.030, !13662, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13665)
    #dbg_value(i64 %.sroa.011.030, !13648, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13667)
    #dbg_value(i64 %.sroa.011.030, !13638, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13644)
    #dbg_value(ptr %.sroa.013.0.2, !13648, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13667)
    #dbg_value(ptr %.sroa.013.0.2, !13638, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13644)
    #dbg_value(ptr %.sroa.013.0.2, !13639, !DIExpression(), !13668)
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.013.0.2, i64 192, !dbg !13676
    #dbg_value(ptr poison, !13645, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13660)
    #dbg_value(ptr poison, !13646, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13661)
    #dbg_value(ptr poison, !13662, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13665)
    #dbg_value(ptr poison, !13640, !DIExpression(), !13666)
    #dbg_value(i64 %.sroa.011.030, !13645, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13660)
    #dbg_value(i64 %.sroa.011.030, !13646, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13661)
    #dbg_value(i64 %.sroa.011.030, !13662, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13665)
  %.sroa.013.0.3 = load ptr, ptr %i.p, align 8, !dbg !13674, !nonnull !1652, !noundef !1652
    #dbg_value(ptr %.sroa.013.0.3, !13640, !DIExpression(), !13666)
    #dbg_value(ptr %.sroa.013.0.3, !13662, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13665)
    #dbg_value(ptr %.sroa.013.0.3, !13646, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13661)
    #dbg_value(ptr %.sroa.013.0.3, !13645, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13660)
    #dbg_value(i64 %.sroa.011.030, !13662, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13665)
    #dbg_value(i64 %.sroa.011.030, !13648, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13667)
    #dbg_value(i64 %.sroa.011.030, !13638, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13644)
    #dbg_value(ptr %.sroa.013.0.3, !13648, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13667)
    #dbg_value(ptr %.sroa.013.0.3, !13638, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13644)
    #dbg_value(ptr %.sroa.013.0.3, !13639, !DIExpression(), !13668)
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.013.0.3, i64 192, !dbg !13676
    #dbg_value(ptr poison, !13645, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13660)
    #dbg_value(ptr poison, !13646, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13661)
    #dbg_value(ptr poison, !13662, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13665)
    #dbg_value(ptr poison, !13640, !DIExpression(), !13666)
    #dbg_value(i64 %.sroa.011.030, !13645, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13660)
    #dbg_value(i64 %.sroa.011.030, !13646, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13661)
    #dbg_value(i64 %.sroa.011.030, !13662, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13665)
  %.sroa.013.0.4 = load ptr, ptr %i.q, align 8, !dbg !13674, !nonnull !1652, !noundef !1652
    #dbg_value(ptr %.sroa.013.0.4, !13640, !DIExpression(), !13666)
    #dbg_value(ptr %.sroa.013.0.4, !13662, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13665)
    #dbg_value(ptr %.sroa.013.0.4, !13646, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13661)
    #dbg_value(ptr %.sroa.013.0.4, !13645, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13660)
    #dbg_value(i64 %.sroa.011.030, !13662, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13665)
    #dbg_value(i64 %.sroa.011.030, !13648, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13667)
    #dbg_value(i64 %.sroa.011.030, !13638, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13644)
    #dbg_value(ptr %.sroa.013.0.4, !13648, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13667)
    #dbg_value(ptr %.sroa.013.0.4, !13638, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13644)
    #dbg_value(ptr %.sroa.013.0.4, !13639, !DIExpression(), !13668)
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.013.0.4, i64 192, !dbg !13676
    #dbg_value(ptr poison, !13645, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13660)
    #dbg_value(ptr poison, !13646, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13661)
    #dbg_value(ptr poison, !13662, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13665)
    #dbg_value(ptr poison, !13640, !DIExpression(), !13666)
    #dbg_value(i64 %.sroa.011.030, !13645, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13660)
    #dbg_value(i64 %.sroa.011.030, !13646, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13661)
    #dbg_value(i64 %.sroa.011.030, !13662, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13665)
  %.sroa.013.0.5 = load ptr, ptr %i.r, align 8, !dbg !13674, !nonnull !1652, !noundef !1652
    #dbg_value(ptr %.sroa.013.0.5, !13640, !DIExpression(), !13666)
    #dbg_value(ptr %.sroa.013.0.5, !13662, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13665)
    #dbg_value(ptr %.sroa.013.0.5, !13646, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13661)
    #dbg_value(ptr %.sroa.013.0.5, !13645, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13660)
    #dbg_value(i64 %.sroa.011.030, !13662, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13665)
    #dbg_value(i64 %.sroa.011.030, !13648, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13667)
    #dbg_value(i64 %.sroa.011.030, !13638, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13644)
    #dbg_value(ptr %.sroa.013.0.5, !13648, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13667)
    #dbg_value(ptr %.sroa.013.0.5, !13638, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13644)
    #dbg_value(ptr %.sroa.013.0.5, !13639, !DIExpression(), !13668)
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.013.0.5, i64 192, !dbg !13676
    #dbg_value(ptr poison, !13645, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13660)
    #dbg_value(ptr poison, !13646, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13661)
    #dbg_value(ptr poison, !13662, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13665)
    #dbg_value(ptr poison, !13640, !DIExpression(), !13666)
    #dbg_value(i64 %.sroa.011.030, !13645, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13660)
    #dbg_value(i64 %.sroa.011.030, !13646, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13661)
    #dbg_value(i64 %.sroa.011.030, !13662, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13665)
  %.sroa.013.0.6 = load ptr, ptr %i.s, align 8, !dbg !13674, !nonnull !1652, !noundef !1652
    #dbg_value(ptr %.sroa.013.0.6, !13640, !DIExpression(), !13666)
    #dbg_value(ptr %.sroa.013.0.6, !13662, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13665)
    #dbg_value(ptr %.sroa.013.0.6, !13646, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13661)
    #dbg_value(ptr %.sroa.013.0.6, !13645, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13660)
    #dbg_value(i64 %.sroa.011.030, !13662, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13665)
    #dbg_value(i64 %.sroa.011.030, !13648, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13667)
    #dbg_value(i64 %.sroa.011.030, !13638, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13644)
    #dbg_value(ptr %.sroa.013.0.6, !13648, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13667)
    #dbg_value(ptr %.sroa.013.0.6, !13638, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13644)
    #dbg_value(ptr %.sroa.013.0.6, !13639, !DIExpression(), !13668)
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.013.0.6, i64 192, !dbg !13676
    #dbg_value(ptr poison, !13645, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13660)
    #dbg_value(ptr poison, !13646, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13661)
    #dbg_value(ptr poison, !13662, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13665)
    #dbg_value(ptr poison, !13640, !DIExpression(), !13666)
  %i.u = add i64 %.sroa.011.030, -8, !dbg !13677  ; 2 uses
    #dbg_value(i64 %i.u, !13645, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13660)
    #dbg_value(i64 %i.u, !13646, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13661)
    #dbg_value(i64 %i.u, !13662, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13665)
  %.sroa.013.0.7 = load ptr, ptr %i.t, align 8, !dbg !13674, !nonnull !1652, !noundef !1652 ; 2 uses
    #dbg_value(ptr %.sroa.013.0.7, !13640, !DIExpression(), !13666)
    #dbg_value(ptr %.sroa.013.0.7, !13662, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13665)
    #dbg_value(ptr %.sroa.013.0.7, !13646, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13661)
    #dbg_value(ptr %.sroa.013.0.7, !13645, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13660)
  %i.v = icmp eq i64 %i.u, 0, !dbg !13675
  br i1 %i.v, label %._crit_edge, label %.lr.ph, !dbg !13675
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef align 8 ptr @_RNvMsc_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutyyE10init_frontCsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef align 8 captures(ret: address, provenance) dereferenceable(64) %0) unnamed_addr #4 !dbg !13703 {
bb.a:
    #dbg_value(ptr %0, !13787, !DIExpression(), !13792)
    #dbg_value(i64 0, !13793, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !13818)
  %i.a = load i64, ptr %0, align 8, !dbg !13861, !range !5398, !noundef !1652
  %i.b = trunc nuw i64 %i.a to i1, !dbg !13862    ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.c, !dbg !13862

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !13861 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !dbg !13861, !noundef !1652
  %.not = icmp eq ptr %i.d, null, !dbg !13861
  br i1 %.not, label %bb.d, label %bb.c, !dbg !13862

bb.c:                                             ; preds = %._crit_edge, %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !13863
  %.sroa.0.0 = select i1 %i.b, ptr %i.e, ptr null, !dbg !13863
  ret ptr %.sroa.0.0, !dbg !13864

bb.d:                                             ; preds = %bb.b
    #dbg_value(ptr %0, !13789, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !13827)
    #dbg_value(ptr %i.c, !13829, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !13836)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !13865 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !13865
  %i.h = load i64, ptr %i.g, align 8, !dbg !13865, !noundef !1652 ; 5 uses
    #dbg_value(i64 %i.h, !13822, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13837)
    #dbg_value(i64 %i.h, !13823, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13838)
    #dbg_value(i64 %i.h, !13839, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13857)
    #dbg_value(ptr poison, !13822, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13837)
    #dbg_value(ptr poison, !13823, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13838)
    #dbg_value(ptr poison, !13839, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13857)
    #dbg_value(ptr poison, !13814, !DIExpression(), !13858)
  %.sroa.013.029 = load ptr, ptr %i.f, align 8, !dbg !13866, !nonnull !1652, !noundef !1652 ; 3 uses
  %i.i = icmp eq i64 %i.h, 0, !dbg !13867
  br i1 %i.i, label %._crit_edge, label %.lr.ph.preheader, !dbg !13867

.lr.ph.preheader:                                 ; preds = %bb.d
  %xtraiter = and i64 %i.h, 7, !dbg !13867        ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !13867
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !dbg !13867

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.sroa.013.031.prol = phi ptr [ %.sroa.013.0.prol, %.lr.ph.prol ], [ %.sroa.013.029, %.lr.ph.preheader ]
  %.sroa.011.030.prol = phi i64 [ %i.k, %.lr.ph.prol ], [ %i.h, %.lr.ph.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
    #dbg_value(i64 %.sroa.011.030.prol, !13839, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13857)
    #dbg_value(i64 %.sroa.011.030.prol, !13825, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13859)
    #dbg_value(i64 %.sroa.011.030.prol, !13793, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13818)
    #dbg_value(ptr %.sroa.013.031.prol, !13825, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13859)
    #dbg_value(ptr %.sroa.013.031.prol, !13793, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13818)
    #dbg_value(ptr %.sroa.013.031.prol, !13813, !DIExpression(), !13860)
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.013.031.prol, i64 192, !dbg !13868
    #dbg_value(ptr poison, !13822, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13837)
    #dbg_value(ptr poison, !13823, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13838)
    #dbg_value(ptr poison, !13839, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13857)
    #dbg_value(ptr poison, !13814, !DIExpression(), !13858)
  %i.k = add i64 %.sroa.011.030.prol, -1, !dbg !13869 ; 2 uses
    #dbg_value(i64 %i.k, !13822, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13837)
    #dbg_value(i64 %i.k, !13823, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13838)
    #dbg_value(i64 %i.k, !13839, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13857)
  %.sroa.013.0.prol = load ptr, ptr %i.j, align 8, !dbg !13866, !nonnull !1652, !noundef !1652 ; 3 uses
    #dbg_value(ptr %.sroa.013.0.prol, !13814, !DIExpression(), !13858)
    #dbg_value(ptr %.sroa.013.0.prol, !13839, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13857)
    #dbg_value(ptr %.sroa.013.0.prol, !13823, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13838)
    #dbg_value(ptr %.sroa.013.0.prol, !13822, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13837)
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !13867 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !13867
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !dbg !13867, !llvm.loop !13721

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.sroa.013.0.lcssa35.unr = phi ptr [ poison, %.lr.ph.preheader ], [ %.sroa.013.0.prol, %.lr.ph.prol ]
  %.sroa.013.031.unr = phi ptr [ %.sroa.013.029, %.lr.ph.preheader ], [ %.sroa.013.0.prol, %.lr.ph.prol ]
  %.sroa.011.030.unr = phi i64 [ %i.h, %.lr.ph.preheader ], [ %i.k, %.lr.ph.prol ]
  %i.l = icmp ult i64 %i.h, 8, !dbg !13867
  br i1 %i.l, label %._crit_edge, label %.lr.ph, !dbg !13867

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.d
  %.sroa.013.0.lcssa = phi ptr [ %.sroa.013.029, %bb.d ], [ %.sroa.013.0.lcssa35.unr, %.lr.ph.prol.loopexit ], [ %.sroa.013.0.7, %.lr.ph ], !dbg !13866
  store i64 1, ptr %0, align 8, !dbg !13870
  store ptr %.sroa.013.0.lcssa, ptr %i.c, align 8, !dbg !13870
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false), !dbg !13870
  br label %bb.c, !dbg !13871

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.sroa.013.031 = phi ptr [ %.sroa.013.0.7, %.lr.ph ], [ %.sroa.013.031.unr, %.lr.ph.prol.loopexit ]
  %.sroa.011.030 = phi i64 [ %i.u, %.lr.ph ], [ %.sroa.011.030.unr, %.lr.ph.prol.loopexit ]
    #dbg_value(i64 %.sroa.011.030, !13839, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13857)
    #dbg_value(i64 %.sroa.011.030, !13825, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13859)
    #dbg_value(i64 %.sroa.011.030, !13793, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13818)
    #dbg_value(ptr %.sroa.013.031, !13825, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13859)
    #dbg_value(ptr %.sroa.013.031, !13793, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13818)
    #dbg_value(ptr %.sroa.013.031, !13813, !DIExpression(), !13860)
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.013.031, i64 192, !dbg !13868
    #dbg_value(ptr poison, !13822, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13837)
    #dbg_value(ptr poison, !13823, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13838)
    #dbg_value(ptr poison, !13839, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13857)
    #dbg_value(ptr poison, !13814, !DIExpression(), !13858)
    #dbg_value(i64 %.sroa.011.030, !13822, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13837)
    #dbg_value(i64 %.sroa.011.030, !13823, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13838)
    #dbg_value(i64 %.sroa.011.030, !13839, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13857)
  %.sroa.013.0 = load ptr, ptr %i.m, align 8, !dbg !13866, !nonnull !1652, !noundef !1652
    #dbg_value(ptr %.sroa.013.0, !13814, !DIExpression(), !13858)
    #dbg_value(ptr %.sroa.013.0, !13839, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13857)
    #dbg_value(ptr %.sroa.013.0, !13823, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13838)
    #dbg_value(ptr %.sroa.013.0, !13822, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13837)
    #dbg_value(i64 %.sroa.011.030, !13839, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13857)
    #dbg_value(i64 %.sroa.011.030, !13825, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13859)
    #dbg_value(i64 %.sroa.011.030, !13793, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13818)
    #dbg_value(ptr %.sroa.013.0, !13825, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13859)
    #dbg_value(ptr %.sroa.013.0, !13793, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13818)
    #dbg_value(ptr %.sroa.013.0, !13813, !DIExpression(), !13860)
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.013.0, i64 192, !dbg !13868
    #dbg_value(ptr poison, !13822, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13837)
    #dbg_value(ptr poison, !13823, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13838)
    #dbg_value(ptr poison, !13839, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13857)
    #dbg_value(ptr poison, !13814, !DIExpression(), !13858)
    #dbg_value(i64 %.sroa.011.030, !13822, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13837)
    #dbg_value(i64 %.sroa.011.030, !13823, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13838)
    #dbg_value(i64 %.sroa.011.030, !13839, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13857)
  %.sroa.013.0.1 = load ptr, ptr %i.n, align 8, !dbg !13866, !nonnull !1652, !noundef !1652
    #dbg_value(ptr %.sroa.013.0.1, !13814, !DIExpression(), !13858)
    #dbg_value(ptr %.sroa.013.0.1, !13839, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13857)
    #dbg_value(ptr %.sroa.013.0.1, !13823, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13838)
    #dbg_value(ptr %.sroa.013.0.1, !13822, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13837)
    #dbg_value(i64 %.sroa.011.030, !13839, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13857)
    #dbg_value(i64 %.sroa.011.030, !13825, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13859)
    #dbg_value(i64 %.sroa.011.030, !13793, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13818)
    #dbg_value(ptr %.sroa.013.0.1, !13825, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13859)
    #dbg_value(ptr %.sroa.013.0.1, !13793, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13818)
    #dbg_value(ptr %.sroa.013.0.1, !13813, !DIExpression(), !13860)
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.013.0.1, i64 192, !dbg !13868
    #dbg_value(ptr poison, !13822, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13837)
    #dbg_value(ptr poison, !13823, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13838)
    #dbg_value(ptr poison, !13839, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13857)
    #dbg_value(ptr poison, !13814, !DIExpression(), !13858)
    #dbg_value(i64 %.sroa.011.030, !13822, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13837)
    #dbg_value(i64 %.sroa.011.030, !13823, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13838)
    #dbg_value(i64 %.sroa.011.030, !13839, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13857)
  %.sroa.013.0.2 = load ptr, ptr %i.o, align 8, !dbg !13866, !nonnull !1652, !noundef !1652
    #dbg_value(ptr %.sroa.013.0.2, !13814, !DIExpression(), !13858)
    #dbg_value(ptr %.sroa.013.0.2, !13839, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13857)
    #dbg_value(ptr %.sroa.013.0.2, !13823, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13838)
    #dbg_value(ptr %.sroa.013.0.2, !13822, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13837)
    #dbg_value(i64 %.sroa.011.030, !13839, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13857)
    #dbg_value(i64 %.sroa.011.030, !13825, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13859)
    #dbg_value(i64 %.sroa.011.030, !13793, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13818)
    #dbg_value(ptr %.sroa.013.0.2, !13825, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13859)
    #dbg_value(ptr %.sroa.013.0.2, !13793, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13818)
    #dbg_value(ptr %.sroa.013.0.2, !13813, !DIExpression(), !13860)
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.013.0.2, i64 192, !dbg !13868
    #dbg_value(ptr poison, !13822, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13837)
    #dbg_value(ptr poison, !13823, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13838)
    #dbg_value(ptr poison, !13839, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13857)
    #dbg_value(ptr poison, !13814, !DIExpression(), !13858)
    #dbg_value(i64 %.sroa.011.030, !13822, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13837)
    #dbg_value(i64 %.sroa.011.030, !13823, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13838)
    #dbg_value(i64 %.sroa.011.030, !13839, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13857)
  %.sroa.013.0.3 = load ptr, ptr %i.p, align 8, !dbg !13866, !nonnull !1652, !noundef !1652
    #dbg_value(ptr %.sroa.013.0.3, !13814, !DIExpression(), !13858)
    #dbg_value(ptr %.sroa.013.0.3, !13839, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13857)
    #dbg_value(ptr %.sroa.013.0.3, !13823, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13838)
    #dbg_value(ptr %.sroa.013.0.3, !13822, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13837)
    #dbg_value(i64 %.sroa.011.030, !13839, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13857)
    #dbg_value(i64 %.sroa.011.030, !13825, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13859)
    #dbg_value(i64 %.sroa.011.030, !13793, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13818)
    #dbg_value(ptr %.sroa.013.0.3, !13825, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13859)
    #dbg_value(ptr %.sroa.013.0.3, !13793, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13818)
    #dbg_value(ptr %.sroa.013.0.3, !13813, !DIExpression(), !13860)
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.013.0.3, i64 192, !dbg !13868
    #dbg_value(ptr poison, !13822, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13837)
    #dbg_value(ptr poison, !13823, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13838)
    #dbg_value(ptr poison, !13839, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13857)
    #dbg_value(ptr poison, !13814, !DIExpression(), !13858)
    #dbg_value(i64 %.sroa.011.030, !13822, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13837)
    #dbg_value(i64 %.sroa.011.030, !13823, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13838)
    #dbg_value(i64 %.sroa.011.030, !13839, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13857)
  %.sroa.013.0.4 = load ptr, ptr %i.q, align 8, !dbg !13866, !nonnull !1652, !noundef !1652
    #dbg_value(ptr %.sroa.013.0.4, !13814, !DIExpression(), !13858)
    #dbg_value(ptr %.sroa.013.0.4, !13839, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13857)
    #dbg_value(ptr %.sroa.013.0.4, !13823, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13838)
    #dbg_value(ptr %.sroa.013.0.4, !13822, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13837)
    #dbg_value(i64 %.sroa.011.030, !13839, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13857)
    #dbg_value(i64 %.sroa.011.030, !13825, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13859)
    #dbg_value(i64 %.sroa.011.030, !13793, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13818)
    #dbg_value(ptr %.sroa.013.0.4, !13825, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13859)
    #dbg_value(ptr %.sroa.013.0.4, !13793, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13818)
    #dbg_value(ptr %.sroa.013.0.4, !13813, !DIExpression(), !13860)
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.013.0.4, i64 192, !dbg !13868
    #dbg_value(ptr poison, !13822, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13837)
    #dbg_value(ptr poison, !13823, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13838)
    #dbg_value(ptr poison, !13839, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13857)
    #dbg_value(ptr poison, !13814, !DIExpression(), !13858)
    #dbg_value(i64 %.sroa.011.030, !13822, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13837)
    #dbg_value(i64 %.sroa.011.030, !13823, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13838)
    #dbg_value(i64 %.sroa.011.030, !13839, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13857)
  %.sroa.013.0.5 = load ptr, ptr %i.r, align 8, !dbg !13866, !nonnull !1652, !noundef !1652
    #dbg_value(ptr %.sroa.013.0.5, !13814, !DIExpression(), !13858)
    #dbg_value(ptr %.sroa.013.0.5, !13839, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13857)
    #dbg_value(ptr %.sroa.013.0.5, !13823, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13838)
    #dbg_value(ptr %.sroa.013.0.5, !13822, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13837)
    #dbg_value(i64 %.sroa.011.030, !13839, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13857)
    #dbg_value(i64 %.sroa.011.030, !13825, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13859)
    #dbg_value(i64 %.sroa.011.030, !13793, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13818)
    #dbg_value(ptr %.sroa.013.0.5, !13825, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13859)
    #dbg_value(ptr %.sroa.013.0.5, !13793, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13818)
    #dbg_value(ptr %.sroa.013.0.5, !13813, !DIExpression(), !13860)
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.013.0.5, i64 192, !dbg !13868
    #dbg_value(ptr poison, !13822, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13837)
    #dbg_value(ptr poison, !13823, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13838)
    #dbg_value(ptr poison, !13839, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13857)
    #dbg_value(ptr poison, !13814, !DIExpression(), !13858)
    #dbg_value(i64 %.sroa.011.030, !13822, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13837)
    #dbg_value(i64 %.sroa.011.030, !13823, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13838)
    #dbg_value(i64 %.sroa.011.030, !13839, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13857)
  %.sroa.013.0.6 = load ptr, ptr %i.s, align 8, !dbg !13866, !nonnull !1652, !noundef !1652
    #dbg_value(ptr %.sroa.013.0.6, !13814, !DIExpression(), !13858)
    #dbg_value(ptr %.sroa.013.0.6, !13839, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13857)
    #dbg_value(ptr %.sroa.013.0.6, !13823, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13838)
    #dbg_value(ptr %.sroa.013.0.6, !13822, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13837)
    #dbg_value(i64 %.sroa.011.030, !13839, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13857)
    #dbg_value(i64 %.sroa.011.030, !13825, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13859)
    #dbg_value(i64 %.sroa.011.030, !13793, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13818)
    #dbg_value(ptr %.sroa.013.0.6, !13825, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13859)
    #dbg_value(ptr %.sroa.013.0.6, !13793, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13818)
    #dbg_value(ptr %.sroa.013.0.6, !13813, !DIExpression(), !13860)
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.013.0.6, i64 192, !dbg !13868
    #dbg_value(ptr poison, !13822, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13837)
    #dbg_value(ptr poison, !13823, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13838)
    #dbg_value(ptr poison, !13839, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13857)
    #dbg_value(ptr poison, !13814, !DIExpression(), !13858)
  %i.u = add i64 %.sroa.011.030, -8, !dbg !13869  ; 2 uses
    #dbg_value(i64 %i.u, !13822, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13837)
    #dbg_value(i64 %i.u, !13823, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13838)
    #dbg_value(i64 %i.u, !13839, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13857)
  %.sroa.013.0.7 = load ptr, ptr %i.t, align 8, !dbg !13866, !nonnull !1652, !noundef !1652 ; 2 uses
    #dbg_value(ptr %.sroa.013.0.7, !13814, !DIExpression(), !13858)
    #dbg_value(ptr %.sroa.013.0.7, !13839, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13857)
    #dbg_value(ptr %.sroa.013.0.7, !13823, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13838)
    #dbg_value(ptr %.sroa.013.0.7, !13822, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13837)
  %i.v = icmp eq i64 %i.u, 0, !dbg !13867
  br i1 %i.v, label %._crit_edge, label %.lr.ph, !dbg !13867
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtCsjfnSKV9Rz3v_3h3i12recordreplay4qlog10map_header(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(96) %1, ptr noalias nofree noundef readonly captures(address, read_provenance) %2, i64 %3) unnamed_addr #0 !dbg !13875 {
bb.a:
    #dbg_value(ptr %2, !13933, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13938)
    #dbg_value(i64 %3, !13933, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13938)
    #dbg_value(ptr %1, !13932, !DIExpression(), !13938)
    #dbg_value(ptr poison, !13940, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13945)
    #dbg_value(i64 10, !13940, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13945)
    #dbg_value(ptr poison, !13940, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13947)
    #dbg_value(i64 4, !13940, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13947)
    #dbg_value(ptr %1, !13948, !DIExpression(), !13954)
    #dbg_value(ptr %1, !13955, !DIExpression(), !13960)
  %i.a = load i64, ptr %1, align 8, !dbg !14008, !range !2220, !noundef !1652
  %.not = icmp eq i64 %i.a, -1, !dbg !14008       ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !14009
  %i.c = load ptr, ptr %i.b, align 8, !dbg !14009, !nonnull !1652
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !14009
  %i.e = load i64, ptr %i.d, align 8, !dbg !14009
  %.sroa.6.0 = select i1 %.not, i64 0, i64 %i.e, !dbg !14009 ; 3 uses
  %.sroa.03.0 = select i1 %.not, ptr inttoptr (i64 1 to ptr), ptr %i.c, !dbg !14009 ; 16 uses
    #dbg_value(ptr %.sroa.03.0, !13934, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13961)
    #dbg_value(i64 %.sroa.6.0, !13934, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13961)
    #dbg_value(ptr %1, !13948, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !13963)
    #dbg_value(ptr %1, !13955, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !13966)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48, !dbg !14010
  %i.g = load i64, ptr %i.f, align 8, !dbg !14010, !range !2220, !noundef !1652
  %.not49 = icmp eq i64 %i.g, -1, !dbg !14010     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 56, !dbg !14011
  %i.i = load ptr, ptr %i.h, align 8, !dbg !14011, !nonnull !1652
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 64, !dbg !14011
  %i.k = load i64, ptr %i.j, align 8, !dbg !14011
  %.sroa.312.0 = select i1 %.not49, i64 0, i64 %i.k, !dbg !14011
  %.sroa.011.0 = select i1 %.not49, ptr inttoptr (i64 1 to ptr), ptr %i.i, !dbg !14011
    #dbg_value(ptr %.sroa.011.0, !13935, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13967)
    #dbg_value(i64 %.sroa.312.0, !13935, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13967)
    #dbg_value(ptr %.sroa.03.0, !13942, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13945)
end_hunk_0
