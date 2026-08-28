Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quiche-rs/original/tokio_quiche-c91d6529b0ffc3f4.tokio_quiche.74e4f61a4e01e0f4-cgu.15?download=true
inline.NumInlined: 508
inline.NumDeleted: 154
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvNtCsazSMmbOrWdo_21intrusive_collections6rbtree6removeNtB2_13AtomicLinkOpsECsa2e0UnRrdBM_12tokio_quiche:bb.a
    #dbg_value(i64 %i.hd, !3250, !DIExpression(), !6547)
    #dbg_value(i64 %i.hd, !3256, !DIExpression(), !6549)
  store i64 %i.hd, ptr %i.ha, align 8, !dbg !6552, !noalias !6462
  %.val21.i398 = load i64, ptr %i.gl, align 8, !dbg !6554, !noalias !6462, !noundef !12
    #dbg_value(ptr poison, !2880, !DIExpression(), !6555)
    #dbg_value(ptr poison, !2881, !DIExpression(), !6555)
  %i.he = and i64 %.val21.i398, -2, !dbg !6557    ; 2 uses
    #dbg_value(i64 %i.he, !2882, !DIExpression(), !6558)
    #dbg_value(i64 %i.he, !2894, !DIExpression(), !6559)
  %i.hf = inttoptr i64 %i.he to ptr, !dbg !6561   ; 3 uses
  %.not19.i399 = icmp eq i64 %i.he, 0, !dbg !6562
  br i1 %.not19.i399, label %bb.bm, label %bb.bl, !dbg !6563

bb.bl:                                            ; preds = %bb.bk
    #dbg_value(ptr %i.hf, !3140, !DIExpression(), !6564)
    #dbg_value(ptr %i.hf, !3128, !DIExpression(), !6472)
  %.val23.i400 = load ptr, ptr %i.hf, align 8, !dbg !6565, !noalias !6462, !noundef !12
    #dbg_value(ptr undef, !3118, !DIExpression(), !6470)
    #dbg_value(ptr undef, !3115, !DIExpression(), !6466)
  %i.hg = icmp eq ptr %.val23.i400, %.sroa.0127.3
  br i1 %i.hg, label %bb.bn, label %.critedge.i401, !dbg !6566

bb.bm:                                            ; preds = %bb.bk
  store ptr %.val25.i394, ptr %1, align 8, !dbg !6567, !alias.scope !6462
  br label %_RINvNtCsazSMmbOrWdo_21intrusive_collections6rbtree12rotate_rightNtB2_13AtomicLinkOpsECsa2e0UnRrdBM_12tokio_quiche.exit402, !dbg !6568

.critedge.i401:                                   ; preds = %bb.bl
    #dbg_value(ptr poison, !3314, !DIExpression(), !6569)
    #dbg_value(ptr %i.hf, !3317, !DIExpression(), !6569)
    #dbg_value(ptr %.val25.i394, !3318, !DIExpression(), !6569)
    #dbg_value(ptr %.val25.i394, !3321, !DIExpression(), !6571)
    #dbg_value(ptr %.val25.i394, !3327, !DIExpression(), !6573)
    #dbg_value(ptr %i.hf, !3324, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !6575)
    #dbg_value(ptr %i.hf, !3330, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !6576)
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hf, i64 8, !dbg !6577
  store ptr %.val25.i394, ptr %i.hh, align 8, !dbg !6579, !noalias !6462
  br label %_RINvNtCsazSMmbOrWdo_21intrusive_collections6rbtree12rotate_rightNtB2_13AtomicLinkOpsECsa2e0UnRrdBM_12tokio_quiche.exit402, !dbg !6581

bb.bn:                                            ; preds = %bb.bl
    #dbg_value(ptr poison, !3147, !DIExpression(), !6582)
    #dbg_value(ptr %i.hf, !3152, !DIExpression(), !6582)
    #dbg_value(ptr %.val25.i394, !3153, !DIExpression(), !6582)
    #dbg_value(ptr %.val25.i394, !3156, !DIExpression(), !6584)
    #dbg_value(ptr %.val25.i394, !3166, !DIExpression(), !6586)
    #dbg_value(ptr %i.hf, !3163, !DIExpression(), !6588)
    #dbg_value(ptr %i.hf, !3172, !DIExpression(), !6589)
  store ptr %.val25.i394, ptr %i.hf, align 8, !dbg !6590, !noalias !6462
  br label %_RINvNtCsazSMmbOrWdo_21intrusive_collections6rbtree12rotate_rightNtB2_13AtomicLinkOpsECsa2e0UnRrdBM_12tokio_quiche.exit402, !dbg !6592

_RINvNtCsazSMmbOrWdo_21intrusive_collections6rbtree12rotate_rightNtB2_13AtomicLinkOpsECsa2e0UnRrdBM_12tokio_quiche.exit402: ; preds = %bb.bm, %.critedge.i401, %bb.bn
    #dbg_value(ptr poison, !3314, !DIExpression(), !6593)
    #dbg_value(ptr %.val25.i394, !3317, !DIExpression(), !6593)
    #dbg_value(ptr %.sroa.0127.3, !3318, !DIExpression(), !6593)
    #dbg_value(ptr %.sroa.0127.3, !3321, !DIExpression(), !6595)
    #dbg_value(ptr %.sroa.0127.3, !3327, !DIExpression(), !6597)
    #dbg_value(ptr %.val25.i394, !3324, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !6599)
    #dbg_value(ptr %.val25.i394, !3330, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !6600)
  store ptr %.sroa.0127.3, ptr %i.gt, align 8, !dbg !6601, !noalias !6462
    #dbg_value(ptr %.val25.i394, !3185, !DIExpression(), !6603)
    #dbg_value(ptr %.val25.i394, !3192, !DIExpression(), !6605)
    #dbg_value(ptr %.val25.i394, !3204, !DIExpression(), !6607)
    #dbg_value(ptr poison, !3188, !DIExpression(), !6603)
    #dbg_value(ptr poison, !3221, !DIExpression(), !6609)
    #dbg_value(ptr %.sroa.0127.3, !3189, !DIExpression(), !6603)
    #dbg_value(ptr %.sroa.0127.3, !3225, !DIExpression(), !6609)
    #dbg_value(ptr %.sroa.0127.3, !3196, !DIExpression(), !6605)
    #dbg_declare(ptr poison, !3195, !DIExpression(), !6611)
    #dbg_declare(ptr poison, !3216, !DIExpression(), !6612)
    #dbg_value(ptr %.sroa.0127.3, !3230, !DIExpression(), !6613)
    #dbg_value(ptr %.sroa.0127.3, !3230, !DIExpression(), !6615)
    #dbg_value(ptr %i.gl, !3238, !DIExpression(), !6617)
  %i.hi = load i64, ptr %i.gl, align 8, !dbg !6619, !noalias !6462, !noundef !12
    #dbg_value(i8 poison, !3197, !DIExpression(), !6605)
    #dbg_value(i64 %i.hi, !3198, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !6620)
  %i.hj = ptrtoint ptr %.val25.i394 to i64, !dbg !6621
  %i.hk = and i64 %i.hi, 1, !dbg !6622
    #dbg_value(i64 %i.hk, !3198, !DIExpression(), !6620)
    #dbg_value(i64 %i.hj, !3200, !DIExpression(), !6623)
    #dbg_value(ptr %i.gl, !3247, !DIExpression(), !6624)
    #dbg_value(ptr %i.gl, !3253, !DIExpression(), !6626)
  %i.hl = or disjoint i64 %i.hk, %i.hj, !dbg !6628
    #dbg_value(i64 %i.hl, !3250, !DIExpression(), !6624)
    #dbg_value(i64 %i.hl, !3256, !DIExpression(), !6626)
  store i64 %i.hl, ptr %i.gl, align 8, !dbg !6629, !noalias !6462
  br label %bb.q, !dbg !6631

bb.bo:                                            ; preds = %.thread78
    #dbg_value(ptr %.sroa.0127.2, !4394, !DIExpression(), !4487)
    #dbg_value(ptr poison, !2880, !DIExpression(), !6632)
    #dbg_value(ptr poison, !2881, !DIExpression(), !6632)
    #dbg_value(i64 %.sroa.0127.2.val297, !2882, !DIExpression(DW_OP_constu, 18446744073709551614, DW_OP_and, DW_OP_stack_value), !6634)
    #dbg_value(i64 %.sroa.0127.2.val297, !2894, !DIExpression(DW_OP_constu, 18446744073709551614, DW_OP_and, DW_OP_stack_value), !6635)
    #dbg_value(ptr %i.fv, !4562, !DIExpression(), !6637)
    #dbg_value(ptr %i.fv, !4395, !DIExpression(), !4487)
  %.val320 = load ptr, ptr %i.fv, align 8, !dbg !6639, !noundef !12 ; 3 uses
    #dbg_value(ptr undef, !4372, !DIExpression(), !4397)
    #dbg_value(ptr undef, !4369, !DIExpression(), !4388)
    #dbg_value(ptr poison, !2919, !DIExpression(), !6640)
    #dbg_value(ptr poison, !2924, !DIExpression(), !6640)
  %i.hm = icmp eq ptr %.val320, %.sroa.0127.2
  br i1 %i.hm, label %bb.bp, label %.critedge282, !dbg !6642

.critedge282:                                     ; preds = %bb.bo
    #dbg_value(ptr poison, !2880, !DIExpression(), !6643)
    #dbg_value(ptr poison, !2881, !DIExpression(), !6643)
    #dbg_value(i64 %.sroa.0127.2.val297, !2882, !DIExpression(DW_OP_constu, 18446744073709551614, DW_OP_and, DW_OP_stack_value), !6645)
    #dbg_value(i64 %.sroa.0127.2.val297, !2894, !DIExpression(DW_OP_constu, 18446744073709551614, DW_OP_and, DW_OP_stack_value), !6646)
    #dbg_value(ptr %i.fv, !4562, !DIExpression(), !6648)
    #dbg_value(ptr %.val320, !4562, !DIExpression(), !6650)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val320) ]
    #dbg_value(ptr %.val320, !4342, !DIExpression(), !5007)
  br label %.backedge, !dbg !6652

.backedge:                                        ; preds = %.critedge282, %bb.bp, %.critedge278, %bb.au
  %.sroa.093.0.be = phi ptr [ %.val325, %.critedge278 ], [ %.val286, %bb.au ], [ %.val, %bb.bp ], [ %.val320, %.critedge282 ]
  br label %bb.u, !dbg !5010

bb.bp:                                            ; preds = %bb.bo
    #dbg_value(ptr poison, !2880, !DIExpression(), !6653)
    #dbg_value(ptr poison, !2881, !DIExpression(), !6653)
    #dbg_value(i64 %.sroa.0127.2.val297, !2882, !DIExpression(DW_OP_constu, 18446744073709551614, DW_OP_and, DW_OP_stack_value), !6655)
    #dbg_value(i64 %.sroa.0127.2.val297, !2894, !DIExpression(DW_OP_constu, 18446744073709551614, DW_OP_and, DW_OP_stack_value), !6656)
    #dbg_value(ptr %i.fv, !4562, !DIExpression(), !6658)
  %i.hn = getelementptr i8, ptr %i.fv, i64 8, !dbg !6660
  %.val = load ptr, ptr %i.hn, align 8, !dbg !6660, !nonnull !12, !noundef !12
    #dbg_value(ptr %.val, !4562, !DIExpression(), !6661)
    #dbg_value(ptr %.val, !4342, !DIExpression(), !5007)
  br label %.backedge, !dbg !6652

bb.bq:                                            ; preds = %.thread78
  %i.ho = getelementptr i8, ptr %.sroa.0127.2, i64 16
    #dbg_value(ptr poison, !2945, !DIExpression(), !6663)
    #dbg_value(ptr poison, !2954, !DIExpression(), !6665)
    #dbg_value(ptr poison, !2950, !DIExpression(), !6663)
    #dbg_value(ptr poison, !2958, !DIExpression(), !6665)
    #dbg_value(ptr poison, !2963, !DIExpression(), !6667)
    #dbg_value(i1 true, !2951, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !6663)
    #dbg_declare(ptr poison, !2969, !DIExpression(), !6669)
    #dbg_value(ptr poison, !2979, !DIExpression(), !6670)
    #dbg_value(ptr poison, !2979, !DIExpression(), !6672)
    #dbg_value(ptr %i.ho, !2997, !DIExpression(), !6674)
    #dbg_value(i1 true, !2971, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !6667)
    #dbg_value(i64 1, !2972, !DIExpression(), !6676)
    #dbg_value(i64 %.sroa.0127.2.val297, !2974, !DIExpression(DW_OP_constu, 18446744073709551614, DW_OP_and, DW_OP_stack_value), !6677)
    #dbg_value(ptr %i.ho, !3008, !DIExpression(), !6678)
    #dbg_value(ptr %i.ho, !3017, !DIExpression(), !6680)
  %i.hp = or i64 %.sroa.0127.2.val297, 1, !dbg !6682
    #dbg_value(i64 %i.hp, !3014, !DIExpression(), !6678)
    #dbg_value(i64 %i.hp, !3023, !DIExpression(), !6680)
  store i64 %i.hp, ptr %i.ho, align 8, !dbg !6683
  br label %bb.q, !dbg !6685
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCsixltGIj4kJ4_3log13___private_api3loguNtB2_12GlobalLoggerECsa2e0UnRrdBM_12tokio_quiche(ptr noundef nonnull %0, ptr noundef nonnull %1, i64 noundef range(i64 1, 6) %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !6687 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [96 x i8], align 8                ; 16 uses
    #dbg_declare(ptr poison, !6773, !DIExpression(), !6781)
    #dbg_value(ptr %0, !6774, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6782)
    #dbg_value(ptr %1, !6774, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6782)
    #dbg_value(i64 %2, !6775, !DIExpression(), !6782)
    #dbg_value(ptr %3, !6776, !DIExpression(), !6782)
    #dbg_declare(ptr poison, !6777, !DIExpression(), !6783)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6784), !dbg !6787
    #dbg_value(ptr poison, !6788, !DIExpression(), !6836)
    #dbg_value(ptr poison, !6877, !DIExpression(), !6884)
    #dbg_value(ptr undef, !6877, !DIExpression(), !6884)
    #dbg_value(ptr undef, !6788, !DIExpression(), !6836)
    #dbg_declare(ptr %i.a, !6866, !DIExpression(), !6886)
    #dbg_value(ptr %0, !6867, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6887)
    #dbg_value(ptr %1, !6867, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6887)
    #dbg_value(i64 %2, !6868, !DIExpression(), !6887)
    #dbg_value(ptr %3, !6874, !DIExpression(), !6887)
    #dbg_value(ptr null, !6869, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6887)
    #dbg_value(i64 undef, !6869, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6887)
    #dbg_value(ptr poison, !6870, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6888)
    #dbg_value(i64 poison, !6870, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6888)
    #dbg_value(ptr poison, !6871, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6888)
    #dbg_value(i64 poison, !6871, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6888)
    #dbg_value(ptr poison, !6872, !DIExpression(), !6888)
    #dbg_value(ptr poison, !6889, !DIExpression(), !6896)
    #dbg_value(ptr poison, !6898, !DIExpression(), !6904)
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 32, !dbg !6906
  %i.d = load ptr, ptr %i.c, align 8, !dbg !6906, !alias.scope !6784, !nonnull !12, !align !6907, !noundef !12 ; 3 uses
    #dbg_value(ptr %i.d, !6872, !DIExpression(), !6888)
    #dbg_value(ptr %i.d, !6889, !DIExpression(), !6896)
    #dbg_value(ptr %i.d, !6898, !DIExpression(), !6904)
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 24, !dbg !6908
  %i.f = load i64, ptr %i.e, align 8, !dbg !6908, !alias.scope !6784, !noundef !12
    #dbg_value(i64 %i.f, !6871, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6888)
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16, !dbg !6908
  %i.h = load ptr, ptr %i.g, align 8, !dbg !6908, !alias.scope !6784, !nonnull !12, !noundef !12
    #dbg_value(ptr %i.h, !6871, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6888)
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8, !dbg !6909
  %i.j = load i64, ptr %i.i, align 8, !dbg !6909, !alias.scope !6784, !noundef !12
    #dbg_value(i64 %i.j, !6870, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6888)
  %i.k = load ptr, ptr %3, align 8, !dbg !6909, !alias.scope !6784, !nonnull !12, !noundef !12
    #dbg_value(ptr %i.k, !6870, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6888)
    #dbg_value(i64 2, !6873, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6910)
    #dbg_value(i64 2, !6873, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !6910)
    #dbg_value(ptr undef, !6873, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !6910)
    #dbg_value(i64 undef, !6873, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !6910)
    #dbg_value(i64 3, !6873, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !6910)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !6873, !DIExpression(DW_OP_LLVM_fragment, 448, 64), !6910)
    #dbg_value(i64 0, !6873, !DIExpression(DW_OP_LLVM_fragment, 512, 64), !6910)
    #dbg_value(i32 poison, !6873, !DIExpression(DW_OP_LLVM_fragment, 576, 32), !6910)
    #dbg_value(i32 poison, !6873, !DIExpression(DW_OP_LLVM_fragment, 608, 32), !6910)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !6873, !DIExpression(DW_OP_LLVM_fragment, 640, 64), !6910)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !6873, !DIExpression(DW_OP_LLVM_fragment, 704, 64), !6910)
    #dbg_value(ptr %0, !6873, !DIExpression(DW_OP_LLVM_fragment, 640, 64), !6910)
    #dbg_value(ptr %1, !6873, !DIExpression(DW_OP_LLVM_fragment, 704, 64), !6910)
    #dbg_value(i64 %2, !6873, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !6910)
    #dbg_value(ptr %i.k, !6873, !DIExpression(DW_OP_LLVM_fragment, 448, 64), !6910)
    #dbg_value(i64 %i.j, !6873, !DIExpression(DW_OP_LLVM_fragment, 512, 64), !6910)
    #dbg_value(i64 0, !6873, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6910)
    #dbg_value(ptr %i.h, !6873, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6910)
    #dbg_value(i64 %i.f, !6873, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !6910)
  %i.l = load ptr, ptr %i.d, align 8, !dbg !6911, !noalias !6784, !nonnull !12, !noundef !12
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !6911
  %i.n = load i64, ptr %i.m, align 8, !dbg !6911, !noalias !6784, !noundef !12
    #dbg_value(i64 0, !6873, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !6910)
    #dbg_value(ptr %i.l, !6873, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !6910)
    #dbg_value(i64 %i.n, !6873, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !6910)
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !6918
  %i.p = load i32, ptr %i.o, align 8, !dbg !6918, !noalias !6784, !noundef !12
    #dbg_value(i32 1, !6873, !DIExpression(DW_OP_LLVM_fragment, 576, 32), !6910)
    #dbg_value(i32 %i.p, !6873, !DIExpression(DW_OP_LLVM_fragment, 608, 32), !6910)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !6919, !noalias !6784
    #dbg_value(ptr undef, !6788, !DIExpression(), !6836)
    #dbg_value(ptr undef, !6877, !DIExpression(), !6884)
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 48, !dbg !6884
  store i64 %2, ptr %i.q, align 8, !dbg !6884, !noalias !6784
  %.sroa.429.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56, !dbg !6884
  store ptr %i.k, ptr %.sroa.429.0..sroa_idx.i, align 8, !dbg !6884, !noalias !6784
  %.sroa.530.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 64, !dbg !6884
  store i64 %i.j, ptr %.sroa.530.0..sroa_idx.i, align 8, !dbg !6884, !noalias !6784
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 80, !dbg !6884
  store ptr %0, ptr %i.r, align 8, !dbg !6884, !noalias !6784
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 88, !dbg !6884
  store ptr %1, ptr %i.s, align 8, !dbg !6884, !noalias !6784
  store i64 0, ptr %i.b, align 8, !dbg !6884, !noalias !6784
  %.sroa.435.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !6884
  store ptr %i.h, ptr %.sroa.435.0..sroa_idx.i, align 8, !dbg !6884, !noalias !6784
  %.sroa.536.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !6884
  store i64 %i.f, ptr %.sroa.536.0..sroa_idx.i, align 8, !dbg !6884, !noalias !6784
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !6884
  store i64 0, ptr %i.t, align 8, !dbg !6884, !noalias !6784
  %.sroa.441.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !6884
  store ptr %i.l, ptr %.sroa.441.0..sroa_idx.i, align 8, !dbg !6884, !noalias !6784
  %.sroa.542.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40, !dbg !6884
  store i64 %i.n, ptr %.sroa.542.0..sroa_idx.i, align 8, !dbg !6884, !noalias !6784
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 72, !dbg !6884
  store i32 1, ptr %i.u, align 8, !dbg !6884, !noalias !6784
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 76, !dbg !6884
  store i32 %i.p, ptr %i.v, align 4, !dbg !6884, !noalias !6784
  call void @_RNvXs0_NtCsixltGIj4kJ4_3log13___private_apiNtB5_12GlobalLoggerNtB7_3Log3log(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.b), !dbg !6920, !noalias !6784
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !6921, !noalias !6784
  ret void, !dbg !6922
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs3f36owOmepS_6quiche16transport_params26UnknownTransportParametersEECsa2e0UnRrdBM_12tokio_quiche(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !6923 {
bb.a:
    #dbg_value(ptr %0, !6965, !DIExpression(), !6968)
  %i.a = load i64, ptr %0, align 8, !dbg !6969, !range !6970, !noundef !12
  %i.b = icmp eq i64 %i.a, -1, !dbg !6969
  br i1 %i.b, label %bb.b, label %bb.c, !dbg !6969

bb.b:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche16transport_params26UnknownTransportParametersECsa2e0UnRrdBM_12tokio_quiche.exit, %bb.a
  ret void, !dbg !6969

bb.c:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !6971, !DIExpression(), !6977)
    #dbg_value(ptr %0, !6979, !DIExpression(), !6987)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtCs3f36owOmepS_6quiche16transport_params25UnknownTransportParameterIBw_hEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsa2e0UnRrdBM_12tokio_quiche(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche16transport_params26UnknownTransportParametersECsa2e0UnRrdBM_12tokio_quiche.exit unwind label %bb.d, !dbg !6989

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %0, !6990, !DIExpression(), !6998)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtCs3f36owOmepS_6quiche16transport_params25UnknownTransportParameterINtNtB7_3vec3VechEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsa2e0UnRrdBM_12tokio_quiche(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecINtNtCs3f36owOmepS_6quiche16transport_params25UnknownTransportParameterINtNtBG_3vec3VechEEEECsa2e0UnRrdBM_12tokio_quiche.exit.i.i unwind label %bb.e, !dbg !7000

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21, !dbg !6989
  unreachable, !dbg !6989

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecINtNtCs3f36owOmepS_6quiche16transport_params25UnknownTransportParameterINtNtBG_3vec3VechEEEECsa2e0UnRrdBM_12tokio_quiche.exit.i.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c, !dbg !6989

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche16transport_params26UnknownTransportParametersECsa2e0UnRrdBM_12tokio_quiche.exit: ; preds = %bb.c
    #dbg_value(ptr %0, !6990, !DIExpression(), !7001)
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtCs3f36owOmepS_6quiche16transport_params25UnknownTransportParameterINtNtB7_3vec3VechEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsa2e0UnRrdBM_12tokio_quiche(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0), !dbg !7003
  br label %bb.b, !dbg !6969
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs3f36owOmepS_6quiche6packet12ConnectionIdEECsa2e0UnRrdBM_12tokio_quiche(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !7004 {
bb.a:
    #dbg_value(ptr %0, !7038, !DIExpression(), !7041)
  %i.a = load i64, ptr %0, align 8, !dbg !7042, !range !7043, !noundef !12
  %switch = icmp ugt i64 %i.a, -3, !dbg !7042
  br i1 %switch, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche6packet12ConnectionIdECsa2e0UnRrdBM_12tokio_quiche.exit, label %bb.b, !dbg !7042

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche6packet12ConnectionIdECsa2e0UnRrdBM_12tokio_quiche.exit: ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsa2e0UnRrdBM_12tokio_quiche.exit.i.i
  ret void, !dbg !7042

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !7044, !DIExpression(), !7050)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsa2e0UnRrdBM_12tokio_quiche(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsa2e0UnRrdBM_12tokio_quiche.exit.i.i unwind label %bb.c, !dbg !7068

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %0, !7069, !DIExpression(), !7077)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsa2e0UnRrdBM_12tokio_quiche(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECsa2e0UnRrdBM_12tokio_quiche.exit.i.i.i unwind label %bb.d, !dbg !7079

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21, !dbg !7068
  unreachable, !dbg !7068

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECsa2e0UnRrdBM_12tokio_quiche.exit.i.i.i: ; preds = %bb.c
  resume { ptr, i32 } %i.b, !dbg !7068

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsa2e0UnRrdBM_12tokio_quiche.exit.i.i: ; preds = %bb.b
    #dbg_value(ptr %0, !7069, !DIExpression(), !7080)
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsa2e0UnRrdBM_12tokio_quiche(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0), !dbg !7082
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche6packet12ConnectionIdECsa2e0UnRrdBM_12tokio_quiche.exit, !dbg !7083
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsa2e0UnRrdBM_12tokio_quiche4quic6router20ConnectionMapCommandEEB13_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !7084 {
bb.a:
    #dbg_value(ptr %0, !7117, !DIExpression(), !7120)
  %i.a = load i64, ptr %0, align 8, !dbg !7121, !range !7122, !noundef !12
  switch i64 %i.a, label %bb.b [
    i64 -3, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsa2e0UnRrdBM_12tokio_quiche4quic6router20ConnectionMapCommandEBH_.exit
    i64 -2, label %bb.e
    i64 -1, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche6packet12ConnectionIdECsa2e0UnRrdBM_12tokio_quiche.exit.i
  ], !dbg !7121

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsa2e0UnRrdBM_12tokio_quiche4quic6router20ConnectionMapCommandEBH_.exit: ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche6packet12ConnectionIdECsa2e0UnRrdBM_12tokio_quiche.exit5.sink.split.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche6packet12ConnectionIdECsa2e0UnRrdBM_12tokio_quiche.exit.i, %bb.e
  ret void, !dbg !7121

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !7044, !DIExpression(), !7123)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsa2e0UnRrdBM_12tokio_quiche(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsa2e0UnRrdBM_12tokio_quiche.exit.i.i.i unwind label %bb.c, !dbg !7134

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %0, !7069, !DIExpression(), !7135)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsa2e0UnRrdBM_12tokio_quiche(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0)
          to label %.body.i unwind label %bb.d, !dbg !7137

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21, !dbg !7134
  unreachable, !dbg !7134

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsa2e0UnRrdBM_12tokio_quiche.exit.i.i.i: ; preds = %bb.b
    #dbg_value(ptr %0, !7069, !DIExpression(), !7138)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsa2e0UnRrdBM_12tokio_quiche(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche6packet12ConnectionIdECsa2e0UnRrdBM_12tokio_quiche.exit.i unwind label %bb.i, !dbg !7140

bb.e:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !7141 ; 4 uses
    #dbg_value(ptr %i.d, !7066, !DIExpression(), !7142)
    #dbg_value(ptr %i.d, !7057, !DIExpression(), !7144)
  %i.e = load i64, ptr %i.d, align 8, !dbg !7146, !range !6970, !alias.scope !7147, !noundef !12
  %.not.i.i2.i = icmp eq i64 %i.e, -1, !dbg !7146
  br i1 %.not.i.i2.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsa2e0UnRrdBM_12tokio_quiche4quic6router20ConnectionMapCommandEBH_.exit, label %bb.f, !dbg !7146

bb.f:                                             ; preds = %bb.e
    #dbg_value(ptr %i.d, !7044, !DIExpression(), !7154)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsa2e0UnRrdBM_12tokio_quiche(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche6packet12ConnectionIdECsa2e0UnRrdBM_12tokio_quiche.exit5.sink.split.i unwind label %bb.g, !dbg !7156

bb.g:                                             ; preds = %bb.f
  %i.f = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.d, !7069, !DIExpression(), !7157)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsa2e0UnRrdBM_12tokio_quiche(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %common.resume.i unwind label %bb.h, !dbg !7159

bb.h:                                             ; preds = %bb.g
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21, !dbg !7156
  unreachable, !dbg !7156
end_hunk_0
