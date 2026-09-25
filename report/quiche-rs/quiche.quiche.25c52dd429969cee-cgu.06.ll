Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quiche-rs/original/quiche.quiche.25c52dd429969cee-cgu.06?download=true
inline.NumInlined: 320
inline.NumDeleted: 161
begin_hunk_0_@_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6clonedINtB4_6ClonedINtNtB6_6filter6FilterINtNtB6_7flatten7FlattenINtNtB6_4take4TakeINtNtB6_10filter_map9FilterMapIB1M_INtNtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque4iter4IterNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recovery10SentPacketEENCNvXs2_B3E_NtB3E_9GRecoveryNtB3I_11RecoveryOps25on_loss_detection_timeout0EEENCB4Q_s_0EENtNtNtB8_6traits8iterator8Iterator9size_hintB3K_:bb.a
  %i.n = lshr exact i64 %i.m, 7, !dbg !9542
  %.sroa.8.0.i.i.i = select i1 %.not84.i.i.i, i64 0, i64 %i.n, !dbg !9542
    #dbg_value(i64 %.sroa.8.0.i.i.i, !9419, !DIExpression(), !9348)
    #dbg_value(i64 %.sroa.8.0.i.i.i, !9484, !DIExpression(), !9343)
    #dbg_value(i64 1, !9420, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9348)
    #dbg_value(i64 %.sroa.8.0.i.i.i, !9420, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9348)
  %i.o = add nuw nsw i64 %.sroa.8.0.i.i.i, %.sroa.7.0.i.i.i, !dbg !9543
    #dbg_value(i64 %i.o, !9421, !DIExpression(), !9349)
    #dbg_value(i64 %i.o, !9484, !DIExpression(), !9351)
    #dbg_value(ptr %1, !9488, !DIExpression(), !9356)
  %i.p = load ptr, ptr %1, align 8, !dbg !9544, !alias.scope !9466, !noalias !9467, !noundef !602
  %.not85.i.i.i = icmp eq ptr %i.p, null, !dbg !9544
    #dbg_value(ptr %1, !9493, !DIExpression(), !9357)
    #dbg_value(ptr %1, !9495, !DIExpression(), !9364)
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !9466, !noalias !9467
  %i.s = icmp eq i64 %i.r, 0
  %or.cond.i.i.i = select i1 %.not85.i.i.i, i1 true, i1 %i.s, !dbg !9545
    #dbg_value(ptr %1, !9506, !DIExpression(), !9368)
    #dbg_value(ptr %1, !9513, !DIExpression(), !9375)
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !9466, !noalias !9467
  %i.v = icmp eq i64 %i.u, 0
  %or.cond113.i.i.i = select i1 %or.cond.i.i.i, i1 true, i1 %i.v, !dbg !9545
  br i1 %or.cond113.i.i.i, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_10filter_map9FilterMapIBN_INtNtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque4iter4IterNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recovery10SentPacketEENCNvXs2_B2x_NtB2x_9GRecoveryNtB2B_11RecoveryOps25on_loss_detection_timeout0EENtNtNtB8_6traits8iterator8Iterator9size_hintB2D_.exit.thread.i.i.i, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_10filter_map9FilterMapIBN_INtNtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque4iter4IterNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recovery10SentPacketEENCNvXs2_B2x_NtB2x_9GRecoveryNtB2B_11RecoveryOps25on_loss_detection_timeout0EENtNtNtB8_6traits8iterator8Iterator9size_hintB2D_.exit.i.i.i, !dbg !9545

_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_10filter_map9FilterMapIBN_INtNtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque4iter4IterNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recovery10SentPacketEENCNvXs2_B2x_NtB2x_9GRecoveryNtB2B_11RecoveryOps25on_loss_detection_timeout0EENtNtNtB8_6traits8iterator8Iterator9size_hintB2D_.exit.i.i.i: ; preds = %bb.a
    #dbg_value(ptr %1, !9525, !DIExpression(), !9379)
  %i.w = tail call noundef i64 @_RNvXs4_NtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recovery10SentPacketENtNtNtNtCskKLDkoKarTP_4core4iter6traits10exact_size17ExactSizeIterator3lenB1g_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1), !dbg !9546, !noalias !9531
  %i.x = icmp eq i64 %i.w, 0, !dbg !9547
  br i1 %i.x, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_10filter_map9FilterMapIBN_INtNtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque4iter4IterNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recovery10SentPacketEENCNvXs2_B2x_NtB2x_9GRecoveryNtB2B_11RecoveryOps25on_loss_detection_timeout0EENtNtNtB8_6traits8iterator8Iterator9size_hintB2D_.exit.thread.i.i.i, label %_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB5_6FilterINtNtB7_7flatten7FlattenINtNtB7_4take4TakeINtNtB7_10filter_map9FilterMapIB1r_INtNtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque4iter4IterNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recovery10SentPacketEENCNvXs2_B3j_NtB3j_9GRecoveryNtB3n_11RecoveryOps25on_loss_detection_timeout0EEENCB4v_s_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB3p_.exit, !dbg !9547

_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_10filter_map9FilterMapIBN_INtNtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque4iter4IterNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recovery10SentPacketEENCNvXs2_B2x_NtB2x_9GRecoveryNtB2B_11RecoveryOps25on_loss_detection_timeout0EENtNtNtB8_6traits8iterator8Iterator9size_hintB2D_.exit.thread.i.i.i: ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_10filter_map9FilterMapIBN_INtNtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque4iter4IterNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recovery10SentPacketEENCNvXs2_B2x_NtB2x_9GRecoveryNtB2B_11RecoveryOps25on_loss_detection_timeout0EENtNtNtB8_6traits8iterator8Iterator9size_hintB2D_.exit.i.i.i, %bb.a
    #dbg_value(i64 %.sroa.7.0.i.i.i, !9439, !DIExpression(), !9388)
    #dbg_value(i64 %.sroa.8.0.i.i.i, !9440, !DIExpression(), !9388)
  store i64 1, ptr %.sroa.4.i, align 8, !dbg !9548, !alias.scope !9532, !noalias !9533
  br label %_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB5_6FilterINtNtB7_7flatten7FlattenINtNtB7_4take4TakeINtNtB7_10filter_map9FilterMapIB1r_INtNtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque4iter4IterNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recovery10SentPacketEENCNvXs2_B3j_NtB3j_9GRecoveryNtB3n_11RecoveryOps25on_loss_detection_timeout0EEENCB4v_s_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB3p_.exit, !dbg !9549

_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB5_6FilterINtNtB7_7flatten7FlattenINtNtB7_4take4TakeINtNtB7_10filter_map9FilterMapIB1r_INtNtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque4iter4IterNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recovery10SentPacketEENCNvXs2_B3j_NtB3j_9GRecoveryNtB3n_11RecoveryOps25on_loss_detection_timeout0EEENCB4v_s_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB3p_.exit: ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_10filter_map9FilterMapIBN_INtNtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque4iter4IterNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recovery10SentPacketEENCNvXs2_B2x_NtB2x_9GRecoveryNtB2B_11RecoveryOps25on_loss_detection_timeout0EENtNtNtB8_6traits8iterator8Iterator9size_hintB2D_.exit.i.i.i, %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_10filter_map9FilterMapIBN_INtNtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque4iter4IterNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recovery10SentPacketEENCNvXs2_B2x_NtB2x_9GRecoveryNtB2B_11RecoveryOps25on_loss_detection_timeout0EENtNtNtB8_6traits8iterator8Iterator9size_hintB2D_.exit.thread.i.i.i
  %.sink115.i.i.sroa.phi.i = phi ptr [ %.sroa.7.i, %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_10filter_map9FilterMapIBN_INtNtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque4iter4IterNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recovery10SentPacketEENCNvXs2_B2x_NtB2x_9GRecoveryNtB2B_11RecoveryOps25on_loss_detection_timeout0EENtNtNtB8_6traits8iterator8Iterator9size_hintB2D_.exit.thread.i.i.i ], [ %.sroa.4.i, %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_10filter_map9FilterMapIBN_INtNtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque4iter4IterNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recovery10SentPacketEENCNvXs2_B2x_NtB2x_9GRecoveryNtB2B_11RecoveryOps25on_loss_detection_timeout0EENtNtNtB8_6traits8iterator8Iterator9size_hintB2D_.exit.i.i.i ]
  %.sink.i.i.i = phi i64 [ %i.o, %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_10filter_map9FilterMapIBN_INtNtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque4iter4IterNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recovery10SentPacketEENCNvXs2_B2x_NtB2x_9GRecoveryNtB2B_11RecoveryOps25on_loss_detection_timeout0EENtNtNtB8_6traits8iterator8Iterator9size_hintB2D_.exit.thread.i.i.i ], [ 0, %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_10filter_map9FilterMapIBN_INtNtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque4iter4IterNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recovery10SentPacketEENCNvXs2_B2x_NtB2x_9GRecoveryNtB2B_11RecoveryOps25on_loss_detection_timeout0EENtNtNtB8_6traits8iterator8Iterator9size_hintB2D_.exit.i.i.i ]
  store i64 %.sink.i.i.i, ptr %.sink115.i.i.sroa.phi.i, align 8, !dbg !9550, !alias.scope !9532, !noalias !9533
  %.sroa.4.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.8..i = load i64, ptr %.sroa.4.i, align 8, !dbg !9551, !range !1624, !noalias !9534, !noundef !602
  %.sroa.7.i.0..sroa.7.i.0..sroa.7.i.0..sroa.7.0..sroa.7.0..sroa.7.16..i = load i64, ptr %.sroa.7.i, align 8, !dbg !9551, !noalias !9534
    #dbg_value(i64 %.sroa.4.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.8..i, !9402, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9389)
    #dbg_value(i64 %.sroa.7.i.0..sroa.7.i.0..sroa.7.i.0..sroa.7.0..sroa.7.0..sroa.7.16..i, !9402, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9389)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i), !dbg !9552
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i), !dbg !9552
  store i64 0, ptr %0, align 8, !dbg !9553, !alias.scope !9396, !noalias !9397
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !9553
  store i64 %.sroa.4.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.8..i, ptr %i.y, align 8, !dbg !9553, !alias.scope !9396, !noalias !9397
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !9553
  store i64 %.sroa.7.i.0..sroa.7.i.0..sroa.7.i.0..sroa.7.0..sroa.7.0..sroa.7.16..i, ptr %i.z, align 8, !dbg !9553, !alias.scope !9396, !noalias !9397
  ret void, !dbg !9554
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterNtNtCs3f36owOmepS_6quiche5frame5FrameEENtNtNtB8_6traits8iterator8Iterator9size_hintB1v_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 !dbg !210 {
bb.a:
    #dbg_value(ptr %1, !1442, !DIExpression(), !9568)
  %.val = load ptr, ptr %1, align 8, !dbg !9570, !nonnull !602, !noundef !602
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !9570
  %.val1 = load ptr, ptr %i.a, align 8, !dbg !9570, !nonnull !602, !noundef !602
    #dbg_value(ptr poison, !1450, !DIExpression(), !9556)
    #dbg_value(i64 128, !1457, !DIExpression(), !9560)
    #dbg_value(ptr %.val1, !1455, !DIExpression(), !9561)
    #dbg_value(ptr %.val1, !1464, !DIExpression(), !9562)
    #dbg_value(ptr %.val, !1465, !DIExpression(), !9562)
    #dbg_value(ptr %.val1, !1461, !DIExpression(), !9563)
    #dbg_value(ptr %.val, !1462, !DIExpression(), !9563)
    #dbg_value(ptr %.val, !1459, !DIExpression(), !9564)
    #dbg_value(ptr %.val1, !1458, !DIExpression(), !9564)
  %i.b = ptrtoint ptr %.val1 to i64, !dbg !9571
  %i.c = ptrtoint ptr %.val to i64, !dbg !9571
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !9571
  %i.e = lshr exact i64 %i.d, 7, !dbg !9571       ; 2 uses
    #dbg_value(i64 %i.e, !1453, !DIExpression(), !9565)
  store i64 %i.e, ptr %0, align 8, !dbg !9572, !alias.scope !9569
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !9572
  store i64 1, ptr %i.f, align 8, !dbg !9572, !alias.scope !9569
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !9572
  store i64 %i.e, ptr %i.g, align 8, !dbg !9572, !alias.scope !9569
  ret void, !dbg !9573
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6clonedINtB4_6ClonedNtNtCs3f36owOmepS_6quiche16transport_params33UnknownTransportParameterIteratorENtNtNtB8_6traits8iterator8Iterator4nextB15_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 8)) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %1) unnamed_addr #1 !dbg !9578 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
    #dbg_value(ptr %1, !9635, !DIExpression(), !9637)
    #dbg_declare(ptr poison, !9642, !DIExpression(), !9663)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9669), !dbg !9740
    #dbg_value(ptr %1, !9672, !DIExpression(), !9591)
  %i.b = load ptr, ptr %1, align 8, !dbg !9741, !alias.scope !9669, !nonnull !602, !align !2232, !noundef !602 ; 2 uses
    #dbg_value(ptr %i.b, !9678, !DIExpression(), !9595)
    #dbg_value(ptr %i.b, !9687, !DIExpression(), !9598)
    #dbg_value(ptr %i.b, !9690, !DIExpression(), !9601)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !9742
  %i.d = load i64, ptr %i.c, align 8, !dbg !9742, !noalias !9669, !noundef !602
    #dbg_value(ptr poison, !9696, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9605)
    #dbg_value(ptr poison, !9705, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9608)
    #dbg_value(i64 %i.d, !9696, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9605)
    #dbg_value(i64 %i.d, !9705, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9608)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !9743 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !dbg !9743, !alias.scope !9669, !noundef !602 ; 4 uses
    #dbg_value(i64 %i.f, !9702, !DIExpression(), !9605)
    #dbg_value(i64 %i.f, !9708, !DIExpression(), !9608)
  %i.g = icmp ult i64 %i.f, %i.d, !dbg !9744
  br i1 %i.g, label %bb.b, label %bb.c, !dbg !9744

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !9745
  %i.i = load ptr, ptr %i.h, align 8, !dbg !9745, !noalias !9669, !nonnull !602, !noundef !602
    #dbg_value(ptr %i.i, !9696, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9605)
    #dbg_value(ptr %i.i, !9705, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9608)
  %i.j = getelementptr inbounds nuw [32 x i8], ptr %i.i, i64 %i.f, !dbg !9746 ; 2 uses
    #dbg_value(ptr %i.j, !9676, !DIExpression(), !9616)
  %i.k = add nuw i64 %i.f, 1, !dbg !9747
  store i64 %i.k, ptr %i.e, align 8, !dbg !9747, !alias.scope !9669
    #dbg_value(ptr %i.j, !9667, !DIExpression(), !9724)
    #dbg_value(ptr %i.j, !9658, !DIExpression(), !9725)
    #dbg_value(ptr %i.j, !9659, !DIExpression(), !9726)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !9735
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9727), !dbg !9748
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9736), !dbg !9748
    #dbg_value(ptr %i.j, !9737, !DIExpression(), !9624)
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 24, !dbg !9749
  %i.m = load i64, ptr %i.l, align 8, !dbg !9749, !alias.scope !9736, !noalias !9727, !noundef !602
  call void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs3f36owOmepS_6quiche(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.j), !dbg !9750
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !9751
  store i64 %i.m, ptr %i.n, align 8, !dbg !9751, !alias.scope !9727, !noalias !9736
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false), !dbg !9752
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !9753
  br label %bb.d, !dbg !9754

bb.c:                                             ; preds = %bb.a
    #dbg_value(ptr null, !9676, !DIExpression(), !9616)
  %i.o = add i64 %i.f, 1, !dbg !9747
  store i64 %i.o, ptr %i.e, align 8, !dbg !9747, !alias.scope !9669
    #dbg_value(ptr null, !9667, !DIExpression(), !9724)
    #dbg_value(ptr null, !9658, !DIExpression(), !9725)
  store i64 -1, ptr %0, align 8, !dbg !9755
  br label %bb.d, !dbg !9756

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void, !dbg !9757
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6clonedINtB4_6ClonedNtNtCs3f36owOmepS_6quiche16transport_params33UnknownTransportParameterIteratorENtNtNtB8_6traits8iterator8Iterator9size_hintB15_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #7 !dbg !9758 {
bb.a:
    #dbg_value(ptr %1, !9767, !DIExpression(), !9769)
    #dbg_value(ptr poison, !9771, !DIExpression(), !9761)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 16, i1 false), !dbg !9778, !alias.scope !9777
  ret void, !dbg !9779
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsu_Cs5kGgRUzsVpH_8smallvecINtB5_8SmallVecATyyEj4_ENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCs3f36owOmepS_6quiche(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 !dbg !9780 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
    #dbg_value(ptr %0, !9799, !DIExpression(), !9802)
    #dbg_value(ptr %0, !9803, !DIExpression(), !9808)
    #dbg_value(ptr %1, !9800, !DIExpression(), !9802)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !9829
  call void @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter10debug_list(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !dbg !9830
    #dbg_value(ptr %0, !1669, !DIExpression(), !9784)
    #dbg_value(ptr %0, !1682, !DIExpression(), !9786)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !9831
  %i.c = load i64, ptr %i.b, align 8, !dbg !9831, !alias.scope !9809, !noalias !9810, !noundef !602 ; 2 uses
  %i.d = icmp ugt i64 %i.c, 4, !dbg !9831         ; 2 uses
  %i.e = load ptr, ptr %0, align 8, !dbg !9832, !alias.scope !9809, !noalias !9810, !nonnull !602
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !9832
  %i.g = load i64, ptr %i.f, align 8, !dbg !9832, !alias.scope !9809, !noalias !9810
  %.sink22.i = select i1 %i.d, ptr %i.e, ptr %0, !dbg !9832 ; 2 uses
  %.sink21.i = select i1 %i.d, i64 %i.g, i64 %i.c, !dbg !9832
    #dbg_value(i64 %.sink21.i, !9811, !DIExpression(), !9818)
    #dbg_value(i64 %.sink21.i, !9821, !DIExpression(), !9825)
    #dbg_value(ptr %.sink22.i, !9819, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9826)
    #dbg_value(ptr %.sink22.i, !9812, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9827)
    #dbg_value(i64 %.sink21.i, !9819, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9826)
    #dbg_value(i64 %.sink21.i, !9812, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9827)
    #dbg_value(ptr %.sink22.i, !9813, !DIExpression(), !9828)
    #dbg_value(ptr %.sink22.i, !9822, !DIExpression(), !9825)
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %.sink22.i, i64 %.sink21.i, !dbg !9833
  %i.i = call noundef nonnull align 8 ptr @_RINvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB6_9DebugList7entriesRTyyEINtNtNtBa_5slice4iter4IterB14_EECs3f36owOmepS_6quiche(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull %.sink22.i, ptr noundef nonnull %i.h), !dbg !9834
  %i.j = call noundef zeroext i1 @_RNvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.i), !dbg !9835
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !9836
  ret i1 %i.j, !dbg !9837
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsw_Cs5kGgRUzsVpH_8smallvecINtB5_8SmallVecANtNtCs3f36owOmepS_6quiche5frame5Framej1_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBM_(ptr noalias nofree noundef align 8 dereferenceable(136) %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !9839 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
    #dbg_value(ptr %0, !9862, !DIExpression(), !9866)
    #dbg_value(ptr %0, !9867, !DIExpression(), !9870)
    #dbg_declare(ptr %i.a, !9871, !DIExpression(), !9885)
    #dbg_declare(ptr poison, !9886, !DIExpression(), !9896)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128, !dbg !9943
  %i.c = load i64, ptr %i.b, align 8, !dbg !9943, !noundef !602 ; 5 uses
  %i.d = icmp ugt i64 %i.c, 1, !dbg !9943
  br i1 %i.d, label %bb.c, label %.preheader.preheader, !dbg !9944

.preheader.preheader:                             ; preds = %bb.a
  %1 = icmp eq i64 %i.c, 0, !dbg !9945
  br i1 %1, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtCs3f36owOmepS_6quiche5frame5FrameEBG_.exit, label %.lr.ph, !dbg !9945

.lr.ph:                                           ; preds = %.preheader.preheader
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche5frame5FrameEBF_(ptr noalias nofree noundef align 8 dereferenceable(128) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtCs3f36owOmepS_6quiche5frame5FrameEBG_.exit unwind label %bb.b, !dbg !9945

2:                                                ; preds = %.lr.ph11
  %3 = add nuw nsw i64 %.sroa.0.1.i10, 1, !dbg !9945 ; 2 uses
  %4 = icmp eq i64 %3, %i.c, !dbg !9945
  br i1 %4, label %common.resume, label %.lr.ph11, !dbg !9945

bb.b:                                             ; preds = %.lr.ph
  %5 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.e = icmp eq i64 %i.c, 1, !dbg !9945
  br i1 %i.e, label %common.resume, label %.lr.ph11, !dbg !9945

.lr.ph11:                                         ; preds = %bb.b, %2
  %.sroa.0.1.i10 = phi i64 [ %3, %2 ], [ 1, %bb.b ] ; 2 uses
  %6 = getelementptr inbounds nuw [128 x i8], ptr %0, i64 %.sroa.0.1.i10, !dbg !9945
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche5frame5FrameEBF_(ptr noalias nofree noundef align 8 dereferenceable(128) %6) #28
          to label %2 unwind label %7, !dbg !9945

common.resume:                                    ; preds = %2, %bb.b, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.k, %bb.d ], [ %5, %bb.b ], [ %5, %2 ]
  resume { ptr, i32 } %common.resume.op, !dbg !9866

7:                                                ; preds = %.lr.ph11
  %8 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23, !dbg !9945
  unreachable, !dbg !9945

bb.c:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !9922, !DIExpression(), !9926)
    #dbg_value(ptr %0, !9923, !DIExpression(), !9927)
  %i.f = load ptr, ptr %0, align 8, !dbg !9946, !nonnull !602, !noundef !602
    #dbg_value(ptr %i.f, !9863, !DIExpression(), !9928)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !9947
  %i.h = load i64, ptr %i.g, align 8, !dbg !9948, !noundef !602
    #dbg_value(i64 %i.h, !9864, !DIExpression(), !9928)
    #dbg_value(i64 %i.h, !9901, !DIExpression(), !9929)
    #dbg_value(i64 %i.h, !9891, !DIExpression(), !9930)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !9894
    #dbg_value(ptr %i.f, !9900, !DIExpression(), !9929)
    #dbg_value(ptr %i.f, !9890, !DIExpression(), !9930)
    #dbg_value(i64 %i.c, !9902, !DIExpression(), !9929)
    #dbg_value(i64 %i.c, !9892, !DIExpression(), !9930)
  store i64 %i.c, ptr %i.a, align 8, !dbg !9949
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !9949
  store ptr %i.f, ptr %i.i, align 8, !dbg !9949
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !9949
  store i64 %i.h, ptr %i.j, align 8, !dbg !9949
    #dbg_value(ptr %i.a, !9932, !DIExpression(), !9856)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs3f36owOmepS_6quiche5frame5FrameENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs3f36owOmepS_6quiche5frame5FrameEEB1c_.exit unwind label %bb.d, !dbg !9950

bb.d:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.a, !9937, !DIExpression(), !9859)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs3f36owOmepS_6quiche5frame5FrameENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %common.resume unwind label %bb.e, !dbg !9951

bb.e:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23, !dbg !9950
  unreachable, !dbg !9950

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs3f36owOmepS_6quiche5frame5FrameEEB1c_.exit: ; preds = %bb.c
    #dbg_value(ptr %i.a, !9937, !DIExpression(), !9861)
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs3f36owOmepS_6quiche5frame5FrameENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a), !dbg !9952
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !9953
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtCs3f36owOmepS_6quiche5frame5FrameEBG_.exit, !dbg !9954

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtCs3f36owOmepS_6quiche5frame5FrameEBG_.exit: ; preds = %.preheader.preheader, %.lr.ph, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs3f36owOmepS_6quiche5frame5FrameEEB1c_.exit
  ret void, !dbg !9955
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsw_Cs5kGgRUzsVpH_8smallvecINtB5_8SmallVecATyyEj4_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3f36owOmepS_6quiche(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(72) %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !150 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
    #dbg_value(ptr %0, !1159, !DIExpression(), !9962)
    #dbg_value(ptr %0, !1164, !DIExpression(), !9964)
    #dbg_declare(ptr %i.a, !1171, !DIExpression(), !9966)
    #dbg_declare(ptr poison, !1185, !DIExpression(), !9969)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !9976
  %i.c = load i64, ptr %i.b, align 8, !dbg !9976, !noundef !602 ; 2 uses
  %i.d = icmp ugt i64 %i.c, 4, !dbg !9976
  br i1 %i.d, label %bb.b, label %bb.e, !dbg !9977

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !1202, !DIExpression(), !9971)
    #dbg_value(ptr %0, !1210, !DIExpression(), !9972)
  %i.e = load ptr, ptr %0, align 8, !dbg !9978, !nonnull !602, !noundef !602
    #dbg_value(ptr %i.e, !1161, !DIExpression(), !9973)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !9979
  %i.g = load i64, ptr %i.f, align 8, !dbg !9980, !noundef !602
    #dbg_value(i64 %i.g, !1162, !DIExpression(), !9973)
    #dbg_value(i64 %i.g, !1198, !DIExpression(), !9974)
    #dbg_value(i64 %i.g, !1191, !DIExpression(), !9975)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !9967
    #dbg_value(ptr %i.e, !1197, !DIExpression(), !9974)
    #dbg_value(ptr %i.e, !1190, !DIExpression(), !9975)
    #dbg_value(i64 %i.c, !1199, !DIExpression(), !9974)
    #dbg_value(i64 %i.c, !1192, !DIExpression(), !9975)
  store i64 %i.c, ptr %i.a, align 8, !dbg !9981
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !9981
  store ptr %i.e, ptr %i.h, align 8, !dbg !9981
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !9981
  store i64 %i.g, ptr %i.i, align 8, !dbg !9981
    #dbg_value(ptr %i.a, !1213, !DIExpression(), !9957)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTyyEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3f36owOmepS_6quiche(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTyyEEECs3f36owOmepS_6quiche.exit unwind label %bb.c, !dbg !9982

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.a, !1218, !DIExpression(), !9959)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTyyEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3f36owOmepS_6quiche(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecTyyEEECs3f36owOmepS_6quiche.exit.i unwind label %bb.d, !dbg !9983

bb.d:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23, !dbg !9982
  unreachable, !dbg !9982

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecTyyEEECs3f36owOmepS_6quiche.exit.i: ; preds = %bb.c
  resume { ptr, i32 } %i.j, !dbg !9982

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTyyEEECs3f36owOmepS_6quiche.exit: ; preds = %bb.b
    #dbg_value(ptr %i.a, !1218, !DIExpression(), !9961)
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTyyEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3f36owOmepS_6quiche(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a), !dbg !9984
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !9985
  br label %bb.e, !dbg !9986

bb.e:                                             ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTyyEEECs3f36owOmepS_6quiche.exit
  ret void, !dbg !9987
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsw_Cs5kGgRUzsVpH_8smallvecINtB5_8SmallVecAyj1_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3f36owOmepS_6quiche(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !9989 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
    #dbg_value(ptr %0, !10008, !DIExpression(), !10012)
    #dbg_value(ptr %0, !10013, !DIExpression(), !10016)
    #dbg_declare(ptr %i.a, !10017, !DIExpression(), !10031)
    #dbg_declare(ptr poison, !10032, !DIExpression(), !10042)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !10079
  %i.c = load i64, ptr %i.b, align 8, !dbg !10079, !noundef !602 ; 2 uses
  %i.d = icmp ugt i64 %i.c, 1, !dbg !10079
  br i1 %i.d, label %bb.b, label %bb.e, !dbg !10080

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !10051, !DIExpression(), !10062)
    #dbg_value(ptr %0, !10059, !DIExpression(), !10063)
  %i.e = load ptr, ptr %0, align 8, !dbg !10081, !nonnull !602, !noundef !602
    #dbg_value(ptr %i.e, !10009, !DIExpression(), !10064)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !10082
  %i.g = load i64, ptr %i.f, align 8, !dbg !10083, !noundef !602
    #dbg_value(i64 %i.g, !10010, !DIExpression(), !10064)
    #dbg_value(i64 %i.g, !10047, !DIExpression(), !10065)
    #dbg_value(i64 %i.g, !10037, !DIExpression(), !10066)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !10040
    #dbg_value(ptr %i.e, !10046, !DIExpression(), !10065)
    #dbg_value(ptr %i.e, !10036, !DIExpression(), !10066)
    #dbg_value(i64 %i.c, !10048, !DIExpression(), !10065)
    #dbg_value(i64 %i.c, !10038, !DIExpression(), !10066)
  store i64 %i.c, ptr %i.a, align 8, !dbg !10084
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !10084
  store ptr %i.e, ptr %i.h, align 8, !dbg !10084
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !10084
  store i64 %i.g, ptr %i.i, align 8, !dbg !10084
    #dbg_value(ptr %i.a, !10068, !DIExpression(), !10002)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3f36owOmepS_6quiche(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecyEECs3f36owOmepS_6quiche.exit unwind label %bb.c, !dbg !10085

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.a, !10073, !DIExpression(), !10005)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3f36owOmepS_6quiche(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecyEECs3f36owOmepS_6quiche.exit.i unwind label %bb.d, !dbg !10086

bb.d:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23, !dbg !10085
  unreachable, !dbg !10085

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecyEECs3f36owOmepS_6quiche.exit.i: ; preds = %bb.c
  resume { ptr, i32 } %i.j, !dbg !10085

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecyEECs3f36owOmepS_6quiche.exit: ; preds = %bb.b
    #dbg_value(ptr %i.a, !10073, !DIExpression(), !10007)
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3f36owOmepS_6quiche(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a), !dbg !10087
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !10088
  br label %bb.e, !dbg !10089

bb.e:                                             ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecyEECs3f36owOmepS_6quiche.exit
  ret void, !dbg !10090
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXsx_Cs5kGgRUzsVpH_8smallvecINtB5_8SmallVecATyyEj4_ENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs3f36owOmepS_6quiche(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(72) %1) unnamed_addr #6 personality ptr @rust_eh_personality !dbg !10091 {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 14 uses
    #dbg_value(ptr %1, !10273, !DIExpression(), !10275)
    #dbg_value(ptr %1, !10276, !DIExpression(), !10280)
    #dbg_value(ptr %1, !10281, !DIExpression(), !10286)
    #dbg_value(ptr %1, !1669, !DIExpression(), !10096)
    #dbg_value(ptr %1, !1682, !DIExpression(), !10098)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 64, !dbg !10406
  %i.c = load i64, ptr %i.b, align 8, !dbg !10406, !alias.scope !10287, !noalias !10288, !noundef !602 ; 2 uses
  %i.d = icmp ugt i64 %i.c, 4, !dbg !10406        ; 2 uses
  %i.e = load ptr, ptr %1, align 8, !dbg !10407, !alias.scope !10287, !noalias !10288, !nonnull !602
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !10407
  %i.g = load i64, ptr %i.f, align 8, !dbg !10407, !alias.scope !10287, !noalias !10288
  %.sink22.i = select i1 %i.d, ptr %i.e, ptr %1, !dbg !10407 ; 9 uses
  %.sink21.i = select i1 %i.d, i64 %i.g, i64 %i.c, !dbg !10407 ; 5 uses
    #dbg_value(i64 %.sink21.i, !10289, !DIExpression(), !10297)
    #dbg_value(i64 %.sink21.i, !10305, !DIExpression(), !10309)
    #dbg_value(ptr %.sink22.i, !10301, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10310)
    #dbg_value(ptr %.sink22.i, !10303, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10311)
    #dbg_value(ptr %.sink22.i, !10290, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10312)
    #dbg_value(i64 %.sink21.i, !10301, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10310)
    #dbg_value(i64 %.sink21.i, !10303, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10311)
    #dbg_value(i64 %.sink21.i, !10290, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10312)
    #dbg_value(ptr %.sink22.i, !10291, !DIExpression(), !10313)
    #dbg_value(ptr %.sink22.i, !10306, !DIExpression(), !10309)
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %.sink22.i, i64 %.sink21.i, !dbg !10408 ; 3 uses
    #dbg_value(ptr %.sink22.i, !10314, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10330)
    #dbg_value(ptr %i.h, !10314, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10330)
    #dbg_value(ptr %.sink22.i, !10331, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10117)
    #dbg_value(ptr %i.h, !10331, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10117)
    #dbg_declare(ptr %i.a, !10332, !DIExpression(), !10118)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !10409, !noalias !10336
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 64, !dbg !10410 ; 6 uses
  store i64 0, ptr %i.i, align 8, !dbg !10410, !noalias !10336
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10337), !dbg !10411
    #dbg_value(ptr poison, !2258, !DIExpression(), !10138)
    #dbg_value(ptr poison, !10341, !DIExpression(), !10139)
    #dbg_value(ptr poison, !10359, !DIExpression(), !10142)
    #dbg_value(ptr poison, !2258, !DIExpression(), !10145)
    #dbg_value(ptr poison, !10341, !DIExpression(), !10146)
    #dbg_value(ptr %i.a, !10346, !DIExpression(), !10147)
    #dbg_value(ptr %i.a, !10362, !DIExpression(), !10150)
    #dbg_value(ptr %.sink22.i, !10347, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10147)
    #dbg_value(ptr %i.h, !10347, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10147)
    #dbg_value(i64 1, !10360, !DIExpression(), !10151)
    #dbg_value(ptr %.sink22.i, !10348, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10152)
    #dbg_value(ptr %i.h, !10348, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10152)
    #dbg_value(i64 %.sink21.i, !10349, !DIExpression(DW_OP_constu, 4, DW_OP_shl, DW_OP_constu, 4, DW_OP_shr, DW_OP_stack_value), !10153)
    #dbg_value(i64 %.sink21.i, !10363, !DIExpression(DW_OP_constu, 4, DW_OP_shl, DW_OP_constu, 4, DW_OP_shr, DW_OP_stack_value), !10150)
    #dbg_value(ptr %i.a, !1584, !DIExpression(), !10155)
    #dbg_value(i64 %.sink21.i, !1588, !DIExpression(DW_OP_constu, 4, DW_OP_shl, DW_OP_constu, 4, DW_OP_shr, DW_OP_stack_value), !10155)
    #dbg_value(i64 %.sink21.i, !1595, !DIExpression(DW_OP_constu, 4, DW_OP_shl, DW_OP_constu, 4, DW_OP_shr, DW_OP_stack_value), !10157)
    #dbg_declare(ptr poison, !1599, !DIExpression(), !10159)
    #dbg_value(i64 1, !1597, !DIExpression(), !10163)
    #dbg_value(ptr %i.a, !1605, !DIExpression(), !10165)
    #dbg_value(ptr %i.a, !1616, !DIExpression(), !10167)
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !10412 ; 4 uses
    #dbg_value(i64 0, !1589, !DIExpression(), !10168)
    #dbg_value(i64 0, !1596, !DIExpression(), !10157)
    #dbg_value(i64 4, !1590, !DIExpression(), !10168)
  %.not.i.i.i = icmp ugt i64 %.sink21.i, 4, !dbg !10413
  br i1 %.not.i.i.i, label %_RNvMsd_Cs5kGgRUzsVpH_8smallvecINtB5_8SmallVecATyyEj4_E11try_reserveCs3f36owOmepS_6quiche.exit.i.i, label %.lr.ph.i.i.preheader, !dbg !10413

_RNvMsd_Cs5kGgRUzsVpH_8smallvecINtB5_8SmallVecATyyEj4_E11try_reserveCs3f36owOmepS_6quiche.exit.i.i: ; preds = %bb.a
    #dbg_value(i64 %.sink21.i, !10349, !DIExpression(), !10153)
    #dbg_value(i64 %.sink21.i, !10363, !DIExpression(), !10150)
    #dbg_value(i64 %.sink21.i, !1588, !DIExpression(), !10155)
    #dbg_value(i64 %.sink21.i, !1595, !DIExpression(), !10157)
    #dbg_value(i64 %.sink21.i, !1600, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10169)
end_hunk_0
