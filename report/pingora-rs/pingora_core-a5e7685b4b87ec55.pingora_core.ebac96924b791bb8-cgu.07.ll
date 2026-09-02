Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pingora-rs/original/pingora_core-a5e7685b4b87ec55.pingora_core.ebac96924b791bb8-cgu.07?download=true
inline.NumInlined: 958
inline.NumDeleted: 347
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 41
begin_hunk_0_@_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtCs6jFIAG93R3W_8petgraph10graph_impl9NodeIndexNtNtCskeugdADtBsi_12pingora_core8services17ServiceDependencyEEB1t_:bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21
  unreachable

common.resume.i:                                  ; preds = %bb.f, %bb.e, %.body.i
  %common.resume.op.i = phi { ptr, i32 } [ %i.g, %bb.e ], [ %i.g, %bb.f ], [ %eh.lpad-body.i, %.body.i ]
  resume { ptr, i32 } %common.resume.op.i

bb.j:                                             ; preds = %.body.i
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskeugdADtBsi_12pingora_core8services17ServiceDependencyEBF_.exit: ; preds = %bb.g, %bb.h
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RINvNtNtCs1u7m7dv2nU3_10tokio_util4util8poll_buf14poll_write_bufINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCskeugdADtBsi_12pingora_core9protocols2IOEL_EINtNtNtCs1eA6bChxBZF_5bytes3buf5chain5ChainQINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorNtNtB2u_9bytes_mut8BytesMutEQINtNtNtNtCskxN0Kp1MEon_2h25proto7streams10prioritize11PrioritizedNtNtB2u_5bytes5BytesEEEB1E_(ptr noalias nofree noundef align 8 dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1024 x i8], align 8              ; 13 uses
  %.val = load ptr, ptr %2, align 8, !nonnull !7, !align !18, !noundef !7 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val19 = load ptr, ptr %i.b, align 8, !nonnull !7, !align !18, !noundef !7 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 4 uses
  %.val1.i.i.i.i = load i64, ptr %i.c, align 8, !alias.scope !399, !noundef !7
  %i.d = getelementptr inbounds nuw i8, ptr %.val, i64 32 ; 6 uses
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !399, !noundef !7
  %i.f = tail call noundef i64 @llvm.usub.sat.i64(i64 %.val1.i.i.i.i, i64 %i.e)
  %i.g = tail call noundef i64 @_RNvXs_NtNtNtCskxN0Kp1MEon_2h25proto7streams10prioritizeINtB4_11PrioritizedNtNtCs1eA6bChxBZF_5bytes5bytes5BytesENtNtNtB1e_3buf8buf_impl3Buf9remainingCskeugdADtBsi_12pingora_core(ptr noundef nonnull align 8 %.val19)
  %i.h = or i64 %i.g, %i.f
  %.not = icmp eq i64 %i.h, 0
  %.sroa.0.0.i.i.i.sroa.gep = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br i1 %.not, label %_RNvXs_NtNtCs1eA6bChxBZF_5bytes3buf5chainINtB4_5ChainQINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorNtNtB8_9bytes_mut8BytesMutEQINtNtNtNtCskxN0Kp1MEon_2h25proto7streams10prioritize11PrioritizedNtNtB8_5bytes5BytesEENtNtB6_8buf_impl3Buf7advanceCskeugdADtBsi_12pingora_core.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = tail call noundef zeroext i1 @_RNvXNtNtCs2awuzAz5vY4_5tokio2io11async_writeINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCskeugdADtBsi_12pingora_core9protocols2IOEL_ENtB2_10AsyncWrite17is_write_vectoredB1k_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %0)
  br i1 %i.i, label %bb.f, label %bb.c

_RNvXs_NtNtCs1eA6bChxBZF_5bytes3buf5chainINtB4_5ChainQINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorNtNtB8_9bytes_mut8BytesMutEQINtNtNtNtCskxN0Kp1MEon_2h25proto7streams10prioritize11PrioritizedNtNtB8_5bytes5BytesEENtNtB6_8buf_impl3Buf7advanceCskeugdADtBsi_12pingora_core.exit: ; preds = %_RNvXNtNtCs1eA6bChxBZF_5bytes3buf8buf_implQINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorNtNtB6_9bytes_mut8BytesMutENtB2_3Buf7advanceCskeugdADtBsi_12pingora_core.exit9.i, %bb.i, %bb.p, %bb.q, %bb.g, %_RNvXs_NtNtCs1eA6bChxBZF_5bytes3buf5chainINtB4_5ChainQINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorNtNtB8_9bytes_mut8BytesMutEQINtNtNtNtCskxN0Kp1MEon_2h25proto7streams10prioritize11PrioritizedNtNtB8_5bytes5BytesEENtNtB6_8buf_impl3Buf5chunkCskeugdADtBsi_12pingora_core.exit, %bb.a
  %.sroa.7.0 = phi ptr [ undef, %_RNvXs_NtNtCs1eA6bChxBZF_5bytes3buf5chainINtB4_5ChainQINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorNtNtB8_9bytes_mut8BytesMutEQINtNtNtNtCskxN0Kp1MEon_2h25proto7streams10prioritize11PrioritizedNtNtB8_5bytes5BytesEENtNtB6_8buf_impl3Buf5chunkCskeugdADtBsi_12pingora_core.exit ], [ %i.ax, %bb.q ], [ null, %bb.a ], [ %i.u, %bb.g ], [ undef, %bb.p ], [ %.sroa.016.0.in, %bb.i ], [ %.sroa.016.0.in, %_RNvXNtNtCs1eA6bChxBZF_5bytes3buf8buf_implQINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorNtNtB6_9bytes_mut8BytesMutENtB2_3Buf7advanceCskeugdADtBsi_12pingora_core.exit9.i ]
  %.sroa.0.0 = phi i64 [ %i.t, %_RNvXs_NtNtCs1eA6bChxBZF_5bytes3buf5chainINtB4_5ChainQINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorNtNtB8_9bytes_mut8BytesMutEQINtNtNtNtCskxN0Kp1MEon_2h25proto7streams10prioritize11PrioritizedNtNtB8_5bytes5BytesEENtNtB6_8buf_impl3Buf5chunkCskeugdADtBsi_12pingora_core.exit ], [ 1, %bb.q ], [ 0, %bb.a ], [ 1, %bb.g ], [ 2, %bb.p ], [ 0, %bb.i ], [ 0, %_RNvXNtNtCs1eA6bChxBZF_5bytes3buf8buf_implQINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorNtNtB6_9bytes_mut8BytesMutENtB2_3Buf7advanceCskeugdADtBsi_12pingora_core.exit9.i ]
  %i.j = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.k = insertvalue { i64, ptr } %i.j, ptr %.sroa.7.0, 1
  ret { i64, ptr } %i.k

bb.c:                                             ; preds = %bb.b
  %.val.i.i = load i64, ptr %i.c, align 8, !alias.scope !400, !noundef !7 ; 2 uses
  %.val1.i.i = load i64, ptr %i.d, align 8, !alias.scope !400, !noundef !7 ; 3 uses
  %i.l = icmp ugt i64 %.val.i.i, %.val1.i.i
  br i1 %i.l, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = tail call { ptr, i64 } @_RNvXs_NtNtNtCskxN0Kp1MEon_2h25proto7streams10prioritizeINtB4_11PrioritizedNtNtCs1eA6bChxBZF_5bytes5bytes5BytesENtNtNtB1e_3buf8buf_impl3Buf5chunkCskeugdADtBsi_12pingora_core(ptr noundef nonnull align 8 %.val19)
  br label %_RNvXs_NtNtCs1eA6bChxBZF_5bytes3buf5chainINtB4_5ChainQINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorNtNtB8_9bytes_mut8BytesMutEQINtNtNtNtCskxN0Kp1MEon_2h25proto7streams10prioritize11PrioritizedNtNtB8_5bytes5BytesEENtNtB6_8buf_impl3Buf5chunkCskeugdADtBsi_12pingora_core.exit

bb.e:                                             ; preds = %bb.c
  %.val.i.i.i = load ptr, ptr %.val, align 8, !alias.scope !401, !nonnull !7, !noundef !7
  %i.n = sub nuw i64 %.val.i.i, %.val1.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %.val1.i.i
  %i.p = insertvalue { ptr, i64 } poison, ptr %i.o, 0
  %i.q = insertvalue { ptr, i64 } %i.p, i64 %i.n, 1
  br label %_RNvXs_NtNtCs1eA6bChxBZF_5bytes3buf5chainINtB4_5ChainQINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorNtNtB8_9bytes_mut8BytesMutEQINtNtNtNtCskxN0Kp1MEon_2h25proto7streams10prioritize11PrioritizedNtNtB8_5bytes5BytesEENtNtB6_8buf_impl3Buf5chunkCskeugdADtBsi_12pingora_core.exit

_RNvXs_NtNtCs1eA6bChxBZF_5bytes3buf5chainINtB4_5ChainQINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorNtNtB8_9bytes_mut8BytesMutEQINtNtNtNtCskxN0Kp1MEon_2h25proto7streams10prioritize11PrioritizedNtNtB8_5bytes5BytesEENtNtB6_8buf_impl3Buf5chunkCskeugdADtBsi_12pingora_core.exit: ; preds = %bb.d, %bb.e
  %.pn.i = phi { ptr, i64 } [ %i.q, %bb.e ], [ %i.m, %bb.d ] ; 2 uses
  %.sroa.0.0.i = extractvalue { ptr, i64 } %.pn.i, 0 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.i) ]
  %i.r = extractvalue { ptr, i64 } %.pn.i, 1
  %i.s = tail call { i64, ptr } @_RNvXNtNtCs2awuzAz5vY4_5tokio2io11async_writeINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCskeugdADtBsi_12pingora_core9protocols2IOEL_ENtB2_10AsyncWrite10poll_writeB1k_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i, i64 noundef %i.r) ; 2 uses
  %i.t = extractvalue { i64, ptr } %i.s, 0        ; 2 uses
  %i.u = extractvalue { i64, ptr } %i.s, 1        ; 3 uses
  switch i64 %i.t, label %bb.g [
    i64 2, label %_RNvXs_NtNtCs1eA6bChxBZF_5bytes3buf5chainINtB4_5ChainQINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorNtNtB8_9bytes_mut8BytesMutEQINtNtNtNtCskxN0Kp1MEon_2h25proto7streams10prioritize11PrioritizedNtNtB8_5bytes5BytesEENtNtB6_8buf_impl3Buf7advanceCskeugdADtBsi_12pingora_core.exit
    i64 0, label %bb.h
  ]

bb.f:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %bb.k

bb.g:                                             ; preds = %_RNvXs_NtNtCs1eA6bChxBZF_5bytes3buf5chainINtB4_5ChainQINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorNtNtB8_9bytes_mut8BytesMutEQINtNtNtNtCskxN0Kp1MEon_2h25proto7streams10prioritize11PrioritizedNtNtB8_5bytes5BytesEENtNtB6_8buf_impl3Buf5chunkCskeugdADtBsi_12pingora_core.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.u) ]
  br label %_RNvXs_NtNtCs1eA6bChxBZF_5bytes3buf5chainINtB4_5ChainQINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorNtNtB8_9bytes_mut8BytesMutEQINtNtNtNtCskxN0Kp1MEon_2h25proto7streams10prioritize11PrioritizedNtNtB8_5bytes5BytesEENtNtB6_8buf_impl3Buf7advanceCskeugdADtBsi_12pingora_core.exit

bb.h:                                             ; preds = %_RNvXs_NtNtCs1eA6bChxBZF_5bytes3buf5chainINtB4_5ChainQINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorNtNtB8_9bytes_mut8BytesMutEQINtNtNtNtCskxN0Kp1MEon_2h25proto7streams10prioritize11PrioritizedNtNtB8_5bytes5BytesEENtNtB6_8buf_impl3Buf5chunkCskeugdADtBsi_12pingora_core.exit, %bb.r
  %.sroa.016.0.in = phi ptr [ %i.ax, %bb.r ], [ %i.u, %_RNvXs_NtNtCs1eA6bChxBZF_5bytes3buf5chainINtB4_5ChainQINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorNtNtB8_9bytes_mut8BytesMutEQINtNtNtNtCskxN0Kp1MEon_2h25proto7streams10prioritize11PrioritizedNtNtB8_5bytes5BytesEENtNtB6_8buf_impl3Buf5chunkCskeugdADtBsi_12pingora_core.exit ] ; 3 uses
  %.sroa.016.0 = ptrtoint ptr %.sroa.016.0.in to i64 ; 4 uses
  %.val1.i.i.i = load i64, ptr %i.c, align 8, !alias.scope !402, !noundef !7 ; 2 uses
  %i.v = load i64, ptr %i.d, align 8, !alias.scope !402, !noundef !7 ; 4 uses
  %i.w = call i64 @llvm.usub.sat.i64(i64 %.val1.i.i.i, i64 %i.v) ; 3 uses
  %.not1.i = icmp ugt i64 %.val1.i.i.i, %i.v
  br i1 %.not1.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_RNvXNtNtCs1eA6bChxBZF_5bytes3buf8buf_implQINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorNtNtB6_9bytes_mut8BytesMutENtB2_3Buf7advanceCskeugdADtBsi_12pingora_core.exit.i, %bb.h
  %.sroa.0.0.i26 = phi i64 [ %.sroa.016.0, %bb.h ], [ %i.y, %_RNvXNtNtCs1eA6bChxBZF_5bytes3buf8buf_implQINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorNtNtB6_9bytes_mut8BytesMutENtB2_3Buf7advanceCskeugdADtBsi_12pingora_core.exit.i ]
  call void @_RNvXs_NtNtNtCskxN0Kp1MEon_2h25proto7streams10prioritizeINtB4_11PrioritizedNtNtCs1eA6bChxBZF_5bytes5bytes5BytesENtNtNtB1e_3buf8buf_impl3Buf7advanceCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %.val19, i64 noundef %.sroa.0.0.i26)
  br label %_RNvXs_NtNtCs1eA6bChxBZF_5bytes3buf5chainINtB4_5ChainQINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorNtNtB8_9bytes_mut8BytesMutEQINtNtNtNtCskxN0Kp1MEon_2h25proto7streams10prioritize11PrioritizedNtNtB8_5bytes5BytesEENtNtB6_8buf_impl3Buf7advanceCskeugdADtBsi_12pingora_core.exit

bb.j:                                             ; preds = %bb.h
  %.not.i = icmp ult i64 %i.w, %.sroa.016.0
  br i1 %.not.i, label %_RNvXNtNtCs1eA6bChxBZF_5bytes3buf8buf_implQINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorNtNtB6_9bytes_mut8BytesMutENtB2_3Buf7advanceCskeugdADtBsi_12pingora_core.exit.i, label %_RNvXNtNtCs1eA6bChxBZF_5bytes3buf8buf_implQINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorNtNtB6_9bytes_mut8BytesMutENtB2_3Buf7advanceCskeugdADtBsi_12pingora_core.exit9.i

_RNvXNtNtCs1eA6bChxBZF_5bytes3buf8buf_implQINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorNtNtB6_9bytes_mut8BytesMutENtB2_3Buf7advanceCskeugdADtBsi_12pingora_core.exit.i: ; preds = %bb.j
  %i.x = add i64 %i.w, %i.v
  store i64 %i.x, ptr %i.d, align 8, !alias.scope !403
  %i.y = sub nuw i64 %.sroa.016.0, %i.w
  br label %bb.i

_RNvXNtNtCs1eA6bChxBZF_5bytes3buf8buf_implQINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorNtNtB6_9bytes_mut8BytesMutENtB2_3Buf7advanceCskeugdADtBsi_12pingora_core.exit9.i: ; preds = %bb.j
  %i.z = add i64 %i.v, %.sroa.016.0
  store i64 %i.z, ptr %i.d, align 8, !alias.scope !404
  br label %_RNvXs_NtNtCs1eA6bChxBZF_5bytes3buf5chainINtB4_5ChainQINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorNtNtB8_9bytes_mut8BytesMutEQINtNtNtNtCskxN0Kp1MEon_2h25proto7streams10prioritize11PrioritizedNtNtB8_5bytes5BytesEENtNtB6_8buf_impl3Buf7advanceCskeugdADtBsi_12pingora_core.exit

bb.k:                                             ; preds = %bb.k, %bb.f
  %i.aa = phi i64 [ 0, %bb.f ], [ %i.am, %bb.k ]  ; 5 uses
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.aa ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store i64 0, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.aa ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store ptr inttoptr (i64 1 to ptr), ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  store i64 0, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.aa ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  store ptr inttoptr (i64 1 to ptr), ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  store i64 0, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.aa ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 48
  store ptr inttoptr (i64 1 to ptr), ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 56
  store i64 0, ptr %i.al, align 8
  %i.am = add nuw nsw i64 %i.aa, 4                ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.am, 64
  br i1 %exitcond.not.3, label %bb.l, label %bb.k

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.experimental.noalias.scope.decl(metadata !405)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !406)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !407)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !408)
  %.val.i.i.i27 = load i64, ptr %i.c, align 8, !alias.scope !409, !noalias !410, !noundef !7 ; 2 uses
  %.val1.i.i.i28 = load i64, ptr %i.d, align 8, !alias.scope !409, !noalias !410, !noundef !7 ; 3 uses
  %i.an = icmp ugt i64 %.val.i.i.i27, %.val1.i.i.i28
  br i1 %i.an, label %bb.m, label %_RNvXs_NtNtCs1eA6bChxBZF_5bytes3buf5chainINtB4_5ChainQINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorNtNtB8_9bytes_mut8BytesMutEQINtNtNtNtCskxN0Kp1MEon_2h25proto7streams10prioritize11PrioritizedNtNtB8_5bytes5BytesEENtNtB6_8buf_impl3Buf15chunks_vectoredCskeugdADtBsi_12pingora_core.exit

bb.m:                                             ; preds = %bb.l
  %.val.i.i.i.i = load ptr, ptr %.val, align 8, !alias.scope !411, !noalias !410, !nonnull !7, !noundef !7
  %i.ao = sub nuw i64 %.val.i.i.i27, %.val1.i.i.i28
  %i.ap = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %.val1.i.i.i28
  store ptr %i.ap, ptr %i.a, align 8, !alias.scope !410, !noalias !407
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.ao, ptr %i.aq, align 8, !alias.scope !410, !noalias !407
  br label %_RNvXs_NtNtCs1eA6bChxBZF_5bytes3buf5chainINtB4_5ChainQINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorNtNtB8_9bytes_mut8BytesMutEQINtNtNtNtCskxN0Kp1MEon_2h25proto7streams10prioritize11PrioritizedNtNtB8_5bytes5BytesEENtNtB6_8buf_impl3Buf15chunks_vectoredCskeugdADtBsi_12pingora_core.exit

_RNvXs_NtNtCs1eA6bChxBZF_5bytes3buf5chainINtB4_5ChainQINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorNtNtB8_9bytes_mut8BytesMutEQINtNtNtNtCskxN0Kp1MEon_2h25proto7streams10prioritize11PrioritizedNtNtB8_5bytes5BytesEENtNtB6_8buf_impl3Buf15chunks_vectoredCskeugdADtBsi_12pingora_core.exit: ; preds = %bb.l, %bb.m
  %.sroa.0.0.i.i.i.sroa.phi = phi ptr [ %.sroa.0.0.i.i.i.sroa.gep, %bb.m ], [ %i.a, %bb.l ]
  %.sroa.0.0.i.i.i = phi i64 [ 1, %bb.m ], [ 0, %bb.l ] ; 2 uses
  %i.ar = sub nuw nsw i64 64, %.sroa.0.0.i.i.i
  %i.as = call noundef i64 @_RNvXs_NtNtNtCskxN0Kp1MEon_2h25proto7streams10prioritizeINtB4_11PrioritizedNtNtCs1eA6bChxBZF_5bytes5bytes5BytesENtNtNtB1e_3buf8buf_impl3Buf15chunks_vectoredCskeugdADtBsi_12pingora_core(ptr noundef nonnull align 8 %.val19, ptr noalias nofree noundef nonnull align 8 %.sroa.0.0.i.i.i.sroa.phi, i64 noundef range(i64 0, 65) %i.ar)
  %i.at = add i64 %i.as, %.sroa.0.0.i.i.i         ; 3 uses
  %i.au = icmp ult i64 %i.at, 65
  br i1 %i.au, label %bb.o, label %bb.n, !prof !412

bb.n:                                             ; preds = %_RNvXs_NtNtCs1eA6bChxBZF_5bytes3buf5chainINtB4_5ChainQINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorNtNtB8_9bytes_mut8BytesMutEQINtNtNtNtCskxN0Kp1MEon_2h25proto7streams10prioritize11PrioritizedNtNtB8_5bytes5BytesEENtNtB6_8buf_impl3Buf15chunks_vectoredCskeugdADtBsi_12pingora_core.exit
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.at, i64 noundef 64, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #24
  unreachable

bb.o:                                             ; preds = %_RNvXs_NtNtCs1eA6bChxBZF_5bytes3buf5chainINtB4_5ChainQINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorNtNtB8_9bytes_mut8BytesMutEQINtNtNtNtCskxN0Kp1MEon_2h25proto7streams10prioritize11PrioritizedNtNtB8_5bytes5BytesEENtNtB6_8buf_impl3Buf15chunks_vectoredCskeugdADtBsi_12pingora_core.exit
  %i.av = call { i64, ptr } @_RNvXNtNtCs2awuzAz5vY4_5tokio2io11async_writeINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCskeugdADtBsi_12pingora_core9protocols2IOEL_ENtB2_10AsyncWrite19poll_write_vectoredB1k_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.a, i64 noundef %i.at) ; 2 uses
  %i.aw = extractvalue { i64, ptr } %i.av, 0
  %i.ax = extractvalue { i64, ptr } %i.av, 1      ; 3 uses
  switch i64 %i.aw, label %bb.q [
    i64 2, label %bb.p
    i64 0, label %bb.r
  ]

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RNvXs_NtNtCs1eA6bChxBZF_5bytes3buf5chainINtB4_5ChainQINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorNtNtB8_9bytes_mut8BytesMutEQINtNtNtNtCskxN0Kp1MEon_2h25proto7streams10prioritize11PrioritizedNtNtB8_5bytes5BytesEENtNtB6_8buf_impl3Buf7advanceCskeugdADtBsi_12pingora_core.exit

bb.q:                                             ; preds = %bb.o
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ax) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RNvXs_NtNtCs1eA6bChxBZF_5bytes3buf5chainINtB4_5ChainQINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorNtNtB8_9bytes_mut8BytesMutEQINtNtNtNtCskxN0Kp1MEon_2h25proto7streams10prioritize11PrioritizedNtNtB8_5bytes5BytesEENtNtB6_8buf_impl3Buf7advanceCskeugdADtBsi_12pingora_core.exit

bb.r:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.h
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RINvNtNtCs1u7m7dv2nU3_10tokio_util4util8poll_buf14poll_write_bufINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCskeugdADtBsi_12pingora_core9protocols2IOEL_EINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorNtNtCs1eA6bChxBZF_5bytes9bytes_mut8BytesMutEEB1E_(ptr noalias nofree noundef align 8 dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1, ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [1024 x i8], align 8              ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val = load i64, ptr %i.c, align 8, !alias.scope !424, !noundef !7 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %.val19 = load i64, ptr %i.d, align 8, !alias.scope !424, !noundef !7 ; 7 uses
  %i.e = icmp ugt i64 %.val, %.val19
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_RNvXNtNtCs2awuzAz5vY4_5tokio2io11async_writeINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCskeugdADtBsi_12pingora_core9protocols2IOEL_ENtB2_10AsyncWrite17is_write_vectoredB1k_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %0)
  br i1 %i.f, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.j, %bb.k, %bb.f, %bb.d, %bb.a, %_RNvXs1_NtNtCs1eA6bChxBZF_5bytes3buf8buf_implINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorNtNtB9_9bytes_mut8BytesMutENtB5_3Buf7advanceCskeugdADtBsi_12pingora_core.exit
  %.sroa.7.0 = phi ptr [ undef, %bb.d ], [ %.sroa.016.0.in, %_RNvXs1_NtNtCs1eA6bChxBZF_5bytes3buf8buf_implINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorNtNtB9_9bytes_mut8BytesMutENtB5_3Buf7advanceCskeugdADtBsi_12pingora_core.exit ], [ null, %bb.a ], [ %i.m, %bb.f ], [ undef, %bb.j ], [ %i.ai, %bb.k ]
  %.sroa.0.0 = phi i64 [ %i.l, %bb.d ], [ 0, %_RNvXs1_NtNtCs1eA6bChxBZF_5bytes3buf8buf_implINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorNtNtB9_9bytes_mut8BytesMutENtB5_3Buf7advanceCskeugdADtBsi_12pingora_core.exit ], [ 0, %bb.a ], [ 1, %bb.f ], [ 2, %bb.j ], [ 1, %bb.k ]
  %i.g = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.h = insertvalue { i64, ptr } %i.g, ptr %.sroa.7.0, 1
  ret { i64, ptr } %i.h

bb.d:                                             ; preds = %bb.b
  %.val.i = load ptr, ptr %2, align 8, !alias.scope !425, !nonnull !7, !noundef !7
  %i.i = sub nuw i64 %.val, %.val19
  %i.j = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.val19
  %i.k = tail call { i64, ptr } @_RNvXNtNtCs2awuzAz5vY4_5tokio2io11async_writeINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCskeugdADtBsi_12pingora_core9protocols2IOEL_ENtB2_10AsyncWrite10poll_writeB1k_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.j, i64 noundef %i.i) ; 2 uses
  %i.l = extractvalue { i64, ptr } %i.k, 0        ; 2 uses
  %i.m = extractvalue { i64, ptr } %i.k, 1        ; 3 uses
  switch i64 %i.l, label %bb.f [
    i64 2, label %bb.c
    i64 0, label %bb.g
  ]

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  br label %bb.i

bb.f:                                             ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.m) ]
  br label %bb.c

bb.g:                                             ; preds = %bb.d, %bb.l
  %.sroa.016.0.in = phi ptr [ %i.ai, %bb.l ], [ %i.m, %bb.d ] ; 2 uses
  %.sroa.016.0 = ptrtoint ptr %.sroa.016.0.in to i64 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !426)
  %3 = call i64 @llvm.usub.sat.i64(i64 %.val, i64 %.val19) ; 2 uses
  %i.n = icmp ult i64 %3, %.sroa.016.0
  br i1 %i.n, label %bb.h, label %_RNvXs1_NtNtCs1eA6bChxBZF_5bytes3buf8buf_implINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorNtNtB9_9bytes_mut8BytesMutENtB5_3Buf7advanceCskeugdADtBsi_12pingora_core.exit, !prof !10

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !426
  store i64 %.sroa.016.0, ptr %i.a, align 8, !noalias !426
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %3, ptr %i.o, align 8, !noalias !426
  call void @_RNvCs1eA6bChxBZF_5bytes13panic_advance(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a) #25, !noalias !426
  unreachable

_RNvXs1_NtNtCs1eA6bChxBZF_5bytes3buf8buf_implINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorNtNtB9_9bytes_mut8BytesMutENtB5_3Buf7advanceCskeugdADtBsi_12pingora_core.exit: ; preds = %bb.g
  %i.p = add i64 %.val19, %.sroa.016.0
  store i64 %i.p, ptr %i.d, align 8, !alias.scope !426
  br label %bb.c

bb.i:                                             ; preds = %bb.i, %bb.e
  %i.q = phi i64 [ 0, %bb.e ], [ %i.ac, %bb.i ]   ; 5 uses
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.q ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 0, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.q ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store ptr inttoptr (i64 1 to ptr), ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  store i64 0, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.q ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  store ptr inttoptr (i64 1 to ptr), ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  store i64 0, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.q ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  store ptr inttoptr (i64 1 to ptr), ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 56
  store i64 0, ptr %i.ab, align 8
  %i.ac = add nuw nsw i64 %i.q, 4                 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.ac, 64
  br i1 %exitcond.not.3, label %_RNvYINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorNtNtCs1eA6bChxBZF_5bytes9bytes_mut8BytesMutENtNtNtBN_3buf8buf_impl3Buf15chunks_vectoredCskeugdADtBsi_12pingora_core.exit, label %bb.i

_RNvYINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorNtNtCs1eA6bChxBZF_5bytes9bytes_mut8BytesMutENtNtNtBN_3buf8buf_impl3Buf15chunks_vectoredCskeugdADtBsi_12pingora_core.exit: ; preds = %bb.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !427)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !428)
  %.val.i.i = load ptr, ptr %2, align 8, !alias.scope !429, !noalias !428, !nonnull !7, !noundef !7
  %i.ad = sub nuw i64 %.val, %.val19
  %i.ae = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.val19
  store ptr %i.ae, ptr %i.b, align 8, !alias.scope !428, !noalias !427
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.ad, ptr %i.af, align 8, !alias.scope !428, !noalias !427
  %i.ag = call { i64, ptr } @_RNvXNtNtCs2awuzAz5vY4_5tokio2io11async_writeINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCskeugdADtBsi_12pingora_core9protocols2IOEL_ENtB2_10AsyncWrite19poll_write_vectoredB1k_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.b, i64 noundef 1) ; 2 uses
  %i.ah = extractvalue { i64, ptr } %i.ag, 0
  %i.ai = extractvalue { i64, ptr } %i.ag, 1      ; 3 uses
  switch i64 %i.ah, label %bb.k [
    i64 2, label %bb.j
    i64 0, label %bb.l
  ]

bb.j:                                             ; preds = %_RNvYINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorNtNtCs1eA6bChxBZF_5bytes9bytes_mut8BytesMutENtNtNtBN_3buf8buf_impl3Buf15chunks_vectoredCskeugdADtBsi_12pingora_core.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.c

bb.k:                                             ; preds = %_RNvYINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorNtNtCs1eA6bChxBZF_5bytes9bytes_mut8BytesMutENtNtNtBN_3buf8buf_impl3Buf15chunks_vectoredCskeugdADtBsi_12pingora_core.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ai) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.c

bb.l:                                             ; preds = %_RNvYINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorNtNtCs1eA6bChxBZF_5bytes9bytes_mut8BytesMutENtNtNtBN_3buf8buf_impl3Buf15chunks_vectoredCskeugdADtBsi_12pingora_core.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.g
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs87coOwG4J0B_6flate22gz5write10gz_encoderINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskeugdADtBsi_12pingora_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([128 x i8]) align 8 captures(none) dereferenceable(128) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2, i32 noundef %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [72 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  invoke void @_RNvMs_NtCs87coOwG4J0B_6flate23memNtB4_8Compress3new(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, i32 noundef %3, i1 noundef zeroext false)
          to label %bb.b unwind label %bb.m

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !434)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !435)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !436
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !436
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !437
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !436
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 32768, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.d unwind label %bb.c, !noalias !436

bb.c:                                             ; preds = %bb.e, %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs87coOwG4J0B_6flate23mem8CompressECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #23
          to label %bb.h unwind label %bb.g, !noalias !436

bb.d:                                             ; preds = %bb.b
  %i.i = load i64, ptr %i.a, align 8, !range !16, !noalias !436, !noundef !7
  %i.j = trunc nuw i64 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.l = load i64, ptr %i.k, align 8, !range !23, !noalias !436, !noundef !7 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.j, label %bb.e, label %bb.i, !prof !10

bb.e:                                             ; preds = %bb.d
  %i.n = load i64, ptr %i.m, align 8, !noalias !436
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.l, i64 %i.n) #25
          to label %bb.f unwind label %bb.c, !noalias !436

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %bb.h, %bb.c
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21, !noalias !436
  unreachable

bb.h:                                             ; preds = %bb.c
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #23
          to label %.body unwind label %bb.g, !noalias !436

bb.i:                                             ; preds = %bb.d
  %i.p = load ptr, ptr %i.m, align 8, !noalias !436, !nonnull !7, !noundef !7
  %i.q = icmp samesign ugt i64 %i.l, 32767
  tail call void @llvm.assume(i1 %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !436
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.e, i64 24, i1 false), !alias.scope !438, !noalias !439
  store i64 %i.l, ptr %i.g, align 8, !alias.scope !434, !noalias !440
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.p, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !434, !noalias !440
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !434, !noalias !440
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !436
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !436
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke void @_RNvMNtCs87coOwG4J0B_6flate23crcNtB2_3Crc3new(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d)
          to label %bb.k unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs87coOwG4J0B_6flate23zio6WriterINtNtCsexYYUdYSQU6_5alloc3vec3VechENtNtBG_3mem8CompressEECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef align 8 dereferenceable(72) %i.g) #23
          to label %.body unwind label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.g, i64 72, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 0, ptr %i.w, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret void

bb.l:                                             ; preds = %bb.m, %.body, %bb.j
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21
  unreachable

.body:                                            ; preds = %bb.h, %bb.m, %bb.j
  %.pn = phi { ptr, i32 } [ %i.t, %bb.j ], [ %i.y, %bb.m ], [ %i.h, %bb.h ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #23
          to label %bb.n unwind label %bb.l

bb.m:                                             ; preds = %bb.a
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f) #23
          to label %.body unwind label %bb.l

bb.n:                                             ; preds = %.body
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc14block_splitter16BrotliSplitBlockNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull %0, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %1, i64 noundef range(i64 0, 576460752303423488) %2, i64 noundef %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef range(i64 0, -9223372036854775808) %5, i64 noundef %6, i64 noundef %7, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(112) %8, ptr noalias nofree noundef nonnull %9, ptr noalias nofree noundef nonnull %10, ptr noalias nofree noundef nonnull %11, ptr noalias nofree noundef align 8 captures(none) dereferenceable(48) %12, ptr noalias nofree noundef align 8 captures(none) dereferenceable(48) %13, ptr noalias nofree noundef align 8 captures(none) dereferenceable(48) %14) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 4                ; 12 uses
  %i.b = alloca [32 x i8], align 4                ; 4 uses
  %i.c = alloca [2192 x i8], align 8              ; 12 uses
  %i.d = alloca [2192 x i8], align 8              ; 12 uses
  %i.e = alloca [2192 x i8], align 8              ; 8 uses
  %i.f = alloca [256 x i8], align 4               ; 5 uses
  %i.g = alloca [256 x i8], align 4               ; 6 uses
  %i.h = alloca [256 x i8], align 4               ; 6 uses
  %i.i = alloca [256 x i8], align 4               ; 6 uses
  %i.j = alloca [2192 x i8], align 8              ; 8 uses
  %i.k = alloca [32 x i8], align 4                ; 12 uses
  %i.l = alloca [32 x i8], align 4                ; 4 uses
  %i.m = alloca [2832 x i8], align 8              ; 12 uses
  %i.n = alloca [2832 x i8], align 8              ; 12 uses
  %i.o = alloca [2832 x i8], align 8              ; 8 uses
  %i.p = alloca [256 x i8], align 4               ; 5 uses
  %i.q = alloca [256 x i8], align 4               ; 6 uses
  %i.r = alloca [256 x i8], align 4               ; 6 uses
  %i.s = alloca [256 x i8], align 4               ; 6 uses
  %i.t = alloca [2832 x i8], align 8              ; 8 uses
  %i.u = alloca [32 x i8], align 4                ; 12 uses
  %i.v = alloca [32 x i8], align 4                ; 4 uses
  %i.w = alloca [1040 x i8], align 8              ; 12 uses
  %i.x = alloca [1040 x i8], align 8              ; 12 uses
  %i.y = alloca [1040 x i8], align 8              ; 8 uses
  %i.z = alloca [256 x i8], align 4               ; 5 uses
  %i.aa = alloca [256 x i8], align 4              ; 6 uses
  %i.ab = alloca [256 x i8], align 4              ; 6 uses
  %i.ac = alloca [256 x i8], align 4              ; 6 uses
  %i.ad = alloca [1040 x i8], align 8             ; 8 uses
  %.not = icmp eq i64 %3, 0                       ; 3 uses
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.ae = add i64 %3, -1                          ; 2 uses
  %.not3678.not = icmp ugt i64 %2, %i.ae
  br i1 %.not3678.not, label %.lr.ph.preheader6889, label %bb.abi

.lr.ph.preheader6889:                             ; preds = %.lr.ph.preheader
  %xtraiter = and i64 %3, 3                       ; 3 uses
  %i.af = icmp ult i64 %i.ae, 3
  br i1 %i.af, label %.lr.ph.epil.preheader, label %.lr.ph.preheader6889.new

.lr.ph.preheader6889.new:                         ; preds = %.lr.ph.preheader6889
  %unroll_iter = and i64 %3, -4
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader6889.new
  %.sroa.0.02175 = phi i64 [ 0, %.lr.ph.preheader6889.new ], [ %i.ay, %.lr.ph ]
  %.sroa.013.02174 = phi i64 [ 0, %.lr.ph.preheader6889.new ], [ %i.az, %.lr.ph ] ; 5 uses
end_hunk_0
