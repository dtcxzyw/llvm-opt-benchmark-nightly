Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/collection-65f4deb478ee6f80.collection.9c3f6a4bd60d140-cgu.115?download=true
inline.NumInlined: 272
inline.NumDeleted: 134
begin_hunk_0_@_RNvMNtNtCsPYQCUnoTxQ_10collection6common14eta_calculatorNtB2_13EtaCalculator12set_progress:bb.a
  br i1 %i.al, label %bb.g, label %_RNCNvXsj_NtCs1FafPXGOmds_10ringbuffer19with_const_genericsINtB7_22ConstGenericRingBufferTNtNtCsG258MDvU3F_3std4time7InstantjEKj10_EINtNtB9_16ringbuffer_trait10RingBufferB1o_E10get_signed0CsPYQCUnoTxQ_10collection.exit12.i

bb.g:                                             ; preds = %bb.f
  call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const23panic_const_rem_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #23, !noalias !283
  unreachable

_RNCNvXsj_NtCs1FafPXGOmds_10ringbuffer19with_const_genericsINtB7_22ConstGenericRingBufferTNtNtCsG258MDvU3F_3std4time7InstantjEKj10_EINtNtB9_16ringbuffer_trait10RingBufferB1o_E10get_signed0CsPYQCUnoTxQ_10collection.exit12.i: ; preds = %bb.f
  %i.am = add i64 %i.aa, -2
  %i.an = srem i64 %i.am, %i.aa                   ; 2 uses
  %i.ao = icmp slt i64 %i.an, 0
  %.sroa.01.0.i.i10.i = call i64 @llvm.abs.i64(i64 %i.aa, i1 false)
  %i.ap = select i1 %i.ao, i64 %.sroa.01.0.i.i10.i, i64 0
  %.sroa.0.0.i.i11.i = add i64 %i.an, %i.z
  %i.aq = add i64 %.sroa.0.0.i.i11.i, %i.ap
  %i.ar = and i64 %i.aq, 15
  %i.as = call noundef nonnull align 8 ptr @_RINvNtCs1FafPXGOmds_10ringbuffer19with_const_generics13get_uncheckedTNtNtCsG258MDvU3F_3std4time7InstantjEKj10_ECsPYQCUnoTxQ_10collection(ptr noundef nonnull readonly align 8 dereferenceable(400) %0, i64 noundef %i.ar) ; 2 uses
  %i.at = load i64, ptr %i.as, align 8, !noundef !5
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.av = load i32, ptr %i.au, align 8, !range !12, !noundef !5
  %i.aw = call { i64, i32 } @_RNvXs3_NtCsG258MDvU3F_3std4timeNtB5_7InstantNtNtNtCskKLDkoKarTP_4core3ops5arith3Sub3sub(i64 noundef %i.d, i32 noundef range(i32 0, 1000000000) %i.e, i64 noundef %i.at, i32 noundef %i.av) ; 2 uses
  %i.ax = extractvalue { i64, i32 } %i.aw, 0
  %i.ay = icmp eq i64 %i.ax, 0
  br i1 %i.ay, label %bb.h, label %_RNCNvXsj_NtCs1FafPXGOmds_10ringbuffer19with_const_genericsINtB7_22ConstGenericRingBufferTNtNtCsG258MDvU3F_3std4time7InstantjEKj10_EINtNtB9_16ringbuffer_trait10RingBufferB1o_E10get_signed0CsPYQCUnoTxQ_10collection.exit12..critedge_crit_edge.i

_RNCNvXsj_NtCs1FafPXGOmds_10ringbuffer19with_const_genericsINtB7_22ConstGenericRingBufferTNtNtCsG258MDvU3F_3std4time7InstantjEKj10_EINtNtB9_16ringbuffer_trait10RingBufferB1o_E10get_signed0CsPYQCUnoTxQ_10collection.exit12..critedge_crit_edge.i: ; preds = %_RNCNvXsj_NtCs1FafPXGOmds_10ringbuffer19with_const_genericsINtB7_22ConstGenericRingBufferTNtNtCsG258MDvU3F_3std4time7InstantjEKj10_EINtNtB9_16ringbuffer_trait10RingBufferB1o_E10get_signed0CsPYQCUnoTxQ_10collection.exit12.i
  %.pre.i = load i64, ptr %i.f, align 8, !alias.scope !279, !noalias !280
  %.pre19.i = load i64, ptr %i.h, align 8, !alias.scope !279, !noalias !280
  br label %.critedge.i

bb.h:                                             ; preds = %_RNCNvXsj_NtCs1FafPXGOmds_10ringbuffer19with_const_genericsINtB7_22ConstGenericRingBufferTNtNtCsG258MDvU3F_3std4time7InstantjEKj10_EINtNtB9_16ringbuffer_trait10RingBufferB1o_E10get_signed0CsPYQCUnoTxQ_10collection.exit12.i
  %i.az = extractvalue { i64, i32 } %i.aw, 1      ; 2 uses
  %i.ba = icmp ult i32 %i.az, 1000000000
  call void @llvm.assume(i1 %i.ba)
  %i.bb = icmp samesign ult i32 %i.az, 625000000
  %.pre18.i = load i64, ptr %i.f, align 8, !alias.scope !275 ; 4 uses
  %.pre20.i = load i64, ptr %i.h, align 8, !alias.scope !275 ; 5 uses
  br i1 %i.bb, label %bb.i, label %.critedge.i

bb.i:                                             ; preds = %bb.h
  %.not9.i = icmp eq i64 %.pre18.i, %.pre20.i
  br i1 %.not9.i, label %bb.j, label %bb.k, !prof !11

bb.j:                                             ; preds = %bb.i
  call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #23
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.bc = xor i64 %.pre20.i, -1
  %i.bd = add i64 %.pre18.i, %i.bc                ; 2 uses
  %i.be = sub i64 %.pre18.i, %.pre20.i            ; 3 uses
  %i.bf = icmp eq i64 %i.be, -1
  %i.bg = icmp eq i64 %i.bd, -9223372036854775808
  %i.bh = and i1 %i.bg, %i.bf
  br i1 %i.bh, label %bb.l, label %_RNCNvXsj_NtCs1FafPXGOmds_10ringbuffer19with_const_genericsINtB7_22ConstGenericRingBufferTNtNtCsG258MDvU3F_3std4time7InstantjEKj10_EINtNtB9_16ringbuffer_trait10RingBufferB1o_E18ptr_get_mut_signed0CsPYQCUnoTxQ_10collection.exit.i

bb.l:                                             ; preds = %bb.k
  call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const24panic_const_rem_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #23
  unreachable

_RNCNvXsj_NtCs1FafPXGOmds_10ringbuffer19with_const_genericsINtB7_22ConstGenericRingBufferTNtNtCsG258MDvU3F_3std4time7InstantjEKj10_EINtNtB9_16ringbuffer_trait10RingBufferB1o_E18ptr_get_mut_signed0CsPYQCUnoTxQ_10collection.exit.i: ; preds = %bb.k
  %i.bi = srem i64 %i.bd, %i.be                   ; 2 uses
  %i.bj = icmp slt i64 %i.bi, 0
  %.sroa.01.0.i.i13.i = call i64 @llvm.abs.i64(i64 %i.be, i1 false)
  %i.bk = select i1 %i.bj, i64 %.sroa.01.0.i.i13.i, i64 0
  %.sroa.0.0.i.i14.i = add i64 %i.bi, %.pre20.i
  %i.bl = add i64 %.sroa.0.0.i.i14.i, %i.bk
  %i.bm = and i64 %i.bl, 15
  %i.bn = call noundef ptr @_RINvNtCs1FafPXGOmds_10ringbuffer19with_const_generics17get_unchecked_mutTNtNtCsG258MDvU3F_3std4time7InstantjEKj10_ECsPYQCUnoTxQ_10collection(ptr noundef nonnull align 8 dereferenceable(400) %0, i64 noundef %i.bm) ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bn) ]
  store i64 %i.d, ptr %i.bn, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store i32 %i.e, ptr %i.bo, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  store i64 %1, ptr %i.bp, align 8
  br label %_RNvMNtNtCsPYQCUnoTxQ_10collection6common14eta_calculatorNtB2_13EtaCalculator16set_progress_raw.exit

_RNvMNtNtCsPYQCUnoTxQ_10collection6common14eta_calculatorNtB2_13EtaCalculator16set_progress_raw.exit: ; preds = %_RNvXsj_NtCs1FafPXGOmds_10ringbuffer19with_const_genericsINtB5_22ConstGenericRingBufferTNtNtCsG258MDvU3F_3std4time7InstantjEKj10_EINtNtB7_16ringbuffer_trait10RingBufferB1m_E7enqueueCsPYQCUnoTxQ_10collection.exit.i, %_RNCNvXsj_NtCs1FafPXGOmds_10ringbuffer19with_const_genericsINtB7_22ConstGenericRingBufferTNtNtCsG258MDvU3F_3std4time7InstantjEKj10_EINtNtB9_16ringbuffer_trait10RingBufferB1o_E18ptr_get_mut_signed0CsPYQCUnoTxQ_10collection.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtCsPYQCUnoTxQ_10collection6common14eta_calculatorNtB2_13EtaCalculator3new(ptr dead_on_unwind noalias nofree noundef writable sret([400 x i8]) align 8 captures(none) dereferenceable(400) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = tail call { i64, i32 } @_RNvMNtCsG258MDvU3F_3std4timeNtB2_7Instant3now() ; 2 uses
  %i.c = extractvalue { i64, i32 } %i.b, 0
  %i.d = extractvalue { i64, i32 } %i.b, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !286
  store i64 %i.c, ptr %i.a, align 8, !noalias !286
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %i.d, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !286
  %.sroa.51.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %.sroa.51.0..sroa_idx.i, align 8, !noalias !286
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  call void @_RINvXsl_NtCs1FafPXGOmds_10ringbuffer19with_const_genericsINtB6_22ConstGenericRingBufferTNtNtCsG258MDvU3F_3std4time7InstantjEKj10_EINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12FromIteratorB1n_E9from_iterINtNtNtB2b_8adapters6cloned6ClonedINtNtNtB2d_5slice4iter4IterB1n_EEECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull sret([400 x i8]) align 8 captures(none) dereferenceable(400) %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !286
  ret void
}

; Function Attrs: nonlazybind uwtable
define { i64, i32 } @_RNvMNtNtCsPYQCUnoTxQ_10collection6common14eta_calculatorNtB2_13EtaCalculator8estimate(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(400) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call { i64, i32 } @_RNvMNtCsG258MDvU3F_3std4timeNtB2_7Instant3now() ; 2 uses
  %i.b = extractvalue { i64, i32 } %i.a, 0        ; 2 uses
  %i.c = extractvalue { i64, i32 } %i.a, 1        ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !296, !noundef !5 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !296, !noundef !5 ; 4 uses
  %i.h = sub i64 %i.e, %i.g                       ; 5 uses
  %.not.i = icmp eq i64 %i.e, %i.g
  br i1 %.not.i, label %_RNvMNtNtCsPYQCUnoTxQ_10collection6common14eta_calculatorNtB2_13EtaCalculator12estimate_raw.exit, label %_RNCNvXsj_NtCs1FafPXGOmds_10ringbuffer19with_const_genericsINtB7_22ConstGenericRingBufferTNtNtCsG258MDvU3F_3std4time7InstantjEKj10_EINtNtB9_16ringbuffer_trait10RingBufferB1o_E10get_signed0CsPYQCUnoTxQ_10collection.exit.i

_RNCNvXsj_NtCs1FafPXGOmds_10ringbuffer19with_const_genericsINtB7_22ConstGenericRingBufferTNtNtCsG258MDvU3F_3std4time7InstantjEKj10_EINtNtB9_16ringbuffer_trait10RingBufferB1o_E10get_signed0CsPYQCUnoTxQ_10collection.exit.i: ; preds = %bb.a
  %i.i = add i64 %i.h, -1
  %i.j = srem i64 %i.i, %i.h                      ; 2 uses
  %i.k = icmp slt i64 %i.j, 0
  %.sroa.01.0.i.i.i = tail call i64 @llvm.abs.i64(i64 %i.h, i1 false)
  %i.l = select i1 %i.k, i64 %.sroa.01.0.i.i.i, i64 0
  %.sroa.0.0.i.i.i = add i64 %i.j, %i.g
  %i.m = add i64 %.sroa.0.0.i.i.i, %i.l
  %i.n = and i64 %i.m, 15
  %i.o = tail call noundef nonnull align 8 ptr @_RINvNtCs1FafPXGOmds_10ringbuffer19with_const_generics13get_uncheckedTNtNtCsG258MDvU3F_3std4time7InstantjEKj10_ECsPYQCUnoTxQ_10collection(ptr noundef nonnull readonly align 8 dereferenceable(400) %0, i64 noundef %i.n) ; 3 uses
  %i.p = load i64, ptr %i.o, align 8, !noundef !5 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.r = load i32, ptr %i.q, align 8, !range !12, !noundef !5 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.t = load i64, ptr %i.s, align 8, !noundef !5 ; 5 uses
  %i.u = icmp ult i64 %1, %i.t
  br i1 %i.u, label %_RNvMNtNtCsPYQCUnoTxQ_10collection6common14eta_calculatorNtB2_13EtaCalculator12estimate_raw.exit, label %bb.b

bb.b:                                             ; preds = %_RNCNvXsj_NtCs1FafPXGOmds_10ringbuffer19with_const_genericsINtB7_22ConstGenericRingBufferTNtNtCsG258MDvU3F_3std4time7InstantjEKj10_EINtNtB9_16ringbuffer_trait10RingBufferB1o_E10get_signed0CsPYQCUnoTxQ_10collection.exit.i
  %i.v = sub nuw i64 %1, %i.t
  %i.w = icmp eq i64 %1, %i.t
  br i1 %i.w, label %_RNvMNtNtCsPYQCUnoTxQ_10collection6common14eta_calculatorNtB2_13EtaCalculator12estimate_raw.exit, label %.preheader.i.preheader

.preheader.i:                                     ; preds = %.preheader.i.preheader
  %i.x = add i64 %i.y, 1                          ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.x, %i.h
  br i1 %exitcond.not.i.i, label %_RNvMNtNtCsPYQCUnoTxQ_10collection6common14eta_calculatorNtB2_13EtaCalculator12estimate_raw.exit, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %bb.b, %.preheader.i
  %i.y = phi i64 [ %i.x, %.preheader.i ], [ 0, %bb.b ] ; 2 uses
  %i.z = urem i64 %i.y, %i.h
  %i.aa = add i64 %i.z, %i.g
  %i.ab = and i64 %i.aa, 15
  %i.ac = tail call noundef nonnull align 8 ptr @_RINvNtCs1FafPXGOmds_10ringbuffer19with_const_generics13get_uncheckedTNtNtCsG258MDvU3F_3std4time7InstantjEKj10_ECsPYQCUnoTxQ_10collection(ptr noundef nonnull readonly align 8 dereferenceable(400) %0, i64 noundef %i.ab), !noalias !297 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !298)
  %i.ad = load i64, ptr %i.ac, align 8, !alias.scope !298, !noalias !299, !noundef !5
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.af = load i32, ptr %i.ae, align 8, !range !12, !alias.scope !298, !noalias !299, !noundef !5
  %i.ag = tail call { i64, i32 } @_RNvXs3_NtCsG258MDvU3F_3std4timeNtB5_7InstantNtNtNtCskKLDkoKarTP_4core3ops5arith3Sub3sub(i64 noundef %i.b, i32 noundef range(i32 0, 1000000000) %i.c, i64 noundef %i.ad, i32 noundef %i.af), !noalias !300 ; 2 uses
  %i.ah = extractvalue { i64, i32 } %i.ag, 1
  %i.ai = extractvalue { i64, i32 } %i.ag, 0      ; 2 uses
  %i.aj = icmp eq i64 %i.ai, 10
  %i.ak = icmp ugt i64 %i.ai, 10
  %i.al = icmp ne i32 %i.ah, 0
  %spec.select.i.i.i.i = select i1 %i.aj, i1 %i.al, i1 %i.ak
  br i1 %spec.select.i.i.i.i, label %.preheader.i, label %_RINvYINtNtNtCs1FafPXGOmds_10ringbuffer16ringbuffer_trait4iter18RingBufferIteratorTNtNtCsG258MDvU3F_3std4time7InstantjEINtNtBa_19with_const_generics22ConstGenericRingBufferB1h_Kj10_EENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2U_4find5checkRB1h_NCNvMNtNtCsPYQCUnoTxQ_10collection6common14eta_calculatorNtB4v_13EtaCalculator12estimate_raw0E0INtNtNtB32_3ops12control_flow11ControlFlowB4l_EEB4z_.exit.i

_RINvYINtNtNtCs1FafPXGOmds_10ringbuffer16ringbuffer_trait4iter18RingBufferIteratorTNtNtCsG258MDvU3F_3std4time7InstantjEINtNtBa_19with_const_generics22ConstGenericRingBufferB1h_Kj10_EENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2U_4find5checkRB1h_NCNvMNtNtCsPYQCUnoTxQ_10collection6common14eta_calculatorNtB4v_13EtaCalculator12estimate_raw0E0INtNtNtB32_3ops12control_flow11ControlFlowB4l_EEB4z_.exit.i: ; preds = %.preheader.i.preheader
  %i.am = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.an = load i64, ptr %i.am, align 8, !noundef !5 ; 2 uses
  %i.ao = icmp eq i64 %i.t, %i.an
  br i1 %i.ao, label %_RNvMNtNtCsPYQCUnoTxQ_10collection6common14eta_calculatorNtB2_13EtaCalculator12estimate_raw.exit, label %bb.c

bb.c:                                             ; preds = %_RINvYINtNtNtCs1FafPXGOmds_10ringbuffer16ringbuffer_trait4iter18RingBufferIteratorTNtNtCsG258MDvU3F_3std4time7InstantjEINtNtBa_19with_const_generics22ConstGenericRingBufferB1h_Kj10_EENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2U_4find5checkRB1h_NCNvMNtNtCsPYQCUnoTxQ_10collection6common14eta_calculatorNtB4v_13EtaCalculator12estimate_raw0E0INtNtNtB32_3ops12control_flow11ControlFlowB4l_EEB4z_.exit.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.aq = load i32, ptr %i.ap, align 8, !range !12, !noundef !5
  %i.ar = load i64, ptr %i.ac, align 8, !noundef !5
  %i.as = sub i64 %i.t, %i.an
  %i.at = uitofp i64 %i.as to double
  %i.au = tail call { i64, i32 } @_RNvXs3_NtCsG258MDvU3F_3std4timeNtB5_7InstantNtNtNtCskKLDkoKarTP_4core3ops5arith3Sub3sub(i64 noundef %i.p, i32 noundef %i.r, i64 noundef %i.ar, i32 noundef %i.aq) ; 2 uses
  %i.av = extractvalue { i64, i32 } %i.au, 0
  %i.aw = extractvalue { i64, i32 } %i.au, 1      ; 2 uses
  %i.ax = uitofp i64 %i.av to double
  %i.ay = icmp ult i32 %i.aw, 1000000000
  tail call void @llvm.assume(i1 %i.ay)
  %i.az = uitofp nneg i32 %i.aw to double
  %i.ba = fdiv double %i.az, 1.000000e+09
  %i.bb = fadd double %i.ba, %i.ax
  %i.bc = fdiv double %i.at, %i.bb
  %i.bd = tail call { i64, i32 } @_RNvXs3_NtCsG258MDvU3F_3std4timeNtB5_7InstantNtNtNtCskKLDkoKarTP_4core3ops5arith3Sub3sub(i64 noundef %i.b, i32 noundef range(i32 0, 1000000000) %i.c, i64 noundef %i.p, i32 noundef %i.r) ; 2 uses
  %i.be = extractvalue { i64, i32 } %i.bd, 0
  %i.bf = extractvalue { i64, i32 } %i.bd, 1      ; 2 uses
  %i.bg = uitofp i64 %i.be to double
  %i.bh = icmp ult i32 %i.bf, 1000000000
  tail call void @llvm.assume(i1 %i.bh)
  %i.bi = uitofp nneg i32 %i.bf to double
  %i.bj = fdiv double %i.bi, 1.000000e+09
  %i.bk = fadd double %i.bj, %i.bg
  %i.bl = uitofp i64 %i.v to double
  %i.bm = fdiv double %i.bl, %i.bc
  %i.bn = fsub double %i.bm, %i.bk
  %i.bo = tail call nsz double @llvm.maximumnum.f64(double %i.bn, double 0.000000e+00)
  %i.bp = bitcast double %i.bo to i64             ; 7 uses
  %i.bq = and i64 %i.bp, 4503599627370495
  %i.br = or disjoint i64 %i.bq, 4503599627370496 ; 3 uses
  %i.bs = lshr i64 %i.bp, 52                      ; 4 uses
  %i.bt = trunc nuw nsw i64 %i.bs to i16
  %i.bu = add nuw nsw i64 %i.bs, 64513
  %i.bv = icmp samesign ult i64 %i.bp, 4467570830351532032
  br i1 %i.bv, label %_RNvMNtNtCsPYQCUnoTxQ_10collection6common14eta_calculatorNtB2_13EtaCalculator12estimate_raw.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bw = icmp samesign ult i64 %i.bp, 4607182418800017408
  br i1 %i.bw, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bx = icmp samesign ult i64 %i.bp, 4841369599423283200
  br i1 %i.bx, label %bb.h, label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.by = zext nneg i64 %i.br to i128
  %i.bz = add nsw i16 %i.bt, -979
  %i.ca = zext nneg i16 %i.bz to i128
  %i.cb = shl nuw nsw i128 %i.by, %i.ca
  %i.cc = mul nuw nsw i128 %i.cb, 1000000000      ; 3 uses
  %i.cd = lshr i128 %i.cc, 96                     ; 2 uses
  %i.ce = trunc nuw nsw i128 %i.cd to i32
  %i.cf = and i128 %i.cc, 39614081257132168796771975168
  %i.cg = icmp eq i128 %i.cf, 0
  br i1 %i.cg, label %bb.m, label %bb.l

bb.g:                                             ; preds = %bb.e
  %i.ch = icmp samesign ult i64 %i.bp, 4895412794951729152
  br i1 %i.ch, label %bb.i, label %_RNvMNtNtCsPYQCUnoTxQ_10collection6common14eta_calculatorNtB2_13EtaCalculator12estimate_raw.exit

bb.h:                                             ; preds = %bb.e
  %i.ci = sub nsw i64 1075, %i.bs
  %2 = and i64 %i.ci, 65535
  %i.cj = lshr i64 %i.br, %2
  %3 = and i64 %i.bu, 65535
  %i.ck = shl i64 %i.bp, %3
  %i.cl = and i64 %i.ck, 4503599627370495
  %i.cm = zext nneg i64 %i.cl to i128
  %i.cn = mul nuw nsw i128 %i.cm, 1000000000      ; 3 uses
  %i.co = lshr i128 %i.cn, 52                     ; 2 uses
  %i.cp = trunc nuw nsw i128 %i.co to i32
  %i.cq = and i128 %i.cn, 2251799813685248
  %i.cr = icmp eq i128 %i.cq, 0
  br i1 %i.cr, label %bb.k, label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.cs = add nuw nsw i64 %i.bs, 64461
  %4 = and i64 %i.cs, 65535
  %i.ct = shl nuw i64 %i.br, %4
  br label %_RNvMNtNtCsPYQCUnoTxQ_10collection6common14eta_calculatorNtB2_13EtaCalculator12estimate_raw.exit

bb.j:                                             ; preds = %bb.h
  %i.cu = trunc i128 %i.co to i1
  %i.cv = and i128 %i.cn, 4503599627369984
  %i.cw = icmp ne i128 %i.cv, 2251799813685248
  %spec.select.not.i.i = or i1 %i.cw, %i.cu
  %i.cx = zext i1 %spec.select.not.i.i to i32
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.h
  %.sroa.01.0.i.i = phi i32 [ 0, %bb.h ], [ %i.cx, %bb.j ]
  %i.cy = add nuw nsw i32 %.sroa.01.0.i.i, %i.cp  ; 2 uses
  %i.cz = icmp eq i32 %i.cy, 1000000000           ; 2 uses
  %i.da = zext i1 %i.cz to i64
  %spec.select10.i.i = add nuw nsw i64 %i.cj, %i.da
  %spec.select11.i.i = select i1 %i.cz, i32 0, i32 %i.cy
  br label %_RNvMNtNtCsPYQCUnoTxQ_10collection6common14eta_calculatorNtB2_13EtaCalculator12estimate_raw.exit

bb.l:                                             ; preds = %bb.f
  %i.db = trunc i128 %i.cd to i1
  %i.dc = and i128 %i.cc, 79228162514264337593543949824
  %i.dd = icmp ne i128 %i.dc, 39614081257132168796771975168
  %spec.select12.not.i.i = or i1 %i.dd, %i.db
  %i.de = zext i1 %spec.select12.not.i.i to i32
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.f
  %.sroa.0.0.i13.i = phi i32 [ 0, %bb.f ], [ %i.de, %bb.l ]
  %i.df = add nuw nsw i32 %.sroa.0.0.i13.i, %i.ce ; 2 uses
  %i.dg = icmp eq i32 %i.df, 1000000000           ; 2 uses
  %..i.i = zext i1 %i.dg to i64
  %.13.i.i = select i1 %i.dg, i32 0, i32 %i.df
  br label %_RNvMNtNtCsPYQCUnoTxQ_10collection6common14eta_calculatorNtB2_13EtaCalculator12estimate_raw.exit

_RNvMNtNtCsPYQCUnoTxQ_10collection6common14eta_calculatorNtB2_13EtaCalculator12estimate_raw.exit: ; preds = %.preheader.i, %bb.a, %_RNCNvXsj_NtCs1FafPXGOmds_10ringbuffer19with_const_genericsINtB7_22ConstGenericRingBufferTNtNtCsG258MDvU3F_3std4time7InstantjEKj10_EINtNtB9_16ringbuffer_trait10RingBufferB1o_E10get_signed0CsPYQCUnoTxQ_10collection.exit.i, %bb.b, %_RINvYINtNtNtCs1FafPXGOmds_10ringbuffer16ringbuffer_trait4iter18RingBufferIteratorTNtNtCsG258MDvU3F_3std4time7InstantjEINtNtBa_19with_const_generics22ConstGenericRingBufferB1h_Kj10_EENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2U_4find5checkRB1h_NCNvMNtNtCsPYQCUnoTxQ_10collection6common14eta_calculatorNtB4v_13EtaCalculator12estimate_raw0E0INtNtNtB32_3ops12control_flow11ControlFlowB4l_EEB4z_.exit.i, %bb.c, %bb.g, %bb.i, %bb.k, %bb.m
  %.sroa.7.0.i = phi i32 [ -1, %bb.a ], [ 0, %bb.b ], [ 0, %bb.i ], [ -1, %_RINvYINtNtNtCs1FafPXGOmds_10ringbuffer16ringbuffer_trait4iter18RingBufferIteratorTNtNtCsG258MDvU3F_3std4time7InstantjEINtNtBa_19with_const_generics22ConstGenericRingBufferB1h_Kj10_EENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2U_4find5checkRB1h_NCNvMNtNtCsPYQCUnoTxQ_10collection6common14eta_calculatorNtB4v_13EtaCalculator12estimate_raw0E0INtNtNtB32_3ops12control_flow11ControlFlowB4l_EEB4z_.exit.i ], [ 0, %_RNCNvXsj_NtCs1FafPXGOmds_10ringbuffer19with_const_genericsINtB7_22ConstGenericRingBufferTNtNtCsG258MDvU3F_3std4time7InstantjEKj10_EINtNtB9_16ringbuffer_trait10RingBufferB1o_E10get_signed0CsPYQCUnoTxQ_10collection.exit.i ], [ -1, %bb.g ], [ 0, %bb.c ], [ %spec.select11.i.i, %bb.k ], [ %.13.i.i, %bb.m ], [ -1, %.preheader.i ]
  %.sroa.0.0.i = phi i64 [ undef, %bb.a ], [ 0, %bb.b ], [ %i.ct, %bb.i ], [ undef, %_RINvYINtNtNtCs1FafPXGOmds_10ringbuffer16ringbuffer_trait4iter18RingBufferIteratorTNtNtCsG258MDvU3F_3std4time7InstantjEINtNtBa_19with_const_generics22ConstGenericRingBufferB1h_Kj10_EENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2U_4find5checkRB1h_NCNvMNtNtCsPYQCUnoTxQ_10collection6common14eta_calculatorNtB4v_13EtaCalculator12estimate_raw0E0INtNtNtB32_3ops12control_flow11ControlFlowB4l_EEB4z_.exit.i ], [ 0, %_RNCNvXsj_NtCs1FafPXGOmds_10ringbuffer19with_const_genericsINtB7_22ConstGenericRingBufferTNtNtCsG258MDvU3F_3std4time7InstantjEKj10_EINtNtB9_16ringbuffer_trait10RingBufferB1o_E10get_signed0CsPYQCUnoTxQ_10collection.exit.i ], [ undef, %bb.g ], [ 0, %bb.c ], [ %spec.select10.i.i, %bb.k ], [ %..i.i, %bb.m ], [ undef, %.preheader.i ]
  %i.dh = insertvalue { i64, i32 } poison, i64 %.sroa.0.0.i, 0
  %i.di = insertvalue { i64, i32 } %i.dh, i32 %.sroa.7.0.i, 1
  ret { i64, i32 } %i.di
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtCsPYQCUnoTxQ_10collection6shards10shard_path(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i32 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [10 x i8], align 1                ; 3 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.d = call { ptr, i64 } @_RNvMsa_NtNtNtCskKLDkoKarTP_4core3fmt3num3impm4__fmt(i32 noundef %3, ptr noalias nofree noundef nonnull %i.b, i64 noundef 10) ; 2 uses
  %i.e = extractvalue { ptr, i64 } %i.d, 0
  %i.f = extractvalue { ptr, i64 } %i.d, 1        ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.f, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.g = load i64, ptr %i.a, align 8, !range !10, !noundef !5
  %i.h = trunc nuw i64 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !13, !noundef !5 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.h, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.l = load i64, ptr %i.k, align 8
  call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.j, i64 %i.l) #24
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %i.k, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.n = icmp ule i64 %i.f, %i.j
  call void @llvm.assume(i1 %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not = icmp eq i64 %i.f, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.e, %bb.c
  store i64 %i.j, ptr %i.c, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.m, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %i.f, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @_RINvMs16_NtCsG258MDvU3F_3std4pathNtB7_4Path4joinNtNtCsexYYUdYSQU6_5alloc6string6StringECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.e:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.m, ptr align 1 %i.e, i64 %i.f, i1 false)
  br label %bb.d
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtCsPYQCUnoTxQ_10collection6shards28shard_initializing_flag_path(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i32 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
.split:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 2 uses
  %i.c = alloca [4 x i8], align 4                 ; 2 uses
  store i32 %3, ptr %i.c, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs8_NtNtNtCskKLDkoKarTP_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx, align 8
  call void @_RNvNvNtCsexYYUdYSQU6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull @7, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @_RINvMs16_NtCsG258MDvU3F_3std4pathNtB7_4Path4joinNtNtCsexYYUdYSQU6_5alloc6string6StringECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RNvXCsjqcU1oJFKXj_9hashbrownINtNtCsexYYUdYSQU6_5alloc6borrow3CoweEINtB2_10EquivalentBq_E10equivalentCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !307)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !308)
  %.sroa.3.0.in.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.3.0.i = load i64, ptr %.sroa.3.0.in.i, align 8, !alias.scope !307, !noalias !308, !noundef !5 ; 2 uses
  %.sroa.32.0.in.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.32.0.i = load i64, ptr %.sroa.32.0.in.i, align 8, !alias.scope !308, !noalias !307, !noundef !5
  %i.a = icmp eq i64 %.sroa.3.0.i, %.sroa.32.0.i
  br i1 %i.a, label %bb.b, label %_RNvXs8_NtCsexYYUdYSQU6_5alloc6borrowINtB5_3CoweENtNtCskKLDkoKarTP_4core3cmp9PartialEq2eqCsPYQCUnoTxQ_10collection.exit

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.in.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.i = load ptr, ptr %.sroa.0.0.in.i, align 8, !alias.scope !307, !noalias !308, !nonnull !5, !noundef !5
  %.sroa.01.0.in.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.01.0.i = load ptr, ptr %.sroa.01.0.in.i, align 8, !alias.scope !308, !noalias !307, !nonnull !5, !noundef !5
  %bcmp.i.i = tail call i32 @bcmp(ptr nonnull readonly %.sroa.0.0.i, ptr nonnull readonly %.sroa.01.0.i, i64 %.sroa.3.0.i), !alias.scope !309, !noalias !310
  %i.b = icmp eq i32 %bcmp.i.i, 0
  br label %_RNvXs8_NtCsexYYUdYSQU6_5alloc6borrowINtB5_3CoweENtNtCskKLDkoKarTP_4core3cmp9PartialEq2eqCsPYQCUnoTxQ_10collection.exit

_RNvXs8_NtCsexYYUdYSQU6_5alloc6borrowINtB5_3CoweENtNtCskKLDkoKarTP_4core3cmp9PartialEq2eqCsPYQCUnoTxQ_10collection.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i = phi i1 [ %i.b, %bb.b ], [ false, %bb.a ]
  ret i1 %.sroa.0.0.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RNvXCsjqcU1oJFKXj_9hashbrownRyINtB2_10EquivalentBq_E10equivalentCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #2 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !5, !align !7, !noundef !5
  %.val1 = load ptr, ptr %1, align 8, !nonnull !5, !align !7, !noundef !5
  %.val.i = load i64, ptr %.val, align 8, !noundef !5
  %.val1.i = load i64, ptr %.val1, align 8, !noundef !5
  %i.a = icmp eq i64 %.val.i, %.val1.i
  ret i1 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_RNvXCsjqcU1oJFKXj_9hashbrownTjjEINtB2_10EquivalentBq_E10equivalentCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #3 {
bb.a:
  %.val = load i64, ptr %0, align 8, !noundef !5
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load i64, ptr %i.a, align 8
  %.val2 = load i64, ptr %1, align 8, !noundef !5
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val3 = load i64, ptr %i.b, align 8
  %i.c = icmp eq i64 %.val, %.val2
  %i.d = icmp eq i64 %.val1, %.val3
  %spec.select.i = select i1 %i.c, i1 %i.d, i1 false
  ret i1 %spec.select.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RNvXCsjqcU1oJFKXj_9hashbrowneINtB2_10EquivalentINtNtCsexYYUdYSQU6_5alloc6borrow3CoweEE10equivalentCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull readonly captures(none) %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %2) unnamed_addr #2 {
bb.a:
  %.val1.pn.in.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val1.pn.i = load i64, ptr %.val1.pn.in.i, align 8, !alias.scope !316, !noundef !5
  %i.a = icmp eq i64 %1, %.val1.pn.i
  br i1 %i.a, label %bb.b, label %_RNvXs_NtNtCskKLDkoKarTP_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit

bb.b:                                             ; preds = %bb.a
  %.val.pn.in.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val.pn.i = load ptr, ptr %.val.pn.in.i, align 8, !alias.scope !316, !nonnull !5, !noundef !5
  %bcmp.i = tail call i32 @bcmp(ptr nonnull readonly %0, ptr nonnull readonly %.val.pn.i, i64 %1), !alias.scope !317
  %i.b = icmp eq i32 %bcmp.i, 0
  br label %_RNvXs_NtNtCskKLDkoKarTP_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit

_RNvXs_NtNtCskKLDkoKarTP_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i = phi i1 [ %i.b, %bb.b ], [ false, %bb.a ]
  ret i1 %.sroa.0.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RNvXCsjqcU1oJFKXj_9hashbrowneINtB2_10EquivalentNtNtCsexYYUdYSQU6_5alloc6string6StringE10equivalentCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull readonly captures(none) %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %2) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val1 = load i64, ptr %i.a, align 8, !noundef !5
  %i.b = icmp eq i64 %1, %.val1
  br i1 %i.b, label %bb.b, label %_RNvXs_NtNtCskKLDkoKarTP_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val = load ptr, ptr %i.c, align 8, !nonnull !5, !noundef !5
  %bcmp.i = tail call i32 @bcmp(ptr nonnull readonly %0, ptr nonnull readonly %.val, i64 %1), !alias.scope !321
  %i.d = icmp eq i32 %bcmp.i, 0
  br label %_RNvXs_NtNtCskKLDkoKarTP_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit

_RNvXs_NtNtCskKLDkoKarTP_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i = phi i1 [ %i.d, %bb.b ], [ false, %bb.a ]
  ret i1 %.sroa.0.0.i
}
end_hunk_0
