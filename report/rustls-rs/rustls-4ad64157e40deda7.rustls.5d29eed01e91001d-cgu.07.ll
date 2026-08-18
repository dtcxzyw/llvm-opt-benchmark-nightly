inline.NumInlined: 349
inline.NumDeleted: 157
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvMNtCs7ZUl82OSlxp_6rustls5enumsNtB2_15SignatureScheme18supported_in_tls13:bb.a
    i16 11, label %bb.l
    i16 12, label %bb.m
    i16 13, label %bb.n
    i16 14, label %bb.o
    i16 15, label %bb.p
    i16 16, label %bb.q
  ]

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  br label %_RNvMsS_NtCs7ZUl82OSlxp_6rustls5enumsNtB5_15SignatureScheme8to_array.exit

bb.c:                                             ; preds = %bb.a
  br label %_RNvMsS_NtCs7ZUl82OSlxp_6rustls5enumsNtB5_15SignatureScheme8to_array.exit

bb.d:                                             ; preds = %bb.a
  br label %_RNvMsS_NtCs7ZUl82OSlxp_6rustls5enumsNtB5_15SignatureScheme8to_array.exit

bb.e:                                             ; preds = %bb.a
  br label %_RNvMsS_NtCs7ZUl82OSlxp_6rustls5enumsNtB5_15SignatureScheme8to_array.exit

bb.f:                                             ; preds = %bb.a
  br label %_RNvMsS_NtCs7ZUl82OSlxp_6rustls5enumsNtB5_15SignatureScheme8to_array.exit

bb.g:                                             ; preds = %bb.a
  br label %_RNvMsS_NtCs7ZUl82OSlxp_6rustls5enumsNtB5_15SignatureScheme8to_array.exit

bb.h:                                             ; preds = %bb.a
  br label %_RNvMsS_NtCs7ZUl82OSlxp_6rustls5enumsNtB5_15SignatureScheme8to_array.exit

bb.i:                                             ; preds = %bb.a
  br label %_RNvMsS_NtCs7ZUl82OSlxp_6rustls5enumsNtB5_15SignatureScheme8to_array.exit

bb.j:                                             ; preds = %bb.a
  br label %_RNvMsS_NtCs7ZUl82OSlxp_6rustls5enumsNtB5_15SignatureScheme8to_array.exit

bb.k:                                             ; preds = %bb.a
  br label %_RNvMsS_NtCs7ZUl82OSlxp_6rustls5enumsNtB5_15SignatureScheme8to_array.exit

bb.l:                                             ; preds = %bb.a
  br label %_RNvMsS_NtCs7ZUl82OSlxp_6rustls5enumsNtB5_15SignatureScheme8to_array.exit

bb.m:                                             ; preds = %bb.a
  br label %_RNvMsS_NtCs7ZUl82OSlxp_6rustls5enumsNtB5_15SignatureScheme8to_array.exit

bb.n:                                             ; preds = %bb.a
  br label %_RNvMsS_NtCs7ZUl82OSlxp_6rustls5enumsNtB5_15SignatureScheme8to_array.exit

bb.o:                                             ; preds = %bb.a
  br label %_RNvMsS_NtCs7ZUl82OSlxp_6rustls5enumsNtB5_15SignatureScheme8to_array.exit

bb.p:                                             ; preds = %bb.a
  br label %_RNvMsS_NtCs7ZUl82OSlxp_6rustls5enumsNtB5_15SignatureScheme8to_array.exit

bb.q:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.c = load i16, ptr %i.b, align 2
  %i.d = tail call i16 @llvm.bswap.i16(i16 %i.c)
  br label %_RNvMsS_NtCs7ZUl82OSlxp_6rustls5enumsNtB5_15SignatureScheme8to_array.exit

_RNvMsS_NtCs7ZUl82OSlxp_6rustls5enumsNtB5_15SignatureScheme8to_array.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q
  %.sroa.02.0.i.i = phi i16 [ %i.d, %bb.q ], [ 770, %bb.b ], [ 260, %bb.c ], [ 772, %bb.d ], [ 261, %bb.e ], [ 773, %bb.f ], [ 262, %bb.g ], [ 774, %bb.h ], [ 1032, %bb.i ], [ 1288, %bb.j ], [ 1544, %bb.k ], [ 1800, %bb.l ], [ 2056, %bb.m ], [ 1033, %bb.n ], [ 1289, %bb.o ], [ 1545, %bb.p ], [ 258, %bb.a ] ; 2 uses
  %i.e = and i16 %.sroa.02.0.i.i, 252
  %switch = icmp ne i16 %i.e, 0
  %switch7 = icmp ugt i16 %.sroa.02.0.i.i, 767
  %.sroa.0.0 = and i1 %switch7, %switch
  ret i1 %.sroa.0.0
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_RNvMNtNtNtCs7ZUl82OSlxp_6rustls4msgs8deframer9handshakeNtB2_17HandshakeDeframer10is_aligned(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 2 uses
  %.idx = mul nuw nsw i64 %i.d, 40
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtNtCs7ZUl82OSlxp_6rustls4msgs8deframer9handshake12FragmentSpanENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMBS_NtBS_17HandshakeDeframer10is_aligned0EBY_.exit, label %.lr.ph

bb.b:                                             ; preds = %_RNCNvMNtNtNtCs7ZUl82OSlxp_6rustls4msgs8deframer9handshakeNtB4_17HandshakeDeframer10is_aligned0Ba_.exit.i
  %i.g = getelementptr inbounds nuw i8, ptr %i.i, i64 40 ; 2 uses
  %i.h = icmp eq ptr %i.g, %i.e
  br i1 %i.h, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtNtCs7ZUl82OSlxp_6rustls4msgs8deframer9handshake12FragmentSpanENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMBS_NtBS_17HandshakeDeframer10is_aligned0EBY_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %i.i = phi ptr [ %i.g, %bb.b ], [ %i.b, %bb.a ] ; 5 uses
  %i.j = load i64, ptr %i.i, align 8, !range !88, !alias.scope !89, !noalias !94, !noundef !4
  %i.k = trunc nuw i64 %i.j to i1
  br i1 %i.k, label %_RNCNvMNtNtNtCs7ZUl82OSlxp_6rustls4msgs8deframer9handshakeNtB4_17HandshakeDeframer10is_aligned0Ba_.exit.i, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtNtCs7ZUl82OSlxp_6rustls4msgs8deframer9handshake12FragmentSpanENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMBS_NtBS_17HandshakeDeframer10is_aligned0EBY_.exit

_RNCNvMNtNtNtCs7ZUl82OSlxp_6rustls4msgs8deframer9handshakeNtB4_17HandshakeDeframer10is_aligned0Ba_.exit.i: ; preds = %.lr.ph
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.m = load i64, ptr %i.l, align 8, !alias.scope !89, !noalias !94, !noundef !4
  %i.n = add i64 %i.m, 4
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.p = load i64, ptr %i.o, align 8, !alias.scope !89, !noalias !94, !noundef !4
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !89, !noalias !94, !noundef !4
  %.sroa.01.0.i.i.i = tail call i64 @llvm.usub.sat.i64(i64 %i.r, i64 %i.p)
  %i.s = icmp eq i64 %i.n, %.sroa.01.0.i.i.i
  br i1 %i.s, label %bb.b, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtNtCs7ZUl82OSlxp_6rustls4msgs8deframer9handshake12FragmentSpanENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMBS_NtBS_17HandshakeDeframer10is_aligned0EBY_.exit

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtNtCs7ZUl82OSlxp_6rustls4msgs8deframer9handshake12FragmentSpanENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMBS_NtBS_17HandshakeDeframer10is_aligned0EBY_.exit: ; preds = %_RNCNvMNtNtNtCs7ZUl82OSlxp_6rustls4msgs8deframer9handshakeNtB4_17HandshakeDeframer10is_aligned0Ba_.exit.i, %.lr.ph, %bb.b, %bb.a
  %.lcssa = phi i1 [ true, %bb.a ], [ false, %_RNCNvMNtNtNtCs7ZUl82OSlxp_6rustls4msgs8deframer9handshakeNtB4_17HandshakeDeframer10is_aligned0Ba_.exit.i ], [ false, %.lr.ph ], [ true, %bb.b ]
  ret i1 %.lcssa
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtNtCs7ZUl82OSlxp_6rustls4msgs8deframer9handshakeNtB2_17HandshakeDeframer13input_message(ptr noalias nofree noundef align 8 dereferenceable(32) initializes((24, 32)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 3 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %3, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !noundef !4 ; 6 uses
  %.not = icmp eq i64 %i.e, 0
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !4 ; 2 uses
  %i.h = getelementptr [40 x i8], ptr %i.g, i64 %i.e ; 4 uses
  %i.i = getelementptr i8, ptr %i.h, i64 -40      ; 2 uses
  %.not.i44 = icmp eq ptr %i.i, null
  %.not.i = select i1 %.not, i1 true, i1 %.not.i44
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = load i64, ptr %i.i, align 8, !range !88, !alias.scope !97, !noundef !4
  %i.k = trunc nuw i64 %i.j to i1
  br i1 %i.k, label %_RNCNvMNtNtNtCs7ZUl82OSlxp_6rustls4msgs8deframer9handshakeNtB4_17HandshakeDeframer13input_message0Ba_.exit.i, label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRNtNtNtNtCs7ZUl82OSlxp_6rustls4msgs8deframer9handshake12FragmentSpanE6filterNCNvMBL_NtBL_17HandshakeDeframer13input_message0EBR_.exit

_RNCNvMNtNtNtCs7ZUl82OSlxp_6rustls4msgs8deframer9handshakeNtB4_17HandshakeDeframer13input_message0Ba_.exit.i: ; preds = %bb.b
  %i.l = getelementptr i8, ptr %i.h, i64 -32
  %i.m = load i64, ptr %i.l, align 8, !alias.scope !97, !noundef !4
  %i.n = add i64 %i.m, 4
  %i.o = getelementptr i8, ptr %i.h, i64 -24
  %i.p = load i64, ptr %i.o, align 8, !alias.scope !97, !noundef !4
  %i.q = getelementptr i8, ptr %i.h, i64 -16
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !97, !noundef !4
  %.sroa.01.0.i.i.i = tail call i64 @llvm.usub.sat.i64(i64 %i.r, i64 %i.p)
  %.not4.i = icmp eq i64 %i.n, %.sroa.01.0.i.i.i
  br i1 %.not4.i, label %bb.d, label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRNtNtNtNtCs7ZUl82OSlxp_6rustls4msgs8deframer9handshake12FragmentSpanE6filterNCNvMBL_NtBL_17HandshakeDeframer13input_message0EBR_.exit

_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRNtNtNtNtCs7ZUl82OSlxp_6rustls4msgs8deframer9handshake12FragmentSpanE6filterNCNvMBL_NtBL_17HandshakeDeframer13input_message0EBR_.exit: ; preds = %_RNCNvMNtNtNtCs7ZUl82OSlxp_6rustls4msgs8deframer9handshakeNtB4_17HandshakeDeframer13input_message0Ba_.exit.i, %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 18
  %i.t = load <2 x i16>, ptr %i.s, align 2
  %i.u = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = load i64, ptr %i.v, align 8, !noundef !4
  %i.x = ptrtoint ptr %i.u to i64
  %i.y = load ptr, ptr %2, align 8, !noundef !4
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = sub i64 %i.x, %i.z                      ; 2 uses
  %i.ab = add i64 %i.aa, %i.w
  %i.ac = load i64, ptr %0, align 8, !range !5, !alias.scope !102, !noalias !105, !noundef !4
  %i.ad = icmp eq i64 %i.e, %i.ac
  br i1 %i.ad, label %bb.c, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtNtCs7ZUl82OSlxp_6rustls4msgs8deframer9handshake12FragmentSpanE8push_mutBN_.exit

bb.c:                                             ; preds = %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRNtNtNtNtCs7ZUl82OSlxp_6rustls4msgs8deframer9handshake12FragmentSpanE6filterNCNvMBL_NtBL_17HandshakeDeframer13input_message0EBR_.exit
  tail call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs7ZUl82OSlxp_6rustls4msgs8deframer9handshake12FragmentSpanE8grow_oneBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) #27, !noalias !105
  %.pre = load ptr, ptr %i.f, align 8, !alias.scope !102, !noalias !105
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtNtCs7ZUl82OSlxp_6rustls4msgs8deframer9handshake12FragmentSpanE8push_mutBN_.exit

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtNtCs7ZUl82OSlxp_6rustls4msgs8deframer9handshake12FragmentSpanE8push_mutBN_.exit: ; preds = %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRNtNtNtNtCs7ZUl82OSlxp_6rustls4msgs8deframer9handshake12FragmentSpanE6filterNCNvMBL_NtBL_17HandshakeDeframer13input_message0EBR_.exit, %bb.c
  %i.ae = phi ptr [ %i.g, %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRNtNtNtNtCs7ZUl82OSlxp_6rustls4msgs8deframer9handshake12FragmentSpanE6filterNCNvMBL_NtBL_17HandshakeDeframer13input_message0EBR_.exit ], [ %.pre, %bb.c ]
  %i.af = getelementptr inbounds nuw [40 x i8], ptr %i.ae, i64 %i.e ; 4 uses
  store i64 0, ptr %i.af, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store i64 %i.aa, ptr %.sroa.48.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  store i64 %i.ab, ptr %.sroa.5.0..sroa_idx9, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  store <2 x i16> %i.t, ptr %.sroa.6.0..sroa_idx, align 8
  %i.ag = add i64 %i.e, 1
  store i64 %i.ag, ptr %i.d, align 8, !alias.scope !102, !noalias !105
  br label %_RNvXs1_NtNtNtCs7ZUl82OSlxp_6rustls4msgs8deframer9handshakeNtB5_20DissectHandshakeIterNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit

bb.d:                                             ; preds = %bb.a, %_RNCNvMNtNtNtCs7ZUl82OSlxp_6rustls4msgs8deframer9handshakeNtB4_17HandshakeDeframer13input_message0Ba_.exit.i
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 18
  %i.ai = load <2 x i16>, ptr %i.ah, align 2
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !noundef !4 ; 2 uses
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %_RNvXs1_NtNtNtCs7ZUl82OSlxp_6rustls4msgs8deframer9handshakeNtB5_20DissectHandshakeIterNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.am = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.ao = load ptr, ptr %2, align 8
  %i.ap = ptrtoint ptr %i.ao to i64               ; 2 uses
  br label %bb.e

_RNvXs1_NtNtNtCs7ZUl82OSlxp_6rustls4msgs8deframer9handshakeNtB5_20DissectHandshakeIterNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit: ; preds = %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtNtCs7ZUl82OSlxp_6rustls4msgs8deframer9handshake12FragmentSpanE8push_mutBN_.exit6, %bb.d, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtNtCs7ZUl82OSlxp_6rustls4msgs8deframer9handshake12FragmentSpanE8push_mutBN_.exit
  ret void

bb.e:                                             ; preds = %.lr.ph, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtNtCs7ZUl82OSlxp_6rustls4msgs8deframer9handshake12FragmentSpanE8push_mutBN_.exit6
  %i.aq = phi i64 [ %i.e, %.lr.ph ], [ %i.bm, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtNtCs7ZUl82OSlxp_6rustls4msgs8deframer9handshake12FragmentSpanE8push_mutBN_.exit6 ]
  %.sroa.010.044 = phi ptr [ %i.am, %.lr.ph ], [ %.sroa.010.2.ph, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtNtCs7ZUl82OSlxp_6rustls4msgs8deframer9handshake12FragmentSpanE8push_mutBN_.exit6 ] ; 4 uses
  %.sroa.611.046 = phi i64 [ %i.ak, %.lr.ph ], [ %.sroa.9.1.ph, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtNtCs7ZUl82OSlxp_6rustls4msgs8deframer9handshake12FragmentSpanE8push_mutBN_.exit6 ] ; 4 uses
  %i.ar = icmp ult i64 %.sroa.611.046, 4
  br i1 %i.ar, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.as = ptrtoint ptr %.sroa.010.044 to i64
  %i.at = sub i64 %i.as, %i.ap                    ; 2 uses
  %i.au = add i64 %i.at, %.sroa.611.046
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !107
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.010.044, i64 1
  call void @_RNvYNtNtNtCs7ZUl82OSlxp_6rustls4msgs5codec3u24NtB4_5Codec10read_bytesB8_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.av, i64 noundef 3), !noalias !107
  call void @llvm.experimental.noalias.scope.decl(metadata !111)
  %i.aw = load i8, ptr %i.b, align 8, !range !114, !alias.scope !111, !noalias !107, !noundef !4
  %.not.i.i = icmp eq i8 %i.aw, -1
  br i1 %.not.i.i, label %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultNtNtNtCs7ZUl82OSlxp_6rustls4msgs5codec3u24NtNtBN_5error14InvalidMessageE6unwrapBN_.exit.i, label %bb.h, !prof !115

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !116
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !107
  call void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @5, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @574) #29, !noalias !116
  unreachable

_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultNtNtNtCs7ZUl82OSlxp_6rustls4msgs5codec3u24NtNtBN_5error14InvalidMessageE6unwrapBN_.exit.i: ; preds = %bb.g
  %i.ax = add nsw i64 %.sroa.611.046, -4          ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.010.044, i64 4
  %i.az = load i32, ptr %i.an, align 4, !alias.scope !111, !noalias !107, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !107
  %i.ba = zext i32 %i.az to i64                   ; 5 uses
  %i.bb = icmp ugt i64 %i.ax, %i.ba               ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.ba
  %i.bd = add nuw nsw i64 %i.ba, 4
  %.sroa.611.1 = call i64 @llvm.usub.sat.i64(i64 %i.ax, i64 %i.ba)
  %.sroa.010.1 = select i1 %i.bb, ptr %i.bc, ptr inttoptr (i64 1 to ptr)
  %.sroa.01.0.i = select i1 %i.bb, i64 %i.bd, i64 %.sroa.611.046
  %i.be = ptrtoint ptr %.sroa.010.044 to i64
  %i.bf = sub i64 %i.be, %i.ap                    ; 2 uses
  %i.bg = add i64 %i.bf, %.sroa.01.0.i
  %.pre48 = load i64, ptr %i.d, align 8, !alias.scope !117, !noalias !120
  br label %bb.i

bb.i:                                             ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultNtNtNtCs7ZUl82OSlxp_6rustls4msgs5codec3u24NtNtBN_5error14InvalidMessageE6unwrapBN_.exit.i, %bb.f
  %i.bh = phi i64 [ %i.aq, %bb.f ], [ %.pre48, %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultNtNtNtCs7ZUl82OSlxp_6rustls4msgs5codec3u24NtNtBN_5error14InvalidMessageE6unwrapBN_.exit.i ] ; 3 uses
  %.sroa.11.0.ph = phi i64 [ %i.au, %bb.f ], [ %i.bg, %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultNtNtNtCs7ZUl82OSlxp_6rustls4msgs5codec3u24NtNtBN_5error14InvalidMessageE6unwrapBN_.exit.i ]
  %.sroa.611.2.ph.a = phi i64 [ %i.at, %bb.f ], [ %i.bf, %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultNtNtNtCs7ZUl82OSlxp_6rustls4msgs5codec3u24NtNtBN_5error14InvalidMessageE6unwrapBN_.exit.i ]
  %.sroa.015.0.ph.a = phi i64 [ undef, %bb.f ], [ %i.ba, %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultNtNtNtCs7ZUl82OSlxp_6rustls4msgs5codec3u24NtNtBN_5error14InvalidMessageE6unwrapBN_.exit.i ]
  %.sroa.816.1.ph = phi i64 [ 0, %bb.f ], [ 1, %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultNtNtNtCs7ZUl82OSlxp_6rustls4msgs5codec3u24NtNtBN_5error14InvalidMessageE6unwrapBN_.exit.i ]
  %.sroa.9.1.ph = phi i64 [ 0, %bb.f ], [ %.sroa.611.1, %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultNtNtNtCs7ZUl82OSlxp_6rustls4msgs5codec3u24NtNtBN_5error14InvalidMessageE6unwrapBN_.exit.i ] ; 2 uses
  %.sroa.010.2.ph = phi ptr [ inttoptr (i64 1 to ptr), %bb.f ], [ %.sroa.010.1, %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultNtNtNtCs7ZUl82OSlxp_6rustls4msgs5codec3u24NtNtBN_5error14InvalidMessageE6unwrapBN_.exit.i ]
  %i.bi = load i64, ptr %0, align 8, !range !5, !alias.scope !117, !noalias !120, !noundef !4
  %i.bj = icmp eq i64 %i.bh, %i.bi
  br i1 %i.bj, label %bb.j, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtNtCs7ZUl82OSlxp_6rustls4msgs8deframer9handshake12FragmentSpanE8push_mutBN_.exit6

bb.j:                                             ; preds = %bb.i
  call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs7ZUl82OSlxp_6rustls4msgs8deframer9handshake12FragmentSpanE8grow_oneBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) #27, !noalias !120
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtNtCs7ZUl82OSlxp_6rustls4msgs8deframer9handshake12FragmentSpanE8push_mutBN_.exit6

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtNtCs7ZUl82OSlxp_6rustls4msgs8deframer9handshake12FragmentSpanE8push_mutBN_.exit6: ; preds = %bb.i, %bb.j
  %i.bk = load ptr, ptr %i.f, align 8, !alias.scope !117, !noalias !120, !nonnull !4, !noundef !4
  %i.bl = getelementptr inbounds nuw [40 x i8], ptr %i.bk, i64 %i.bh ; 5 uses
  store i64 %.sroa.816.1.ph, ptr %i.bl, align 8
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store i64 %.sroa.015.0.ph.a, ptr %.sroa.419.0..sroa_idx, align 8
  %.sroa.520.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  store i64 %.sroa.611.2.ph.a, ptr %.sroa.520.0..sroa_idx, align 8
  %.sroa.621.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  store i64 %.sroa.11.0.ph, ptr %.sroa.621.0..sroa_idx, align 8
  %.sroa.722.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bl, i64 32
  store <2 x i16> %i.ai, ptr %.sroa.722.0..sroa_idx, align 8
  %i.bm = add i64 %i.bh, 1                        ; 2 uses
  store i64 %i.bm, ptr %i.d, align 8, !alias.scope !117, !noalias !120
  %i.bn = icmp eq i64 %.sroa.9.1.ph, 0
  br i1 %i.bn, label %_RNvXs1_NtNtNtCs7ZUl82OSlxp_6rustls4msgs8deframer9handshakeNtB5_20DissectHandshakeIterNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit, label %bb.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_RNvMNtNtNtCs7ZUl82OSlxp_6rustls4msgs8deframer9handshakeNtB2_17HandshakeDeframer17has_message_ready(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !4
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %_RNvMs4_NtNtNtCs7ZUl82OSlxp_6rustls4msgs8deframer9handshakeNtB5_12FragmentSpan11is_complete.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !range !88, !alias.scope !122, !noundef !4
  %i.f = trunc nuw i64 %i.e to i1
  br i1 %i.f, label %bb.c, label %_RNvMs4_NtNtNtCs7ZUl82OSlxp_6rustls4msgs8deframer9handshakeNtB5_12FragmentSpan11is_complete.exit

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !122, !noundef !4
  %i.i = add i64 %i.h, 4
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !122, !noundef !4
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.m = load i64, ptr %i.l, align 8, !alias.scope !122, !noundef !4
  %.sroa.01.0.i = tail call i64 @llvm.usub.sat.i64(i64 %i.m, i64 %i.k)
  %i.n = icmp eq i64 %i.i, %.sroa.01.0.i
  br label %_RNvMs4_NtNtNtCs7ZUl82OSlxp_6rustls4msgs8deframer9handshakeNtB5_12FragmentSpan11is_complete.exit

_RNvMs4_NtNtNtCs7ZUl82OSlxp_6rustls4msgs8deframer9handshakeNtB5_12FragmentSpan11is_complete.exit: ; preds = %bb.c, %bb.b, %bb.a
  %.sroa.0.0 = phi i1 [ false, %bb.a ], [ %i.n, %bb.c ], [ false, %bb.b ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtNtCs7ZUl82OSlxp_6rustls4msgs8deframer9handshakeNtB2_17HandshakeDeframer8coalesce(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 3 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [40 x i8], align 8                ; 6 uses
  %i.d = alloca [40 x i8], align 8                ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %.val28 = load ptr, ptr %i.e, align 8           ; 2 uses
  %.val329 = load i64, ptr %i.f, align 8, !noundef !4 ; 2 uses
  %.not.i30 = icmp eq i64 %.val329, 0
  br i1 %.not.i30, label %_RNvMNtNtNtCs7ZUl82OSlxp_6rustls4msgs8deframer9handshakeNtB2_17HandshakeDeframer17requires_coalesce.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.m = ptrtoint ptr %2 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_RNvMNtNtNtCs7ZUl82OSlxp_6rustls4msgs8deframer9handshakeNtB2_17HandshakeDeframer12coalesce_one.exit
  %.val332 = phi i64 [ %.val329, %.lr.ph ], [ %.val3, %_RNvMNtNtNtCs7ZUl82OSlxp_6rustls4msgs8deframer9handshakeNtB2_17HandshakeDeframer12coalesce_one.exit ] ; 2 uses
  %.val31 = phi ptr [ %.val28, %.lr.ph ], [ %.val, %_RNvMNtNtNtCs7ZUl82OSlxp_6rustls4msgs8deframer9handshakeNtB2_17HandshakeDeframer12coalesce_one.exit ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val31) ]
  %.idx = mul i64 %.val332, 40
  %i.n = add i64 %.idx, -40                       ; 2 uses
  %i.o = getelementptr i8, ptr %.val31, i64 %i.n  ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.o) ]
  %.not1.not.not.not.i.not96 = icmp eq i64 %i.n, 0
  br i1 %.not1.not.not.not.i.not96, label %_RNvMNtNtNtCs7ZUl82OSlxp_6rustls4msgs8deframer9handshakeNtB2_17HandshakeDeframer17requires_coalesce.exit.thread.loopexit, label %.lr.ph98

bb.c:                                             ; preds = %_RNCINvNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtNtNtCs7ZUl82OSlxp_6rustls4msgs8deframer9handshake12FragmentSpanuINtNtNtBf_3ops12control_flow11ControlFlowjENCINvNvB1e_8find_map5checkTjB25_EjNCNCNvMB28_NtB28_17HandshakeDeframer17requires_coalesce00E0E0B2e_.exit.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.q, i64 40 ; 2 uses
  %.not1.not.not.not.i.not = icmp eq ptr %i.p, %i.o
  br i1 %.not1.not.not.not.i.not, label %_RNvMNtNtNtCs7ZUl82OSlxp_6rustls4msgs8deframer9handshakeNtB2_17HandshakeDeframer17requires_coalesce.exit.thread.loopexit, label %.lr.ph98

.lr.ph98:                                         ; preds = %bb.b, %bb.c
  %i.q = phi ptr [ %i.p, %bb.c ], [ %.val31, %bb.b ] ; 5 uses
  %i.r = phi i64 [ %i.ab, %bb.c ], [ 0, %bb.b ]   ; 4 uses
  %i.s = load i64, ptr %i.q, align 8, !range !88, !alias.scope !125, !noalias !134, !noundef !4
  %i.t = trunc nuw i64 %i.s to i1
  br i1 %i.t, label %_RNCINvNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtNtNtCs7ZUl82OSlxp_6rustls4msgs8deframer9handshake12FragmentSpanuINtNtNtBf_3ops12control_flow11ControlFlowjENCINvNvB1e_8find_map5checkTjB25_EjNCNCNvMB28_NtB28_17HandshakeDeframer17requires_coalesce00E0E0B2e_.exit.i.i, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph98
  %.pre = add nuw i64 %i.r, 1
  br label %split

_RNCINvNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtNtNtCs7ZUl82OSlxp_6rustls4msgs8deframer9handshake12FragmentSpanuINtNtNtBf_3ops12control_flow11ControlFlowjENCINvNvB1e_8find_map5checkTjB25_EjNCNCNvMB28_NtB28_17HandshakeDeframer17requires_coalesce00E0E0B2e_.exit.i.i: ; preds = %.lr.ph98
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.v = load i64, ptr %i.u, align 8, !alias.scope !125, !noalias !134, !noundef !4
  %i.w = add i64 %i.v, 4
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.y = load i64, ptr %i.x, align 8, !alias.scope !125, !noalias !134, !noundef !4
  %i.z = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.aa = load i64, ptr %i.z, align 8, !alias.scope !125, !noalias !134, !noundef !4
  %.sroa.01.0.i.i.i.i.i.i = call i64 @llvm.usub.sat.i64(i64 %i.aa, i64 %i.y)
  %.not.i.i = icmp eq i64 %i.w, %.sroa.01.0.i.i.i.i.i.i
  %i.ab = add nuw i64 %i.r, 1                     ; 2 uses
  br i1 %.not.i.i, label %bb.c, label %split

split:                                            ; preds = %_RNCINvNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtNtNtCs7ZUl82OSlxp_6rustls4msgs8deframer9handshake12FragmentSpanuINtNtNtBf_3ops12control_flow11ControlFlowjENCINvNvB1e_8find_map5checkTjB25_EjNCNCNvMB28_NtB28_17HandshakeDeframer17requires_coalesce00E0E0B2e_.exit.i.i, %._crit_edge
  %.pre-phi = phi i64 [ %.pre, %._crit_edge ], [ %i.ab, %_RNCINvNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtNtNtCs7ZUl82OSlxp_6rustls4msgs8deframer9handshake12FragmentSpanuINtNtNtBf_3ops12control_flow11ControlFlowjENCINvNvB1e_8find_map5checkTjB25_EjNCNCNvMB28_NtB28_17HandshakeDeframer17requires_coalesce00E0E0B2e_.exit.i.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !138)
  call void @llvm.experimental.noalias.scope.decl(metadata !141)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !143
  call void @_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtNtCs7ZUl82OSlxp_6rustls4msgs8deframer9handshake12FragmentSpanE6removeBM_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %.pre-phi, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7), !noalias !141
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !143
  call void @_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtNtCs7ZUl82OSlxp_6rustls4msgs8deframer9handshake12FragmentSpanE6removeBM_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.r, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8), !noalias !141
  %i.ac = load i64, ptr %i.g, align 8, !noalias !143, !noundef !4 ; 2 uses
  %i.ad = load i64, ptr %i.h, align 8, !noalias !143, !noundef !4 ; 2 uses
  %i.ae = load i64, ptr %i.i, align 8, !noalias !143, !noundef !4 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !144)
  %i.af = call { i64, i64 } @_RINvNtNtCsj6eKBz9Db1c_4core5slice5index5rangeINtNtNtB6_3ops5range5RangejEECs7ZUl82OSlxp_6rustls(i64 noundef %i.ac, i64 noundef %i.ad, i64 noundef range(i64 0, -9223372036854775808) %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @10), !noalias !147 ; 2 uses
  %i.ag = extractvalue { i64, i64 } %i.af, 0      ; 2 uses
  %i.ah = extractvalue { i64, i64 } %i.af, 1
  %i.ai = sub i64 %i.ah, %i.ag                    ; 2 uses
  %i.aj = sub i64 %3, %i.ai
  %.not.i.i4 = icmp ugt i64 %i.ae, %i.aj
  br i1 %.not.i.i4, label %bb.d, label %_RINvMNtCsj6eKBz9Db1c_4core5sliceSh11copy_withinINtNtNtB5_3ops5range5RangejEECs7ZUl82OSlxp_6rustls.exit.i, !prof !148

bb.d:                                             ; preds = %split
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull inttoptr (i64 43 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #29, !noalias !147
  unreachable

_RINvMNtCsj6eKBz9Db1c_4core5sliceSh11copy_withinINtNtNtB5_3ops5range5RangejEECs7ZUl82OSlxp_6rustls.exit.i: ; preds = %split
  %.sroa.3.0.i = call i64 @llvm.usub.sat.i64(i64 %i.ad, i64 %i.ac)
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 %i.ag
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 %i.ae
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.al, ptr nonnull align 1 %i.ak, i64 %i.ai, i1 false), !alias.scope !147, !noalias !149
  %i.am = add i64 %i.ae, %.sroa.3.0.i             ; 4 uses
  store i64 %i.am, ptr %i.i, align 8, !noalias !143
  %i.an = load <2 x i16>, ptr %i.k, align 8, !noalias !143
  %.val10.i = load i64, ptr %i.j, align 8, !alias.scope !151, !noalias !143, !noundef !4 ; 3 uses
  %i.ao = icmp ult i64 %i.am, %.val10.i
  %.not.i12.i = icmp ugt i64 %i.am, %3
  %or.cond.i.i = or i1 %.not.i12.i, %i.ao
  br i1 %or.cond.i.i, label %bb.e, label %_RNvMs_NtNtNtCs7ZUl82OSlxp_6rustls4msgs8deframer7buffersNtB4_9Delocator16slice_from_range.exit.i, !prof !154

bb.e:                                             ; preds = %_RINvMNtCsj6eKBz9Db1c_4core5sliceSh11copy_withinINtNtNtB5_3ops5range5RangejEECs7ZUl82OSlxp_6rustls.exit.i
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @396) #29, !noalias !141
  unreachable

_RNvMs_NtNtNtCs7ZUl82OSlxp_6rustls4msgs8deframer7buffersNtB4_9Delocator16slice_from_range.exit.i: ; preds = %_RINvMNtCsj6eKBz9Db1c_4core5sliceSh11copy_withinINtNtNtB5_3ops5range5RangejEECs7ZUl82OSlxp_6rustls.exit.i
  %i.ap = sub nuw i64 %i.am, %.val10.i            ; 2 uses
  %i.aq = icmp eq i64 %i.ap, 0
  br i1 %i.aq, label %_RNvMs_NtNtNtCs7ZUl82OSlxp_6rustls4msgs8deframer7buffersNtB4_9Delocator16slice_from_range.exit.i._RNvMNtNtNtCs7ZUl82OSlxp_6rustls4msgs8deframer9handshakeNtB2_17HandshakeDeframer12coalesce_one.exit_crit_edge, label %.lr.ph.i

_RNvMs_NtNtNtCs7ZUl82OSlxp_6rustls4msgs8deframer7buffersNtB4_9Delocator16slice_from_range.exit.i._RNvMNtNtNtCs7ZUl82OSlxp_6rustls4msgs8deframer9handshakeNtB2_17HandshakeDeframer12coalesce_one.exit_crit_edge: ; preds = %_RNvMs_NtNtNtCs7ZUl82OSlxp_6rustls4msgs8deframer7buffersNtB4_9Delocator16slice_from_range.exit.i
  %.val3.pre = load i64, ptr %i.f, align 8
  br label %_RNvMNtNtNtCs7ZUl82OSlxp_6rustls4msgs8deframer9handshakeNtB2_17HandshakeDeframer12coalesce_one.exit

.lr.ph.i:                                         ; preds = %_RNvMs_NtNtNtCs7ZUl82OSlxp_6rustls4msgs8deframer7buffersNtB4_9Delocator16slice_from_range.exit.i
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 %.val10.i
  br label %bb.f

bb.f:                                             ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtNtCs7ZUl82OSlxp_6rustls4msgs8deframer9handshake12FragmentSpanE10insert_mutBM_.exit.i, %.lr.ph.i
  %.sroa.013.036.i = phi i64 [ 0, %.lr.ph.i ], [ %i.bg, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtNtCs7ZUl82OSlxp_6rustls4msgs8deframer9handshake12FragmentSpanE10insert_mutBM_.exit.i ] ; 2 uses
  %.sroa.5.035.i = phi ptr [ %i.ar, %.lr.ph.i ], [ %.sroa.5.1.i, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtNtCs7ZUl82OSlxp_6rustls4msgs8deframer9handshake12FragmentSpanE10insert_mutBM_.exit.i ] ; 3 uses
  %.sroa.9.034.i = phi i64 [ %i.ap, %.lr.ph.i ], [ %.sroa.9.1.i, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtNtCs7ZUl82OSlxp_6rustls4msgs8deframer9handshake12FragmentSpanE10insert_mutBM_.exit.i ] ; 4 uses
  %i.as = icmp ult i64 %.sroa.9.034.i, 4
  br i1 %i.as, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.5.035.i, i64 4
  %i.au = add nsw i64 %.sroa.9.034.i, -4          ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !155
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.5.035.i, i64 1
  call void @_RNvYNtNtNtCs7ZUl82OSlxp_6rustls4msgs5codec3u24NtB4_5Codec10read_bytesB8_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.av, i64 noundef 3), !noalias !162
  call void @llvm.experimental.noalias.scope.decl(metadata !163)
  %i.aw = load i8, ptr %i.b, align 8, !range !114, !alias.scope !163, !noalias !155, !noundef !4
  %.not.i.i.i.i = icmp eq i8 %i.aw, -1
  br i1 %.not.i.i.i.i, label %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultNtNtNtCs7ZUl82OSlxp_6rustls4msgs5codec3u24NtNtBN_5error14InvalidMessageE6unwrapBN_.exit.i.i.i, label %bb.h, !prof !115

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !166
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !155
  call void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @5, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @574) #29, !noalias !167
  unreachable

_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultNtNtNtCs7ZUl82OSlxp_6rustls4msgs5codec3u24NtNtBN_5error14InvalidMessageE6unwrapBN_.exit.i.i.i: ; preds = %bb.g
  %i.ax = load i32, ptr %i.l, align 4, !alias.scope !163, !noalias !155, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !155
  %i.ay = zext i32 %i.ax to i64                   ; 6 uses
  %i.az = icmp ugt i64 %i.au, %i.ay
  br i1 %i.az, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultNtNtNtCs7ZUl82OSlxp_6rustls4msgs5codec3u24NtNtBN_5error14InvalidMessageE6unwrapBN_.exit.i.i.i
  %i.ba = sub nuw nsw i64 %i.au, %i.ay
  %i.bb = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.ay
  %i.bc = add nuw nsw i64 %i.ay, 4
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultNtNtNtCs7ZUl82OSlxp_6rustls4msgs5codec3u24NtNtBN_5error14InvalidMessageE6unwrapBN_.exit.i.i.i, %bb.f
  %.sroa.9.1.i = phi i64 [ 0, %bb.f ], [ %i.ba, %bb.i ], [ 0, %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultNtNtNtCs7ZUl82OSlxp_6rustls4msgs5codec3u24NtNtBN_5error14InvalidMessageE6unwrapBN_.exit.i.i.i ] ; 2 uses
  %.sroa.5.1.i = phi ptr [ inttoptr (i64 1 to ptr), %bb.f ], [ %i.bb, %bb.i ], [ inttoptr (i64 1 to ptr), %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultNtNtNtCs7ZUl82OSlxp_6rustls4msgs5codec3u24NtNtBN_5error14InvalidMessageE6unwrapBN_.exit.i.i.i ]
  %.sroa.01.0.i.sink.i.i = phi i64 [ %.sroa.9.034.i, %bb.f ], [ %i.bc, %bb.i ], [ %.sroa.9.034.i, %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultNtNtNtCs7ZUl82OSlxp_6rustls4msgs5codec3u24NtNtBN_5error14InvalidMessageE6unwrapBN_.exit.i.i.i ]
  %.sroa.8.0.ph.i.i = phi i64 [ undef, %bb.f ], [ %i.ay, %bb.i ], [ %i.ay, %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultNtNtNtCs7ZUl82OSlxp_6rustls4msgs5codec3u24NtNtBN_5error14InvalidMessageE6unwrapBN_.exit.i.i.i ]
  %.sroa.0.0.ph.i.i = phi i64 [ 0, %bb.f ], [ 1, %bb.i ], [ 1, %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultNtNtNtCs7ZUl82OSlxp_6rustls4msgs5codec3u24NtNtBN_5error14InvalidMessageE6unwrapBN_.exit.i.i.i ]
  %i.bd = ptrtoint ptr %.sroa.5.035.i to i64
  %i.be = sub i64 %i.bd, %i.m                     ; 2 uses
  %i.bf = add i64 %.sroa.01.0.i.sink.i.i, %i.be
end_hunk_0
begin_hunk_1_@_RNvXNtNtCs7ZUl82OSlxp_6rustls4msgs5alertNtB2_19AlertMessagePayloadNtNtB4_5codec5Codec6encode:bb.a
  br label %_RNvXs0_NtCs7ZUl82OSlxp_6rustls5enumsNtB5_16AlertDescriptionNtNtNtB7_4msgs5codec5Codec6encode.exit

bb.j:                                             ; preds = %bb.a
  br label %_RNvXs0_NtCs7ZUl82OSlxp_6rustls5enumsNtB5_16AlertDescriptionNtNtNtB7_4msgs5codec5Codec6encode.exit

bb.k:                                             ; preds = %bb.a
  br label %_RNvXs0_NtCs7ZUl82OSlxp_6rustls5enumsNtB5_16AlertDescriptionNtNtNtB7_4msgs5codec5Codec6encode.exit

bb.l:                                             ; preds = %bb.a
  br label %_RNvXs0_NtCs7ZUl82OSlxp_6rustls5enumsNtB5_16AlertDescriptionNtNtNtB7_4msgs5codec5Codec6encode.exit

bb.m:                                             ; preds = %bb.a
  br label %_RNvXs0_NtCs7ZUl82OSlxp_6rustls5enumsNtB5_16AlertDescriptionNtNtNtB7_4msgs5codec5Codec6encode.exit

bb.n:                                             ; preds = %bb.a
  br label %_RNvXs0_NtCs7ZUl82OSlxp_6rustls5enumsNtB5_16AlertDescriptionNtNtNtB7_4msgs5codec5Codec6encode.exit

bb.o:                                             ; preds = %bb.a
  br label %_RNvXs0_NtCs7ZUl82OSlxp_6rustls5enumsNtB5_16AlertDescriptionNtNtNtB7_4msgs5codec5Codec6encode.exit

bb.p:                                             ; preds = %bb.a
  br label %_RNvXs0_NtCs7ZUl82OSlxp_6rustls5enumsNtB5_16AlertDescriptionNtNtNtB7_4msgs5codec5Codec6encode.exit

bb.q:                                             ; preds = %bb.a
  br label %_RNvXs0_NtCs7ZUl82OSlxp_6rustls5enumsNtB5_16AlertDescriptionNtNtNtB7_4msgs5codec5Codec6encode.exit

bb.r:                                             ; preds = %bb.a
  br label %_RNvXs0_NtCs7ZUl82OSlxp_6rustls5enumsNtB5_16AlertDescriptionNtNtNtB7_4msgs5codec5Codec6encode.exit

bb.s:                                             ; preds = %bb.a
  br label %_RNvXs0_NtCs7ZUl82OSlxp_6rustls5enumsNtB5_16AlertDescriptionNtNtNtB7_4msgs5codec5Codec6encode.exit

bb.t:                                             ; preds = %bb.a
  br label %_RNvXs0_NtCs7ZUl82OSlxp_6rustls5enumsNtB5_16AlertDescriptionNtNtNtB7_4msgs5codec5Codec6encode.exit

bb.u:                                             ; preds = %bb.a
  br label %_RNvXs0_NtCs7ZUl82OSlxp_6rustls5enumsNtB5_16AlertDescriptionNtNtNtB7_4msgs5codec5Codec6encode.exit

bb.v:                                             ; preds = %bb.a
  br label %_RNvXs0_NtCs7ZUl82OSlxp_6rustls5enumsNtB5_16AlertDescriptionNtNtNtB7_4msgs5codec5Codec6encode.exit

bb.w:                                             ; preds = %bb.a
  br label %_RNvXs0_NtCs7ZUl82OSlxp_6rustls5enumsNtB5_16AlertDescriptionNtNtNtB7_4msgs5codec5Codec6encode.exit

bb.x:                                             ; preds = %bb.a
  br label %_RNvXs0_NtCs7ZUl82OSlxp_6rustls5enumsNtB5_16AlertDescriptionNtNtNtB7_4msgs5codec5Codec6encode.exit

bb.y:                                             ; preds = %bb.a
  br label %_RNvXs0_NtCs7ZUl82OSlxp_6rustls5enumsNtB5_16AlertDescriptionNtNtNtB7_4msgs5codec5Codec6encode.exit

bb.z:                                             ; preds = %bb.a
  br label %_RNvXs0_NtCs7ZUl82OSlxp_6rustls5enumsNtB5_16AlertDescriptionNtNtNtB7_4msgs5codec5Codec6encode.exit

bb.aa:                                            ; preds = %bb.a
  br label %_RNvXs0_NtCs7ZUl82OSlxp_6rustls5enumsNtB5_16AlertDescriptionNtNtNtB7_4msgs5codec5Codec6encode.exit

bb.ab:                                            ; preds = %bb.a
  br label %_RNvXs0_NtCs7ZUl82OSlxp_6rustls5enumsNtB5_16AlertDescriptionNtNtNtB7_4msgs5codec5Codec6encode.exit

bb.ac:                                            ; preds = %bb.a
  br label %_RNvXs0_NtCs7ZUl82OSlxp_6rustls5enumsNtB5_16AlertDescriptionNtNtNtB7_4msgs5codec5Codec6encode.exit

bb.ad:                                            ; preds = %bb.a
  br label %_RNvXs0_NtCs7ZUl82OSlxp_6rustls5enumsNtB5_16AlertDescriptionNtNtNtB7_4msgs5codec5Codec6encode.exit

bb.ae:                                            ; preds = %bb.a
  br label %_RNvXs0_NtCs7ZUl82OSlxp_6rustls5enumsNtB5_16AlertDescriptionNtNtNtB7_4msgs5codec5Codec6encode.exit

bb.af:                                            ; preds = %bb.a
  br label %_RNvXs0_NtCs7ZUl82OSlxp_6rustls5enumsNtB5_16AlertDescriptionNtNtNtB7_4msgs5codec5Codec6encode.exit

bb.ag:                                            ; preds = %bb.a
  br label %_RNvXs0_NtCs7ZUl82OSlxp_6rustls5enumsNtB5_16AlertDescriptionNtNtNtB7_4msgs5codec5Codec6encode.exit

bb.ah:                                            ; preds = %bb.a
  br label %_RNvXs0_NtCs7ZUl82OSlxp_6rustls5enumsNtB5_16AlertDescriptionNtNtNtB7_4msgs5codec5Codec6encode.exit

bb.ai:                                            ; preds = %bb.a
  br label %_RNvXs0_NtCs7ZUl82OSlxp_6rustls5enumsNtB5_16AlertDescriptionNtNtNtB7_4msgs5codec5Codec6encode.exit

bb.aj:                                            ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.e = load i8, ptr %i.d, align 1, !alias.scope !205, !noalias !211
  br label %_RNvXs0_NtCs7ZUl82OSlxp_6rustls5enumsNtB5_16AlertDescriptionNtNtNtB7_4msgs5codec5Codec6encode.exit

_RNvXs0_NtCs7ZUl82OSlxp_6rustls5enumsNtB5_16AlertDescriptionNtNtNtB7_4msgs5codec5Codec6encode.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u, %bb.v, %bb.w, %bb.x, %bb.y, %bb.z, %bb.aa, %bb.ab, %bb.ac, %bb.ad, %bb.ae, %bb.af, %bb.ag, %bb.ah, %bb.ai, %bb.aj
  %.sroa.02.0.i.i = phi i8 [ %i.e, %bb.aj ], [ 10, %bb.b ], [ 20, %bb.c ], [ 21, %bb.d ], [ 22, %bb.e ], [ 30, %bb.f ], [ 40, %bb.g ], [ 41, %bb.h ], [ 42, %bb.i ], [ 43, %bb.j ], [ 44, %bb.k ], [ 45, %bb.l ], [ 46, %bb.m ], [ 47, %bb.n ], [ 48, %bb.o ], [ 49, %bb.p ], [ 50, %bb.q ], [ 51, %bb.r ], [ 60, %bb.s ], [ 70, %bb.t ], [ 71, %bb.u ], [ 80, %bb.v ], [ 86, %bb.w ], [ 90, %bb.x ], [ 100, %bb.y ], [ 109, %bb.z ], [ 110, %bb.aa ], [ 111, %bb.ab ], [ 112, %bb.ac ], [ 113, %bb.ad ], [ 114, %bb.ae ], [ 115, %bb.af ], [ 116, %bb.ag ], [ 120, %bb.ah ], [ 121, %bb.ai ], [ %i.c, %bb.a ]
  store i8 %.sroa.02.0.i.i, ptr %i.a, align 1, !noalias !208
  call void @_RNvXs_NtNtCs7ZUl82OSlxp_6rustls4msgs5codechNtB4_5Codec6encode(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !noalias !205
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !208
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rsNtB2_7AwsLcRsNtB4_12SecureRandom4fill(ptr noalias nofree nonnull readonly captures(none) %0, ptr noalias nofree noundef nonnull %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvNtCs222MioR9bx1_9aws_lc_rs4rand4fill(ptr noalias nofree noundef nonnull %1, i64 noundef %2)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rsNtB2_7AwsLcRsNtB4_12SecureRandom4fips(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, i64 } @_RNvCs222MioR9bx1_9aws_lc_rs13try_fips_mode()
  %i.b = extractvalue { ptr, i64 } %i.a, 0
  %i.c = icmp eq ptr %i.b, null
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvXNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs2kxNtB2_7KxGroupNtB6_16SupportedKxGroup11ffdhe_group(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 8)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #2 {
bb.a:
  store ptr null, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs2kxNtB2_7KxGroupNtB6_16SupportedKxGroup4fips(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load i8, ptr %i.a, align 4, !range !20, !noundef !4
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call { ptr, i64 } @_RNvCs222MioR9bx1_9aws_lc_rs13try_fips_mode()
  %i.e = extractvalue { ptr, i64 } %i.d, 0
  %i.f = icmp eq ptr %i.e, null
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i1 [ %i.f, %bb.b ], [ false, %bb.a ]
  ret i1 %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal { i16, i16 } @_RNvXNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs2kxNtB2_7KxGroupNtB6_16SupportedKxGroup4name(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i16, ptr %i.a, align 8, !range !212, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.d = load i16, ptr %i.c, align 2
  %i.e = insertvalue { i16, i16 } poison, i16 %i.b, 0
  %i.f = insertvalue { i16, i16 } %i.e, i16 %i.d, 1
  ret { i16, i16 } %i.f
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs2kxNtB2_7KxGroupNtB6_16SupportedKxGroup5start(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %.sroa.8 = alloca [144 x i8], align 8           ; 4 uses
  %i.b = alloca [160 x i8], align 8               ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %.val = load i8, ptr %i.d, align 1, !range !213, !noundef !4 ; 3 uses
  %i.e = icmp eq i8 %.val, 3
  br i1 %i.e, label %bb.b, label %switch.lookup

bb.b:                                             ; preds = %bb.a
  %i.f = tail call { i64, ptr } @_RNvNtCs222MioR9bx1_9aws_lc_rs9agreement15generate_x25519() ; 2 uses
  %i.g = extractvalue { i64, ptr } %i.f, 0
  %i.h = trunc nuw i64 %i.g to i1
  br i1 %i.h, label %bb.f, label %bb.g

switch.lookup:                                    ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.i = zext nneg i8 %.val to i64
  %switch.gep = getelementptr inbounds nuw [2 x i8], ptr @switch.table._RNvXNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs2kxNtB2_7KxGroupNtB6_16SupportedKxGroup5start, i64 %i.i
  %switch.load = load i16, ptr %switch.gep, align 2
  %switch.ext = zext i16 %switch.load to i32
  store i32 %switch.ext, ptr %i.a, align 4
  %i.j = call { i64, ptr } @_RINvMs1_NtCs222MioR9bx1_9aws_lc_rs8evp_pkeyINtNtB8_3ptr14ManagedPointerONtNtCs9y7goCcaNJZ_10aws_lc_sys16universal_crypto11evp_pkey_stE8generateNCNvNtB8_2ec16evp_key_generate0ECs7ZUl82OSlxp_6rustls(i32 noundef 408, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) %i.a) ; 4 uses
  %i.k = extractvalue { i64, ptr } %i.j, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.l = trunc nuw i64 %i.k to i1
  br i1 %i.l, label %bb.f, label %bb.c

default.unreachable:                              ; preds = %bb.c
  unreachable

bb.c:                                             ; preds = %switch.lookup
  switch i8 %.val, label %default.unreachable [
    i8 0, label %bb.g
    i8 1, label %bb.d
    i8 2, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  br label %bb.g

bb.f:                                             ; preds = %bb.b, %switch.lookup
  store i8 15, ptr %0, align 8
  br label %bb.m

bb.g:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %.pn.i = phi { i64, ptr } [ %i.j, %bb.e ], [ %i.f, %bb.b ], [ %i.j, %bb.d ], [ %i.j, %bb.c ]
  %.sroa.014.0.i = phi i64 [ 2, %bb.e ], [ 3, %bb.b ], [ 1, %bb.d ], [ 0, %bb.c ] ; 2 uses
  %.sroa.8.0.i = extractvalue { i64, ptr } %.pn.i, 1 ; 5 uses
  store i64 %.sroa.014.0.i, ptr %i.c, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %.sroa.8.0.i, ptr %i.m, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvMs_NtNtCs222MioR9bx1_9aws_lc_rs9agreement9ephemeralNtB4_19EphemeralPrivateKey18compute_public_key(ptr noalias nofree noundef nonnull sret([160 x i8]) align 8 captures(address) dereferenceable(160) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.c)
          to label %bb.h unwind label %bb.o

.body:                                            ; preds = %bb.k
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @"\01aws_lc_0_43_0_EVP_PKEY_free"(ptr noundef %.sroa.8.0.i) #26, !noalias !214
  br label %bb.n

bb.h:                                             ; preds = %bb.g
  %i.o = load i64, ptr %i.b, align 8, !range !217, !noundef !4 ; 2 uses
  %i.p = icmp eq i64 %i.o, -1
  br i1 %i.p, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i8 15, ptr %0, align 8
  call void @"\01aws_lc_0_43_0_EVP_PKEY_free"(ptr noundef %.sroa.8.0.i) #26
  br label %bb.m

bb.j:                                             ; preds = %bb.h
  %.sroa.430.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.430.0.copyload = load ptr, ptr %.sroa.430.0..sroa_idx, align 8 ; 2 uses
  %.sroa.531.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %.sroa.8, ptr noundef nonnull align 8 dereferenceable(144) %.sroa.531.0..sroa_idx, i64 144, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.r = load <2 x i16>, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !nonnull !4, !noundef !4
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !noalias !218
  %i.u = call noundef align 8 dereferenceable_or_null(200) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 16, 201) 200, i64 noundef 8) #26, !noalias !218 ; 10 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.k, label %bb.l, !prof !148

bb.k:                                             ; preds = %bb.j
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 200) #30
          to label %.noexc unwind label %.body

.noexc:                                           ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.j
  store i64 %.sroa.014.0.i, ptr %i.u, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %.sroa.8.0.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store i64 %i.o, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  store ptr %.sroa.430.0.copyload, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %.sroa.8.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(144) %.sroa.8, i64 144, i1 false)
  %.sroa.819.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 176
  store ptr %i.d, ptr %.sroa.819.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 184
  store ptr %i.t, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 192
  store <2 x i16> %i.r, ptr %.sroa.10.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.u, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @540, ptr %i.x, align 8
  store i8 -1, ptr %0, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.f, %bb.i, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.n:                                             ; preds = %.body, %bb.o
  %.sroa.430.0.copyload.sink = phi ptr [ %.sroa.430.0.copyload, %.body ], [ %.sroa.8.0.i, %bb.o ]
  %eh.lpad-body36 = phi { ptr, i32 } [ %i.n, %.body ], [ %i.y, %bb.o ]
  call void @"\01aws_lc_0_43_0_EVP_PKEY_free"(ptr noundef %.sroa.430.0.copyload.sink) #26
  resume { ptr, i32 } %eh.lpad-body36

bb.o:                                             ; preds = %bb.g
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.n
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i64 @_RNvXNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4hashNtB2_4HashNtNtB6_4hash4Hash10output_len(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !62, !noundef !4
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !4
  ret i64 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal { i8, i8 } @_RNvXNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4hashNtB2_4HashNtNtB6_4hash4Hash9algorithm(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i8, ptr %i.a, align 8, !range !221, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.d = load i8, ptr %i.c, align 1
  %i.e = insertvalue { i8, i8 } poison, i8 %i.b, 0
  %i.f = insertvalue { i8, i8 } %i.e, i8 %i.d, 1
  ret { i8, i8 } %i.f
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs5tls12NtB2_12GcmAlgorithmNtNtB6_6cipher18Tls12AeadAlgorithm12extract_keys(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(40) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef range(i64 0, -9223372036854775808) %4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %5, i64 noundef range(i64 0, -9223372036854775808) %6) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [12 x i8], align 1                ; 6 uses
  %.sroa.5 = alloca [12 x i8], align 1            ; 4 uses
  %.sroa.7 = alloca [43 x i8], align 1            ; 4 uses
  %i.b = alloca [12 x i8], align 1                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !222
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.a, i8 0, i64 12, i1 false), !noalias !222
  invoke void @_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implhECs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull %i.a, i64 noundef 4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef range(i64 0, -9223372036854775808) %4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @534)
          to label %.noexc unwind label %bb.b

.noexc:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  invoke void @_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implhECs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull %i.c, i64 noundef 8, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %5, i64 noundef range(i64 0, -9223372036854775808) %6, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @535)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %.noexc, %bb.a, %bb.d
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs8_NtNtCs7ZUl82OSlxp_6rustls6crypto6cipherNtB5_7AeadKeyNtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %2)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6crypto6cipher7AeadKeyEBH_.exit unwind label %bb.h

bb.c:                                             ; preds = %.noexc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.b, ptr noundef nonnull align 1 dereferenceable(12) %i.a, i64 12, i1 false), !noalias !227
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !222
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  %i.e = load ptr, ptr %1, align 8, !nonnull !4, !align !62, !noundef !4
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load i64, ptr %i.f, align 8, !noundef !4
  switch i64 %i.g, label %bb.d [
    i64 16, label %bb.f
    i64 32, label %bb.e
  ], !prof !228

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @541, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @542) #30
          to label %bb.g unwind label %bb.b

bb.e:                                             ; preds = %bb.c
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e
  %.sroa.0.0 = phi i8 [ 1, %bb.e ], [ 0, %bb.c ]
  %.sroa.7.16..sroa_idx1 = getelementptr inbounds nuw i8, ptr %.sroa.7, i64 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(40) %.sroa.7.16..sroa_idx1, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %.sroa.5, ptr noundef nonnull align 1 dereferenceable(12) %i.b, i64 12, i1 false)
  store i8 %.sroa.0.0, ptr %0, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(12) %.sroa.5, i64 12, i1 false)
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(43) %.sroa.7.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(43) %.sroa.7, i64 43, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.g:                                             ; preds = %bb.d
  unreachable

bb.h:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6crypto6cipher7AeadKeyEBH_.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_RNvXNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs5tls12NtB2_12GcmAlgorithmNtNtB6_6cipher18Tls12AeadAlgorithm15key_block_shape(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #9 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !4, !align !62, !noundef !4
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !4
  store i64 %i.c, ptr %0, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 4, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 8, ptr %i.e, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs5tls12NtB2_12GcmAlgorithmNtNtB6_6cipher18Tls12AeadAlgorithm4fips(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, i64 } @_RNvCs222MioR9bx1_9aws_lc_rs13try_fips_mode()
  %i.b = extractvalue { ptr, i64 } %i.a, 0
end_hunk_1
