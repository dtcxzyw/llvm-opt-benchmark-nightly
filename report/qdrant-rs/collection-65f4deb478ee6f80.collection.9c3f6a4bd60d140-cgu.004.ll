Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/collection-65f4deb478ee6f80.collection.9c3f6a4bd60d140-cgu.004?download=true
inline.NumInlined: 5142
inline.NumDeleted: 3641
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 48
loop-unroll.NumUnrolled: 50
begin_hunk_0_@_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtBc_2io8io_slice7IoSliceENCNvXs6_NtNtCsbM8FbnNn9aS_6rustls4conn10connectionINtB21_16ConnectionCommonNtNtNtB23_6client11client_conn20ClientConnectionDataENtB1Z_13PlaintextSink14write_vectored0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4y_8for_each4callRShNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5N_3VecB5B_E14extend_trustedBN_E0E0ECsPYQCUnoTxQ_10collection:bb.a
  %i.v = getelementptr i8, ptr %i.u, i64 8
  %.val16.i.epil = load i64, ptr %i.v, align 8, !noalias !5365, !noundef !7
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %.sroa.7.0.copyload, i64 %.epil.init ; 2 uses
  store ptr %.val15.i.epil, ptr %i.w, align 8, !noalias !5366, !captures !57
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store i64 %.val16.i.epil, ptr %i.x, align 8, !noalias !5367
  %i.y = add i64 %.epil.init, 1
  br label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtBb_2io8io_slice7IoSliceENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1q_8adapters3map8map_foldRBQ_RShuNCNvXs6_NtNtCsbM8FbnNn9aS_6rustls4conn10connectionINtB2W_16ConnectionCommonNtNtNtB2Y_6client11client_conn20ClientConnectionDataENtB2U_13PlaintextSink14write_vectored0NCINvNvB1k_8for_each4callB2I_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB64_3VecB2I_E14extend_trustedINtB2a_3MapBF_B2M_EE0E0E0ECsPYQCUnoTxQ_10collection.exit

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtBb_2io8io_slice7IoSliceENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1q_8adapters3map8map_foldRBQ_RShuNCNvXs6_NtNtCsbM8FbnNn9aS_6rustls4conn10connectionINtB2W_16ConnectionCommonNtNtNtB2Y_6client11client_conn20ClientConnectionDataENtB2U_13PlaintextSink14write_vectored0NCINvNvB1k_8for_each4callB2I_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB64_3VecB2I_E14extend_trustedINtB2a_3MapBF_B2M_EE0E0E0ECsPYQCUnoTxQ_10collection.exit: ; preds = %.epil.preheader, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtBb_2io8io_slice7IoSliceENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1q_8adapters3map8map_foldRBQ_RShuNCNvXs6_NtNtCsbM8FbnNn9aS_6rustls4conn10connectionINtB2W_16ConnectionCommonNtNtNtB2Y_6client11client_conn20ClientConnectionDataENtB2U_13PlaintextSink14write_vectored0NCINvNvB1k_8for_each4callB2I_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB64_3VecB2I_E14extend_trustedINtB2a_3MapBF_B2M_EE0E0E0ECsPYQCUnoTxQ_10collection.exit.loopexit.unr-lcssa, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.r, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtBb_2io8io_slice7IoSliceENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1q_8adapters3map8map_foldRBQ_RShuNCNvXs6_NtNtCsbM8FbnNn9aS_6rustls4conn10connectionINtB2W_16ConnectionCommonNtNtNtB2Y_6client11client_conn20ClientConnectionDataENtB2U_13PlaintextSink14write_vectored0NCINvNvB1k_8for_each4callB2I_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB64_3VecB2I_E14extend_trustedINtB2a_3MapBF_B2M_EE0E0E0ECsPYQCUnoTxQ_10collection.exit.loopexit.unr-lcssa ], [ %i.y, %.epil.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !5365
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtCs4ByaKcm8ifS_6sparse5index19posting_list_common14PostingElementENCINvMs1_NtB1r_23compressed_posting_listNtB2F_24CompressedPostingBuilder5buildNtNtCseUPaKcRZYeZ_4half8binary163f16Es0_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4s_8for_each4callmNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5F_3VecmE14extend_trustedBN_E0E0ECsPYQCUnoTxQ_10collection(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 6 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 8 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs4ByaKcm8ifS_6sparse5index19posting_list_common14PostingElementENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB25_8adapters3map8map_foldRBQ_muNCINvMs1_NtBU_23compressed_posting_listNtB3y_24CompressedPostingBuilder5buildNtNtCseUPaKcRZYeZ_4half8binary163f16Es0_0NCINvNvB1Z_8for_each4callmNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5S_3VecmE14extend_trustedINtB2P_3MapBF_B3p_EE0E0E0ECsPYQCUnoTxQ_10collection.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub nuw i64 %i.b, %i.c                   ; 4 uses
  %i.e = lshr i64 %i.d, 3                         ; 5 uses
  %min.iters.check = icmp ult i64 %i.d, 136
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.b
  %i.f = shl i64 %.sroa.5.0.copyload, 2           ; 2 uses
  %scevgep = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.f
  %i.g = lshr exact i64 %i.d, 1
  %i.h = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.f
  %scevgep2 = getelementptr i8, ptr %i.h, i64 %i.g
  %i.i = and i64 %i.d, -8
  %i.j = getelementptr i8, ptr %0, i64 %i.i
  %scevgep3 = getelementptr i8, ptr %i.j, i64 -4
  %bound0 = icmp ult ptr %scevgep, %scevgep3
  %bound1 = icmp ult ptr %0, %scevgep2
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.k = and i64 %i.e, 7                          ; 2 uses
  %i.l = icmp eq i64 %i.k, 0
  %i.m = select i1 %i.l, i64 8, i64 %i.k
  %n.vec = sub nsw i64 %i.e, %i.m                 ; 3 uses
  %i.n = add i64 %.sroa.5.0.copyload, %n.vec
  %i.o = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %wide.vec = load <8 x i32>, ptr %i.p, align 4, !alias.scope !5382, !noalias !5383
  %strided.vec = shufflevector <8 x i32> %wide.vec, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec4 = load <8 x i32>, ptr %i.r, align 4, !alias.scope !5382, !noalias !5383
  %strided.vec5 = shufflevector <8 x i32> %wide.vec4, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.s = getelementptr [4 x i8], ptr %i.o, i64 %index ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store <4 x i32> %strided.vec, ptr %i.s, align 4, !alias.scope !5384, !noalias !5385
  store <4 x i32> %strided.vec5, ptr %i.t, align 4, !alias.scope !5384, !noalias !5385
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.u = icmp eq i64 %index.next, %n.vec
  br i1 %i.u, label %scalar.ph.preheader, label %vector.body, !llvm.loop !5379

scalar.ph.preheader:                              ; preds = %vector.body, %vector.memcheck, %bb.b
  %.ph = phi i64 [ %.sroa.5.0.copyload, %vector.memcheck ], [ %.sroa.5.0.copyload, %bb.b ], [ %i.n, %vector.body ] ; 2 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.b ], [ %n.vec, %vector.body ] ; 4 uses
  %i.v = sub nsw i64 %i.e, %.sroa.01.0.i.ph
  %xtraiter = and i64 %i.v, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %i.w = phi i64 [ %i.z, %scalar.ph.prol ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.01.0.i.prol = phi i64 [ %i.aa, %scalar.ph.prol ], [ %.sroa.01.0.i.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i.prol
  %.val15.i.prol = load i32, ptr %i.x, align 4, !noalias !5383, !noundef !7
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.w
  store i32 %.val15.i.prol, ptr %i.y, align 4, !noalias !5386
  %i.z = add i64 %i.w, 1                          ; 3 uses
  %i.aa = add nuw i64 %.sroa.01.0.i.prol, 1       ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !5380

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.z, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.z, %scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], [ %i.aa, %scalar.ph.prol ]
  %i.ab = sub nsw i64 %.sroa.01.0.i.ph, %i.e
  %i.ac = icmp ugt i64 %i.ab, -4
  br i1 %i.ac, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs4ByaKcm8ifS_6sparse5index19posting_list_common14PostingElementENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB25_8adapters3map8map_foldRBQ_muNCINvMs1_NtBU_23compressed_posting_listNtB3y_24CompressedPostingBuilder5buildNtNtCseUPaKcRZYeZ_4half8binary163f16Es0_0NCINvNvB1Z_8for_each4callmNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5S_3VecmE14extend_trustedINtB2P_3MapBF_B3p_EE0E0E0ECsPYQCUnoTxQ_10collection.exit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.ad = phi i64 [ %i.as, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.sroa.01.0.i = phi i64 [ %i.at, %scalar.ph ], [ %.sroa.01.0.i.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i
  %.val15.i = load i32, ptr %i.ae, align 4, !noalias !5383, !noundef !7
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.ad
  store i32 %.val15.i, ptr %i.af, align 4, !noalias !5386
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %.val15.i.1 = load i32, ptr %i.ah, align 4, !noalias !5383, !noundef !7
  %i.ai = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.ad
  %i.aj = getelementptr i8, ptr %i.ai, i64 4
  store i32 %.val15.i.1, ptr %i.aj, align 4, !noalias !5386
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %.val15.i.2 = load i32, ptr %i.al, align 4, !noalias !5383, !noundef !7
  %i.am = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.ad
  %i.an = getelementptr i8, ptr %i.am, i64 8
  store i32 %.val15.i.2, ptr %i.an, align 4, !noalias !5386
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %.val15.i.3 = load i32, ptr %i.ap, align 4, !noalias !5383, !noundef !7
  %i.aq = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.ad
  %i.ar = getelementptr i8, ptr %i.aq, i64 12
  store i32 %.val15.i.3, ptr %i.ar, align 4, !noalias !5386
  %i.as = add i64 %i.ad, 4                        ; 2 uses
  %i.at = add nuw i64 %.sroa.01.0.i, 4            ; 2 uses
  %i.au = icmp eq i64 %i.at, %i.e
  br i1 %i.au, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs4ByaKcm8ifS_6sparse5index19posting_list_common14PostingElementENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB25_8adapters3map8map_foldRBQ_muNCINvMs1_NtBU_23compressed_posting_listNtB3y_24CompressedPostingBuilder5buildNtNtCseUPaKcRZYeZ_4half8binary163f16Es0_0NCINvNvB1Z_8for_each4callmNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5S_3VecmE14extend_trustedINtB2P_3MapBF_B3p_EE0E0E0ECsPYQCUnoTxQ_10collection.exit, label %scalar.ph, !llvm.loop !5381

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs4ByaKcm8ifS_6sparse5index19posting_list_common14PostingElementENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB25_8adapters3map8map_foldRBQ_muNCINvMs1_NtBU_23compressed_posting_listNtB3y_24CompressedPostingBuilder5buildNtNtCseUPaKcRZYeZ_4half8binary163f16Es0_0NCINvNvB1Z_8for_each4callmNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5S_3VecmE14extend_trustedINtB2P_3MapBF_B3p_EE0E0E0ECsPYQCUnoTxQ_10collection.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.as, %scalar.ph ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !5383
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtCs4ByaKcm8ifS_6sparse5index19posting_list_common14PostingElementENCINvMs1_NtB1r_23compressed_posting_listNtB2F_24CompressedPostingBuilder5buildNtNtCseUPaKcRZYeZ_4half8binary163f16Es1_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4s_8for_each4callB3M_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5I_3VecB3M_E14extend_trustedBN_E0E0ECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !7, !noundef !7 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs4ByaKcm8ifS_6sparse5index19posting_list_common14PostingElementENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB25_8adapters3map8map_foldRBQ_NtNtCseUPaKcRZYeZ_4half8binary163f16uNCINvMs1_NtBU_23compressed_posting_listNtB47_24CompressedPostingBuilder5buildB3n_Es1_0NCINvNvB1Z_8for_each4callB3n_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5Y_3VecB3n_E14extend_trustedINtB2P_3MapBF_B3Y_EE0E0E0ECsPYQCUnoTxQ_10collection.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.a to i64
  %i.g = sub nuw i64 %i.e, %i.f
  %i.h = lshr exact i64 %i.g, 3
  br label %bb.c

bb.c:                                             ; preds = %bb.p, %bb.b
  %.val10.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.bk, %bb.p ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.bl, %bb.p ] ; 2 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.sroa.01.0.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5398)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5399)
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.k = load float, ptr %i.j, align 4, !alias.scope !5400, !noalias !5401, !noundef !7 ; 2 uses
  %i.l = load atomic i64, ptr @_RNvNtNtCs8hX8rJVGcL_10std_detect6detect5cache5CACHE monotonic, align 8, !noalias !5402 ; 2 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %.split.i.i.i.i.i, label %_RNvNtNtCs8hX8rJVGcL_10std_detect6detect5cache4test.exit.i.i.i.i.i, !prof !18

.split.i.i.i.i.i:                                 ; preds = %bb.c
  %i.n = invoke noundef i128 @_RNvNtNtCs8hX8rJVGcL_10std_detect6detect5cache21detect_and_initialize()
          to label %.noexc.i unwind label %bb.q, !noalias !5403

.noexc.i:                                         ; preds = %.split.i.i.i.i.i
  %i.o = and i128 %i.n, 18014398509481984
  %.not1.i.i.i.i.i = icmp eq i128 %i.o, 0
  br i1 %.not1.i.i.i.i.i, label %bb.d, label %bb.o

_RNvNtNtCs8hX8rJVGcL_10std_detect6detect5cache4test.exit.i.i.i.i.i: ; preds = %bb.c
  %i.p = and i64 %i.l, 18014398509481984
  %.not.i.i.i.i.i = icmp eq i64 %i.p, 0
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.o

bb.d:                                             ; preds = %_RNvNtNtCs8hX8rJVGcL_10std_detect6detect5cache4test.exit.i.i.i.i.i, %.noexc.i
  %i.q = bitcast float %i.k to i32                ; 5 uses
  %i.r = and i32 %i.q, -2147483648                ; 2 uses
  %i.s = and i32 %i.q, 2139095040                 ; 6 uses
  %i.t = and i32 %i.q, 8388607                    ; 4 uses
  %i.u = icmp eq i32 %i.s, 2139095040
  br i1 %i.u, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.v = icmp eq i32 %i.t, 0
  %i.w = lshr exact i32 %i.r, 16
  %i.x = lshr i32 %i.t, 13
  %i.y = or disjoint i32 %i.x, %i.w
  %2 = trunc nuw i32 %i.y to i16
  %3 = select i1 %i.v, i16 31744, i16 32256
  %i.z = or i16 %3, %2
  br label %bb.p

bb.f:                                             ; preds = %bb.d
  %i.aa = lshr exact i32 %i.r, 16                 ; 4 uses
  %i.ab = lshr exact i32 %i.s, 23                 ; 2 uses
  %i.ac = icmp samesign ugt i32 %i.s, 1191182336
  br i1 %i.ac, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = icmp samesign ult i32 %i.s, 947912704
  br i1 %i.ad, label %bb.j, label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.ae = trunc nuw i32 %i.aa to i16
  %i.af = or disjoint i16 %i.ae, 31744
  br label %bb.p

bb.i:                                             ; preds = %bb.g
  %i.ag = lshr exact i32 %i.s, 13
  %i.ah = add nuw nsw i32 %i.ag, 16384
  %i.ai = lshr i32 %i.t, 13
  %i.aj = and i32 %i.q, 4096
  %i.ak = icmp ne i32 %i.aj, 0
  %i.al = and i32 %i.q, 12287
  %i.am = icmp ne i32 %i.al, 0
  %or.cond.not.i.i.i.i.i.i = and i1 %i.ak, %i.am
  %i.an = or disjoint i32 %i.ah, %i.ai
  %i.ao = or i32 %i.an, %i.aa
  %i.ap = trunc i32 %i.ao to i16
  %i.aq = zext i1 %or.cond.not.i.i.i.i.i.i to i16
  %spec.select7.i.i.i.i.i.i = add i16 %i.ap, %i.aq
  br label %bb.p

bb.j:                                             ; preds = %bb.g
  %i.ar = icmp samesign ult i32 %i.s, 855638016
  br i1 %i.ar, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.as = sub nsw i32 126, %i.ab
  %i.at = or disjoint i32 %i.t, 8388608           ; 3 uses
  %i.au = lshr i32 %i.at, %i.as                   ; 2 uses
  %i.av = sub nsw i32 29, %i.ab
  %i.aw = and i32 %i.av, 31                       ; 2 uses
  %i.ax = shl nuw i32 1, %i.aw
  %i.ay = and i32 %i.ax, %i.at
  %i.az = icmp eq i32 %i.ay, 0
  br i1 %i.az, label %bb.n, label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.ba = trunc nuw i32 %i.aa to i16
  br label %bb.p

bb.m:                                             ; preds = %bb.k
  %i.bb = shl i32 3, %i.aw
  %i.bc = add nuw i32 %i.bb, 16777215
  %i.bd = and i32 %i.bc, %i.at
  %i.be = icmp ne i32 %i.bd, 0
  %i.bf = zext i1 %i.be to i32
  %spec.select.i.i.i.i.i.i = add nuw nsw i32 %i.au, %i.bf
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.k
  %.sroa.03.0.i.i.i.i.i.i = phi i32 [ %i.au, %bb.k ], [ %spec.select.i.i.i.i.i.i, %bb.m ]
  %i.bg = or i32 %.sroa.03.0.i.i.i.i.i.i, %i.aa
  %i.bh = trunc nuw i32 %i.bg to i16
  br label %bb.p

bb.o:                                             ; preds = %_RNvNtNtCs8hX8rJVGcL_10std_detect6detect5cache4test.exit.i.i.i.i.i, %.noexc.i
  %i.bi = tail call fastcc noundef i16 @_RNvNtNtNtCseUPaKcRZYeZ_4half8binary164arch3x8619f32_to_f16_x86_f16c(float noundef %i.k) #41
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.l, %bb.i, %bb.h, %bb.e
  %.sroa.0.0.i.i.i.i.i = phi i16 [ %i.bi, %bb.o ], [ %i.z, %bb.e ], [ %i.af, %bb.h ], [ %i.ba, %bb.l ], [ %i.bh, %bb.n ], [ %spec.select7.i.i.i.i.i.i, %bb.i ]
  %i.bj = getelementptr inbounds nuw [2 x i8], ptr %.sroa.8.0.copyload, i64 %.val10.i
  store i16 %.sroa.0.0.i.i.i.i.i, ptr %i.bj, align 2, !noalias !5404
  %i.bk = add i64 %.val10.i, 1                    ; 2 uses
  %i.bl = add nuw i64 %.sroa.01.0.i, 1            ; 2 uses
  %i.bm = icmp eq i64 %i.bl, %i.h
  br i1 %i.bm, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs4ByaKcm8ifS_6sparse5index19posting_list_common14PostingElementENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB25_8adapters3map8map_foldRBQ_NtNtCseUPaKcRZYeZ_4half8binary163f16uNCINvMs1_NtBU_23compressed_posting_listNtB47_24CompressedPostingBuilder5buildB3n_Es1_0NCINvNvB1Z_8for_each4callB3n_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5Y_3VecB3n_E14extend_trustedINtB2P_3MapBF_B3Y_EE0E0E0ECsPYQCUnoTxQ_10collection.exit, label %bb.c

bb.q:                                             ; preds = %.split.i.i.i.i.i
  %i.bn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val10.i, ptr %.sroa.0.0.copyload, align 8, !noalias !5403
  resume { ptr, i32 } %i.bn

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs4ByaKcm8ifS_6sparse5index19posting_list_common14PostingElementENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB25_8adapters3map8map_foldRBQ_NtNtCseUPaKcRZYeZ_4half8binary163f16uNCINvMs1_NtBU_23compressed_posting_listNtB47_24CompressedPostingBuilder5buildB3n_Es1_0NCINvNvB1Z_8for_each4callB3n_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5Y_3VecB3n_E14extend_trustedINtB2P_3MapBF_B3Y_EE0E0E0ECsPYQCUnoTxQ_10collection.exit: ; preds = %bb.p, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.bk, %bb.p ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !5403
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtCs4ByaKcm8ifS_6sparse5index19posting_list_common14PostingElementENCINvMs1_NtB1r_23compressed_posting_listNtB2F_24CompressedPostingBuilder5buildNtNtCseUPaKcRZYeZ_4half8binary163f16Es2_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4s_8for_each4callmNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5F_3VecmE14extend_trustedBN_E0E0ECsPYQCUnoTxQ_10collection(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 6 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 8 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs4ByaKcm8ifS_6sparse5index19posting_list_common14PostingElementENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB25_8adapters3map8map_foldRBQ_muNCINvMs1_NtBU_23compressed_posting_listNtB3y_24CompressedPostingBuilder5buildNtNtCseUPaKcRZYeZ_4half8binary163f16Es2_0NCINvNvB1Z_8for_each4callmNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5S_3VecmE14extend_trustedINtB2P_3MapBF_B3p_EE0E0E0ECsPYQCUnoTxQ_10collection.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub nuw i64 %i.b, %i.c                   ; 4 uses
  %i.e = lshr i64 %i.d, 3                         ; 5 uses
  %min.iters.check = icmp ult i64 %i.d, 136
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.b
  %i.f = shl i64 %.sroa.5.0.copyload, 2           ; 2 uses
  %scevgep = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.f
  %i.g = lshr exact i64 %i.d, 1
  %i.h = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.f
  %scevgep2 = getelementptr i8, ptr %i.h, i64 %i.g
  %i.i = and i64 %i.d, -8
  %i.j = getelementptr i8, ptr %0, i64 %i.i
  %scevgep3 = getelementptr i8, ptr %i.j, i64 -4
  %bound0 = icmp ult ptr %scevgep, %scevgep3
  %bound1 = icmp ult ptr %0, %scevgep2
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.k = and i64 %i.e, 7                          ; 2 uses
  %i.l = icmp eq i64 %i.k, 0
  %i.m = select i1 %i.l, i64 8, i64 %i.k
  %n.vec = sub nsw i64 %i.e, %i.m                 ; 3 uses
  %i.n = add i64 %.sroa.5.0.copyload, %n.vec
  %i.o = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %wide.vec = load <8 x i32>, ptr %i.p, align 4, !alias.scope !5419, !noalias !5420
  %strided.vec = shufflevector <8 x i32> %wide.vec, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec4 = load <8 x i32>, ptr %i.r, align 4, !alias.scope !5419, !noalias !5420
  %strided.vec5 = shufflevector <8 x i32> %wide.vec4, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.s = getelementptr [4 x i8], ptr %i.o, i64 %index ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store <4 x i32> %strided.vec, ptr %i.s, align 4, !alias.scope !5421, !noalias !5422
  store <4 x i32> %strided.vec5, ptr %i.t, align 4, !alias.scope !5421, !noalias !5422
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.u = icmp eq i64 %index.next, %n.vec
  br i1 %i.u, label %scalar.ph.preheader, label %vector.body, !llvm.loop !5416

scalar.ph.preheader:                              ; preds = %vector.body, %vector.memcheck, %bb.b
  %.ph = phi i64 [ %.sroa.5.0.copyload, %vector.memcheck ], [ %.sroa.5.0.copyload, %bb.b ], [ %i.n, %vector.body ] ; 2 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.b ], [ %n.vec, %vector.body ] ; 4 uses
  %i.v = sub nsw i64 %i.e, %.sroa.01.0.i.ph
  %xtraiter = and i64 %i.v, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %i.w = phi i64 [ %i.z, %scalar.ph.prol ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.01.0.i.prol = phi i64 [ %i.aa, %scalar.ph.prol ], [ %.sroa.01.0.i.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i.prol
  %.val15.i.prol = load i32, ptr %i.x, align 4, !noalias !5420, !noundef !7
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.w
  store i32 %.val15.i.prol, ptr %i.y, align 4, !noalias !5423
  %i.z = add i64 %i.w, 1                          ; 3 uses
  %i.aa = add nuw i64 %.sroa.01.0.i.prol, 1       ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !5417

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.z, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.z, %scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], [ %i.aa, %scalar.ph.prol ]
  %i.ab = sub nsw i64 %.sroa.01.0.i.ph, %i.e
  %i.ac = icmp ugt i64 %i.ab, -4
  br i1 %i.ac, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs4ByaKcm8ifS_6sparse5index19posting_list_common14PostingElementENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB25_8adapters3map8map_foldRBQ_muNCINvMs1_NtBU_23compressed_posting_listNtB3y_24CompressedPostingBuilder5buildNtNtCseUPaKcRZYeZ_4half8binary163f16Es2_0NCINvNvB1Z_8for_each4callmNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5S_3VecmE14extend_trustedINtB2P_3MapBF_B3p_EE0E0E0ECsPYQCUnoTxQ_10collection.exit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.ad = phi i64 [ %i.as, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.sroa.01.0.i = phi i64 [ %i.at, %scalar.ph ], [ %.sroa.01.0.i.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i
  %.val15.i = load i32, ptr %i.ae, align 4, !noalias !5420, !noundef !7
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.ad
  store i32 %.val15.i, ptr %i.af, align 4, !noalias !5423
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %.val15.i.1 = load i32, ptr %i.ah, align 4, !noalias !5420, !noundef !7
  %i.ai = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.ad
  %i.aj = getelementptr i8, ptr %i.ai, i64 4
  store i32 %.val15.i.1, ptr %i.aj, align 4, !noalias !5423
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %.val15.i.2 = load i32, ptr %i.al, align 4, !noalias !5420, !noundef !7
end_hunk_0
