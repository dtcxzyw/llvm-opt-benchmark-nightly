Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quiche-rs/original/tokio_quiche-c91d6529b0ffc3f4.tokio_quiche.74e4f61a4e01e0f4-cgu.13?download=true
inline.NumInlined: 290
inline.NumDeleted: 169
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_RNvMs2_NtNtCs3O5oxBhiT4j_10tokio_util4time11delay_queueINtB5_10DelayQueueNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeE6removeB1f_:bb.a
    #dbg_declare(ptr poison, !18719, !DIExpression(DW_OP_LLVM_fragment, 96, 32), !18775)
    #dbg_value(ptr poison, !18732, !DIExpression(), !18740)
    #dbg_value(ptr poison, !18769, !DIExpression(), !18739)
    #dbg_value(ptr poison, !18763, !DIExpression(), !18738)
    #dbg_value(ptr poison, !18757, !DIExpression(), !18737)
    #dbg_value(ptr poison, !18753, !DIExpression(), !18776)
    #dbg_value(ptr poison, !18751, !DIExpression(), !18777)
    #dbg_value(ptr poison, !18744, !DIExpression(), !18778)
    #dbg_value(ptr %1, !18717, !DIExpression(), !18779)
    #dbg_value(ptr %2, !18718, !DIExpression(), !18779)
    #dbg_declare(ptr %i.c, !18780, !DIExpression(), !18783)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18784), !dbg !18869
    #dbg_value(ptr %1, !6182, !DIExpression(), !18528)
    #dbg_value(ptr poison, !6187, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !18531)
    #dbg_declare(ptr %i.b, !6206, !DIExpression(), !18534)
    #dbg_declare(ptr poison, !6228, !DIExpression(), !18535)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 136, !dbg !18870 ; 3 uses
    #dbg_value(ptr %i.d, !6236, !DIExpression(), !18536)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !18871, !noalias !18784
  call void @_RNvMNtNtCs3O5oxBhiT4j_10tokio_util4time5wheelINtB2_5WheelINtNtB4_11delay_queue5StackNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeEE15next_expirationB1q_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.d), !dbg !18872
  %i.e = load i64, ptr %i.b, align 8, !dbg !18873, !range !6177, !noalias !18784, !noundef !2257
  %i.f = trunc nuw i64 %i.e to i1, !dbg !18874
  br i1 %i.f, label %bb.b, label %bb.c, !dbg !18874

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !18875
  %i.h = load i64, ptr %i.g, align 8, !dbg !18875, !noalias !18784, !noundef !2257 ; 2 uses
    #dbg_value(i64 %i.h, !6202, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18537)
    #dbg_value(i64 1, !6202, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18537)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !18876, !noalias !18784
    #dbg_value(ptr %1, !6203, !DIExpression(), !18537)
    #dbg_value(i64 %i.h, !6204, !DIExpression(), !18538)
    #dbg_value(i64 %i.h, !6193, !DIExpression(), !18531)
    #dbg_value(i64 %i.h, !6240, !DIExpression(), !18540)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 120, !dbg !18877
  %i.j = load i64, ptr %i.i, align 8, !dbg !18877, !alias.scope !18784, !noundef !2257
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 128, !dbg !18877
  %i.l = load i32, ptr %i.k, align 8, !dbg !18877, !range !6245, !alias.scope !18784, !noundef !2257
  %i.m = udiv i64 %i.h, 1000, !dbg !18878
  %i.n = urem i64 %i.h, 1000, !dbg !18879
  %i.o = trunc nuw nsw i64 %i.n to i32, !dbg !18879
  %i.p = mul nuw nsw i32 %i.o, 1000000, !dbg !18880
  %i.q = call { i64, i32 } @_RNvXs1_NtNtCs2sJxpAufolh_5tokio4time7instantNtB5_7InstantINtNtNtCskKLDkoKarTP_4core3ops5arith3AddNtNtB10_4time8DurationE3add(i64 noundef %i.j, i32 noundef %i.l, i64 noundef %i.m, i32 noundef %i.p), !dbg !18877 ; 2 uses
  %i.r = extractvalue { i64, i32 } %i.q, 0, !dbg !18877
  %i.s = extractvalue { i64, i32 } %i.q, 1, !dbg !18877
  br label %_RNvMs2_NtNtCs3O5oxBhiT4j_10tokio_util4time11delay_queueINtB5_10DelayQueueNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeE13next_deadlineB1f_.exit, !dbg !18881

bb.c:                                             ; preds = %bb.a
    #dbg_value(i64 poison, !6202, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18537)
    #dbg_value(i64 poison, !6202, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18537)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !18876, !noalias !18784
    #dbg_value(ptr %1, !6203, !DIExpression(), !18537)
  br label %_RNvMs2_NtNtCs3O5oxBhiT4j_10tokio_util4time11delay_queueINtB5_10DelayQueueNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeE13next_deadlineB1f_.exit, !dbg !18882

_RNvMs2_NtNtCs3O5oxBhiT4j_10tokio_util4time11delay_queueINtB5_10DelayQueueNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeE13next_deadlineB1f_.exit: ; preds = %bb.b, %bb.c
  %.sroa.3.0.i = phi i32 [ %i.s, %bb.b ], [ -1, %bb.c ], !dbg !18883 ; 4 uses
  %.sroa.0.0.i = phi i64 [ %i.r, %bb.b ], [ undef, %bb.c ], !dbg !18883
    #dbg_value(i64 %.sroa.0.0.i, !18719, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18785)
    #dbg_value(i32 %.sroa.3.0.i, !18719, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !18785)
  call void @llvm.experimental.noalias.scope.decl(metadata !18786), !dbg !18884
    #dbg_value(ptr %1, !18787, !DIExpression(), !18545)
    #dbg_value(ptr %2, !18791, !DIExpression(), !18545)
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !18885 ; 3 uses
  %i.u = load i64, ptr %2, align 8, !dbg !18886, !alias.scope !18786, !noalias !18793, !noundef !2257 ; 3 uses
  %i.v = call fastcc noundef nonnull align 8 ptr @_RNvXs0_NtNtCs3O5oxBhiT4j_10tokio_util4time11delay_queueINtB5_11SlabStorageNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeEINtNtNtCskKLDkoKarTP_4core3ops5index5IndexNtB5_3KeyE5indexB1g_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.t, i64 noundef %i.u, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %3), !dbg !18887, !noalias !18786
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 40, !dbg !18885
  %i.x = load i8, ptr %i.w, align 8, !dbg !18885, !range !4969, !noalias !18786, !noundef !2257
  %i.y = trunc nuw i8 %i.x to i1, !dbg !18885
  br i1 %i.y, label %bb.e, label %bb.d, !dbg !18885

bb.d:                                             ; preds = %_RNvMs2_NtNtCs3O5oxBhiT4j_10tokio_util4time11delay_queueINtB5_10DelayQueueNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeE13next_deadlineB1f_.exit
  call void @_RNvMNtNtCs3O5oxBhiT4j_10tokio_util4time5wheelINtB2_5WheelINtNtB4_11delay_queue5StackNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeEE6removeB1q_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %i.t, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %3), !dbg !18888
  br label %_RNvMs2_NtNtCs3O5oxBhiT4j_10tokio_util4time11delay_queueINtB5_10DelayQueueNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeE10remove_keyB1f_.exit, !dbg !18889

bb.e:                                             ; preds = %_RNvMs2_NtNtCs3O5oxBhiT4j_10tokio_util4time11delay_queueINtB5_10DelayQueueNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeE13next_deadlineB1f_.exit
  call void @_RNvXs6_NtNtCs3O5oxBhiT4j_10tokio_util4time11delay_queueINtB5_5StackNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeENtNtNtB7_5wheel5stack5Stack6removeB19_(ptr noalias nofree noundef nonnull align 8 dereferenceable(192) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %i.t, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %3), !dbg !18890
  br label %_RNvMs2_NtNtCs3O5oxBhiT4j_10tokio_util4time11delay_queueINtB5_10DelayQueueNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeE10remove_keyB1f_.exit, !dbg !18889

_RNvMs2_NtNtCs3O5oxBhiT4j_10tokio_util4time11delay_queueINtB5_10DelayQueueNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeE10remove_keyB1f_.exit: ; preds = %bb.d, %bb.e
    #dbg_value(ptr %i.t, !6332, !DIExpression(), !18549)
    #dbg_value(ptr %2, !6336, !DIExpression(), !18549)
    #dbg_value(ptr %2, !6341, !DIExpression(), !18551)
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 112, !dbg !18891
  %i.aa = load i8, ptr %i.z, align 8, !dbg !18891, !range !4969, !alias.scope !18794, !noalias !18795, !noundef !2257
  %i.ab = trunc nuw i8 %i.aa to i1, !dbg !18891
  br i1 %i.ab, label %bb.f, label %bb.g, !dbg !18891

bb.f:                                             ; preds = %_RNvMs2_NtNtCs3O5oxBhiT4j_10tokio_util4time11delay_queueINtB5_10DelayQueueNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeE10remove_keyB1f_.exit
    #dbg_value(ptr %i.t, !6356, !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value), !18556)
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 56, !dbg !18892
  %i.ad = call { i64, i64 } @_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapNtNtNtCs3O5oxBhiT4j_10tokio_util4time11delay_queue3KeyNtBQ_11KeyInternalNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE6removeBO_ECsa2e0UnRrdBM_12tokio_quiche(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.ac, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2), !dbg !18893, !noalias !18796 ; 2 uses
  %i.ae = extractvalue { i64, i64 } %i.ad, 0, !dbg !18893
  %i.af = trunc nuw i64 %i.ae to i1, !dbg !18894
  br i1 %i.af, label %bb.j, label %bb.k, !dbg !18894, !prof !6359

bb.g:                                             ; preds = %_RNvMs2_NtNtCs3O5oxBhiT4j_10tokio_util4time11delay_queueINtB5_10DelayQueueNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeE10remove_keyB1f_.exit, %bb.j
  %.sroa.02.0.i = phi i64 [ %i.an, %bb.j ], [ %i.u, %_RNvMs2_NtNtCs3O5oxBhiT4j_10tokio_util4time11delay_queueINtB5_10DelayQueueNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeE10remove_keyB1f_.exit ], !dbg !18895 ; 3 uses
    #dbg_value(i64 %.sroa.02.0.i, !6337, !DIExpression(), !18557)
  call void @llvm.experimental.noalias.scope.decl(metadata !18797), !dbg !18896
    #dbg_declare(ptr poison, !6361, !DIExpression(DW_OP_LLVM_fragment, 64, 320), !18562)
    #dbg_value(ptr %i.t, !6380, !DIExpression(), !18563)
    #dbg_value(i64 %.sroa.02.0.i, !6381, !DIExpression(), !18563)
    #dbg_value(ptr @10, !6372, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18564)
    #dbg_value(i64 11, !6372, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18564)
  call void @llvm.experimental.noalias.scope.decl(metadata !18798), !dbg !18897
    #dbg_declare(ptr poison, !6383, !DIExpression(DW_OP_LLVM_fragment, 64, 320), !18568)
    #dbg_value(ptr %i.t, !6387, !DIExpression(), !18569)
    #dbg_value(i64 %.sroa.02.0.i, !6388, !DIExpression(), !18569)
    #dbg_value(i64 %.sroa.02.0.i, !6394, !DIExpression(), !18571)
    #dbg_value(i64 %.sroa.02.0.i, !6417, !DIExpression(), !18573)
    #dbg_value(ptr %i.t, !6425, !DIExpression(), !18575)
    #dbg_value(ptr %i.t, !6430, !DIExpression(), !18577)
    #dbg_value(ptr %i.t, !6433, !DIExpression(), !18579)
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !18898
  %i.ah = load i64, ptr %i.ag, align 8, !dbg !18898, !alias.scope !18799, !noalias !18800, !noundef !2257
    #dbg_value(ptr poison, !6412, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18571)
    #dbg_value(ptr poison, !6422, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18573)
    #dbg_value(i64 %i.ah, !6412, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18571)
    #dbg_value(i64 %i.ah, !6422, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18573)
  %i.ai = icmp ult i64 %.sroa.02.0.i, %i.ah, !dbg !18899
  br i1 %i.ai, label %bb.h, label %bb.i, !dbg !18899

bb.h:                                             ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !18900
  %i.ak = load ptr, ptr %i.aj, align 8, !dbg !18900, !alias.scope !18799, !noalias !18800, !nonnull !2257, !noundef !2257
    #dbg_value(ptr %i.ak, !6412, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18571)
    #dbg_value(ptr %i.ak, !6422, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18573)
  %i.al = getelementptr inbounds nuw [48 x i8], ptr %i.ak, i64 %.sroa.02.0.i, !dbg !18901 ; 4 uses
    #dbg_value(ptr %i.al, !6390, !DIExpression(), !18585)
    #dbg_value(ptr %i.al, !6455, !DIExpression(), !18587)
  %i.am = load i64, ptr %i.al, align 8, !dbg !18902, !range !6460, !noalias !18801, !noundef !2257
  %.not.i.i.i = icmp eq i64 %i.am, 2, !dbg !18902
  br i1 %.not.i.i.i, label %bb.i, label %_RNvMNtNtCs3O5oxBhiT4j_10tokio_util4time11delay_queueINtB2_11SlabStorageNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeE6removeB1d_.exit, !dbg !18903

bb.i:                                             ; preds = %bb.h, %bb.g
    #dbg_value(i64 2, !6361, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18564)
  call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 11, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #25, !dbg !18904, !noalias !18802
  unreachable, !dbg !18904

bb.j:                                             ; preds = %bb.f
  %i.an = extractvalue { i64, i64 } %i.ad, 1, !dbg !18893
    #dbg_value(i64 %i.an, !6337, !DIExpression(), !18557)
  br label %bb.g, !dbg !18905

bb.k:                                             ; preds = %bb.f
  call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @10, ptr noundef nonnull inttoptr (i64 23 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #25, !dbg !18906, !noalias !18796
  unreachable, !dbg !18906

_RNvMNtNtCs3O5oxBhiT4j_10tokio_util4time11delay_queueINtB2_11SlabStorageNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeE6removeB1d_.exit: ; preds = %bb.h
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 48, !dbg !18907 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !dbg !18907, !alias.scope !18799, !noalias !18800, !noundef !2257
    #dbg_value(i64 %i.ap, !6458, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18587)
    #dbg_value(i64 2, !6458, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18587)
  %.sroa.5.0..sroa.0.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.al, i64 8, !dbg !18908
  %.sroa.4.8..sroa.5.0..sroa.0.0..sroa_idx.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 32, !dbg !18908
  %.sroa.4.8.copyload = load i64, ptr %.sroa.4.8..sroa.5.0..sroa.0.0..sroa_idx.i.i.i.sroa_idx, align 8, !dbg !18908, !noalias !18797 ; 2 uses
    #dbg_value(i64 %.sroa.4.8.copyload, !18720, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !18803)
    #dbg_value(i64 poison, !18720, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !18803)
  store i64 2, ptr %i.al, align 8, !dbg !18909, !noalias !18801
  store i64 %i.ap, ptr %.sroa.5.0..sroa.0.0..sroa_idx.i.i.i, align 8, !dbg !18909, !noalias !18801
    #dbg_value(i64 %i.am, !6383, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18588)
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !18910 ; 3 uses
  %i.ar = load i64, ptr %i.aq, align 8, !dbg !18910, !alias.scope !18799, !noalias !18800, !noundef !2257
  %i.as = add i64 %i.ar, -1, !dbg !18910
  store i64 %i.as, ptr %i.aq, align 8, !dbg !18910, !alias.scope !18799, !noalias !18800
  store i64 %.sroa.02.0.i, ptr %i.ao, align 8, !dbg !18911, !alias.scope !18799, !noalias !18800
    #dbg_value(i64 %i.am, !6361, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18564)
    #dbg_value(i64 %i.am, !18720, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18803)
  call void @llvm.experimental.noalias.scope.decl(metadata !18804), !dbg !18912
    #dbg_value(ptr %1, !6182, !DIExpression(), !18592)
    #dbg_value(ptr poison, !6187, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !18595)
    #dbg_declare(ptr %i.a, !6206, !DIExpression(), !18598)
    #dbg_declare(ptr poison, !6228, !DIExpression(), !18599)
    #dbg_value(ptr %i.d, !6236, !DIExpression(), !18600)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !18913, !noalias !18804
  call void @_RNvMNtNtCs3O5oxBhiT4j_10tokio_util4time5wheelINtB2_5WheelINtNtB4_11delay_queue5StackNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeEE15next_expirationB1q_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.d), !dbg !18914
  %i.at = load i64, ptr %i.a, align 8, !dbg !18915, !range !6177, !noalias !18804, !noundef !2257
  %i.au = trunc nuw i64 %i.at to i1, !dbg !18916
  br i1 %i.au, label %_RNvMs2_NtNtCs3O5oxBhiT4j_10tokio_util4time11delay_queueINtB5_10DelayQueueNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeE13next_deadlineB1f_.exit43, label %_RNvMs2_NtNtCs3O5oxBhiT4j_10tokio_util4time11delay_queueINtB5_10DelayQueueNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeE13next_deadlineB1f_.exit43.thread, !dbg !18916

_RNvMs2_NtNtCs3O5oxBhiT4j_10tokio_util4time11delay_queueINtB5_10DelayQueueNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeE13next_deadlineB1f_.exit43: ; preds = %_RNvMNtNtCs3O5oxBhiT4j_10tokio_util4time11delay_queueINtB2_11SlabStorageNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeE6removeB1d_.exit
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !18917
  %i.aw = load i64, ptr %i.av, align 8, !dbg !18917, !noalias !18804, !noundef !2257 ; 2 uses
    #dbg_value(i64 %i.aw, !6202, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18601)
    #dbg_value(i64 1, !6202, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18601)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !18918, !noalias !18804
    #dbg_value(ptr %1, !6203, !DIExpression(), !18601)
    #dbg_value(i64 %i.aw, !6204, !DIExpression(), !18602)
    #dbg_value(i64 %i.aw, !6193, !DIExpression(), !18595)
    #dbg_value(i64 %i.aw, !6240, !DIExpression(), !18604)
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 120, !dbg !18919
  %i.ay = load i64, ptr %i.ax, align 8, !dbg !18919, !alias.scope !18804, !noundef !2257
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 128, !dbg !18919
  %i.ba = load i32, ptr %i.az, align 8, !dbg !18919, !range !6245, !alias.scope !18804, !noundef !2257
  %i.bb = udiv i64 %i.aw, 1000, !dbg !18920
  %i.bc = urem i64 %i.aw, 1000, !dbg !18921
  %i.bd = trunc nuw nsw i64 %i.bc to i32, !dbg !18921
  %i.be = mul nuw nsw i32 %i.bd, 1000000, !dbg !18922
  %i.bf = call { i64, i32 } @_RNvXs1_NtNtCs2sJxpAufolh_5tokio4time7instantNtB5_7InstantINtNtNtCskKLDkoKarTP_4core3ops5arith3AddNtNtB10_4time8DurationE3add(i64 noundef %i.ay, i32 noundef %i.ba, i64 noundef %i.bb, i32 noundef %i.be), !dbg !18919 ; 2 uses
  %i.bg = extractvalue { i64, i32 } %i.bf, 0, !dbg !18919 ; 3 uses
  %i.bh = extractvalue { i64, i32 } %i.bf, 1, !dbg !18919 ; 6 uses
    #dbg_value(i64 %i.bg, !18721, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18805)
    #dbg_value(i32 %i.bh, !18721, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !18805)
    #dbg_value(ptr undef, !18744, !DIExpression(), !18778)
    #dbg_value(ptr undef, !18751, !DIExpression(), !18777)
    #dbg_value(ptr undef, !18745, !DIExpression(), !18774)
    #dbg_value(ptr undef, !18752, !DIExpression(), !18773)
  %.not = icmp eq i32 %.sroa.3.0.i, -1, !dbg !18923
  br i1 %.not, label %bb.m, label %bb.l, !dbg !18924

_RNvMs2_NtNtCs3O5oxBhiT4j_10tokio_util4time11delay_queueINtB5_10DelayQueueNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeE13next_deadlineB1f_.exit43.thread: ; preds = %_RNvMNtNtCs3O5oxBhiT4j_10tokio_util4time11delay_queueINtB2_11SlabStorageNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeE6removeB1d_.exit
    #dbg_value(i64 poison, !6202, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18601)
    #dbg_value(i64 poison, !6202, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18601)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !18918, !noalias !18804
    #dbg_value(ptr %1, !6203, !DIExpression(), !18601)
    #dbg_value(i64 undef, !18721, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18805)
    #dbg_value(i32 -1, !18721, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !18805)
    #dbg_value(ptr undef, !18744, !DIExpression(), !18778)
    #dbg_value(ptr undef, !18751, !DIExpression(), !18777)
    #dbg_value(ptr undef, !18745, !DIExpression(), !18774)
    #dbg_value(ptr undef, !18752, !DIExpression(), !18773)
  %.not52 = icmp eq i32 %.sroa.3.0.i, -1, !dbg !18923
  br i1 %.not52, label %.thread, label %.thread72, !dbg !18924

.thread72:                                        ; preds = %_RNvMs2_NtNtCs3O5oxBhiT4j_10tokio_util4time11delay_queueINtB5_10DelayQueueNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeE13next_deadlineB1f_.exit43.thread
    #dbg_value(ptr undef, !18753, !DIExpression(), !18776)
    #dbg_value(ptr undef, !18757, !DIExpression(), !18737)
    #dbg_value(ptr undef, !18754, !DIExpression(), !18772)
    #dbg_value(ptr undef, !18758, !DIExpression(), !18737)
    #dbg_value(ptr undef, !18763, !DIExpression(), !18738)
    #dbg_value(ptr undef, !18764, !DIExpression(), !18738)
    #dbg_value(ptr undef, !18769, !DIExpression(), !18739)
    #dbg_value(ptr undef, !18770, !DIExpression(), !18739)
    #dbg_value(ptr undef, !18732, !DIExpression(), !18740)
    #dbg_value(ptr undef, !18728, !DIExpression(), !18740)
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 160, !dbg !18925
  br label %bb.p, !dbg !18926

bb.l:                                             ; preds = %_RNvMs2_NtNtCs3O5oxBhiT4j_10tokio_util4time11delay_queueINtB5_10DelayQueueNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeE13next_deadlineB1f_.exit43
  %.not35 = icmp ne i32 %i.bh, -1, !dbg !18923    ; 2 uses
    #dbg_value(ptr undef, !18753, !DIExpression(), !18776)
    #dbg_value(ptr undef, !18757, !DIExpression(), !18737)
    #dbg_value(ptr undef, !18754, !DIExpression(), !18772)
    #dbg_value(ptr undef, !18758, !DIExpression(), !18737)
    #dbg_value(ptr undef, !18763, !DIExpression(), !18738)
    #dbg_value(ptr undef, !18764, !DIExpression(), !18738)
    #dbg_value(ptr undef, !18769, !DIExpression(), !18739)
    #dbg_value(ptr undef, !18770, !DIExpression(), !18739)
    #dbg_value(ptr undef, !18732, !DIExpression(), !18740)
    #dbg_value(ptr undef, !18728, !DIExpression(), !18740)
  %i.bj = icmp eq i64 %.sroa.0.0.i, %i.bg
  %or.cond = select i1 %.not35, i1 %i.bj, i1 false, !dbg !18924
  br i1 %or.cond, label %.split, label %bb.n, !dbg !18924

bb.m:                                             ; preds = %_RNvMs2_NtNtCs3O5oxBhiT4j_10tokio_util4time11delay_queueINtB5_10DelayQueueNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeE13next_deadlineB1f_.exit43
  %i.bk = icmp eq i32 %i.bh, -1, !dbg !18923
  br i1 %i.bk, label %.thread, label %.thread61, !dbg !18734

.split:                                           ; preds = %bb.l
    #dbg_value(ptr undef, !18807, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !18813)
    #dbg_value(ptr undef, !18811, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !18814)
  %i.bl = icmp ult i32 %.sroa.3.0.i, 1000000000, !dbg !18927
  call void @llvm.assume(i1 %i.bl), !dbg !18927
  %i.bm = icmp ult i32 %i.bh, 1000000000, !dbg !18928
  call void @llvm.assume(i1 %i.bm), !dbg !18928
  %i.bn = icmp eq i32 %.sroa.3.0.i, %i.bh, !dbg !18929
  br i1 %i.bn, label %.thread, label %.thread61, !dbg !18734

.thread61:                                        ; preds = %.split, %bb.m
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 160, !dbg !18925
  br label %bb.o, !dbg !18926

bb.n:                                             ; preds = %bb.l
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 160, !dbg !18925 ; 2 uses
  br i1 %.not35, label %bb.o, label %bb.p, !dbg !18926

.thread:                                          ; preds = %_RNvMs2_NtNtCs3O5oxBhiT4j_10tokio_util4time11delay_queueINtB5_10DelayQueueNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeE13next_deadlineB1f_.exit43.thread, %.split, %bb.v, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCs2sJxpAufolh_5tokio4time5sleep5SleepEEEECsa2e0UnRrdBM_12tokio_quiche.exit49, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCs2sJxpAufolh_5tokio4time5sleep5SleepEEEECsa2e0UnRrdBM_12tokio_quiche.exit, %bb.m
    #dbg_value(ptr %1, !18817, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !18823)
    #dbg_value(ptr %1, !18824, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !18830)
  %i.bq = load i64, ptr %i.aq, align 8, !dbg !18930, !noundef !2257
  %i.br = icmp eq i64 %i.bq, 0, !dbg !18930
  br i1 %i.br, label %bb.ag, label %bb.af, !dbg !18931

bb.o:                                             ; preds = %.thread61, %bb.n
  %i.bs = phi ptr [ %i.bo, %.thread61 ], [ %i.bp, %bb.n ] ; 5 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !dbg !18932, !align !4555, !noundef !2257 ; 2 uses
  %.not37 = icmp eq ptr %i.bt, null, !dbg !18932
  br i1 %.not37, label %bb.w, label %bb.v, !dbg !18926

bb.p:                                             ; preds = %.thread72, %bb.n
  %i.bu = phi ptr [ %i.bi, %.thread72 ], [ %i.bp, %bb.n ] ; 4 uses
  %.val40 = load ptr, ptr %i.bu, align 8, !dbg !18933, !align !4555, !noundef !2257 ; 7 uses
    #dbg_value(ptr poison, !4413, !DIExpression(), !18610)
  %i.bv = icmp eq ptr %.val40, null, !dbg !18934
  br i1 %i.bv, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCs2sJxpAufolh_5tokio4time5sleep5SleepEEEECsa2e0UnRrdBM_12tokio_quiche.exit, label %bb.q, !dbg !18934

bb.q:                                             ; preds = %bb.p
    #dbg_value(ptr poison, !4418, !DIExpression(), !18612)
    #dbg_value(ptr poison, !4423, !DIExpression(), !18614)
    #dbg_value(ptr %.val40, !4430, !DIExpression(), !18616)
  %i.bw = getelementptr inbounds nuw i8, ptr %.val40, i64 72, !dbg !18935 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !18831), !dbg !18935
    #dbg_value(ptr %i.bw, !4437, !DIExpression(), !18620)
  call void @llvm.experimental.noalias.scope.decl(metadata !18832), !dbg !18936
    #dbg_value(ptr %i.bw, !4444, !DIExpression(), !18624)
  call void @llvm.experimental.noalias.scope.decl(metadata !18833), !dbg !18937
    #dbg_value(ptr %i.bw, !4448, !DIExpression(), !18628)
    #dbg_value(ptr %i.bw, !4450, !DIExpression(), !18630)
    #dbg_value(i64 1, !4457, !DIExpression(), !18632)
    #dbg_value(i8 1, !4459, !DIExpression(), !18632)
    #dbg_value(i64 1, !4461, !DIExpression(), !18634)
    #dbg_value(i8 1, !4463, !DIExpression(), !18634)
  %i.bx = load ptr, ptr %i.bw, align 8, !dbg !18938, !alias.scope !18834, !nonnull !2257, !noundef !2257
    #dbg_value(ptr %i.bx, !4458, !DIExpression(), !18636)
    #dbg_value(ptr %i.bx, !4462, !DIExpression(), !18634)
  %i.by = atomicrmw sub ptr %i.bx, i64 1 release, align 8, !dbg !18939, !noalias !18834
  %i.bz = icmp eq i64 %i.by, 1, !dbg !18940
  br i1 %i.bz, label %bb.r, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2sJxpAufolh_5tokio7runtime9scheduler6HandleECsa2e0UnRrdBM_12tokio_quiche.exit.i.i.i.i, !dbg !18940

bb.r:                                             ; preds = %bb.q
    #dbg_value(i8 2, !3254, !DIExpression(), !18638)
  fence acquire, !dbg !18941
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCs2sJxpAufolh_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bw) #23
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2sJxpAufolh_5tokio7runtime9scheduler6HandleECsa2e0UnRrdBM_12tokio_quiche.exit.i.i.i.i unwind label %bb.s, !dbg !18942

bb.s:                                             ; preds = %bb.r
  %i.ca = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2sJxpAufolh_5tokio7runtime5TimerEECsa2e0UnRrdBM_12tokio_quiche(ptr noundef nonnull align 8 %.val40) #24
          to label %.body unwind label %bb.t, !dbg !18935

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2sJxpAufolh_5tokio7runtime9scheduler6HandleECsa2e0UnRrdBM_12tokio_quiche.exit.i.i.i.i: ; preds = %bb.r, %bb.q
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2sJxpAufolh_5tokio7runtime5TimerEECsa2e0UnRrdBM_12tokio_quiche(ptr noundef nonnull align 8 %.val40)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCs2sJxpAufolh_5tokio4time5sleep5SleepEEECsa2e0UnRrdBM_12tokio_quiche.exit.i unwind label %bb.u, !dbg !18935

bb.t:                                             ; preds = %bb.s
  %i.cb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22, !dbg !18935
  unreachable, !dbg !18935

bb.u:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2sJxpAufolh_5tokio7runtime9scheduler6HandleECsa2e0UnRrdBM_12tokio_quiche.exit.i.i.i.i
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %.body, !dbg !18943

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCs2sJxpAufolh_5tokio4time5sleep5SleepEEECsa2e0UnRrdBM_12tokio_quiche.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2sJxpAufolh_5tokio7runtime9scheduler6HandleECsa2e0UnRrdBM_12tokio_quiche.exit.i.i.i.i
    #dbg_value(ptr poison, !4470, !DIExpression(), !18640)
    #dbg_value(ptr %.val40, !4473, !DIExpression(), !18641)
    #dbg_value(i64 8, !4474, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18642)
    #dbg_value(i64 96, !4474, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18642)
    #dbg_value(ptr poison, !4494, !DIExpression(), !18644)
    #dbg_value(ptr poison, !4501, !DIExpression(), !18646)
    #dbg_value(ptr %.val40, !4498, !DIExpression(), !18644)
    #dbg_value(ptr %.val40, !4504, !DIExpression(), !18646)
    #dbg_value(ptr %.val40, !4507, !DIExpression(), !18648)
    #dbg_value(ptr %.val40, !4513, !DIExpression(), !18650)
    #dbg_value(i64 8, !4499, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18644)
    #dbg_value(i64 8, !4505, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18646)
    #dbg_value(i64 8, !4511, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18648)
    #dbg_value(i64 8, !4514, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18650)
    #dbg_value(i64 96, !4499, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18644)
    #dbg_value(i64 96, !4505, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18646)
    #dbg_value(i64 96, !4511, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18648)
    #dbg_value(i64 96, !4514, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18650)
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val40, i64 noundef 96, i64 noundef 8) #14, !dbg !18944
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCs2sJxpAufolh_5tokio4time5sleep5SleepEEEECsa2e0UnRrdBM_12tokio_quiche.exit, !dbg !18934

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCs2sJxpAufolh_5tokio4time5sleep5SleepEEEECsa2e0UnRrdBM_12tokio_quiche.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCs2sJxpAufolh_5tokio4time5sleep5SleepEEECsa2e0UnRrdBM_12tokio_quiche.exit.i, %bb.p
  store ptr null, ptr %i.bu, align 8, !dbg !18933
  br label %.thread, !dbg !18945

bb.v:                                             ; preds = %bb.o
    #dbg_value(i64 %i.bg, !18722, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18835)
    #dbg_value(i32 %i.bh, !18722, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !18835)
    #dbg_value(ptr poison, !18723, !DIExpression(), !18836)
  call void @_RNvMNtNtCs2sJxpAufolh_5tokio4time5sleepNtB2_5Sleep5reset(ptr noundef nonnull align 8 %i.bt, i64 noundef %i.bg, i32 noundef %i.bh), !dbg !18946
  br label %.thread, !dbg !18947

bb.w:                                             ; preds = %bb.o
    #dbg_value(i64 %i.bg, !18724, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18837)
    #dbg_value(i32 %i.bh, !18724, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !18837)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !18948
  call void @_RNvNtNtCs2sJxpAufolh_5tokio4time5sleep11sleep_until(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.c, i64 noundef %i.bg, i32 noundef %i.bh, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %3), !dbg !18948
    #dbg_declare(ptr %i.c, !6265, !DIExpression(), !18652)
    #dbg_value(i64 8, !6271, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18654)
    #dbg_value(i64 8, !6282, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18656)
    #dbg_value(i64 8, !6299, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18658)
    #dbg_value(i64 96, !6271, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18654)
    #dbg_value(i64 96, !6282, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18656)
    #dbg_value(i64 96, !6299, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18658)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !6297, !DIExpression(), !18656)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !6303, !DIExpression(), !18658)
    #dbg_value(i8 0, !6304, !DIExpression(), !18658)
    #dbg_value(i64 8, !6306, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18660)
    #dbg_value(i64 8, !6328, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18662)
    #dbg_value(i64 96, !6306, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18660)
    #dbg_value(i64 96, !6328, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18662)
    #dbg_value(i1 false, !6310, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !18660)
    #dbg_value(i64 96, !6311, !DIExpression(), !18663)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #14, !dbg !18949, !noalias !18838
  %i.cd = call noundef align 8 dereferenceable_or_null(96) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 96, 113) 96, i64 noundef 8) #14, !dbg !18950, !noalias !18838 ; 5 uses
  %i.ce = icmp eq ptr %i.cd, null, !dbg !18951
  br i1 %i.ce, label %bb.x, label %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNtNtNtCs2sJxpAufolh_5tokio4time5sleep5SleepE3newCsa2e0UnRrdBM_12tokio_quiche.exit, !dbg !18952, !prof !6012

bb.x:                                             ; preds = %bb.w
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 96) #26
          to label %.noexc unwind label %bb.y, !dbg !18953

.noexc:                                           ; preds = %bb.x
  unreachable, !dbg !18953

bb.y:                                             ; preds = %bb.x
  %i.cf = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2sJxpAufolh_5tokio4time5sleep5SleepECsa2e0UnRrdBM_12tokio_quiche(ptr noundef nonnull align 8 dereferenceable(96) %i.c) #24
          to label %common.resume unwind label %bb.z, !dbg !18954

bb.z:                                             ; preds = %bb.y
  %i.cg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22, !dbg !18955
  unreachable, !dbg !18955

common.resume:                                    ; preds = %bb.y, %.body
  %common.resume.op = phi { ptr, i32 } [ %.pn, %.body ], [ %i.cf, %bb.y ]
  resume { ptr, i32 } %common.resume.op, !dbg !18779

_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNtNtNtCs2sJxpAufolh_5tokio4time5sleep5SleepE3newCsa2e0UnRrdBM_12tokio_quiche.exit: ; preds = %bb.w
    #dbg_value(ptr %i.cd, !6269, !DIExpression(), !18666)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.cd, ptr noundef nonnull align 8 dereferenceable(96) %i.c, i64 96, i1 false), !dbg !18956
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !18957
  %.val = load ptr, ptr %i.bs, align 8, !dbg !18958, !align !4555, !noundef !2257 ; 7 uses
    #dbg_value(ptr poison, !4413, !DIExpression(), !18668)
  %i.ch = icmp eq ptr %.val, null, !dbg !18959
  br i1 %i.ch, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCs2sJxpAufolh_5tokio4time5sleep5SleepEEEECsa2e0UnRrdBM_12tokio_quiche.exit49, label %bb.aa, !dbg !18959

bb.aa:                                            ; preds = %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNtNtNtCs2sJxpAufolh_5tokio4time5sleep5SleepE3newCsa2e0UnRrdBM_12tokio_quiche.exit
    #dbg_value(ptr poison, !4418, !DIExpression(), !18670)
    #dbg_value(ptr poison, !4423, !DIExpression(), !18672)
    #dbg_value(ptr %.val, !4430, !DIExpression(), !18674)
  %i.ci = getelementptr inbounds nuw i8, ptr %.val, i64 72, !dbg !18960 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !18839), !dbg !18960
    #dbg_value(ptr %i.ci, !4437, !DIExpression(), !18678)
  call void @llvm.experimental.noalias.scope.decl(metadata !18840), !dbg !18961
    #dbg_value(ptr %i.ci, !4444, !DIExpression(), !18682)
  call void @llvm.experimental.noalias.scope.decl(metadata !18841), !dbg !18962
    #dbg_value(ptr %i.ci, !4448, !DIExpression(), !18686)
    #dbg_value(ptr %i.ci, !4450, !DIExpression(), !18688)
    #dbg_value(i64 1, !4457, !DIExpression(), !18690)
    #dbg_value(i8 1, !4459, !DIExpression(), !18690)
    #dbg_value(i64 1, !4461, !DIExpression(), !18692)
    #dbg_value(i8 1, !4463, !DIExpression(), !18692)
  %i.cj = load ptr, ptr %i.ci, align 8, !dbg !18963, !alias.scope !18842, !nonnull !2257, !noundef !2257
    #dbg_value(ptr %i.cj, !4458, !DIExpression(), !18694)
    #dbg_value(ptr %i.cj, !4462, !DIExpression(), !18692)
  %i.ck = atomicrmw sub ptr %i.cj, i64 1 release, align 8, !dbg !18964, !noalias !18842
  %i.cl = icmp eq i64 %i.ck, 1, !dbg !18965
  br i1 %i.cl, label %bb.ab, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2sJxpAufolh_5tokio7runtime9scheduler6HandleECsa2e0UnRrdBM_12tokio_quiche.exit.i.i.i.i44, !dbg !18965

bb.ab:                                            ; preds = %bb.aa
    #dbg_value(i8 2, !3254, !DIExpression(), !18696)
  fence acquire, !dbg !18966
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCs2sJxpAufolh_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ci) #23
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2sJxpAufolh_5tokio7runtime9scheduler6HandleECsa2e0UnRrdBM_12tokio_quiche.exit.i.i.i.i44 unwind label %bb.ac, !dbg !18967

bb.ac:                                            ; preds = %bb.ab
  %i.cm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2sJxpAufolh_5tokio7runtime5TimerEECsa2e0UnRrdBM_12tokio_quiche(ptr noundef nonnull align 8 %.val) #24
          to label %.body unwind label %bb.ad, !dbg !18960

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2sJxpAufolh_5tokio7runtime9scheduler6HandleECsa2e0UnRrdBM_12tokio_quiche.exit.i.i.i.i44: ; preds = %bb.ab, %bb.aa
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2sJxpAufolh_5tokio7runtime5TimerEECsa2e0UnRrdBM_12tokio_quiche(ptr noundef nonnull align 8 %.val)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCs2sJxpAufolh_5tokio4time5sleep5SleepEEECsa2e0UnRrdBM_12tokio_quiche.exit.i46 unwind label %bb.ae, !dbg !18960

bb.ad:                                            ; preds = %bb.ac
  %i.cn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22, !dbg !18960
  unreachable, !dbg !18960

bb.ae:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2sJxpAufolh_5tokio7runtime9scheduler6HandleECsa2e0UnRrdBM_12tokio_quiche.exit.i.i.i.i44
  %i.co = landingpad { ptr, i32 }
          cleanup
  br label %.body, !dbg !18968

end_hunk_0
begin_hunk_1_@llvm.umax.i64
!18730 = !{!2471, !6527, !6527}
!18731 = !DISubroutineType(types: !18730)
!18732 = !DILocalVariable(name: "self", arg: 1, scope: !18517, file: !6526, line: 25, type: !6527)
!18733 = !{!18732, !18728}
!18734 = !DILocation(line: 764, column: 12, scope: !18513)
!18735 = !DILocation(line: 276, column: 15, scope: !18518, inlinedAt: !18734)
!18736 = !DILocation(line: 2445, column: 35, scope: !18520, inlinedAt: !18735)
!18737 = !DILocation(line: 33, column: 27, scope: !18521, inlinedAt: !18736)
!18738 = !DILocation(line: 153, column: 23, scope: !18522, inlinedAt: !18737)
!18739 = !DILocation(line: 49, column: 23, scope: !18523, inlinedAt: !18738)
!18740 = !DILocation(line: 25, column: 23, scope: !18517, inlinedAt: !18739)
!18741 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&core::option::Option<tokio::time::instant::Instant>", baseType: !1095, size: 64, align: 64, dwarfAddressSpace: 0)
!18742 = !{!2471, !18741, !18741}
!18743 = !DISubroutineType(types: !18742)
!18744 = !DILocalVariable(name: "self", arg: 1, scope: !18518, file: !6010, line: 275, type: !18741)
!18745 = !DILocalVariable(name: "other", arg: 2, scope: !18518, file: !6010, line: 275, type: !18741)
!18746 = !{!18744, !18745}
!18747 = !DITemplateTypeParameter(name: "Self", type: !1095)
!18748 = !DITemplateTypeParameter(name: "Rhs", type: !1095)
!18749 = !{!18747, !18748}
!18750 = !DINamespace(name: "{impl#17}", scope: !2310)
!18751 = !DILocalVariable(name: "self", arg: 1, scope: !18519, file: !2309, line: 2441, type: !18741)
!18752 = !DILocalVariable(name: "other", arg: 2, scope: !18519, file: !2309, line: 2441, type: !18741)
!18753 = !DILocalVariable(name: "l", scope: !18520, file: !2309, line: 2445, type: !6331, align: 64)
!18754 = !DILocalVariable(name: "r", scope: !18520, file: !2309, line: 2445, type: !6331, align: 64)
!18755 = !{!18751, !18752, !18753, !18754}
!18756 = !DINamespace(name: "{impl#14}", scope: !4405)
!18757 = !DILocalVariable(name: "self", arg: 1, scope: !18521, file: !6520, line: 33, type: !6331)
!18758 = !DILocalVariable(name: "other", arg: 2, scope: !18521, file: !6520, line: 33, type: !6331)
!18759 = !{!18757, !18758}
!18760 = !DINamespace(name: "{impl#22}", scope: !4254)
!18761 = !{!2471, !6523, !6523}
!18762 = !DISubroutineType(types: !18761)
!18763 = !DILocalVariable(name: "self", arg: 1, scope: !18522, file: !6522, line: 153, type: !6523)
!18764 = !DILocalVariable(name: "other", arg: 2, scope: !18522, file: !6522, line: 153, type: !6523)
!18765 = !{!18763, !18764}
!18766 = !DINamespace(name: "{impl#18}", scope: !4258)
!18767 = !{!2471, !6525, !6525}
!18768 = !DISubroutineType(types: !18767)
!18769 = !DILocalVariable(name: "self", arg: 1, scope: !18523, file: !6524, line: 49, type: !6525)
!18770 = !DILocalVariable(name: "other", arg: 2, scope: !18523, file: !6524, line: 49, type: !6525)
!18771 = !{!18769, !18770}
!18772 = !DILocation(line: 2445, column: 28, scope: !18520, inlinedAt: !18735)
!18773 = !DILocation(line: 2441, column: 18, scope: !18519, inlinedAt: !18735)
!18774 = !DILocation(line: 275, column: 18, scope: !18518, inlinedAt: !18734)
!18775 = !DILocation(line: 758, column: 13, scope: !18515)
!18776 = !DILocation(line: 2445, column: 19, scope: !18520, inlinedAt: !18735)
!18777 = !DILocation(line: 2441, column: 11, scope: !18519, inlinedAt: !18735)
!18778 = !DILocation(line: 275, column: 11, scope: !18518, inlinedAt: !18734)
!18779 = !DILocation(line: 0, scope: !18516)
!18780 = !DILocalVariable(name: "x", arg: 1, scope: !18524, file: !4469, line: 360, type: !613)
!18781 = !{!18780}
!18782 = !DILocation(line: 768, column: 61, scope: !18511)
!18783 = !DILocation(line: 360, column: 16, scope: !18524, inlinedAt: !18782)
!18784 = !{!18526}
!18785 = !DILocation(line: 0, scope: !18515)
!18786 = !{!18542}
!18787 = !DILocalVariable(name: "self", arg: 1, scope: !18543, file: !6093, line: 717, type: !6125)
!18788 = !{null, !6125, !2306, !2415}
!18789 = !DISubroutineType(types: !18788)
!18790 = !DISubprogram(name: "remove_key<tokio_quiche::http3::settings::Http3TimeoutType>", linkageName: "_RNvMs2_NtNtCs3O5oxBhiT4j_10tokio_util4time11delay_queueINtB5_10DelayQueueNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeE10remove_keyB1f_", scope: !1086, file: !6093, line: 717, type: !18789, scopeLine: 717, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !2491)
!18791 = !DILocalVariable(name: "key", arg: 2, scope: !18543, file: !6093, line: 717, type: !2306)
!18792 = !{!18787, !18791}
!18793 = !{!18547, !18546}
!18794 = !{!18553}
!18795 = !{!18555, !18554}
!18796 = !{!18555}
!18797 = !{!18559}
!18798 = !{!18566}
!18799 = !{!18566, !18559, !18553}
!18800 = !{!18581, !18580, !18555, !18554}
!18801 = !{!18581, !18566, !18580, !18559, !18555}
!18802 = !{!18580, !18559, !18555}
!18803 = !DILocation(line: 0, scope: !18514)
!18804 = !{!18590}
!18805 = !DILocation(line: 0, scope: !18513)
!18806 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&core::num::niche_types::Nanoseconds", baseType: !324, size: 64, align: 64, dwarfAddressSpace: 0)
!18807 = !DILocalVariable(name: "self", arg: 1, scope: !18605, file: !6253, line: 62, type: !18806)
!18808 = !DINamespace(name: "{impl#11}", scope: !2502)
!18809 = !{!2471, !18806, !18806}
!18810 = !DISubroutineType(types: !18809)
!18811 = !DILocalVariable(name: "other", arg: 2, scope: !18605, file: !6253, line: 62, type: !18806)
!18812 = !{!18807, !18811}
!18813 = !DILocation(line: 62, column: 19, scope: !18605, inlinedAt: !18740)
!18814 = !DILocation(line: 62, column: 26, scope: !18605, inlinedAt: !18740)
!18815 = !DILocation(line: 63, column: 22, scope: !18605, inlinedAt: !18740)
!18816 = !DILocation(line: 63, column: 42, scope: !18605, inlinedAt: !18740)
!18817 = !DILocalVariable(name: "self", arg: 1, scope: !18607, file: !6093, line: 317, type: !6516)
!18818 = !{!2471, !6516}
!18819 = !DISubroutineType(types: !18818)
!18820 = !DISubprogram(name: "is_empty<tokio_quiche::http3::settings::Http3TimeoutType>", linkageName: "_RNvMNtNtCs3O5oxBhiT4j_10tokio_util4time11delay_queueINtB2_11SlabStorageNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeE8is_emptyB1d_", scope: !751, file: !6093, line: 317, type: !18819, scopeLine: 317, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !2491)
!18821 = !{!18817}
!18822 = !DILocation(line: 772, column: 22, scope: !18513)
!18823 = !DILocation(line: 317, column: 28, scope: !18607, inlinedAt: !18822)
!18824 = !DILocalVariable(name: "self", arg: 1, scope: !18608, file: !6375, line: 650, type: !6517)
!18825 = !{!2471, !6517}
!18826 = !DISubroutineType(types: !18825)
!18827 = !DISubprogram(name: "is_empty<tokio_util::time::delay_queue::Data<tokio_quiche::http3::settings::Http3TimeoutType>>", linkageName: "_RNvMs3_Cs9Srk37lQfcB_4slabINtB5_4SlabINtNtNtCs3O5oxBhiT4j_10tokio_util4time11delay_queue4DataNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http38settings16Http3TimeoutTypeEE8is_emptyB1z_", scope: !67, file: !6375, line: 650, type: !18826, scopeLine: 650, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !2493)
!18828 = !{!18824}
!18829 = !DILocation(line: 318, column: 20, scope: !18607, inlinedAt: !18822)
!18830 = !DILocation(line: 650, column: 21, scope: !18608, inlinedAt: !18829)
!18831 = !{!18618}
!18832 = !{!18622}
!18833 = !{!18626}
!18834 = !{!18626, !18622, !18618}
!18835 = !DILocation(line: 0, scope: !18512)
!18836 = !DILocation(line: 767, column: 39, scope: !18512)
!18837 = !DILocation(line: 0, scope: !18511)
!18838 = !{!18665}
!18839 = !{!18676}
!18840 = !{!18680}
!18841 = !{!18684}
!18842 = !{!18684, !18680, !18676}
!18843 = !DILocalVariable(name: "millis", arg: 1, scope: !18709, file: !6239, line: 244, type: !2060)
!18844 = !{!18843}
!18845 = !DILocation(line: 781, column: 36, scope: !18513)
!18846 = !DILocation(line: 0, scope: !18709, inlinedAt: !18845)
!18847 = !DILocalVariable(name: "self", arg: 1, scope: !18710, file: !2309, line: 1902, type: !4653)
!18848 = !{!18847}
!18849 = !DILocation(line: 773, column: 45, scope: !18510)
!18850 = !DILocation(line: 1902, column: 23, scope: !18710, inlinedAt: !18849)
!18851 = !DILocalVariable(name: "dest", arg: 1, scope: !18711, file: !4607, line: 961, type: !4653)
!18852 = !{!18851}
!18853 = !DILocation(line: 1904, column: 9, scope: !18710, inlinedAt: !18849)
!18854 = !DILocation(line: 961, column: 25, scope: !18711, inlinedAt: !18853)
!18855 = !DILocation(line: 0, scope: !18510)
!18856 = !DILocalVariable(name: "self", arg: 1, scope: !18713, file: !4663, line: 439, type: !114)
!18857 = !DILocalVariable(name: "this", scope: !18712, file: !4663, line: 444, type: !408, align: 64)
!18858 = !{!18856, !18857}
!18859 = !DILocation(line: 774, column: 23, scope: !18510)
!18860 = !DILocation(line: 0, scope: !18713, inlinedAt: !18859)
!18861 = !DILocation(line: 0, scope: !18712, inlinedAt: !18859)
!18862 = !DILocation(line: 848, column: 1, scope: !619, inlinedAt: !18805)
!18863 = !DILocation(line: 848, column: 1, scope: !620, inlinedAt: !18862)
!18864 = !DILocation(line: 848, column: 1, scope: !621, inlinedAt: !18863)
!18865 = !DILocation(line: 1992, column: 24, scope: !632, inlinedAt: !18864)
!18866 = !DILocation(line: 554, column: 23, scope: !638, inlinedAt: !18865)
!18867 = !DILocation(line: 436, column: 9, scope: !639, inlinedAt: !18866)
!18868 = !DILocation(line: 321, column: 22, scope: !640, inlinedAt: !18867)
!18869 = !DILocation(line: 758, column: 34, scope: !18516)
!18870 = !DILocation(line: 966, column: 9, scope: !1100, inlinedAt: !18527)
!18871 = !DILocation(line: 140, column: 9, scope: !1113, inlinedAt: !18532)
!18872 = !DILocation(line: 140, column: 14, scope: !1113, inlinedAt: !18532)
!18873 = !DILocation(line: 1164, column: 15, scope: !1112, inlinedAt: !18533)
!18874 = !DILocation(line: 1164, column: 9, scope: !1112, inlinedAt: !18533)
!18875 = !DILocation(line: 1165, column: 18, scope: !1112, inlinedAt: !18533)
!18876 = !DILocation(line: 140, column: 68, scope: !1113, inlinedAt: !18532)
!18877 = !DILocation(line: 968, column: 28, scope: !1102, inlinedAt: !18530)
!18878 = !DILocation(line: 245, column: 20, scope: !1114, inlinedAt: !18539)
!18879 = !DILocation(line: 246, column: 29, scope: !1114, inlinedAt: !18539)
!18880 = !DILocation(line: 249, column: 64, scope: !1114, inlinedAt: !18539)
!18881 = !DILocation(line: 1165, column: 33, scope: !1103, inlinedAt: !18529)
!18882 = !DILocation(line: 1168, column: 5, scope: !1103, inlinedAt: !18529)
!18883 = !DILocation(line: 0, scope: !1103, inlinedAt: !18529)
!18884 = !DILocation(line: 760, column: 14, scope: !18515)
!18885 = !DILocation(line: 721, column: 12, scope: !18543, inlinedAt: !18544)
!18886 = !DILocation(line: 721, column: 22, scope: !18543, inlinedAt: !18544)
!18887 = !DILocation(line: 721, column: 21, scope: !18543, inlinedAt: !18544)
!18888 = !DILocation(line: 724, column: 24, scope: !18543, inlinedAt: !18544)
!18889 = !DILocation(line: 721, column: 9, scope: !18543, inlinedAt: !18544)
!18890 = !DILocation(line: 722, column: 26, scope: !18543, inlinedAt: !18544)
!18891 = !DILocation(line: 232, column: 31, scope: !1141, inlinedAt: !18548)
!18892 = !DILocation(line: 1395, column: 9, scope: !1146, inlinedAt: !18550)
!18893 = !DILocation(line: 1395, column: 19, scope: !1146, inlinedAt: !18550)
!18894 = !DILocation(line: 233, column: 13, scope: !1141, inlinedAt: !18548)
!18895 = !DILocation(line: 0, scope: !1141, inlinedAt: !18548)
!18896 = !DILocation(line: 241, column: 20, scope: !1140, inlinedAt: !18548)
!18897 = !DILocation(line: 1167, column: 14, scope: !1153, inlinedAt: !18560)
!18898 = !DILocation(line: 1903, column: 92, scope: !1166, inlinedAt: !18576)
!18899 = !DILocation(line: 195, column: 12, scope: !1164, inlinedAt: !18572)
!18900 = !DILocation(line: 611, column: 9, scope: !1169, inlinedAt: !18584)
!18901 = !DILocation(line: 197, column: 27, scope: !1164, inlinedAt: !18572)
!18902 = !DILocation(line: 1125, column: 41, scope: !1156, inlinedAt: !18567)
!18903 = !DILocation(line: 1125, column: 20, scope: !1156, inlinedAt: !18567)
!18904 = !DILocation(line: 971, column: 21, scope: !1152, inlinedAt: !18561)
!18905 = !DILocation(line: 232, column: 28, scope: !1141, inlinedAt: !18548)
!18906 = !DILocation(line: 235, column: 25, scope: !1141, inlinedAt: !18548)
!18907 = !DILocation(line: 1132, column: 73, scope: !1156, inlinedAt: !18567)
!18908 = !DILocation(line: 975, column: 22, scope: !1172, inlinedAt: !18586)
!18909 = !DILocation(line: 976, column: 49, scope: !1172, inlinedAt: !18586)
!18910 = !DILocation(line: 1137, column: 17, scope: !1157, inlinedAt: !18567)
!18911 = !DILocation(line: 1138, column: 17, scope: !1157, inlinedAt: !18567)
!18912 = !DILocation(line: 763, column: 34, scope: !18514)
!18913 = !DILocation(line: 140, column: 9, scope: !1113, inlinedAt: !18596)
!18914 = !DILocation(line: 140, column: 14, scope: !1113, inlinedAt: !18596)
!18915 = !DILocation(line: 1164, column: 15, scope: !1112, inlinedAt: !18597)
!18916 = !DILocation(line: 1164, column: 9, scope: !1112, inlinedAt: !18597)
!18917 = !DILocation(line: 1165, column: 18, scope: !1112, inlinedAt: !18597)
!18918 = !DILocation(line: 140, column: 68, scope: !1113, inlinedAt: !18596)
!18919 = !DILocation(line: 968, column: 28, scope: !1102, inlinedAt: !18594)
!18920 = !DILocation(line: 245, column: 20, scope: !1114, inlinedAt: !18603)
!18921 = !DILocation(line: 246, column: 29, scope: !1114, inlinedAt: !18603)
!18922 = !DILocation(line: 249, column: 64, scope: !1114, inlinedAt: !18603)
!18923 = !DILocation(line: 2444, column: 15, scope: !18519, inlinedAt: !18735)
!18924 = !DILocation(line: 2444, column: 9, scope: !18519, inlinedAt: !18735)
!18925 = !DILocation(line: 765, column: 35, scope: !18513)
!18926 = !DILocation(line: 765, column: 13, scope: !18513)
!18927 = !DILocation(line: 49, column: 26, scope: !18606, inlinedAt: !18815)
!18928 = !DILocation(line: 49, column: 26, scope: !18606, inlinedAt: !18816)
!18929 = !DILocation(line: 63, column: 17, scope: !18605, inlinedAt: !18740)
!18930 = !DILocation(line: 651, column: 9, scope: !18608, inlinedAt: !18829)
!18931 = !DILocation(line: 772, column: 12, scope: !18513)
!18932 = !DILocation(line: 765, column: 19, scope: !18513)
!18933 = !DILocation(line: 766, column: 30, scope: !18513)
!18934 = !DILocation(line: 848, column: 1, scope: !619, inlinedAt: !18609)
!18935 = !DILocation(line: 848, column: 1, scope: !622, inlinedAt: !18615)
!18936 = !DILocation(line: 848, column: 1, scope: !623, inlinedAt: !18619)
!18937 = !DILocation(line: 848, column: 1, scope: !624, inlinedAt: !18623)
!18938 = !DILocation(line: 454, column: 20, scope: !629, inlinedAt: !18635)
!18939 = !DILocation(line: 4056, column: 24, scope: !628, inlinedAt: !18633)
!18940 = !DILocation(line: 2927, column: 12, scope: !625, inlinedAt: !18627)
!18941 = !DILocation(line: 4500, column: 24, scope: !269, inlinedAt: !18637)
!18942 = !DILocation(line: 2970, column: 18, scope: !625, inlinedAt: !18627)
!18943 = !DILocation(line: 848, column: 1, scope: !621, inlinedAt: !18613)
!18944 = !DILocation(line: 175, column: 14, scope: !641, inlinedAt: !18649)
!18945 = !DILocation(line: 766, column: 46, scope: !18513)
!18946 = !DILocation(line: 767, column: 65, scope: !18512)
!18947 = !DILocation(line: 767, column: 79, scope: !18513)
!18948 = !DILocation(line: 768, column: 70, scope: !18511)
!18949 = !DILocation(line: 128, column: 9, scope: !1138, inlinedAt: !18661)
!18950 = !DILocation(line: 130, column: 9, scope: !1138, inlinedAt: !18661)
!18951 = !DILocation(line: 251, column: 11, scope: !1120, inlinedAt: !18653)
!18952 = !DILocation(line: 251, column: 5, scope: !1120, inlinedAt: !18653)
!18953 = !DILocation(line: 253, column: 19, scope: !1120, inlinedAt: !18653)
!18954 = !DILocation(line: 296, column: 5, scope: !1116, inlinedAt: !18651)
!18955 = !DILocation(line: 288, column: 5, scope: !1116, inlinedAt: !18651)
!18956 = !DILocation(line: 293, column: 56, scope: !1115, inlinedAt: !18651)
!18957 = !DILocation(line: 768, column: 91, scope: !18511)
!18958 = !DILocation(line: 768, column: 43, scope: !18511)
!18959 = !DILocation(line: 848, column: 1, scope: !619, inlinedAt: !18667)
!18960 = !DILocation(line: 848, column: 1, scope: !622, inlinedAt: !18673)
!18961 = !DILocation(line: 848, column: 1, scope: !623, inlinedAt: !18677)
!18962 = !DILocation(line: 848, column: 1, scope: !624, inlinedAt: !18681)
!18963 = !DILocation(line: 454, column: 20, scope: !629, inlinedAt: !18693)
!18964 = !DILocation(line: 4056, column: 24, scope: !628, inlinedAt: !18691)
!18965 = !DILocation(line: 2927, column: 12, scope: !625, inlinedAt: !18685)
!18966 = !DILocation(line: 4500, column: 24, scope: !269, inlinedAt: !18695)
!18967 = !DILocation(line: 2970, column: 18, scope: !625, inlinedAt: !18685)
!18968 = !DILocation(line: 848, column: 1, scope: !621, inlinedAt: !18671)
!18969 = !DILocation(line: 175, column: 14, scope: !641, inlinedAt: !18707)
!18970 = !DILocation(line: 768, column: 92, scope: !18513)
!18971 = !DILocation(line: 781, column: 23, scope: !18513)
!18972 = !DILocation(line: 245, column: 20, scope: !18709, inlinedAt: !18845)
!18973 = !DILocation(line: 246, column: 29, scope: !18709, inlinedAt: !18845)
!18974 = !DILocation(line: 249, column: 64, scope: !18709, inlinedAt: !18845)
!18975 = !DILocation(line: 778, column: 9, scope: !18513)
!18976 = !DILocation(line: 783, column: 6, scope: !18516)
!18977 = !DILocation(line: 975, column: 22, scope: !18711, inlinedAt: !18853)
!18978 = !DILocation(line: 976, column: 49, scope: !18711, inlinedAt: !18853)
!18979 = !DILocation(line: 773, column: 34, scope: !18510)
!18980 = !DILocation(line: 773, column: 20, scope: !18510)
!18981 = !DILocation(line: 449, column: 18, scope: !18712, inlinedAt: !18859)
!18982 = !DILocation(line: 773, column: 13, scope: !18513)
!18983 = !DILocation(line: 175, column: 14, scope: !641, inlinedAt: !18868)
!18984 = !DILocation(line: 757, column: 5, scope: !18516)
!18985 = distinct !DILexicalBlock(scope: !18986, file: !19134, line: 196, column: 9)
!18986 = distinct !DILexicalBlock(scope: !18987, file: !19134, line: 178, column: 9)
!18987 = distinct !DISubprogram(name: "push<tokio_quiche::http3::driver::streams::WaitForStream>", linkageName: "_RNvMs4_NtNtCs1nOxLl486fD_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedNtNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http36driver7streams13WaitForStreamE4pushB1x_", scope: !1201, file: !19134, line: 177, type: !19137, scopeLine: 177, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, templateParams: !4787, declaration: !19138, retainedNodes: !19143)
!18988 = distinct !DILexicalBlock(scope: !18989, file: !3220, line: 443, column: 9)
!18989 = distinct !DISubprogram(name: "new<futures_util::stream::futures_unordered::task::Task<tokio_quiche::http3::driver::streams::WaitForStream>>", linkageName: "_RNvMse_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCs1nOxLl486fD_12futures_util6stream17futures_unordered4task4TaskNtNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http36driver7streams13WaitForStreamEE3newB1Z_", scope: !696, file: !3220, line: 440, type: !19147, scopeLine: 440, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, templateParams: !4809, declaration: !19148, retainedNodes: !19151)
!18990 = distinct !DISubprogram(name: "pending_next_all<tokio_quiche::http3::driver::streams::WaitForStream>", linkageName: "_RNvMs4_NtNtCs1nOxLl486fD_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedNtNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http36driver7streams13WaitForStreamE16pending_next_allB1x_", scope: !1201, file: !19134, line: 400, type: !19157, scopeLine: 400, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, templateParams: !4787, declaration: !19158, retainedNodes: !19159)
!18991 = distinct !DISubprogram(name: "new<core::option::Option<tokio_quiche::http3::driver::streams::WaitForStream>>", linkageName: "_RNvMsW_NtCskKLDkoKarTP_4core4cellINtB5_10UnsafeCellINtNtB7_6option6OptionNtNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http36driver7streams13WaitForStreamEE3newB1h_", scope: !255, file: !4688, line: 2334, type: !19165, scopeLine: 2334, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, templateParams: !3170, declaration: !19166, retainedNodes: !19167)
!18992 = distinct !DISubprogram(name: "new<futures_util::stream::futures_unordered::task::Task<tokio_quiche::http3::driver::streams::WaitForStream>>", linkageName: "_RNvMs3_NtNtCskKLDkoKarTP_4core4sync6atomicINtB5_6AtomicOINtNtNtNtCs1nOxLl486fD_12futures_util6stream17futures_unordered4task4TaskNtNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http36driver7streams13WaitForStreamEE3newB2b_", scope: !705, file: !3231, line: 1517, type: !19172, scopeLine: 1517, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, templateParams: !4809, declaration: !19173, retainedNodes: !19175)
!18993 = distinct !DISubprogram(name: "store", linkageName: "_RNvMs2_NtNtCskKLDkoKarTP_4core4sync6atomicINtB5_6AtomicbE5store", scope: !132, file: !3231, line: 792, type: !19181, scopeLine: 792, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, templateParams: !2257, declaration: !19182, retainedNodes: !19185)
!18994 = distinct !DISubprogram(name: "deref<futures_util::stream::futures_unordered::ready_to_run_queue::ReadyToRunQueue<tokio_quiche::http3::driver::streams::WaitForStream>, alloc::alloc::Global>", linkageName: "_RNvXsx_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCs1nOxLl486fD_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueNtNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http36driver7streams13WaitForStreamEENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefB2q_", scope: !19190, file: !3220, line: 2512, type: !19193, scopeLine: 2512, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, templateParams: !4792, retainedNodes: !19194)
!18995 = distinct !DISubprogram(name: "inner<futures_util::stream::futures_unordered::ready_to_run_queue::ReadyToRunQueue<tokio_quiche::http3::driver::streams::WaitForStream>, alloc::alloc::Global>", linkageName: "_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCs1nOxLl486fD_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueNtNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http36driver7streams13WaitForStreamEE5innerB2q_", scope: !1200, file: !3220, line: 2186, type: !19200, scopeLine: 2186, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, templateParams: !4792, declaration: !19201, retainedNodes: !19202)
!18996 = distinct !DISubprogram(name: "as_ref<alloc::sync::ArcInner<futures_util::stream::futures_unordered::ready_to_run_queue::ReadyToRunQueue<tokio_quiche::http3::driver::streams::WaitForStream>>>", linkageName: "_RNvMs1_NtNtCskKLDkoKarTP_4core3ptr8non_nullINtB5_7NonNullINtNtCsexYYUdYSQU6_5alloc4sync8ArcInnerINtNtNtNtCs1nOxLl486fD_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueNtNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http36driver7streams13WaitForStreamEEE6as_refB3g_", scope: !700, file: !3249, line: 450, type: !19207, scopeLine: 450, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, templateParams: !4791, declaration: !19208)
!18997 = distinct !DISubprogram(name: "as_ptr<futures_util::stream::futures_unordered::task::Task<tokio_quiche::http3::driver::streams::WaitForStream>, alloc::alloc::Global>", linkageName: "_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCs1nOxLl486fD_12futures_util6stream17futures_unordered4task4TaskNtNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http36driver7streams13WaitForStreamEE6as_ptrB1Z_", scope: !696, file: !3220, line: 1894, type: !19213, scopeLine: 1894, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, templateParams: !4778, declaration: !19214, retainedNodes: !19215)
!18998 = distinct !DILexicalBlock(scope: !18999, file: !4469, line: 290, column: 9)
!18999 = distinct !DISubprogram(name: "new<alloc::sync::ArcInner<futures_util::stream::futures_unordered::task::Task<tokio_quiche::http3::driver::streams::WaitForStream>>>", linkageName: "_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCs1nOxLl486fD_12futures_util6stream17futures_unordered4task4TaskNtNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http36driver7streams13WaitForStreamEEE3newB2j_", scope: !6152, file: !4469, line: 288, type: !19229, scopeLine: 288, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, templateParams: !4773, retainedNodes: !19232)
!19000 = distinct !DILocation(line: 443, column: 25, scope: !18989, inlinedAt: !19152)
!19001 = distinct !DILocation(line: 288, column: 16, scope: !18999, inlinedAt: !19000)
!19002 = distinct !DILocation(line: 290, column: 19, scope: !18999, inlinedAt: !19000)
!19003 = distinct !DILocation(line: 0, scope: !1120, inlinedAt: !19002)
!19004 = distinct !DILocation(line: 251, column: 18, scope: !1120, inlinedAt: !19002)
!19005 = distinct !DILocation(line: 0, scope: !1126, inlinedAt: !19004)
!19006 = distinct !DILocation(line: 541, column: 14, scope: !1126, inlinedAt: !19004)
!19007 = distinct !DILocation(line: 0, scope: !1127, inlinedAt: !19006)
!19008 = distinct !DILocation(line: 424, column: 9, scope: !1127, inlinedAt: !19006)
!19009 = distinct !DILocation(line: 0, scope: !1137, inlinedAt: !19008)
!19010 = distinct !DILocation(line: 302, column: 73, scope: !1136, inlinedAt: !19008)
!19011 = distinct !DILocation(line: 0, scope: !1138, inlinedAt: !19010)
!19012 = distinct !DILocation(line: 0, scope: !1136, inlinedAt: !19008)
!19013 = distinct !{!19013, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCs1nOxLl486fD_12futures_util6stream17futures_unordered4task4TaskNtNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http36driver7streams13WaitForStreamEEE3newB2j_"}
!19014 = distinct !{!19014, !19013, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCs1nOxLl486fD_12futures_util6stream17futures_unordered4task4TaskNtNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http36driver7streams13WaitForStreamEEE3newB2j_: argument 0"}
!19015 = distinct !DILocation(line: 0, scope: !18998, inlinedAt: !19000)
!19016 = distinct !DISubprogram(name: "get<core::sync::atomic::private::Align1<u8>>", linkageName: "_RNvMsX_NtCskKLDkoKarTP_4core4cellINtB5_10UnsafeCellINtNtNtNtB7_4sync6atomic7private6Align1hEE3getCsa2e0UnRrdBM_12tokio_quiche", scope: !131, file: !4688, line: 2434, type: !19240, scopeLine: 2434, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, templateParams: !2845, declaration: !19241, retainedNodes: !19242)
!19017 = distinct !DISubprogram(name: "atomic_store<u8, false>", linkageName: "_RINvNtNtCskKLDkoKarTP_4core4sync6atomic12atomic_storehKb0_ECsa2e0UnRrdBM_12tokio_quiche", scope: !2050, file: !3231, line: 3981, type: !19247, scopeLine: 3981, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, templateParams: !2301, retainedNodes: !19250)
!19018 = distinct !DILocation(line: 796, column: 13, scope: !18993, inlinedAt: !19186)
!19019 = distinct !DILocation(line: 0, scope: !19017, inlinedAt: !19018)
!19020 = distinct !DILexicalBlock(scope: !19021, file: !19134, line: 316, column: 13)
!19021 = distinct !DILexicalBlock(scope: !19022, file: !19134, line: 312, column: 9)
!19022 = distinct !DILexicalBlock(scope: !19025, file: !19134, line: 308, column: 9)
!19023 = distinct !DILexicalBlock(scope: !19024, file: !5991, line: 48, column: 21)
!19024 = distinct !DILexicalBlock(scope: !19025, file: !5991, line: 46, column: 13)
!19025 = distinct !DISubprogram(name: "link<tokio_quiche::http3::driver::streams::WaitForStream>", linkageName: "_RNvMs4_NtNtCs1nOxLl486fD_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedNtNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http36driver7streams13WaitForStreamE4linkB1x_", scope: !1201, file: !19134, line: 304, type: !19253, scopeLine: 304, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, templateParams: !4787, declaration: !19254, retainedNodes: !19265)
!19026 = distinct !DILocation(line: 196, column: 24, scope: !18986)
!19027 = distinct !DILocation(line: 0, scope: !19025, inlinedAt: !19026)
!19028 = distinct !DISubprogram(name: "pending_next_all<tokio_quiche::http3::driver::streams::WaitForStream>", linkageName: "_RNvMs4_NtNtCs1nOxLl486fD_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedNtNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http36driver7streams13WaitForStreamE16pending_next_allB1x_", scope: !1201, file: !19134, line: 400, type: !19157, scopeLine: 400, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, templateParams: !4787, declaration: !19158, retainedNodes: !19267)
!19029 = distinct !DILocation(line: 321, column: 44, scope: !19021, inlinedAt: !19026)
!19030 = distinct !DILocation(line: 0, scope: !19028, inlinedAt: !19029)
!19031 = distinct !DISubprogram(name: "swap<futures_util::stream::futures_unordered::task::Task<tokio_quiche::http3::driver::streams::WaitForStream>>", linkageName: "_RNvMs3_NtNtCskKLDkoKarTP_4core4sync6atomicINtB5_6AtomicOINtNtNtNtCs1nOxLl486fD_12futures_util6stream17futures_unordered4task4TaskNtNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http36driver7streams13WaitForStreamEE4swapB2b_", scope: !705, file: !3231, line: 1834, type: !19270, scopeLine: 1834, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, templateParams: !4809, declaration: !19271, retainedNodes: !19274)
!19032 = distinct !DILocation(line: 312, column: 34, scope: !19022, inlinedAt: !19026)
!19033 = distinct !DILocation(line: 0, scope: !19031, inlinedAt: !19032)
!19034 = distinct !DISubprogram(name: "atomic_swap<*mut futures_util::stream::futures_unordered::task::Task<tokio_quiche::http3::driver::streams::WaitForStream>>", linkageName: "_RINvNtNtCskKLDkoKarTP_4core4sync6atomic11atomic_swapOINtNtNtNtCs1nOxLl486fD_12futures_util6stream17futures_unordered4task4TaskNtNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http36driver7streams13WaitForStreamEEB28_", scope: !2050, file: !3231, line: 4014, type: !19277, scopeLine: 4014, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, templateParams: !4806, retainedNodes: !19280)
!19035 = distinct !DILocation(line: 1836, column: 18, scope: !19031, inlinedAt: !19032)
!19036 = distinct !DILocation(line: 0, scope: !19034, inlinedAt: !19035)
!19037 = distinct !DILexicalBlock(scope: !19038, file: !19281, line: 153, column: 13)
!19038 = distinct !DISubprogram(name: "spin_next_all<tokio_quiche::http3::driver::streams::WaitForStream>", linkageName: "_RNvMs1_NtNtNtCs1nOxLl486fD_12futures_util6stream17futures_unordered4taskINtB5_4TaskNtNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http36driver7streams13WaitForStreamE13spin_next_allB1r_", scope: !706, file: !19281, line: 147, type: !19285, scopeLine: 147, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, templateParams: !4787, declaration: !19286, retainedNodes: !19290)
!19039 = distinct !DILocation(line: 321, column: 25, scope: !19021, inlinedAt: !19026)
!19040 = distinct !DILocation(line: 0, scope: !19038, inlinedAt: !19039)
!19041 = distinct !DISubprogram(name: "load<futures_util::stream::futures_unordered::task::Task<tokio_quiche::http3::driver::streams::WaitForStream>>", linkageName: "_RNvMs3_NtNtCskKLDkoKarTP_4core4sync6atomicINtB5_6AtomicOINtNtNtNtCs1nOxLl486fD_12futures_util6stream17futures_unordered4task4TaskNtNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http36driver7streams13WaitForStreamEE4loadB2b_", scope: !705, file: !3231, line: 1766, type: !6599, scopeLine: 1766, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, templateParams: !4809, declaration: !6600, retainedNodes: !19294)
!19042 = distinct !DILocation(line: 153, column: 38, scope: !19038, inlinedAt: !19039)
!19043 = distinct !DILocation(line: 0, scope: !19041, inlinedAt: !19042)
!19044 = distinct !DISubprogram(name: "store<futures_util::stream::futures_unordered::task::Task<tokio_quiche::http3::driver::streams::WaitForStream>>", linkageName: "_RNvMs3_NtNtCskKLDkoKarTP_4core4sync6atomicINtB5_6AtomicOINtNtNtNtCs1nOxLl486fD_12futures_util6stream17futures_unordered4task4TaskNtNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http36driver7streams13WaitForStreamEE5storeB2b_", scope: !705, file: !3231, line: 1799, type: !19297, scopeLine: 1799, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, templateParams: !4809, declaration: !19298, retainedNodes: !19301)
!19045 = distinct !DILocation(line: 328, column: 29, scope: !19020, inlinedAt: !19026)
!19046 = distinct !DILocation(line: 0, scope: !19044, inlinedAt: !19045)
!19047 = distinct !DISubprogram(name: "into_raw<futures_util::stream::futures_unordered::task::Task<tokio_quiche::http3::driver::streams::WaitForStream>>", linkageName: "_RNvMsm_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCs1nOxLl486fD_12futures_util6stream17futures_unordered4task4TaskNtNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http36driver7streams13WaitForStreamEE8into_rawB1Z_", scope: !696, file: !3220, line: 1703, type: !19304, scopeLine: 1703, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, templateParams: !4809, declaration: !19305, retainedNodes: !19306)
!19048 = distinct !DILocation(line: 308, column: 19, scope: !19025, inlinedAt: !19026)
!19049 = distinct !DILocation(line: 0, scope: !19047, inlinedAt: !19048)
!19050 = distinct !DISubprogram(name: "as_ptr<futures_util::stream::futures_unordered::task::Task<tokio_quiche::http3::driver::streams::WaitForStream>, alloc::alloc::Global>", linkageName: "_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCs1nOxLl486fD_12futures_util6stream17futures_unordered4task4TaskNtNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http36driver7streams13WaitForStreamEE6as_ptrB1Z_", scope: !696, file: !3220, line: 1894, type: !19213, scopeLine: 1894, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, templateParams: !4778, declaration: !19214, retainedNodes: !19308)
!19051 = distinct !DILocation(line: 1705, column: 9, scope: !19047, inlinedAt: !19048)
!19052 = distinct !DILocation(line: 0, scope: !19022, inlinedAt: !19026)
!19053 = distinct !DILocation(line: 1834, column: 23, scope: !19031, inlinedAt: !19032)
!19054 = distinct !DISubprogram(name: "as_ptr<futures_util::stream::futures_unordered::task::Task<tokio_quiche::http3::driver::streams::WaitForStream>>", linkageName: "_RNvMs3_NtNtCskKLDkoKarTP_4core4sync6atomicINtB5_6AtomicOINtNtNtNtCs1nOxLl486fD_12futures_util6stream17futures_unordered4task4TaskNtNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http36driver7streams13WaitForStreamEE6as_ptrB2b_", scope: !705, file: !3231, line: 2539, type: !6602, scopeLine: 2539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, templateParams: !4809, declaration: !6603, retainedNodes: !19310)
!19055 = distinct !DILocation(line: 1836, column: 35, scope: !19031, inlinedAt: !19032)
!19056 = distinct !DILocation(line: 2539, column: 25, scope: !19054, inlinedAt: !19055)
!19057 = distinct !DISubprogram(name: "get<core::sync::atomic::private::Align8<*mut futures_util::stream::futures_unordered::task::Task<tokio_quiche::http3::driver::streams::WaitForStream>>>", linkageName: "_RNvMsX_NtCskKLDkoKarTP_4core4cellINtB5_10UnsafeCellINtNtNtNtB7_4sync6atomic7private6Align8OINtNtNtNtCs1nOxLl486fD_12futures_util6stream17futures_unordered4task4TaskNtNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http36driver7streams13WaitForStreamEEE3getB2K_", scope: !704, file: !4688, line: 2434, type: !6607, scopeLine: 2434, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, templateParams: !4808, declaration: !6608)
!19058 = distinct !DILocation(line: 2540, column: 16, scope: !19311, inlinedAt: !19055)
!19059 = distinct !DILocation(line: 0, scope: !19021, inlinedAt: !19026)
!19060 = distinct !DISubprogram(name: "is_null<futures_util::stream::futures_unordered::task::Task<tokio_quiche::http3::driver::streams::WaitForStream>>", linkageName: "_RNvMNtNtCskKLDkoKarTP_4core3ptr7mut_ptrOINtNtNtNtCs1nOxLl486fD_12futures_util6stream17futures_unordered4task4TaskNtNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http36driver7streams13WaitForStreamE7is_nullB1V_", scope: !5446, file: !5444, line: 22, type: !19314, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, templateParams: !4809, retainedNodes: !19315)
!19061 = distinct !DILocation(line: 316, column: 35, scope: !19021, inlinedAt: !19026)
!19062 = distinct !DILocation(line: 0, scope: !19060, inlinedAt: !19061)
!19063 = distinct !DILocation(line: 332, column: 22, scope: !19020, inlinedAt: !19026)
!19064 = distinct !DILocation(line: 0, scope: !19060, inlinedAt: !19063)
!19065 = distinct !DISubprogram(name: "runtime", linkageName: "_RNvNvMNtNtCskKLDkoKarTP_4core3ptr9const_ptrPp7is_null7runtime", scope: !5453, file: !5450, line: 2628, type: !5455, scopeLine: 2628, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, templateParams: !2257)
!19066 = distinct !DISubprogram(name: "is_null<futures_util::stream::futures_unordered::task::Task<tokio_quiche::http3::driver::streams::WaitForStream>>", linkageName: "_RNvMNtNtCskKLDkoKarTP_4core3ptr9const_ptrPINtNtNtNtCs1nOxLl486fD_12futures_util6stream17futures_unordered4task4TaskNtNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http36driver7streams13WaitForStreamE7is_nullB1X_", scope: !5452, file: !5449, line: 22, type: !6610, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, templateParams: !4809)
!19067 = distinct !DILocation(line: 23, column: 27, scope: !19060, inlinedAt: !19061)
!19068 = distinct !DILocation(line: 2641, column: 9, scope: !19317, inlinedAt: !19067)
!19069 = distinct !DISubprogram(name: "deref<futures_util::stream::futures_unordered::ready_to_run_queue::ReadyToRunQueue<tokio_quiche::http3::driver::streams::WaitForStream>, alloc::alloc::Global>", linkageName: "_RNvXsx_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCs1nOxLl486fD_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueNtNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http36driver7streams13WaitForStreamEENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefB2q_", scope: !19190, file: !3220, line: 2512, type: !19193, scopeLine: 2512, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, templateParams: !4792, retainedNodes: !19319)
!19070 = distinct !DILocation(line: 404, column: 22, scope: !19320, inlinedAt: !19029)
!19071 = distinct !DILocation(line: 2512, column: 14, scope: !19069, inlinedAt: !19070)
!19072 = distinct !DISubprogram(name: "inner<futures_util::stream::futures_unordered::ready_to_run_queue::ReadyToRunQueue<tokio_quiche::http3::driver::streams::WaitForStream>, alloc::alloc::Global>", linkageName: "_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCs1nOxLl486fD_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueNtNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http36driver7streams13WaitForStreamEE5innerB2q_", scope: !1200, file: !3220, line: 2186, type: !19200, scopeLine: 2186, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, templateParams: !4792, declaration: !19201, retainedNodes: !19322)
!19073 = distinct !DILocation(line: 2513, column: 15, scope: !19323, inlinedAt: !19070)
!19074 = distinct !DILocation(line: 2186, column: 14, scope: !19072, inlinedAt: !19073)
!19075 = distinct !DISubprogram(name: "as_ref<alloc::sync::ArcInner<futures_util::stream::futures_unordered::ready_to_run_queue::ReadyToRunQueue<tokio_quiche::http3::driver::streams::WaitForStream>>>", linkageName: "_RNvMs1_NtNtCskKLDkoKarTP_4core3ptr8non_nullINtB5_7NonNullINtNtCsexYYUdYSQU6_5alloc4sync8ArcInnerINtNtNtNtCs1nOxLl486fD_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueNtNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http36driver7streams13WaitForStreamEEE6as_refB3g_", scope: !700, file: !3249, line: 450, type: !19207, scopeLine: 450, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, templateParams: !4791, declaration: !19208)
!19076 = distinct !DILocation(line: 2192, column: 27, scope: !19324, inlinedAt: !19073)
!19077 = distinct !DILocation(line: 404, column: 9, scope: !19320, inlinedAt: !19029)
!19078 = distinct !DILocation(line: 1894, column: 19, scope: !19050, inlinedAt: !19077)
!19079 = distinct !DILocation(line: 1766, column: 23, scope: !19041, inlinedAt: !19042)
!19080 = distinct !DILocation(line: 1769, column: 57, scope: !19325, inlinedAt: !19042)
!19081 = distinct !DILocation(line: 2539, column: 25, scope: !19054, inlinedAt: !19080)
!19082 = distinct !DILocation(line: 1769, column: 13, scope: !19041, inlinedAt: !19042)
!19083 = distinct !DILocation(line: 0, scope: !1202, inlinedAt: !19082)
!19084 = distinct !DILocation(line: 0, scope: !19037, inlinedAt: !19039)
!19085 = distinct !DISubprogram(name: "get<usize>", linkageName: "_RNvMsX_NtCskKLDkoKarTP_4core4cellINtB5_10UnsafeCelljE3getCsa2e0UnRrdBM_12tokio_quiche", scope: !94, file: !4688, line: 2434, type: !5481, scopeLine: 2434, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, templateParams: !2321, declaration: !5482, retainedNodes: !19327)
!19086 = distinct !DILocation(line: 322, column: 34, scope: !19021, inlinedAt: !19026)
!19087 = distinct !DILocation(line: 0, scope: !19085, inlinedAt: !19086)
!19088 = distinct !DILocation(line: 0, scope: !19020, inlinedAt: !19026)
!19089 = distinct !DILocation(line: 324, column: 29, scope: !19020, inlinedAt: !19026)
!19090 = distinct !DILocation(line: 2434, column: 22, scope: !19085, inlinedAt: !19089)
!19091 = distinct !DILocation(line: 1799, column: 24, scope: !19044, inlinedAt: !19045)
!19092 = distinct !DILocation(line: 1802, column: 58, scope: !19044, inlinedAt: !19045)
!19093 = distinct !DILocation(line: 2539, column: 25, scope: !19054, inlinedAt: !19092)
!19094 = distinct !DILocation(line: 2540, column: 16, scope: !19329, inlinedAt: !19092)
!19095 = distinct !DISubprogram(name: "atomic_store<*mut futures_util::stream::futures_unordered::task::Task<tokio_quiche::http3::driver::streams::WaitForStream>, false>", linkageName: "_RINvNtNtCskKLDkoKarTP_4core4sync6atomic12atomic_storeOINtNtNtNtCs1nOxLl486fD_12futures_util6stream17futures_unordered4task4TaskNtNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http36driver7streams13WaitForStreamEKb0_EB29_", scope: !2050, file: !3231, line: 3981, type: !19332, scopeLine: 3981, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, templateParams: !4806, retainedNodes: !19335)
!19096 = distinct !DILocation(line: 1802, column: 13, scope: !19044, inlinedAt: !19045)
!19097 = distinct !DILocation(line: 0, scope: !19095, inlinedAt: !19096)
!19098 = distinct !DILocation(line: 1802, column: 13, scope: !19044, inlinedAt: !19045)
!19099 = distinct !DILocation(line: 0, scope: !19095, inlinedAt: !19098)
!19100 = distinct !DILexicalBlock(scope: !19101, file: !19344, line: 42, column: 13)
!19101 = distinct !DILexicalBlock(scope: !19102, file: !19344, line: 41, column: 13)
!19102 = distinct !DISubprogram(name: "enqueue<tokio_quiche::http3::driver::streams::WaitForStream>", linkageName: "_RNvMNtNtNtCs1nOxLl486fD_12futures_util6stream17futures_unordered18ready_to_run_queueINtB2_15ReadyToRunQueueNtNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http36driver7streams13WaitForStreamE7enqueueB1P_", scope: !698, file: !19344, line: 33, type: !19347, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, templateParams: !4787, declaration: !19348, retainedNodes: !19352)
!19103 = distinct !DILocation(line: 202, column: 33, scope: !18985)
!19104 = distinct !DILocation(line: 0, scope: !19102, inlinedAt: !19103)
!19105 = distinct !DISubprogram(name: "store<futures_util::stream::futures_unordered::task::Task<tokio_quiche::http3::driver::streams::WaitForStream>>", linkageName: "_RNvMs3_NtNtCskKLDkoKarTP_4core4sync6atomicINtB5_6AtomicOINtNtNtNtCs1nOxLl486fD_12futures_util6stream17futures_unordered4task4TaskNtNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http36driver7streams13WaitForStreamEE5storeB2b_", scope: !705, file: !3231, line: 1799, type: !19297, scopeLine: 1799, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, templateParams: !4809, declaration: !19298, retainedNodes: !19357)
!19106 = distinct !DILocation(line: 38, column: 39, scope: !19102, inlinedAt: !19103)
!19107 = distinct !DILocation(line: 0, scope: !19105, inlinedAt: !19106)
!19108 = distinct !DISubprogram(name: "swap<futures_util::stream::futures_unordered::task::Task<tokio_quiche::http3::driver::streams::WaitForStream>>", linkageName: "_RNvMs3_NtNtCskKLDkoKarTP_4core4sync6atomicINtB5_6AtomicOINtNtNtNtCs1nOxLl486fD_12futures_util6stream17futures_unordered4task4TaskNtNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http36driver7streams13WaitForStreamEE4swapB2b_", scope: !705, file: !3231, line: 1834, type: !19270, scopeLine: 1834, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, templateParams: !4809, declaration: !19271, retainedNodes: !19361)
!19109 = distinct !DILocation(line: 42, column: 34, scope: !19101, inlinedAt: !19103)
!19110 = distinct !DILocation(line: 0, scope: !19108, inlinedAt: !19109)
!19111 = distinct !DISubprogram(name: "atomic_swap<*mut futures_util::stream::futures_unordered::task::Task<tokio_quiche::http3::driver::streams::WaitForStream>>", linkageName: "_RINvNtNtCskKLDkoKarTP_4core4sync6atomic11atomic_swapOINtNtNtNtCs1nOxLl486fD_12futures_util6stream17futures_unordered4task4TaskNtNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http36driver7streams13WaitForStreamEEB28_", scope: !2050, file: !3231, line: 4014, type: !19277, scopeLine: 4014, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, templateParams: !4806, retainedNodes: !19365)
!19112 = distinct !DILocation(line: 1836, column: 18, scope: !19108, inlinedAt: !19109)
!19113 = distinct !DILocation(line: 0, scope: !19111, inlinedAt: !19112)
!19114 = distinct !DILocation(line: 43, column: 39, scope: !19100, inlinedAt: !19103)
!19115 = distinct !DILocation(line: 0, scope: !19105, inlinedAt: !19114)
!19116 = distinct !DILocation(line: 1799, column: 24, scope: !19105, inlinedAt: !19106)
!19117 = distinct !DISubprogram(name: "as_ptr<futures_util::stream::futures_unordered::task::Task<tokio_quiche::http3::driver::streams::WaitForStream>>", linkageName: "_RNvMs3_NtNtCskKLDkoKarTP_4core4sync6atomicINtB5_6AtomicOINtNtNtNtCs1nOxLl486fD_12futures_util6stream17futures_unordered4task4TaskNtNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http36driver7streams13WaitForStreamEE6as_ptrB2b_", scope: !705, file: !3231, line: 2539, type: !6602, scopeLine: 2539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, templateParams: !4809, declaration: !6603, retainedNodes: !19368)
!19118 = distinct !DILocation(line: 1802, column: 58, scope: !19105, inlinedAt: !19106)
!19119 = distinct !DILocation(line: 2539, column: 25, scope: !19117, inlinedAt: !19118)
!19120 = distinct !DISubprogram(name: "get<core::sync::atomic::private::Align8<*mut futures_util::stream::futures_unordered::task::Task<tokio_quiche::http3::driver::streams::WaitForStream>>>", linkageName: "_RNvMsX_NtCskKLDkoKarTP_4core4cellINtB5_10UnsafeCellINtNtNtNtB7_4sync6atomic7private6Align8OINtNtNtNtCs1nOxLl486fD_12futures_util6stream17futures_unordered4task4TaskNtNtNtNtCsa2e0UnRrdBM_12tokio_quiche5http36driver7streams13WaitForStreamEEE3getB2K_", scope: !704, file: !4688, line: 2434, type: !6607, scopeLine: 2434, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, templateParams: !4808, declaration: !6608)
!19121 = distinct !DILocation(line: 2540, column: 16, scope: !19117, inlinedAt: !19118)
!19122 = distinct !DILocation(line: 1802, column: 13, scope: !19105, inlinedAt: !19106)
!19123 = distinct !DILocation(line: 0, scope: !19095, inlinedAt: !19122)
!19124 = distinct !DILocation(line: 0, scope: !19101, inlinedAt: !19103)
!19125 = distinct !DILocation(line: 1834, column: 23, scope: !19108, inlinedAt: !19109)
!19126 = distinct !DILocation(line: 1836, column: 35, scope: !19108, inlinedAt: !19109)
!19127 = distinct !DILocation(line: 2539, column: 25, scope: !19117, inlinedAt: !19126)
!19128 = distinct !DILocation(line: 2540, column: 16, scope: !19370, inlinedAt: !19126)
!19129 = distinct !DILocation(line: 0, scope: !19100, inlinedAt: !19103)
!19130 = distinct !DILocation(line: 1802, column: 58, scope: !19371, inlinedAt: !19114)
!19131 = distinct !DILocation(line: 0, scope: !19117, inlinedAt: !19130)
!19132 = distinct !DILocation(line: 1802, column: 13, scope: !19105, inlinedAt: !19114)
end_hunk_1
