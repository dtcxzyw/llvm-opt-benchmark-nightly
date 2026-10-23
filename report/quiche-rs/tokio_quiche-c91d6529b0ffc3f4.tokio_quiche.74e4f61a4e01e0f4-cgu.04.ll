Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quiche-rs/original/tokio_quiche-c91d6529b0ffc3f4.tokio_quiche.74e4f61a4e01e0f4-cgu.04?download=true
inline.NumInlined: 347
inline.NumDeleted: 183
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterRShENCNvMNtNtCsa2e0UnRrdBM_12tokio_quiche8settings4quicNtB1w_12QuicSettings12default_alpn0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2Q_8for_each4callINtNtCsexYYUdYSQU6_5alloc3vec3VechENCINvMsk_B3W_IB3U_B3T_E14extend_trustedBN_E0E0EB1A_:bb.a
    #dbg_value(i64 %.val28.i, !5633, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5454)
    #dbg_value(i64 %.val28.i, !5631, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5455)
    #dbg_value(i64 %.val28.i, !5636, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5456)
    #dbg_value(i64 %.val28.i, !5637, !DIExpression(), !5457)
    #dbg_value(i64 %.val28.i, !5641, !DIExpression(), !5458)
    #dbg_value(i64 %.val28.i, !5644, !DIExpression(), !5459)
    #dbg_value(i64 %.val28.i, !5657, !DIExpression(), !5462)
    #dbg_value(i64 %.val28.i, !5661, !DIExpression(), !5465)
    #dbg_value(i64 %.val28.i, !5647, !DIExpression(), !5466)
    #dbg_value(i64 %.val28.i, !5654, !DIExpression(), !5453)
    #dbg_value(i64 1, !5648, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5466)
    #dbg_value(i64 1, !5655, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5453)
    #dbg_value(i64 1, !5648, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5466)
    #dbg_value(i64 1, !5655, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5453)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !5723, !noalias !5665
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsa2e0UnRrdBM_12tokio_quiche(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %.val28.i, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !dbg !5723, !noalias !5614

.noexc.i:                                         ; preds = %bb.c
  %i.k = load i64, ptr %i.a, align 8, !dbg !5723, !range !2578, !noalias !5665, !noundef !824
  %i.l = trunc nuw i64 %i.k to i1, !dbg !5724
  %i.m = load i64, ptr %i.g, align 8, !dbg !5725, !range !2579, !noalias !5665, !noundef !824 ; 3 uses
  br i1 %i.l, label %bb.d, label %bb.e, !dbg !5724, !prof !2271

bb.d:                                             ; preds = %.noexc.i
  %i.n = load i64, ptr %i.h, align 8, !dbg !5726, !noalias !5665
    #dbg_value(i64 %i.m, !5650, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5471)
    #dbg_value(i64 %i.n, !5650, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5471)
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.m, i64 %i.n) #22
          to label %.noexc29.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !dbg !5727, !noalias !5614

.noexc29.i:                                       ; preds = %bb.d
  unreachable, !dbg !5727

bb.e:                                             ; preds = %.noexc.i
  %i.o = load ptr, ptr %i.h, align 8, !dbg !5728, !noalias !5665, !nonnull !824, !noundef !824 ; 2 uses
    #dbg_value(i64 %i.m, !5649, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5472)
    #dbg_value(ptr %i.o, !5649, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5472)
    #dbg_value(ptr poison, !5653, !DIExpression(), !5473)
  %i.p = icmp ule i64 %.val28.i, %i.m, !dbg !5729
    #dbg_value(i1 true, !5666, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !5476)
  tail call void @llvm.assume(i1 %i.p), !dbg !5730
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !5731, !noalias !5665
    #dbg_value(i64 %i.m, !5638, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5477)
    #dbg_value(ptr %i.o, !5638, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5477)
    #dbg_value(i64 0, !5638, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !5477)
  %.not.i.i.i = icmp eq i64 %.val28.i, 0, !dbg !5732
  br i1 %.not.i.i.i, label %bb.g, label %bb.f, !dbg !5732

bb.f:                                             ; preds = %bb.e
    #dbg_value(ptr %.val27.i, !5658, !DIExpression(), !5462)
    #dbg_value(ptr %.val27.i, !5662, !DIExpression(), !5465)
    #dbg_value(ptr %i.o, !5659, !DIExpression(), !5462)
    #dbg_value(ptr %i.o, !5663, !DIExpression(), !5465)
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.o, ptr nonnull readonly align 1 %.val27.i, i64 %.val28.i, i1 false), !dbg !5733, !noalias !5665
    #dbg_value(i64 %.val28.i, !5638, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !5477)
  br label %bb.g, !dbg !5734

bb.g:                                             ; preds = %bb.f, %bb.e
    #dbg_value(i64 %.val28.i, !5638, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !5477)
    #dbg_value(i64 %i.m, !5668, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5480)
    #dbg_value(i64 %i.m, !5677, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5483)
    #dbg_value(ptr %i.o, !5668, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5480)
    #dbg_value(ptr %i.o, !5677, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5483)
    #dbg_value(i64 %.val28.i, !5668, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !5480)
    #dbg_value(i64 %.val28.i, !5677, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !5483)
    #dbg_value(ptr poison, !5672, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !5484)
    #dbg_declare(ptr poison, !5673, !DIExpression(), !5485)
    #dbg_value(ptr poison, !5681, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 16), !5486)
    #dbg_value(ptr poison, !5682, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !5486)
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %.sroa.8.0.copyload, i64 %.val22.i, !dbg !5735 ; 3 uses
  store i64 %i.m, ptr %i.q, align 8, !dbg !5736, !noalias !5688
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8, !dbg !5736
  store ptr %i.o, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !dbg !5736, !noalias !5688
  %.sroa.53.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16, !dbg !5736
  store i64 %.val28.i, ptr %.sroa.53.0..sroa_idx.i.i, align 8, !dbg !5736, !noalias !5688
  %i.r = add i64 %.val22.i, 1, !dbg !5737         ; 2 uses
  %i.s = add nuw i64 %.sroa.01.0.i, 1, !dbg !5738 ; 2 uses
    #dbg_value(i64 %i.s, !5569, !DIExpression(), !5406)
    #dbg_value(i64 %i.s, !5595, !DIExpression(), !5398)
  %i.t = icmp eq i64 %i.s, %i.f, !dbg !5739
  br i1 %i.t, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterRShENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB10_8adapters3map8map_foldRBQ_INtNtCsexYYUdYSQU6_5alloc3vec3VechEuNCNvMNtNtCsa2e0UnRrdBM_12tokio_quiche8settings4quicNtB2X_12QuicSettings12default_alpn0NCINvNvBU_8for_each4callB2i_NCINvMsk_B2l_IB2j_B2i_E14extend_trustedINtB1K_3MapBF_B2S_EE0E0E0EB31_.exit, label %bb.c, !dbg !5739

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.c, %bb.d
  %lpad.loopexit.split-lp24 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
    #dbg_value(ptr poison, !5691, !DIExpression(), !5499)
    #dbg_value(ptr poison, !5697, !DIExpression(), !5502)
    #dbg_value(ptr poison, !5703, !DIExpression(), !5505)
    #dbg_value(ptr poison, !2507, !DIExpression(), !5507)
    #dbg_value(ptr poison, !2513, !DIExpression(), !5509)
  store i64 %.val22.i, ptr %.sroa.0.0.copyload, align 8, !dbg !5740, !noalias !5614
  resume { ptr, i32 } %lpad.loopexit.split-lp24, !dbg !5741

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterRShENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB10_8adapters3map8map_foldRBQ_INtNtCsexYYUdYSQU6_5alloc3vec3VechEuNCNvMNtNtCsa2e0UnRrdBM_12tokio_quiche8settings4quicNtB2X_12QuicSettings12default_alpn0NCINvNvBU_8for_each4callB2i_NCINvMsk_B2l_IB2j_B2i_E14extend_trustedINtB1K_3MapBF_B2S_EE0E0E0EB31_.exit: ; preds = %bb.g, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.r, %bb.g ], !dbg !5742
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !5742, !noalias !5614
  ret void, !dbg !5743
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterhENCNvMs_NtCsexYYUdYSQU6_5alloc5sliceSh18to_ascii_lowercase0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2m_8for_each4callhNCINvMsk_NtB1y_3vecINtB3z_3VechE14extend_trustedBN_E0E0ECsa2e0UnRrdBM_12tokio_quiche(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !5750 {
bb.a:
    #dbg_value(ptr %0, !5860, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5867)
    #dbg_value(ptr %1, !5860, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5867)
    #dbg_declare(ptr poison, !5861, !DIExpression(), !5868)
    #dbg_declare(ptr %2, !5862, !DIExpression(), !5869)
    #dbg_declare(ptr %2, !5870, !DIExpression(), !5882)
    #dbg_declare(ptr poison, !5876, !DIExpression(), !5883)
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !dbg !6011 ; 2 uses
    #dbg_value(ptr %.sroa.0.0.copyload, !5884, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5899)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !6011
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !6011 ; 8 uses
    #dbg_value(i64 %.sroa.5.0.copyload, !5884, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5899)
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !6011
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !6011 ; 6 uses
    #dbg_value(ptr %.sroa.7.0.copyload, !5884, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !5899)
    #dbg_value(ptr %0, !5887, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5762)
    #dbg_value(ptr %1, !5887, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5762)
    #dbg_declare(ptr poison, !5888, !DIExpression(), !5763)
    #dbg_declare(ptr poison, !5891, !DIExpression(), !5764)
    #dbg_value(i64 1, !5900, !DIExpression(), !5772)
    #dbg_value(i64 1, !5917, !DIExpression(), !5775)
    #dbg_value(ptr %1, !5890, !DIExpression(), !5776)
    #dbg_value(ptr poison, !5921, !DIExpression(), !5779)
    #dbg_value(ptr poison, !5924, !DIExpression(), !5780)
  %.sroa.7.0.copyload3 = ptrtoaddr ptr %.sroa.7.0.copyload to i64, !dbg !6012
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !6012
  %i.a = icmp eq ptr %0, %1, !dbg !6013
  br i1 %i.a, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvMs_NtCsexYYUdYSQU6_5alloc5sliceSh18to_ascii_lowercase0NCINvNvBS_8for_each4callhNCINvMsk_NtB2o_3vecINtB3J_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECsa2e0UnRrdBM_12tokio_quiche.exit, label %iter.check, !dbg !6014

iter.check:                                       ; preds = %bb.a
    #dbg_value(i64 0, !5892, !DIExpression(), !5783)
    #dbg_value(i64 0, !5918, !DIExpression(), !5775)
    #dbg_value(ptr %1, !5895, !DIExpression(), !5784)
    #dbg_value(ptr %1, !5914, !DIExpression(), !5785)
    #dbg_value(ptr %1, !5929, !DIExpression(), !5787)
    #dbg_value(ptr %0, !5915, !DIExpression(), !5785)
    #dbg_value(ptr %0, !5929, !DIExpression(), !5789)
    #dbg_value(ptr %1, !5908, !DIExpression(), !5790)
    #dbg_value(ptr %0, !5909, !DIExpression(), !5790)
    #dbg_value(ptr %0, !5904, !DIExpression(), !5791)
    #dbg_value(ptr %1, !5903, !DIExpression(), !5791)
  %i.b = ptrtoint ptr %1 to i64, !dbg !6015       ; 3 uses
  %i.c = ptrtoint ptr %0 to i64, !dbg !6015       ; 4 uses
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !6015       ; 8 uses
    #dbg_value(i64 %i.d, !5893, !DIExpression(), !5792)
  %min.iters.check = icmp ult i64 %i.d, 8, !dbg !6016
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck, !dbg !6016

vector.memcheck:                                  ; preds = %iter.check
  %i.e = add i64 %.sroa.5.0.copyload, %.sroa.7.0.copyload3, !dbg !6016
  %i.f = sub i64 %i.c, %i.e, !dbg !6016
  %diff.check = icmp ugt i64 %i.f, -32, !dbg !6016
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check, !dbg !6017

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check4 = icmp ult i64 %i.d, 32, !dbg !6016
  br i1 %min.iters.check4, label %vec.epilog.ph, label %vector.ph, !dbg !6016

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.g = and i64 %i.d, 24
  %n.vec = and i64 %i.d, -32                      ; 5 uses
  %i.h = add i64 %.sroa.5.0.copyload, %n.vec      ; 2 uses
  %i.i = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body, !dbg !6016

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !6017 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 %index, !dbg !6018 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16, !dbg !6019
  %wide.load = load <16 x i8>, ptr %i.j, align 1, !dbg !6019, !noalias !5937 ; 2 uses
  %wide.load5 = load <16 x i8>, ptr %i.k, align 1, !dbg !6019, !noalias !5937 ; 2 uses
  %i.l = add <16 x i8> %wide.load, splat (i8 -65), !dbg !6020
  %i.m = add <16 x i8> %wide.load5, splat (i8 -65), !dbg !6020
  %i.n = icmp ult <16 x i8> %i.l, splat (i8 26), !dbg !6020
  %i.o = icmp ult <16 x i8> %i.m, splat (i8 26), !dbg !6020
  %i.p = select <16 x i1> %i.n, <16 x i8> splat (i8 32), <16 x i8> zeroinitializer, !dbg !6020
  %i.q = select <16 x i1> %i.o, <16 x i8> splat (i8 32), <16 x i8> zeroinitializer, !dbg !6020
  %i.r = or <16 x i8> %i.p, %wide.load, !dbg !6020
  %i.s = or <16 x i8> %i.q, %wide.load5, !dbg !6020
  %i.t = getelementptr i8, ptr %i.i, i64 %index, !dbg !6021 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16, !dbg !6022
  store <16 x i8> %i.r, ptr %i.t, align 1, !dbg !6022, !noalias !5984
  store <16 x i8> %i.s, ptr %i.u, align 1, !dbg !6022, !noalias !5984
  %index.next = add nuw i64 %index, 32, !dbg !6017 ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec, !dbg !6023
  br i1 %i.v, label %middle.block, label %vector.body, !dbg !6023, !llvm.loop !5819

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.d, %n.vec, !dbg !6023
  br i1 %cmp.n, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvMs_NtCsexYYUdYSQU6_5alloc5sliceSh18to_ascii_lowercase0NCINvNvBS_8for_each4callhNCINvMsk_NtB2o_3vecINtB3J_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECsa2e0UnRrdBM_12tokio_quiche.exit, label %vec.epilog.iter.check, !dbg !6023

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.g, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !5987

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ], !dbg !6017
  %n.vec6 = and i64 %i.d, -8                      ; 4 uses
  %i.w = add i64 %.sroa.5.0.copyload, %n.vec6     ; 2 uses
  %i.x = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index7 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next9, %vec.epilog.vector.body ], !dbg !6017 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 %index7, !dbg !6018
  %wide.load8 = load <8 x i8>, ptr %i.y, align 1, !dbg !6019, !noalias !5937 ; 2 uses
  %i.z = add <8 x i8> %wide.load8, splat (i8 -65), !dbg !6020
  %i.aa = icmp ult <8 x i8> %i.z, splat (i8 26), !dbg !6020
  %i.ab = select <8 x i1> %i.aa, <8 x i8> splat (i8 32), <8 x i8> zeroinitializer, !dbg !6020
  %i.ac = or <8 x i8> %i.ab, %wide.load8, !dbg !6020
  %i.ad = getelementptr i8, ptr %i.x, i64 %index7, !dbg !6021
  store <8 x i8> %i.ac, ptr %i.ad, align 1, !dbg !6022, !noalias !5984
  %index.next9 = add nuw i64 %index7, 8, !dbg !6017 ; 2 uses
  %i.ae = icmp eq i64 %index.next9, %n.vec6, !dbg !6023
  br i1 %i.ae, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !6023, !llvm.loop !5820

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n10 = icmp eq i64 %i.d, %n.vec6, !dbg !6023
  br i1 %cmp.n10, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvMs_NtCsexYYUdYSQU6_5alloc5sliceSh18to_ascii_lowercase0NCINvNvBS_8for_each4callhNCINvMsk_NtB2o_3vecINtB3J_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECsa2e0UnRrdBM_12tokio_quiche.exit, label %vec.epilog.scalar.ph.preheader, !dbg !6023

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %iter.check ], [ %.sroa.5.0.copyload, %vector.memcheck ], [ %i.h, %vec.epilog.iter.check ], [ %i.w, %vec.epilog.middle.block ] ; 3 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec6, %vec.epilog.middle.block ] ; 4 uses
  %i.af = sub i64 %i.b, %i.c, !dbg !6023
  %i.ag = xor i64 %.sroa.01.0.i.ph, -1, !dbg !6023
  %i.ah = add i64 %i.ag, %i.b, !dbg !6023
  %xtraiter = and i64 %i.af, 1, !dbg !6023
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !6023
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !dbg !6023

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
    #dbg_value(i64 poison, !5918, !DIExpression(), !5775)
    #dbg_value(i64 poison, !5892, !DIExpression(), !5783)
    #dbg_value(ptr %0, !5934, !DIExpression(), !5821)
    #dbg_value(i64 poison, !5935, !DIExpression(), !5821)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.0.i.ph, !dbg !6018
    #dbg_value(ptr %i.ai, !5929, !DIExpression(), !5823)
  %.val27.i.prol = load i8, ptr %i.ai, align 1, !dbg !6019, !noalias !5937, !noundef !824 ; 2 uses
    #dbg_value(ptr poison, !5959, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !5824)
    #dbg_declare(ptr poison, !5957, !DIExpression(), !5825)
    #dbg_value(ptr poison, !5958, !DIExpression(), !5824)
    #dbg_value(ptr poison, !5952, !DIExpression(), !5826)
    #dbg_value(ptr poison, !5951, !DIExpression(), !5826)
    #dbg_value(ptr poison, !5946, !DIExpression(), !5827)
    #dbg_value(ptr poison, !5942, !DIExpression(), !5828)
  %i.aj = add i8 %.val27.i.prol, -65, !dbg !6020
  %i.ak = icmp ult i8 %i.aj, 26, !dbg !6020
  %i.al = select i1 %i.ak, i8 32, i8 0, !dbg !6020
  %.sroa.0.0.i.i.i.prol = or i8 %i.al, %.val27.i.prol, !dbg !6020
    #dbg_value(ptr poison, !5977, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !5829)
    #dbg_declare(ptr poison, !5978, !DIExpression(), !5830)
    #dbg_value(i8 %.sroa.0.0.i.i.i.prol, !5976, !DIExpression(), !5829)
    #dbg_value(ptr poison, !5968, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 16), !5831)
    #dbg_value(ptr poison, !5969, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !5831)
    #dbg_value(i8 %.sroa.0.0.i.i.i.prol, !5967, !DIExpression(), !5831)
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 %.ph, !dbg !6021
  store i8 %.sroa.0.0.i.i.i.prol, ptr %i.am, align 1, !dbg !6022, !noalias !5984
  %i.an = add i64 %.ph, 1, !dbg !6024             ; 2 uses
  %i.ao = or disjoint i64 %.sroa.01.0.i.ph, 1, !dbg !6025
    #dbg_value(i64 %i.ao, !5892, !DIExpression(), !5783)
    #dbg_value(i64 %i.ao, !5918, !DIExpression(), !5775)
  br label %vec.epilog.scalar.ph.prol.loopexit, !dbg !6023

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %vec.epilog.scalar.ph.preheader ], [ %i.an, %vec.epilog.scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %vec.epilog.scalar.ph.preheader ], [ %i.an, %vec.epilog.scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.ao, %vec.epilog.scalar.ph.prol ]
  %i.ap = icmp eq i64 %i.ah, %i.c, !dbg !6023
  br i1 %i.ap, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvMs_NtCsexYYUdYSQU6_5alloc5sliceSh18to_ascii_lowercase0NCINvNvBS_8for_each4callhNCINvMsk_NtB2o_3vecINtB3J_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECsa2e0UnRrdBM_12tokio_quiche.exit, label %vec.epilog.scalar.ph, !dbg !6023

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %i.aq = phi i64 [ %i.bd, %vec.epilog.scalar.ph ], [ %.unr, %vec.epilog.scalar.ph.prol.loopexit ], !dbg !6018 ; 3 uses
  %.sroa.01.0.i = phi i64 [ %i.be, %vec.epilog.scalar.ph ], [ %.sroa.01.0.i.unr, %vec.epilog.scalar.ph.prol.loopexit ], !dbg !6017 ; 3 uses
    #dbg_value(i64 %.sroa.01.0.i, !5918, !DIExpression(), !5775)
    #dbg_value(i64 %.sroa.01.0.i, !5892, !DIExpression(), !5783)
    #dbg_value(ptr %0, !5934, !DIExpression(), !5821)
    #dbg_value(i64 %.sroa.01.0.i, !5935, !DIExpression(), !5821)
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.0.i, !dbg !6018
    #dbg_value(ptr %i.ar, !5929, !DIExpression(), !5823)
  %.val27.i = load i8, ptr %i.ar, align 1, !dbg !6019, !noalias !5937, !noundef !824 ; 2 uses
    #dbg_value(ptr poison, !5959, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !5824)
    #dbg_declare(ptr poison, !5957, !DIExpression(), !5825)
    #dbg_value(ptr poison, !5958, !DIExpression(), !5824)
    #dbg_value(ptr poison, !5952, !DIExpression(), !5826)
    #dbg_value(ptr poison, !5951, !DIExpression(), !5826)
    #dbg_value(ptr poison, !5946, !DIExpression(), !5827)
    #dbg_value(ptr poison, !5942, !DIExpression(), !5828)
  %i.as = add i8 %.val27.i, -65, !dbg !6020
  %i.at = icmp ult i8 %i.as, 26, !dbg !6020
  %i.au = select i1 %i.at, i8 32, i8 0, !dbg !6020
  %.sroa.0.0.i.i.i = or i8 %i.au, %.val27.i, !dbg !6020
    #dbg_value(ptr poison, !5977, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !5829)
    #dbg_declare(ptr poison, !5978, !DIExpression(), !5830)
    #dbg_value(i8 %.sroa.0.0.i.i.i, !5976, !DIExpression(), !5829)
    #dbg_value(ptr poison, !5968, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 16), !5831)
    #dbg_value(ptr poison, !5969, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !5831)
    #dbg_value(i8 %.sroa.0.0.i.i.i, !5967, !DIExpression(), !5831)
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 %i.aq, !dbg !6021
  store i8 %.sroa.0.0.i.i.i, ptr %i.av, align 1, !dbg !6022, !noalias !5984
    #dbg_value(i64 %.sroa.01.0.i, !5918, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !5775)
    #dbg_value(i64 %.sroa.01.0.i, !5892, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !5783)
    #dbg_value(i64 %.sroa.01.0.i, !5935, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !5821)
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.0.i, !dbg !6018
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 1, !dbg !6018
    #dbg_value(ptr %i.ax, !5929, !DIExpression(), !5823)
  %.val27.i.1 = load i8, ptr %i.ax, align 1, !dbg !6019, !noalias !5937, !noundef !824 ; 2 uses
    #dbg_declare(ptr poison, !5957, !DIExpression(), !5825)
  %i.ay = add i8 %.val27.i.1, -65, !dbg !6020
  %i.az = icmp ult i8 %i.ay, 26, !dbg !6020
  %i.ba = select i1 %i.az, i8 32, i8 0, !dbg !6020
  %.sroa.0.0.i.i.i.1 = or i8 %i.ba, %.val27.i.1, !dbg !6020
    #dbg_declare(ptr poison, !5978, !DIExpression(), !5830)
    #dbg_value(i8 %.sroa.0.0.i.i.i.1, !5976, !DIExpression(), !5829)
    #dbg_value(i8 %.sroa.0.0.i.i.i.1, !5967, !DIExpression(), !5831)
  %i.bb = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.aq, !dbg !6021
  %i.bc = getelementptr i8, ptr %i.bb, i64 1, !dbg !6021
  store i8 %.sroa.0.0.i.i.i.1, ptr %i.bc, align 1, !dbg !6022, !noalias !5984
  %i.bd = add i64 %i.aq, 2, !dbg !6024            ; 2 uses
  %i.be = add nuw i64 %.sroa.01.0.i, 2, !dbg !6025 ; 2 uses
    #dbg_value(i64 %i.be, !5892, !DIExpression(), !5783)
    #dbg_value(i64 %i.be, !5918, !DIExpression(), !5775)
  %i.bf = icmp eq i64 %i.be, %i.d, !dbg !6023
  br i1 %i.bf, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvMs_NtCsexYYUdYSQU6_5alloc5sliceSh18to_ascii_lowercase0NCINvNvBS_8for_each4callhNCINvMsk_NtB2o_3vecINtB3J_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECsa2e0UnRrdBM_12tokio_quiche.exit, label %vec.epilog.scalar.ph, !dbg !6023, !llvm.loop !5834

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvMs_NtCsexYYUdYSQU6_5alloc5sliceSh18to_ascii_lowercase0NCINvNvBS_8for_each4callhNCINvMsk_NtB2o_3vecINtB3J_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECsa2e0UnRrdBM_12tokio_quiche.exit: ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.w, %vec.epilog.middle.block ], [ %i.h, %middle.block ], [ %.lcssa.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.bd, %vec.epilog.scalar.ph ], !dbg !6026
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !6026, !noalias !5937
  ret void, !dbg !6027
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtB8_4Once15call_once_forceNCNvMNtBa_9lazy_lockINtB19_8LazyLockNtNtNtCsa2e0UnRrdBM_12tokio_quiche7metrics4quic14___quic_MetricsE5force0E0B1K_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 4 captures(none) %1) unnamed_addr #2 !dbg !450 {
bb.a:
  %i.a = alloca [256 x i8], align 8               ; 4 uses
    #dbg_value(ptr poison, !2600, !DIExpression(DW_OP_deref, DW_OP_deref), !6043)
    #dbg_value(ptr %1, !2599, !DIExpression(), !6043)
  %i.b = load ptr, ptr %0, align 8, !dbg !6050, !nonnull !824, !align !2192, !noundef !824 ; 2 uses
    #dbg_value(ptr %i.b, !2606, !DIExpression(), !6045)
    #dbg_value(ptr %i.b, !2612, !DIExpression(), !6047)
  %i.c = load ptr, ptr %i.b, align 8, !dbg !6051, !align !2192, !noundef !824 ; 3 uses
    #dbg_value(ptr %i.c, !2618, !DIExpression(), !6049)
  store ptr null, ptr %i.b, align 8, !dbg !6052
  %.not = icmp eq ptr %i.c, null, !dbg !6053
  br i1 %.not, label %bb.d, label %bb.b, !dbg !6054, !prof !2271

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %1, i64 4, !dbg !6050
  %.val = load i8, ptr %i.d, align 4, !dbg !6050, !range !2193, !noundef !824
    #dbg_value(ptr poison, !2625, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !6029)
    #dbg_value(ptr poison, !2628, !DIExpression(), !6029)
    #dbg_value(ptr poison, !2634, !DIExpression(), !6031)
    #dbg_declare(ptr poison, !2632, !DIExpression(), !6032)
  %i.e = trunc nuw i8 %.val to i1, !dbg !6055
  br i1 %i.e, label %bb.c, label %_RNCNvMNtNtCsG258MDvU3F_3std4sync9lazy_lockINtB4_8LazyLockNtNtNtCsa2e0UnRrdBM_12tokio_quiche7metrics4quic14___quic_MetricsE5force0BZ_.exit, !dbg !6056, !prof !2271

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCsG258MDvU3F_3std4sync9lazy_lock14panic_poisoned() #24, !dbg !6057
  unreachable, !dbg !6057

_RNCNvMNtNtCsG258MDvU3F_3std4sync9lazy_lockINtB4_8LazyLockNtNtNtCsa2e0UnRrdBM_12tokio_quiche7metrics4quic14___quic_MetricsE5force0BZ_.exit: ; preds = %bb.b
    #dbg_value(ptr %i.c, !2630, !DIExpression(), !6034)
    #dbg_value(ptr %i.c, !2646, !DIExpression(), !6036)
  %i.f = load ptr, ptr %i.c, align 8, !dbg !6058, !nonnull !824, !noundef !824
    #dbg_value(ptr %i.f, !2631, !DIExpression(), !6038)
    #dbg_value(ptr %i.f, !2654, !DIExpression(), !6040)
    #dbg_declare(ptr poison, !2658, !DIExpression(), !6041)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !6059
  call void %i.f(ptr noalias nofree noundef nonnull sret([256 x i8]) align 8 captures(address) dereferenceable(256) %i.a), !dbg !6060, !inline_history !6042
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.c, ptr noundef nonnull align 8 dereferenceable(256) %i.a, i64 256, i1 false), !dbg !6061
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !6062
  ret void, !dbg !6063

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #24, !dbg !6064
  unreachable, !dbg !6064
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtB8_4Once15call_once_forceNCNvMNtBa_9lazy_lockINtB19_8LazyLockNtNtNtCsa2e0UnRrdBM_12tokio_quiche7metrics5tokio15___tokio_MetricsE5force0E0B1K_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 4 captures(none) %1) unnamed_addr #2 !dbg !464 {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 4 uses
    #dbg_value(ptr poison, !2667, !DIExpression(DW_OP_deref, DW_OP_deref), !6080)
    #dbg_value(ptr %1, !2666, !DIExpression(), !6080)
  %i.b = load ptr, ptr %0, align 8, !dbg !6087, !nonnull !824, !align !2192, !noundef !824 ; 2 uses
    #dbg_value(ptr %i.b, !2671, !DIExpression(), !6082)
    #dbg_value(ptr %i.b, !2676, !DIExpression(), !6084)
  %i.c = load ptr, ptr %i.b, align 8, !dbg !6088, !align !2192, !noundef !824 ; 3 uses
    #dbg_value(ptr %i.c, !2682, !DIExpression(), !6086)
  store ptr null, ptr %i.b, align 8, !dbg !6089
  %.not = icmp eq ptr %i.c, null, !dbg !6090
  br i1 %.not, label %bb.d, label %bb.b, !dbg !6091, !prof !2271

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %1, i64 4, !dbg !6087
  %.val = load i8, ptr %i.d, align 4, !dbg !6087, !range !2193, !noundef !824
    #dbg_value(ptr poison, !2688, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !6066)
end_hunk_0
