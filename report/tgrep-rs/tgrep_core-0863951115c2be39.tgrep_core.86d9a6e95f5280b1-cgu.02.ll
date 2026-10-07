Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tgrep-rs/original/tgrep_core-0863951115c2be39.tgrep_core.86d9a6e95f5280b1-cgu.02?download=true
inline.NumInlined: 1106
inline.NumDeleted: 635
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_RNvXNtNtCsgCecv3eZDcN_5alloc3vec14spec_from_iterINtB4_3VecINtNtNtCsf3Ta7LF998c_4core3mem12maybe_uninit11MaybeUninitNtNtCs8sO4Nh65sHq_10rayon_core3job6JobRefEEINtB2_12SpecFromIterBU_INtNtNtNtB11_4iter8adapters3map3MapINtNtNtB11_3ops5range5RangejENCNvMs_NtCsdB2fuMRIQJX_15crossbeam_deque5dequeINtB42_6BufferB1P_E5alloc0EE9from_iterCsbzNSmZPCnTx_10tgrep_core:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !652
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.j, ptr %i.n, align 8, !noalias !652
  store ptr %i.m, ptr %i.a, align 8, !noalias !652
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %i.o, align 8, !noalias !652
  invoke void @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCNvMs_NtCsdB2fuMRIQJX_15crossbeam_deque5dequeINtB1w_6BufferNtNtCs8sO4Nh65sHq_10rayon_core3job6JobRefE5alloc0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3b_8for_each4callINtNtNtBc_3mem12maybe_uninit11MaybeUninitB2n_ENCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB57_3VecB4e_E14extend_trustedBN_E0E0ECsbzNSmZPCnTx_10tgrep_core(i64 noundef %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %_RNvXs_NtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtNtCsf3Ta7LF998c_4core3mem12maybe_uninit11MaybeUninitNtNtCs8sO4Nh65sHq_10rayon_core3job6JobRefEEINtB4_18SpecFromIterNestedB13_INtNtNtNtB1a_4iter8adapters3map3MapINtNtNtB1a_3ops5range5RangejENCNvMs_NtCsdB2fuMRIQJX_15crossbeam_deque5dequeINtB4i_6BufferB1Y_E5alloc0EE9from_iterCsbzNSmZPCnTx_10tgrep_core.exit unwind label %bb.c, !noalias !651

bb.c:                                             ; preds = %_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecINtNtNtCsf3Ta7LF998c_4core3mem12maybe_uninit11MaybeUninitNtNtCs8sO4Nh65sHq_10rayon_core3job6JobRefEE14extend_trustedINtNtNtNtBN_4iter8adapters3map3MapINtNtNtBN_3ops5range5RangejENCNvMs_NtCsdB2fuMRIQJX_15crossbeam_deque5dequeINtB3F_6BufferB1B_E5alloc0EECsbzNSmZPCnTx_10tgrep_core.exit.i.i
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecINtNtNtCsf3Ta7LF998c_4core3mem12maybe_uninit11MaybeUninitNtNtCs8sO4Nh65sHq_10rayon_core3job6JobRefEENtNtNtBT_3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecINtNtNtB4_3mem12maybe_uninit11MaybeUninitNtNtCs8sO4Nh65sHq_10rayon_core3job6JobRefEEECsbzNSmZPCnTx_10tgrep_core.exit.i unwind label %bb.d, !noalias !651

bb.d:                                             ; preds = %bb.c
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #21, !noalias !651
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecINtNtNtB4_3mem12maybe_uninit11MaybeUninitNtNtCs8sO4Nh65sHq_10rayon_core3job6JobRefEEECsbzNSmZPCnTx_10tgrep_core.exit.i: ; preds = %bb.c
  resume { ptr, i32 } %i.p

_RNvXs_NtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtNtCsf3Ta7LF998c_4core3mem12maybe_uninit11MaybeUninitNtNtCs8sO4Nh65sHq_10rayon_core3job6JobRefEEINtB4_18SpecFromIterNestedB13_INtNtNtNtB1a_4iter8adapters3map3MapINtNtNtB1a_3ops5range5RangejENCNvMs_NtCsdB2fuMRIQJX_15crossbeam_deque5dequeINtB4i_6BufferB1Y_E5alloc0EE9from_iterCsbzNSmZPCnTx_10tgrep_core.exit: ; preds = %_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecINtNtNtCsf3Ta7LF998c_4core3mem12maybe_uninit11MaybeUninitNtNtCs8sO4Nh65sHq_10rayon_core3job6JobRefEE14extend_trustedINtNtNtNtBN_4iter8adapters3map3MapINtNtNtBN_3ops5range5RangejENCNvMs_NtCsdB2fuMRIQJX_15crossbeam_deque5dequeINtB3F_6BufferB1B_E5alloc0EECsbzNSmZPCnTx_10tgrep_core.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !652
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !651
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCsgCecv3eZDcN_5alloc3vec14spec_from_iterINtB4_3VecTNtNtB6_6string6StringIBL_BV_EEEINtB2_12SpecFromIterBU_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtNtB6_11collections5btree3map4IterReRSB3f_ENCNvMs_NtCsbzNSmZPCnTx_10tgrep_core9filetypesNtB3v_8TypeDefs7builtin0EE9from_iterB3x_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(72) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !662)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !663
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.val.i = load i64, ptr %i.d, align 8, !alias.scope !662, !noalias !664, !noundef !7 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !663
  call void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %.val.i, i1 noundef zeroext false, i64 noundef 8, i64 noundef 48), !noalias !663
  %i.e = load i64, ptr %i.b, align 8, !range !13, !noalias !663, !noundef !7
  %i.f = trunc nuw i64 %i.e to i1
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = load i64, ptr %i.g, align 8, !range !25, !noalias !663, !noundef !7 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.f, label %bb.b, label %_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecTNtNtB8_6string6StringIBx_BH_EEE14extend_trustedINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtNtB8_11collections5btree3map4IterReRSB2U_ENCNvMs_NtCsbzNSmZPCnTx_10tgrep_core9filetypesNtB3a_8TypeDefs7builtin0EEB3c_.exit.i.i, !prof !8

bb.b:                                             ; preds = %bb.a
  %i.j = load i64, ptr %i.i, align 8, !noalias !663
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.h, i64 %i.j) #28, !noalias !663
  unreachable

_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecTNtNtB8_6string6StringIBx_BH_EEE14extend_trustedINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtNtB8_11collections5btree3map4IterReRSB2U_ENCNvMs_NtCsbzNSmZPCnTx_10tgrep_core9filetypesNtB3a_8TypeDefs7builtin0EEB3c_.exit.i.i: ; preds = %bb.a
  %i.k = load ptr, ptr %i.i, align 8, !noalias !663, !nonnull !7, !noundef !7 ; 2 uses
  %i.l = icmp ule i64 %.val.i, %i.h
  tail call void @llvm.assume(i1 %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !663
  store i64 %i.h, ptr %i.c, align 8, !noalias !663
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.k, ptr %i.m, align 8, !noalias !663
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 0, ptr %i.n, align 8, !noalias !663
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !665
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.k, ptr %i.o, align 8, !noalias !665
  store ptr %i.n, ptr %i.a, align 8, !noalias !665
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %i.p, align 8, !noalias !665
  invoke void @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map4IterReRSB1S_ENCNvMs_NtCsbzNSmZPCnTx_10tgrep_core9filetypesNtB28_8TypeDefs7builtin0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB39_8for_each4callTNtNtB16_6string6StringINtNtB16_3vec3VecB4d_EENCINvMsk_B4C_IB4A_B4c_E14extend_trustedBN_E0E0EB2a_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %_RNvXs_NtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB6_3VecTNtNtB8_6string6StringIBU_B14_EEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtNtB8_11collections5btree3map4IterReRSB3w_ENCNvMs_NtCsbzNSmZPCnTx_10tgrep_core9filetypesNtB3M_8TypeDefs7builtin0EE9from_iterB3O_.exit unwind label %bb.c, !noalias !664

bb.c:                                             ; preds = %_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecTNtNtB8_6string6StringIBx_BH_EEE14extend_trustedINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtNtB8_11collections5btree3map4IterReRSB2U_ENCNvMs_NtCsbzNSmZPCnTx_10tgrep_core9filetypesNtB3a_8TypeDefs7builtin0EEB3c_.exit.i.i
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtBG_6string6StringIBC_B19_EEEECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #23
          to label %bb.e unwind label %bb.d, !noalias !663

bb.d:                                             ; preds = %bb.c
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #21, !noalias !663
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.q

_RNvXs_NtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB6_3VecTNtNtB8_6string6StringIBU_B14_EEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtNtB8_11collections5btree3map4IterReRSB3w_ENCNvMs_NtCsbzNSmZPCnTx_10tgrep_core9filetypesNtB3M_8TypeDefs7builtin0EE9from_iterB3O_.exit: ; preds = %_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecTNtNtB8_6string6StringIBx_BH_EEE14extend_trustedINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtNtB8_11collections5btree3map4IterReRSB2U_ENCNvMs_NtCsbzNSmZPCnTx_10tgrep_core9filetypesNtB3a_8TypeDefs7builtin0EEB3c_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !665
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !662
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !663
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCsgCecv3eZDcN_5alloc3vec14spec_from_iterINtB4_3VecTRNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryIBL_NtNtB10_6ondisk12PostingEntryEEEINtB2_12SpecFromIterBU_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB2Q_5slice4iter4IterBW_ENCINvBY_23execute_plan_with_masksNCNvMNtB10_6hybridNtB4C_11HybridIndex24execute_query_with_masks0E0EE9from_iterB10_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !675)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !676
  %.val.i = load ptr, ptr %1, align 8, !alias.scope !675, !noalias !677, !nonnull !7, !noundef !7
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val2.i = load ptr, ptr %i.d, align 8, !alias.scope !675, !noalias !677, !nonnull !7, !noundef !7
  %i.e = ptrtoint ptr %.val2.i to i64
  %i.f = ptrtoint ptr %.val.i to i64
  %i.g = sub nuw i64 %i.e, %i.f
  %i.h = lshr exact i64 %i.g, 3                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !676
  call void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.h, i1 noundef zeroext false, i64 noundef 8, i64 noundef 32), !noalias !676
  %i.i = load i64, ptr %i.b, align 8, !range !13, !noalias !676, !noundef !7
  %i.j = trunc nuw i64 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.l = load i64, ptr %i.k, align 8, !range !25, !noalias !676, !noundef !7 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.j, label %bb.b, label %_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecTRNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryIBx_NtNtBM_6ondisk12PostingEntryEEE14extend_trustedINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB2u_5slice4iter4IterBI_ENCINvBK_23execute_plan_with_masksNCNvMNtBM_6hybridNtB4g_11HybridIndex24execute_query_with_masks0E0EEBM_.exit.i.i, !prof !8

bb.b:                                             ; preds = %bb.a
  %i.n = load i64, ptr %i.m, align 8, !noalias !676
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.l, i64 %i.n) #28, !noalias !676
  unreachable

_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecTRNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryIBx_NtNtBM_6ondisk12PostingEntryEEE14extend_trustedINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB2u_5slice4iter4IterBI_ENCINvBK_23execute_plan_with_masksNCNvMNtBM_6hybridNtB4g_11HybridIndex24execute_query_with_masks0E0EEBM_.exit.i.i: ; preds = %bb.a
  %i.o = load ptr, ptr %i.m, align 8, !noalias !676, !nonnull !7, !noundef !7 ; 2 uses
  %i.p = icmp ule i64 %i.h, %i.l
  tail call void @llvm.assume(i1 %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !676
  store i64 %i.l, ptr %i.c, align 8, !noalias !676
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.o, ptr %i.q, align 8, !noalias !676
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 0, ptr %i.r, align 8, !noalias !676
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !678
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.o, ptr %i.s, align 8, !noalias !678
  store ptr %i.r, ptr %i.a, align 8, !noalias !678
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %i.t, align 8, !noalias !678
  invoke void @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryENCINvB1p_23execute_plan_with_masksNCNvMNtB1r_6hybridNtB2P_11HybridIndex24execute_query_with_masks0E0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3P_8for_each4callTRB1n_INtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtB1r_6ondisk12PostingEntryEENCINvMsk_B51_IB4Z_B4S_E14extend_trustedBN_E0E0EB1r_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %_RNvXs_NtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB6_3VecTRNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryIBU_NtNtB19_6ondisk12PostingEntryEEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB36_5slice4iter4IterB15_ENCINvB17_23execute_plan_with_masksNCNvMNtB19_6hybridNtB4U_11HybridIndex24execute_query_with_masks0E0EE9from_iterB19_.exit unwind label %bb.c, !noalias !677

bb.c:                                             ; preds = %_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecTRNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryIBx_NtNtBM_6ondisk12PostingEntryEEE14extend_trustedINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB2u_5slice4iter4IterBI_ENCINvBK_23execute_plan_with_masksNCNvMNtBM_6hybridNtB4g_11HybridIndex24execute_query_with_masks0E0EEBM_.exit.i.i
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecTRNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryIBC_NtNtB1e_6ondisk12PostingEntryEEEEB1e_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #23
          to label %bb.e unwind label %bb.d, !noalias !676

bb.d:                                             ; preds = %bb.c
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #21, !noalias !676
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.u

_RNvXs_NtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB6_3VecTRNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryIBU_NtNtB19_6ondisk12PostingEntryEEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB36_5slice4iter4IterB15_ENCINvB17_23execute_plan_with_masksNCNvMNtB19_6hybridNtB4U_11HybridIndex24execute_query_with_masks0E0EE9from_iterB19_.exit: ; preds = %_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecTRNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryIBx_NtNtBM_6ondisk12PostingEntryEEE14extend_trustedINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB2u_5slice4iter4IterBI_ENCINvBK_23execute_plan_with_masksNCNvMNtBM_6hybridNtB4g_11HybridIndex24execute_query_with_masks0E0EEBM_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !678
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !675
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !676
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCsgCecv3eZDcN_5alloc3vec14spec_from_iterINtB4_3VecTRmQIBL_NtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEEINtB2_12SpecFromIterBU_INtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7IterMutmBY_EE9from_iterB16_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [40 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !688)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !689)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !690
  %i.d = tail call { ptr, ptr } @_RNvXsK_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_7IterMutmINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB1p_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1), !noalias !688 ; 2 uses
  %i.e = extractvalue { ptr, ptr } %i.d, 0        ; 2 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val.i = load i64, ptr %i.f, align 8, !alias.scope !689, !noalias !688, !noundef !7
  %i.g = tail call i64 @llvm.uadd.sat.i64(i64 %.val.i, i64 1)
  %i.h = tail call i64 @llvm.umax.i64(i64 %i.g, i64 4) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !690
  call void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.h, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16), !noalias !688
  %i.i = load i64, ptr %i.a, align 8, !range !13, !noalias !690, !noundef !7
  %i.j = trunc nuw i64 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.l = load i64, ptr %i.k, align 8, !range !25, !noalias !690, !noundef !7 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.j, label %bb.c, label %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsbzNSmZPCnTx_10tgrep_core.exit.i, !prof !8

bb.c:                                             ; preds = %bb.b
  %i.n = load i64, ptr %i.m, align 8, !noalias !690
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.l, i64 %i.n) #28, !noalias !688
  unreachable

_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsbzNSmZPCnTx_10tgrep_core.exit.i: ; preds = %bb.b
  %i.o = extractvalue { ptr, ptr } %i.d, 1
  %i.p = load ptr, ptr %i.m, align 8, !noalias !690, !nonnull !7, !noundef !7 ; 3 uses
  %i.q = icmp ule i64 %i.h, %i.l
  tail call void @llvm.assume(i1 %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !690
  store ptr %i.e, ptr %i.p, align 8, !noalias !688
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %i.o, ptr %i.r, align 8, !noalias !688
  store i64 %i.l, ptr %i.c, align 8, !noalias !690
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %i.p, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !690
  %.sroa.64.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  store i64 1, ptr %.sroa.64.0..sroa_idx.i, align 8, !noalias !690
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !690
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false), !noalias !688
  tail call void @llvm.experimental.noalias.scope.decl(metadata !691)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !692)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !693)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !694)
  %i.s = invoke { ptr, ptr } @_RNvXsK_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_7IterMutmINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB1p_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.b)
          to label %.noexc.i unwind label %.loopexit.split-lp.i, !noalias !688 ; 2 uses

.noexc.i:                                         ; preds = %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsbzNSmZPCnTx_10tgrep_core.exit.i
  %i.t = extractvalue { ptr, ptr } %i.s, 0        ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not4.i.i.i, label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTRmQIBI_NtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEEINtB2_10SpecExtendBR_INtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7IterMutmBV_EE11spec_extendB13_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.noexc.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  br label %bb.d

bb.d:                                             ; preds = %.noexc10.i, %.lr.ph.i.i.i
  %.pn.i.i.i = phi { ptr, ptr } [ %i.s, %.lr.ph.i.i.i ], [ %i.ag, %.noexc10.i ]
  %i.v = phi ptr [ %i.t, %.lr.ph.i.i.i ], [ %i.ah, %.noexc10.i ]
  %i.w = extractvalue { ptr, ptr } %.pn.i.i.i, 1  ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.w) ]
  %i.x = load i64, ptr %.sroa.64.0..sroa_idx.i, align 8, !alias.scope !695, !noalias !696, !noundef !7 ; 5 uses
  %i.y = icmp ult i64 %i.x, 576460752303423488
  call void @llvm.assume(i1 %i.y)
  %i.z = load i64, ptr %i.c, align 8, !range !12, !alias.scope !695, !noalias !696, !noundef !7
  %i.aa = icmp eq i64 %i.x, %i.z
  br i1 %i.aa, label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecTRmQIBv_NtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEE7reserveBQ_.exit.i.i.i, label %.noexc9.i

_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecTRmQIBv_NtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEE7reserveBQ_.exit.i.i.i: ; preds = %bb.d
  %.val.i.i.i = load i64, ptr %i.u, align 8, !alias.scope !697, !noalias !698, !noundef !7
  %i.ab = call i64 @llvm.uadd.sat.i64(i64 %.val.i.i.i, i64 1)
  invoke void @_RINvNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.x, i64 noundef range(i64 1, 0) %i.ab, i64 noundef 8, i64 noundef 16)
          to label %.noexc9.i unwind label %.loopexit.i, !noalias !688

.noexc9.i:                                        ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecTRmQIBv_NtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEE7reserveBQ_.exit.i.i.i, %bb.d
  %i.ac = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !695, !noalias !696, !nonnull !7, !noundef !7
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.ac, i64 %i.x ; 2 uses
  store ptr %i.v, ptr %i.ad, align 8, !noalias !688
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr %i.w, ptr %i.ae, align 8, !noalias !688
  %i.af = add nuw nsw i64 %i.x, 1
  store i64 %i.af, ptr %.sroa.64.0..sroa_idx.i, align 8, !alias.scope !695, !noalias !696
  %i.ag = invoke { ptr, ptr } @_RNvXsK_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_7IterMutmINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB1p_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.b)
          to label %.noexc10.i unwind label %.loopexit.i, !noalias !688 ; 2 uses

.noexc10.i:                                       ; preds = %.noexc9.i
  %i.ah = extractvalue { ptr, ptr } %i.ag, 0      ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i, label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTRmQIBI_NtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEEINtB2_10SpecExtendBR_INtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7IterMutmBV_EE11spec_extendB13_.exit.i, label %bb.d

bb.e:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8, !alias.scope !688, !noalias !689
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.ai, align 8, !alias.scope !688, !noalias !689
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.aj, align 8, !alias.scope !688, !noalias !689
  br label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB4_3VecTRmQIBS_NtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7IterMutmB15_EE9from_iterB1d_.exit

.loopexit.i:                                      ; preds = %.noexc9.i, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecTRmQIBv_NtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEE7reserveBQ_.exit.i.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

.loopexit.split-lp.i:                             ; preds = %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsbzNSmZPCnTx_10tgrep_core.exit.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.f:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecTRmQINtNtB7_3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1a_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecTRmQIBC_NtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEEEB1k_.exit.i unwind label %bb.g, !noalias !688

_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTRmQIBI_NtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEEINtB2_10SpecExtendBR_INtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7IterMutmBV_EE11spec_extendB13_.exit.i: ; preds = %.noexc10.i, %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !690
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !689
  br label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB4_3VecTRmQIBS_NtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7IterMutmB15_EE9from_iterB1d_.exit

bb.g:                                             ; preds = %bb.f
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #21, !noalias !688
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecTRmQIBC_NtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEEEB1k_.exit.i: ; preds = %bb.f
  resume { ptr, i32 } %lpad.phi.i

_RNvXNtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB4_3VecTRmQIBS_NtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7IterMutmB15_EE9from_iterB1d_.exit: ; preds = %bb.e, %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTRmQIBI_NtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEEINtB2_10SpecExtendBR_INtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7IterMutmBV_EE11spec_extendB13_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !690
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_map9FilterMapINtNtB1W_3map3MapIB1S_INtNtNtB20_5slice4iter4IterB11_ENCNvNtCsbzNSmZPCnTx_10tgrep_core9gitignore22build_p4ignore_matcher0ENCB3N_s_0ENCB3N_s0_0EE9from_iterB3R_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [16 x i8], align 16               ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 9 uses
  %i.h = alloca [16 x i8], align 16               ; 5 uses
  store ptr %1, ptr %i.h, align 16
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %2, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !717
  call void @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtB8_10filter_map9FilterMapINtNtNtBc_5slice4iter4IterNtNtCsgCecv3eZDcN_5alloc6string6StringENCNvNtCsbzNSmZPCnTx_10tgrep_core9gitignore22build_p4ignore_matcher0ENCB2w_s_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB3K_8find_map5checkReB1R_QNCB2w_s0_0E0INtNtNtBc_3ops12control_flow11ControlFlowB1R_EEB2A_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull %i.j), !noalias !718
  %i.k = load i64, ptr %i.e, align 8, !range !15, !noalias !717, !noundef !7 ; 2 uses
  %.not.i.i = icmp eq i64 %i.k, -1
  br i1 %.not.i.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !717
  store i64 0, ptr %0, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.m, align 8
  br label %bb.c

bb.c:                                             ; preds = %.loopexit14, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret void

bb.d:                                             ; preds = %bb.f, %bb.e
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbzNSmZPCnTx_10tgrep_core.exit unwind label %bb.l

bb.e:                                             ; preds = %bb.a
  %.sroa.7.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx10, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !717
  store i64 %i.k, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef 4, i1 noundef zeroext false, i64 noundef 8, i64 noundef 24)
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.e
  %i.o = load i64, ptr %i.d, align 8, !range !13, !noundef !7
  %i.p = trunc nuw i64 %i.o to i1
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.r = load i64, ptr %i.q, align 8, !range !25, !noundef !7 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  br i1 %i.p, label %bb.f, label %bb.g, !prof !8

bb.f:                                             ; preds = %.noexc
  %i.t = load i64, ptr %i.s, align 8
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.r, i64 %i.t) #28
          to label %.noexc6 unwind label %bb.d

.noexc6:                                          ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %.noexc
  %i.u = load ptr, ptr %i.s, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.v = icmp ugt i64 %i.r, 3
  call void @llvm.assume(i1 %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  store i64 %i.r, ptr %i.g, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  store ptr %i.u, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.experimental.noalias.scope.decl(metadata !719)
  call void @llvm.experimental.noalias.scope.decl(metadata !720)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !719
  %i.w = load <2 x ptr>, ptr %i.h, align 16
  store <2 x ptr> %i.w, ptr %i.c, align 16, !noalias !721
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !722
  invoke void @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtB8_10filter_map9FilterMapINtNtNtBc_5slice4iter4IterNtNtCsgCecv3eZDcN_5alloc6string6StringENCNvNtCsbzNSmZPCnTx_10tgrep_core9gitignore22build_p4ignore_matcher0ENCB2w_s_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB3K_8find_map5checkReB1R_QNCB2w_s0_0E0INtNtNtBc_3ops12control_flow11ControlFlowB1R_EEB2A_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull %i.x)
          to label %.noexc7 unwind label %.loopexit.split-lp

.noexc7:                                          ; preds = %bb.g
  %i.y = load i64, ptr %i.a, align 8, !range !15, !noalias !722, !noundef !7 ; 2 uses
  %.not.i.i8.i.i = icmp eq i64 %i.y, -1
  br i1 %.not.i.i8.i.i, label %.loopexit14, label %.lr.ph.i.i
end_hunk_0
begin_hunk_1_@_RNvXNtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set4ItermENCNCNvMs0_NtB15_4liveNtB4d_9LiveIndex25lookup_trigram_with_masks00EE9from_iterB15_:bb.a
  %i.bh = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.bi = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.bk = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  br label %bb.h

bb.h:                                             ; preds = %.noexc11, %.lr.ph.i.i
  %i.bl = phi ptr [ %i.bg, %.lr.ph.i.i ], [ %i.df, %.noexc11 ]
  call void @llvm.experimental.noalias.scope.decl(metadata !993)
  %.val.i.i.i = load ptr, ptr %i.bh, align 8, !alias.scope !994, !noalias !995, !nonnull !7, !align !17, !noundef !7 ; 4 uses
  %.val5.i.i.i = load ptr, ptr %i.bi, align 8, !alias.scope !994, !noalias !995, !nonnull !7, !align !24, !noundef !7
  %.val6.i.i.i = load i32, ptr %i.bl, align 4, !noalias !996, !noundef !7 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !997
  %i.bm = load i32, ptr %.val5.i.i.i, align 4, !noalias !996, !noundef !7
  store i32 %i.bm, ptr %i.a, align 4, !noalias !997
  store i32 %.val6.i.i.i, ptr %i.bj, align 4, !noalias !997
  %i.bn = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 72
  %i.bo = load i64, ptr %i.bn, align 8, !alias.scope !998, !noalias !999, !noundef !7
  %i.bp = icmp eq i64 %i.bo, 0
  br i1 %i.bp, label %.loopexit.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bq = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 80
  %i.br = invoke noundef i64 @_RINvYNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateNtNtCsf3Ta7LF998c_4core4hash11BuildHasher8hash_oneRTmmEECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.bq, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.a)
          to label %.noexc8 unwind label %.loopexit.split-lp.loopexit ; 2 uses

.noexc8:                                          ; preds = %bb.i
  %i.bs = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 48
  call void @llvm.experimental.noalias.scope.decl(metadata !1000)
  call void @llvm.experimental.noalias.scope.decl(metadata !1001)
  %i.bt = lshr i64 %i.br, 57
  %i.bu = trunc nuw nsw i64 %i.bt to i8
  %i.bv = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 56
  %i.bw = load i64, ptr %i.bv, align 8, !alias.scope !1002, !noalias !999, !noundef !7 ; 2 uses
  %i.bx = load ptr, ptr %i.bs, align 8, !alias.scope !1002, !noalias !999, !nonnull !7, !noundef !7 ; 2 uses
  %i.by = insertelement <16 x i8> poison, i8 %i.bu, i64 0
  %i.bz = shufflevector <16 x i8> %i.by, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.j

bb.j:                                             ; preds = %bb.l, %.noexc8
  %.sroa.9.0.i.i.i.i.i.i.i = phi i64 [ 0, %.noexc8 ], [ %i.cq, %bb.l ]
  %.pn.i.i.i.i.i.i = phi i64 [ %i.br, %.noexc8 ], [ %i.cr, %bb.l ]
  %.sroa.01.0.i.i.i.i.i.i.i = and i64 %.pn.i.i.i.i.i.i, %i.bw ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 %.sroa.01.0.i.i.i.i.i.i.i
  %.sroa.0.0.copyload.i24.i.i.i.i.i.i = load <16 x i8>, ptr %i.ca, align 1, !noalias !1003 ; 2 uses
  %i.cb = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i.i, %i.bz
  %i.cc = bitcast <16 x i1> %i.cb to i16          ; 2 uses
  %.not.i.not30.i.i.i.i.i.i = icmp eq i16 %i.cc, 0
  br i1 %.not.i.not30.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.j, %bb.k
  %.sroa.06.0.i31.i.i.i.i.i.i = phi i16 [ %i.cp, %bb.k ], [ %i.cc, %bb.j ] ; 3 uses
  %i.cd = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i.i.i.i.i, i1 true)
  %i.ce = zext nneg i16 %i.cd to i64
  %i.cf = add i64 %.sroa.01.0.i.i.i.i.i.i.i, %i.ce
  %i.cg = and i64 %i.cf, %i.bw
  %i.ch = sub nsw i64 0, %i.cg
  %i.ci = getelementptr inbounds [12 x i8], ptr %i.bx, i64 %i.ch ; 2 uses
  %i.cj = getelementptr inbounds i8, ptr %i.ci, i64 -12
  %i.ck = invoke noundef zeroext i1 @_RNvXCsbDKHzkXHCUM_9hashbrownTmmEINtB2_10EquivalentBq_E10equivalentCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.cj)
          to label %.noexc9 unwind label %.loopexit

.noexc9:                                          ; preds = %.lr.ph.i.i.i.i.i.i
  br i1 %i.ck, label %_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapTmmENtNtCsbzNSmZPCnTx_10tgrep_core7trigram12TrigramMasksNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE3getBO_EBW_.exit.i.i.i.i, label %bb.k, !prof !11

._crit_edge.i.i.i.i.i.i:                          ; preds = %bb.k, %bb.j
  %i.cl = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i.i, splat (i8 -1)
  %i.cm = bitcast <16 x i1> %i.cl to i16
  %i.cn = icmp eq i16 %i.cm, 0
  br i1 %i.cn, label %bb.l, label %.loopexit.i.i, !prof !8

bb.k:                                             ; preds = %.noexc9
  %i.co = add i16 %.sroa.06.0.i31.i.i.i.i.i.i, -1
  %i.cp = and i16 %i.co, %.sroa.06.0.i31.i.i.i.i.i.i ; 2 uses
  %.not.i.not.i.i.i.i.i.i = icmp eq i16 %i.cp, 0
  br i1 %.not.i.not.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

bb.l:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  %i.cq = add i64 %.sroa.9.0.i.i.i.i.i.i.i, 16    ; 2 uses
  %i.cr = add i64 %.sroa.01.0.i.i.i.i.i.i.i, %i.cq
  br label %bb.j

_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapTmmENtNtCsbzNSmZPCnTx_10tgrep_core7trigram12TrigramMasksNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE3getBO_EBW_.exit.i.i.i.i: ; preds = %.noexc9
  %i.cs = getelementptr inbounds i8, ptr %i.ci, i64 -4
  %i.ct = load i16, ptr %i.cs, align 1, !noalias !996
  %i.cu = zext i16 %i.ct to i64
  %i.cv = shl nuw nsw i64 %i.cu, 32
  br label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %._crit_edge.i.i.i.i.i.i, %_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapTmmENtNtCsbzNSmZPCnTx_10tgrep_core7trigram12TrigramMasksNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE3getBO_EBW_.exit.i.i.i.i, %bb.h
  %.sroa.2.0.insert.insert.i.i.i.i = phi i64 [ %i.cv, %_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapTmmENtNtCsbzNSmZPCnTx_10tgrep_core7trigram12TrigramMasksNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE3getBO_EBW_.exit.i.i.i.i ], [ 281470681743360, %bb.h ], [ 281470681743360, %._crit_edge.i.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !997
  %.sroa.0.0.insert.ext.i.i.i.i = zext i32 %.val6.i.i.i to i64
  %.sroa.0.0.insert.insert.i.i.i.i = or disjoint i64 %.sroa.2.0.insert.insert.i.i.i.i, %.sroa.0.0.insert.ext.i.i.i.i
  %i.cw = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !1004, !noalias !1005, !noundef !7 ; 5 uses
  %i.cx = icmp ult i64 %i.cw, 1152921504606846976
  call void @llvm.assume(i1 %i.cx)
  %i.cy = load i64, ptr %i.e, align 8, !range !12, !alias.scope !1004, !noalias !1005, !noundef !7
  %i.cz = icmp eq i64 %i.cw, %i.cy
  br i1 %i.cz, label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryE7reserveBI_.exit.i.i, label %.noexc10

_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryE7reserveBI_.exit.i.i: ; preds = %.loopexit.i.i
  %.val.i.i = load i64, ptr %i.bk, align 8, !alias.scope !1005, !noalias !1004, !noundef !7
  %i.da = call i64 @llvm.uadd.sat.i64(i64 %.val.i.i, i64 1)
  invoke void @_RINvNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %i.cw, i64 noundef %i.da, i64 noundef 4, i64 noundef 8)
          to label %.noexc10 unwind label %.loopexit.split-lp.loopexit

.noexc10:                                         ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryE7reserveBI_.exit.i.i, %.loopexit.i.i
  %i.db = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !1004, !noalias !1005, !nonnull !7, !noundef !7
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %i.cw
  store i64 %.sroa.0.0.insert.insert.i.i.i.i, ptr %i.dc, align 4
  %i.dd = add nuw nsw i64 %i.cw, 1
  store i64 %i.dd, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !1004, !noalias !1005
  %i.de = invoke { ptr, ptr } @_RNvXsG_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_4ItermuENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.d)
          to label %.noexc11 unwind label %.loopexit.split-lp.loopexit

.noexc11:                                         ; preds = %.noexc10
  %i.df = extractvalue { ptr, ptr } %i.de, 0      ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.df, null
  br i1 %.not.i.i.i, label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEINtB2_10SpecExtendBR_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set4ItermENCNCNvMs0_NtBV_4liveNtB3U_9LiveIndex25lookup_trigram_with_masks00EE11spec_extendBV_.exit, label %bb.h

_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set4ItermENCNCNvMs0_NtCsbzNSmZPCnTx_10tgrep_core4liveNtB20_9LiveIndex25lookup_trigram_with_masks00ENtNtNtB9_6traits8iterator8Iterator4nextB22_.exit: ; preds = %bb.a
  store i64 0, ptr %0, align 8
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.dg, align 8
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.dh, align 8
  br label %bb.m

bb.m:                                             ; preds = %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEINtB2_10SpecExtendBR_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set4ItermENCNCNvMs0_NtBV_4liveNtB3U_9LiveIndex25lookup_trigram_with_masks00EE11spec_extendBV_.exit, %_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set4ItermENCNCNvMs0_NtCsbzNSmZPCnTx_10tgrep_core4liveNtB20_9LiveIndex25lookup_trigram_with_masks00ENtNtNtB9_6traits8iterator8Iterator4nextB22_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %.noexc10, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryE7reserveBI_.exit.i.i, %bb.i
  %lpad.loopexit18 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsbzNSmZPCnTx_10tgrep_core.exit
  %lpad.loopexit.split-lp19 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit18, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp19, %.loopexit.split-lp.loopexit.split-lp ]
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEB1c_.exit unwind label %bb.n

_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEINtB2_10SpecExtendBR_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set4ItermENCNCNvMs0_NtBV_4liveNtB3U_9LiveIndex25lookup_trigram_with_masks00EE11spec_extendBV_.exit: ; preds = %.noexc11, %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  br label %bb.m

bb.n:                                             ; preds = %.loopexit.split-lp
  %i.di = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #21
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEB1c_.exit: ; preds = %.loopexit.split-lp
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB4_3VecTRmRNtNtB6_6string6StringEEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4ItermB15_EE9from_iterCsbzNSmZPCnTx_10tgrep_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [40 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = tail call { ptr, ptr } @_RNvXsG_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_4ItermNtNtCsgCecv3eZDcN_5alloc6string6StringENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1) ; 2 uses
  %i.e = extractvalue { ptr, ptr } %i.d, 0        ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val = load i64, ptr %i.f, align 8, !noundef !7
  %i.g = tail call i64 @llvm.uadd.sat.i64(i64 %.val, i64 1)
  %i.h = tail call i64 @llvm.umax.i64(i64 %i.g, i64 4) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.h, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16)
  %i.i = load i64, ptr %i.a, align 8, !range !13, !noundef !7
  %i.j = trunc nuw i64 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.l = load i64, ptr %i.k, align 8, !range !25, !noundef !7 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.j, label %bb.c, label %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsbzNSmZPCnTx_10tgrep_core.exit, !prof !8

bb.c:                                             ; preds = %bb.b
  %i.n = load i64, ptr %i.m, align 8
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.l, i64 %i.n) #28
  unreachable

_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsbzNSmZPCnTx_10tgrep_core.exit: ; preds = %bb.b
  %i.o = extractvalue { ptr, ptr } %i.d, 1
  %i.p = load ptr, ptr %i.m, align 8, !nonnull !7, !noundef !7 ; 3 uses
  %i.q = icmp ule i64 %i.h, %i.l
  tail call void @llvm.assume(i1 %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr %i.e, ptr %i.p, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %i.o, ptr %i.r, align 8
  store i64 %i.l, ptr %i.c, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %i.p, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.64.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  store i64 1, ptr %.sroa.64.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1012)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1013)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1014)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1015)
  %i.s = invoke { ptr, ptr } @_RNvXsG_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_4ItermNtNtCsgCecv3eZDcN_5alloc6string6StringENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.b)
          to label %.noexc unwind label %.loopexit.split-lp ; 2 uses

.noexc:                                           ; preds = %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsbzNSmZPCnTx_10tgrep_core.exit
  %i.t = extractvalue { ptr, ptr } %i.s, 0        ; 2 uses
  %.not4.i.i = icmp eq ptr %i.t, null
  br i1 %.not4.i.i, label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTRmRNtNtB6_6string6StringEEINtB2_10SpecExtendBR_INtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4ItermBV_EE11spec_extendCsbzNSmZPCnTx_10tgrep_core.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.noexc
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  br label %bb.d

bb.d:                                             ; preds = %.noexc10, %.lr.ph.i.i
  %.pn.i.i = phi { ptr, ptr } [ %i.s, %.lr.ph.i.i ], [ %i.ag, %.noexc10 ]
  %i.v = phi ptr [ %i.t, %.lr.ph.i.i ], [ %i.ah, %.noexc10 ]
  %i.w = extractvalue { ptr, ptr } %.pn.i.i, 1    ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.w) ]
  %i.x = load i64, ptr %.sroa.64.0..sroa_idx, align 8, !alias.scope !1016, !noalias !1017, !noundef !7 ; 5 uses
  %i.y = icmp ult i64 %i.x, 576460752303423488
  call void @llvm.assume(i1 %i.y)
  %i.z = load i64, ptr %i.c, align 8, !range !12, !alias.scope !1016, !noalias !1017, !noundef !7
  %i.aa = icmp eq i64 %i.x, %i.z
  br i1 %i.aa, label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecTRmRNtNtB6_6string6StringEE7reserveCsbzNSmZPCnTx_10tgrep_core.exit.i.i, label %.noexc9

_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecTRmRNtNtB6_6string6StringEE7reserveCsbzNSmZPCnTx_10tgrep_core.exit.i.i: ; preds = %bb.d
  %.val.i.i = load i64, ptr %i.u, align 8, !alias.scope !1017, !noalias !1016, !noundef !7
  %i.ab = call i64 @llvm.uadd.sat.i64(i64 %.val.i.i, i64 1)
  invoke void @_RINvNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.x, i64 noundef range(i64 1, 0) %i.ab, i64 noundef 8, i64 noundef 16)
          to label %.noexc9 unwind label %.loopexit

.noexc9:                                          ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecTRmRNtNtB6_6string6StringEE7reserveCsbzNSmZPCnTx_10tgrep_core.exit.i.i, %bb.d
  %i.ac = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !1016, !noalias !1017, !nonnull !7, !noundef !7
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.ac, i64 %i.x ; 2 uses
  store ptr %i.v, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr %i.w, ptr %i.ae, align 8
  %i.af = add nuw nsw i64 %i.x, 1
  store i64 %i.af, ptr %.sroa.64.0..sroa_idx, align 8, !alias.scope !1016, !noalias !1017
  %i.ag = invoke { ptr, ptr } @_RNvXsG_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_4ItermNtNtCsgCecv3eZDcN_5alloc6string6StringENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.b)
          to label %.noexc10 unwind label %.loopexit ; 2 uses

.noexc10:                                         ; preds = %.noexc9
  %i.ah = extractvalue { ptr, ptr } %i.ag, 0      ; 2 uses
  %.not.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i, label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTRmRNtNtB6_6string6StringEEINtB2_10SpecExtendBR_INtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4ItermBV_EE11spec_extendCsbzNSmZPCnTx_10tgrep_core.exit, label %bb.d

bb.e:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.aj, align 8
  br label %bb.f

bb.f:                                             ; preds = %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTRmRNtNtB6_6string6StringEEINtB2_10SpecExtendBR_INtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4ItermBV_EE11spec_extendCsbzNSmZPCnTx_10tgrep_core.exit, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

.loopexit:                                        ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecTRmRNtNtB6_6string6StringEE7reserveCsbzNSmZPCnTx_10tgrep_core.exit.i.i, %.noexc9
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

.loopexit.split-lp:                               ; preds = %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsbzNSmZPCnTx_10tgrep_core.exit
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.g:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecTRmRNtNtB7_6string6StringEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecTRmRNtNtBG_6string6StringEEECsbzNSmZPCnTx_10tgrep_core.exit unwind label %bb.h

_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTRmRNtNtB6_6string6StringEEINtB2_10SpecExtendBR_INtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4ItermBV_EE11spec_extendCsbzNSmZPCnTx_10tgrep_core.exit: ; preds = %.noexc10, %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  br label %bb.f

bb.h:                                             ; preds = %bb.g
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #21
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecTRmRNtNtBG_6string6StringEEECsbzNSmZPCnTx_10tgrep_core.exit: ; preds = %bb.g
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB4_3VeccEINtB2_18SpecFromIterNestedcNtNtNtCsf3Ta7LF998c_4core3str4iter5CharsE9from_iterCsbzNSmZPCnTx_10tgrep_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %.not.i = icmp eq ptr %1, %2
  br i1 %.not.i, label %_RNvXNtNtCsf3Ta7LF998c_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator4next.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 3 uses
  %i.d = load i8, ptr %1, align 1, !noalias !1030, !noundef !7 ; 5 uses
  %i.e = icmp sgt i8 %i.d, -1
  br i1 %i.e, label %bb.c, label %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbzNSmZPCnTx_10tgrep_core.exit12.i.i

_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbzNSmZPCnTx_10tgrep_core.exit12.i.i: ; preds = %bb.b
  %i.f = and i8 %i.d, 31
  %i.g = zext nneg i8 %i.f to i32                 ; 3 uses
  %i.h = icmp ne ptr %i.c, %2
  tail call void @llvm.assume(i1 %i.h)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 3 uses
  %i.j = load i8, ptr %i.c, align 1, !noalias !1030, !noundef !7
  %i.k = shl nuw nsw i32 %i.g, 6
  %i.l = and i8 %i.j, 63
  %i.m = zext nneg i8 %i.l to i32                 ; 2 uses
  %i.n = or disjoint i32 %i.k, %i.m
  %i.o = icmp samesign ugt i8 %i.d, -33
  br i1 %i.o, label %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbzNSmZPCnTx_10tgrep_core.exit14.i.i, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.p = zext nneg i8 %i.d to i32
  br label %bb.d

_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbzNSmZPCnTx_10tgrep_core.exit14.i.i: ; preds = %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbzNSmZPCnTx_10tgrep_core.exit12.i.i
  %i.q = icmp ne ptr %i.i, %2
  tail call void @llvm.assume(i1 %i.q)
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 3 ; 3 uses
  %i.s = load i8, ptr %i.i, align 1, !noalias !1030, !noundef !7
  %i.t = shl nuw nsw i32 %i.m, 6
  %i.u = and i8 %i.s, 63
  %i.v = zext nneg i8 %i.u to i32
  %i.w = or disjoint i32 %i.t, %i.v               ; 2 uses
  %i.x = shl nuw nsw i32 %i.g, 12
  %i.y = or disjoint i32 %i.w, %i.x
  %i.z = icmp samesign ugt i8 %i.d, -17
  br i1 %i.z, label %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbzNSmZPCnTx_10tgrep_core.exit16.i.i, label %bb.d

_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbzNSmZPCnTx_10tgrep_core.exit16.i.i: ; preds = %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbzNSmZPCnTx_10tgrep_core.exit14.i.i
  %i.aa = icmp ne ptr %i.r, %2
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ac = load i8, ptr %i.r, align 1, !noalias !1030, !noundef !7
  %i.ad = shl nuw nsw i32 %i.g, 18
  %i.ae = and i32 %i.ad, 1835008
  %i.af = shl nuw nsw i32 %i.w, 6
  %i.ag = and i8 %i.ac, 63
  %i.ah = zext nneg i8 %i.ag to i32
  %i.ai = or disjoint i32 %i.af, %i.ah
  %i.aj = or disjoint i32 %i.ai, %i.ae
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbzNSmZPCnTx_10tgrep_core.exit12.i.i, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbzNSmZPCnTx_10tgrep_core.exit16.i.i, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbzNSmZPCnTx_10tgrep_core.exit14.i.i
  %.sroa.0.0.ph = phi ptr [ %i.i, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbzNSmZPCnTx_10tgrep_core.exit12.i.i ], [ %i.r, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbzNSmZPCnTx_10tgrep_core.exit14.i.i ], [ %i.ab, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbzNSmZPCnTx_10tgrep_core.exit16.i.i ], [ %i.c, %bb.c ] ; 3 uses
  %spec.select.i.ph = phi i32 [ %i.n, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbzNSmZPCnTx_10tgrep_core.exit12.i.i ], [ %i.y, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbzNSmZPCnTx_10tgrep_core.exit14.i.i ], [ %i.aj, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbzNSmZPCnTx_10tgrep_core.exit16.i.i ], [ %i.p, %bb.c ]
  %i.ak = ptrtoint ptr %2 to i64                  ; 2 uses
  %i.al = ptrtoint ptr %.sroa.0.0.ph to i64
  %i.am = sub nuw i64 %i.ak, %i.al                ; 2 uses
  %i.an = lshr i64 %i.am, 2
  %i.ao = and i64 %i.am, 3
  %.not.i8 = icmp ne i64 %i.ao, 0
  %i.ap = zext i1 %.not.i8 to i64
  %.sroa.0.0.i = add nuw nsw i64 %i.an, %i.ap
  %i.aq = tail call i64 @llvm.umax.i64(i64 %.sroa.0.0.i, i64 3) ; 2 uses
  %i.ar = add nuw nsw i64 %i.aq, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.ar, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
  %i.as = load i64, ptr %i.a, align 8, !range !13, !noundef !7
  %i.at = trunc nuw i64 %i.as to i1
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.av = load i64, ptr %i.au, align 8, !range !25, !noundef !7 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.at, label %bb.e, label %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsbzNSmZPCnTx_10tgrep_core.exit, !prof !8

bb.e:                                             ; preds = %bb.d
  %i.ax = load i64, ptr %i.aw, align 8
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.av, i64 %i.ax) #28
  unreachable

_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsbzNSmZPCnTx_10tgrep_core.exit: ; preds = %bb.d
  %i.ay = load ptr, ptr %i.aw, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.az = icmp ult i64 %i.aq, %i.av
  tail call void @llvm.assume(i1 %i.az)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
end_hunk_1
