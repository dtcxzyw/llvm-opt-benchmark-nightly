Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quinn-rs/original/quinn_proto-aa4faf9a7542e2b9.quinn_proto.ca9d529fb421aa30-cgu.14?download=true
inline.NumInlined: 504
inline.NumDeleted: 240
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_RINvNtNtCsexYYUdYSQU6_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIteryENvMNtCs7l6voRMtb7S_9fastbloom10bit_vectorNtB2q_6BitVec3newEyECshovLROGBtMy_11quinn_proto:bb.a
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %.val.i, i64 %.sroa.0.01.i, !dbg !8790
  %i.v = load i64, ptr %i.u, align 8, !dbg !8791, !noundef !1871
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.sroa.0.01.i, !dbg !8792
    #dbg_value(ptr %i.w, !8677, !DIExpression(), !8513)
    #dbg_value(ptr %i.w, !8745, !DIExpression(), !8514)
    #dbg_value(ptr %i.w, !8683, !DIExpression(), !8483)
  %i.x = add nuw i64 %.sroa.0.01.i, 1, !dbg !8789 ; 2 uses
    #dbg_value(i64 %i.x, !8675, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8492)
    #dbg_value(i64 %i.v, !8746, !DIExpression(), !8514)
  store i64 %i.v, ptr %i.w, align 8, !dbg !8793, !noalias !8644
    #dbg_value(ptr poison, !8674, !DIExpression(), !8491)
    #dbg_value(ptr undef, !8660, !DIExpression(), !8471)
    #dbg_value(ptr undef, !8657, !DIExpression(), !8470)
    #dbg_value(ptr undef, !8645, !DIExpression(), !8469)
    #dbg_value(ptr undef, !8649, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !8493)
    #dbg_value(i64 %i.x, !8658, !DIExpression(), !8511)
    #dbg_value(i64 %i.x, !8693, !DIExpression(), !8478)
    #dbg_value(i64 %i.x, !8696, !DIExpression(), !8481)
    #dbg_value(i64 %i.x, !8675, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !8492)
    #dbg_value(i64 %i.x, !8676, !DIExpression(), !8512)
    #dbg_value(i64 %i.x, !8686, !DIExpression(), !8475)
    #dbg_value(!DIArgList(ptr %i.d, i64 %i.x), !8677, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 8, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !8513)
    #dbg_value(!DIArgList(ptr %i.d, i64 %i.x), !8745, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 8, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !8514)
    #dbg_value(!DIArgList(ptr %i.d, i64 %i.x), !8683, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 8, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !8483)
    #dbg_value(i64 %i.x, !8734, !DIExpression(), !8515)
    #dbg_value(i64 %i.x, !8729, !DIExpression(), !8516)
    #dbg_value(i64 %i.x, !8724, !DIExpression(), !8517)
    #dbg_value(i64 %i.x, !8718, !DIExpression(), !8518)
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %.val.i, i64 %i.x, !dbg !8790
  %i.z = load i64, ptr %i.y, align 8, !dbg !8791, !noundef !1871
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.x, !dbg !8792
    #dbg_value(ptr %i.aa, !8677, !DIExpression(), !8513)
    #dbg_value(ptr %i.aa, !8745, !DIExpression(), !8514)
    #dbg_value(ptr %i.aa, !8683, !DIExpression(), !8483)
  %i.ab = add nuw i64 %.sroa.0.01.i, 2, !dbg !8789 ; 2 uses
    #dbg_value(i64 %i.ab, !8675, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8492)
    #dbg_value(i64 %i.z, !8746, !DIExpression(), !8514)
  store i64 %i.z, ptr %i.aa, align 8, !dbg !8793, !noalias !8644
    #dbg_value(i64 %i.ab, !8658, !DIExpression(), !8511)
    #dbg_value(i64 %i.ab, !8693, !DIExpression(), !8478)
    #dbg_value(i64 %i.ab, !8696, !DIExpression(), !8481)
    #dbg_value(i64 %i.ab, !8675, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !8492)
    #dbg_value(i64 %i.ab, !8676, !DIExpression(), !8512)
    #dbg_value(i64 %i.ab, !8686, !DIExpression(), !8475)
    #dbg_value(!DIArgList(ptr %i.d, i64 %i.ab), !8677, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 8, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !8513)
    #dbg_value(!DIArgList(ptr %i.d, i64 %i.ab), !8745, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 8, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !8514)
    #dbg_value(!DIArgList(ptr %i.d, i64 %i.ab), !8683, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 8, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !8483)
    #dbg_value(i64 %i.ab, !8734, !DIExpression(), !8515)
    #dbg_value(i64 %i.ab, !8729, !DIExpression(), !8516)
    #dbg_value(i64 %i.ab, !8724, !DIExpression(), !8517)
    #dbg_value(i64 %i.ab, !8718, !DIExpression(), !8518)
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %.val.i, i64 %i.ab, !dbg !8790
  %i.ad = load i64, ptr %i.ac, align 8, !dbg !8791, !noundef !1871
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.ab, !dbg !8792
    #dbg_value(ptr %i.ae, !8677, !DIExpression(), !8513)
    #dbg_value(ptr %i.ae, !8745, !DIExpression(), !8514)
    #dbg_value(ptr %i.ae, !8683, !DIExpression(), !8483)
  %i.af = add nuw i64 %.sroa.0.01.i, 3, !dbg !8789 ; 2 uses
    #dbg_value(i64 %i.af, !8675, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8492)
    #dbg_value(i64 %i.ad, !8746, !DIExpression(), !8514)
  store i64 %i.ad, ptr %i.ae, align 8, !dbg !8793, !noalias !8644
    #dbg_value(i64 %i.af, !8658, !DIExpression(), !8511)
    #dbg_value(i64 %i.af, !8693, !DIExpression(), !8478)
    #dbg_value(i64 %i.af, !8696, !DIExpression(), !8481)
    #dbg_value(i64 %i.af, !8675, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !8492)
    #dbg_value(i64 %i.af, !8676, !DIExpression(), !8512)
    #dbg_value(i64 %i.af, !8686, !DIExpression(), !8475)
    #dbg_value(!DIArgList(ptr %i.d, i64 %i.af), !8677, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 8, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !8513)
    #dbg_value(!DIArgList(ptr %i.d, i64 %i.af), !8745, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 8, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !8514)
    #dbg_value(!DIArgList(ptr %i.d, i64 %i.af), !8683, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 8, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !8483)
    #dbg_value(i64 %i.af, !8734, !DIExpression(), !8515)
    #dbg_value(i64 %i.af, !8729, !DIExpression(), !8516)
    #dbg_value(i64 %i.af, !8724, !DIExpression(), !8517)
    #dbg_value(i64 %i.af, !8718, !DIExpression(), !8518)
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %.val.i, i64 %i.af, !dbg !8790
  %i.ah = load i64, ptr %i.ag, align 8, !dbg !8791, !noundef !1871
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.af, !dbg !8792
    #dbg_value(ptr %i.ai, !8677, !DIExpression(), !8513)
    #dbg_value(ptr %i.ai, !8745, !DIExpression(), !8514)
    #dbg_value(ptr %i.ai, !8683, !DIExpression(), !8483)
  %i.aj = add nuw i64 %.sroa.0.01.i, 4, !dbg !8789 ; 2 uses
    #dbg_value(i64 %i.aj, !8675, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8492)
    #dbg_value(i64 %i.ah, !8746, !DIExpression(), !8514)
  store i64 %i.ah, ptr %i.ai, align 8, !dbg !8793, !noalias !8644
  %exitcond.not.i.3 = icmp eq i64 %i.aj, %i.f, !dbg !8787
  br i1 %exitcond.not.i.3, label %.loopexit, label %scalar.ph, !dbg !8788, !llvm.loop !8520

.loopexit:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.noexc
    #dbg_value(i64 %i.f, !8576, !DIExpression(), !8751)
    #dbg_value(i64 %i.f, !8637, !DIExpression(), !8642)
    #dbg_value(i64 %i.f, !8627, !DIExpression(), !8643)
    #dbg_value(ptr %1, !8577, !DIExpression(), !8752)
    #dbg_value(ptr %i.d, !8584, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8753)
    #dbg_value(i64 %i.f, !8584, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8753)
    #dbg_value(i64 %i.c, !8584, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !8753)
  invoke void @_RNvMs0_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIteryE32forget_allocation_drop_remainingCshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.e unwind label %bb.d, !dbg !8794

bb.d:                                             ; preds = %.loopexit
  %i.ak = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr poison, !8755, !DIExpression(), !8523)
    #dbg_value(ptr poison, !8762, !DIExpression(), !8527)
    #dbg_declare(ptr poison, !8766, !DIExpression(), !8532)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !8795
    #dbg_value(ptr %i.d, !8770, !DIExpression(), !8533)
    #dbg_value(i64 %i.c, !8771, !DIExpression(), !8533)
    #dbg_value(ptr %i.d, !8772, !DIExpression(), !8534)
    #dbg_value(i64 %i.c, !8773, !DIExpression(), !8535)
  store i64 %i.c, ptr %i.a, align 8, !dbg !8796
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !8796
  store ptr %i.d, ptr %i.al, align 8, !dbg !8796
    #dbg_value(ptr %i.a, !8776, !DIExpression(), !8538)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropyyEECshovLROGBtMy_11quinn_proto.exit unwind label %bb.f, !dbg !8797

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropyyEECshovLROGBtMy_11quinn_proto.exit: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !8798
  br label %bb.b, !dbg !8799

bb.e:                                             ; preds = %.loopexit
    #dbg_value(ptr %i.d, !8626, !DIExpression(), !8643)
    #dbg_value(ptr %i.d, !8636, !DIExpression(), !8642)
    #dbg_value(ptr %i.d, !8571, !DIExpression(), !8641)
  store i64 %i.c, ptr %0, align 8, !dbg !8800
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !8800
  store ptr %i.d, ptr %i.am, align 8, !dbg !8800
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !8800
  store i64 %i.f, ptr %i.an, align 8, !dbg !8800
    #dbg_value(ptr %1, !8698, !DIExpression(), !8540)
    #dbg_value(ptr %1, !8704, !DIExpression(), !8542)
  tail call void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIteryENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1), !dbg !8801
  ret void, !dbg !8802

bb.f:                                             ; preds = %bb.d, %bb.b
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #32, !dbg !8803
  unreachable, !dbg !8803

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIteryENvMNtCs7l6voRMtb7S_9fastbloom10bit_vectorNtB22_6BitVec3newEECshovLROGBtMy_11quinn_proto.exit: ; preds = %bb.b
  resume { ptr, i32 } %.pn, !dbg !8803
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6clonedINtB5_6ClonedINtNtNtBb_5slice4iter4IterINtNtNtBb_3ops5range5RangeyEEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvB1W_8for_each4callB1s_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB3c_3VecB1s_E14extend_trustedBP_E0E0ECshovLROGBtMy_11quinn_proto(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #4 personality ptr @rust_eh_personality !dbg !8806 {
bb.a:
    #dbg_value(ptr %0, !8897, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8903)
    #dbg_value(ptr %1, !8897, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8903)
    #dbg_declare(ptr poison, !8898, !DIExpression(), !8904)
    #dbg_declare(ptr %2, !8899, !DIExpression(), !8905)
    #dbg_declare(ptr poison, !8906, !DIExpression(), !8920)
    #dbg_value(ptr %0, !8913, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8921)
    #dbg_value(ptr %1, !8913, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8921)
  %.sroa.07.0.copyload = load ptr, ptr %2, align 8, !dbg !9035 ; 2 uses
    #dbg_value(ptr %.sroa.07.0.copyload, !8914, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8921)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !9035
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !9035 ; 6 uses
    #dbg_value(i64 %.sroa.4.0.copyload, !8914, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8921)
  %.sroa.58.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !9035
  %.sroa.58.0.copyload = load ptr, ptr %.sroa.58.0..sroa_idx, align 8, !dbg !9035 ; 7 uses
    #dbg_value(ptr %.sroa.58.0.copyload, !8914, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !8921)
    #dbg_value(ptr %.sroa.07.0.copyload, !8922, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8940)
    #dbg_value(i64 %.sroa.4.0.copyload, !8922, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8940)
    #dbg_value(ptr %.sroa.58.0.copyload, !8922, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !8940)
    #dbg_value(ptr %0, !8928, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8819)
    #dbg_value(ptr %1, !8928, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8819)
    #dbg_declare(ptr poison, !8929, !DIExpression(), !8820)
    #dbg_declare(ptr poison, !8932, !DIExpression(), !8821)
    #dbg_value(i64 16, !8941, !DIExpression(), !8829)
    #dbg_value(i64 1, !8951, !DIExpression(), !8832)
    #dbg_value(ptr %1, !8931, !DIExpression(), !8833)
    #dbg_value(ptr poison, !8954, !DIExpression(), !8836)
    #dbg_value(ptr poison, !8955, !DIExpression(), !8837)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !9036
  %i.a = icmp eq ptr %0, %1, !dbg !9037
  br i1 %i.a, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterINtNtNtBb_3ops5range5RangeyEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1p_8adapters3map8map_foldRBQ_BQ_uNvYBQ_NtNtBb_5clone5Clone5cloneNCINvNvB1j_8for_each4callBQ_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB3R_3VecBQ_E14extend_trustedINtNtB2b_6cloned6ClonedBF_EE0E0E0ECshovLROGBtMy_11quinn_proto.exit, label %bb.b, !dbg !9038

bb.b:                                             ; preds = %bb.a
    #dbg_value(i64 0, !8933, !DIExpression(), !8840)
    #dbg_value(i64 0, !8952, !DIExpression(), !8832)
    #dbg_value(ptr %1, !8936, !DIExpression(), !8841)
    #dbg_value(ptr %1, !8948, !DIExpression(), !8842)
    #dbg_value(ptr %1, !8960, !DIExpression(), !8844)
    #dbg_value(ptr %0, !8949, !DIExpression(), !8842)
    #dbg_value(ptr %0, !8960, !DIExpression(), !8846)
    #dbg_value(ptr %1, !8945, !DIExpression(), !8847)
    #dbg_value(ptr %0, !8946, !DIExpression(), !8847)
    #dbg_value(ptr %0, !8943, !DIExpression(), !8848)
    #dbg_value(ptr %1, !8942, !DIExpression(), !8848)
  %i.b = ptrtoint ptr %1 to i64, !dbg !9039
  %i.c = ptrtoint ptr %0 to i64, !dbg !9039
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !9039       ; 4 uses
  %i.e = lshr i64 %i.d, 4, !dbg !9039             ; 4 uses
    #dbg_value(i64 %i.e, !8934, !DIExpression(), !8849)
  %min.iters.check = icmp ult i64 %i.d, 160, !dbg !9040
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck, !dbg !9040

vector.memcheck:                                  ; preds = %bb.b
  %i.f = shl i64 %.sroa.4.0.copyload, 4, !dbg !9040 ; 2 uses
  %i.g = getelementptr i8, ptr %.sroa.58.0.copyload, i64 %i.f, !dbg !9040
  %scevgep10 = getelementptr i8, ptr %.sroa.58.0.copyload, i64 %i.f, !dbg !9040
  %scevgep11 = getelementptr i8, ptr %scevgep10, i64 %i.d, !dbg !9040
  %bound0 = icmp ult ptr %i.g, %1, !dbg !9040
  %bound1 = icmp ult ptr %0, %scevgep11, !dbg !9040
  %found.conflict = and i1 %bound0, %bound1, !dbg !9040
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph, !dbg !9041

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.e, 1152921504606846974      ; 4 uses
  %i.h = add i64 %.sroa.4.0.copyload, %n.vec      ; 2 uses
  br label %vector.body, !dbg !9041

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !9041 ; 4 uses
  %i.i = add i64 %.sroa.4.0.copyload, %index      ; 2 uses
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %index, !dbg !9042
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %index, !dbg !9042
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !9042
  %wide.load = load <2 x i64>, ptr %i.j, align 8, !dbg !9043, !noalias !8965
  %wide.load12 = load <2 x i64>, ptr %i.l, align 8, !dbg !9043, !noalias !8965
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %.sroa.58.0.copyload, i64 %i.i, !dbg !9044
  %i.n = getelementptr [16 x i8], ptr %.sroa.58.0.copyload, i64 %i.i, !dbg !9044
  %i.o = getelementptr i8, ptr %i.n, i64 16, !dbg !9044
  store <2 x i64> %wide.load, ptr %i.m, align 8, !dbg !9045, !alias.scope !8997, !noalias !8998
  store <2 x i64> %wide.load12, ptr %i.o, align 8, !dbg !9045, !alias.scope !8997, !noalias !8998
  %index.next = add nuw i64 %index, 2, !dbg !9041 ; 2 uses
  %i.p = icmp eq i64 %index.next, %n.vec, !dbg !9046
  br i1 %i.p, label %middle.block, label %vector.body, !dbg !9046, !llvm.loop !8873

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.e, %n.vec, !dbg !9046
  br i1 %cmp.n, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterINtNtNtBb_3ops5range5RangeyEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1p_8adapters3map8map_foldRBQ_BQ_uNvYBQ_NtNtBb_5clone5Clone5cloneNCINvNvB1j_8for_each4callBQ_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB3R_3VecBQ_E14extend_trustedINtNtB2b_6cloned6ClonedBF_EE0E0E0ECshovLROGBtMy_11quinn_proto.exit, label %scalar.ph.preheader, !dbg !9046

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.b, %middle.block
  %.ph = phi i64 [ %.sroa.4.0.copyload, %vector.memcheck ], [ %.sroa.4.0.copyload, %bb.b ], [ %i.h, %middle.block ] ; 3 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.b ], [ %n.vec, %middle.block ] ; 4 uses
  %.neg = or disjoint i64 %.sroa.01.0.i.ph, 1, !dbg !9046
  %i.q = and i64 %i.d, 16, !dbg !9046
  %lcmp.mod.not = icmp eq i64 %i.q, 0, !dbg !9046
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !9046

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
    #dbg_value(i64 poison, !8952, !DIExpression(), !8832)
    #dbg_value(i64 poison, !8933, !DIExpression(), !8840)
    #dbg_value(ptr %0, !8962, !DIExpression(), !8874)
    #dbg_value(i64 poison, !8963, !DIExpression(), !8874)
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.0.i.ph, !dbg !9042
    #dbg_value(ptr %i.r, !8960, !DIExpression(), !8876)
    #dbg_value(ptr poison, !8991, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !8877)
    #dbg_declare(ptr poison, !8989, !DIExpression(), !8878)
    #dbg_value(ptr poison, !8990, !DIExpression(), !8877)
    #dbg_value(ptr poison, !8981, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !8879)
    #dbg_declare(ptr poison, !8982, !DIExpression(), !8880)
    #dbg_value(i64 poison, !8980, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8879)
    #dbg_value(i64 poison, !8980, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8879)
    #dbg_value(ptr poison, !8972, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 16), !8881)
    #dbg_value(ptr poison, !8973, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !8881)
    #dbg_value(i64 poison, !8971, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8881)
    #dbg_value(i64 poison, !8971, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8881)
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %.sroa.58.0.copyload, i64 %.ph, !dbg !9044
  %i.t = load <2 x i64>, ptr %i.r, align 8, !dbg !9043, !noalias !8965
  store <2 x i64> %i.t, ptr %i.s, align 8, !dbg !9045, !noalias !9001
  %i.u = add i64 %.ph, 1, !dbg !9047              ; 2 uses
  %i.v = or disjoint i64 %.sroa.01.0.i.ph, 1, !dbg !9048
    #dbg_value(i64 %i.v, !8933, !DIExpression(), !8840)
    #dbg_value(i64 %i.v, !8952, !DIExpression(), !8832)
  br label %scalar.ph.prol.loopexit, !dbg !9046

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.u, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.u, %scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], [ %i.v, %scalar.ph.prol ]
  %i.w = icmp eq i64 %i.e, %.neg, !dbg !9046
  br i1 %i.w, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterINtNtNtBb_3ops5range5RangeyEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1p_8adapters3map8map_foldRBQ_BQ_uNvYBQ_NtNtBb_5clone5Clone5cloneNCINvNvB1j_8for_each4callBQ_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB3R_3VecBQ_E14extend_trustedINtNtB2b_6cloned6ClonedBF_EE0E0E0ECshovLROGBtMy_11quinn_proto.exit, label %scalar.ph, !dbg !9046

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.x = phi i64 [ %i.ag, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ], !dbg !9042 ; 3 uses
  %.sroa.01.0.i = phi i64 [ %i.ah, %scalar.ph ], [ %.sroa.01.0.i.unr, %scalar.ph.prol.loopexit ], !dbg !9041 ; 3 uses
    #dbg_value(i64 %.sroa.01.0.i, !8952, !DIExpression(), !8832)
    #dbg_value(i64 %.sroa.01.0.i, !8933, !DIExpression(), !8840)
    #dbg_value(ptr %0, !8962, !DIExpression(), !8874)
    #dbg_value(i64 %.sroa.01.0.i, !8963, !DIExpression(), !8874)
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !9042
    #dbg_value(ptr %i.y, !8960, !DIExpression(), !8876)
    #dbg_value(ptr poison, !8991, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !8877)
    #dbg_declare(ptr poison, !8989, !DIExpression(), !8878)
    #dbg_value(ptr poison, !8990, !DIExpression(), !8877)
    #dbg_value(ptr poison, !8981, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !8879)
    #dbg_declare(ptr poison, !8982, !DIExpression(), !8880)
    #dbg_value(i64 poison, !8980, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8879)
    #dbg_value(i64 poison, !8980, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8879)
    #dbg_value(ptr poison, !8972, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 16), !8881)
    #dbg_value(ptr poison, !8973, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !8881)
    #dbg_value(i64 poison, !8971, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8881)
    #dbg_value(i64 poison, !8971, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8881)
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %.sroa.58.0.copyload, i64 %i.x, !dbg !9044
  %i.aa = load <2 x i64>, ptr %i.y, align 8, !dbg !9043, !noalias !8965
  store <2 x i64> %i.aa, ptr %i.z, align 8, !dbg !9045, !noalias !9001
    #dbg_value(i64 %.sroa.01.0.i, !8952, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !8832)
    #dbg_value(i64 %.sroa.01.0.i, !8933, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !8840)
    #dbg_value(i64 %.sroa.01.0.i, !8963, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !8874)
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !9042
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16, !dbg !9042
    #dbg_value(ptr %i.ac, !8960, !DIExpression(), !8876)
    #dbg_declare(ptr poison, !8989, !DIExpression(), !8878)
    #dbg_declare(ptr poison, !8982, !DIExpression(), !8880)
    #dbg_value(i64 poison, !8980, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8879)
    #dbg_value(i64 poison, !8980, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8879)
    #dbg_value(i64 poison, !8971, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8881)
    #dbg_value(i64 poison, !8971, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8881)
  %i.ad = getelementptr [16 x i8], ptr %.sroa.58.0.copyload, i64 %i.x, !dbg !9044
  %i.ae = getelementptr i8, ptr %i.ad, i64 16, !dbg !9044
  %i.af = load <2 x i64>, ptr %i.ac, align 8, !dbg !9043, !noalias !8965
  store <2 x i64> %i.af, ptr %i.ae, align 8, !dbg !9045, !noalias !9001
  %i.ag = add i64 %i.x, 2, !dbg !9047             ; 2 uses
  %i.ah = add nuw i64 %.sroa.01.0.i, 2, !dbg !9048 ; 2 uses
    #dbg_value(i64 %i.ah, !8933, !DIExpression(), !8840)
    #dbg_value(i64 %i.ah, !8952, !DIExpression(), !8832)
  %i.ai = icmp eq i64 %i.ah, %i.e, !dbg !9046
  br i1 %i.ai, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterINtNtNtBb_3ops5range5RangeyEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1p_8adapters3map8map_foldRBQ_BQ_uNvYBQ_NtNtBb_5clone5Clone5cloneNCINvNvB1j_8for_each4callBQ_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB3R_3VecBQ_E14extend_trustedINtNtB2b_6cloned6ClonedBF_EE0E0E0ECshovLROGBtMy_11quinn_proto.exit, label %scalar.ph, !dbg !9046, !llvm.loop !8884

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterINtNtNtBb_3ops5range5RangeyEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1p_8adapters3map8map_foldRBQ_BQ_uNvYBQ_NtNtBb_5clone5Clone5cloneNCINvNvB1j_8for_each4callBQ_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB3R_3VecBQ_E14extend_trustedINtNtB2b_6cloned6ClonedBF_EE0E0E0ECshovLROGBtMy_11quinn_proto.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  %storemerge = phi i64 [ %.sroa.4.0.copyload, %bb.a ], [ %i.h, %middle.block ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.ag, %scalar.ph ], !dbg !9049
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.07.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.07.0.copyload, align 8, !dbg !9049, !noalias !8965
  ret void, !dbg !9050
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define hidden void @_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6clonedINtB5_6ClonedINtNtNtBb_5slice4iter4IterNtNtCshovLROGBtMy_11quinn_proto6packet7SpaceIdEENtNtNtB9_6traits8iterator8Iterator4foldINtNtBb_3cmp11KeyAndValueNtNtCsG258MDvU3F_3std4time7InstantTB3g_B1s_EENCINvNtB7_10filter_map15filter_map_foldB1s_B3O_B2R_NCNvMNtB1w_10connectionNtB4T_10Connection19loss_time_and_space0NCINvNtB7_3map8map_foldB3O_B2R_B2R_NCINvNvB2e_10min_by_key3keyB3O_B3g_NCB4Q_s_0E0NvYB2R_NtB2U_3Ord3minE0E0EB1w_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noundef nonnull %1, ptr noundef %2, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %3, ptr nofree noundef nonnull readonly align 16 captures(none) %4) unnamed_addr #5 personality ptr @rust_eh_personality !dbg !9056 {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 11 uses
  %i.b = alloca [40 x i8], align 8                ; 7 uses
    #dbg_declare(ptr %i.b, !9226, !DIExpression(), !9071)
    #dbg_declare(ptr %i.b, !9270, !DIExpression(), !9077)
    #dbg_declare(ptr %i.b, !9286, !DIExpression(), !9078)
  %i.c = alloca [40 x i8], align 8                ; 5 uses
    #dbg_value(ptr %1, !9219, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9295)
    #dbg_value(ptr %2, !9219, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9295)
    #dbg_declare(ptr %3, !9220, !DIExpression(), !9296)
    #dbg_value(ptr %4, !9221, !DIExpression(), !9295)
    #dbg_declare(ptr %3, !9264, !DIExpression(), !9297)
    #dbg_value(ptr %1, !9263, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9298)
    #dbg_value(ptr %2, !9263, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9298)
    #dbg_value(ptr %4, !9265, !DIExpression(), !9298)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9299), !dbg !9436
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9300), !dbg !9436
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !9437
    #dbg_value(ptr %4, !9245, !DIExpression(), !9086)
    #dbg_value(ptr %1, !9243, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9086)
    #dbg_value(ptr %2, !9243, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9086)
    #dbg_declare(ptr %3, !9244, !DIExpression(), !9087)
    #dbg_declare(ptr %i.b, !9248, !DIExpression(), !9088)
    #dbg_value(i64 1, !9310, !DIExpression(), !9096)
    #dbg_value(i64 1, !9327, !DIExpression(), !9099)
    #dbg_value(ptr %2, !9247, !DIExpression(), !9100)
    #dbg_value(ptr poison, !9307, !DIExpression(), !9101)
    #dbg_value(ptr poison, !9308, !DIExpression(), !9102)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ], !dbg !9437
  %i.d = icmp eq ptr %1, %2, !dbg !9438
  br i1 %i.d, label %bb.c, label %bb.b, !dbg !9439

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(40) %3, i64 40, i1 false), !dbg !9440, !noalias !9299
    #dbg_value(i64 0, !9249, !DIExpression(), !9103)
    #dbg_value(i64 0, !9328, !DIExpression(), !9099)
    #dbg_value(ptr %2, !9252, !DIExpression(), !9104)
    #dbg_value(ptr %2, !9324, !DIExpression(), !9105)
    #dbg_value(ptr %2, !9305, !DIExpression(), !9107)
    #dbg_value(ptr %1, !9325, !DIExpression(), !9105)
    #dbg_value(ptr %1, !9305, !DIExpression(), !9109)
    #dbg_value(ptr %2, !9318, !DIExpression(), !9110)
    #dbg_value(ptr %1, !9319, !DIExpression(), !9110)
    #dbg_value(ptr %1, !9314, !DIExpression(), !9111)
    #dbg_value(ptr %2, !9313, !DIExpression(), !9111)
  %i.e = ptrtoint ptr %2 to i64, !dbg !9441
  %i.f = ptrtoint ptr %1 to i64, !dbg !9441
  %i.g = sub nuw i64 %i.e, %i.f, !dbg !9441
    #dbg_value(i64 %i.g, !9250, !DIExpression(), !9112)
  %.sroa.10.52..sroa.01.sroa.7.40..sroa_idx.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  %.sroa.01.sroa.6.40..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.sroa.63.40..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %.sroa.7.40..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  br label %bb.d, !dbg !9442

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull readonly align 8 dereferenceable(40) %3, i64 40, i1 false), !dbg !9443, !alias.scope !9330
  br label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtCshovLROGBtMy_11quinn_proto6packet7SpaceIdENtNtNtNtBb_4iter6traits8iterator8Iterator4foldINtNtBb_3cmp11KeyAndValueNtNtCsG258MDvU3F_3std4time7InstantTB2K_BQ_EENCINvNtNtB1H_8adapters3map8map_foldRBQ_BQ_B2l_NvYBQ_NtNtBb_5clone5Clone5cloneNCINvNtB3z_10filter_map15filter_map_foldBQ_B3i_B2l_NCNvMNtBU_10connectionNtB5B_10Connection19loss_time_and_space0NCIB3v_B3i_B2l_B2l_NCINvNvB1B_10min_by_key3keyB3i_B2K_NCB5y_s_0E0NvYB2l_NtB2o_3Ord3minE0E0E0EBU_.exit, !dbg !9444

bb.d:                                             ; preds = %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRNtNtCshovLROGBtMy_11quinn_proto6packet7SpaceIdBV_INtNtBa_3cmp11KeyAndValueNtNtCsG258MDvU3F_3std4time7InstantTB27_BV_EENvYBV_NtNtBa_5clone5Clone5cloneNCINvNtB6_10filter_map15filter_map_foldBV_B2F_B1I_NCNvMNtBZ_10connectionNtB4d_10Connection19loss_time_and_space0NCIB2_B2F_B1I_B1I_NCINvNvNtNtNtB8_6traits8iterator8Iterator10min_by_key3keyB2F_B27_NCB4a_s_0E0NvYB1I_NtB1L_3Ord3minE0E0E0BZ_.exit.i, %bb.b
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.v, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRNtNtCshovLROGBtMy_11quinn_proto6packet7SpaceIdBV_INtNtBa_3cmp11KeyAndValueNtNtCsG258MDvU3F_3std4time7InstantTB27_BV_EENvYBV_NtNtBa_5clone5Clone5cloneNCINvNtB6_10filter_map15filter_map_foldBV_B2F_B1I_NCNvMNtBZ_10connectionNtB4d_10Connection19loss_time_and_space0NCIB2_B2F_B1I_B1I_NCINvNvNtNtNtB8_6traits8iterator8Iterator10min_by_key3keyB2F_B27_NCB4a_s_0E0NvYB1I_NtB1L_3Ord3minE0E0E0BZ_.exit.i ], !dbg !9445 ; 2 uses
    #dbg_value(i64 %.sroa.01.0.i, !9328, !DIExpression(), !9099)
    #dbg_value(i64 %.sroa.01.0.i, !9249, !DIExpression(), !9103)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !9446
    #dbg_value(ptr %1, !9331, !DIExpression(), !9115)
    #dbg_value(i64 %.sroa.01.0.i, !9332, !DIExpression(), !9115)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.01.0.i, !dbg !9447
    #dbg_value(ptr %i.k, !9305, !DIExpression(), !9117)
  %.val20.i = load i8, ptr %i.k, align 1, !dbg !9446, !range !3907, !noalias !9330, !noundef !1871 ; 2 uses
    #dbg_value(ptr poison, !9234, !DIExpression(DW_OP_deref), !9118)
    #dbg_value(ptr poison, !9233, !DIExpression(), !9118)
end_hunk_0
begin_hunk_1_@_RNvXs0_NtNtCshovLROGBtMy_11quinn_proto10congestion5cubicNtB5_5CubicNtB7_10Controller7metrics
define internal void @_RNvXs0_NtNtCshovLROGBtMy_11quinn_proto10congestion5cubicNtB5_5CubicNtB7_10Controller7metrics(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 24), (32, 40)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(72) %1) unnamed_addr #8 !dbg !21885 {
bb.a:
    #dbg_value(ptr %1, !21889, !DIExpression(), !21891)
    #dbg_value(ptr %1, !21892, !DIExpression(), !21895)
  %i.a = load i64, ptr %1, align 8, !dbg !21896, !noundef !1871
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !21897
  %i.c = load i64, ptr %i.b, align 8, !dbg !21897, !noundef !1871
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !21898
  store i64 %i.a, ptr %i.d, align 8, !dbg !21898
  store i64 1, ptr %0, align 8, !dbg !21898
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !21898
  store i64 %i.c, ptr %i.e, align 8, !dbg !21898
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !21898
  store i64 0, ptr %i.f, align 8, !dbg !21898
  ret void, !dbg !21899
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXs0_NtNtCshovLROGBtMy_11quinn_proto10congestion5cubicNtB5_5CubicNtB7_10Controller8into_any(ptr noalias noundef nonnull align 8 %0) unnamed_addr #10 !dbg !21900 {
bb.a:
    #dbg_value(ptr %0, !21903, !DIExpression(), !21905)
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0, !dbg !21906
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @115, 1, !dbg !21906
  ret { ptr, ptr } %i.b, !dbg !21906
}

; Function Attrs: nonlazybind uwtable
define { ptr, ptr } @_RNvXs0_NtNtCshovLROGBtMy_11quinn_proto10congestion5cubicNtB5_5CubicNtB7_10Controller9clone_box(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(72) %0) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !21907 {
bb.a:
  %i.a = alloca [72 x i8], align 16               ; 9 uses
    #dbg_value(ptr %0, !21955, !DIExpression(), !21957)
    #dbg_value(ptr %0, !21958, !DIExpression(), !21964)
    #dbg_value(i64 1, !21965, !DIExpression(), !21971)
    #dbg_value(i8 0, !21967, !DIExpression(), !21971)
    #dbg_value(i64 1, !21977, !DIExpression(), !21982)
    #dbg_value(i8 0, !21979, !DIExpression(), !21982)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !22012
    #dbg_value(ptr %0, !21974, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !21983)
    #dbg_value(ptr %0, !21984, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !21987)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !22013
  %i.c = load ptr, ptr %i.b, align 8, !dbg !22013, !nonnull !1871, !noundef !1871 ; 3 uses
    #dbg_value(ptr %i.c, !21966, !DIExpression(), !21989)
    #dbg_value(ptr %i.c, !21978, !DIExpression(), !21982)
  %i.d = atomicrmw add ptr %i.c, i64 1 monotonic, align 8, !dbg !22014
    #dbg_value(i64 %i.d, !21975, !DIExpression(), !21990)
  %i.e = icmp slt i64 %i.d, 0, !dbg !22015
  br i1 %i.e, label %bb.g, label %bb.b, !dbg !22015

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !21993, !DIExpression(DW_OP_plus_uconst, 56, DW_OP_stack_value), !22001)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !22016
  %i.g = load i32, ptr %i.f, align 8, !dbg !22016, !range !5853, !noundef !1871 ; 2 uses
  %.not = icmp eq i32 %i.g, -1, !dbg !22016
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !22017
  %i.i = load i64, ptr %i.h, align 8, !dbg !22017
  %.sroa.0.0 = select i1 %.not, i64 undef, i64 %i.i, !dbg !22017
    #dbg_value(ptr %0, !22002, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !22009)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !22009
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !21969
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false), !dbg !22009
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !21969
  %i.m = load i64, ptr %i.l, align 8, !dbg !21969, !noundef !1871
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 48, !dbg !21969 ; 2 uses
  store ptr %i.c, ptr %i.n, align 16, !dbg !21969
  %i.o = load <2 x i64>, ptr %0, align 8, !dbg !21969
  store <2 x i64> %i.o, ptr %i.a, align 16, !dbg !21969
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 56, !dbg !21969
  store i64 %.sroa.0.0, ptr %i.p, align 8, !dbg !21969
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 64, !dbg !21969
  store i32 %i.g, ptr %i.q, align 16, !dbg !21969
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 40, !dbg !21969
  store i64 %i.m, ptr %i.r, align 8, !dbg !21969
    #dbg_declare(ptr %i.a, !7275, !DIExpression(), !21919)
    #dbg_value(i64 8, !7282, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21921)
    #dbg_value(i64 8, !7287, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21923)
    #dbg_value(i64 8, !7292, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21925)
    #dbg_value(i64 72, !7282, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21921)
    #dbg_value(i64 72, !7287, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21923)
    #dbg_value(i64 72, !7292, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21925)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !7290, !DIExpression(), !21923)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !7296, !DIExpression(), !21925)
    #dbg_value(i8 0, !7297, !DIExpression(), !21925)
    #dbg_value(i64 8, !7299, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21927)
    #dbg_value(i64 8, !7319, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21929)
    #dbg_value(i64 72, !7299, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21927)
    #dbg_value(i64 72, !7319, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21929)
    #dbg_value(i1 false, !7303, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !21927)
    #dbg_value(i64 72, !7304, !DIExpression(), !21930)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #33, !dbg !22018, !noalias !22010
  %i.s = tail call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 56, 545) 72, i64 noundef range(i64 8, 17) 8) #33, !dbg !22019, !noalias !22010 ; 3 uses
  %i.t = icmp eq ptr %i.s, null, !dbg !22020
  br i1 %i.t, label %bb.c, label %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNtNtNtCshovLROGBtMy_11quinn_proto10congestion5cubic5CubicE3newBK_.exit, !dbg !22021, !prof !3989

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #37
          to label %.noexc unwind label %bb.d, !dbg !22022

.noexc:                                           ; preds = %bb.c
  unreachable, !dbg !22022

bb.d:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.a, !4085, !DIExpression(), !21934)
    #dbg_value(ptr %i.n, !4090, !DIExpression(), !21936)
    #dbg_value(ptr %i.n, !4096, !DIExpression(), !21938)
    #dbg_value(i64 1, !4103, !DIExpression(), !21940)
    #dbg_value(i8 1, !4105, !DIExpression(), !21940)
    #dbg_value(i64 1, !4107, !DIExpression(), !21942)
    #dbg_value(i8 1, !4109, !DIExpression(), !21942)
    #dbg_value(ptr %i.c, !4104, !DIExpression(), !21943)
    #dbg_value(ptr %i.c, !4108, !DIExpression(), !21942)
  %i.v = atomicrmw sub ptr %i.c, i64 1 release, align 8, !dbg !22023, !noalias !22011
  %i.w = icmp eq i64 %i.v, 1, !dbg !22024
  br i1 %i.w, label %bb.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshovLROGBtMy_11quinn_proto10congestion5cubic5CubicEBH_.exit, !dbg !22024

bb.e:                                             ; preds = %bb.d
    #dbg_value(i8 2, !4078, !DIExpression(), !21951)
  fence acquire, !dbg !22025
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCshovLROGBtMy_11quinn_proto10congestion5cubic11CubicConfigE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.n) #31
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshovLROGBtMy_11quinn_proto10congestion5cubic5CubicEBH_.exit unwind label %bb.f, !dbg !22026

bb.f:                                             ; preds = %bb.e
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #32, !dbg !22027
  unreachable, !dbg !22027

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshovLROGBtMy_11quinn_proto10congestion5cubic5CubicEBH_.exit: ; preds = %bb.d, %bb.e
  resume { ptr, i32 } %i.u, !dbg !22027

_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNtNtNtCshovLROGBtMy_11quinn_proto10congestion5cubic5CubicE3newBK_.exit: ; preds = %bb.b
    #dbg_value(ptr %i.s, !7280, !DIExpression(), !21952)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.s, ptr noundef nonnull align 16 dereferenceable(72) %i.a, i64 72, i1 false), !dbg !22028
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !22029
  %i.y = insertvalue { ptr, ptr } poison, ptr %i.s, 0, !dbg !22030
  %i.z = insertvalue { ptr, ptr } %i.y, ptr @116, 1, !dbg !22030
  ret { ptr, ptr } %i.z, !dbg !22030

bb.g:                                             ; preds = %bb.a
  tail call void @llvm.trap(), !dbg !22031
  unreachable, !dbg !22031
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters6clonedINtB5_6ClonedINtNtNtBb_5slice4iter4IterINtNtNtBb_3ops5range5RangeyEEENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCshovLROGBtMy_11quinn_proto(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %1) unnamed_addr #11 personality ptr @rust_eh_personality !dbg !22032 {
bb.a:
    #dbg_value(ptr %1, !22065, !DIExpression(), !22067)
    #dbg_declare(ptr poison, !22068, !DIExpression(), !22074)
    #dbg_value(ptr %1, !22077, !DIExpression(), !22040)
    #dbg_value(ptr %1, !22082, !DIExpression(), !22043)
    #dbg_value(ptr %1, !22087, !DIExpression(), !22048)
    #dbg_value(i64 1, !22091, !DIExpression(), !22048)
    #dbg_value(i64 1, !22096, !DIExpression(), !22051)
    #dbg_value(i64 -1, !22100, !DIExpression(), !22054)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !22114 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !dbg !22114, !alias.scope !22106, !nonnull !1871, !noundef !1871 ; 2 uses
    #dbg_value(ptr %i.b, !22080, !DIExpression(), !22057)
    #dbg_value(ptr %1, !22107, !DIExpression(), !22060)
    #dbg_value(ptr poison, !22108, !DIExpression(), !22061)
  %i.c = load ptr, ptr %1, align 8, !dbg !22115, !alias.scope !22106, !nonnull !1871, !noundef !1871
  %i.d = icmp eq ptr %i.c, %i.b, !dbg !22115
  br i1 %i.d, label %_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterINtNtNtBa_3ops5range5RangeyEENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCshovLROGBtMy_11quinn_proto.exit.thread, label %bb.b, !dbg !22116

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %i.a, !22094, !DIExpression(), !22062)
    #dbg_value(ptr %i.b, !22098, !DIExpression(), !22051)
    #dbg_value(ptr %i.b, !22104, !DIExpression(), !22054)
  %i.e = getelementptr inbounds i8, ptr %i.b, i64 -16, !dbg !22117 ; 2 uses
    #dbg_value(ptr %i.e, !22098, !DIExpression(), !22051)
    #dbg_value(ptr %i.e, !22104, !DIExpression(), !22054)
  store ptr %i.e, ptr %i.a, align 8, !dbg !22118, !alias.scope !22106
    #dbg_value(ptr %i.e, !22075, !DIExpression(), !22110)
    #dbg_value(ptr %i.e, !22069, !DIExpression(), !22111)
    #dbg_value(ptr %i.e, !22070, !DIExpression(), !22112)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !22119
  %i.g = load <2 x i64>, ptr %i.e, align 8, !dbg !22120
  store <2 x i64> %i.g, ptr %i.f, align 8, !dbg !22119
  br label %_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterINtNtNtBa_3ops5range5RangeyEENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCshovLROGBtMy_11quinn_proto.exit.thread, !dbg !22121

_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterINtNtNtBa_3ops5range5RangeyEENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCshovLROGBtMy_11quinn_proto.exit.thread: ; preds = %bb.a, %bb.b
  %storemerge = phi i64 [ 1, %bb.b ], [ 0, %bb.a ], !dbg !22111
  store i64 %storemerge, ptr %0, align 8, !dbg !22111
  ret void, !dbg !22122
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1X_CseEeXhZwqjpo_16rustls_pki_typesNtB6_8UnixTimeNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #6 !dbg !1474 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
    #dbg_value(ptr %0, !7361, !DIExpression(), !22123)
    #dbg_value(ptr %1, !7362, !DIExpression(), !22123)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !22124
  store ptr %0, ptr %i.a, align 8, !dbg !22124
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @118, i64 noundef 8, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @117), !dbg !22125
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !22126
  ret i1 %i.b, !dbg !22127
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef { i64, float } @_RNvXs1_NtNtCshovLROGBtMy_11quinn_proto10congestion8new_renoNtB5_13NewRenoConfigNtNtCskKLDkoKarTP_4core7default7Default7default() unnamed_addr #10 !dbg !22128 {
bb.a:
  ret { i64, float } { i64 12000, float 5.000000e-01 }, !dbg !22132
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator3any5checkRNtNtNtCshovLROGBtMy_11quinn_proto10connection7streams13PendingStreamNCNvMs_NtB1N_5stateNtB2Y_12StreamsState20can_send_stream_data0E0INtB7_5FnMutTuB1K_EE8call_mutB1R_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !22139 {
bb.a:
    #dbg_value(ptr %1, !22341, !DIExpression(), !22349)
    #dbg_value(ptr %0, !22340, !DIExpression(), !22349)
  %i.a = load ptr, ptr %0, align 8, !dbg !22530, !nonnull !1871, !align !3909, !noundef !1871
  %.val = load ptr, ptr %i.a, align 8, !dbg !22531, !nonnull !1871, !align !3909, !noundef !1871 ; 4 uses
    #dbg_value(ptr poison, !22350, !DIExpression(DW_OP_deref), !22142)
    #dbg_declare(ptr poison, !22354, !DIExpression(), !22143)
    #dbg_value(ptr %1, !22353, !DIExpression(), !22142)
    #dbg_value(ptr poison, !22358, !DIExpression(DW_OP_deref, DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !22146)
    #dbg_value(ptr %1, !22362, !DIExpression(), !22146)
    #dbg_declare(ptr poison, !22364, !DIExpression(), !22155)
    #dbg_declare(ptr poison, !22384, !DIExpression(), !22160)
    #dbg_value(ptr %.val, !22393, !DIExpression(DW_OP_plus_uconst, 144, DW_OP_stack_value), !22163)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !22532 ; 2 uses
    #dbg_value(ptr %i.b, !22397, !DIExpression(), !22164)
    #dbg_value(ptr %.val, !22400, !DIExpression(DW_OP_plus_uconst, 144, DW_OP_stack_value), !22169)
    #dbg_value(ptr %i.b, !22404, !DIExpression(), !22169)
    #dbg_value(ptr %i.b, !22408, !DIExpression(), !22172)
    #dbg_value(ptr %.val, !22411, !DIExpression(DW_OP_plus_uconst, 144, DW_OP_stack_value), !22175)
    #dbg_value(ptr %.val, !22416, !DIExpression(DW_OP_plus_uconst, 144, DW_OP_stack_value), !22178)
  %i.c = getelementptr inbounds nuw i8, ptr %.val, i64 168, !dbg !22533
  %i.d = load i64, ptr %i.c, align 8, !dbg !22533, !alias.scope !22421, !noalias !22422, !noundef !1871
  %i.e = icmp eq i64 %i.d, 0, !dbg !22534
  br i1 %i.e, label %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3any5checkRNtNtNtCshovLROGBtMy_11quinn_proto10connection7streams13PendingStreamNCNvMs_NtB1e_5stateNtB2p_12StreamsState20can_send_stream_data0E0B1i_.exit, label %bb.b, !dbg !22535

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %.val, i64 144, !dbg !22536
    #dbg_value(ptr %i.f, !22400, !DIExpression(), !22169)
    #dbg_value(ptr %i.f, !22411, !DIExpression(), !22175)
    #dbg_value(ptr %i.f, !22416, !DIExpression(), !22178)
  %i.g = getelementptr inbounds nuw i8, ptr %.val, i64 176, !dbg !22537
    #dbg_value(ptr %i.g, !22409, !DIExpression(), !22172)
  %i.h = tail call noundef i64 @_RINvYNtCs1fPtKw3lI00_10rustc_hash13FxBuildHasherNtNtCskKLDkoKarTP_4core4hash11BuildHasher8hash_oneRNtCshovLROGBtMy_11quinn_proto8StreamIdEB1B_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b), !dbg !22538 ; 2 uses
    #dbg_value(i64 %i.h, !22405, !DIExpression(), !22186)
    #dbg_value(i64 %i.h, !22423, !DIExpression(), !22194)
    #dbg_value(ptr %i.f, !22439, !DIExpression(), !22194)
    #dbg_value(ptr %i.b, !22440, !DIExpression(), !22194)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22443), !dbg !22539
    #dbg_value(ptr poison, !6917, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22206)
    #dbg_value(ptr %i.b, !22458, !DIExpression(), !22207)
    #dbg_value(ptr %i.f, !22456, !DIExpression(), !22207)
    #dbg_value(i64 %i.h, !22457, !DIExpression(), !22207)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22462), !dbg !22540
    #dbg_value(ptr poison, !6953, !DIExpression(DW_OP_LLVM_fragment, 0, 16), !22211)
    #dbg_value(ptr poison, !6963, !DIExpression(), !22213)
    #dbg_value(ptr %i.f, !6926, !DIExpression(), !22206)
    #dbg_value(ptr %i.f, !6969, !DIExpression(), !22215)
    #dbg_value(ptr %i.f, !6975, !DIExpression(), !22217)
    #dbg_value(i64 %i.h, !6927, !DIExpression(), !22206)
    #dbg_value(i64 %i.h, !6983, !DIExpression(), !22219)
    #dbg_value(i64 %i.h, !6973, !DIExpression(), !22215)
    #dbg_value(ptr undef, !6917, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22206)
    #dbg_value(ptr poison, !6917, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22206)
    #dbg_value(i8 -1, !6989, !DIExpression(), !22222)
  %i.i = lshr i64 %i.h, 57, !dbg !22541
  %i.j = trunc nuw nsw i64 %i.i to i8, !dbg !22542
    #dbg_value(i8 %i.j, !6928, !DIExpression(), !22223)
    #dbg_value(i8 %i.j, !6989, !DIExpression(), !22225)
  %i.k = getelementptr inbounds nuw i8, ptr %.val, i64 152, !dbg !22543
  %i.l = load i64, ptr %i.k, align 8, !dbg !22543, !alias.scope !22463, !noalias !22464, !noundef !1871 ; 2 uses
    #dbg_value(!DIArgList(i64 %i.h, i64 %i.l), !6929, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_and, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !22228)
    #dbg_value(i64 0, !6929, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22228)
  %i.m = load ptr, ptr %i.f, align 8, !alias.scope !22463, !noalias !22464, !nonnull !1871, !noundef !1871 ; 2 uses
  %i.n = insertelement <16 x i8> poison, i8 %i.j, i64 0
  %i.o = shufflevector <16 x i8> %i.n, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.c, !dbg !22544

bb.c:                                             ; preds = %bb.e, %bb.b
  %.sroa.9.0.i.i.i.i.i = phi i64 [ 0, %bb.b ], [ %i.af, %bb.e ], !dbg !22545
  %.pn.i.i.i.i = phi i64 [ %i.h, %bb.b ], [ %i.ag, %bb.e ]
  %.sroa.01.0.i.i.i.i.i = and i64 %.pn.i.i.i.i, %i.l, !dbg !22545 ; 3 uses
    #dbg_value(i64 %.sroa.01.0.i.i.i.i.i, !6929, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22228)
    #dbg_value(i64 %.sroa.9.0.i.i.i.i.i, !6929, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22228)
    #dbg_value(i64 %.sroa.01.0.i.i.i.i.i, !6980, !DIExpression(), !22217)
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 %.sroa.01.0.i.i.i.i.i, !dbg !22546
    #dbg_value(ptr %i.p, !7004, !DIExpression(), !22231)
    #dbg_value(ptr %i.p, !7011, !DIExpression(), !22233)
    #dbg_value(<2 x i64> zeroinitializer, !7015, !DIExpression(), !22234)
    #dbg_value(ptr %i.p, !7017, !DIExpression(), !22236)
    #dbg_value(ptr undef, !7018, !DIExpression(), !22236)
    #dbg_value(i64 16, !7019, !DIExpression(), !22236)
  %.sroa.0.0.copyload.i29.i.i.i.i = load <16 x i8>, ptr %i.p, align 1, !dbg !22547, !noalias !22465 ; 2 uses
    #dbg_value(<2 x i64> poison, !7015, !DIExpression(), !22234)
    #dbg_value(<2 x i64> poison, !6930, !DIExpression(), !22239)
    #dbg_value(<2 x i64> poison, !6993, !DIExpression(), !22225)
    #dbg_value(<2 x i64> poison, !7000, !DIExpression(), !22240)
    #dbg_value(<2 x i64> poison, !6993, !DIExpression(), !22222)
    #dbg_declare(ptr poison, !7021, !DIExpression(), !22242)
    #dbg_declare(ptr poison, !7024, !DIExpression(), !22243)
  %i.q = icmp eq <16 x i8> %.sroa.0.0.copyload.i29.i.i.i.i, %i.o, !dbg !22548
    #dbg_value(<16 x i8> poison, !6994, !DIExpression(), !22244)
    #dbg_declare(ptr poison, !7026, !DIExpression(), !22246)
    #dbg_value(<16 x i8> poison, !7029, !DIExpression(), !22247)
    #dbg_value(!DIArgList(<16 x i8> poison, <16 x i8> poison), !7030, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shra, DW_OP_stack_value), !22248)
  %i.r = bitcast <16 x i1> %i.q to i16, !dbg !22549 ; 2 uses
    #dbg_value(i16 %i.r, !6931, !DIExpression(), !22249)
    #dbg_value(ptr undef, !6953, !DIExpression(), !22211)
    #dbg_value(i16 %i.r, !7039, !DIExpression(), !22251)
  %.not.i.not35.i.i.i.i = icmp eq i16 %i.r, 0, !dbg !22550
  br i1 %.not.i.not35.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i, !dbg !22551

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %bb.d
  %.sroa.06.0.i36.i.i.i.i = phi i16 [ %i.ae, %bb.d ], [ %i.r, %bb.c ] ; 3 uses
    #dbg_value(i16 %.sroa.06.0.i36.i.i.i.i, !6931, !DIExpression(), !22249)
    #dbg_value(i16 %.sroa.06.0.i36.i.i.i.i, !7043, !DIExpression(), !22252)
    #dbg_value(i16 %.sroa.06.0.i36.i.i.i.i, !7050, !DIExpression(), !22254)
    #dbg_value(i16 %.sroa.06.0.i36.i.i.i.i, !7057, !DIExpression(), !22256)
    #dbg_value(i16 %.sroa.06.0.i36.i.i.i.i, !7062, !DIExpression(), !22258)
  %i.s = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i36.i.i.i.i, i1 true), !dbg !22552
  %i.t = zext nneg i16 %i.s to i64, !dbg !22553
    #dbg_value(i64 %i.t, !6957, !DIExpression(), !22259)
    #dbg_value(i16 %.sroa.06.0.i36.i.i.i.i, !7068, !DIExpression(), !22261)
    #dbg_value(!DIArgList(i16 %.sroa.06.0.i36.i.i.i.i, i16 %.sroa.06.0.i36.i.i.i.i), !6931, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_minus, DW_OP_and, DW_OP_stack_value), !22249)
    #dbg_value(i64 %i.t, !6932, !DIExpression(), !22262)
  %i.u = add i64 %.sroa.01.0.i.i.i.i.i, %i.t, !dbg !22554
  %i.v = and i64 %i.u, %i.l, !dbg !22554
    #dbg_value(i64 %i.v, !6933, !DIExpression(), !22263)
    #dbg_value(ptr poison, !22466, !DIExpression(DW_OP_deref, DW_OP_deref), !22266)
    #dbg_value(ptr poison, !22471, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 8, DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !22266)
    #dbg_value(i64 %i.v, !22470, !DIExpression(), !22266)
    #dbg_value(i64 %i.v, !22473, !DIExpression(), !22271)
    #dbg_value(i64 %i.v, !22484, !DIExpression(), !22275)
    #dbg_value(i64 %i.v, !22492, !DIExpression(), !22278)
    #dbg_value(i64 1, !22496, !DIExpression(), !22284)
    #dbg_value(ptr %.val, !22477, !DIExpression(DW_OP_plus_uconst, 144, DW_OP_stack_value), !22271)
    #dbg_value(ptr %i.m, !22488, !DIExpression(), !22275)
    #dbg_value(ptr %i.m, !22495, !DIExpression(), !22278)
  %i.w = sub nsw i64 0, %i.v, !dbg !22555
  %i.x = getelementptr inbounds [16 x i8], ptr %i.m, i64 %i.w, !dbg !22556 ; 2 uses
    #dbg_value(ptr poison, !22507, !DIExpression(), !22285)
    #dbg_value(ptr poison, !22502, !DIExpression(), !22286)
    #dbg_value(ptr %i.x, !22495, !DIExpression(), !22284)
  %i.y = getelementptr inbounds i8, ptr %i.x, i64 -16, !dbg !22557
    #dbg_value(ptr poison, !22509, !DIExpression(DW_OP_deref), !22289)
    #dbg_value(ptr %i.y, !22513, !DIExpression(), !22289)
  %i.z = tail call noundef zeroext i1 @_RNvXCsjqcU1oJFKXj_9hashbrownNtCshovLROGBtMy_11quinn_proto8StreamIdINtB2_10EquivalentBq_E10equivalentBs_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.y), !dbg !22558, !noalias !22516
    #dbg_value(i1 %i.z, !7076, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !22293)
  br i1 %i.z, label %_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapNtCshovLROGBtMy_11quinn_proto8StreamIdINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtBQ_10connection7streams4send4SendEENtCs1fPtKw3lI00_10rustc_hash13FxBuildHasherE3getBO_EBQ_.exit.i.i, label %bb.d, !dbg !22559, !prof !3981

._crit_edge.i.i.i.i:                              ; preds = %bb.d, %bb.c
    #dbg_declare(ptr poison, !7021, !DIExpression(), !22295)
    #dbg_declare(ptr poison, !7024, !DIExpression(), !22296)
  %i.aa = icmp eq <16 x i8> %.sroa.0.0.copyload.i29.i.i.i.i, splat (i8 -1), !dbg !22560
    #dbg_value(<16 x i8> poison, !6995, !DIExpression(), !22297)
    #dbg_declare(ptr poison, !7026, !DIExpression(), !22299)
    #dbg_value(<16 x i8> poison, !7029, !DIExpression(), !22300)
    #dbg_value(!DIArgList(<16 x i8> poison, <16 x i8> poison), !7030, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shra, DW_OP_stack_value), !22301)
  %i.ab = bitcast <16 x i1> %i.aa to i16, !dbg !22561
    #dbg_value(i16 %i.ab, !7076, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_lit0, DW_OP_ne, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !22303)
  %i.ac = icmp eq i16 %i.ab, 0, !dbg !22562
  br i1 %i.ac, label %bb.e, label %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3any5checkRNtNtNtCshovLROGBtMy_11quinn_proto10connection7streams13PendingStreamNCNvMs_NtB1e_5stateNtB2p_12StreamsState20can_send_stream_data0E0B1i_.exit, !dbg !22562, !prof !3989

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ad = add i16 %.sroa.06.0.i36.i.i.i.i, -1, !dbg !22563
    #dbg_value(!DIArgList(i16 %.sroa.06.0.i36.i.i.i.i, i16 %i.ad), !6931, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_and, DW_OP_stack_value), !22249)
  %i.ae = and i16 %i.ad, %.sroa.06.0.i36.i.i.i.i, !dbg !22564 ; 2 uses
    #dbg_value(i16 %i.ae, !6931, !DIExpression(), !22249)
    #dbg_value(ptr undef, !6953, !DIExpression(), !22211)
    #dbg_value(i16 %i.ae, !7039, !DIExpression(), !22251)
  %.not.i.not.i.i.i.i = icmp eq i16 %i.ae, 0, !dbg !22550
  br i1 %.not.i.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i, !dbg !22551

bb.e:                                             ; preds = %._crit_edge.i.i.i.i
    #dbg_value(ptr undef, !6963, !DIExpression(), !22213)
    #dbg_value(i64 %i.l, !6967, !DIExpression(), !22304)
  %i.af = add i64 %.sroa.9.0.i.i.i.i.i, 16, !dbg !22565 ; 2 uses
    #dbg_value(i64 %i.af, !6929, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22228)
  %i.ag = add i64 %.sroa.01.0.i.i.i.i.i, %i.af, !dbg !22566
    #dbg_value(!DIArgList(i64 %i.ag, i64 %i.l), !6929, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_and, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !22228)
  br label %bb.c, !dbg !22544

_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapNtCshovLROGBtMy_11quinn_proto8StreamIdINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtBQ_10connection7streams4send4SendEENtCs1fPtKw3lI00_10rustc_hash13FxBuildHasherE3getBO_EBQ_.exit.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.ah = getelementptr inbounds i8, ptr %i.x, i64 -8, !dbg !22567
    #dbg_value(ptr %i.ah, !22381, !DIExpression(), !22305)
    #dbg_value(ptr %i.ah, !22382, !DIExpression(), !22306)
    #dbg_value(ptr %i.ah, !22517, !DIExpression(), !22309)
    #dbg_value(ptr %i.ah, !22521, !DIExpression(), !22313)
  %i.ai = load ptr, ptr %i.ah, align 8, !dbg !22568, !align !3909, !noundef !1871 ; 2 uses
  %.not11.i.i = icmp eq ptr %i.ai, null, !dbg !22568
  br i1 %.not11.i.i, label %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3any5checkRNtNtNtCshovLROGBtMy_11quinn_proto10connection7streams13PendingStreamNCNvMs_NtB1e_5stateNtB2p_12StreamsState20can_send_stream_data0E0B1i_.exit, label %bb.f, !dbg !22569

bb.f:                                             ; preds = %_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapNtCshovLROGBtMy_11quinn_proto8StreamIdINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtBQ_10connection7streams4send4SendEENtCs1fPtKw3lI00_10rustc_hash13FxBuildHasherE3getBO_EBQ_.exit.i.i
    #dbg_value(ptr poison, !22390, !DIExpression(), !22314)
    #dbg_value(ptr poison, !22391, !DIExpression(), !22315)
    #dbg_value(ptr poison, !22524, !DIExpression(), !22318)
    #dbg_value(ptr %i.ai, !22528, !DIExpression(), !22321)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 134, !dbg !22570
  %i.ak = load i8, ptr %i.aj, align 2, !dbg !22570, !range !6495, !noundef !1871 ; 2 uses
  %i.al = icmp ne i8 %i.ak, 3, !dbg !22570
  tail call void @llvm.assume(i1 %i.al), !dbg !22570
  %i.am = icmp ne i8 %i.ak, 4, !dbg !22571
  br label %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3any5checkRNtNtNtCshovLROGBtMy_11quinn_proto10connection7streams13PendingStreamNCNvMs_NtB1e_5stateNtB2p_12StreamsState20can_send_stream_data0E0B1i_.exit, !dbg !22572

_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3any5checkRNtNtNtCshovLROGBtMy_11quinn_proto10connection7streams13PendingStreamNCNvMs_NtB1e_5stateNtB2p_12StreamsState20can_send_stream_data0E0B1i_.exit: ; preds = %._crit_edge.i.i.i.i, %bb.a, %_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapNtCshovLROGBtMy_11quinn_proto8StreamIdINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtBQ_10connection7streams4send4SendEENtCs1fPtKw3lI00_10rustc_hash13FxBuildHasherE3getBO_EBQ_.exit.i.i, %bb.f
end_hunk_1
