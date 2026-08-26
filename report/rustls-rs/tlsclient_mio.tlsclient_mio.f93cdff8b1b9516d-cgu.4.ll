Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rustls-rs/original/tlsclient_mio.tlsclient_mio.f93cdff8b1b9516d-cgu.4?download=true
inline.NumInlined: 416
inline.NumDeleted: 249
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtBc_2io8io_slice7IoSliceENCNvXs6_NtNtCs7ZUl82OSlxp_6rustls4conn10connectionINtB21_16ConnectionCommonNtNtNtB23_6client11client_conn20ClientConnectionDataENtB1Z_13PlaintextSink14write_vectored0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4y_8for_each4callRShNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB5N_3VecB5B_E14extend_trustedBN_E0E0ECsloGAwzL3aMH_13tlsclient_mio:bb.a
  %i.o = getelementptr [16 x i8], ptr %.sroa.7.0.copyload, i64 %i.g ; 2 uses
  %i.p = getelementptr i8, ptr %i.o, i64 16
  store ptr %.val15.i.1, ptr %i.p, align 8, !noalias !435, !captures !444
  %i.q = getelementptr i8, ptr %i.o, i64 24
  store i64 %.val16.i.1, ptr %i.q, align 8, !noalias !445
  %i.r = add i64 %i.g, 2                          ; 3 uses
  %i.s = add nuw i64 %.sroa.01.0.i, 2             ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtBb_2io8io_slice7IoSliceENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1q_8adapters3map8map_foldRBQ_RShuNCNvXs6_NtNtCs7ZUl82OSlxp_6rustls4conn10connectionINtB2W_16ConnectionCommonNtNtNtB2Y_6client11client_conn20ClientConnectionDataENtB2U_13PlaintextSink14write_vectored0NCINvNvB1k_8for_each4callB2I_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB64_3VecB2I_E14extend_trustedINtB2a_3MapBF_B2M_EE0E0E0ECsloGAwzL3aMH_13tlsclient_mio.exit.loopexit.unr-lcssa, label %bb.c

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtBb_2io8io_slice7IoSliceENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1q_8adapters3map8map_foldRBQ_RShuNCNvXs6_NtNtCs7ZUl82OSlxp_6rustls4conn10connectionINtB2W_16ConnectionCommonNtNtNtB2Y_6client11client_conn20ClientConnectionDataENtB2U_13PlaintextSink14write_vectored0NCINvNvB1k_8for_each4callB2I_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB64_3VecB2I_E14extend_trustedINtB2a_3MapBF_B2M_EE0E0E0ECsloGAwzL3aMH_13tlsclient_mio.exit.loopexit.unr-lcssa: ; preds = %bb.c
  %i.t = and i64 %i.d, 16
  %lcmp.mod.not = icmp eq i64 %i.t, 0
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtBb_2io8io_slice7IoSliceENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1q_8adapters3map8map_foldRBQ_RShuNCNvXs6_NtNtCs7ZUl82OSlxp_6rustls4conn10connectionINtB2W_16ConnectionCommonNtNtNtB2Y_6client11client_conn20ClientConnectionDataENtB2U_13PlaintextSink14write_vectored0NCINvNvB1k_8for_each4callB2I_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB64_3VecB2I_E14extend_trustedINtB2a_3MapBF_B2M_EE0E0E0ECsloGAwzL3aMH_13tlsclient_mio.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtBb_2io8io_slice7IoSliceENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1q_8adapters3map8map_foldRBQ_RShuNCNvXs6_NtNtCs7ZUl82OSlxp_6rustls4conn10connectionINtB2W_16ConnectionCommonNtNtNtB2Y_6client11client_conn20ClientConnectionDataENtB2U_13PlaintextSink14write_vectored0NCINvNvB1k_8for_each4callB2I_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB64_3VecB2I_E14extend_trustedINtB2a_3MapBF_B2M_EE0E0E0ECsloGAwzL3aMH_13tlsclient_mio.exit.loopexit.unr-lcssa, %bb.b
  %.epil.init = phi i64 [ %.sroa.5.0.copyload, %bb.b ], [ %i.r, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtBb_2io8io_slice7IoSliceENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1q_8adapters3map8map_foldRBQ_RShuNCNvXs6_NtNtCs7ZUl82OSlxp_6rustls4conn10connectionINtB2W_16ConnectionCommonNtNtNtB2Y_6client11client_conn20ClientConnectionDataENtB2U_13PlaintextSink14write_vectored0NCINvNvB1k_8for_each4callB2I_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB64_3VecB2I_E14extend_trustedINtB2a_3MapBF_B2M_EE0E0E0ECsloGAwzL3aMH_13tlsclient_mio.exit.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.01.0.i.epil.init = phi i64 [ 0, %bb.b ], [ %i.s, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtBb_2io8io_slice7IoSliceENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1q_8adapters3map8map_foldRBQ_RShuNCNvXs6_NtNtCs7ZUl82OSlxp_6rustls4conn10connectionINtB2W_16ConnectionCommonNtNtNtB2Y_6client11client_conn20ClientConnectionDataENtB2U_13PlaintextSink14write_vectored0NCINvNvB1k_8for_each4callB2I_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB64_3VecB2I_E14extend_trustedINtB2a_3MapBF_B2M_EE0E0E0ECsloGAwzL3aMH_13tlsclient_mio.exit.loopexit.unr-lcssa ]
  %lcmp.mod3 = trunc i64 %i.e to i1
  tail call void @llvm.assume(i1 %lcmp.mod3)
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.0.i.epil.init ; 2 uses
  %.val15.i.epil = load ptr, ptr %i.u, align 8, !noalias !432, !noundef !6
  %i.v = getelementptr i8, ptr %i.u, i64 8
  %.val16.i.epil = load i64, ptr %i.v, align 8, !noalias !432, !noundef !6
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %.sroa.7.0.copyload, i64 %.epil.init ; 2 uses
  store ptr %.val15.i.epil, ptr %i.w, align 8, !noalias !435, !captures !444
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store i64 %.val16.i.epil, ptr %i.x, align 8, !noalias !445
  %i.y = add i64 %.epil.init, 1
  br label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtBb_2io8io_slice7IoSliceENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1q_8adapters3map8map_foldRBQ_RShuNCNvXs6_NtNtCs7ZUl82OSlxp_6rustls4conn10connectionINtB2W_16ConnectionCommonNtNtNtB2Y_6client11client_conn20ClientConnectionDataENtB2U_13PlaintextSink14write_vectored0NCINvNvB1k_8for_each4callB2I_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB64_3VecB2I_E14extend_trustedINtB2a_3MapBF_B2M_EE0E0E0ECsloGAwzL3aMH_13tlsclient_mio.exit

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtBb_2io8io_slice7IoSliceENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1q_8adapters3map8map_foldRBQ_RShuNCNvXs6_NtNtCs7ZUl82OSlxp_6rustls4conn10connectionINtB2W_16ConnectionCommonNtNtNtB2Y_6client11client_conn20ClientConnectionDataENtB2U_13PlaintextSink14write_vectored0NCINvNvB1k_8for_each4callB2I_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB64_3VecB2I_E14extend_trustedINtB2a_3MapBF_B2M_EE0E0E0ECsloGAwzL3aMH_13tlsclient_mio.exit: ; preds = %.epil.preheader, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtBb_2io8io_slice7IoSliceENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1q_8adapters3map8map_foldRBQ_RShuNCNvXs6_NtNtCs7ZUl82OSlxp_6rustls4conn10connectionINtB2W_16ConnectionCommonNtNtNtB2Y_6client11client_conn20ClientConnectionDataENtB2U_13PlaintextSink14write_vectored0NCINvNvB1k_8for_each4callB2I_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB64_3VecB2I_E14extend_trustedINtB2a_3MapBF_B2M_EE0E0E0ECsloGAwzL3aMH_13tlsclient_mio.exit.loopexit.unr-lcssa, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.r, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtBb_2io8io_slice7IoSliceENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1q_8adapters3map8map_foldRBQ_RShuNCNvXs6_NtNtCs7ZUl82OSlxp_6rustls4conn10connectionINtB2W_16ConnectionCommonNtNtNtB2Y_6client11client_conn20ClientConnectionDataENtB2U_13PlaintextSink14write_vectored0NCINvNvB1k_8for_each4callB2I_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB64_3VecB2I_E14extend_trustedINtB2a_3MapBF_B2M_EE0E0E0ECsloGAwzL3aMH_13tlsclient_mio.exit.loopexit.unr-lcssa ], [ %i.y, %.epil.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !432
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6clonedINtB5_6ClonedINtNtNtBb_5slice4iter4IterNtCseO5Jl7W60Eg_16rustls_pki_types11TrustAnchorEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvB2f_8for_each4callB1s_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB3v_3VecB1s_E14extend_trustedBP_E0E0ECsloGAwzL3aMH_13tlsclient_mio(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %.sroa.0.i.i = alloca [48 x i8], align 8        ; 5 uses
  %.sroa.04.0.copyload = load ptr, ptr %2, align 8 ; 4 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.f = icmp eq ptr %0, %1
  br i1 %i.f, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtCseO5Jl7W60Eg_16rustls_pki_types11TrustAnchorENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1I_8adapters3map8map_foldRBQ_BQ_uNvYBQ_NtNtBb_5clone5Clone5cloneNCINvNvB1C_8for_each4callBQ_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4a_3VecBQ_E14extend_trustedINtNtB2u_6cloned6ClonedBF_EE0E0E0ECsloGAwzL3aMH_13tlsclient_mio.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = ptrtoint ptr %1 to i64
  %i.h = ptrtoint ptr %0 to i64
  %i.i = sub nuw i64 %i.g, %i.h
  %i.j = udiv exact i64 %i.i, 72
  %.sroa.55.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.55.0..sroa_idx6.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.6.0..sroa_idx8.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.512.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.615.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.512.0..sroa_idx13.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.615.0..sroa_idx16.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.520.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.7.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.0.24..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i, i64 24
  br label %bb.d

bb.c:                                             ; preds = %bb.f
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.d:                                             ; preds = %bb.s, %bb.b
  %.val10.i = phi i64 [ %.sroa.4.0.copyload, %bb.b ], [ %i.aj, %bb.s ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.ak, %bb.s ] ; 2 uses
  %i.l = getelementptr inbounds nuw [72 x i8], ptr %0, i64 %.sroa.01.0.i ; 10 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !446)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !449)
  call void @llvm.experimental.noalias.scope.decl(metadata !452)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !455
  %i.m = load i64, ptr %i.l, align 8, !range !37, !alias.scope !461, !noalias !462, !noundef !6
  %i.n = icmp eq i64 %i.m, -1
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !461, !noalias !462, !nonnull !6, !noundef !6
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !461, !noalias !462, !noundef !6
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !455
  invoke void @_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsloGAwzL3aMH_13tlsclient_mio(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.l)
          to label %.noexc.i unwind label %bb.c, !noalias !463

.noexc.i:                                         ; preds = %bb.f
  %.sroa.03.0.copyload.i.i.i.i = load i64, ptr %i.c, align 8, !noalias !455
  %.sroa.55.0.copyload.i.i.i.i = load ptr, ptr %.sroa.55.0..sroa_idx.i.i.i.i, align 8, !noalias !455
  %.sroa.6.0.copyload.i.i.i.i = load i64, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !noalias !455
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !455
  br label %bb.g

bb.g:                                             ; preds = %.noexc.i, %bb.e
  %.sroa.6.0.i.i.i.i = phi i64 [ %i.r, %bb.e ], [ %.sroa.6.0.copyload.i.i.i.i, %.noexc.i ]
  %.sroa.55.0.i.i.i.i = phi ptr [ %i.p, %bb.e ], [ %.sroa.55.0.copyload.i.i.i.i, %.noexc.i ]
  %.sroa.03.0.i.i.i.i = phi i64 [ -1, %bb.e ], [ %.sroa.03.0.copyload.i.i.i.i, %.noexc.i ]
  store i64 %.sroa.03.0.i.i.i.i, ptr %i.e, align 8, !noalias !455
  store ptr %.sroa.55.0.i.i.i.i, ptr %.sroa.55.0..sroa_idx6.i.i.i.i, align 8, !noalias !455
  store i64 %.sroa.6.0.i.i.i.i, ptr %.sroa.6.0..sroa_idx8.i.i.i.i, align 8, !noalias !455
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !455
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 24 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !range !37, !alias.scope !461, !noalias !462, !noundef !6
  %i.u = icmp eq i64 %i.t, -1
  br i1 %i.u, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !461, !noalias !462, !nonnull !6, !noundef !6
  %i.x = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.y = load i64, ptr %i.x, align 8, !alias.scope !461, !noalias !462, !noundef !6
  br label %bb.m

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !455
  invoke void @_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsloGAwzL3aMH_13tlsclient_mio(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.s)
          to label %bb.l unwind label %bb.k, !noalias !462

bb.j:                                             ; preds = %bb.p, %bb.k
  %.pn.i.i.i.i = phi { ptr, i32 } [ %i.ag, %bb.p ], [ %i.z, %bb.k ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCseO5Jl7W60Eg_16rustls_pki_types3DerECsloGAwzL3aMH_13tlsclient_mio(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #17
          to label %bb.t unwind label %bb.r, !noalias !462

bb.k:                                             ; preds = %bb.i
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.l:                                             ; preds = %bb.i
  %.sroa.010.0.copyload.i.i.i.i = load i64, ptr %i.b, align 8, !noalias !455
  %.sroa.512.0.copyload.i.i.i.i = load ptr, ptr %.sroa.512.0..sroa_idx.i.i.i.i, align 8, !noalias !455
  %.sroa.615.0.copyload.i.i.i.i = load i64, ptr %.sroa.615.0..sroa_idx.i.i.i.i, align 8, !noalias !455
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !455
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.h
  %.sroa.615.0.i.i.i.i = phi i64 [ %i.y, %bb.h ], [ %.sroa.615.0.copyload.i.i.i.i, %bb.l ]
  %.sroa.512.0.i.i.i.i = phi ptr [ %i.w, %bb.h ], [ %.sroa.512.0.copyload.i.i.i.i, %bb.l ]
  %.sroa.010.0.i.i.i.i = phi i64 [ -1, %bb.h ], [ %.sroa.010.0.copyload.i.i.i.i, %bb.l ]
  store i64 %.sroa.010.0.i.i.i.i, ptr %i.d, align 8, !noalias !455
  store ptr %.sroa.512.0.i.i.i.i, ptr %.sroa.512.0..sroa_idx13.i.i.i.i, align 8, !noalias !455
  store i64 %.sroa.615.0.i.i.i.i, ptr %.sroa.615.0..sroa_idx16.i.i.i.i, align 8, !noalias !455
  %i.aa = getelementptr inbounds nuw i8, ptr %i.l, i64 48 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !range !38, !alias.scope !461, !noalias !462, !noundef !6 ; 2 uses
  switch i64 %i.ab, label %bb.o [
    i64 -2, label %bb.s
    i64 -1, label %bb.n
  ]

bb.n:                                             ; preds = %bb.m
  %i.ac = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  %i.ad = load ptr, ptr %i.ac, align 8, !alias.scope !461, !noalias !462, !nonnull !6, !noundef !6
  %i.ae = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  %i.af = load i64, ptr %i.ae, align 8, !alias.scope !461, !noalias !462, !noundef !6
  br label %bb.s

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !455
  invoke void @_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsloGAwzL3aMH_13tlsclient_mio(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aa)
          to label %bb.q unwind label %bb.p, !noalias !462

bb.p:                                             ; preds = %bb.o
  %i.ag = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCseO5Jl7W60Eg_16rustls_pki_types3DerECsloGAwzL3aMH_13tlsclient_mio(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #17
          to label %bb.j unwind label %bb.r, !noalias !462

bb.q:                                             ; preds = %bb.o
  %.sroa.019.0.copyload.i.i.i.i = load i64, ptr %i.a, align 8, !noalias !455
  %.sroa.520.0.copyload.i.i.i.i = load ptr, ptr %.sroa.520.0..sroa_idx.i.i.i.i, align 8, !noalias !455
  %.sroa.7.0.copyload.i.i.i.i = load i64, ptr %.sroa.7.0..sroa_idx.i.i.i.i, align 8, !noalias !455
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !455
  br label %bb.s

bb.r:                                             ; preds = %bb.p, %bb.j
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #18, !noalias !462
  unreachable

bb.s:                                             ; preds = %bb.q, %bb.n, %bb.m
  %.sroa.5.sroa.4.0.i.i.i.i = phi i64 [ undef, %bb.m ], [ %i.af, %bb.n ], [ %.sroa.7.0.copyload.i.i.i.i, %bb.q ]
  %.sroa.5.sroa.0.0.i.i.i.i = phi ptr [ undef, %bb.m ], [ %i.ad, %bb.n ], [ %.sroa.520.0.copyload.i.i.i.i, %bb.q ]
  %.sroa.0.0.i.i.i.i = phi i64 [ %i.ab, %bb.m ], [ -1, %bb.n ], [ %.sroa.019.0.copyload.i.i.i.i, %bb.q ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !464
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.24..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !464
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !455
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !455
  %i.ai = getelementptr inbounds nuw [72 x i8], ptr %.sroa.5.0.copyload, i64 %.val10.i ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ai, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.i.i, i64 48, i1 false), !noalias !465
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 48
  store i64 %.sroa.0.0.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !466
  %.sroa.52.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 56
  store ptr %.sroa.5.sroa.0.0.i.i.i.i, ptr %.sroa.52.0..sroa_idx.i.i, align 8, !noalias !466
  %.sroa.63.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 64
  store i64 %.sroa.5.sroa.4.0.i.i.i.i, ptr %.sroa.63.0..sroa_idx.i.i, align 8, !noalias !466
  %i.aj = add i64 %.val10.i, 1                    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i)
  %i.ak = add nuw i64 %.sroa.01.0.i, 1            ; 2 uses
  %i.al = icmp eq i64 %i.ak, %i.j
  br i1 %i.al, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtCseO5Jl7W60Eg_16rustls_pki_types11TrustAnchorENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1I_8adapters3map8map_foldRBQ_BQ_uNvYBQ_NtNtBb_5clone5Clone5cloneNCINvNvB1C_8for_each4callBQ_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4a_3VecBQ_E14extend_trustedINtNtB2u_6cloned6ClonedBF_EE0E0E0ECsloGAwzL3aMH_13tlsclient_mio.exit, label %bb.d

bb.t:                                             ; preds = %bb.j, %bb.c
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.k, %bb.c ], [ %.pn.i.i.i.i, %bb.j ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.04.0.copyload) ]
  store i64 %.val10.i, ptr %.sroa.04.0.copyload, align 8, !noalias !463
  resume { ptr, i32 } %eh.lpad-body.i

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtCseO5Jl7W60Eg_16rustls_pki_types11TrustAnchorENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1I_8adapters3map8map_foldRBQ_BQ_uNvYBQ_NtNtBb_5clone5Clone5cloneNCINvNvB1C_8for_each4callBQ_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4a_3VecBQ_E14extend_trustedINtNtB2u_6cloned6ClonedBF_EE0E0E0ECsloGAwzL3aMH_13tlsclient_mio.exit: ; preds = %bb.s, %bb.a
  %storemerge = phi i64 [ %.sroa.4.0.copyload, %bb.a ], [ %i.aj, %bb.s ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.04.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.04.0.copyload, align 8, !noalias !463
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMsT_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5DyingINtNtBb_3vec3VechENtNtNtCshVVPy9isBpn_6webpki3crl5types16OwnedRevokedCertNtB1m_14LeafOrInternalENtB1m_2KVE12drop_key_valCsloGAwzL3aMH_13tlsclient_mio(ptr %.0.val, i64 %.16.val) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = getelementptr inbounds nuw i8, ptr %.0.val, i64 8
  %i.b = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %.16.val ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.0.val, i64 272
  %i.d = getelementptr inbounds nuw [56 x i8], ptr %i.c, i64 %.16.val ; 2 uses
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsloGAwzL3aMH_13tlsclient_mio(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsloGAwzL3aMH_13tlsclient_mio(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.body unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsloGAwzL3aMH_13tlsclient_mio(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsloGAwzL3aMH_13tlsclient_mio.exit unwind label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #18
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.g, %bb.e ], [ %i.e, %bb.b ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNvMsT_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtBK_6HandleINtBK_7NodeRefNtNtBK_6marker5DyingpppENtB21_2KVE12drop_key_val7DropperNtNtNtCshVVPy9isBpn_6webpki3crl5types16OwnedRevokedCertEECsloGAwzL3aMH_13tlsclient_mio(ptr nonnull %i.d) #17
          to label %common.resume unwind label %bb.h

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsloGAwzL3aMH_13tlsclient_mio.exit: ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 3 uses
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsloGAwzL3aMH_13tlsclient_mio(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNvMsT_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtBK_6HandleINtBK_7NodeRefNtNtBK_6marker5DyingpppENtB21_2KVE12drop_key_val7DropperNtNtNtCshVVPy9isBpn_6webpki3crl5types16OwnedRevokedCertEECsloGAwzL3aMH_13tlsclient_mio.exit unwind label %bb.f

bb.f:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsloGAwzL3aMH_13tlsclient_mio.exit
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsloGAwzL3aMH_13tlsclient_mio(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %common.resume unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #18
  unreachable

common.resume:                                    ; preds = %.body, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.i, %bb.f ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNvMsT_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtBK_6HandleINtBK_7NodeRefNtNtBK_6marker5DyingpppENtB21_2KVE12drop_key_val7DropperNtNtNtCshVVPy9isBpn_6webpki3crl5types16OwnedRevokedCertEECsloGAwzL3aMH_13tlsclient_mio.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsloGAwzL3aMH_13tlsclient_mio.exit
  tail call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsloGAwzL3aMH_13tlsclient_mio(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
  ret void

bb.h:                                             ; preds = %.body
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #18
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMsz_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB5_8IntoIterINtNtBb_3vec3VechENtNtNtCshVVPy9isBpn_6webpki3crl5types16OwnedRevokedCertE10dying_nextCsloGAwzL3aMH_13tlsclient_mio(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 5 uses
  %i.b = alloca [48 x i8], align 8                ; 3 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !noundef !6 ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMsb_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingINtNtBb_3vec3VechENtNtNtCshVVPy9isBpn_6webpki3crl5types16OwnedRevokedCertE10take_frontCsloGAwzL3aMH_13tlsclient_mio(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %1)
  %i.h = load ptr, ptr %i.c, align 8, !noalias !471, !noundef !6
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %_RINvMsb_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingINtNtBc_3vec3VechENtNtNtCshVVPy9isBpn_6webpki3crl5types16OwnedRevokedCertE16deallocating_endNtNtBc_5alloc6GlobalECsloGAwzL3aMH_13tlsclient_mio.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_RINvMsj_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingINtNtBc_3vec3VechENtNtNtCshVVPy9isBpn_6webpki3crl5types16OwnedRevokedCertNtB1z_4LeafENtB1z_4EdgeE16deallocating_endNtNtBc_5alloc6GlobalECsloGAwzL3aMH_13tlsclient_mio(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.c)
  br label %_RINvMsb_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingINtNtBc_3vec3VechENtNtNtCshVVPy9isBpn_6webpki3crl5types16OwnedRevokedCertE16deallocating_endNtNtBc_5alloc6GlobalECsloGAwzL3aMH_13tlsclient_mio.exit

_RINvMsb_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingINtNtBc_3vec3VechENtNtNtCshVVPy9isBpn_6webpki3crl5types16OwnedRevokedCertE16deallocating_endNtNtBc_5alloc6GlobalECsloGAwzL3aMH_13tlsclient_mio.exit: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store ptr null, ptr %0, align 8
  br label %bb.i

bb.d:                                             ; preds = %bb.a
  %i.i = add i64 %i.f, -1
  store i64 %i.i, ptr %i.e, align 8
  %i.j = tail call noundef align 8 ptr @_RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingINtNtBb_3vec3VechENtNtNtCshVVPy9isBpn_6webpki3crl5types16OwnedRevokedCertE10init_frontCsloGAwzL3aMH_13tlsclient_mio(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %1), !noalias !474 ; 3 uses
  %.not.i1 = icmp eq ptr %i.j, null
  br i1 %.not.i1, label %bb.h, label %bb.e, !prof !414

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !477
  invoke void @_RINvMsj_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingINtNtBc_3vec3VechENtNtNtCshVVPy9isBpn_6webpki3crl5types16OwnedRevokedCertNtB1z_4LeafENtB1z_4EdgeE17deallocating_nextNtNtBc_5alloc6GlobalECsloGAwzL3aMH_13tlsclient_mio(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.j)
          to label %.noexc.i.i unwind label %bb.g, !noalias !485

.noexc.i.i:                                       ; preds = %bb.e
  %i.k = load ptr, ptr %i.a, align 8, !noalias !477, !noundef !6
  %.not.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i, label %bb.f, label %_RINvMsb_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingINtNtBc_3vec3VechENtNtNtCshVVPy9isBpn_6webpki3crl5types16OwnedRevokedCertE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECsloGAwzL3aMH_13tlsclient_mio.exit, !prof !414

bb.f:                                             ; preds = %.noexc.i.i
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #23
          to label %.noexc1.i.i unwind label %bb.g, !noalias !486

.noexc1.i.i:                                      ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap()
  unreachable

bb.h:                                             ; preds = %bb.d
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #23, !noalias !474
  unreachable

_RINvMsb_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingINtNtBc_3vec3VechENtNtNtCshVVPy9isBpn_6webpki3crl5types16OwnedRevokedCertE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECsloGAwzL3aMH_13tlsclient_mio.exit: ; preds = %.noexc.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !477
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %_RINvMsb_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingINtNtBc_3vec3VechENtNtNtCshVVPy9isBpn_6webpki3crl5types16OwnedRevokedCertE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECsloGAwzL3aMH_13tlsclient_mio.exit, %_RINvMsb_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingINtNtBc_3vec3VechENtNtNtCshVVPy9isBpn_6webpki3crl5types16OwnedRevokedCertE16deallocating_endNtNtBc_5alloc6GlobalECsloGAwzL3aMH_13tlsclient_mio.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMsz_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB5_8IntoItertNtNtB7_7set_val9SetValZSTE10dying_nextCsloGAwzL3aMH_13tlsclient_mio(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 5 uses
  %i.b = alloca [48 x i8], align 8                ; 3 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !noundef !6 ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMsb_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingtNtNtB7_7set_val9SetValZSTE10take_frontCsloGAwzL3aMH_13tlsclient_mio(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %1)
  %i.h = load ptr, ptr %i.c, align 8, !noalias !487, !noundef !6
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %_RINvMsb_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingtNtNtB8_7set_val9SetValZSTE16deallocating_endNtNtBc_5alloc6GlobalECsloGAwzL3aMH_13tlsclient_mio.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_RINvMsj_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingtNtNtB8_7set_val9SetValZSTNtB1z_4LeafENtB1z_4EdgeE16deallocating_endNtNtBc_5alloc6GlobalECsloGAwzL3aMH_13tlsclient_mio(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.c)
  br label %_RINvMsb_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingtNtNtB8_7set_val9SetValZSTE16deallocating_endNtNtBc_5alloc6GlobalECsloGAwzL3aMH_13tlsclient_mio.exit

_RINvMsb_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingtNtNtB8_7set_val9SetValZSTE16deallocating_endNtNtBc_5alloc6GlobalECsloGAwzL3aMH_13tlsclient_mio.exit: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store ptr null, ptr %0, align 8
end_hunk_0
begin_hunk_1_@_RNvXs1_NtNtCs4wP2HXfJTCR_5alloc3vec6spliceINtB5_6SpliceINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB10_5array4iter8IntoIterRNtNtB9_6string6StringKj1_ENvYB2a_INtNtB10_7convert4IntoNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE4intoEENtNtNtB10_3ops4drop4Drop4dropCsloGAwzL3aMH_13tlsclient_mio:bb.a
          to label %_RNCINvMNtNtCsj6eKBz9Db1c_4core3ops9try_traitINtB5_17NeverShortCircuituE10wrap_mut_2uNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringNCINvNvNtNtNtNtB9_4iter6traits8iterator8Iterator8for_each4callB1k_INvNtB9_3mem4dropB1k_EE0E0CsloGAwzL3aMH_13tlsclient_mio.exit.i unwind label %bb.c, !noalias !532

bb.c:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsloGAwzL3aMH_13tlsclient_mio(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %common.resume unwind label %bb.d, !noalias !532

bb.d:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #18, !noalias !532
  unreachable

common.resume:                                    ; preds = %bb.j, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.i, %bb.c ], [ %i.w, %bb.j ]
  resume { ptr, i32 } %common.resume.op

_RNCINvMNtNtCsj6eKBz9Db1c_4core3ops9try_traitINtB5_17NeverShortCircuituE10wrap_mut_2uNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringNCINvNvNtNtNtNtB9_4iter6traits8iterator8Iterator8for_each4callB1k_INvNtB9_3mem4dropB1k_EE0E0CsloGAwzL3aMH_13tlsclient_mio.exit.i: ; preds = %bb.b
  call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsloGAwzL3aMH_13tlsclient_mio(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a), !noalias !532
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !527
  %i.k = icmp eq ptr %i.h, %i.e
  br i1 %i.k, label %_RINvYINtNtNtCs4wP2HXfJTCR_5alloc3vec5drain5DrainNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator8try_folduNCINvMNtNtB1B_3ops9try_traitINtB2E_17NeverShortCircuituE10wrap_mut_2uBK_NCINvNvB1t_8for_each4callBK_INvNtB1B_3mem4dropBK_EE0E0B30_ECsloGAwzL3aMH_13tlsclient_mio.exit, label %_RNvXs3_NtNtCs4wP2HXfJTCR_5alloc3vec5drainINtB5_5DrainNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCsloGAwzL3aMH_13tlsclient_mio.exit.i

_RINvYINtNtNtCs4wP2HXfJTCR_5alloc3vec5drain5DrainNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator8try_folduNCINvMNtNtB1B_3ops9try_traitINtB2E_17NeverShortCircuituE10wrap_mut_2uBK_NCINvNvB1t_8for_each4callBK_INvNtB1B_3mem4dropBK_EE0E0B30_ECsloGAwzL3aMH_13tlsclient_mio.exit: ; preds = %_RNvXs3_NtNtCs4wP2HXfJTCR_5alloc3vec5drainINtB5_5DrainNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCsloGAwzL3aMH_13tlsclient_mio.exit.i, %_RNCINvMNtNtCsj6eKBz9Db1c_4core3ops9try_traitINtB5_17NeverShortCircuituE10wrap_mut_2uNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringNCINvNvNtNtNtNtB9_4iter6traits8iterator8Iterator8for_each4callB1k_INvNtB9_3mem4dropB1k_EE0E0CsloGAwzL3aMH_13tlsclient_mio.exit.i, %bb.a
  store ptr inttoptr (i64 8 to ptr), ptr %0, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.d, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load i64, ptr %i.l, align 8, !noundef !6
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_RINvYINtNtNtCs4wP2HXfJTCR_5alloc3vec5drain5DrainNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator8try_folduNCINvMNtNtB1B_3ops9try_traitINtB2E_17NeverShortCircuituE10wrap_mut_2uBK_NCINvNvB1t_8for_each4callBK_INvNtB1B_3mem4dropBK_EE0E0B30_ECsloGAwzL3aMH_13tlsclient_mio.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !6, !noundef !6
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB6_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEINtB4_10SpecExtendBT_QINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB27_5array4iter8IntoIterRNtNtB8_6string6StringKj1_ENvYB3h_INtNtB27_7convert4IntoBT_E4intoEE11spec_extendCsloGAwzL3aMH_13tlsclient_mio(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
  br label %bb.g

bb.f:                                             ; preds = %_RINvYINtNtNtCs4wP2HXfJTCR_5alloc3vec5drain5DrainNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator8try_folduNCINvMNtNtB1B_3ops9try_traitINtB2E_17NeverShortCircuituE10wrap_mut_2uBK_NCINvNvB1t_8for_each4callBK_INvNtB1B_3mem4dropBK_EE0E0B30_ECsloGAwzL3aMH_13tlsclient_mio.exit
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.s = call noundef zeroext i1 @_RINvMs2_NtNtCs4wP2HXfJTCR_5alloc3vec6spliceINtNtB8_5drain5DrainNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE4fillINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1W_5array4iter8IntoIterRNtNtBa_6string6StringKj1_ENvYB36_INtNtB1W_7convert4IntoBZ_E4intoEECsloGAwzL3aMH_13tlsclient_mio(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
  br i1 %i.s, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.i, %bb.f, %bb.l, %bb.e
  ret void

bb.h:                                             ; preds = %bb.f
  %.val = load i64, ptr %i.r, align 8, !noundef !6 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val17 = load i64, ptr %i.t, align 8, !noundef !6 ; 2 uses
  %.not = icmp eq i64 %.val17, %.val
  br i1 %.not, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.u = sub nuw i64 %.val17, %.val
  call void @_RNvMs2_NtNtCs4wP2HXfJTCR_5alloc3vec6spliceINtNtB7_5drain5DrainNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE9move_tailCsloGAwzL3aMH_13tlsclient_mio(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %i.u)
  %i.v = call noundef zeroext i1 @_RINvMs2_NtNtCs4wP2HXfJTCR_5alloc3vec6spliceINtNtB8_5drain5DrainNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE4fillINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1W_5array4iter8IntoIterRNtNtBa_6string6StringKj1_ENvYB36_INtNtB1W_7convert4IntoBZ_E4intoEECsloGAwzL3aMH_13tlsclient_mio(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
  br i1 %i.v, label %bb.k, label %bb.g

bb.j:                                             ; preds = %bb.n, %bb.m
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsloGAwzL3aMH_13tlsclient_mio(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %common.resume unwind label %bb.o

bb.k:                                             ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_iterINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEINtB2_12SpecFromIterBU_QINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB2a_5array4iter8IntoIterRNtNtB6_6string6StringKj1_ENvYB3k_INtNtB2a_7convert4IntoBU_E4intoEE9from_iterCsloGAwzL3aMH_13tlsclient_mio(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
  %.sroa.09.0.copyload = load i64, ptr %i.b, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.410.0.copyload = load ptr, ptr %.sroa.410.0..sroa_idx, align 8, !nonnull !6, !noundef !6 ; 3 uses
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.511.0.copyload = load i64, ptr %.sroa.511.0..sroa_idx, align 8 ; 4 uses
  %i.x = icmp ult i64 %.sroa.511.0.copyload, 384307168202282326
  call void @llvm.assume(i1 %i.x)
  %i.y = getelementptr inbounds nuw [24 x i8], ptr %.sroa.410.0.copyload, i64 %.sroa.511.0.copyload
  store ptr %.sroa.410.0.copyload, ptr %i.c, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %.sroa.09.0.copyload, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %.sroa.410.0.copyload, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %i.y, ptr %i.ab, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not16 = icmp eq i64 %.sroa.511.0.copyload, 0
  br i1 %.not16, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.n, %bb.k
  call void @_RNvXse_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsloGAwzL3aMH_13tlsclient_mio(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.g

bb.m:                                             ; preds = %bb.k
  invoke void @_RNvMs2_NtNtCs4wP2HXfJTCR_5alloc3vec6spliceINtNtB7_5drain5DrainNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE9move_tailCsloGAwzL3aMH_13tlsclient_mio(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %.sroa.511.0.copyload)
          to label %bb.n unwind label %bb.j

bb.n:                                             ; preds = %bb.m
  %i.ac = invoke noundef zeroext i1 @_RINvMs2_NtNtCs4wP2HXfJTCR_5alloc3vec6spliceINtNtB8_5drain5DrainNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE4fillINtNtB8_9into_iter8IntoIterBZ_EECsloGAwzL3aMH_13tlsclient_mio(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %bb.l unwind label %bb.j       ; 0 uses

bb.o:                                             ; preds = %bb.j
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #18
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1x_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB6_8BTreeMapINtNtBc_3vec3VechENtNtNtCshVVPy9isBpn_6webpki3crl5types16OwnedRevokedCertENtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmtCsloGAwzL3aMH_13tlsclient_mio(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 12 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9debug_map(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = load ptr, ptr %0, align 8, !noundef !6   ; 3 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !noundef !6 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i64, ptr %i.f, align 8, !noundef !6
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.c, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %i.e, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr null, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %i.c, ptr %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx.sroa_idx, align 8
  %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i64 %i.e, ptr %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink19 = phi i64 [ 1, %bb.b ], [ 0, %bb.a ]   ; 2 uses
  %.sink = phi i64 [ %i.g, %bb.b ], [ 0, %bb.a ]
  store i64 %.sink19, ptr %i.a, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 %.sink19, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i64 %.sink, ptr %i.i, align 8
  %i.j = call noundef nonnull align 8 ptr @_RINvMs7_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB6_8DebugMap7entriesRINtNtCs4wP2HXfJTCR_5alloc3vec3VechERNtNtNtCshVVPy9isBpn_6webpki3crl5types16OwnedRevokedCertINtNtNtNtB18_11collections5btree3map4IterB13_B1D_EECsloGAwzL3aMH_13tlsclient_mio(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(72) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.k = call noundef zeroext i1 @_RNvMs7_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB5_8DebugMap6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %i.k
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterNtCseO5Jl7W60Eg_16rustls_pki_types11TrustAnchorEENtNtNtB8_6traits8iterator8Iterator9size_hintCsloGAwzL3aMH_13tlsclient_mio(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #5 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !6, !noundef !6
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !6, !noundef !6
  %i.b = ptrtoint ptr %.val1 to i64
  %i.c = ptrtoint ptr %.val to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = udiv exact i64 %i.d, 72                  ; 2 uses
  store i64 %i.e, ptr %0, align 8, !alias.scope !535
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.f, align 8, !alias.scope !535
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.e, ptr %i.g, align 8, !alias.scope !535
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsg_NtCs37Y8JGf013z_9hashbrown3rawINtB5_8RawTableTNtNtNtNtCs93Qoaz1obbZ_14regex_automata4util11determinize5state5StateNtNtNtBX_6hybrid2id11LazyStateIDEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsloGAwzL3aMH_13tlsclient_mio(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !538)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !538, !noundef !6 ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtNtNtCs93Qoaz1obbZ_14regex_automata4util11determinize5state5StateNtNtNtB1l_6hybrid2id11LazyStateIDENtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalECsloGAwzL3aMH_13tlsclient_mio.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !541)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !544, !noundef !6 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtNtCs93Qoaz1obbZ_14regex_automata4util11determinize5state5StateNtNtNtB1i_6hybrid2id11LazyStateIDEECsloGAwzL3aMH_13tlsclient_mio.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !alias.scope !544, !nonnull !6, !noundef !6 ; 3 uses
  %.val3.i.i.i = load <16 x i8>, ptr %i.g, align 16, !noalias !545
  %i.h = icmp sgt <16 x i8> %.val3.i.i.i, splat (i8 -1)
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.j = bitcast <16 x i1> %i.h to i16
  br label %bb.d

bb.d:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTNtNtNtNtCs93Qoaz1obbZ_14regex_automata4util11determinize5state5StateNtNtNtBK_6hybrid2id11LazyStateIDEECsloGAwzL3aMH_13tlsclient_mio.exit.i.i, %bb.c
  %.sroa.05.016.i.i = phi ptr [ %i.g, %bb.c ], [ %.sroa.05.1.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTNtNtNtNtCs93Qoaz1obbZ_14regex_automata4util11determinize5state5StateNtNtNtBK_6hybrid2id11LazyStateIDEECsloGAwzL3aMH_13tlsclient_mio.exit.i.i ] ; 2 uses
  %.sroa.6.015.i.i = phi ptr [ %i.i, %bb.c ], [ %.sroa.6.1.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTNtNtNtNtCs93Qoaz1obbZ_14regex_automata4util11determinize5state5StateNtNtNtBK_6hybrid2id11LazyStateIDEECsloGAwzL3aMH_13tlsclient_mio.exit.i.i ] ; 2 uses
  %.sroa.86.014.i.i = phi i16 [ %i.j, %bb.c ], [ %i.s, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTNtNtNtNtCs93Qoaz1obbZ_14regex_automata4util11determinize5state5StateNtNtNtBK_6hybrid2id11LazyStateIDEECsloGAwzL3aMH_13tlsclient_mio.exit.i.i ] ; 2 uses
  %.sroa.107.013.i.i = phi i64 [ %i.e, %bb.c ], [ %i.v, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTNtNtNtNtCs93Qoaz1obbZ_14regex_automata4util11determinize5state5StateNtNtNtBK_6hybrid2id11LazyStateIDEECsloGAwzL3aMH_13tlsclient_mio.exit.i.i ]
  %.not11.i.i.i = icmp eq i16 %.sroa.86.014.i.i, 0
  br i1 %.not11.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCs37Y8JGf013z_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtNtCs93Qoaz1obbZ_14regex_automata4util11determinize5state5StateNtNtNtB13_6hybrid2id11LazyStateIDEE9next_implKb0_ECsloGAwzL3aMH_13tlsclient_mio.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %i.k = phi ptr [ %i.o, %.lr.ph.i.i.i ], [ %.sroa.6.015.i.i, %bb.d ] ; 2 uses
  %i.l = phi ptr [ %i.n, %.lr.ph.i.i.i ], [ %.sroa.05.016.i.i, %bb.d ]
  %.val9.i.i.i = load <16 x i8>, ptr %i.k, align 16, !noalias !548
  %i.m = icmp sgt <16 x i8> %.val9.i.i.i, splat (i8 -1)
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 -384 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.m to i16    ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCs37Y8JGf013z_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtNtCs93Qoaz1obbZ_14regex_automata4util11determinize5state5StateNtNtNtB13_6hybrid2id11LazyStateIDEE9next_implKb0_ECsloGAwzL3aMH_13tlsclient_mio.exit.i.i

_RINvMsi_NtCs37Y8JGf013z_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtNtCs93Qoaz1obbZ_14regex_automata4util11determinize5state5StateNtNtNtB13_6hybrid2id11LazyStateIDEE9next_implKb0_ECsloGAwzL3aMH_13tlsclient_mio.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.d
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.015.i.i, %bb.d ], [ %i.o, %.lr.ph.i.i.i ]
  %.sroa.05.1.i.i = phi ptr [ %.sroa.05.016.i.i, %bb.d ], [ %i.n, %.lr.ph.i.i.i ] ; 2 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.86.014.i.i, %bb.d ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.p = add i16 %.lcssa.i.i.i, -1
  %i.q = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.r = zext nneg i16 %i.q to i64
  %i.s = and i16 %i.p, %.lcssa.i.i.i
  %i.t = sub nsw i64 0, %i.r
  %i.u = getelementptr inbounds [24 x i8], ptr %.sroa.05.1.i.i, i64 %i.t
  %i.v = add i64 %.sroa.107.013.i.i, -1           ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %i.u, i64 -24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !551)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !554)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !557)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !560)
  %i.x = load ptr, ptr %i.w, align 8, !alias.scope !563, !noalias !544, !nonnull !6, !noundef !6
  %i.y = atomicrmw sub ptr %i.x, i64 1 release, align 8, !noalias !564
  %i.z = icmp eq i64 %i.y, 1
  br i1 %i.z, label %bb.e, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTNtNtNtNtCs93Qoaz1obbZ_14regex_automata4util11determinize5state5StateNtNtNtBK_6hybrid2id11LazyStateIDEECsloGAwzL3aMH_13tlsclient_mio.exit.i.i

bb.e:                                             ; preds = %_RINvMsi_NtCs37Y8JGf013z_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtNtCs93Qoaz1obbZ_14regex_automata4util11determinize5state5StateNtNtNtB13_6hybrid2id11LazyStateIDEE9next_implKb0_ECsloGAwzL3aMH_13tlsclient_mio.exit.i.i
  fence acquire
  tail call void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcShE9drop_slowCs222MioR9bx1_9aws_lc_rs(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w) #21, !noalias !544
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTNtNtNtNtCs93Qoaz1obbZ_14regex_automata4util11determinize5state5StateNtNtNtBK_6hybrid2id11LazyStateIDEECsloGAwzL3aMH_13tlsclient_mio.exit.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTNtNtNtNtCs93Qoaz1obbZ_14regex_automata4util11determinize5state5StateNtNtNtBK_6hybrid2id11LazyStateIDEECsloGAwzL3aMH_13tlsclient_mio.exit.i.i: ; preds = %bb.e, %_RINvMsi_NtCs37Y8JGf013z_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtNtCs93Qoaz1obbZ_14regex_automata4util11determinize5state5StateNtNtNtB13_6hybrid2id11LazyStateIDEE9next_implKb0_ECsloGAwzL3aMH_13tlsclient_mio.exit.i.i
  %i.aa = icmp eq i64 %i.v, 0
  br i1 %i.aa, label %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtNtCs93Qoaz1obbZ_14regex_automata4util11determinize5state5StateNtNtNtB1i_6hybrid2id11LazyStateIDEECsloGAwzL3aMH_13tlsclient_mio.exit.i, label %bb.d

_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtNtCs93Qoaz1obbZ_14regex_automata4util11determinize5state5StateNtNtNtB1i_6hybrid2id11LazyStateIDEECsloGAwzL3aMH_13tlsclient_mio.exit.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTNtNtNtNtCs93Qoaz1obbZ_14regex_automata4util11determinize5state5StateNtNtNtBK_6hybrid2id11LazyStateIDEECsloGAwzL3aMH_13tlsclient_mio.exit.i.i, %bb.b
  %i.ab = mul i64 %i.b, 24
  %i.ac = and i64 %i.ab, -16                      ; 2 uses
  %i.ad = add i64 %i.ac, 32                       ; 2 uses
  %i.ae = add i64 %i.b, 17
  %i.af = add i64 %i.ae, %i.ad                    ; 4 uses
  %i.ag = icmp uge i64 %i.af, %i.ad
  %i.ah = icmp ult i64 %i.af, 9223372036854775793
  tail call void @llvm.assume(i1 %i.ag)
  tail call void @llvm.assume(i1 %i.ah)
  %i.ai = icmp eq i64 %i.af, 0
  br i1 %i.ai, label %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtNtNtCs93Qoaz1obbZ_14regex_automata4util11determinize5state5StateNtNtNtB1l_6hybrid2id11LazyStateIDENtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalECsloGAwzL3aMH_13tlsclient_mio.exit, label %bb.f

bb.f:                                             ; preds = %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtNtCs93Qoaz1obbZ_14regex_automata4util11determinize5state5StateNtNtNtB1i_6hybrid2id11LazyStateIDEECsloGAwzL3aMH_13tlsclient_mio.exit.i
  %i.aj = load ptr, ptr %0, align 8, !alias.scope !538, !nonnull !6, !noundef !6
  %i.ak = sub i64 -32, %i.ac
  %i.al = getelementptr inbounds i8, ptr %i.aj, i64 %i.ak
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.al, i64 noundef %i.af, i64 noundef range(i64 1, -9223372036854775807) 16) #19, !noalias !538
  br label %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtNtNtCs93Qoaz1obbZ_14regex_automata4util11determinize5state5StateNtNtNtB1l_6hybrid2id11LazyStateIDENtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalECsloGAwzL3aMH_13tlsclient_mio.exit

_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtNtNtCs93Qoaz1obbZ_14regex_automata4util11determinize5state5StateNtNtNtB1l_6hybrid2id11LazyStateIDENtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalECsloGAwzL3aMH_13tlsclient_mio.exit: ; preds = %bb.a, %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtNtCs93Qoaz1obbZ_14regex_automata4util11determinize5state5StateNtNtNtB1i_6hybrid2id11LazyStateIDEECsloGAwzL3aMH_13tlsclient_mio.exit.i, %bb.f
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvXsk_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB5_4IterINtNtBb_3vec3VechENtNtNtCshVVPy9isBpn_6webpki3crl5types16OwnedRevokedCertENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCsloGAwzL3aMH_13tlsclient_mio(ptr noalias nofree noundef align 8 dereferenceable(72) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [40 x i8], align 8                ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !noundef !6 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i64 %i.e, -1
  store i64 %i.g, ptr %i.d, align 8
  %i.h = tail call noundef align 8 ptr @_RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutINtNtBb_3vec3VechENtNtNtCshVVPy9isBpn_6webpki3crl5types16OwnedRevokedCertE10init_frontCsloGAwzL3aMH_13tlsclient_mio(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %0) ; 3 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.h, label %bb.d, !prof !414

bb.c:                                             ; preds = %bb.a, %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutINtNtB8_3vec3VechENtNtNtCshVVPy9isBpn_6webpki3crl5types16OwnedRevokedCertNtB1y_4LeafENtB1y_4EdgeETRB1R_RB29_ENCNvMsk_NtB4_8navigateBX_14next_unchecked0ECsloGAwzL3aMH_13tlsclient_mio.exit
  %.sroa.3.0 = phi ptr [ %i.p, %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutINtNtB8_3vec3VechENtNtNtCshVVPy9isBpn_6webpki3crl5types16OwnedRevokedCertNtB1y_4LeafENtB1y_4EdgeETRB1R_RB29_ENCNvMsk_NtB4_8navigateBX_14next_unchecked0ECsloGAwzL3aMH_13tlsclient_mio.exit ], [ undef, %bb.a ]
  %.sroa.0.0 = phi ptr [ %i.o, %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutINtNtB8_3vec3VechENtNtNtCshVVPy9isBpn_6webpki3crl5types16OwnedRevokedCertNtB1y_4LeafENtB1y_4EdgeETRB1R_RB29_ENCNvMsk_NtB4_8navigateBX_14next_unchecked0ECsloGAwzL3aMH_13tlsclient_mio.exit ], [ null, %bb.a ]
  %i.i = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0
  %i.j = insertvalue { ptr, ptr } %i.i, ptr %.sroa.3.0, 1
  ret { ptr, ptr } %i.j

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !565
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !565
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !568
  invoke void @_RNvMsh_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutINtNtBb_3vec3VechENtNtNtCshVVPy9isBpn_6webpki3crl5types16OwnedRevokedCertNtB1y_4LeafENtB1y_4EdgeE7next_kvCsloGAwzL3aMH_13tlsclient_mio(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.h)
          to label %.noexc.i unwind label %bb.g

.noexc.i:                                         ; preds = %bb.d
  %i.k = load ptr, ptr %i.b, align 8, !noalias !568, !noundef !6 ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.e, label %bb.f, !prof !414

bb.e:                                             ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !568
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #23
          to label %.noexc1.i unwind label %bb.g, !noalias !565

.noexc1.i:                                        ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %.noexc.i
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.5.0..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx2.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i.i, i64 16, i1 false), !noalias !568
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !568
  store ptr %i.k, ptr %i.a, align 8, !noalias !568
  invoke void @_RNvMsp_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutINtNtBb_3vec3VechENtNtNtCshVVPy9isBpn_6webpki3crl5types16OwnedRevokedCertNtB1y_14LeafOrInternalENtB1y_2KVE14next_leaf_edgeCsloGAwzL3aMH_13tlsclient_mio(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(40) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %.noexc2.i unwind label %bb.g, !noalias !565

.noexc2.i:                                        ; preds = %bb.f
  %i.m = invoke { ptr, ptr } @_RNvMsP_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5ImmutINtNtBb_3vec3VechENtNtNtCshVVPy9isBpn_6webpki3crl5types16OwnedRevokedCertNtB1m_14LeafOrInternalENtB1m_2KVE7into_kvCsloGAwzL3aMH_13tlsclient_mio(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutINtNtB8_3vec3VechENtNtNtCshVVPy9isBpn_6webpki3crl5types16OwnedRevokedCertNtB1y_4LeafENtB1y_4EdgeETRB1R_RB29_ENCNvMsk_NtB4_8navigateBX_14next_unchecked0ECsloGAwzL3aMH_13tlsclient_mio.exit unwind label %bb.g, !noalias !565 ; 2 uses

bb.g:                                             ; preds = %.noexc2.i, %bb.f, %bb.e, %bb.d
  %i.n = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap()
  unreachable

_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutINtNtB8_3vec3VechENtNtNtCshVVPy9isBpn_6webpki3crl5types16OwnedRevokedCertNtB1y_4LeafENtB1y_4EdgeETRB1R_RB29_ENCNvMsk_NtB4_8navigateBX_14next_unchecked0ECsloGAwzL3aMH_13tlsclient_mio.exit: ; preds = %.noexc2.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !565
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !565
  %i.o = extractvalue { ptr, ptr } %i.m, 0
  %i.p = extractvalue { ptr, ptr } %i.m, 1
  br label %bb.c

bb.h:                                             ; preds = %bb.b
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #23
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RNvYNtNtNtCs7ZUl82OSlxp_6rustls4conn10connection6WriterNtNtNtCsj6eKBz9Db1c_4core2io5write5Write9write_allCsloGAwzL3aMH_13tlsclient_mio(ptr noalias nofree noundef align 8 dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = icmp eq i64 %2, 0
  br i1 %i.b, label %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error14is_interrupted.exit._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.k
  %.sroa.0.040 = phi ptr [ %1, %.lr.ph ], [ %.sroa.0.119, %bb.k ] ; 3 uses
  %.sroa.6.039 = phi i64 [ %2, %.lr.ph ], [ %.sroa.6.117, %bb.k ] ; 6 uses
  %i.d = call { i64, ptr } @_RNvXs5_NtNtCs7ZUl82OSlxp_6rustls4conn10connectionNtB5_6WriterNtNtNtCsj6eKBz9Db1c_4core2io5write5Write5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.040, i64 noundef %.sroa.6.039) ; 2 uses
  %i.e = extractvalue { i64, ptr } %i.d, 0
  %i.f = extractvalue { i64, ptr } %i.d, 1        ; 13 uses
  %i.g = ptrtoint ptr %i.f to i64                 ; 8 uses
  %i.h = trunc nuw i64 %i.e to i1
  br i1 %i.h, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.f) ]
  %i.i = and i64 %i.g, 3
  switch i64 %i.i, label %default.unreachable [
    i64 2, label %bb.d
    i64 3, label %.split26
    i64 0, label %.split27
    i64 1, label %.split
  ], !prof !201

default.unreachable:                              ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.j = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCsj6eKBz9Db1c_4core2io5error12os_functions16get_os_functions()
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %bb.d
  %i.k = lshr i64 %i.g, 32
  %i.l = trunc nuw i64 %i.k to i32
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !6, !noundef !6
  %i.o = invoke noundef zeroext i1 %i.n(i32 noundef %i.l)
          to label %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error14is_interrupted.exit unwind label %bb.l, !inline_history !572

.split26:                                         ; preds = %bb.c
  %i.p = lshr i64 %i.g, 32
  %i.q = icmp ult ptr %i.f, inttoptr (i64 188978561024 to ptr)
  %switch.idx.cast.i.i.i = trunc i64 %i.p to i8
  %spec.select.i.i.i = select i1 %i.q, i8 %switch.idx.cast.i.i.i, i8 -1 ; 2 uses
  %i.r = icmp ne i8 %spec.select.i.i.i, -1
  call void @llvm.assume(i1 %i.r)
  %i.s = icmp eq i8 %spec.select.i.i.i, 35
  br i1 %i.s, label %bb.i, label %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error14is_interrupted.exit._crit_edge

.split27:                                         ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.u = load i8, ptr %i.t, align 8, !range !573, !noundef !6
  %i.v = icmp eq i8 %i.u, 35
  br i1 %i.v, label %.thread.thread, label %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error14is_interrupted.exit._crit_edge

.split:                                           ; preds = %bb.c
  %i.w = getelementptr i8, ptr %i.f, i64 31
  %i.x = load i8, ptr %i.w, align 8, !range !573, !noundef !6
  %i.y = icmp eq i8 %i.x, 35
  br i1 %i.y, label %bb.j, label %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error14is_interrupted.exit._crit_edge

bb.e:                                             ; preds = %bb.b
  %i.z = icmp eq ptr %i.f, null
  br i1 %i.z, label %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error14is_interrupted.exit._crit_edge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = icmp ult i64 %.sroa.6.039, %i.g
  br i1 %i.aa, label %bb.g, label %bb.h, !prof !414

bb.g:                                             ; preds = %bb.f
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.g, i64 noundef %.sroa.6.039, i64 noundef %.sroa.6.039, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #22
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.ab = sub nuw nsw i64 %.sroa.6.039, %i.g
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.040, i64 %i.g
  br label %bb.k

_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error14is_interrupted.exit: ; preds = %.noexc
  br i1 %i.o, label %.thread.thread, label %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error14is_interrupted.exit._crit_edge

_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error14is_interrupted.exit._crit_edge: ; preds = %bb.k, %bb.e, %.split27, %.split26, %.split, %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error14is_interrupted.exit, %bb.a
  %.sroa.07.1 = phi ptr [ null, %bb.a ], [ @6, %bb.e ], [ %i.f, %.split27 ], [ %i.f, %.split26 ], [ %i.f, %.split ], [ %i.f, %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error14is_interrupted.exit ], [ null, %bb.k ]
  ret ptr %.sroa.07.1

.thread.thread:                                   ; preds = %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error14is_interrupted.exit, %.split27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsloGAwzL3aMH_13tlsclient_mio.exit

bb.i:                                             ; preds = %.split26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ad = icmp ult ptr %i.f, inttoptr (i64 188978561024 to ptr)
  %i.ae = and i64 %i.g, 1095216660480
  %i.af = icmp ne i64 %i.ae, 1095216660480
  call void @llvm.assume(i1 %i.ad)
  call void @llvm.assume(i1 %i.af)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsloGAwzL3aMH_13tlsclient_mio.exit

bb.j:                                             ; preds = %.split
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ag = getelementptr i8, ptr %i.f, i64 -1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ag) ]
  store ptr %i.ag, ptr %i.c, align 8, !alias.scope !574
  store i8 3, ptr %i.a, align 8, !alias.scope !574
  call void @_RNvXsd_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsloGAwzL3aMH_13tlsclient_mio.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsloGAwzL3aMH_13tlsclient_mio.exit: ; preds = %.thread.thread, %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsloGAwzL3aMH_13tlsclient_mio.exit
  %.sroa.0.119 = phi ptr [ %.sroa.0.040, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsloGAwzL3aMH_13tlsclient_mio.exit ], [ %i.ac, %bb.h ]
  %.sroa.6.117 = phi i64 [ %.sroa.6.039, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsloGAwzL3aMH_13tlsclient_mio.exit ], [ %i.ab, %bb.h ] ; 2 uses
  %i.ah = icmp eq i64 %.sroa.6.117, 0
  br i1 %i.ah, label %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error14is_interrupted.exit._crit_edge, label %bb.b

bb.l:                                             ; preds = %.noexc, %bb.d
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsloGAwzL3aMH_13tlsclient_mio(ptr nonnull %i.f) #17
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  resume { ptr, i32 } %lpad.thr_comm

bb.n:                                             ; preds = %bb.l
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #18
  unreachable
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #7

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtCs7ZUl82OSlxp_6rustls12common_stateNtB2_11CommonState8send_msg(ptr noalias nofree noundef align 8 dereferenceable(840), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(168), i1 noundef zeroext) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() unnamed_addr #8

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs1_NtNtCs7ZUl82OSlxp_6rustls4msgs7messageNtB5_7Message17is_handshake_type(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(168), i8 noundef range(i8 0, 21), i8) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtCs7ZUl82OSlxp_6rustls12common_stateNtB2_11CommonState18send_warning_alert(ptr noalias nofree noundef align 8 dereferenceable(840), i8 noundef range(i8 0, 36), i8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMsb_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingINtNtBb_3vec3VechENtNtNtCshVVPy9isBpn_6webpki3crl5types16OwnedRevokedCertE10take_frontCsloGAwzL3aMH_13tlsclient_mio(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(64)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMsj_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingINtNtBc_3vec3VechENtNtNtCshVVPy9isBpn_6webpki3crl5types16OwnedRevokedCertNtB1z_4LeafENtB1z_4EdgeE16deallocating_endNtNtBc_5alloc6GlobalECsloGAwzL3aMH_13tlsclient_mio(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingINtNtBb_3vec3VechENtNtNtCshVVPy9isBpn_6webpki3crl5types16OwnedRevokedCertE10init_frontCsloGAwzL3aMH_13tlsclient_mio(ptr noalias nofree noundef align 8 dereferenceable(64)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #10

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMsb_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingtNtNtB7_7set_val9SetValZSTE10take_frontCsloGAwzL3aMH_13tlsclient_mio(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(64)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMsj_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingtNtNtB8_7set_val9SetValZSTNtB1z_4LeafENtB1z_4EdgeE16deallocating_endNtNtBc_5alloc6GlobalECsloGAwzL3aMH_13tlsclient_mio(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingtNtNtB7_7set_val9SetValZSTE10init_frontCsloGAwzL3aMH_13tlsclient_mio(ptr noalias nofree noundef align 8 dereferenceable(64)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.cttz.i16(i16, i1 immarg) #11

end_hunk_1
