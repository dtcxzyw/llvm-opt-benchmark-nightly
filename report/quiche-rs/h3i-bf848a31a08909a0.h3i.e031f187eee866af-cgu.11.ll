Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quiche-rs/original/h3i-bf848a31a08909a0.h3i.e031f187eee866af-cgu.11?download=true
inline.NumInlined: 225
inline.NumDeleted: 136
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterReENvYB1n_NtNtCsexYYUdYSQU6_5alloc6string8ToString9to_stringENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2m_8for_each4callNtB1z_6StringNCINvMsk_NtB1B_3vecINtB3L_3VecB3p_E14extend_trustedBN_E0E0ECsjfnSKV9Rz3v_3h3i:bb.a
    #dbg_value(ptr poison, !8127, !DIExpression(), !7919)
    #dbg_value(ptr poison, !8132, !DIExpression(), !7922)
    #dbg_value(ptr poison, !8136, !DIExpression(), !7926)
    #dbg_declare(ptr poison, !8140, !DIExpression(), !7937)
    #dbg_value(ptr %.val27.i, !8138, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7938)
    #dbg_value(ptr %.val27.i, !8149, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7939)
    #dbg_value(ptr %.val27.i, !8147, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7940)
    #dbg_value(i64 %.val28.i, !8138, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7938)
    #dbg_value(i64 %.val28.i, !8149, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7939)
    #dbg_value(i64 %.val28.i, !8147, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7940)
    #dbg_value(ptr %.val27.i, !8145, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7941)
    #dbg_value(ptr %.val27.i, !8143, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7942)
    #dbg_value(ptr %.val27.i, !8141, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7943)
    #dbg_value(i64 %.val28.i, !8145, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7941)
    #dbg_value(i64 %.val28.i, !8143, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7942)
    #dbg_value(i64 %.val28.i, !8141, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7943)
    #dbg_value(ptr %.val27.i, !699, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7945)
    #dbg_value(i64 %.val28.i, !699, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7945)
    #dbg_declare(ptr poison, !702, !DIExpression(), !7946)
    #dbg_declare(ptr poison, !707, !DIExpression(), !7948)
    #dbg_declare(ptr poison, !714, !DIExpression(), !7950)
    #dbg_value(i64 %.val28.i, !703, !DIExpression(), !7951)
    #dbg_value(i64 %.val28.i, !711, !DIExpression(), !7952)
    #dbg_value(i64 %.val28.i, !718, !DIExpression(), !7953)
    #dbg_value(i64 %.val28.i, !721, !DIExpression(), !7955)
    #dbg_value(i64 %.val28.i, !731, !DIExpression(), !7957)
    #dbg_value(i64 %.val28.i, !737, !DIExpression(), !7959)
    #dbg_value(i64 %.val28.i, !764, !DIExpression(), !7961)
    #dbg_declare(ptr poison, !748, !DIExpression(), !7962)
    #dbg_value(i64 1, !749, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7959)
    #dbg_value(i64 1, !771, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7961)
    #dbg_value(i64 1, !749, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7959)
    #dbg_value(i64 1, !771, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7961)
    #dbg_value(i64 0, !770, !DIExpression(), !7961)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !8204, !noalias !8151
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, -9223372036854775808) %.val28.i, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc.i unwind label %.loopexit.i, !dbg !8204, !noalias !8112

.noexc.i:                                         ; preds = %bb.c
  %i.k = load i64, ptr %i.a, align 8, !dbg !8204, !range !773, !noalias !8151, !noundef !556
  %i.l = trunc nuw i64 %i.k to i1, !dbg !8205
  %i.m = load i64, ptr %i.g, align 8, !dbg !8206, !range !774, !noalias !8151, !noundef !556 ; 3 uses
  br i1 %i.l, label %bb.d, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsjfnSKV9Rz3v_3h3i.exit.i.i.i.i.i.i, !dbg !8205, !prof !775

bb.d:                                             ; preds = %.noexc.i
  %i.n = load i64, ptr %i.h, align 8, !dbg !8207, !noalias !8151
    #dbg_value(i64 %i.m, !751, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7974)
    #dbg_value(i64 %i.n, !751, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7974)
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.m, i64 %i.n) #14
          to label %.noexc29.i unwind label %.loopexit.split-lp.i, !dbg !8208, !noalias !8112

.noexc29.i:                                       ; preds = %bb.d
  unreachable, !dbg !8208

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsjfnSKV9Rz3v_3h3i.exit.i.i.i.i.i.i: ; preds = %.noexc.i
  %i.o = load ptr, ptr %i.h, align 8, !dbg !8209, !noalias !8151, !nonnull !556, !noundef !556 ; 2 uses
    #dbg_value(i64 %i.m, !750, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7975)
    #dbg_value(ptr %i.o, !750, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7975)
    #dbg_value(ptr poison, !769, !DIExpression(), !7976)
  %i.p = icmp ule i64 %.val28.i, %i.m, !dbg !8210
    #dbg_value(i1 true, !778, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !7978)
  tail call void @llvm.assume(i1 %i.p), !dbg !8211
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !8212, !noalias !8151
    #dbg_value(i64 %i.m, !704, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7979)
    #dbg_value(ptr %i.o, !704, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7979)
    #dbg_value(i64 0, !704, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !7979)
  %.not.i.i.i.i.i.i = icmp eq i64 %.val28.i, 0, !dbg !8213
  br i1 %.not.i.i.i.i.i.i, label %bb.f, label %bb.e, !dbg !8213

bb.e:                                             ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsjfnSKV9Rz3v_3h3i.exit.i.i.i.i.i.i
    #dbg_value(ptr %.val27.i, !727, !DIExpression(), !7955)
    #dbg_value(ptr %.val27.i, !734, !DIExpression(), !7957)
    #dbg_value(ptr %i.o, !728, !DIExpression(), !7955)
    #dbg_value(ptr %i.o, !735, !DIExpression(), !7957)
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.o, ptr nonnull readonly align 1 %.val27.i, i64 range(i64 0, -9223372036854775808) %.val28.i, i1 false), !dbg !8214, !noalias !8152
    #dbg_value(i64 %.val28.i, !704, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !7979)
  br label %bb.f, !dbg !8215

bb.f:                                             ; preds = %bb.e, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsjfnSKV9Rz3v_3h3i.exit.i.i.i.i.i.i
    #dbg_value(i64 %.val28.i, !704, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !7979)
    #dbg_value(i64 %i.m, !8153, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7982)
    #dbg_value(i64 %i.m, !8162, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7985)
    #dbg_value(ptr %i.o, !8153, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7982)
    #dbg_value(ptr %i.o, !8162, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7985)
    #dbg_value(i64 %.val28.i, !8153, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !7982)
    #dbg_value(i64 %.val28.i, !8162, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !7985)
    #dbg_value(ptr poison, !8157, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !7986)
    #dbg_declare(ptr poison, !8158, !DIExpression(), !7987)
    #dbg_value(ptr poison, !8166, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 16), !7988)
    #dbg_value(ptr poison, !8167, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !7988)
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %.sroa.8.0.copyload, i64 %.val22.i, !dbg !8216 ; 3 uses
  store i64 %i.m, ptr %i.q, align 8, !dbg !8217, !noalias !8171
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8, !dbg !8217
  store ptr %i.o, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !dbg !8217, !noalias !8171
  %.sroa.53.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16, !dbg !8217
  store i64 %.val28.i, ptr %.sroa.53.0..sroa_idx.i.i, align 8, !dbg !8217, !noalias !8171
  %i.r = add i64 %.val22.i, 1, !dbg !8218         ; 2 uses
  %i.s = add nuw i64 %.sroa.01.0.i, 1, !dbg !8219 ; 2 uses
    #dbg_value(i64 %i.s, !8066, !DIExpression(), !7895)
    #dbg_value(i64 %i.s, !8093, !DIExpression(), !7887)
  %i.t = icmp eq i64 %i.s, %i.f, !dbg !8220
  br i1 %i.t, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterReENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBZ_8adapters3map8map_foldRBQ_NtNtCsexYYUdYSQU6_5alloc6string6StringuNvYBQ_NtB2i_8ToString9to_stringNCINvNvBT_8for_each4callB2g_NCINvMsk_NtB2k_3vecINtB3Z_3VecB2g_E14extend_trustedINtB1J_3MapBF_B2T_EE0E0E0ECsjfnSKV9Rz3v_3h3i.exit, label %bb.c, !dbg !8220

.loopexit.i:                                      ; preds = %bb.c
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

.loopexit.split-lp.i:                             ; preds = %bb.d
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.g:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
    #dbg_value(ptr poison, !8172, !DIExpression(), !8001)
    #dbg_value(ptr poison, !8178, !DIExpression(), !8004)
    #dbg_value(ptr poison, !8184, !DIExpression(), !8007)
    #dbg_value(ptr poison, !1218, !DIExpression(), !8009)
    #dbg_value(ptr poison, !1224, !DIExpression(), !8011)
  store i64 %.val22.i, ptr %.sroa.0.0.copyload, align 8, !dbg !8221, !noalias !8112
  resume { ptr, i32 } %lpad.phi.i, !dbg !8222

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterReENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBZ_8adapters3map8map_foldRBQ_NtNtCsexYYUdYSQU6_5alloc6string6StringuNvYBQ_NtB2i_8ToString9to_stringNCINvNvBT_8for_each4callB2g_NCINvMsk_NtB2k_3vecINtB3Z_3VecB2g_E14extend_trustedINtB1J_3MapBF_B2T_EE0E0E0ECsjfnSKV9Rz3v_3h3i.exit: ; preds = %bb.f, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.r, %bb.f ], !dbg !8223
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !8223, !noalias !8112
  ret void, !dbg !8224
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterTjxEENCNvMNtNtNtCs8Nb2mar7w9E_7inquire7prompts6select6promptINtB1x_12SelectPromptReE10run_scorers_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2Z_8for_each4calljNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4c_3VecjE14extend_trustedBN_E0E0ECsjfnSKV9Rz3v_3h3i(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !8232 {
bb.a:
    #dbg_value(ptr %0, !8340, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8346)
    #dbg_value(ptr %1, !8340, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8346)
    #dbg_declare(ptr poison, !8341, !DIExpression(), !8347)
    #dbg_declare(ptr %2, !8342, !DIExpression(), !8348)
    #dbg_declare(ptr %2, !8349, !DIExpression(), !8361)
    #dbg_declare(ptr poison, !8355, !DIExpression(), !8362)
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !dbg !8477 ; 2 uses
    #dbg_value(ptr %.sroa.0.0.copyload, !8363, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8378)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !8477
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !8477 ; 6 uses
    #dbg_value(i64 %.sroa.5.0.copyload, !8363, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8378)
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !8477
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !8477 ; 8 uses
    #dbg_value(ptr %.sroa.7.0.copyload, !8363, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !8378)
    #dbg_value(ptr %0, !8366, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8244)
    #dbg_value(ptr %1, !8366, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8244)
    #dbg_declare(ptr poison, !8367, !DIExpression(), !8245)
    #dbg_declare(ptr poison, !8370, !DIExpression(), !8246)
    #dbg_value(i64 16, !8379, !DIExpression(), !8254)
    #dbg_value(i64 1, !8396, !DIExpression(), !8257)
    #dbg_value(ptr %1, !8369, !DIExpression(), !8258)
    #dbg_value(ptr poison, !8400, !DIExpression(), !8261)
    #dbg_value(ptr poison, !8403, !DIExpression(), !8262)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !8478
  %i.a = icmp eq ptr %0, %1, !dbg !8479
  br i1 %i.a, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTjxEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB11_8adapters3map8map_foldRBQ_juNCNvMNtNtNtCs8Nb2mar7w9E_7inquire7prompts6select6promptINtB2q_12SelectPromptReE10run_scorers_0NCINvNvBV_8for_each4calljNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4p_3VecjE14extend_trustedINtB1L_3MapBF_B2l_EE0E0E0ECsjfnSKV9Rz3v_3h3i.exit, label %bb.b, !dbg !8480

bb.b:                                             ; preds = %bb.a
    #dbg_value(i64 0, !8371, !DIExpression(), !8265)
    #dbg_value(i64 0, !8397, !DIExpression(), !8257)
    #dbg_value(ptr %1, !8374, !DIExpression(), !8266)
    #dbg_value(ptr %1, !8393, !DIExpression(), !8267)
    #dbg_value(ptr %1, !8408, !DIExpression(), !8269)
    #dbg_value(ptr %0, !8394, !DIExpression(), !8267)
    #dbg_value(ptr %0, !8408, !DIExpression(), !8271)
    #dbg_value(ptr %1, !8387, !DIExpression(), !8272)
    #dbg_value(ptr %0, !8388, !DIExpression(), !8272)
    #dbg_value(ptr %0, !8383, !DIExpression(), !8273)
    #dbg_value(ptr %1, !8382, !DIExpression(), !8273)
  %i.b = ptrtoint ptr %1 to i64, !dbg !8481
  %i.c = ptrtoint ptr %0 to i64, !dbg !8481
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !8481       ; 4 uses
  %i.e = lshr i64 %i.d, 4, !dbg !8481             ; 5 uses
    #dbg_value(i64 %i.e, !8372, !DIExpression(), !8274)
  %min.iters.check = icmp ult i64 %i.d, 272, !dbg !8482
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck, !dbg !8482

vector.memcheck:                                  ; preds = %bb.b
  %i.f = shl i64 %.sroa.5.0.copyload, 3, !dbg !8482 ; 2 uses
  %scevgep = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.f, !dbg !8482
  %i.g = lshr exact i64 %i.d, 1, !dbg !8482
  %i.h = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.f, !dbg !8482
  %scevgep2 = getelementptr i8, ptr %i.h, i64 %i.g, !dbg !8482
  %i.i = and i64 %i.d, -16, !dbg !8482
  %i.j = getelementptr i8, ptr %0, i64 %i.i, !dbg !8482
  %scevgep3 = getelementptr i8, ptr %i.j, i64 -8, !dbg !8482
  %bound0 = icmp ult ptr %scevgep, %scevgep3, !dbg !8482
  %bound1 = icmp ult ptr %0, %scevgep2, !dbg !8482
  %found.conflict = and i1 %bound0, %bound1, !dbg !8482
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph, !dbg !8483

vector.ph:                                        ; preds = %vector.memcheck
  %i.k = and i64 %i.e, 3                          ; 2 uses
  %i.l = icmp eq i64 %i.k, 0
  %i.m = select i1 %i.l, i64 4, i64 %i.k
  %n.vec = sub nsw i64 %i.e, %i.m                 ; 3 uses
  %i.n = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body, !dbg !8483

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !8483 ; 4 uses
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %index, !dbg !8484
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %index, !dbg !8484
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 32, !dbg !8484
  %wide.vec = load <4 x i64>, ptr %i.o, align 8, !dbg !8485, !alias.scope !8416, !noalias !8417
  %strided.vec = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 0, i32 2>, !dbg !8485
  %wide.vec4 = load <4 x i64>, ptr %i.q, align 8, !dbg !8485, !alias.scope !8416, !noalias !8417
  %strided.vec5 = shufflevector <4 x i64> %wide.vec4, <4 x i64> poison, <2 x i32> <i32 0, i32 2>, !dbg !8485
  %i.r = getelementptr [8 x i8], ptr %i.n, i64 %index, !dbg !8486 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16, !dbg !8487
  store <2 x i64> %strided.vec, ptr %i.r, align 8, !dbg !8487, !alias.scope !8448, !noalias !8449
  store <2 x i64> %strided.vec5, ptr %i.s, align 8, !dbg !8487, !alias.scope !8448, !noalias !8449
  %index.next = add nuw i64 %index, 4, !dbg !8483 ; 2 uses
  %i.t = icmp eq i64 %index.next, %n.vec, !dbg !8488
  br i1 %i.t, label %scalar.ph.preheader.loopexit, label %vector.body, !dbg !8488, !llvm.loop !8298

scalar.ph.preheader.loopexit:                     ; preds = %vector.body
  %3 = add i64 %.sroa.5.0.copyload, %n.vec
  br label %scalar.ph.preheader, !dbg !8488

scalar.ph.preheader:                              ; preds = %scalar.ph.preheader.loopexit, %vector.memcheck, %bb.b
  %.ph = phi i64 [ %.sroa.5.0.copyload, %vector.memcheck ], [ %.sroa.5.0.copyload, %bb.b ], [ %3, %scalar.ph.preheader.loopexit ] ; 2 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.b ], [ %n.vec, %scalar.ph.preheader.loopexit ] ; 4 uses
  %i.u = sub nsw i64 %i.e, %.sroa.01.0.i.ph, !dbg !8488
  %xtraiter = and i64 %i.u, 3, !dbg !8488         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !8488
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !8488

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %i.v = phi i64 [ %i.y, %scalar.ph.prol ], [ %.ph, %scalar.ph.preheader ], !dbg !8484 ; 2 uses
  %.sroa.01.0.i.prol = phi i64 [ %i.z, %scalar.ph.prol ], [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], !dbg !8483 ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
    #dbg_value(i64 %.sroa.01.0.i.prol, !8397, !DIExpression(), !8257)
    #dbg_value(i64 %.sroa.01.0.i.prol, !8371, !DIExpression(), !8265)
    #dbg_value(ptr %0, !8413, !DIExpression(), !8299)
    #dbg_value(i64 %.sroa.01.0.i.prol, !8414, !DIExpression(), !8299)
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.0.i.prol, !dbg !8484
    #dbg_value(ptr %i.w, !8408, !DIExpression(), !8301)
  %.val27.i.prol = load i64, ptr %i.w, align 8, !dbg !8485, !noalias !8417, !noundef !556
    #dbg_value(ptr poison, !8443, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !8302)
    #dbg_declare(ptr poison, !8441, !DIExpression(), !8303)
    #dbg_value(ptr poison, !8442, !DIExpression(), !8302)
    #dbg_value(ptr poison, !8433, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !8304)
    #dbg_declare(ptr poison, !8434, !DIExpression(), !8305)
    #dbg_value(i64 %.val27.i.prol, !8432, !DIExpression(), !8304)
    #dbg_value(ptr poison, !8424, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 16), !8306)
    #dbg_value(ptr poison, !8425, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !8306)
    #dbg_value(i64 %.val27.i.prol, !8423, !DIExpression(), !8306)
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.v, !dbg !8486
  store i64 %.val27.i.prol, ptr %i.x, align 8, !dbg !8487, !noalias !8450
  %i.y = add i64 %i.v, 1, !dbg !8489              ; 3 uses
  %i.z = add nuw i64 %.sroa.01.0.i.prol, 1, !dbg !8490 ; 2 uses
    #dbg_value(i64 %i.z, !8371, !DIExpression(), !8265)
    #dbg_value(i64 %i.z, !8397, !DIExpression(), !8257)
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !8488 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !8488
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !8488, !llvm.loop !8309

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.y, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.y, %scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], [ %i.z, %scalar.ph.prol ]
  %i.aa = sub nsw i64 %.sroa.01.0.i.ph, %i.e, !dbg !8488
  %i.ab = icmp ugt i64 %i.aa, -4, !dbg !8488
  br i1 %i.ab, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTjxEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB11_8adapters3map8map_foldRBQ_juNCNvMNtNtNtCs8Nb2mar7w9E_7inquire7prompts6select6promptINtB2q_12SelectPromptReE10run_scorers_0NCINvNvBV_8for_each4calljNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4p_3VecjE14extend_trustedINtB1L_3MapBF_B2l_EE0E0E0ECsjfnSKV9Rz3v_3h3i.exit, label %scalar.ph, !dbg !8488

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.ac = phi i64 [ %i.ar, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ], !dbg !8484 ; 5 uses
  %.sroa.01.0.i = phi i64 [ %i.as, %scalar.ph ], [ %.sroa.01.0.i.unr, %scalar.ph.prol.loopexit ], !dbg !8483 ; 5 uses
    #dbg_value(i64 %.sroa.01.0.i, !8397, !DIExpression(), !8257)
    #dbg_value(i64 %.sroa.01.0.i, !8371, !DIExpression(), !8265)
    #dbg_value(ptr %0, !8413, !DIExpression(), !8299)
    #dbg_value(i64 %.sroa.01.0.i, !8414, !DIExpression(), !8299)
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !8484
    #dbg_value(ptr %i.ad, !8408, !DIExpression(), !8301)
  %.val27.i = load i64, ptr %i.ad, align 8, !dbg !8485, !noalias !8417, !noundef !556
    #dbg_value(ptr poison, !8443, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !8302)
    #dbg_declare(ptr poison, !8441, !DIExpression(), !8303)
    #dbg_value(ptr poison, !8442, !DIExpression(), !8302)
    #dbg_value(ptr poison, !8433, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !8304)
    #dbg_declare(ptr poison, !8434, !DIExpression(), !8305)
    #dbg_value(i64 %.val27.i, !8432, !DIExpression(), !8304)
    #dbg_value(ptr poison, !8424, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 16), !8306)
    #dbg_value(ptr poison, !8425, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !8306)
    #dbg_value(i64 %.val27.i, !8423, !DIExpression(), !8306)
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.ac, !dbg !8486
  store i64 %.val27.i, ptr %i.ae, align 8, !dbg !8487, !noalias !8450
    #dbg_value(i64 %.sroa.01.0.i, !8397, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !8257)
    #dbg_value(i64 %.sroa.01.0.i, !8371, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !8265)
    #dbg_value(i64 %.sroa.01.0.i, !8414, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !8299)
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !8484
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16, !dbg !8484
    #dbg_value(ptr %i.ag, !8408, !DIExpression(), !8301)
  %.val27.i.1 = load i64, ptr %i.ag, align 8, !dbg !8485, !noalias !8417, !noundef !556
    #dbg_declare(ptr poison, !8441, !DIExpression(), !8303)
    #dbg_declare(ptr poison, !8434, !DIExpression(), !8305)
    #dbg_value(i64 %.val27.i.1, !8432, !DIExpression(), !8304)
    #dbg_value(i64 %.val27.i.1, !8423, !DIExpression(), !8306)
  %i.ah = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.ac, !dbg !8486
  %i.ai = getelementptr i8, ptr %i.ah, i64 8, !dbg !8486
  store i64 %.val27.i.1, ptr %i.ai, align 8, !dbg !8487, !noalias !8450
    #dbg_value(i64 %.sroa.01.0.i, !8397, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value), !8257)
    #dbg_value(i64 %.sroa.01.0.i, !8371, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value), !8265)
    #dbg_value(i64 %.sroa.01.0.i, !8414, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value), !8299)
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !8484
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 32, !dbg !8484
    #dbg_value(ptr %i.ak, !8408, !DIExpression(), !8301)
  %.val27.i.2 = load i64, ptr %i.ak, align 8, !dbg !8485, !noalias !8417, !noundef !556
    #dbg_declare(ptr poison, !8441, !DIExpression(), !8303)
    #dbg_declare(ptr poison, !8434, !DIExpression(), !8305)
    #dbg_value(i64 %.val27.i.2, !8432, !DIExpression(), !8304)
    #dbg_value(i64 %.val27.i.2, !8423, !DIExpression(), !8306)
  %i.al = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.ac, !dbg !8486
  %i.am = getelementptr i8, ptr %i.al, i64 16, !dbg !8486
  store i64 %.val27.i.2, ptr %i.am, align 8, !dbg !8487, !noalias !8450
    #dbg_value(i64 %.sroa.01.0.i, !8397, !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value), !8257)
    #dbg_value(i64 %.sroa.01.0.i, !8371, !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value), !8265)
    #dbg_value(i64 %.sroa.01.0.i, !8414, !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value), !8299)
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !8484
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 48, !dbg !8484
    #dbg_value(ptr %i.ao, !8408, !DIExpression(), !8301)
  %.val27.i.3 = load i64, ptr %i.ao, align 8, !dbg !8485, !noalias !8417, !noundef !556
    #dbg_declare(ptr poison, !8441, !DIExpression(), !8303)
    #dbg_declare(ptr poison, !8434, !DIExpression(), !8305)
    #dbg_value(i64 %.val27.i.3, !8432, !DIExpression(), !8304)
    #dbg_value(i64 %.val27.i.3, !8423, !DIExpression(), !8306)
  %i.ap = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.ac, !dbg !8486
  %i.aq = getelementptr i8, ptr %i.ap, i64 24, !dbg !8486
  store i64 %.val27.i.3, ptr %i.aq, align 8, !dbg !8487, !noalias !8450
  %i.ar = add i64 %i.ac, 4, !dbg !8489            ; 2 uses
  %i.as = add nuw i64 %.sroa.01.0.i, 4, !dbg !8490 ; 2 uses
    #dbg_value(i64 %i.as, !8371, !DIExpression(), !8265)
    #dbg_value(i64 %i.as, !8397, !DIExpression(), !8257)
  %i.at = icmp eq i64 %i.as, %i.e, !dbg !8488
  br i1 %i.at, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTjxEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB11_8adapters3map8map_foldRBQ_juNCNvMNtNtNtCs8Nb2mar7w9E_7inquire7prompts6select6promptINtB2q_12SelectPromptReE10run_scorers_0NCINvNvBV_8for_each4calljNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4p_3VecjE14extend_trustedINtB1L_3MapBF_B2l_EE0E0E0ECsjfnSKV9Rz3v_3h3i.exit, label %scalar.ph, !dbg !8488, !llvm.loop !8310

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTjxEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB11_8adapters3map8map_foldRBQ_juNCNvMNtNtNtCs8Nb2mar7w9E_7inquire7prompts6select6promptINtB2q_12SelectPromptReE10run_scorers_0NCINvNvBV_8for_each4calljNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4p_3VecjE14extend_trustedINtB1L_3MapBF_B2l_EE0E0E0ECsjfnSKV9Rz3v_3h3i.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.ar, %scalar.ph ], !dbg !8491
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !8491, !noalias !8417
  ret void, !dbg !8492
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterhENCNvMs1_Cs3f36owOmepS_6quicheNtB1x_10Connection8with_tls0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2l_8for_each4callNtNtCsexYYUdYSQU6_5alloc6string6StringNCINvMsk_NtB3s_3vecINtB49_3VecB3o_E14extend_trustedBN_E0E0ECsjfnSKV9Rz3v_3h3i(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !8497 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
    #dbg_value(ptr %0, !8619, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8625)
    #dbg_value(ptr %1, !8619, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8625)
    #dbg_declare(ptr poison, !8620, !DIExpression(), !8626)
    #dbg_declare(ptr %2, !8621, !DIExpression(), !8627)
    #dbg_declare(ptr %2, !8628, !DIExpression(), !8640)
    #dbg_declare(ptr poison, !8634, !DIExpression(), !8641)
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !dbg !8752 ; 4 uses
    #dbg_value(ptr %.sroa.0.0.copyload, !8642, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8657)
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !8752
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !8752 ; 2 uses
    #dbg_value(i64 %.sroa.6.0.copyload, !8642, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8657)
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !8752
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8, !dbg !8752
    #dbg_value(ptr %.sroa.8.0.copyload, !8642, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !8657)
    #dbg_value(ptr %0, !8645, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8509)
    #dbg_value(ptr %1, !8645, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8509)
    #dbg_declare(ptr poison, !8646, !DIExpression(), !8510)
    #dbg_declare(ptr poison, !8649, !DIExpression(), !8511)
    #dbg_value(i64 1, !8658, !DIExpression(), !8519)
    #dbg_value(i64 1, !8668, !DIExpression(), !8522)
    #dbg_value(ptr %1, !8648, !DIExpression(), !8523)
    #dbg_value(ptr poison, !8671, !DIExpression(), !8526)
    #dbg_value(ptr poison, !8672, !DIExpression(), !8527)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !8753
  %i.d = icmp eq ptr %0, %1, !dbg !8754
  br i1 %i.d, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhNtNtCsexYYUdYSQU6_5alloc6string6StringuNCNvMs1_Cs3f36owOmepS_6quicheNtB2Y_10Connection8with_tls0NCINvNvBS_8for_each4callB2d_NCINvMsk_NtB2h_3vecINtB4m_3VecB2d_E14extend_trustedINtB1I_3MapBF_B2Q_EE0E0E0ECsjfnSKV9Rz3v_3h3i.exit, label %bb.b, !dbg !8755

bb.b:                                             ; preds = %bb.a
    #dbg_value(i64 0, !8650, !DIExpression(), !8530)
    #dbg_value(i64 0, !8669, !DIExpression(), !8522)
    #dbg_value(ptr %1, !8653, !DIExpression(), !8531)
    #dbg_value(ptr %1, !8665, !DIExpression(), !8532)
    #dbg_value(ptr %1, !8674, !DIExpression(), !8534)
    #dbg_value(ptr %0, !8666, !DIExpression(), !8532)
    #dbg_value(ptr %0, !8674, !DIExpression(), !8536)
    #dbg_value(ptr %1, !8662, !DIExpression(), !8537)
    #dbg_value(ptr %0, !8663, !DIExpression(), !8537)
    #dbg_value(ptr %0, !8660, !DIExpression(), !8538)
    #dbg_value(ptr %1, !8659, !DIExpression(), !8538)
  %i.e = ptrtoint ptr %1 to i64, !dbg !8756
  %i.f = ptrtoint ptr %0 to i64, !dbg !8756
  %i.g = sub nuw i64 %i.e, %i.f, !dbg !8756
    #dbg_value(i64 %i.g, !8651, !DIExpression(), !8539)
  %.sroa.42.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.c, !dbg !8757

bb.c:                                             ; preds = %bb.d, %bb.b
  %.val22.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.j, %bb.d ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.k, %bb.d ], !dbg !8758 ; 2 uses
    #dbg_value(i64 %.sroa.01.0.i, !8669, !DIExpression(), !8522)
    #dbg_value(i64 %.sroa.01.0.i, !8650, !DIExpression(), !8530)
    #dbg_value(ptr %0, !8676, !DIExpression(), !8542)
    #dbg_value(i64 %.sroa.01.0.i, !8677, !DIExpression(), !8542)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.0.i, !dbg !8759
    #dbg_value(ptr %i.h, !8674, !DIExpression(), !8544)
    #dbg_value(ptr poison, !8679, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !8547)
    #dbg_declare(ptr poison, !8683, !DIExpression(), !8548)
    #dbg_value(ptr %i.h, !8684, !DIExpression(), !8547)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !8760, !noalias !8687
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !8687
    #dbg_value(ptr %i.h, !8689, !DIExpression(), !8560)
  store ptr %i.h, ptr %i.b, align 8, !noalias !8705
    #dbg_value(ptr poison, !8697, !DIExpression(), !8560)
    #dbg_value(ptr %i.b, !8694, !DIExpression(), !8564)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !8761, !noalias !8705
  store ptr %i.b, ptr %i.a, align 8, !dbg !8761, !noalias !8705
  store ptr @_RNvXs1o_NtCskKLDkoKarTP_4core3fmtRhNtB6_8LowerHex3fmtCsjfnSKV9Rz3v_3h3i, ptr %.sroa.42.0..sroa_idx.i.i.i, align 8, !dbg !8761, !noalias !8705
    #dbg_value(ptr @5, !8706, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8567)
    #dbg_value(ptr %i.a, !8706, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8567)
    #dbg_value(ptr null, !1316, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8569)
    #dbg_value(i64 undef, !1316, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8569)
    #dbg_value(ptr poison, !1329, !DIExpression(), !8569)
    #dbg_declare(ptr poison, !1330, !DIExpression(), !8570)
    #dbg_value(ptr poison, !1333, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !8572)
  invoke void @_RNvNvNtCsexYYUdYSQU6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noundef nonnull @5, ptr noundef nonnull %i.a)
          to label %bb.d unwind label %bb.e, !dbg !8762, !noalias !8709

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !8763, !noalias !8705
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !8764, !noalias !8687
    #dbg_value(ptr poison, !8710, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !8575)
    #dbg_declare(ptr poison, !8715, !DIExpression(), !8576)
    #dbg_declare(ptr %i.c, !8714, !DIExpression(), !8577)
    #dbg_value(ptr poison, !8719, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 16), !8580)
    #dbg_value(ptr poison, !8724, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !8580)
    #dbg_declare(ptr %i.c, !8723, !DIExpression(), !8581)
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %.sroa.8.0.copyload, i64 %.val22.i, !dbg !8765
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.c, i64 24, i1 false), !dbg !8766, !noalias !8728
  %i.j = add i64 %.val22.i, 1, !dbg !8767         ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !8768, !noalias !8687
  %i.k = add nuw i64 %.sroa.01.0.i, 1, !dbg !8769 ; 2 uses
    #dbg_value(i64 %i.k, !8650, !DIExpression(), !8530)
    #dbg_value(i64 %i.k, !8669, !DIExpression(), !8522)
  %i.l = icmp eq i64 %i.k, %i.g, !dbg !8770
  br i1 %i.l, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhNtNtCsexYYUdYSQU6_5alloc6string6StringuNCNvMs1_Cs3f36owOmepS_6quicheNtB2Y_10Connection8with_tls0NCINvNvBS_8for_each4callB2d_NCINvMsk_NtB2h_3vecINtB4m_3VecB2d_E14extend_trustedINtB1I_3MapBF_B2Q_EE0E0E0ECsjfnSKV9Rz3v_3h3i.exit, label %bb.c, !dbg !8770

bb.e:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
    #dbg_value(ptr poison, !8729, !DIExpression(), !8594)
    #dbg_value(ptr poison, !8735, !DIExpression(), !8597)
    #dbg_value(ptr poison, !8741, !DIExpression(), !8600)
    #dbg_value(ptr poison, !1218, !DIExpression(), !8602)
    #dbg_value(ptr poison, !1224, !DIExpression(), !8604)
  store i64 %.val22.i, ptr %.sroa.0.0.copyload, align 8, !dbg !8771, !noalias !8709
  resume { ptr, i32 } %i.m, !dbg !8772

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhNtNtCsexYYUdYSQU6_5alloc6string6StringuNCNvMs1_Cs3f36owOmepS_6quicheNtB2Y_10Connection8with_tls0NCINvNvBS_8for_each4callB2d_NCINvMsk_NtB2h_3vecINtB4m_3VecB2d_E14extend_trustedINtB1I_3MapBF_B2Q_EE0E0E0ECsjfnSKV9Rz3v_3h3i.exit: ; preds = %bb.d, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.j, %bb.d ], !dbg !8773
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !8773, !noalias !8709
  ret void, !dbg !8774
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterhENCNvMs_NtCsexYYUdYSQU6_5alloc5sliceSh18to_ascii_lowercase0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2m_8for_each4callhNCINvMsk_NtB1y_3vecINtB3z_3VechE14extend_trustedBN_E0E0ECsjfnSKV9Rz3v_3h3i(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !8779 {
bb.a:
    #dbg_value(ptr %0, !8881, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8887)
    #dbg_value(ptr %1, !8881, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8887)
    #dbg_declare(ptr poison, !8882, !DIExpression(), !8888)
    #dbg_declare(ptr %2, !8883, !DIExpression(), !8889)
    #dbg_declare(ptr %2, !8890, !DIExpression(), !8902)
    #dbg_declare(ptr poison, !8896, !DIExpression(), !8903)
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !dbg !9009 ; 2 uses
    #dbg_value(ptr %.sroa.0.0.copyload, !8904, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8919)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !9009
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !9009 ; 8 uses
    #dbg_value(i64 %.sroa.5.0.copyload, !8904, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8919)
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !9009
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !9009 ; 6 uses
    #dbg_value(ptr %.sroa.7.0.copyload, !8904, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !8919)
    #dbg_value(ptr %0, !8907, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8791)
    #dbg_value(ptr %1, !8907, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8791)
    #dbg_declare(ptr poison, !8908, !DIExpression(), !8792)
    #dbg_declare(ptr poison, !8911, !DIExpression(), !8793)
    #dbg_value(i64 1, !8920, !DIExpression(), !8801)
    #dbg_value(i64 1, !8930, !DIExpression(), !8804)
    #dbg_value(ptr %1, !8910, !DIExpression(), !8805)
    #dbg_value(ptr poison, !8933, !DIExpression(), !8808)
    #dbg_value(ptr poison, !8934, !DIExpression(), !8809)
  %.sroa.7.0.copyload2 = ptrtoaddr ptr %.sroa.7.0.copyload to i64, !dbg !9010
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !9010
  %i.a = icmp eq ptr %0, %1, !dbg !9011
  br i1 %i.a, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvMs_NtCsexYYUdYSQU6_5alloc5sliceSh18to_ascii_lowercase0NCINvNvBS_8for_each4callhNCINvMsk_NtB2o_3vecINtB3J_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECsjfnSKV9Rz3v_3h3i.exit, label %iter.check, !dbg !9012

iter.check:                                       ; preds = %bb.a
    #dbg_value(i64 0, !8912, !DIExpression(), !8812)
    #dbg_value(i64 0, !8931, !DIExpression(), !8804)
    #dbg_value(ptr %1, !8915, !DIExpression(), !8813)
    #dbg_value(ptr %1, !8927, !DIExpression(), !8814)
    #dbg_value(ptr %1, !8936, !DIExpression(), !8816)
    #dbg_value(ptr %0, !8928, !DIExpression(), !8814)
    #dbg_value(ptr %0, !8936, !DIExpression(), !8818)
    #dbg_value(ptr %1, !8924, !DIExpression(), !8819)
    #dbg_value(ptr %0, !8925, !DIExpression(), !8819)
    #dbg_value(ptr %0, !8922, !DIExpression(), !8820)
    #dbg_value(ptr %1, !8921, !DIExpression(), !8820)
  %i.b = ptrtoint ptr %1 to i64, !dbg !9013       ; 3 uses
  %i.c = ptrtoint ptr %0 to i64, !dbg !9013       ; 4 uses
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !9013       ; 8 uses
    #dbg_value(i64 %i.d, !8913, !DIExpression(), !8821)
  %min.iters.check = icmp ult i64 %i.d, 8, !dbg !9014
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck, !dbg !9014

vector.memcheck:                                  ; preds = %iter.check
  %i.e = add i64 %.sroa.5.0.copyload, %.sroa.7.0.copyload2, !dbg !9014
  %i.f = sub i64 %i.c, %i.e, !dbg !9014
  %diff.check = icmp ugt i64 %i.f, -32, !dbg !9014
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check, !dbg !9015

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check3 = icmp ult i64 %i.d, 32, !dbg !9014
  br i1 %min.iters.check3, label %vec.epilog.ph, label %vector.ph, !dbg !9014

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.vec = and i64 %i.d, -32                      ; 5 uses
  %i.g = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body, !dbg !9014

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !9015 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %index, !dbg !9016 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16, !dbg !9017
  %wide.load = load <16 x i8>, ptr %i.h, align 1, !dbg !9017, !noalias !8941 ; 2 uses
  %wide.load4 = load <16 x i8>, ptr %i.i, align 1, !dbg !9017, !noalias !8941 ; 2 uses
  %i.j = add <16 x i8> %wide.load, splat (i8 -65), !dbg !9018
  %i.k = add <16 x i8> %wide.load4, splat (i8 -65), !dbg !9018
  %i.l = icmp ult <16 x i8> %i.j, splat (i8 26), !dbg !9018
  %i.m = icmp ult <16 x i8> %i.k, splat (i8 26), !dbg !9018
  %i.n = select <16 x i1> %i.l, <16 x i8> splat (i8 32), <16 x i8> zeroinitializer, !dbg !9018
  %i.o = select <16 x i1> %i.m, <16 x i8> splat (i8 32), <16 x i8> zeroinitializer, !dbg !9018
  %i.p = or <16 x i8> %i.n, %wide.load, !dbg !9018
  %i.q = or <16 x i8> %i.o, %wide.load4, !dbg !9018
  %i.r = getelementptr i8, ptr %i.g, i64 %index, !dbg !9019 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16, !dbg !9020
  store <16 x i8> %i.p, ptr %i.r, align 1, !dbg !9020, !noalias !8984
  store <16 x i8> %i.q, ptr %i.s, align 1, !dbg !9020, !noalias !8984
  %index.next = add nuw i64 %index, 32, !dbg !9015 ; 2 uses
  %i.t = icmp eq i64 %index.next, %n.vec, !dbg !9021
  br i1 %i.t, label %middle.block, label %vector.body, !dbg !9021, !llvm.loop !8848

middle.block:                                     ; preds = %vector.body
  %3 = and i64 %i.d, 24
  %4 = add i64 %.sroa.5.0.copyload, %n.vec        ; 2 uses
  %cmp.n = icmp eq i64 %i.d, %n.vec, !dbg !9021
  br i1 %cmp.n, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvMs_NtCsexYYUdYSQU6_5alloc5sliceSh18to_ascii_lowercase0NCINvNvBS_8for_each4callhNCINvMsk_NtB2o_3vecINtB3J_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECsjfnSKV9Rz3v_3h3i.exit, label %vec.epilog.iter.check, !dbg !9021

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %3, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !8985

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ], !dbg !9015
  %n.vec5 = and i64 %i.d, -8                      ; 4 uses
  %i.u = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index6 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next8, %vec.epilog.vector.body ], !dbg !9015 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 %index6, !dbg !9016
  %wide.load7 = load <8 x i8>, ptr %i.v, align 1, !dbg !9017, !noalias !8941 ; 2 uses
  %i.w = add <8 x i8> %wide.load7, splat (i8 -65), !dbg !9018
  %i.x = icmp ult <8 x i8> %i.w, splat (i8 26), !dbg !9018
  %i.y = select <8 x i1> %i.x, <8 x i8> splat (i8 32), <8 x i8> zeroinitializer, !dbg !9018
  %i.z = or <8 x i8> %i.y, %wide.load7, !dbg !9018
  %i.aa = getelementptr i8, ptr %i.u, i64 %index6, !dbg !9019
  store <8 x i8> %i.z, ptr %i.aa, align 1, !dbg !9020, !noalias !8984
  %index.next8 = add nuw i64 %index6, 8, !dbg !9015 ; 2 uses
  %i.ab = icmp eq i64 %index.next8, %n.vec5, !dbg !9021
  br i1 %i.ab, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !9021, !llvm.loop !8849

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %5 = add i64 %.sroa.5.0.copyload, %n.vec5       ; 2 uses
  %cmp.n9 = icmp eq i64 %i.d, %n.vec5, !dbg !9021
  br i1 %cmp.n9, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvMs_NtCsexYYUdYSQU6_5alloc5sliceSh18to_ascii_lowercase0NCINvNvBS_8for_each4callhNCINvMsk_NtB2o_3vecINtB3J_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECsjfnSKV9Rz3v_3h3i.exit, label %vec.epilog.scalar.ph.preheader, !dbg !9021

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %iter.check ], [ %.sroa.5.0.copyload, %vector.memcheck ], [ %4, %vec.epilog.iter.check ], [ %5, %vec.epilog.middle.block ] ; 3 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec5, %vec.epilog.middle.block ] ; 4 uses
  %i.ac = sub i64 %i.b, %i.c, !dbg !9021
  %i.ad = xor i64 %.sroa.01.0.i.ph, -1, !dbg !9021
  %i.ae = add i64 %i.ad, %i.b, !dbg !9021
  %xtraiter = and i64 %i.ac, 1, !dbg !9021
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !9021
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !dbg !9021

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
    #dbg_value(i64 poison, !8931, !DIExpression(), !8804)
    #dbg_value(i64 poison, !8912, !DIExpression(), !8812)
    #dbg_value(ptr %0, !8938, !DIExpression(), !8850)
    #dbg_value(i64 poison, !8939, !DIExpression(), !8850)
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.0.i.ph, !dbg !9016
    #dbg_value(ptr %i.af, !8936, !DIExpression(), !8852)
  %.val27.i.prol = load i8, ptr %i.af, align 1, !dbg !9017, !noalias !8941, !noundef !556 ; 2 uses
    #dbg_value(ptr poison, !8961, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !8853)
    #dbg_declare(ptr poison, !8959, !DIExpression(), !8854)
    #dbg_value(ptr poison, !8960, !DIExpression(), !8853)
    #dbg_value(ptr poison, !8954, !DIExpression(), !8855)
    #dbg_value(ptr poison, !8953, !DIExpression(), !8855)
    #dbg_value(ptr poison, !8948, !DIExpression(), !8856)
    #dbg_value(ptr poison, !8944, !DIExpression(), !8857)
  %i.ag = add i8 %.val27.i.prol, -65, !dbg !9018
  %i.ah = icmp ult i8 %i.ag, 26, !dbg !9018
  %i.ai = select i1 %i.ah, i8 32, i8 0, !dbg !9018
  %.sroa.0.0.i.i.i.prol = or i8 %i.ai, %.val27.i.prol, !dbg !9018
    #dbg_value(ptr poison, !8977, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !8858)
    #dbg_declare(ptr poison, !8978, !DIExpression(), !8859)
    #dbg_value(i8 %.sroa.0.0.i.i.i.prol, !8976, !DIExpression(), !8858)
    #dbg_value(ptr poison, !8968, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 16), !8860)
    #dbg_value(ptr poison, !8969, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !8860)
    #dbg_value(i8 %.sroa.0.0.i.i.i.prol, !8967, !DIExpression(), !8860)
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 %.ph, !dbg !9019
  store i8 %.sroa.0.0.i.i.i.prol, ptr %i.aj, align 1, !dbg !9020, !noalias !8984
  %i.ak = add i64 %.ph, 1, !dbg !9022             ; 2 uses
  %i.al = or disjoint i64 %.sroa.01.0.i.ph, 1, !dbg !9023
    #dbg_value(i64 %i.al, !8912, !DIExpression(), !8812)
    #dbg_value(i64 %i.al, !8931, !DIExpression(), !8804)
  br label %vec.epilog.scalar.ph.prol.loopexit, !dbg !9021

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %vec.epilog.scalar.ph.preheader ], [ %i.ak, %vec.epilog.scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %vec.epilog.scalar.ph.preheader ], [ %i.ak, %vec.epilog.scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.al, %vec.epilog.scalar.ph.prol ]
  %i.am = icmp eq i64 %i.ae, %i.c, !dbg !9021
  br i1 %i.am, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvMs_NtCsexYYUdYSQU6_5alloc5sliceSh18to_ascii_lowercase0NCINvNvBS_8for_each4callhNCINvMsk_NtB2o_3vecINtB3J_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECsjfnSKV9Rz3v_3h3i.exit, label %vec.epilog.scalar.ph, !dbg !9021

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %i.an = phi i64 [ %i.ba, %vec.epilog.scalar.ph ], [ %.unr, %vec.epilog.scalar.ph.prol.loopexit ], !dbg !9016 ; 3 uses
  %.sroa.01.0.i = phi i64 [ %i.bb, %vec.epilog.scalar.ph ], [ %.sroa.01.0.i.unr, %vec.epilog.scalar.ph.prol.loopexit ], !dbg !9015 ; 3 uses
    #dbg_value(i64 %.sroa.01.0.i, !8931, !DIExpression(), !8804)
    #dbg_value(i64 %.sroa.01.0.i, !8912, !DIExpression(), !8812)
    #dbg_value(ptr %0, !8938, !DIExpression(), !8850)
    #dbg_value(i64 %.sroa.01.0.i, !8939, !DIExpression(), !8850)
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.0.i, !dbg !9016
    #dbg_value(ptr %i.ao, !8936, !DIExpression(), !8852)
  %.val27.i = load i8, ptr %i.ao, align 1, !dbg !9017, !noalias !8941, !noundef !556 ; 2 uses
    #dbg_value(ptr poison, !8961, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !8853)
    #dbg_declare(ptr poison, !8959, !DIExpression(), !8854)
    #dbg_value(ptr poison, !8960, !DIExpression(), !8853)
    #dbg_value(ptr poison, !8954, !DIExpression(), !8855)
    #dbg_value(ptr poison, !8953, !DIExpression(), !8855)
    #dbg_value(ptr poison, !8948, !DIExpression(), !8856)
    #dbg_value(ptr poison, !8944, !DIExpression(), !8857)
  %i.ap = add i8 %.val27.i, -65, !dbg !9018
  %i.aq = icmp ult i8 %i.ap, 26, !dbg !9018
  %i.ar = select i1 %i.aq, i8 32, i8 0, !dbg !9018
  %.sroa.0.0.i.i.i = or i8 %i.ar, %.val27.i, !dbg !9018
    #dbg_value(ptr poison, !8977, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !8858)
    #dbg_declare(ptr poison, !8978, !DIExpression(), !8859)
    #dbg_value(i8 %.sroa.0.0.i.i.i, !8976, !DIExpression(), !8858)
    #dbg_value(ptr poison, !8968, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 16), !8860)
    #dbg_value(ptr poison, !8969, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !8860)
    #dbg_value(i8 %.sroa.0.0.i.i.i, !8967, !DIExpression(), !8860)
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 %i.an, !dbg !9019
  store i8 %.sroa.0.0.i.i.i, ptr %i.as, align 1, !dbg !9020, !noalias !8984
    #dbg_value(i64 %.sroa.01.0.i, !8931, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !8804)
    #dbg_value(i64 %.sroa.01.0.i, !8912, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !8812)
    #dbg_value(i64 %.sroa.01.0.i, !8939, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !8850)
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.0.i, !dbg !9016
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 1, !dbg !9016
    #dbg_value(ptr %i.au, !8936, !DIExpression(), !8852)
  %.val27.i.1 = load i8, ptr %i.au, align 1, !dbg !9017, !noalias !8941, !noundef !556 ; 2 uses
    #dbg_declare(ptr poison, !8959, !DIExpression(), !8854)
  %i.av = add i8 %.val27.i.1, -65, !dbg !9018
  %i.aw = icmp ult i8 %i.av, 26, !dbg !9018
  %i.ax = select i1 %i.aw, i8 32, i8 0, !dbg !9018
  %.sroa.0.0.i.i.i.1 = or i8 %i.ax, %.val27.i.1, !dbg !9018
    #dbg_declare(ptr poison, !8978, !DIExpression(), !8859)
    #dbg_value(i8 %.sroa.0.0.i.i.i.1, !8976, !DIExpression(), !8858)
    #dbg_value(i8 %.sroa.0.0.i.i.i.1, !8967, !DIExpression(), !8860)
  %i.ay = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.an, !dbg !9019
  %i.az = getelementptr i8, ptr %i.ay, i64 1, !dbg !9019
  store i8 %.sroa.0.0.i.i.i.1, ptr %i.az, align 1, !dbg !9020, !noalias !8984
  %i.ba = add i64 %i.an, 2, !dbg !9022            ; 2 uses
  %i.bb = add nuw i64 %.sroa.01.0.i, 2, !dbg !9023 ; 2 uses
    #dbg_value(i64 %i.bb, !8912, !DIExpression(), !8812)
    #dbg_value(i64 %i.bb, !8931, !DIExpression(), !8804)
  %i.bc = icmp eq i64 %i.bb, %i.d, !dbg !9021
  br i1 %i.bc, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvMs_NtCsexYYUdYSQU6_5alloc5sliceSh18to_ascii_lowercase0NCINvNvBS_8for_each4callhNCINvMsk_NtB2o_3vecINtB3J_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECsjfnSKV9Rz3v_3h3i.exit, label %vec.epilog.scalar.ph, !dbg !9021, !llvm.loop !8863

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvMs_NtCsexYYUdYSQU6_5alloc5sliceSh18to_ascii_lowercase0NCINvNvBS_8for_each4callhNCINvMsk_NtB2o_3vecINtB3J_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECsjfnSKV9Rz3v_3h3i.exit: ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %5, %vec.epilog.middle.block ], [ %4, %middle.block ], [ %.lcssa.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.ba, %vec.epilog.scalar.ph ], !dbg !9024
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !9024, !noalias !8941
  ret void, !dbg !9025
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RINvXs1_NtNtCs8Nb2mar7w9E_7inquire2ui7backendINtB6_7BackendNtNtNtBa_8terminal9crossterm18CrosstermKeyReaderNtBX_17CrosstermTerminalENtB6_13SelectBackend14render_optionsRReECsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef align 8 dereferenceable(888) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !9047 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [9 x i8], align 1                 ; 5 uses
  %i.e = alloca [40 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [32 x i8], align 8                ; 7 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [32 x i8], align 8                ; 7 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [8 x i8], align 8                 ; 7 uses
  %i.m = alloca [32 x i8], align 8                ; 4 uses
  %i.n = alloca [32 x i8], align 8                ; 4 uses
  %i.o = alloca [32 x i8], align 8                ; 6 uses
    #dbg_value(ptr poison, !9279, !DIExpression(), !9068)
    #dbg_value(ptr poison, !9308, !DIExpression(), !9069)
    #dbg_value(ptr %0, !9242, !DIExpression(), !9314)
    #dbg_declare(ptr %1, !9243, !DIExpression(), !9315)
    #dbg_value(ptr @4, !9316, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9320)
    #dbg_value(i64 1, !9316, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9320)
    #dbg_value(ptr @4, !9321, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9324)
    #dbg_value(i64 1, !9321, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9324)
    #dbg_value(ptr @4, !9316, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9326)
    #dbg_value(i64 1, !9316, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9326)
    #dbg_value(ptr @4, !9321, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9329)
    #dbg_value(i64 1, !9321, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9329)
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !9531
  %i.q = load ptr, ptr %i.p, align 8, !dbg !9531, !nonnull !556, !align !1115, !noundef !556 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !9531
  %i.s = load i64, ptr %i.r, align 8, !dbg !9531, !noundef !556 ; 3 uses
    #dbg_value(ptr %i.q, !9330, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9335)
    #dbg_value(ptr %i.q, !9336, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9343)
    #dbg_value(i64 %i.s, !9330, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9335)
    #dbg_value(i64 %i.s, !9336, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9343)
    #dbg_value(i64 %i.s, !9338, !DIExpression(), !9344)
    #dbg_value(i64 %i.s, !9345, !DIExpression(), !9351)
    #dbg_value(ptr %i.q, !9339, !DIExpression(), !9352)
    #dbg_value(ptr %i.q, !9348, !DIExpression(), !9351)
  %.idx = shl nuw nsw i64 %i.s, 4, !dbg !9532
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 %.idx, !dbg !9532
    #dbg_value(ptr %i.q, !9244, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9353)
    #dbg_value(ptr %i.t, !9244, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9353)
    #dbg_value(i64 0, !9244, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !9353)
  %i.u = load i64, ptr %1, align 8, !range !773
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = trunc nuw i64 %i.u to i1
  %i.x = load i64, ptr %i.v, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.z = load i8, ptr %i.y, align 8, !range !1018
  %i.aa = trunc nuw i8 %i.z to i1
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 41
  %i.ac = load i8, ptr %i.ab, align 1, !range !1018
  %i.ad = trunc nuw i8 %i.ac to i1
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 7 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %.sroa.327.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ai = load i64, ptr %i.ah, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 813
  %i.al = tail call i64 @llvm.uadd.sat.i64(i64 %i.ai, i64 1) ; 2 uses
  %.sroa.433.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.438.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.sroa.5.0..sroa_idx7.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.421.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.426.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %.sroa.5.0..sroa_idx6.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.415.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.443.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 868 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 877 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 792
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 776
    #dbg_value(ptr %i.q, !9244, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9353)
end_hunk_0
