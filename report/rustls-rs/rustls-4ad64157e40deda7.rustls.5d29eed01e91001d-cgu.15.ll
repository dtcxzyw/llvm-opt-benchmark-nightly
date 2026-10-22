Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rustls-rs/original/rustls-4ad64157e40deda7.rustls.5d29eed01e91001d-cgu.15?download=true
inline.NumInlined: 694
inline.NumDeleted: 368
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_RNvXs_NtNtCs7ZUl82OSlxp_6rustls6server5handyNtB4_20NeverProducesTicketsNtNtB6_11server_conn15ProducesTickets7decrypt:bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvXs_NtNtCs7ZUl82OSlxp_6rustls6server5handyNtB4_20NeverProducesTicketsNtNtB6_11server_conn15ProducesTickets7enabled(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #8 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvXs_NtNtCs7ZUl82OSlxp_6rustls6server5handyNtB4_20NeverProducesTicketsNtNtB6_11server_conn15ProducesTickets7encrypt(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noalias nofree nonnull readonly captures(none) %1, ptr noalias nofree nonnull readonly captures(none) %2, i64 range(i64 0, -9223372036854775808) %3) unnamed_addr #14 {
bb.a:
  store i64 -1, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef i32 @_RNvXs_NtNtCs7ZUl82OSlxp_6rustls6server5handyNtB4_20NeverProducesTicketsNtNtB6_11server_conn15ProducesTickets8lifetime(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #8 {
bb.a:
  ret i32 0
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs_NtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4signNtB4_13RsaSigningKeyNtNtB8_6signer10SigningKey10public_key(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  %i.c = alloca [24 x i8], align 8                ; 11 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.e = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1299)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1300
  call void @_RNvNtCs7ZUl82OSlxp_6rustls4x50916wrap_in_sequence(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @116, i64 noundef 13), !noalias !1300
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1300
  %.val.i.i = load ptr, ptr %i.f, align 8, !alias.scope !1299, !nonnull !5, !noundef !5
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.val1.i.i = load i64, ptr %i.g, align 8, !alias.scope !1299, !noundef !5
  invoke void @_RNvNtCs7ZUl82OSlxp_6rustls4x50918wrap_in_bit_string(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i.i, i64 noundef %.val1.i.i)
          to label %bb.c unwind label %bb.b, !noalias !1300

.body.i:                                          ; preds = %bb.g, %bb.e, %bb.b
  %.pn.i = phi { ptr, i32 } [ %i.s, %bb.e ], [ %i.h, %bb.b ], [ %i.v, %bb.g ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #32
          to label %common.resume.i unwind label %bb.m, !noalias !1300

bb.b:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs7ZUl82OSlxp_6rustls.exit.i, %bb.h, %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !noalias !1300, !nonnull !5, !noundef !5
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.l = load i64, ptr %i.k, align 8, !noalias !1300, !noundef !5 ; 4 uses
  invoke void @_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.l)
          to label %.noexc.i unwind label %bb.e, !noalias !1300

.noexc.i:                                         ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 4 uses
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !1301, !noalias !1300, !noundef !5 ; 3 uses
  %i.o = icmp sgt i64 %i.n, -1
  call void @llvm.assume(i1 %i.o)
  %.not.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %.noexc.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !1301, !noalias !1300, !nonnull !5, !noundef !5
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.n
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.r, ptr nonnull readonly align 1 %i.j, i64 %i.l, i1 false), !noalias !1300
  %.pre.i.i = load i64, ptr %i.m, align 8, !alias.scope !1301, !noalias !1300
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #32
          to label %.body.i unwind label %bb.m, !noalias !1300

bb.f:                                             ; preds = %bb.d, %.noexc.i
  %i.t = phi i64 [ %.pre.i.i, %bb.d ], [ %i.n, %.noexc.i ]
  %i.u = add i64 %i.t, %i.l
  store i64 %i.u, ptr %i.m, align 8, !alias.scope !1301, !noalias !1300
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.h unwind label %bb.g, !noalias !1300

bb.g:                                             ; preds = %bb.f
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.body.i unwind label %bb.i, !noalias !1300

bb.h:                                             ; preds = %bb.f
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs7ZUl82OSlxp_6rustls.exit.i unwind label %bb.b, !noalias !1300

bb.i:                                             ; preds = %bb.g
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29, !noalias !1300
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs7ZUl82OSlxp_6rustls.exit.i: ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1300
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1300
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !noalias !1300, !nonnull !5, !noundef !5
  %i.z = load i64, ptr %i.m, align 8, !noalias !1300, !noundef !5
  invoke void @_RNvNtCs7ZUl82OSlxp_6rustls4x50916wrap_in_sequence(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.y, i64 noundef %i.z)
          to label %bb.j unwind label %bb.b, !noalias !1300

bb.j:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs7ZUl82OSlxp_6rustls.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !1299
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1300
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtNtCs7ZUl82OSlxp_6rustls6crypto6signer18public_key_to_spkiRNtNtNtCs222MioR9bx1_9aws_lc_rs3rsa3key9PublicKeyEB6_.exit unwind label %bb.k, !noalias !1300

bb.k:                                             ; preds = %bb.j
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %common.resume.i unwind label %bb.l, !noalias !1300

bb.l:                                             ; preds = %bb.k
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29, !noalias !1300
  unreachable

common.resume.i:                                  ; preds = %bb.k, %.body.i
  %common.resume.op.i = phi { ptr, i32 } [ %i.aa, %bb.k ], [ %.pn.i, %.body.i ]
  resume { ptr, i32 } %common.resume.op.i

bb.m:                                             ; preds = %bb.e, %.body.i
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29, !noalias !1300
  unreachable

_RINvNtNtCs7ZUl82OSlxp_6rustls6crypto6signer18public_key_to_spkiRNtNtNtCs222MioR9bx1_9aws_lc_rs3rsa3key9PublicKeyEB6_.exit: ; preds = %bb.j
  call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c), !noalias !1300
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1300
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void
}

; Function Attrs: nonlazybind uwtable
define { ptr, ptr } @_RNvXs_NtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4signNtB4_13RsaSigningKeyNtNtB8_6signer10SigningKey13choose_scheme(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %1, i64 noundef range(i64 0, 2305843009213693952) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 8 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = tail call noundef zeroext i1 @_RNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpNtNtCs7ZUl82OSlxp_6rustls5enums15SignatureSchemeNtB5_13SliceContains14slice_containsBG_(ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(4) @73, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %1, i64 noundef range(i64 0, 2305843009213693952) %2), !noalias !1316
  br i1 %i.c, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCs7ZUl82OSlxp_6rustls5enums15SignatureSchemeENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvXs_NtNtNtBU_6crypto9aws_lc_rs4signNtB2u_13RsaSigningKeyNtNtB2y_6signer10SigningKey13choose_scheme0EBU_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpNtNtCs7ZUl82OSlxp_6rustls5enums15SignatureSchemeNtB5_13SliceContains14slice_containsBG_(ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(4) getelementptr inbounds nuw (i8, ptr @73, i64 4), ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %1, i64 noundef range(i64 0, 2305843009213693952) %2), !noalias !1316
  br i1 %i.d, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCs7ZUl82OSlxp_6rustls5enums15SignatureSchemeENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvXs_NtNtNtBU_6crypto9aws_lc_rs4signNtB2u_13RsaSigningKeyNtNtB2y_6signer10SigningKey13choose_scheme0EBU_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call noundef zeroext i1 @_RNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpNtNtCs7ZUl82OSlxp_6rustls5enums15SignatureSchemeNtB5_13SliceContains14slice_containsBG_(ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(4) getelementptr inbounds nuw (i8, ptr @73, i64 8), ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %1, i64 noundef range(i64 0, 2305843009213693952) %2), !noalias !1316
  br i1 %i.e, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCs7ZUl82OSlxp_6rustls5enums15SignatureSchemeENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvXs_NtNtNtBU_6crypto9aws_lc_rs4signNtB2u_13RsaSigningKeyNtNtB2y_6signer10SigningKey13choose_scheme0EBU_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = tail call noundef zeroext i1 @_RNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpNtNtCs7ZUl82OSlxp_6rustls5enums15SignatureSchemeNtB5_13SliceContains14slice_containsBG_(ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(4) getelementptr inbounds nuw (i8, ptr @73, i64 12), ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %1, i64 noundef range(i64 0, 2305843009213693952) %2), !noalias !1316
  br i1 %i.f, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCs7ZUl82OSlxp_6rustls5enums15SignatureSchemeENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvXs_NtNtNtBU_6crypto9aws_lc_rs4signNtB2u_13RsaSigningKeyNtNtB2y_6signer10SigningKey13choose_scheme0EBU_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = tail call noundef zeroext i1 @_RNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpNtNtCs7ZUl82OSlxp_6rustls5enums15SignatureSchemeNtB5_13SliceContains14slice_containsBG_(ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(4) getelementptr inbounds nuw (i8, ptr @73, i64 16), ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %1, i64 noundef range(i64 0, 2305843009213693952) %2), !noalias !1316
  br i1 %i.g, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCs7ZUl82OSlxp_6rustls5enums15SignatureSchemeENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvXs_NtNtNtBU_6crypto9aws_lc_rs4signNtB2u_13RsaSigningKeyNtNtB2y_6signer10SigningKey13choose_scheme0EBU_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = tail call noundef zeroext i1 @_RNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpNtNtCs7ZUl82OSlxp_6rustls5enums15SignatureSchemeNtB5_13SliceContains14slice_containsBG_(ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(4) getelementptr inbounds nuw (i8, ptr @73, i64 20), ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %1, i64 noundef range(i64 0, 2305843009213693952) %2), !noalias !1316
  br i1 %i.h, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCs7ZUl82OSlxp_6rustls5enums15SignatureSchemeENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvXs_NtNtNtBU_6crypto9aws_lc_rs4signNtB2u_13RsaSigningKeyNtNtB2y_6signer10SigningKey13choose_scheme0EBU_.exit, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCs7ZUl82OSlxp_6rustls5enums15SignatureSchemeENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvXs_NtNtNtBU_6crypto9aws_lc_rs4signNtB2u_13RsaSigningKeyNtNtB2y_6signer10SigningKey13choose_scheme0EBU_.exit.thread

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCs7ZUl82OSlxp_6rustls5enums15SignatureSchemeENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvXs_NtNtNtBU_6crypto9aws_lc_rs4signNtB2u_13RsaSigningKeyNtNtB2y_6signer10SigningKey13choose_scheme0EBU_.exit: ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.ptr.lcssa = phi ptr [ @73, %bb.a ], [ getelementptr inbounds nuw (i8, ptr @73, i64 4), %bb.b ], [ getelementptr inbounds nuw (i8, ptr @73, i64 8), %bb.c ], [ getelementptr inbounds nuw (i8, ptr @73, i64 12), %bb.d ], [ getelementptr inbounds nuw (i8, ptr @73, i64 16), %bb.e ], [ getelementptr inbounds nuw (i8, ptr @73, i64 20), %bb.f ] ; 2 uses
  %i.i = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 5 uses
  %i.j = atomicrmw add ptr %i.i, i64 1 monotonic, align 8
  %i.k = icmp slt i64 %i.j, 0
  br i1 %i.k, label %bb.q, label %bb.g

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCs7ZUl82OSlxp_6rustls5enums15SignatureSchemeENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvXs_NtNtNtBU_6crypto9aws_lc_rs4signNtB2u_13RsaSigningKeyNtNtB2y_6signer10SigningKey13choose_scheme0EBU_.exit.thread: ; preds = %bb.f, %_RNvMs1_NtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4signNtB5_9RsaSigner3new.exit
  %.sroa.0.0 = phi ptr [ %i.u, %_RNvMs1_NtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4signNtB5_9RsaSigner3new.exit ], [ null, %bb.f ]
  %i.l = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0
  %i.m = insertvalue { ptr, ptr } %i.l, ptr @46, 1
  ret { ptr, ptr } %i.m

bb.g:                                             ; preds = %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCs7ZUl82OSlxp_6rustls5enums15SignatureSchemeENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvXs_NtNtNtBU_6crypto9aws_lc_rs4signNtB2u_13RsaSigningKeyNtNtB2y_6signer10SigningKey13choose_scheme0EBU_.exit
  %i.n = load <2 x i16>, ptr %.ptr.lcssa, align 2
  %i.o = load i16, ptr %.ptr.lcssa, align 2, !range !15, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.i, ptr %i.b, align 8
  %switch.tableidx = add nsw i16 %i.o, -2         ; 3 uses
  %i.p = icmp ult i16 %switch.tableidx, 9
  %switch.shifted = lshr i16 469, %switch.tableidx
  %switch.lobit = trunc i16 %switch.shifted to i1
  %or.cond = select i1 %i.p, i1 %switch.lobit, i1 false, !prof !1317
  br i1 %or.cond, label %switch.lookup, label %bb.h, !prof !1317

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @47, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @49) #33
          to label %bb.m unwind label %bb.n

switch.lookup:                                    ; preds = %bb.g
  %i.q = zext nneg i16 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs_NtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4signNtB4_13RsaSigningKeyNtNtB8_6signer10SigningKey13choose_scheme, i64 %i.q
  %switch.load = load ptr, ptr %switch.gep, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.i, ptr %i.a, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store <2 x i16> %i.n, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %switch.load, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @34, ptr %i.t, align 8
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #31, !noalias !1318
  %i.u = tail call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 16, 81) 32, i64 noundef 8) #31, !noalias !1318 ; 3 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.i, label %_RNvMs1_NtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4signNtB5_9RsaSigner3new.exit, !prof !14

bb.i:                                             ; preds = %switch.lookup
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #33
          to label %.noexc.i unwind label %bb.j

.noexc.i:                                         ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %bb.i
  %i.w = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.x = atomicrmw add ptr %i.i, i64 -1 release, align 8, !noalias !1319
  %i.y = icmp eq i64 %i.x, 1
  br i1 %i.y, label %bb.k, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs222MioR9bx1_9aws_lc_rs3rsa3key7KeyPairEECs7ZUl82OSlxp_6rustls.exit.i

bb.k:                                             ; preds = %bb.j
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs222MioR9bx1_9aws_lc_rs3rsa3key7KeyPairE9drop_slowCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a) #30
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs222MioR9bx1_9aws_lc_rs3rsa3key7KeyPairEECs7ZUl82OSlxp_6rustls.exit.i unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29
  unreachable

bb.m:                                             ; preds = %bb.h
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs222MioR9bx1_9aws_lc_rs3rsa3key7KeyPairEECs7ZUl82OSlxp_6rustls.exit.i: ; preds = %bb.o, %bb.n, %bb.k, %bb.j
  %eh.lpad-body7.i = phi { ptr, i32 } [ %i.aa, %bb.n ], [ %i.aa, %bb.o ], [ %i.w, %bb.j ], [ %i.w, %bb.k ]
  resume { ptr, i32 } %eh.lpad-body7.i

bb.n:                                             ; preds = %bb.h
  %i.aa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ab = atomicrmw add ptr %i.i, i64 -1 release, align 8, !noalias !1320
  %i.ac = icmp eq i64 %i.ab, 1
  br i1 %i.ac, label %bb.o, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs222MioR9bx1_9aws_lc_rs3rsa3key7KeyPairEECs7ZUl82OSlxp_6rustls.exit.i

bb.o:                                             ; preds = %bb.n
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs222MioR9bx1_9aws_lc_rs3rsa3key7KeyPairE9drop_slowCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #30
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs222MioR9bx1_9aws_lc_rs3rsa3key7KeyPairEECs7ZUl82OSlxp_6rustls.exit.i unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29
  unreachable

_RNvMs1_NtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4signNtB5_9RsaSigner3new.exit: ; preds = %switch.lookup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.u, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCs7ZUl82OSlxp_6rustls5enums15SignatureSchemeENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvXs_NtNtNtBU_6crypto9aws_lc_rs4signNtB2u_13RsaSigningKeyNtNtB2y_6signer10SigningKey13choose_scheme0EBU_.exit.thread

bb.q:                                             ; preds = %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCs7ZUl82OSlxp_6rustls5enums15SignatureSchemeENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvXs_NtNtNtBU_6crypto9aws_lc_rs4signNtB2u_13RsaSigningKeyNtNtB2y_6signer10SigningKey13choose_scheme0EBU_.exit
  tail call void @llvm.trap()
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { i8, i8 } @_RNvXs_NtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4signNtB4_13RsaSigningKeyNtNtB8_6signer10SigningKey9algorithm(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #8 {
bb.a:
  ret { i8, i8 } { i8 1, i8 undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvXs_NtNtNtCs7ZUl82OSlxp_6rustls6server5handy5cacheNtB4_24ServerSessionMemoryCacheNtNtB8_11server_conn20StoresServerSessions9can_cache(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #8 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtCs7ZUl82OSlxp_6rustls6suites20SupportedCipherSuiteEENtNtNtB8_6traits8iterator8Iterator9size_hintB1v_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #6 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5
  %i.b = ptrtoint ptr %.val1 to i64
  %i.c = ptrtoint ptr %.val to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = lshr exact i64 %i.d, 4                   ; 2 uses
  store i64 %i.e, ptr %0, align 8, !alias.scope !1323
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.f, align 8, !alias.scope !1323
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.e, ptr %i.g, align 8, !alias.scope !1323
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvXs_NtNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs2pq5mlkemNtB4_6ActiveNtBa_17ActiveKeyExchange11ffdhe_group(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 8)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #14 {
bb.a:
  store ptr null, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal { i16, i16 } @_RNvXs_NtNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs2pq5mlkemNtB4_6ActiveNtBa_17ActiveKeyExchange5group(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %0) unnamed_addr #13 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i16, ptr %i.a, align 8, !range !25, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 34
  %i.d = load i16, ptr %i.c, align 2
  %i.e = insertvalue { i16, i16 } poison, i16 %i.b, 0
  %i.f = insertvalue { i16, i16 } %i.e, i16 %i.d, 1
  ret { i16, i16 } %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal { ptr, i64 } @_RNvXs_NtNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs2pq5mlkemNtB4_6ActiveNtBa_17ActiveKeyExchange7pub_key(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %0) unnamed_addr #13 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !5
  %i.e = insertvalue { ptr, i64 } poison, ptr %i.b, 0
  %i.f = insertvalue { ptr, i64 } %i.e, i64 %i.d, 1
  ret { ptr, i64 } %i.f
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs_NtNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs2pq5mlkemNtB4_6ActiveNtBa_17ActiveKeyExchange8complete(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias noundef nonnull align 8 %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [16 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !5, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 -1, ptr %i.b, align 8
  %.sroa.424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %2, ptr %.sroa.424.0..sroa_idx, align 8
  %.sroa.525.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %3, ptr %.sroa.525.0..sroa_idx, align 8
  %i.f = invoke { ptr, i64 } @_RNvMs2_NtCs222MioR9bx1_9aws_lc_rs3kemNtB5_16DecapsulationKey11decapsulateCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
          to label %bb.c unwind label %bb.b       ; 2 uses

.body:                                            ; preds = %bb.h, %bb.i, %bb.b, %bb.f
  %.pn = phi { ptr, i32 } [ %i.l, %bb.f ], [ %i.g, %bb.b ], [ %i.n, %bb.i ], [ %i.n, %bb.h ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs2pq5mlkem6ActiveEEB1k_(ptr nonnull %1) #32
          to label %bb.m unwind label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.c:                                             ; preds = %bb.a
  %i.h = extractvalue { ptr, i64 } %i.f, 0        ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.sroa.437.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.437.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) getelementptr inbounds nuw (i8, ptr @77, i64 1), i64 7, i1 false)
  %.sroa.740.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.740.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) getelementptr inbounds nuw (i8, ptr @77, i64 24), i64 40, i1 false)
  store i8 9, ptr %0, align 8
  %.sroa.538.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.538.0..sroa_idx, i8 0, i64 16, i1 false)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs222MioR9bx1_9aws_lc_rs3kem12SharedSecretECs7ZUl82OSlxp_6rustls.exit

bb.e:                                             ; preds = %bb.c
  %i.j = extractvalue { ptr, i64 } %i.f, 1        ; 2 uses
  store ptr %i.h, ptr %i.c, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  store i64 %i.j, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvXs1_NtCs7ZUl82OSlxp_6rustls6cryptoNtB5_12SharedSecretINtNtCsj6eKBz9Db1c_4core7convert4FromRShE4from(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.h, i64 noundef %i.j)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs222MioR9bx1_9aws_lc_rs3kem12SharedSecretECs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef align 8 dereferenceable(16) %i.c) #32
          to label %.body unwind label %bb.l

bb.g:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  store i8 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  invoke void @_RNvXsf_NtCs222MioR9bx1_9aws_lc_rs3kemNtB5_12SharedSecretNtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c)
          to label %bb.j unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val3.i = load i64, ptr %i.k, align 8, !alias.scope !1326, !noundef !5 ; 2 uses
  %i.o = icmp eq i64 %.val3.i, 0
  br i1 %i.o, label %.body, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.val2.i = load ptr, ptr %i.c, align 8, !alias.scope !1326, !nonnull !5, !noundef !5
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i, i64 noundef range(i64 1, 0) %.val3.i, i64 noundef 1) #31
  br label %.body

bb.j:                                             ; preds = %bb.g
  %.val1.i = load i64, ptr %i.k, align 8, !alias.scope !1326, !noundef !5 ; 2 uses
  %i.p = icmp eq i64 %.val1.i, 0
  br i1 %i.p, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs222MioR9bx1_9aws_lc_rs3kem12SharedSecretECs7ZUl82OSlxp_6rustls.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.val.i = load ptr, ptr %i.c, align 8, !alias.scope !1326, !nonnull !5, !noundef !5
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, 0) %.val1.i, i64 noundef 1) #31
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs222MioR9bx1_9aws_lc_rs3kem12SharedSecretECs7ZUl82OSlxp_6rustls.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs222MioR9bx1_9aws_lc_rs3kem12SharedSecretECs7ZUl82OSlxp_6rustls.exit: ; preds = %bb.j, %bb.k, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs2pq5mlkem6ActiveEEB1k_(ptr nonnull %1)
  ret void

bb.l:                                             ; preds = %.body, %bb.f
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29
  unreachable

bb.m:                                             ; preds = %.body
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsa_NtCs4wP2HXfJTCR_5alloc6borrowINtB5_3CoweENtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmtCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !5
  %i.e = tail call noundef zeroext i1 @_RNvXsh_NtCsj6eKBz9Db1c_4core3fmteNtB5_5Debug3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsa_NtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4signNtB5_17Ed25519SigningKeyNtNtB9_6signer10SigningKey10public_key(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  %i.c = alloca [24 x i8], align 8                ; 11 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.e = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1332
  call void @_RNvNtCs7ZUl82OSlxp_6rustls4x50916wrap_in_sequence(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @120, i64 noundef 5), !noalias !1332
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1332
  invoke void @_RNvNtCs7ZUl82OSlxp_6rustls4x50918wrap_in_bit_string(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.f, i64 noundef 32)
          to label %bb.c unwind label %bb.b, !noalias !1333

.body.i:                                          ; preds = %bb.g, %bb.e, %bb.b
  %.pn.i = phi { ptr, i32 } [ %i.r, %bb.e ], [ %i.g, %bb.b ], [ %i.u, %bb.g ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #32
          to label %common.resume.i unwind label %bb.m, !noalias !1333

bb.b:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs7ZUl82OSlxp_6rustls.exit.i, %bb.h, %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !noalias !1332, !nonnull !5, !noundef !5
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !1332, !noundef !5 ; 4 uses
  invoke void @_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.k)
          to label %.noexc.i unwind label %bb.e, !noalias !1333

.noexc.i:                                         ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 4 uses
  %i.m = load i64, ptr %i.l, align 8, !alias.scope !1334, !noalias !1332, !noundef !5 ; 3 uses
  %i.n = icmp sgt i64 %i.m, -1
  call void @llvm.assume(i1 %i.n)
  %.not.i.i = icmp eq i64 %i.k, 0
  br i1 %.not.i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %.noexc.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !1334, !noalias !1332, !nonnull !5, !noundef !5
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.m
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.q, ptr nonnull readonly align 1 %i.i, i64 %i.k, i1 false), !noalias !1333
  %.pre.i.i = load i64, ptr %i.l, align 8, !alias.scope !1334, !noalias !1332
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #32
          to label %.body.i unwind label %bb.m, !noalias !1333

bb.f:                                             ; preds = %bb.d, %.noexc.i
  %i.s = phi i64 [ %.pre.i.i, %bb.d ], [ %i.m, %.noexc.i ]
  %i.t = add i64 %i.s, %i.k
  store i64 %i.t, ptr %i.l, align 8, !alias.scope !1334, !noalias !1332
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.h unwind label %bb.g, !noalias !1333

bb.g:                                             ; preds = %bb.f
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.body.i unwind label %bb.i, !noalias !1333

bb.h:                                             ; preds = %bb.f
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs7ZUl82OSlxp_6rustls.exit.i unwind label %bb.b, !noalias !1333

bb.i:                                             ; preds = %bb.g
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29, !noalias !1333
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs7ZUl82OSlxp_6rustls.exit.i: ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1332
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1332
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !noalias !1332, !nonnull !5, !noundef !5
  %i.y = load i64, ptr %i.l, align 8, !noalias !1332, !noundef !5
  invoke void @_RNvNtCs7ZUl82OSlxp_6rustls4x50916wrap_in_sequence(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.x, i64 noundef %i.y)
          to label %bb.j unwind label %bb.b, !noalias !1333

bb.j:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs7ZUl82OSlxp_6rustls.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !1335
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1332
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtNtCs7ZUl82OSlxp_6rustls6crypto6signer18public_key_to_spkiRNtNtCs222MioR9bx1_9aws_lc_rs7ed255199PublicKeyEB6_.exit unwind label %bb.k, !noalias !1333

bb.k:                                             ; preds = %bb.j
  %i.z = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %common.resume.i unwind label %bb.l, !noalias !1333

bb.l:                                             ; preds = %bb.k
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29, !noalias !1333
  unreachable

common.resume.i:                                  ; preds = %bb.k, %.body.i
  %common.resume.op.i = phi { ptr, i32 } [ %i.z, %bb.k ], [ %.pn.i, %.body.i ]
  resume { ptr, i32 } %common.resume.op.i

bb.m:                                             ; preds = %bb.e, %.body.i
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29, !noalias !1333
  unreachable

_RINvNtNtCs7ZUl82OSlxp_6rustls6crypto6signer18public_key_to_spkiRNtNtCs222MioR9bx1_9aws_lc_rs7ed255199PublicKeyEB6_.exit: ; preds = %bb.j
  call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c), !noalias !1333
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1332
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void
}

; Function Attrs: nonlazybind uwtable
define { ptr, ptr } @_RNvXsa_NtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4signNtB5_17Ed25519SigningKeyNtNtB9_6signer10SigningKey13choose_scheme(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %1, i64 noundef range(i64 0, 2305843009213693952) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = tail call noundef zeroext i1 @_RNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpNtNtCs7ZUl82OSlxp_6rustls5enums15SignatureSchemeNtB5_13SliceContains14slice_containsBG_(ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(4) %i.b, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %1, i64 noundef %2)
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.e = atomicrmw add ptr %i.d, i64 1 monotonic, align 8
  %i.f = icmp slt i64 %i.e, 0
  br i1 %i.f, label %bb.i, label %bb.d

bb.c:                                             ; preds = %bb.a, %_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxNtNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4sign13Ed25519SignerE3newBM_.exit
  %.sroa.0.0 = phi ptr [ %i.k, %_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxNtNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4sign13Ed25519SignerE3newBM_.exit ], [ null, %bb.a ]
  %i.g = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0
  %i.h = insertvalue { ptr, ptr } %i.g, ptr @121, 1
  ret { ptr, ptr } %i.h

bb.d:                                             ; preds = %bb.b
  store ptr %i.d, ptr %i.a, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = load <2 x i16>, ptr %i.b, align 8
  store <2 x i16> %i.j, ptr %i.i, align 8
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #31, !noalias !1344
  %i.k = tail call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 16, 81) 16, i64 noundef 8) #31, !noalias !1344 ; 3 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.e, label %_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxNtNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4sign13Ed25519SignerE3newBM_.exit, !prof !14

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #33
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = atomicrmw add ptr %i.d, i64 -1 release, align 8, !noalias !1345
  %i.o = icmp eq i64 %i.n, 1
  br i1 %i.o, label %bb.g, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4sign13Ed25519SignerEBJ_.exit

bb.g:                                             ; preds = %bb.f
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtCs222MioR9bx1_9aws_lc_rs7ed2551914Ed25519KeyPairE9drop_slowCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #30
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4sign13Ed25519SignerEBJ_.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4sign13Ed25519SignerEBJ_.exit: ; preds = %bb.f, %bb.g
  resume { ptr, i32 } %i.m

_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxNtNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4sign13Ed25519SignerE3newBM_.exit: ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.c

bb.i:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal { i8, i8 } @_RNvXsa_NtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4signNtB5_17Ed25519SigningKeyNtNtB9_6signer10SigningKey9algorithm(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #13 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i16, ptr %i.a, align 8, !range !15, !noundef !5 ; 2 uses
  %i.c = icmp samesign ult i16 %i.b, 13
  br i1 %i.c, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.d = zext nneg i16 %i.b to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXsa_NtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4signNtB5_17Ed25519SigningKeyNtNtB9_6signer10SigningKey9algorithm, i64 %i.d
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %bb.b

bb.b:                                             ; preds = %switch.lookup, %bb.a
  %.sroa.0.0 = phi i8 [ %switch.load, %switch.lookup ], [ 6, %bb.a ]
  %i.e = insertvalue { i8, i8 } poison, i8 %.sroa.0.0, 0
  %i.f = insertvalue { i8, i8 } %i.e, i8 0, 1
  ret { i8, i8 } %i.f
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXsb_NtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4signNtB5_17Ed25519SigningKeyNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [2 x i8], align 1                 ; 9 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @122, i64 noundef 17)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i16, ptr %i.c, align 8, !range !15, !noundef !5
  switch i16 %i.d, label %bb.b [
    i16 0, label %bb.c
    i16 1, label %bb.d
    i16 2, label %bb.c
    i16 3, label %bb.d
    i16 4, label %bb.c
    i16 5, label %bb.d
    i16 6, label %bb.c
    i16 7, label %bb.d
    i16 8, label %bb.c
    i16 9, label %bb.c
    i16 10, label %bb.c
    i16 11, label %bb.e
    i16 12, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  store i8 6, ptr %i.a, align 1
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 0, ptr %i.e, align 1
  br label %bb.g

bb.c:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  store i8 1, ptr %i.a, align 1
  br label %bb.g

bb.d:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a
  store i8 3, ptr %i.a, align 1
  br label %bb.g

bb.e:                                             ; preds = %bb.a
  store i8 4, ptr %i.a, align 1
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  store i8 5, ptr %i.a, align 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %i.f = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @81, i64 noundef 9, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @80)
  %i.g = call noundef zeroext i1 @_RNvMs2_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %i.g
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsc_NtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4signNtB5_13Ed25519SignerNtNtB9_6signer6Signer4sign(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [4640 x i8], align 8              ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.7 = alloca [4632 x i8], align 8          ; 2 uses
  %i.d = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = tail call { ptr, i64 } @_RINvMs1_NtCs222MioR9bx1_9aws_lc_rs8evp_pkeyINtNtB8_3ptr14ManagedPointerONtNtCs9y7goCcaNJZ_10aws_lc_sys16universal_crypto11evp_pkey_stE4signFONtB1a_15evp_pkey_ctx_stEINtNtCsj6eKBz9Db1c_4core6result6ResultuuEECs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(48) null, ptr noundef null), !noalias !1353 ; 2 uses
  %i.g = extractvalue { ptr, i64 } %i.f, 0        ; 4 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = extractvalue { ptr, i64 } %i.f, 1        ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1354
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(4635) %i.b, i8 0, i64 4635, i1 false), !noalias !1354
  invoke void @_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implhECs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull %i.j, i64 noundef 64, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.g, i64 noundef %i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @63)
          to label %bb.e unwind label %bb.c, !noalias !1353

bb.c:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = icmp eq i64 %i.i, 0
  br i1 %i.l, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxShEECs7ZUl82OSlxp_6rustls.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.g, i64 noundef range(i64 1, 0) %i.i, i64 noundef 1) #31, !noalias !1353
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxShEECs7ZUl82OSlxp_6rustls.exit.i

bb.e:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(4632) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(4632) %i.j, i64 4632, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1354
  %i.m = icmp eq i64 %i.i, 0
  br i1 %i.m, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.g, i64 noundef range(i64 1, 0) %i.i, i64 noundef 1) #31, !noalias !1353
  br label %bb.h

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxShEECs7ZUl82OSlxp_6rustls.exit.i: ; preds = %bb.d, %bb.c
  resume { ptr, i32 } %i.k

bb.g:                                             ; preds = %bb.a
  call void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @123, i64 noundef 22, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @15, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @124) #35, !noalias !1355
  unreachable

bb.h:                                             ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef 64, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.n = load i64, ptr %i.c, align 8, !range !8, !noundef !5
  %i.o = trunc nuw i64 %i.n to i1
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.q = load i64, ptr %i.p, align 8, !range !13, !noundef !5 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.o, label %bb.i, label %bb.j, !prof !14

bb.i:                                             ; preds = %bb.h
  %i.s = load i64, ptr %i.r, align 8
  call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.q, i64 %i.s) #33
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.t = load ptr, ptr %i.r, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.u = icmp samesign ugt i64 %i.q, 63
  call void @llvm.assume(i1 %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.t, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.7, i64 64, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.q, ptr %i.v, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.t, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 64, ptr %.sroa.6.0..sroa_idx, align 8
  store i8 -1, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal { i16, i16 } @_RNvXsc_NtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4signNtB5_13Ed25519SignerNtNtB9_6signer6Signer6scheme(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #13 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i16, ptr %i.a, align 8, !range !15, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.d = load i16, ptr %i.c, align 2
  %i.e = insertvalue { i16, i16 } poison, i16 %i.b, 0
  %i.f = insertvalue { i16, i16 } %i.e, i16 %i.d, 1
  ret { i16, i16 } %i.f
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXsd_NtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4signNtB5_13Ed25519SignerNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @125, i64 noundef 13)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @101, i64 noundef 6, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @100)
  %i.d = call noundef zeroext i1 @_RNvMs2_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXse_NtCs222MioR9bx1_9aws_lc_rs5errorNtB5_11UnspecifiedNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt(ptr noalias nofree nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #7 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @126, i64 noundef 11)
  ret i1 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsr_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !5
  %i.e = tail call noundef zeroext i1 @_RNvXsh_NtCsj6eKBz9Db1c_4core3fmteNtB5_5Debug3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noundef zeroext i1 @_RNvYNtNtCs7ZUl82OSlxp_6rustls6verify12NoClientAuthNtB4_18ClientCertVerifier21client_auth_mandatoryB6_(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #8 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvYNtNtCs7ZUl82OSlxp_6rustls6verify12NoClientAuthNtB4_18ClientCertVerifier24requires_raw_public_keysB6_(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #8 {
bb.a:
  ret i1 false
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYNtNtCshVVPy9isBpn_6webpki14aws_lc_rs_algs16AwsLcRsAlgorithmNtCseO5Jl7W60Eg_16rustls_pki_types30SignatureVerificationAlgorithm11fips_statusCs7ZUl82OSlxp_6rustls(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXNtCshVVPy9isBpn_6webpki14aws_lc_rs_algsNtB2_16AwsLcRsAlgorithmNtCseO5Jl7W60Eg_16rustls_pki_types30SignatureVerificationAlgorithm4fips(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1)
  %. = zext i1 %i.a to i64
  store i64 %., ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvYNtNtNtCs7ZUl82OSlxp_6rustls6client5handy21FailResolveClientCertNtNtB6_11client_conn18ResolvesClientCert20only_raw_public_keysB8_(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #8 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvYNtNtNtCs7ZUl82OSlxp_6rustls6crypto6signer16SingleCertAndKeyNtNtNtB8_6client11client_conn18ResolvesClientCert20only_raw_public_keysB8_(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #8 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvYNtNtNtCs7ZUl82OSlxp_6rustls6crypto6signer16SingleCertAndKeyNtNtNtB8_6server11server_conn18ResolvesServerCert20only_raw_public_keysB8_(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #8 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvYNtNtNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs2pq5mlkem6ActiveNtBa_17ActiveKeyExchange16hybrid_componentBc_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 2)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #14 {
bb.a:
  store i16 -1, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvYNtNtNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs2pq5mlkem6ActiveNtBa_17ActiveKeyExchange24complete_for_tls_versionBc_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias noundef nonnull align 8 %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3, ptr noalias nofree noundef readonly align 2 captures(none) dereferenceable(4) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = load i16, ptr %4, align 2, !range !23, !noundef !5
  %i.d = icmp eq i16 %i.c, 4
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvXs_NtNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs2pq5mlkemNtB4_6ActiveNtBa_17ActiveKeyExchange8complete(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias noundef nonnull align 8 %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.j, %bb.e
  ret void

bb.d:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load i16, ptr %i.e, align 8, !range !25, !alias.scope !1358, !noundef !5
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 34
  %i.h = load i16, ptr %i.g, align 2, !alias.scope !1358
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvXs_NtNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs2pq5mlkemNtB4_6ActiveNtBa_17ActiveKeyExchange8complete(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.a, ptr noalias noundef nonnull align 8 %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3)
  %i.i = load i8, ptr %i.a, align 8, !range !7, !noundef !5 ; 2 uses
  %.not = icmp eq i8 %i.i, -1
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %.sroa.512.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.515.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.515.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.512.0..sroa_idx, i64 24, i1 false)
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.414.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(39) %.sroa.411.0..sroa_idx, i64 39, i1 false)
  store i8 %i.i, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.c

bb.f:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.j, i64 32, i1 false)
  %i.k = invoke noundef zeroext i1 @_RNvMs0_NtNtCs7ZUl82OSlxp_6rustls4msgs5enumsNtB5_10NamedGroup22key_exchange_algorithm(i16 noundef %i.f, i16 %i.h)
          to label %bb.h unwind label %bb.g

bb.g:                                             ; preds = %bb.i, %bb.f
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs7ZUl82OSlxp_6rustls6crypto12SharedSecretEBF_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.b) #32
          to label %bb.l unwind label %bb.k

bb.h:                                             ; preds = %bb.f
  br i1 %i.k, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke void @_RNvMs_NtCs7ZUl82OSlxp_6rustls6cryptoNtB4_12SharedSecret19strip_leading_zeros(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %bb.j unwind label %bb.g

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  store i8 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.c

bb.k:                                             ; preds = %bb.g
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29
  unreachable

bb.l:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.l
}

; Function Attrs: cold noreturn nonlazybind uwtable
define internal void @_RNvYNtNtNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs2pq5mlkem6ActiveNtBa_17ActiveKeyExchange25complete_hybrid_componentBc_(ptr dead_on_unwind noalias nofree readnone sret([64 x i8]) align 8 captures(none) %0, ptr noalias noundef nonnull align 8 %1, ptr noalias nofree nonnull readonly captures(none) %2, i64 range(i64 0, -9223372036854775808) %3) unnamed_addr #12 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @127, ptr noundef nonnull inttoptr (i64 179 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @129) #33
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs2pq5mlkem6ActiveEEB1k_(ptr nonnull %1) #32
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29
  unreachable

bb.e:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #15

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtCs222MioR9bx1_9aws_lc_rs6bufferINtB2_6BufferNtNtNtB4_3kem11buffer_type25EncapsulationKeyBytesTypeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #15

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() unnamed_addr #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #15

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsg_NtCs37Y8JGf013z_9hashbrown3rawINtB5_8RawTableTINtNtCs4wP2HXfJTCR_5alloc3vec3VechEBP_EENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecIBw_hEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecIBw_jEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtCseO5Jl7W60Eg_16rustls_pki_types14CertificateDerENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs7ZUl82OSlxp_6rustls5enums11ContentTypeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs7ZUl82OSlxp_6rustls5enums13HandshakeTypeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs7ZUl82OSlxp_6rustls5error18ExtendedKeyPurposeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCseO5Jl7W60Eg_16rustls_pki_types6alg_id19AlgorithmIdentifierENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16EchConfigPayloadENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBL_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake18EchConfigExtensionENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBL_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake20KeyExchangeAlgorithmENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBL_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake24HpkeSymmetricCipherSuiteENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBL_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecRDNtNtCs7ZUl82OSlxp_6rustls8compress14CertCompressorEL_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBL_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecjENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #17

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VechEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecjEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecINtNtB7_4sync3ArcNtNtCs7ZUl82OSlxp_6rustls8compress21CompressionCacheEntryEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropB17_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtCseO5Jl7W60Eg_16rustls_pki_types14CertificateDerENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs7ZUl82OSlxp_6rustls5enums11ContentTypeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs7ZUl82OSlxp_6rustls5enums13HandshakeTypeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs7ZUl82OSlxp_6rustls5error18ExtendedKeyPurposeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCseO5Jl7W60Eg_16rustls_pki_types6alg_id19AlgorithmIdentifierENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16EchConfigPayloadENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake18EchConfigExtensionENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake20KeyExchangeAlgorithmENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake24HpkeSymmetricCipherSuiteENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecRDNtNtCs7ZUl82OSlxp_6rustls8compress14CertCompressorEL_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecjENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs0_NtNtCs4wP2HXfJTCR_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtB9_3vec3VechEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs0_NtNtCs4wP2HXfJTCR_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtB9_4sync3ArcNtNtCs7ZUl82OSlxp_6rustls8compress21CompressionCacheEntryEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropB1q_(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0
end_hunk_0
begin_hunk_1_@llvm.vector.reduce.add.v2i64
!1117 = distinct !{!1117, !1116, !"_RINvXs1_NtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs7ZUl82OSlxp_6rustls: argument 0"}
!1118 = !{!1117}
!1119 = distinct !{!1119, i1 true, !"_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4sign15EcdsaSigningKeyEE3newB18_"}
!1120 = distinct !{!1120, !1119, !"_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4sign15EcdsaSigningKeyEE3newB18_: argument 0"}
!1121 = distinct !{!1121, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync8ArcInnerNtNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4sign15EcdsaSigningKeyEEB1m_"}
!1122 = distinct !{!1122, !1121, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync8ArcInnerNtNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4sign15EcdsaSigningKeyEEB1m_: argument 0"}
!1123 = distinct !{!1123, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4sign15EcdsaSigningKeyEBJ_"}
!1124 = distinct !{!1124, !1123, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4sign15EcdsaSigningKeyEBJ_: argument 0"}
!1125 = distinct !{!1125, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs222MioR9bx1_9aws_lc_rs2ec8key_pair12EcdsaKeyPairEECs7ZUl82OSlxp_6rustls"}
!1126 = distinct !{!1126, !1125, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs222MioR9bx1_9aws_lc_rs2ec8key_pair12EcdsaKeyPairEECs7ZUl82OSlxp_6rustls: argument 0"}
!1127 = distinct !{!1127, i1 true, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs222MioR9bx1_9aws_lc_rs2ec8key_pair12EcdsaKeyPairENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls"}
!1128 = distinct !{!1128, !1127, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs222MioR9bx1_9aws_lc_rs2ec8key_pair12EcdsaKeyPairENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls: argument 0"}
!1129 = distinct !{!1129, i1 true, !"_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4sign15EcdsaSigningKeyEE3newB18_"}
!1130 = distinct !{!1130, !1129, !"_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4sign15EcdsaSigningKeyEE3newB18_: argument 0"}
!1131 = distinct !{!1131, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync8ArcInnerNtNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4sign15EcdsaSigningKeyEEB1m_"}
!1132 = distinct !{!1132, !1131, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync8ArcInnerNtNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4sign15EcdsaSigningKeyEEB1m_: argument 0"}
!1133 = distinct !{!1133, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4sign15EcdsaSigningKeyEBJ_"}
!1134 = distinct !{!1134, !1133, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4sign15EcdsaSigningKeyEBJ_: argument 0"}
!1135 = distinct !{!1135, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs222MioR9bx1_9aws_lc_rs2ec8key_pair12EcdsaKeyPairEECs7ZUl82OSlxp_6rustls"}
!1136 = distinct !{!1136, !1135, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs222MioR9bx1_9aws_lc_rs2ec8key_pair12EcdsaKeyPairEECs7ZUl82OSlxp_6rustls: argument 0"}
!1137 = distinct !{!1137, i1 true, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs222MioR9bx1_9aws_lc_rs2ec8key_pair12EcdsaKeyPairENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls"}
!1138 = distinct !{!1138, !1137, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs222MioR9bx1_9aws_lc_rs2ec8key_pair12EcdsaKeyPairENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls: argument 0"}
!1139 = distinct !{!1139, i1 true, !"_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4sign15EcdsaSigningKeyEE3newB18_"}
!1140 = distinct !{!1140, !1139, !"_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4sign15EcdsaSigningKeyEE3newB18_: argument 0"}
!1141 = distinct !{!1141, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync8ArcInnerNtNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4sign15EcdsaSigningKeyEEB1m_"}
!1142 = distinct !{!1142, !1141, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync8ArcInnerNtNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4sign15EcdsaSigningKeyEEB1m_: argument 0"}
!1143 = distinct !{!1143, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4sign15EcdsaSigningKeyEBJ_"}
!1144 = distinct !{!1144, !1143, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4sign15EcdsaSigningKeyEBJ_: argument 0"}
!1145 = distinct !{!1145, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs222MioR9bx1_9aws_lc_rs2ec8key_pair12EcdsaKeyPairEECs7ZUl82OSlxp_6rustls"}
!1146 = distinct !{!1146, !1145, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs222MioR9bx1_9aws_lc_rs2ec8key_pair12EcdsaKeyPairEECs7ZUl82OSlxp_6rustls: argument 0"}
!1147 = distinct !{!1147, i1 true, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs222MioR9bx1_9aws_lc_rs2ec8key_pair12EcdsaKeyPairENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls"}
!1148 = distinct !{!1148, !1147, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs222MioR9bx1_9aws_lc_rs2ec8key_pair12EcdsaKeyPairENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls: argument 0"}
!1149 = !{i16 -1, i16 17}
!1150 = !{!1120}
!1151 = !{!1122}
!1152 = !{!1124}
!1153 = !{!1126}
!1154 = !{!1128}
!1155 = !{!1128, !1126, !1124, !1122}
!1156 = !{!1130}
!1157 = !{!1132}
!1158 = !{!1134}
!1159 = !{!1136}
!1160 = !{!1138}
!1161 = !{!1138, !1136, !1134, !1132}
!1162 = !{!1140}
!1163 = !{!1142}
!1164 = !{!1144}
!1165 = !{!1146}
!1166 = !{!1148}
!1167 = !{!1148, !1146, !1144, !1142}
!1168 = distinct !{!1168, i1 true, !"_RNvMs9_NtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4signNtB5_17Ed25519SigningKey3new"}
!1169 = distinct !{!1169, !1168, !"_RNvMs9_NtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4signNtB5_17Ed25519SigningKey3new: argument 0"}
!1170 = distinct !{!1170, i1 true, !"_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs222MioR9bx1_9aws_lc_rs7ed2551914Ed25519KeyPairEE3newCs7ZUl82OSlxp_6rustls"}
!1171 = distinct !{!1171, !1170, !"_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs222MioR9bx1_9aws_lc_rs7ed2551914Ed25519KeyPairEE3newCs7ZUl82OSlxp_6rustls: argument 0"}
!1172 = distinct !{!1172, i1 true, !"_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4sign17Ed25519SigningKeyEE3newB18_"}
!1173 = distinct !{!1173, !1172, !"_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4sign17Ed25519SigningKeyEE3newB18_: argument 0"}
!1174 = distinct !{!1174, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync8ArcInnerNtNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4sign17Ed25519SigningKeyEEB1m_"}
!1175 = distinct !{!1175, !1174, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync8ArcInnerNtNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4sign17Ed25519SigningKeyEEB1m_: argument 0"}
!1176 = distinct !{!1176, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4sign17Ed25519SigningKeyEBJ_"}
!1177 = distinct !{!1177, !1176, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4sign17Ed25519SigningKeyEBJ_: argument 0"}
!1178 = distinct !{!1178, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs222MioR9bx1_9aws_lc_rs7ed2551914Ed25519KeyPairEECs7ZUl82OSlxp_6rustls"}
!1179 = distinct !{!1179, !1178, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs222MioR9bx1_9aws_lc_rs7ed2551914Ed25519KeyPairEECs7ZUl82OSlxp_6rustls: argument 0"}
!1180 = distinct !{!1180, i1 true, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtCs222MioR9bx1_9aws_lc_rs7ed2551914Ed25519KeyPairENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls"}
!1181 = distinct !{!1181, !1180, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtCs222MioR9bx1_9aws_lc_rs7ed2551914Ed25519KeyPairENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls: argument 0"}
!1182 = !{!1169}
!1183 = !{!1171, !1169}
!1184 = !{!1173}
!1185 = !{!1181, !1179, !1177, !1175}
!1186 = distinct !{!1186, i1 true, !"_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4sign13RsaSigningKeyEE3newB18_"}
!1187 = distinct !{!1187, !1186, !"_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4sign13RsaSigningKeyEE3newB18_: argument 0"}
!1188 = distinct !{!1188, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync8ArcInnerNtNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4sign13RsaSigningKeyEEB1m_"}
!1189 = distinct !{!1189, !1188, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync8ArcInnerNtNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4sign13RsaSigningKeyEEB1m_: argument 0"}
!1190 = distinct !{!1190, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4sign13RsaSigningKeyEBJ_"}
!1191 = distinct !{!1191, !1190, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4sign13RsaSigningKeyEBJ_: argument 0"}
!1192 = distinct !{!1192, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs222MioR9bx1_9aws_lc_rs3rsa3key7KeyPairEECs7ZUl82OSlxp_6rustls"}
!1193 = distinct !{!1193, !1192, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs222MioR9bx1_9aws_lc_rs3rsa3key7KeyPairEECs7ZUl82OSlxp_6rustls: argument 0"}
!1194 = distinct !{!1194, i1 true, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs222MioR9bx1_9aws_lc_rs3rsa3key7KeyPairENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls"}
!1195 = distinct !{!1195, !1194, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs222MioR9bx1_9aws_lc_rs3rsa3key7KeyPairENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls: argument 0"}
!1196 = !{!1187}
!1197 = !{!1195, !1193, !1191, !1189}
!1198 = distinct !{!1198, i1 true, !"_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtCs7ZUl82OSlxp_6rustls6crypto6signer12CertifiedKeyEE3newB16_"}
!1199 = distinct !{!1199, !1198, !"_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtCs7ZUl82OSlxp_6rustls6crypto6signer12CertifiedKeyEE3newB16_: argument 0"}
!1200 = !{!1199}
!1201 = distinct !{!1201, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs222MioR9bx1_9aws_lc_rs3kem12SharedSecretECs7ZUl82OSlxp_6rustls"}
!1202 = distinct !{!1202, !1201, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs222MioR9bx1_9aws_lc_rs3kem12SharedSecretECs7ZUl82OSlxp_6rustls: argument 0"}
!1203 = distinct !{!1203, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs222MioR9bx1_9aws_lc_rs3kem10CiphertextECs7ZUl82OSlxp_6rustls"}
!1204 = distinct !{!1204, !1203, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs222MioR9bx1_9aws_lc_rs3kem10CiphertextECs7ZUl82OSlxp_6rustls: argument 0"}
!1205 = distinct !{!1205, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc6borrow3CowShEECs7ZUl82OSlxp_6rustls"}
!1206 = distinct !{!1206, !1205, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc6borrow3CowShEECs7ZUl82OSlxp_6rustls: argument 0"}
!1207 = !{!1202}
!1208 = !{!1206, !1204}
!1209 = distinct !{!1209, i1 true, !"_RNCNvXNtNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs2pq5mlkemNtB4_5MlKemNtBa_16SupportedKxGroup5start0Bc_"}
!1210 = distinct !{!1210, !1209, !"_RNCNvXNtNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs2pq5mlkemNtB4_5MlKemNtBa_16SupportedKxGroup5start0Bc_: argument 0"}
!1211 = distinct !{!1211, i1 true, !"_RNCNvXNtNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs2pq5mlkemNtB4_5MlKemNtBa_16SupportedKxGroup5starts_0Bc_"}
!1212 = distinct !{!1212, !1211, !"_RNCNvXNtNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs2pq5mlkemNtB4_5MlKemNtBa_16SupportedKxGroup5starts_0Bc_: argument 1"}
!1213 = distinct !{!1213, !1211, !"_RNCNvXNtNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs2pq5mlkemNtB4_5MlKemNtBa_16SupportedKxGroup5starts_0Bc_: argument 0"}
!1214 = distinct !{!1214, i1 true, !"_RNCNvXNtNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs2pq5mlkemNtB4_5MlKemNtBa_16SupportedKxGroup5starts0_0Bc_"}
!1215 = distinct !{!1215, !1214, !"_RNCNvXNtNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs2pq5mlkemNtB4_5MlKemNtBa_16SupportedKxGroup5starts0_0Bc_: argument 0"}
!1216 = distinct !{!1216, i1 true, !"_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxNtNtNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs2pq5mlkem6ActiveE3newBO_"}
!1217 = distinct !{!1217, !1216, !"_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxNtNtNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs2pq5mlkem6ActiveE3newBO_: argument 0"}
!1218 = distinct !{!1218, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs222MioR9bx1_9aws_lc_rs3kem21EncapsulationKeyBytesECs7ZUl82OSlxp_6rustls"}
!1219 = distinct !{!1219, !1218, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs222MioR9bx1_9aws_lc_rs3kem21EncapsulationKeyBytesECs7ZUl82OSlxp_6rustls: argument 0"}
!1220 = distinct !{!1220, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs222MioR9bx1_9aws_lc_rs6buffer6BufferNtNtNtBG_3kem11buffer_type25EncapsulationKeyBytesTypeEECs7ZUl82OSlxp_6rustls"}
!1221 = distinct !{!1221, !1220, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs222MioR9bx1_9aws_lc_rs6buffer6BufferNtNtNtBG_3kem11buffer_type25EncapsulationKeyBytesTypeEECs7ZUl82OSlxp_6rustls: argument 0"}
!1222 = distinct !{!1222, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc6borrow3CowShEECs7ZUl82OSlxp_6rustls"}
!1223 = distinct !{!1223, !1222, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc6borrow3CowShEECs7ZUl82OSlxp_6rustls: argument 0"}
!1224 = !{!1210}
!1225 = !{!1213, !1212}
!1226 = !{!1213}
!1227 = !{!1215}
!1228 = !{!1217}
!1229 = !{!1223, !1221, !1219}
!1230 = distinct !{!1230, i1 true, !"_RNvXsa_NtCs7ZUl82OSlxp_6rustls6verifyNtB5_21DigitallySignedStructNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt"}
!1231 = distinct !{!1231, !1230, !"_RNvXsa_NtCs7ZUl82OSlxp_6rustls6verifyNtB5_21DigitallySignedStructNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt: argument 1"}
!1232 = distinct !{!1232, !1230, !"_RNvXsa_NtCs7ZUl82OSlxp_6rustls6verifyNtB5_21DigitallySignedStructNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt: argument 0"}
!1233 = !{!1232, !1231}
!1234 = distinct !{!1234, i1 true, !"_RINvXs1_NtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs7ZUl82OSlxp_6rustls"}
!1235 = distinct !{!1235, !1234, !"_RINvXs1_NtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs7ZUl82OSlxp_6rustls: argument 0"}
!1236 = distinct !{!1236, i1 true, !"_RNCNvXs2_NtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4signNtB7_9RsaSignerNtNtBb_6signer6Signer4signs_0Bd_"}
!1237 = distinct !{!1237, !1236, !"_RNCNvXs2_NtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4signNtB7_9RsaSignerNtNtBb_6signer6Signer4signs_0Bd_: argument 0"}
!1238 = !{!1235}
!1239 = !{!1237}
!1240 = distinct !{!1240, i1 true, !"_RINvNtNtCs7ZUl82OSlxp_6rustls6crypto6signer18public_key_to_spkiRNtNtNtCs222MioR9bx1_9aws_lc_rs2ec9signature9PublicKeyEB6_"}
!1241 = distinct !{!1241, !1240, !"_RINvNtNtCs7ZUl82OSlxp_6rustls6crypto6signer18public_key_to_spkiRNtNtNtCs222MioR9bx1_9aws_lc_rs2ec9signature9PublicKeyEB6_: argument 1"}
!1242 = distinct !{!1242, !1240, !"_RINvNtNtCs7ZUl82OSlxp_6rustls6crypto6signer18public_key_to_spkiRNtNtNtCs222MioR9bx1_9aws_lc_rs2ec9signature9PublicKeyEB6_: argument 0"}
!1243 = distinct !{!1243, i1 true, !"_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE15append_elementsCs7ZUl82OSlxp_6rustls"}
!1244 = distinct !{!1244, !1243, !"_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE15append_elementsCs7ZUl82OSlxp_6rustls: argument 0"}
!1245 = !{!"branch_weights", i32 1, i32 2000, i32 2000, i32 2000}
!1246 = !{!1241}
!1247 = !{!1242, !1241}
!1248 = !{!1244}
!1249 = distinct !{!1249, i1 true, !"_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxNtNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4sign11EcdsaSignerE3newBM_"}
!1250 = distinct !{!1250, !1249, !"_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxNtNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4sign11EcdsaSignerE3newBM_: argument 0"}
!1251 = distinct !{!1251, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4sign11EcdsaSignerEBJ_"}
!1252 = distinct !{!1252, !1251, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4sign11EcdsaSignerEBJ_: argument 0"}
!1253 = distinct !{!1253, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs222MioR9bx1_9aws_lc_rs2ec8key_pair12EcdsaKeyPairEECs7ZUl82OSlxp_6rustls"}
!1254 = distinct !{!1254, !1253, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs222MioR9bx1_9aws_lc_rs2ec8key_pair12EcdsaKeyPairEECs7ZUl82OSlxp_6rustls: argument 0"}
!1255 = distinct !{!1255, i1 true, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs222MioR9bx1_9aws_lc_rs2ec8key_pair12EcdsaKeyPairENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls"}
!1256 = distinct !{!1256, !1255, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs222MioR9bx1_9aws_lc_rs2ec8key_pair12EcdsaKeyPairENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls: argument 0"}
!1257 = !{!1250}
!1258 = !{!1256, !1254, !1252}
!1259 = distinct !{!1259, i1 true, !"_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE15append_elementsCs7ZUl82OSlxp_6rustls"}
!1260 = distinct !{!1260, !1259, !"_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE15append_elementsCs7ZUl82OSlxp_6rustls: argument 0"}
!1261 = distinct !{!1261, i1 true, !"_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE15append_elementsCs7ZUl82OSlxp_6rustls"}
!1262 = distinct !{!1262, !1261, !"_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE15append_elementsCs7ZUl82OSlxp_6rustls: argument 0"}
!1263 = !{!1260}
!1264 = !{!1262}
!1265 = distinct !{!1265, i1 true, !"_RNvMs2_NtNtCs222MioR9bx1_9aws_lc_rs2ec8key_pairNtB5_12EcdsaKeyPair4sign"}
!1266 = distinct !{!1266, !1265, !"_RNvMs2_NtNtCs222MioR9bx1_9aws_lc_rs2ec8key_pairNtB5_12EcdsaKeyPair4sign: argument 1"}
!1267 = distinct !{!1267, !1265, !"_RNvMs2_NtNtCs222MioR9bx1_9aws_lc_rs2ec8key_pairNtB5_12EcdsaKeyPair4sign: argument 2"}
!1268 = distinct !{!1268, !1265, !"_RNvMs2_NtNtCs222MioR9bx1_9aws_lc_rs2ec8key_pairNtB5_12EcdsaKeyPair4sign: argument 0"}
!1269 = distinct !{!1269, i1 true, !"_RNvNtCs222MioR9bx1_9aws_lc_rs2ec19ecdsa_asn1_to_fixed"}
!1270 = distinct !{!1270, !1269, !"_RNvNtCs222MioR9bx1_9aws_lc_rs2ec19ecdsa_asn1_to_fixed: argument 0"}
!1271 = distinct !{!1271, !1269, !"_RNvNtCs222MioR9bx1_9aws_lc_rs2ec19ecdsa_asn1_to_fixed: argument 1"}
!1272 = distinct !{!1272, i1 true, !"_RNCNvNtCs222MioR9bx1_9aws_lc_rs2ec19ecdsa_asn1_to_fixeds0_0Cs7ZUl82OSlxp_6rustls"}
!1273 = distinct !{!1273, !1272, !"_RNCNvNtCs222MioR9bx1_9aws_lc_rs2ec19ecdsa_asn1_to_fixeds0_0Cs7ZUl82OSlxp_6rustls: argument 1"}
!1274 = distinct !{!1274, !1272, !"_RNCNvNtCs222MioR9bx1_9aws_lc_rs2ec19ecdsa_asn1_to_fixeds0_0Cs7ZUl82OSlxp_6rustls: argument 0"}
!1275 = distinct !{!1275, i1 true, !"_RNCNvXs7_NtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4signNtB7_11EcdsaSignerNtNtBb_6signer6Signer4sign0Bd_"}
!1276 = distinct !{!1276, !1275, !"_RNCNvXs7_NtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4signNtB7_11EcdsaSignerNtNtBb_6signer6Signer4sign0Bd_: argument 0"}
!1277 = distinct !{!1277, i1 true, !"_RNCNvXs7_NtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4signNtB7_11EcdsaSignerNtNtBb_6signer6Signer4signs_0Bd_"}
!1278 = distinct !{!1278, !1277, !"_RNCNvXs7_NtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4signNtB7_11EcdsaSignerNtNtBb_6signer6Signer4signs_0Bd_: argument 1"}
!1279 = distinct !{!1279, !1277, !"_RNCNvXs7_NtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4signNtB7_11EcdsaSignerNtNtBb_6signer6Signer4signs_0Bd_: argument 0"}
!1280 = !{!1266}
!1281 = !{!1268, !1266, !1267}
!1282 = !{!1268}
!1283 = !{i8 0, i8 4}
!1284 = !{!1270, !1268}
!1285 = !{!1270, !1271, !1268, !1266, !1267}
!1286 = !{!1274, !1273, !1270, !1271, !1268, !1266, !1267}
!1287 = !{!"branch_weights", i32 4001, i32 4000000}
!1288 = !{!1274, !1270, !1271, !1268, !1266, !1267}
!1289 = !{!1271, !1268, !1266, !1267}
!1290 = !{!"branch_weights", i32 4000000, i32 4001}
!1291 = !{!1276}
!1292 = !{!1279, !1278}
!1293 = !{!1279}
!1294 = distinct !{!1294, i1 true, !"_RINvNtNtCs7ZUl82OSlxp_6rustls6crypto6signer18public_key_to_spkiRNtNtNtCs222MioR9bx1_9aws_lc_rs3rsa3key9PublicKeyEB6_"}
!1295 = distinct !{!1295, !1294, !"_RINvNtNtCs7ZUl82OSlxp_6rustls6crypto6signer18public_key_to_spkiRNtNtNtCs222MioR9bx1_9aws_lc_rs3rsa3key9PublicKeyEB6_: argument 1"}
!1296 = distinct !{!1296, !1294, !"_RINvNtNtCs7ZUl82OSlxp_6rustls6crypto6signer18public_key_to_spkiRNtNtNtCs222MioR9bx1_9aws_lc_rs3rsa3key9PublicKeyEB6_: argument 0"}
!1297 = distinct !{!1297, i1 true, !"_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE15append_elementsCs7ZUl82OSlxp_6rustls"}
!1298 = distinct !{!1298, !1297, !"_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE15append_elementsCs7ZUl82OSlxp_6rustls: argument 0"}
!1299 = !{!1295}
!1300 = !{!1296, !1295}
!1301 = !{!1298}
!1302 = distinct !{!1302, i1 true, !"_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCs7ZUl82OSlxp_6rustls5enums15SignatureSchemeENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvXs_NtNtNtBU_6crypto9aws_lc_rs4signNtB2u_13RsaSigningKeyNtNtB2y_6signer10SigningKey13choose_scheme0EBU_"}
!1303 = distinct !{!1303, !1302, !"_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCs7ZUl82OSlxp_6rustls5enums15SignatureSchemeENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvXs_NtNtNtBU_6crypto9aws_lc_rs4signNtB2u_13RsaSigningKeyNtNtB2y_6signer10SigningKey13choose_scheme0EBU_: argument 0"}
!1304 = distinct !{!1304, i1 true, !"_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxNtNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4sign9RsaSignerE3newBM_"}
!1305 = distinct !{!1305, !1304, !"_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxNtNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4sign9RsaSignerE3newBM_: argument 0"}
!1306 = distinct !{!1306, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4sign9RsaSignerEBJ_"}
!1307 = distinct !{!1307, !1306, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4sign9RsaSignerEBJ_: argument 0"}
!1308 = distinct !{!1308, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs222MioR9bx1_9aws_lc_rs3rsa3key7KeyPairEECs7ZUl82OSlxp_6rustls"}
!1309 = distinct !{!1309, !1308, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs222MioR9bx1_9aws_lc_rs3rsa3key7KeyPairEECs7ZUl82OSlxp_6rustls: argument 0"}
!1310 = distinct !{!1310, i1 true, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs222MioR9bx1_9aws_lc_rs3rsa3key7KeyPairENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls"}
!1311 = distinct !{!1311, !1310, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs222MioR9bx1_9aws_lc_rs3rsa3key7KeyPairENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls: argument 0"}
!1312 = distinct !{!1312, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs222MioR9bx1_9aws_lc_rs3rsa3key7KeyPairEECs7ZUl82OSlxp_6rustls"}
!1313 = distinct !{!1313, !1312, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs222MioR9bx1_9aws_lc_rs3rsa3key7KeyPairEECs7ZUl82OSlxp_6rustls: argument 0"}
!1314 = distinct !{!1314, i1 true, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs222MioR9bx1_9aws_lc_rs3rsa3key7KeyPairENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls"}
!1315 = distinct !{!1315, !1314, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs222MioR9bx1_9aws_lc_rs3rsa3key7KeyPairENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls: argument 0"}
!1316 = !{!1303}
!1317 = !{!"branch_weights", i32 12000, i32 12002}
!1318 = !{!1305}
!1319 = !{!1311, !1309, !1307}
!1320 = !{!1315, !1313}
!1321 = distinct !{!1321, i1 true, !"_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterNtNtCs7ZUl82OSlxp_6rustls6suites20SupportedCipherSuiteENtNtNtNtBa_4iter6traits8iterator8Iterator9size_hintBT_"}
!1322 = distinct !{!1322, !1321, !"_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterNtNtCs7ZUl82OSlxp_6rustls6suites20SupportedCipherSuiteENtNtNtNtBa_4iter6traits8iterator8Iterator9size_hintBT_: argument 0"}
!1323 = !{!1322}
!1324 = distinct !{!1324, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs222MioR9bx1_9aws_lc_rs3kem12SharedSecretECs7ZUl82OSlxp_6rustls"}
!1325 = distinct !{!1325, !1324, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs222MioR9bx1_9aws_lc_rs3kem12SharedSecretECs7ZUl82OSlxp_6rustls: argument 0"}
!1326 = !{!1325}
!1327 = distinct !{!1327, i1 true, !"_RINvNtNtCs7ZUl82OSlxp_6rustls6crypto6signer18public_key_to_spkiRNtNtCs222MioR9bx1_9aws_lc_rs7ed255199PublicKeyEB6_"}
!1328 = distinct !{!1328, !1327, !"_RINvNtNtCs7ZUl82OSlxp_6rustls6crypto6signer18public_key_to_spkiRNtNtCs222MioR9bx1_9aws_lc_rs7ed255199PublicKeyEB6_: argument 1"}
!1329 = distinct !{!1329, !1327, !"_RINvNtNtCs7ZUl82OSlxp_6rustls6crypto6signer18public_key_to_spkiRNtNtCs222MioR9bx1_9aws_lc_rs7ed255199PublicKeyEB6_: argument 0"}
!1330 = distinct !{!1330, i1 true, !"_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE15append_elementsCs7ZUl82OSlxp_6rustls"}
!1331 = distinct !{!1331, !1330, !"_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE15append_elementsCs7ZUl82OSlxp_6rustls: argument 0"}
!1332 = !{!1329, !1328}
!1333 = !{!1329}
!1334 = !{!1331}
!1335 = !{!1328}
!1336 = distinct !{!1336, i1 true, !"_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxNtNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4sign13Ed25519SignerE3newBM_"}
!1337 = distinct !{!1337, !1336, !"_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxNtNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4sign13Ed25519SignerE3newBM_: argument 0"}
!1338 = distinct !{!1338, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4sign13Ed25519SignerEBJ_"}
!1339 = distinct !{!1339, !1338, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4sign13Ed25519SignerEBJ_: argument 0"}
!1340 = distinct !{!1340, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs222MioR9bx1_9aws_lc_rs7ed2551914Ed25519KeyPairEECs7ZUl82OSlxp_6rustls"}
!1341 = distinct !{!1341, !1340, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs222MioR9bx1_9aws_lc_rs7ed2551914Ed25519KeyPairEECs7ZUl82OSlxp_6rustls: argument 0"}
!1342 = distinct !{!1342, i1 true, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtCs222MioR9bx1_9aws_lc_rs7ed2551914Ed25519KeyPairENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls"}
!1343 = distinct !{!1343, !1342, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtCs222MioR9bx1_9aws_lc_rs7ed2551914Ed25519KeyPairENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls: argument 0"}
!1344 = !{!1337}
!1345 = !{!1343, !1341, !1339}
!1346 = distinct !{!1346, i1 true, !"_RNvMsc_NtCs222MioR9bx1_9aws_lc_rs7ed25519NtB5_14Ed25519KeyPair8try_sign"}
!1347 = distinct !{!1347, !1346, !"_RNvMsc_NtCs222MioR9bx1_9aws_lc_rs7ed25519NtB5_14Ed25519KeyPair8try_sign: argument 0"}
!1348 = distinct !{!1348, !1346, !"_RNvMsc_NtCs222MioR9bx1_9aws_lc_rs7ed25519NtB5_14Ed25519KeyPair8try_sign: argument 2"}
!1349 = distinct !{!1349, !1346, !"_RNvMsc_NtCs222MioR9bx1_9aws_lc_rs7ed25519NtB5_14Ed25519KeyPair8try_sign: argument 1"}
!1350 = distinct !{!1350, i1 true, !"_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultNtNtCs222MioR9bx1_9aws_lc_rs9signature9SignatureNtNtBL_5error11UnspecifiedE6expectCs7ZUl82OSlxp_6rustls"}
!1351 = distinct !{!1351, !1350, !"_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultNtNtCs222MioR9bx1_9aws_lc_rs9signature9SignatureNtNtBL_5error11UnspecifiedE6expectCs7ZUl82OSlxp_6rustls: argument 1"}
!1352 = distinct !{!1352, !1350, !"_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultNtNtCs222MioR9bx1_9aws_lc_rs9signature9SignatureNtNtBL_5error11UnspecifiedE6expectCs7ZUl82OSlxp_6rustls: argument 0"}
!1353 = !{!1347}
!1354 = !{!1347, !1349, !1348}
!1355 = !{!1352, !1351}
!1356 = distinct !{!1356, i1 true, !"_RNvXs_NtNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs2pq5mlkemNtB4_6ActiveNtBa_17ActiveKeyExchange5group"}
!1357 = distinct !{!1357, !1356, !"_RNvXs_NtNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs2pq5mlkemNtB4_6ActiveNtBa_17ActiveKeyExchange5group: argument 0"}
!1358 = !{!1357}
end_hunk_1
