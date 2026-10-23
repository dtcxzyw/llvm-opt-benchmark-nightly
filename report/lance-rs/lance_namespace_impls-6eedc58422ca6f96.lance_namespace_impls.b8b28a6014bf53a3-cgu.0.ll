Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_namespace_impls-6eedc58422ca6f96.lance_namespace_impls.b8b28a6014bf53a3-cgu.0?download=true
inline.NumInlined: 73518
inline.NumDeleted: 27553
loop-unroll.NumCompletelyUnrolled: 88
loop-unroll.NumRuntimeUnrolled: 193
loop-unroll.NumUnrolled: 285
begin_hunk_0_@_RINvMs3j_NtNtNtCs9KQ7US1M400_11lance_table6format2pb11transactionNtB7_9Operation6encodeINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls:bb.a
  br label %.noexc9.i.i.i

.noexc9.i.i.i:                                    ; preds = %_RNvYINvNtNtCskAO0uQb8M5a_5prost8encoding6uint646encodeINtNtCs40k4W9msRzi_5alloc3vec3VechEEINtNtNtCscI6d9CVNmLh_4core3ops8function2FnTmRyQBQ_EE4callCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i35.i.i
  br i1 %i.akf, label %_RNvYINvNtNtCskAO0uQb8M5a_5prost8encoding7message6encodeNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb11transaction10UInt32ListINtNtCs40k4W9msRzi_5alloc3vec3VechEEINtNtNtCscI6d9CVNmLh_4core3ops8function2FnTmRBR_QB1Z_EE4callCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i, label %bb.bj

bb.bj:                                            ; preds = %.noexc9.i.i.i
  %.val24.i.i.i.i = load ptr, ptr %i.akd, align 8, !noalias !6973 ; 9 uses
  %.val25.i.i.i.i = load i64, ptr %i.ake, align 8, !noalias !6973 ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6994)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6995)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6996)
  %.pre18.i.i.i.i.i39.i.i = load i64, ptr %i.tj, align 8, !alias.scope !6997 ; 3 uses
  %.pre28.i.i.i.i.i40.i.i = load i64, ptr %1, align 8, !range !412, !alias.scope !6997
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6998)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6999)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7000)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7001)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7002)
  %i.amu = icmp eq i64 %.pre28.i.i.i.i.i40.i.i, %.pre18.i.i.i.i.i39.i.i
  br i1 %i.amu, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i.i.i.i.i57.i.i, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i41.i.i, !prof !419

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i.i.i.i.i57.i.i: ; preds = %bb.bj
  tail call fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %.pre18.i.i.i.i.i39.i.i, i64 noundef range(i64 0, -9223372036854775808) 1, i64 noundef 1, i64 noundef 1), !noalias !6774
  %i.amv = load i64, ptr %i.tj, align 8, !alias.scope !7003, !noundef !409
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i41.i.i

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i41.i.i: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i.i.i.i.i57.i.i, %bb.bj
  %.sink1.i6.i.i.i.i.i42.i.i = phi i64 [ %i.amv, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i.i.i.i.i57.i.i ], [ %.pre18.i.i.i.i.i39.i.i, %bb.bj ] ; 3 uses
  %i.amw = icmp sgt i64 %.sink1.i6.i.i.i.i.i42.i.i, -1
  tail call void @llvm.assume(i1 %i.amw)
  %i.amx = load ptr, ptr %i.tk, align 8, !alias.scope !7003, !nonnull !409, !noundef !409 ; 2 uses
  %i.amy = getelementptr inbounds nuw i8, ptr %i.amx, i64 %.sink1.i6.i.i.i.i.i42.i.i
  store i8 18, ptr %i.amy, align 1, !noalias !7004
  %i.amz = add nuw i64 %.sink1.i6.i.i.i.i.i42.i.i, 1 ; 4 uses
  store i64 %i.amz, ptr %i.tj, align 8, !alias.scope !7003
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val24.i.i.i.i) ]
  %i.ana = icmp eq i64 %.val25.i.i.i.i, 0
  br i1 %i.ana, label %_RNvXs1V_NtNtNtCs9KQ7US1M400_11lance_table6format2pb11transactionNtB6_10UInt32ListNtNtCskAO0uQb8M5a_5prost7message7Message11encoded_len.exit.thread.i.i.i.i.i.i, label %.preheader.i.i.i.i26.i.i.i.i.preheader

.preheader.i.i.i.i26.i.i.i.i.preheader:           ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i41.i.i
  %i.anb = add i64 %.val25.i.i.i.i, -1            ; 2 uses
  %xtraiter745 = and i64 %.val25.i.i.i.i, 1
  %i.anc = icmp eq i64 %i.anb, 0
  br i1 %i.anc, label %.preheader.i.i.i.i26.i.i.i.i.epil.preheader, label %.preheader.i.i.i.i26.i.i.i.i.preheader.new

.preheader.i.i.i.i26.i.i.i.i.preheader.new:       ; preds = %.preheader.i.i.i.i26.i.i.i.i.preheader
  %unroll_iter749 = and i64 %.val25.i.i.i.i, -2
  br label %.preheader.i.i.i.i26.i.i.i.i

_RNvXs1V_NtNtNtCs9KQ7US1M400_11lance_table6format2pb11transactionNtB6_10UInt32ListNtNtCskAO0uQb8M5a_5prost7message7Message11encoded_len.exit.thread.i.i.i.i.i.i: ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i41.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7005)
  %.pre28.i.i30.i.i.i.i = load i64, ptr %1, align 8, !range !412, !alias.scope !7006
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7007)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7008)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7009)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7010)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7011)
  %i.and = icmp eq i64 %.pre28.i.i30.i.i.i.i, %i.amz
  br i1 %i.and, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i.i32.i.i.i.i, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i55.i.i, !prof !419

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i.i32.i.i.i.i: ; preds = %_RNvXs1V_NtNtNtCs9KQ7US1M400_11lance_table6format2pb11transactionNtB6_10UInt32ListNtNtCskAO0uQb8M5a_5prost7message7Message11encoded_len.exit.thread.i.i.i.i.i.i
  tail call fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.amz, i64 noundef range(i64 0, -9223372036854775808) 1, i64 noundef 1, i64 noundef 1), !noalias !6774
  %i.ane = load i64, ptr %i.tj, align 8, !alias.scope !7012, !noundef !409
  %.pre.i.i.i56.i.i = load ptr, ptr %i.tk, align 8, !alias.scope !7012
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i55.i.i

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i55.i.i: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i.i32.i.i.i.i, %_RNvXs1V_NtNtNtCs9KQ7US1M400_11lance_table6format2pb11transactionNtB6_10UInt32ListNtNtCskAO0uQb8M5a_5prost7message7Message11encoded_len.exit.thread.i.i.i.i.i.i
  %i.anf = phi ptr [ %.pre.i.i.i56.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i.i32.i.i.i.i ], [ %i.amx, %_RNvXs1V_NtNtNtCs9KQ7US1M400_11lance_table6format2pb11transactionNtB6_10UInt32ListNtNtCskAO0uQb8M5a_5prost7message7Message11encoded_len.exit.thread.i.i.i.i.i.i ]
  %.sink1.i6.i.i31.i.i.i.i = phi i64 [ %i.ane, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i.i32.i.i.i.i ], [ %i.amz, %_RNvXs1V_NtNtNtCs9KQ7US1M400_11lance_table6format2pb11transactionNtB6_10UInt32ListNtNtCskAO0uQb8M5a_5prost7message7Message11encoded_len.exit.thread.i.i.i.i.i.i ] ; 3 uses
  %i.ang = icmp sgt i64 %.sink1.i6.i.i31.i.i.i.i, -1
  tail call void @llvm.assume(i1 %i.ang)
  %i.anh = getelementptr inbounds nuw i8, ptr %i.anf, i64 %.sink1.i6.i.i31.i.i.i.i
  store i8 0, ptr %i.anh, align 1, !noalias !7013
  %i.ani = add nuw i64 %.sink1.i6.i.i31.i.i.i.i, 1
  store i64 %i.ani, ptr %i.tj, align 8, !alias.scope !7012
  br label %_RNvYINvNtNtCskAO0uQb8M5a_5prost8encoding7message6encodeNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb11transaction10UInt32ListINtNtCs40k4W9msRzi_5alloc3vec3VechEEINtNtNtCscI6d9CVNmLh_4core3ops8function2FnTmRBR_QB1Z_EE4callCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i

.preheader.i.i.i.i26.i.i.i.i:                     ; preds = %.preheader.i.i.i.i26.i.i.i.i, %.preheader.i.i.i.i26.i.i.i.i.preheader.new
  %.sroa.04.0.i.i.i.i.i27.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i26.i.i.i.i.preheader.new ], [ %i.aoc, %.preheader.i.i.i.i26.i.i.i.i ] ; 3 uses
  %.sroa.02.0.i.i.i.i.i28.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i26.i.i.i.i.preheader.new ], [ %i.aob, %.preheader.i.i.i.i26.i.i.i.i ]
  %niter750 = phi i64 [ 0, %.preheader.i.i.i.i26.i.i.i.i.preheader.new ], [ %niter750.next.1, %.preheader.i.i.i.i26.i.i.i.i ]
  %i.anj = getelementptr inbounds nuw [4 x i8], ptr %.val24.i.i.i.i, i64 %.sroa.04.0.i.i.i.i.i27.i.i.i.i
  %.val.i.i.i.i.i29.i.i.i.i = load i32, ptr %i.anj, align 4, !alias.scope !7014, !noalias !7015, !noundef !409
  %i.ank = or i32 %.val.i.i.i.i.i29.i.i.i.i, 1
  %i.anl = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.ank, i1 true)
  %i.anm = xor i32 %i.anl, 31
  %i.ann = mul nuw nsw i32 %i.anm, 9
  %i.ano = add nuw nsw i32 %i.ann, 73
  %i.anp = lshr i32 %i.ano, 6
  %i.anq = zext nneg i32 %i.anp to i64
  %i.anr = add i64 %.sroa.02.0.i.i.i.i.i28.i.i.i.i, %i.anq
  %i.ans = getelementptr inbounds nuw [4 x i8], ptr %.val24.i.i.i.i, i64 %.sroa.04.0.i.i.i.i.i27.i.i.i.i
  %i.ant = getelementptr inbounds nuw i8, ptr %i.ans, i64 4
  %.val.i.i.i.i.i29.i.i.i.i.1 = load i32, ptr %i.ant, align 4, !alias.scope !7014, !noalias !7015, !noundef !409
  %i.anu = or i32 %.val.i.i.i.i.i29.i.i.i.i.1, 1
  %i.anv = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.anu, i1 true)
  %i.anw = xor i32 %i.anv, 31
  %i.anx = mul nuw nsw i32 %i.anw, 9
  %i.any = add nuw nsw i32 %i.anx, 73
  %i.anz = lshr i32 %i.any, 6
  %i.aoa = zext nneg i32 %i.anz to i64
  %i.aob = add i64 %i.anr, %i.aoa                 ; 3 uses
  %i.aoc = add nuw nsw i64 %.sroa.04.0.i.i.i.i.i27.i.i.i.i, 2 ; 2 uses
  %niter750.next.1 = add nuw i64 %niter750, 2     ; 2 uses
  %niter750.ncmp.1 = icmp eq i64 %niter750.next.1, %unroll_iter749
  br i1 %niter750.ncmp.1, label %.noexc12.i.i.i.unr-lcssa, label %.preheader.i.i.i.i26.i.i.i.i

.noexc12.i.i.i.unr-lcssa:                         ; preds = %.preheader.i.i.i.i26.i.i.i.i
  %lcmp.mod746.not = icmp eq i64 %xtraiter745, 0
  br i1 %lcmp.mod746.not, label %.noexc12.i.i.i, label %.preheader.i.i.i.i26.i.i.i.i.epil.preheader

.preheader.i.i.i.i26.i.i.i.i.epil.preheader:      ; preds = %.noexc12.i.i.i.unr-lcssa, %.preheader.i.i.i.i26.i.i.i.i.preheader
  %.sroa.04.0.i.i.i.i.i27.i.i.i.i.epil.init = phi i64 [ 0, %.preheader.i.i.i.i26.i.i.i.i.preheader ], [ %i.aoc, %.noexc12.i.i.i.unr-lcssa ]
  %.sroa.02.0.i.i.i.i.i28.i.i.i.i.epil.init = phi i64 [ 0, %.preheader.i.i.i.i26.i.i.i.i.preheader ], [ %i.aob, %.noexc12.i.i.i.unr-lcssa ]
  %lcmp.mod748 = trunc i64 %.val25.i.i.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod748)
  %i.aod = getelementptr inbounds nuw [4 x i8], ptr %.val24.i.i.i.i, i64 %.sroa.04.0.i.i.i.i.i27.i.i.i.i.epil.init
  %.val.i.i.i.i.i29.i.i.i.i.epil = load i32, ptr %i.aod, align 4, !alias.scope !7014, !noalias !7015, !noundef !409
  %i.aoe = or i32 %.val.i.i.i.i.i29.i.i.i.i.epil, 1
  %i.aof = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.aoe, i1 true)
  %i.aog = xor i32 %i.aof, 31
  %i.aoh = mul nuw nsw i32 %i.aog, 9
  %i.aoi = add nuw nsw i32 %i.aoh, 73
  %i.aoj = lshr i32 %i.aoi, 6
  %i.aok = zext nneg i32 %i.aoj to i64
  %i.aol = add i64 %.sroa.02.0.i.i.i.i.i28.i.i.i.i.epil.init, %i.aok
  br label %.noexc12.i.i.i

.noexc12.i.i.i:                                   ; preds = %.noexc12.i.i.i.unr-lcssa, %.preheader.i.i.i.i26.i.i.i.i.epil.preheader
  %.lcssa677 = phi i64 [ %i.aob, %.noexc12.i.i.i.unr-lcssa ], [ %i.aol, %.preheader.i.i.i.i26.i.i.i.i.epil.preheader ] ; 2 uses
  %i.aom = or i64 %.lcssa677, 1
  %i.aon = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.aom, i1 true)
  %i.aoo = xor i64 %i.aon, 63
  %i.aop = mul nuw nsw i64 %i.aoo, 9
  %i.aoq = add nuw nsw i64 %i.aop, 73
  %i.aor = lshr i64 %i.aoq, 6
  %i.aos = add i64 %.lcssa677, 1
  %i.aot = add i64 %i.aos, %i.aor
  tail call fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls(i64 noundef %i.aot, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !6774
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7016)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7017)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7018)
  %.pre18.i.i.i.i.i.i43.i.i = load i64, ptr %i.tj, align 8, !alias.scope !7019, !noalias !7017 ; 3 uses
  %.pre28.i.i.i.i.i.i44.i.i = load i64, ptr %1, align 8, !range !412, !alias.scope !7019, !noalias !7017
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7020), !noalias !7017
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7021), !noalias !7017
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7022), !noalias !7017
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7023), !noalias !7017
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7024), !noalias !7017
  %i.aou = icmp eq i64 %.pre28.i.i.i.i.i.i44.i.i, %.pre18.i.i.i.i.i.i43.i.i
  br i1 %i.aou, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i.i.i.i.i.i54.i.i, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i45.i.i, !prof !419

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i.i.i.i.i.i54.i.i: ; preds = %.noexc12.i.i.i
  tail call fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %.pre18.i.i.i.i.i.i43.i.i, i64 noundef range(i64 0, -9223372036854775808) 1, i64 noundef 1, i64 noundef 1), !noalias !6774
  %i.aov = load i64, ptr %i.tj, align 8, !alias.scope !7025, !noalias !7017, !noundef !409
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i45.i.i

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i45.i.i: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i.i.i.i.i.i54.i.i, %.noexc12.i.i.i
  %.sink1.i6.i.i.i.i.i.i46.i.i = phi i64 [ %i.aov, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i.i.i.i.i.i54.i.i ], [ %.pre18.i.i.i.i.i.i43.i.i, %.noexc12.i.i.i ] ; 3 uses
  %i.aow = icmp sgt i64 %.sink1.i6.i.i.i.i.i.i46.i.i, -1
  tail call void @llvm.assume(i1 %i.aow), !noalias !7017
  %i.aox = load ptr, ptr %i.tk, align 8, !alias.scope !7025, !noalias !7017, !nonnull !409, !noundef !409
  %i.aoy = getelementptr inbounds nuw i8, ptr %i.aox, i64 %.sink1.i6.i.i.i.i.i.i46.i.i
  store i8 10, ptr %i.aoy, align 1, !noalias !7026
  %i.aoz = add nuw i64 %.sink1.i6.i.i.i.i.i.i46.i.i, 1
  store i64 %i.aoz, ptr %i.tj, align 8, !alias.scope !7025, !noalias !7017
  %xtraiter752 = and i64 %.val25.i.i.i.i, 1
  %i.apa = icmp eq i64 %i.anb, 0
  br i1 %i.apa, label %.epil.preheader751, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i45.i.i.new

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i45.i.i.new: ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i45.i.i
  %unroll_iter756 = and i64 %.val25.i.i.i.i, -2
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bk, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i45.i.i.new
  %.sroa.04.0.i.i.i4.i.i.i.i47.i.i = phi i64 [ 0, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i45.i.i.new ], [ %i.apu, %bb.bk ] ; 3 uses
  %.sroa.02.0.i.i.i5.i.i.i.i48.i.i = phi i64 [ 0, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i45.i.i.new ], [ %i.apt, %bb.bk ]
  %niter757 = phi i64 [ 0, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i45.i.i.new ], [ %niter757.next.1, %bb.bk ]
  %i.apb = getelementptr inbounds nuw [4 x i8], ptr %.val24.i.i.i.i, i64 %.sroa.04.0.i.i.i4.i.i.i.i47.i.i
  %.val.i.i.i6.i.i.i.i49.i.i = load i32, ptr %i.apb, align 4, !alias.scope !7017, !noalias !7027, !noundef !409
  %i.apc = or i32 %.val.i.i.i6.i.i.i.i49.i.i, 1
  %i.apd = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.apc, i1 true)
  %i.ape = xor i32 %i.apd, 31
  %i.apf = mul nuw nsw i32 %i.ape, 9
  %i.apg = add nuw nsw i32 %i.apf, 73
  %i.aph = lshr i32 %i.apg, 6
  %i.api = zext nneg i32 %i.aph to i64
  %i.apj = add i64 %.sroa.02.0.i.i.i5.i.i.i.i48.i.i, %i.api
  %i.apk = getelementptr inbounds nuw [4 x i8], ptr %.val24.i.i.i.i, i64 %.sroa.04.0.i.i.i4.i.i.i.i47.i.i
  %i.apl = getelementptr inbounds nuw i8, ptr %i.apk, i64 4
  %.val.i.i.i6.i.i.i.i49.i.i.1 = load i32, ptr %i.apl, align 4, !alias.scope !7017, !noalias !7027, !noundef !409
  %i.apm = or i32 %.val.i.i.i6.i.i.i.i49.i.i.1, 1
  %i.apn = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.apm, i1 true)
  %i.apo = xor i32 %i.apn, 31
  %i.app = mul nuw nsw i32 %i.apo, 9
  %i.apq = add nuw nsw i32 %i.app, 73
  %i.apr = lshr i32 %i.apq, 6
  %i.aps = zext nneg i32 %i.apr to i64
  %i.apt = add i64 %i.apj, %i.aps                 ; 3 uses
  %i.apu = add nuw nsw i64 %.sroa.04.0.i.i.i4.i.i.i.i47.i.i, 2 ; 2 uses
  %niter757.next.1 = add nuw i64 %niter757, 2     ; 2 uses
  %niter757.ncmp.1 = icmp eq i64 %niter757.next.1, %unroll_iter756
  br i1 %niter757.ncmp.1, label %.lr.ph.preheader.i.i.i.i.i.i50.i.i.unr-lcssa, label %bb.bk

.lr.ph.preheader.i.i.i.i.i.i50.i.i.unr-lcssa:     ; preds = %bb.bk
  %lcmp.mod753.not = icmp eq i64 %xtraiter752, 0
  br i1 %lcmp.mod753.not, label %.lr.ph.preheader.i.i.i.i.i.i50.i.i, label %.epil.preheader751

.epil.preheader751:                               ; preds = %.lr.ph.preheader.i.i.i.i.i.i50.i.i.unr-lcssa, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i45.i.i
  %.sroa.04.0.i.i.i4.i.i.i.i47.i.i.epil.init = phi i64 [ 0, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i45.i.i ], [ %i.apu, %.lr.ph.preheader.i.i.i.i.i.i50.i.i.unr-lcssa ]
  %.sroa.02.0.i.i.i5.i.i.i.i48.i.i.epil.init = phi i64 [ 0, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i45.i.i ], [ %i.apt, %.lr.ph.preheader.i.i.i.i.i.i50.i.i.unr-lcssa ]
  %lcmp.mod755 = trunc i64 %.val25.i.i.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod755)
  %i.apv = getelementptr inbounds nuw [4 x i8], ptr %.val24.i.i.i.i, i64 %.sroa.04.0.i.i.i4.i.i.i.i47.i.i.epil.init
  %.val.i.i.i6.i.i.i.i49.i.i.epil = load i32, ptr %i.apv, align 4, !alias.scope !7017, !noalias !7027, !noundef !409
  %i.apw = or i32 %.val.i.i.i6.i.i.i.i49.i.i.epil, 1
  %i.apx = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.apw, i1 true)
  %i.apy = xor i32 %i.apx, 31
  %i.apz = mul nuw nsw i32 %i.apy, 9
  %i.aqa = add nuw nsw i32 %i.apz, 73
  %i.aqb = lshr i32 %i.aqa, 6
  %i.aqc = zext nneg i32 %i.aqb to i64
  %i.aqd = add i64 %.sroa.02.0.i.i.i5.i.i.i.i48.i.i.epil.init, %i.aqc
  br label %.lr.ph.preheader.i.i.i.i.i.i50.i.i

.lr.ph.preheader.i.i.i.i.i.i50.i.i:               ; preds = %.lr.ph.preheader.i.i.i.i.i.i50.i.i.unr-lcssa, %.epil.preheader751
  %.lcssa678 = phi i64 [ %i.apt, %.lr.ph.preheader.i.i.i.i.i.i50.i.i.unr-lcssa ], [ %i.aqd, %.epil.preheader751 ]
  %.idx.i.i.i.i.i.i51.i.i = shl nuw nsw i64 %.val25.i.i.i.i, 2
  %i.aqe = getelementptr inbounds nuw i8, ptr %.val24.i.i.i.i, i64 %.idx.i.i.i.i.i.i51.i.i
  tail call fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls(i64 noundef %.lcssa678, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !6774
  br label %.lr.ph.i.i.i.i.i.i52.i.i

.lr.ph.i.i.i.i.i.i52.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i52.i.i, %.lr.ph.preheader.i.i.i.i.i.i50.i.i
  %.sroa.0.02.i.i.i.i.i.i53.i.i = phi ptr [ %i.aqf, %.lr.ph.i.i.i.i.i.i52.i.i ], [ %.val24.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i50.i.i ] ; 2 uses
  %i.aqf = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i.i.i.i.i.i53.i.i, i64 4 ; 2 uses
  %i.aqg = load i32, ptr %.sroa.0.02.i.i.i.i.i.i53.i.i, align 4, !alias.scope !7017, !noalias !7027, !noundef !409
  %i.aqh = zext i32 %i.aqg to i64
  tail call fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls(i64 noundef %i.aqh, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !6774
  %i.aqi = icmp eq ptr %i.aqf, %i.aqe
  br i1 %i.aqi, label %_RNvYINvNtNtCskAO0uQb8M5a_5prost8encoding7message6encodeNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb11transaction10UInt32ListINtNtCs40k4W9msRzi_5alloc3vec3VechEEINtNtNtCscI6d9CVNmLh_4core3ops8function2FnTmRBR_QB1Z_EE4callCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i52.i.i

_RNvYINvNtNtCskAO0uQb8M5a_5prost8encoding7message6encodeNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb11transaction10UInt32ListINtNtCs40k4W9msRzi_5alloc3vec3VechEEINtNtNtCscI6d9CVNmLh_4core3ops8function2FnTmRBR_QB1Z_EE4callCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i52.i.i, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i55.i.i, %.noexc9.i.i.i
  %i.aqj = icmp eq i64 %i.aka, 0
  br i1 %i.aqj, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding8hash_map6encodeyNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb11transaction10UInt32ListINtNtCs40k4W9msRzi_5alloc3vec3VechEINvNtB4_6uint646encodeB1Y_ENvB2A_11encoded_lenINvNtB4_7message6encodeBQ_B1Y_EINvB3k_11encoded_lenBQ_EECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i, label %bb.bc

_RINvNtNtCskAO0uQb8M5a_5prost8encoding8hash_map6encodeyNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb11transaction10UInt32ListINtNtCs40k4W9msRzi_5alloc3vec3VechEINvNtB4_6uint646encodeB1Y_ENvB2A_11encoded_lenINvNtB4_7message6encodeBQ_B1Y_EINvB3k_11encoded_lenBQ_EECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i: ; preds = %_RNvYINvNtNtCskAO0uQb8M5a_5prost8encoding7message6encodeNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb11transaction10UInt32ListINtNtCs40k4W9msRzi_5alloc3vec3VechEEINtNtNtCscI6d9CVNmLh_4core3ops8function2FnTmRBR_QB1Z_EE4callCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message6encodeNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb11transaction18KeyExistenceFilterINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i
  %i.aqk = getelementptr inbounds nuw i8, ptr %0, i64 264
  %.val10.i.i163 = load ptr, ptr %i.aqk, align 8, !alias.scope !6774 ; 4 uses
  %i.aql = getelementptr inbounds nuw i8, ptr %0, i64 288
  %.val11.i.i = load i64, ptr %i.aql, align 8, !alias.scope !7028, !noundef !409 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7029)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7030)
  %i.aqm = icmp eq i64 %.val11.i.i, 0
  br i1 %i.aqm, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message6encodeNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb11transaction6AppendINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit, label %.lr.ph.i.i60.i.i

.lr.ph.i.i60.i.i:                                 ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding8hash_map6encodeyNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb11transaction10UInt32ListINtNtCs40k4W9msRzi_5alloc3vec3VechEINvNtB4_6uint646encodeB1Y_ENvB2A_11encoded_lenINvNtB4_7message6encodeBQ_B1Y_EINvB3k_11encoded_lenBQ_EECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val10.i.i163) ]
  %.val3.i.i.i.i61.i.i = load <16 x i8>, ptr %.val10.i.i163, align 16, !noalias !7031
  %i.aqn = icmp sgt <16 x i8> %.val3.i.i.i.i61.i.i, splat (i8 -1)
  %i.aqo = bitcast <16 x i1> %i.aqn to i16
  %i.aqp = getelementptr inbounds nuw i8, ptr %.val10.i.i163, i64 16
  br label %bb.bl

bb.bl:                                            ; preds = %_RNvYINvNtNtCskAO0uQb8M5a_5prost8encoding5bytes6encodeINtNtCs40k4W9msRzi_5alloc3vec3VechEBP_EINtNtNtCscI6d9CVNmLh_4core3ops8function2FnTmRBP_QBP_EE4callCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i, %.lr.ph.i.i60.i.i
  %.sroa.14.015.i.i.i.i = phi i64 [ %.val11.i.i, %.lr.ph.i.i60.i.i ], [ %i.arb, %_RNvYINvNtNtCskAO0uQb8M5a_5prost8encoding5bytes6encodeINtNtCs40k4W9msRzi_5alloc3vec3VechEBP_EINtNtNtCscI6d9CVNmLh_4core3ops8function2FnTmRBP_QBP_EE4callCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i ]
  %.sroa.10.014.i.i.i.i = phi i16 [ %i.aqo, %.lr.ph.i.i60.i.i ], [ %i.aqy, %_RNvYINvNtNtCskAO0uQb8M5a_5prost8encoding5bytes6encodeINtNtCs40k4W9msRzi_5alloc3vec3VechEBP_EINtNtNtCscI6d9CVNmLh_4core3ops8function2FnTmRBP_QBP_EE4callCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i ] ; 2 uses
  %.sroa.6.013.i.i.i.i = phi ptr [ %i.aqp, %.lr.ph.i.i60.i.i ], [ %.sroa.6.1.i.i65.i.i, %_RNvYINvNtNtCskAO0uQb8M5a_5prost8encoding5bytes6encodeINtNtCs40k4W9msRzi_5alloc3vec3VechEBP_EINtNtNtCscI6d9CVNmLh_4core3ops8function2FnTmRBP_QBP_EE4callCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i ] ; 2 uses
  %.sroa.02.012.i.i.i.i = phi ptr [ %.val10.i.i163, %.lr.ph.i.i60.i.i ], [ %.sroa.02.1.i.i64.i.i, %_RNvYINvNtNtCskAO0uQb8M5a_5prost8encoding5bytes6encodeINtNtCs40k4W9msRzi_5alloc3vec3VechEBP_EINtNtNtCscI6d9CVNmLh_4core3ops8function2FnTmRBP_QBP_EE4callCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i ] ; 2 uses
  %.not12.i.i.i.i62.i.i = icmp eq i16 %.sroa.10.014.i.i.i.i, 0
  br i1 %.not12.i.i.i.i62.i.i, label %.lr.ph.i.i.i.i82.i.i, label %.loopexit.i.i63.i.i

.lr.ph.i.i.i.i82.i.i:                             ; preds = %bb.bl, %.lr.ph.i.i.i.i82.i.i
  %i.aqq = phi ptr [ %i.aqu, %.lr.ph.i.i.i.i82.i.i ], [ %.sroa.6.013.i.i.i.i, %bb.bl ] ; 2 uses
  %i.aqr = phi ptr [ %i.aqt, %.lr.ph.i.i.i.i82.i.i ], [ %.sroa.02.012.i.i.i.i, %bb.bl ]
  %.val10.i.i.i.i83.i.i = load <16 x i8>, ptr %i.aqq, align 16, !noalias !7032
  %i.aqs = icmp sgt <16 x i8> %.val10.i.i.i.i83.i.i, splat (i8 -1)
  %i.aqt = getelementptr inbounds i8, ptr %i.aqr, i64 -512 ; 2 uses
  %i.aqu = getelementptr inbounds nuw i8, ptr %i.aqq, i64 16 ; 2 uses
  %.cast.i.i.i.i84.i.i = bitcast <16 x i1> %i.aqs to i16 ; 2 uses
  %.not.i.i.i.i85.i.i = icmp eq i16 %.cast.i.i.i.i84.i.i, 0
  br i1 %.not.i.i.i.i85.i.i, label %.lr.ph.i.i.i.i82.i.i, label %.loopexit.i.i63.i.i

.loopexit.i.i63.i.i:                              ; preds = %.lr.ph.i.i.i.i82.i.i, %bb.bl
  %.sroa.02.1.i.i64.i.i = phi ptr [ %.sroa.02.012.i.i.i.i, %bb.bl ], [ %i.aqt, %.lr.ph.i.i.i.i82.i.i ] ; 2 uses
  %.sroa.6.1.i.i65.i.i = phi ptr [ %.sroa.6.013.i.i.i.i, %bb.bl ], [ %i.aqu, %.lr.ph.i.i.i.i82.i.i ]
  %.lcssa.i.i.i.i66.i.i = phi i16 [ %.sroa.10.014.i.i.i.i, %bb.bl ], [ %.cast.i.i.i.i84.i.i, %.lr.ph.i.i.i.i82.i.i ] ; 3 uses
  %i.aqv = add i16 %.lcssa.i.i.i.i66.i.i, -1
  %i.aqw = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i66.i.i, i1 true)
  %i.aqx = zext nneg i16 %i.aqw to i64
  %i.aqy = and i16 %i.aqv, %.lcssa.i.i.i.i66.i.i
  %i.aqz = sub nsw i64 0, %i.aqx
  %i.ara = getelementptr inbounds [32 x i8], ptr %.sroa.02.1.i.i64.i.i, i64 %i.aqz ; 3 uses
  %i.arb = add i64 %.sroa.14.015.i.i.i.i, -1      ; 2 uses
  %i.arc = getelementptr inbounds i8, ptr %i.ara, i64 -32 ; 2 uses
  %.val18.i.i67.i.i = load i64, ptr %i.arc, align 8, !noalias !7033, !noundef !409 ; 2 uses
  %i.ard = icmp eq i64 %.val18.i.i67.i.i, 0       ; 2 uses
  %i.are = getelementptr i8, ptr %i.ara, i64 -16
  %i.arf = getelementptr i8, ptr %i.ara, i64 -8   ; 2 uses
  %.val15.i.i.i.i = load i64, ptr %i.arf, align 8, !noalias !7033, !noundef !409 ; 4 uses
  %i.arg = icmp eq i64 %.val15.i.i.i.i, 0         ; 2 uses
  br i1 %i.ard, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %.loopexit.i.i63.i.i
  %i.arh = or i64 %.val18.i.i67.i.i, 1
  %i.ari = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.arh, i1 true)
  %i.arj = xor i64 %i.ari, 63
  %i.ark = mul nuw nsw i64 %i.arj, 9
  %i.arl = add nuw nsw i64 %i.ark, 73
  %i.arm = lshr i64 %i.arl, 6
  %i.arn = add nuw nsw i64 %i.arm, 1
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %.loopexit.i.i63.i.i
  %.sroa.03.0.i.i68.i.i = phi i64 [ 0, %.loopexit.i.i63.i.i ], [ %i.arn, %bb.bm ]
  br i1 %i.arg, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.aro = or i64 %.val15.i.i.i.i, 1
  %i.arp = tail call range(i64 1, 64) i64 @llvm.ctlz.i64(i64 %i.aro, i1 true)
  %i.arq = xor i64 %i.arp, 63
  %i.arr = mul nuw nsw i64 %i.arq, 9
  %i.ars = add nuw nsw i64 %i.arr, 73
  %i.art = lshr i64 %i.ars, 6
  %i.aru = icmp sgt i64 %.val15.i.i.i.i, -1
  tail call void @llvm.assume(i1 %i.aru)
  %i.arv = add nuw i64 %.val15.i.i.i.i, 1
  %i.arw = add nuw i64 %i.arv, %i.art
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  %.sroa.04.0.i.i69.i.i = phi i64 [ 0, %bb.bn ], [ %i.arw, %bb.bo ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7034)
  %.pre18.i.i.i70.i.i = load i64, ptr %i.tj, align 8, !alias.scope !7035 ; 3 uses
  %.pre28.i.i.i71.i.i = load i64, ptr %1, align 8, !range !412, !alias.scope !7035
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7036)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7037)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7038)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7039)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7040)
  %i.arx = icmp eq i64 %.pre28.i.i.i71.i.i, %.pre18.i.i.i70.i.i
  br i1 %i.arx, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i.i.i81.i.i, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i72.i.i, !prof !419

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i.i.i81.i.i: ; preds = %bb.bp
  tail call fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %.pre18.i.i.i70.i.i, i64 noundef range(i64 0, -9223372036854775808) 1, i64 noundef 1, i64 noundef 1), !noalias !6774
  %i.ary = load i64, ptr %i.tj, align 8, !alias.scope !7041, !noundef !409
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i72.i.i

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i72.i.i: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i.i.i81.i.i, %bb.bp
  %.sink1.i6.i.i.i73.i.i = phi i64 [ %i.ary, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i.i.i81.i.i ], [ %.pre18.i.i.i70.i.i, %bb.bp ] ; 3 uses
  %i.arz = icmp sgt i64 %.sink1.i6.i.i.i73.i.i, -1
  tail call void @llvm.assume(i1 %i.arz)
  %i.asa = load ptr, ptr %i.tk, align 8, !alias.scope !7041, !nonnull !409, !noundef !409
  %i.asb = getelementptr inbounds nuw i8, ptr %i.asa, i64 %.sink1.i6.i.i.i73.i.i
  store i8 82, ptr %i.asb, align 1, !noalias !7042
  %i.asc = add nuw i64 %.sink1.i6.i.i.i73.i.i, 1
  store i64 %i.asc, ptr %i.tj, align 8, !alias.scope !7041
  %i.asd = add nuw i64 %.sroa.04.0.i.i69.i.i, %.sroa.03.0.i.i68.i.i
  tail call fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls(i64 noundef %i.asd, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !6774
  br i1 %i.ard, label %.noexc5.i.i.i, label %bb.bq

bb.bq:                                            ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i72.i.i
  %.val24.i.i74.i.i = load i64, ptr %i.arc, align 8, !noalias !7033
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7043)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7044)
  %.pre18.i.i.i.i75.i.i = load i64, ptr %i.tj, align 8, !alias.scope !7045 ; 3 uses
  %.pre28.i.i.i.i76.i.i = load i64, ptr %1, align 8, !range !412, !alias.scope !7045
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7046)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7047)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7048)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7049)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7050)
  %i.ase = icmp eq i64 %.pre28.i.i.i.i76.i.i, %.pre18.i.i.i.i75.i.i
  br i1 %i.ase, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i.i.i.i80.i.i, label %_RNvYINvNtNtCskAO0uQb8M5a_5prost8encoding6uint646encodeINtNtCs40k4W9msRzi_5alloc3vec3VechEEINtNtNtCscI6d9CVNmLh_4core3ops8function2FnTmRyQBQ_EE4callCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i77.i.i, !prof !419

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i.i.i.i80.i.i: ; preds = %bb.bq
  tail call fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %.pre18.i.i.i.i75.i.i, i64 noundef range(i64 0, -9223372036854775808) 1, i64 noundef 1, i64 noundef 1), !noalias !6774
  %i.asf = load i64, ptr %i.tj, align 8, !alias.scope !7051, !noundef !409
  br label %_RNvYINvNtNtCskAO0uQb8M5a_5prost8encoding6uint646encodeINtNtCs40k4W9msRzi_5alloc3vec3VechEEINtNtNtCscI6d9CVNmLh_4core3ops8function2FnTmRyQBQ_EE4callCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i77.i.i

_RNvYINvNtNtCskAO0uQb8M5a_5prost8encoding6uint646encodeINtNtCs40k4W9msRzi_5alloc3vec3VechEEINtNtNtCscI6d9CVNmLh_4core3ops8function2FnTmRyQBQ_EE4callCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i77.i.i: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i.i.i.i80.i.i, %bb.bq
  %.sink1.i6.i.i.i.i78.i.i = phi i64 [ %i.asf, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i.i.i.i80.i.i ], [ %.pre18.i.i.i.i75.i.i, %bb.bq ] ; 3 uses
  %i.asg = icmp sgt i64 %.sink1.i6.i.i.i.i78.i.i, -1
  tail call void @llvm.assume(i1 %i.asg)
  %i.ash = load ptr, ptr %i.tk, align 8, !alias.scope !7051, !nonnull !409, !noundef !409
  %i.asi = getelementptr inbounds nuw i8, ptr %i.ash, i64 %.sink1.i6.i.i.i.i78.i.i
  store i8 8, ptr %i.asi, align 1, !noalias !7052
  %i.asj = add nuw i64 %.sink1.i6.i.i.i.i78.i.i, 1
  store i64 %i.asj, ptr %i.tj, align 8, !alias.scope !7051
  tail call fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls(i64 noundef %.val24.i.i74.i.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !6774
  br label %.noexc5.i.i.i

.noexc5.i.i.i:                                    ; preds = %_RNvYINvNtNtCskAO0uQb8M5a_5prost8encoding6uint646encodeINtNtCs40k4W9msRzi_5alloc3vec3VechEEINtNtNtCscI6d9CVNmLh_4core3ops8function2FnTmRyQBQ_EE4callCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i77.i.i, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i72.i.i
  br i1 %i.arg, label %_RNvYINvNtNtCskAO0uQb8M5a_5prost8encoding5bytes6encodeINtNtCs40k4W9msRzi_5alloc3vec3VechEBP_EINtNtNtCscI6d9CVNmLh_4core3ops8function2FnTmRBP_QBP_EE4callCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i, label %bb.br

bb.br:                                            ; preds = %.noexc5.i.i.i
  %.val21.i.i.i.i = load ptr, ptr %i.are, align 8, !noalias !7033 ; 2 uses
  %.val22.i.i.i.i = load i64, ptr %i.arf, align 8, !noalias !7033 ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7053)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7054)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7055)
  %.pre18.i.i26.i.i.i.i = load i64, ptr %i.tj, align 8, !alias.scope !7056 ; 3 uses
end_hunk_0
