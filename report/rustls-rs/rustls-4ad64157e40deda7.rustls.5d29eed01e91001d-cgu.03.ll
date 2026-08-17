inline.NumInlined: 756
inline.NumDeleted: 183
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_RNvMNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4hpkeINtB2_11HpkeAwsLcRsKj20_Kj40_E12key_scheduleB8_:bb.a
  invoke fastcc void @_RINvNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4hpke14labeled_expandKjc_EB8_(ptr noalias nofree noundef nonnull align 1 captures(address) dereferenceable(12) %i.d, ptr noalias nofree noundef readonly align 2 captures(address) dereferenceable(12) %i.k, ptr noundef nonnull %i.as, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.at, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ap, i64 noundef range(i64 0, -9223372036854775808) %i.aq)
          to label %_RINvMNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4hpkeINtB3_11HpkeAwsLcRsKj20_Kj40_E27key_schedule_labeled_expandKjc_EB9_.exit unwind label %bb.j

bb.j:                                             ; preds = %.noexc10, %_RINvMNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4hpkeINtB3_11HpkeAwsLcRsKj20_Kj40_E27key_schedule_labeled_expandKB1a_EB9_.exit
  %i.au = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !408
  %i.av = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store ptr %i.f, ptr %i.b, align 8, !noalias !408
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.av, ptr %i.aw, align 8, !noalias !408
  invoke void @_RNvXs4_CshEiLVZluVSb_7zeroizeINtNtNtCsj6eKBz9Db1c_4core5slice4iter7IterMuthENtB5_7Zeroize7zeroizeCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4hpke7AeadKeyKj20_EEBK_.exit unwind label %bb.t

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4hpke7AeadKeyKj20_EEBK_.exit: ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !408
  br label %bb.h

_RINvMNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4hpkeINtB3_11HpkeAwsLcRsKj20_Kj40_E27key_schedule_labeled_expandKjc_EB9_.exit: ; preds = %.noexc10
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8, !nonnull !4, !align !5, !noundef !4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(32) %i.f, i64 32, i1 false)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(12) %i.d, i64 12, i1 false)
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ay, ptr %i.az, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 0, ptr %.sroa.6.0..sroa_idx, align 4
  store i8 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %bb.l unwind label %bb.k

bb.k:                                             ; preds = %_RINvMNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4hpkeINtB3_11HpkeAwsLcRsKj20_Kj40_E27key_schedule_labeled_expandKjc_EB9_.exit
  %i.ba = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %.body unwind label %bb.m

bb.l:                                             ; preds = %_RINvMNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4hpkeINtB3_11HpkeAwsLcRsKj20_Kj40_E27key_schedule_labeled_expandKjc_EB9_.exit
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs7ZUl82OSlxp_6rustls.exit unwind label %bb.f

bb.m:                                             ; preds = %bb.k
  %i.bb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs7ZUl82OSlxp_6rustls.exit: ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %bb.o unwind label %bb.n

bb.n:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs7ZUl82OSlxp_6rustls.exit
  %i.bc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %.body16 unwind label %bb.p

bb.o:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs7ZUl82OSlxp_6rustls.exit
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs7ZUl82OSlxp_6rustls.exit18 unwind label %bb.d

bb.p:                                             ; preds = %bb.n
  %i.bd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs7ZUl82OSlxp_6rustls.exit18: ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %bb.r unwind label %bb.q

bb.q:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs7ZUl82OSlxp_6rustls.exit18
  %i.be = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %.body21 unwind label %bb.s

bb.r:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs7ZUl82OSlxp_6rustls.exit18
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs7ZUl82OSlxp_6rustls.exit23 unwind label %bb.b

bb.s:                                             ; preds = %bb.q
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs7ZUl82OSlxp_6rustls.exit23: ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !413
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 64
  store ptr %2, ptr %i.a, align 8, !noalias !413
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.bg, ptr %i.bh, align 8, !noalias !413
  call void @_RNvXs4_CshEiLVZluVSb_7zeroizeINtNtNtCsj6eKBz9Db1c_4core5slice4iter7IterMuthENtB5_7Zeroize7zeroizeCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !413
  ret void

bb.t:                                             ; preds = %bb.j, %.body21, %bb.h, %.body, %.body16
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #22
  unreachable

bb.u:                                             ; preds = %.body21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !403
  resume { ptr, i32 } %.pn7
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4quicNtB2_19HeaderProtectionKey12xor_in_place(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(504) %1, ptr noalias nofree noundef nonnull readonly captures(none) %2, i64 noundef range(i64 0, -9223372036854775808) %3, ptr noalias nofree noundef nonnull captures(none) dereferenceable(1) %4, ptr noalias nofree noundef nonnull %5, i64 noundef range(i64 0, -9223372036854775808) %6, i1 noundef zeroext %7) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [16 x i8], align 1                ; 5 uses
  %i.e = alloca [5 x i8], align 8                 ; 5 uses
  %i.f = alloca [16 x i8], align 8                ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [5 x i8], align 8                 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.l = icmp eq i64 %3, 16
  br i1 %i.l, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !418)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !421
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 1 dereferenceable(16) %2, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !421
  %i.n = load i8, ptr %i.m, align 8, !range !75, !alias.scope !418, !noalias !423, !noundef !4
  %i.o = icmp eq i8 %i.n, 3
  br i1 %i.o, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.01.0.i = getelementptr inbounds nuw i8, ptr %1, i64 12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !421
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 1 dereferenceable(16) %2, i64 16, i1 false)
  call void @_RNvNtNtCs222MioR9bx1_9aws_lc_rs6cipher3aes15aes_ecb_encrypt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(244) %.sroa.01.0.i, ptr noalias nofree noundef nonnull %i.g, i64 noundef 16), !noalias !423
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 8 dereferenceable(16) %i.g, i64 16, i1 false), !noalias !421
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !421
  br label %_RNvNtNtCs222MioR9bx1_9aws_lc_rs4aead4quic15cipher_new_mask.exit

bb.d:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %.sroa.08.0.copyload.i = load i32, ptr %i.i, align 8, !noalias !421
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !421
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false), !noalias !421
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !421
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.d, i8 0, i64 16, i1 false), !noalias !421
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 9
  call void @"\01aws_lc_0_43_0_CRYPTO_chacha_20"(ptr noundef nonnull %i.d, ptr noundef nonnull %i.f, i64 noundef 16, ptr noundef nonnull readonly %i.q, ptr noundef nonnull %i.p, i32 noundef %.sroa.08.0.copyload.i) #21, !noalias !423
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 1 dereferenceable(16) %i.d, i64 16, i1 false), !noalias !421
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !421
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !421
  br label %_RNvNtNtCs222MioR9bx1_9aws_lc_rs4aead4quic15cipher_new_mask.exit

_RNvNtNtCs222MioR9bx1_9aws_lc_rs4aead4quic15cipher_new_mask.exit: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !421
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.e, i8 0, i64 5, i1 false), !noalias !421
  call void @_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implhECs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull %i.e, i64 noundef 5, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.h, i64 noundef 5, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @44), !noalias !423
  %.sroa.010.0.copyload.i = load i40, ptr %i.e, align 8, !noalias !421 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !421
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !421
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !421
  store i40 %.sroa.010.0.copyload.i, ptr %i.k, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 1 ; 2 uses
  %i.s = icmp samesign ugt i64 %6, 4
  br i1 %i.s, label %bb.h, label %bb.g

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !424
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef 24, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !424
  %i.t = load i64, ptr %i.c, align 8, !range !427, !noalias !424, !noundef !4
  %i.u = trunc nuw i64 %i.t to i1
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.w = load i64, ptr %i.v, align 8, !range !428, !noalias !424, !noundef !4 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.u, label %bb.f, label %_RNCNvMNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4quicNtB4_19HeaderProtectionKey12xor_in_place0Ba_.exit, !prof !429

bb.f:                                             ; preds = %bb.e
  %i.y = load i64, ptr %i.x, align 8, !noalias !424
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.w, i64 %i.y) #25, !noalias !424
  unreachable

_RNCNvMNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4quicNtB4_19HeaderProtectionKey12xor_in_place0Ba_.exit: ; preds = %bb.e
  %i.z = load ptr, ptr %i.x, align 8, !noalias !424, !nonnull !4, !noundef !4 ; 2 uses
  %i.aa = icmp samesign ugt i64 %i.w, 23
  tail call void @llvm.assume(i1 %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !424
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.z, ptr noundef nonnull align 1 dereferenceable(24) @17, i64 24, i1 false), !noalias !424
  br label %bb.k

bb.g:                                             ; preds = %_RNvNtNtCs222MioR9bx1_9aws_lc_rs4aead4quic15cipher_new_mask.exit
  %i.ab = trunc i40 %.sroa.010.0.copyload.i to i8 ; 2 uses
  %i.ac = load i8, ptr %4, align 1, !noundef !4   ; 3 uses
  %.not = icmp sgt i8 %i.ac, -1
  %. = select i1 %.not, i8 31, i8 15
  %i.ad = and i8 %., %i.ab
  %i.ae = xor i8 %i.ad, %i.ac
  store i8 %i.ae, ptr %4, align 1
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 %6
  %i.ag = getelementptr inbounds nuw i8, ptr %i.k, i64 5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !430
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !430
  store ptr %5, ptr %i.b, align 8, !noalias !434
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.af, ptr %i.ah, align 8, !noalias !434
  store ptr %i.r, ptr %i.a, align 8, !noalias !434
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.ag, ptr %i.ai, align 8, !noalias !434
  %i.aj = call noundef i64 @_RNvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter7IterMuthENtNtNtNtB9_4iter8adapters3zip27TrustedRandomAccessNoCoerce4sizeCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b), !noalias !437
  %i.ak = call noundef i64 @_RNvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterhENtNtNtNtB9_4iter8adapters3zip27TrustedRandomAccessNoCoerce4sizeCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a), !noalias !437
  %..i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.ak, i64 %i.aj) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !430
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !430
  %.not74 = icmp eq i64 %..i.i.i, 0
  br i1 %.not74, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs7ZUl82OSlxp_6rustls.exit.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.g
  %i.al = select i1 %7, i8 %i.ab, i8 0
  %.sroa.021.0 = xor i8 %i.al, %i.ac
  %i.am = add i64 %..i.i.i, -1
  %i.an = and i8 %.sroa.021.0, 3
  %i.ao = zext nneg i8 %i.an to i64
  %umin = call i64 @llvm.umin.i64(i64 %i.am, i64 %i.ao) ; 3 uses
  %i.ap = load i8, ptr %i.r, align 1, !noundef !4
  %i.aq = load i8, ptr %5, align 1, !noundef !4
  %i.ar = xor i8 %i.aq, %i.ap
  store i8 %i.ar, ptr %5, align 1
  %exitcond.not = icmp eq i64 %umin, 0
  br i1 %exitcond.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs7ZUl82OSlxp_6rustls.exit.thread, label %.lr.ph.1

bb.h:                                             ; preds = %_RNvNtNtCs222MioR9bx1_9aws_lc_rs4aead4quic15cipher_new_mask.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, i64 noundef 22, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.as = load i64, ptr %i.j, align 8, !range !427, !noundef !4
  %i.at = trunc nuw i64 %i.as to i1
  %i.au = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.av = load i64, ptr %i.au, align 8, !range !428, !noundef !4 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  br i1 %i.at, label %bb.j, label %8, !prof !429

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs7ZUl82OSlxp_6rustls.exit.thread: ; preds = %.lr.ph.preheader, %.lr.ph.1, %.lr.ph.2, %.lr.ph.3, %bb.g
  store i8 -1, ptr %0, align 8
  br label %bb.i

.lr.ph.1:                                         ; preds = %.lr.ph.preheader
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 1 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.k, i64 2
  %i.az = load i8, ptr %i.ay, align 2, !noundef !4
  %i.ba = load i8, ptr %i.ax, align 1, !noundef !4
  %i.bb = xor i8 %i.ba, %i.az
  store i8 %i.bb, ptr %i.ax, align 1
  %exitcond.not.1 = icmp eq i64 %umin, 1
  br i1 %exitcond.not.1, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs7ZUl82OSlxp_6rustls.exit.thread, label %.lr.ph.2

.lr.ph.2:                                         ; preds = %.lr.ph.1
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 2 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.k, i64 3
  %i.be = load i8, ptr %i.bd, align 1, !noundef !4
  %i.bf = load i8, ptr %i.bc, align 1, !noundef !4
  %i.bg = xor i8 %i.bf, %i.be
  store i8 %i.bg, ptr %i.bc, align 1
  %exitcond.not.2 = icmp eq i64 %umin, 2
  br i1 %exitcond.not.2, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs7ZUl82OSlxp_6rustls.exit.thread, label %.lr.ph.3

.lr.ph.3:                                         ; preds = %.lr.ph.2
  %i.bh = getelementptr inbounds nuw i8, ptr %5, i64 3 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.bj = load i8, ptr %i.bi, align 4, !noundef !4
  %i.bk = load i8, ptr %i.bh, align 1, !noundef !4
  %i.bl = xor i8 %i.bk, %i.bj
  store i8 %i.bl, ptr %i.bh, align 1
  br label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs7ZUl82OSlxp_6rustls.exit.thread

bb.i:                                             ; preds = %bb.k, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs7ZUl82OSlxp_6rustls.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  ret void

bb.j:                                             ; preds = %bb.h
  %i.bm = load i64, ptr %i.aw, align 8
  call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.av, i64 %i.bm) #25
  unreachable

8:                                                ; preds = %bb.h
  %9 = load ptr, ptr %i.aw, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %10 = icmp samesign ugt i64 %i.av, 21
  call void @llvm.assume(i1 %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(22) %9, ptr noundef nonnull align 1 dereferenceable(22) @20, i64 22, i1 false)
  br label %bb.k

bb.k:                                             ; preds = %8, %_RNCNvMNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4quicNtB4_19HeaderProtectionKey12xor_in_place0Ba_.exit
  %.sink76 = phi i64 [ %i.av, %8 ], [ %i.w, %_RNCNvMNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4quicNtB4_19HeaderProtectionKey12xor_in_place0Ba_.exit ]
  %.sink75 = phi ptr [ %9, %8 ], [ %i.z, %_RNCNvMNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4quicNtB4_19HeaderProtectionKey12xor_in_place0Ba_.exit ]
  %.sink = phi i64 [ 22, %8 ], [ 24, %_RNCNvMNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4quicNtB4_19HeaderProtectionKey12xor_in_place0Ba_.exit ]
  store i8 13, ptr %0, align 8
  %.sroa.417.sroa.3.0..sroa.417.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink76, ptr %.sroa.417.sroa.3.0..sroa.417.0..sroa_idx.sroa_idx, align 8
  %.sroa.417.sroa.4.0..sroa.417.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sink75, ptr %.sroa.417.sroa.4.0..sroa.417.0..sroa_idx.sroa_idx, align 8
  %.sroa.417.sroa.5.0..sroa.417.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sink, ptr %.sroa.417.sroa.5.0..sroa.417.0..sroa_idx.sroa_idx, align 8
  br label %bb.i
}

; Function Attrs: nonlazybind uwtable
define { ptr, i64 } @_RNvMs2_NtNtNtCs7ZUl82OSlxp_6rustls4msgs8deframer7buffersNtB5_17DeframerVecBuffer10filled_mut(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !noundef !4 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 2 uses
  %.not = icmp ugt i64 %i.b, %i.d
  br i1 %.not, label %bb.b, label %bb.c, !prof !209

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.b, i64 noundef %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #23
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !4, !noundef !4
  %i.g = insertvalue { ptr, i64 } poison, ptr %i.f, 0
  %i.h = insertvalue { ptr, i64 } %i.g, i64 %i.b, 1
  ret { ptr, i64 } %i.h
}

; Function Attrs: nonlazybind uwtable
define { ptr, i64 } @_RNvMs2_NtNtNtCs7ZUl82OSlxp_6rustls4msgs8deframer7buffersNtB5_17DeframerVecBuffer6filled(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !noundef !4 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 2 uses
  %.not = icmp ugt i64 %i.b, %i.d
  br i1 %.not, label %bb.b, label %bb.c, !prof !209

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.b, i64 noundef %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #23
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !4, !noundef !4
  %i.g = insertvalue { ptr, i64 } poison, ptr %i.f, 0
  %i.h = insertvalue { ptr, i64 } %i.g, i64 %i.b, 1
  ret { ptr, i64 } %i.h
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs2_NtNtNtCs7ZUl82OSlxp_6rustls4msgs8deframer7buffersNtB5_17DeframerVecBuffer7discard(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, i64 noundef %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !4 ; 3 uses
  %i.c = icmp ult i64 %1, %i.b
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i64, ptr %i.f, align 8, !noundef !4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !438)
  %i.h = tail call { i64, i64 } @_RINvNtNtCsj6eKBz9Db1c_4core5slice5index5rangeINtNtNtB6_3ops5range5RangejEECs7ZUl82OSlxp_6rustls(i64 noundef %1, i64 noundef %i.b, i64 noundef range(i64 0, -9223372036854775808) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @27), !noalias !438 ; 2 uses
  %i.i = extractvalue { i64, i64 } %i.h, 1
  %i.j = extractvalue { i64, i64 } %i.h, 0        ; 2 uses
  %i.k = sub i64 %i.i, %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.j
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.e, ptr nonnull align 1 %i.l, i64 %i.k, i1 false), !alias.scope !438, !noalias !441
  %i.m = sub nuw i64 %i.b, %1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %storemerge = phi i64 [ %i.m, %bb.b ], [ 0, %bb.a ]
  store i64 %storemerge, ptr %i.a, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define { i64, ptr } @_RNvMs3_NtNtNtCs7ZUl82OSlxp_6rustls4msgs8deframer7buffersNtB5_17DeframerVecBuffer4read(ptr noalias nofree noundef align 8 dereferenceable(32) %0, ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(88) %2, i1 noundef zeroext %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %..i = select i1 %3, i64 65535, i64 18437       ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !443, !noundef !4 ; 3 uses
  %.not.i = icmp ult i64 %i.b, %..i
  br i1 %.not.i, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.c = add nuw nsw i64 %i.b, 4096
  %..i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.c, i64 %..i) ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !443, !noundef !4 ; 3 uses
  %i.f = icmp sgt i64 %i.e, -1
  tail call void @llvm.assume(i1 %i.f)
  %i.g = icmp samesign ugt i64 %..i.i, %i.e
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = icmp eq i64 %i.b, 0
  %i.i = icmp samesign ugt i64 %i.e, %..i
  %or.cond.i = select i1 %i.h, i1 true, i1 %i.i
  br i1 %or.cond.i, label %bb.e, label %bb.g

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvMs1_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechE6resizeCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %..i.i, i8 noundef 0)
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvMs1_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechE6resizeCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %..i.i, i8 noundef 0)
  tail call void @_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE9shrink_toCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %..i.i)
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  %i.j = tail call noundef nonnull ptr @_RINvMNtNtCs4wP2HXfJTCR_5alloc2io5errorNtNtNtCsj6eKBz9Db1c_4core2io5error5Error3newReECsaKJjC64KgbL_3std(i8 noundef 21, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 19) #26
  br label %bb.h

bb.g:                                             ; preds = %bb.c, %bb.e, %bb.d
  %i.k = load i64, ptr %i.a, align 8, !noundef !4 ; 4 uses
  %i.l = load i64, ptr %i.d, align 8, !noundef !4 ; 4 uses
  %i.m = icmp ugt i64 %i.k, %i.l
  br i1 %i.m, label %bb.j, label %bb.i, !prof !429

bb.h:                                             ; preds = %bb.i, %bb.k, %bb.f
  %.sroa.4.0 = phi ptr [ %i.j, %bb.f ], [ %i.x, %bb.k ], [ %i.x, %bb.i ]
  %.sroa.0.0 = phi i64 [ 1, %bb.f ], [ 0, %bb.k ], [ 1, %bb.i ]
  %i.n = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.o = insertvalue { i64, ptr } %i.n, ptr %.sroa.4.0, 1
  ret { i64, ptr } %i.o

bb.i:                                             ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !4, !noundef !4
  %i.r = sub nuw i64 %i.l, %i.k
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.k
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !invariant.load !4, !nonnull !4
  %i.v = tail call { i64, ptr } %i.u(ptr noundef nonnull %1, ptr noalias nofree noundef nonnull %i.s, i64 noundef %i.r) #27 ; 2 uses
  %i.w = extractvalue { i64, ptr } %i.v, 0
  %i.x = extractvalue { i64, ptr } %i.v, 1        ; 3 uses
  %i.y = trunc nuw i64 %i.w to i1
  br i1 %i.y, label %bb.h, label %bb.k

bb.j:                                             ; preds = %bb.g
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.k, i64 noundef %i.l, i64 noundef %i.l, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #23
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = load i64, ptr %i.a, align 8, !noundef !4
  %i.ab = add i64 %i.aa, %i.z
  store i64 %i.ab, ptr %i.a, align 8
  br label %bb.h
}

; Function Attrs: nonlazybind uwtable
define { i64, i64 } @_RNvMs3_NtNtNtCs7ZUl82OSlxp_6rustls4msgs8deframer7buffersNtB5_17DeframerVecBuffer6extend(ptr noalias nofree noundef align 8 dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !4 ; 5 uses
  %i.c = add i64 %i.b, %2                         ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !noundef !4 ; 3 uses
  %i.f = icmp sgt i64 %i.e, -1
  tail call void @llvm.assume(i1 %i.f)
  %i.g = icmp ult i64 %i.e, %i.c
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMs1_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechE6resizeCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.c, i8 noundef 0)
  %.pre = load i64, ptr %i.d, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.h = phi i64 [ %i.e, %bb.a ], [ %.pre, %bb.b ] ; 2 uses
  %i.i = icmp ult i64 %i.c, %i.b
  %.not = icmp ugt i64 %i.c, %i.h
  %or.cond = or i1 %i.i, %.not
  br i1 %or.cond, label %bb.d, label %bb.e, !prof !209

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.b, i64 noundef %i.c, i64 noundef %i.h, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31) #23
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !4, !noundef !4
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.b
  tail call void @_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implhECs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull %i.l, i64 noundef %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30)
  %i.m = load i64, ptr %i.a, align 8, !noundef !4
  %i.n = add i64 %i.m, %2
  store i64 %i.n, ptr %i.a, align 8
  %i.o = insertvalue { i64, i64 } poison, i64 %i.b, 0
  %i.p = insertvalue { i64, i64 } %i.o, i64 %i.c, 1
  ret { i64, i64 } %i.p
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvMs4_NtNtNtCs7ZUl82OSlxp_6rustls4msgs8deframer7buffersNtB5_19DeframerSliceBuffer10filled_mut(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !noundef !4 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
end_hunk_0
