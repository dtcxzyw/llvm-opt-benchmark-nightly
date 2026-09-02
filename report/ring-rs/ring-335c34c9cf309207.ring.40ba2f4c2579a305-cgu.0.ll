Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ring-rs/original/ring-335c34c9cf309207.ring.40ba2f4c2579a305-cgu.0?download=true
inline.NumInlined: 2615
inline.NumDeleted: 1171
loop-unroll.NumCompletelyUnrolled: 84
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 88
begin_hunk_0_@_RNvMNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigintINtNtB2_4elem5BoxedNtNtNtB6_3rsa7keypair1PE20from_be_bytes_paddedB6_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1145
  br i1 %.not.i.i5.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxSINtNtNtB4_3mem12maybe_uninit11MaybeUninityEEECs5yxAJGbRKSL_4ring.exit18, label %bb.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxSINtNtNtB4_3mem12maybe_uninit11MaybeUninityEEECs5yxAJGbRKSL_4ring.exit18: ; preds = %bb.h, %_RNvNtCs5yxAJGbRKSL_4ring4limb37verify_limbs_less_than_limbs_leak_bit.exit.i.i, %.noexc15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1139
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.g, i64 noundef %i.e, i64 noundef 8) #36
  br label %bb.j

bb.i:                                             ; preds = %_RNvNtCs5yxAJGbRKSL_4ring4limb37verify_limbs_less_than_limbs_leak_bit.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1139
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxSINtNtNtB4_3mem12maybe_uninit11MaybeUninityEEECs5yxAJGbRKSL_4ring.exit18
  %.sroa.0.0 = phi ptr [ null, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxSINtNtNtB4_3mem12maybe_uninit11MaybeUninityEEECs5yxAJGbRKSL_4ring.exit18 ], [ %i.g, %bb.i ]
  %i.q = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %i.r = insertvalue { ptr, i64 } %i.q, i64 %i.d, 1
  ret { ptr, i64 } %i.r

bb.k:                                             ; preds = %_RNvMs6_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montINtNtB5_4base4MontNtNtNtBd_3rsa7keypair1PE9num_limbsBd_.exit.i, %bb.g
  %i.s = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.g, i64 noundef %i.e, i64 noundef 8) #36
  resume { ptr, i32 } %i.s
}

; Function Attrs: nonlazybind uwtable
define noundef range(i64 0, 2305843009213693946) i64 @_RNvMNtNtCs5yxAJGbRKSL_4ring3rsa10public_keyNtB2_9PublicKey11modulus_len(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %0) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !18, !noundef !18
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !18 ; 2 uses
  %i.d = icmp ult i64 %i.c, 2
  br i1 %i.d, label %bb.b, label %_RNvMs2_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montINtB5_8IntoMontNtNtBd_3rsa1NNtNtBb_10montgomery2RRE5valueBd_.exit.i.i

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @146) #41, !noalias !1152
  unreachable

_RNvMs2_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montINtB5_8IntoMontNtNtBd_3rsa1NNtNtBb_10montgomery2RRE5valueBd_.exit.i.i: ; preds = %bb.a
  %i.e = add i64 %i.c, -2                         ; 2 uses
  %i.f = lshr i64 %i.e, 1                         ; 3 uses
  %.not.i.i = icmp eq i64 %i.f, 0
  br i1 %.not.i.i, label %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring3rsa4base14public_modulusINtB5_13PublicModulusINtNtNtNtNtBb_10arithmetic6bigint7modulus4mont8IntoMontNtB9_1NNtNtB1n_10montgomery2RREE8len_bits.exit, label %bb.c

bb.c:                                             ; preds = %_RNvMs2_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montINtB5_8IntoMontNtNtBd_3rsa1NNtNtBb_10montgomery2RRE5valueBd_.exit.i.i
  %i.g = icmp ugt i64 %i.e, 576460752303423487
  br i1 %i.g, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr [8 x i8], ptr %i.a, i64 %i.f
  %i.i = getelementptr i8, ptr %i.h, i64 8
  %i.j = load i64, ptr %i.i, align 8, !noundef !18
  %i.k = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.j, i1 false)
  %i.l = shl nuw i64 %i.f, 6
  %i.m = sub nuw i64 %i.l, %i.k
  br label %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring3rsa4base14public_modulusINtB5_13PublicModulusINtNtNtNtNtBb_10arithmetic6bigint7modulus4mont8IntoMontNtB9_1NNtNtB1n_10montgomery2RREE8len_bits.exit

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_mul_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @148) #41
  unreachable

_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring3rsa4base14public_modulusINtB5_13PublicModulusINtNtNtNtNtBb_10arithmetic6bigint7modulus4mont8IntoMontNtB9_1NNtNtB1n_10montgomery2RREE8len_bits.exit: ; preds = %_RNvMs2_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montINtB5_8IntoMontNtNtBd_3rsa1NNtNtBb_10montgomery2RRE5valueBd_.exit.i.i, %bb.d
  %i.n = phi i64 [ %i.m, %bb.d ], [ 0, %_RNvMs2_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montINtB5_8IntoMontNtNtBd_3rsa1NNtNtBb_10montgomery2RRE5valueBd_.exit.i.i ] ; 2 uses
  %i.o = lshr i64 %i.n, 3
  %i.p = and i64 %i.n, 7
  %i.q = icmp ne i64 %i.p, 0
  %i.r = zext i1 %i.q to i64
  %i.s = add nuw nsw i64 %i.o, %i.r
  ret i64 %i.s
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtCs5yxAJGbRKSL_4ring3rsa7keypairNtB2_7KeyPair10from_pkcs8(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([120 x i8]) align 8 captures(none) dereferenceable(120) initializes((0, 24)) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_RNvNtCs5yxAJGbRKSL_4ring5pkcs811unwrap_key_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @110, i64 noundef 13, i8 noundef 0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  %i.b = load ptr, ptr %i.a, align 8, !noundef !18 ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !18, !noundef !18
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.g = load i64, ptr %i.f, align 8, !noundef !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.g, ptr %i.i, align 8
  store ptr null, ptr %0, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %.sroa.4.0.copyload = load i64, ptr %i.d, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @_RNvMNtNtCs5yxAJGbRKSL_4ring3rsa7keypairNtB2_7KeyPair8from_der(ptr noalias nofree noundef nonnull sret([120 x i8]) align 8 captures(address) dereferenceable(120) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %.sroa.4.0.copyload)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtCs5yxAJGbRKSL_4ring3rsa7keypairNtB2_7KeyPair16from_components_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([120 x i8]) align 8 captures(none) dereferenceable(120) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(128) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 25 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %i.e = alloca [24 x i8], align 8                ; 25 uses
  %i.f = alloca [24 x i8], align 8                ; 8 uses
  %i.g = alloca [8 x i8], align 8                 ; 6 uses
  %i.h = alloca [8 x i8], align 8                 ; 6 uses
  %i.i = alloca [32 x i8], align 8                ; 4 uses
  %i.j = alloca [32 x i8], align 8                ; 20 uses
  %i.k = alloca [8 x i8], align 8                 ; 6 uses
  %i.l = alloca [24 x i8], align 8                ; 6 uses
  %i.m = alloca [16 x i8], align 8                ; 9 uses
  %i.n = alloca [16 x i8], align 8                ; 6 uses
  %i.o = alloca [16 x i8], align 8                ; 6 uses
  %i.p = alloca [32 x i8], align 8                ; 8 uses
  %i.q = alloca [32 x i8], align 8                ; 8 uses
  %i.r = alloca [32 x i8], align 8                ; 8 uses
  %i.s = alloca [32 x i8], align 8                ; 8 uses
  %i.t = alloca [32 x i8], align 8                ; 11 uses
  %i.u = alloca [1024 x i8], align 8              ; 4 uses
  %i.v = alloca [1024 x i8], align 8              ; 9 uses
  %i.w = alloca [1024 x i8], align 8              ; 8 uses
  %i.x = alloca [40 x i8], align 8                ; 10 uses
  %i.y = alloca [32 x i8], align 8                ; 3 uses
  %i.z = alloca [56 x i8], align 8                ; 8 uses
  %i.aa = alloca [56 x i8], align 8               ; 8 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8, !nonnull !18, !noundef !18 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ae = load i64, ptr %i.ad, align 8, !noundef !18 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ag = load ptr, ptr %i.af, align 8, !nonnull !18, !noundef !18
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ai = load i64, ptr %i.ah, align 8, !noundef !18
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ak = load ptr, ptr %i.aj, align 8, !nonnull !18, !noundef !18
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.am = load i64, ptr %i.al, align 8, !noundef !18
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ao = load ptr, ptr %i.an, align 8, !nonnull !18, !noundef !18
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.aq = load i64, ptr %i.ap, align 8, !noundef !18
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.as = load ptr, ptr %i.ar, align 8, !nonnull !18, !noundef !18
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.au = load i64, ptr %i.at, align 8, !noundef !18
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.aw = load ptr, ptr %i.av, align 8, !nonnull !18, !noundef !18
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.ay = load i64, ptr %i.ax, align 8, !noundef !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  call fastcc void @_RNvMNtNtNtCs5yxAJGbRKSL_4ring3rsa4base10public_keyNtB2_14ValidatedInput17try_from_be_bytes(ptr noalias nofree noundef align 8 captures(none) dereferenceable(56) %i.aa, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1, i64 noundef 2048, i64 noundef 4096, i64 noundef 65537)
  %i.az = load ptr, ptr %i.aa, align 8, !noundef !18 ; 4 uses
  %i.ba = icmp eq ptr %i.az, null
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8            ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.be = load i64, ptr %i.bd, align 8            ; 19 uses
  br i1 %i.ba, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bc, ptr %i.bf, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.be, ptr %i.bg, align 8
  store ptr null, ptr %0, align 8
  br label %bb.ee

bb.c:                                             ; preds = %bb.a
  %.sroa.6156.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %.sroa.10.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %i.z, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.10.0..sroa_idx6, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6156.0..sroa_idx, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  store ptr %i.az, ptr %i.z, align 8
  %.sroa.6.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr %i.bc, ptr %.sroa.6.0..sroa_idx2, align 8
  %.sroa.8.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store i64 %i.be, ptr %.sroa.8.0..sroa_idx4, align 8
  %.sroa.4.0.copyload = load i64, ptr %.sroa.10.0..sroa_idx6, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx360 = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call fastcc void @_RNvMNtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus5valueNtB2_14ValidatedInput17try_from_be_bytes(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.q, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ag, i64 noundef %i.ai), !noalias !1155
  %i.bh = load ptr, ptr %i.q, align 8, !noalias !1158, !noundef !18 ; 2 uses
  %i.bi = icmp eq ptr %i.bh, null
  %i.bj = ptrtoint ptr %i.bc to i64
  br i1 %i.bi, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.413.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.413.0.copyload.i = load ptr, ptr %.sroa.413.0..sroa_idx.i, align 8, !noalias !1158
  %.sroa.514.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.sroa.514.0.copyload.i = load i64, ptr %.sroa.514.0..sroa_idx.i, align 8, !noalias !1158 ; 35 uses
  %.sroa.615.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %.sroa.615.0.copyload.i = load i64, ptr %.sroa.615.0..sroa_idx.i, align 8, !noalias !1158 ; 10 uses
  %i.bk = lshr i64 %.sroa.4.0.copyload, 1         ; 2 uses
  %i.bl = sub nuw i64 %.sroa.4.0.copyload, %i.bk  ; 2 uses
  %i.bm = icmp ult i64 %i.bl, %i.bk
  br i1 %i.bm, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not.i = icmp eq i64 %.sroa.615.0.copyload.i, %i.bl
  br i1 %.not.i, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.d
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @132) #41, !noalias !1155
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.bn = and i64 %.sroa.615.0.copyload.i, 511
  %i.bo = icmp eq i64 %i.bn, 0
  br i1 %i.bo, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.c, %bb.e
  %.sroa.14.0.ph = phi i64 [ 16, %bb.c ], [ 22, %bb.e ], [ 37, %bb.g ]
  %.sroa.8.0.ph = phi ptr [ @54, %bb.c ], [ @55, %bb.e ], [ @133, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.8.0.ph, ptr %i.bp, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.14.0.ph, ptr %i.bq, align 8
  store ptr null, ptr %0, align 8
  br label %bb.ee

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  %i.br = ptrtoint ptr %.sroa.413.0.copyload.i to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call fastcc void @_RNvMNtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus5valueNtB2_14ValidatedInput17try_from_be_bytes(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.p, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ak, i64 noundef %i.am), !noalias !1160
  %i.bs = load ptr, ptr %i.p, align 8, !noalias !1163, !noundef !18 ; 2 uses
  %i.bt = icmp eq ptr %i.bs, null
  br i1 %i.bt, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.sroa.514.0..sroa_idx.i255 = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.sroa.514.0.copyload.i256 = load i64, ptr %.sroa.514.0..sroa_idx.i255, align 8, !noalias !1163 ; 31 uses
  %.sroa.615.0..sroa_idx.i257 = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %.sroa.615.0.copyload.i258 = load i64, ptr %.sroa.615.0..sroa_idx.i257, align 8, !noalias !1163
  %.not.i259 = icmp eq i64 %.sroa.615.0.copyload.i258, %.sroa.615.0.copyload.i
  br i1 %.not.i259, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %.sroa.14368.0.ph = phi i64 [ 16, %bb.i ], [ 22, %bb.j ]
  %.sroa.8367.0.ph = phi ptr [ @54, %bb.i ], [ @55, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.8367.0.ph, ptr %i.bu, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.14368.0.ph, ptr %i.bv, align 8
  store ptr null, ptr %0, align 8
  br label %bb.ee

bb.l:                                             ; preds = %bb.j
  %.sroa.413.0..sroa_idx.i253 = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.413.0.copyload.i254 = load ptr, ptr %.sroa.413.0..sroa_idx.i253, align 8, !noalias !1163
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %i.bw = ptrtoint ptr %.sroa.413.0.copyload.i254 to i64
  call fastcc void @_RNvMNtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus5valueNtB2_14ValidatedInput17try_from_be_bytes(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.y, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ac, i64 noundef %i.ae)
  %i.bx = load ptr, ptr %i.y, align 8, !noundef !18
  %i.by = icmp eq ptr %i.bx, null
  br i1 %i.by, label %bb.bc, label %_RNvMs3_NtCs5yxAJGbRKSL_4ring4bitsNtB5_9BitLength15half_rounded_up.exit

_RNvMs3_NtCs5yxAJGbRKSL_4ring4bitsNtB5_9BitLength15half_rounded_up.exit: ; preds = %bb.l
  %.sroa.6168.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %.sroa.6168.0.copyload = load i64, ptr %.sroa.6168.0..sroa_idx, align 8
  %i.bz = icmp ult i64 %.sroa.615.0.copyload.i, %.sroa.6168.0.copyload
  br i1 %i.bz, label %bb.m, label %bb.bc

bb.m:                                             ; preds = %_RNvMs3_NtCs5yxAJGbRKSL_4ring4bitsNtB5_9BitLength15half_rounded_up.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1165)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1168)
  %i.ca = icmp slt i64 %i.be, 0
  br i1 %i.ca, label %bb.u, label %bb.n, !prof !35

bb.n:                                             ; preds = %bb.m
  %i.cb = shl nuw i64 %i.be, 1
  %i.cc = add i64 %i.cb, 2                        ; 7 uses
  %i.cd = icmp eq i64 %i.cc, 0
  br i1 %i.cd, label %bb.u, label %bb.o, !prof !35

bb.o:                                             ; preds = %bb.n
  %i.ce = shl i64 %i.cc, 3                        ; 7 uses
  %i.cf = icmp ugt i64 %i.cc, 2305843009213693951
  %.not.i.i.i.i.i.i = icmp ugt i64 %i.ce, 9223372036854775800
  %or.cond.i.i.i.i.i.i = or i1 %i.cf, %.not.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i, label %bb.p, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i, !prof !407

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i: ; preds = %bb.o
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #36, !noalias !1171
  %i.cg = tail call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.ce, i64 noundef range(i64 1, 9) 8) #36, !noalias !1171 ; 12 uses
  %i.ch = icmp eq ptr %i.cg, null
  br i1 %i.ch, label %bb.p, label %_RNvMs2_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSyE16new_uninit_sliceCs5yxAJGbRKSL_4ring.exit.i.i.i.i

bb.p:                                             ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i, %bb.o
  %.sroa.4.0.ph.i.i.i.i.i = phi i64 [ 8, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i ], [ 0, %bb.o ]
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i.i.i, i64 %i.ce) #42, !noalias !1180
  unreachable

_RNvMs2_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSyE16new_uninit_sliceCs5yxAJGbRKSL_4ring.exit.i.i.i.i: ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !1180
  store ptr %i.cg, ptr %i.l, align 8, !noalias !1180
  %i.ci = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  store i64 %i.cc, ptr %i.ci, align 8, !noalias !1180
  %i.cj = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  store i64 0, ptr %i.cj, align 8, !noalias !1180
  %i.ck = invoke fastcc i64 @_RINvMs1_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montNtNtB8_5value14ValidatedInput18write_into_mont_RRNtNtBe_3rsa1NEBe_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.z, ptr noalias nofree noundef align 8 dereferenceable(24) %i.l)
          to label %_RNvMs2_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSyE16new_uninit_sliceCs5yxAJGbRKSL_4ring.exit.i.i.i.i._crit_edge unwind label %bb.t

_RNvMs2_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSyE16new_uninit_sliceCs5yxAJGbRKSL_4ring.exit.i.i.i.i._crit_edge: ; preds = %_RNvMs2_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSyE16new_uninit_sliceCs5yxAJGbRKSL_4ring.exit.i.i.i.i
  %i.cl = trunc nuw i64 %i.ck to i1
  br i1 %i.cl, label %.invoke.i.i.i.i, label %bb.q, !prof !35

.invoke.i.i.i.i:                                  ; preds = %bb.s, %_RNvMs2_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSyE16new_uninit_sliceCs5yxAJGbRKSL_4ring.exit.i.i.i.i._crit_edge
  %i.cm = phi ptr [ @11, %_RNvMs2_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSyE16new_uninit_sliceCs5yxAJGbRKSL_4ring.exit.i.i.i.i._crit_edge ], [ @10, %bb.s ]
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cm) #42
          to label %.cont.i.i.i.i unwind label %bb.t, !noalias !1180

.cont.i.i.i.i:                                    ; preds = %.invoke.i.i.i.i
  unreachable

bb.q:                                             ; preds = %_RNvMs2_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSyE16new_uninit_sliceCs5yxAJGbRKSL_4ring.exit.i.i.i.i._crit_edge
  %i.cn = load i64, ptr %i.cj, align 8, !alias.scope !1181, !noalias !1180, !noundef !18 ; 2 uses
  %i.co = load i64, ptr %i.ci, align 8, !alias.scope !1181, !noalias !1180, !noundef !18
  %.not.i.i.i.i.i = icmp ugt i64 %i.cn, %i.co
  br i1 %.not.i.i.i.i.i, label %bb.r, label %bb.s, !prof !462

bb.r:                                             ; preds = %bb.q
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @169) #41
          to label %.noexc.i.i.i.i unwind label %bb.t, !noalias !1180

.noexc.i.i.i.i:                                   ; preds = %bb.r
  unreachable

bb.s:                                             ; preds = %bb.q
  %.not.i.i.i.i = icmp eq i64 %i.cn, %i.cc
  br i1 %.not.i.i.i.i, label %_RNvMNtNtNtCs5yxAJGbRKSL_4ring3rsa4base10public_keyNtB2_14ValidatedInput11build_boxed.exit.i, label %.invoke.i.i.i.i, !prof !88

common.resume:                                    ; preds = %bb.t, %bb.bb, %.body
  %common.resume.op = phi { ptr, i32 } [ %.pn189, %.body ], [ %i.cp, %bb.t ], [ %eh.lpad-body.i, %bb.bb ]
  resume { ptr, i32 } %common.resume.op

bb.t:                                             ; preds = %_RNvMs2_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSyE16new_uninit_sliceCs5yxAJGbRKSL_4ring.exit.i.i.i.i, %bb.r, %.invoke.i.i.i.i
  %i.cp = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cg, i64 noundef %i.ce, i64 noundef 8) #36, !noalias !1180
  br label %common.resume

bb.u:                                             ; preds = %bb.n, %bb.m
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #41, !noalias !1180
  unreachable

_RNvMNtNtNtCs5yxAJGbRKSL_4ring3rsa4base10public_keyNtB2_14ValidatedInput11build_boxed.exit.i: ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !1180
  %i.cq = load i64, ptr %.sroa.5.0..sroa_idx360, align 8, !range !1184, !alias.scope !1185, !noalias !1186, !noundef !18
  %i.cr = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  %i.cs = load ptr, ptr %i.cr, align 8, !alias.scope !1165, !noalias !1187, !nonnull !18, !noundef !18 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  %i.cu = load i64, ptr %i.ct, align 8, !alias.scope !1165, !noalias !1187, !noundef !18 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !1188
  %.not.i264 = icmp eq ptr %i.bc, null
  br i1 %.not.i264, label %bb.bd, label %bb.v

bb.v:                                             ; preds = %_RNvMNtNtNtCs5yxAJGbRKSL_4ring3rsa4base10public_keyNtB2_14ValidatedInput11build_boxed.exit.i
  %i.cv = load i8, ptr %i.az, align 1, !noalias !1188, !noundef !18
  %i.cw = icmp eq i8 %i.cv, 0
  br i1 %i.cw, label %bb.bd, label %bb.w

bb.w:                                             ; preds = %bb.v
  store ptr %i.az, ptr %i.o, align 8, !noalias !1188
  %i.cx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 %i.bj, ptr %i.cx, align 8, !noalias !1188
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !1188
  %.not41.i = icmp eq i64 %i.cu, 0
  br i1 %.not41.i, label %bb.ay, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cy = load i8, ptr %i.cs, align 1, !noalias !1188, !noundef !18
  %i.cz = icmp eq i8 %i.cy, 0
  br i1 %i.cz, label %bb.ay, label %bb.y

bb.y:                                             ; preds = %bb.x
  store ptr %i.cs, ptr %i.n, align 8, !noalias !1188
  %i.da = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 %i.cu, ptr %i.da, align 8, !noalias !1188
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !1188
  store ptr %i.o, ptr %i.m, align 8, !noalias !1188
  %i.db = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.n, ptr %i.db, align 8, !noalias !1188
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !1188
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1189
  store i64 0, ptr %i.h, align 8, !noalias !1189
  %i.dc = invoke fastcc noundef zeroext i1 @_RNCNvMNtNtCs5yxAJGbRKSL_4ring3rsa10public_keyNtB4_9PublicKey3news0_0B8_(ptr noundef nonnull readonly %i.m, ptr noundef nonnull %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) @35) #40
end_hunk_0
begin_hunk_1_@_RNvMNtNtCs5yxAJGbRKSL_4ring3rsa7keypairNtB2_7KeyPair16from_components_:bb.a
  %i.he = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep, align 8, !alias.scope !1297, !noalias !1298
  %wide.load517 = load <2 x i64>, ptr %i.he, align 8, !alias.scope !1297, !noalias !1298
  %i.hf = xor <2 x i64> %wide.load, splat (i64 -1)
  %i.hg = xor <2 x i64> %wide.load517, splat (i64 -1)
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %i.gn, i64 %index ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 16
  store <2 x i64> %i.hf, ptr %i.hh, align 8, !alias.scope !1308, !noalias !1311
  store <2 x i64> %i.hg, ptr %i.hi, align 8, !alias.scope !1308, !noalias !1311
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.hj = icmp eq i64 %index.next, %n.vec
  br i1 %i.hj, label %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, label %vector.body, !llvm.loop !1314

_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader: ; preds = %vector.body, %bb.bv
  %.sroa.9.0.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %bb.bv ], [ %n.vec, %vector.body ]
  %.sroa.0.02.i.i.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.fv, %bb.bv ], [ %i.hc, %vector.body ]
  br label %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.9.0.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ho, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.9.0.i.i.i.i.i.i.i.i.i.i.ph, %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ] ; 4 uses
  %.sroa.0.02.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.hm, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.0.02.i.i.i.i.i.i.i.i.i.i.i.ph, %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %i.hk = icmp eq i64 %.sroa.514.0.copyload.i, %.sroa.9.0.i.i.i.i.i.i.i.i.i.i
  br i1 %i.hk, label %.invoke45.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i:               ; preds = %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.0.val.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.0.02.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !1297, !noalias !1298, !noundef !18
  %i.hl = xor i64 %.sroa.0.0.val.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.hm = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i.i.i.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %i.gn, i64 %.sroa.9.0.i.i.i.i.i.i.i.i.i.i
  store i64 %i.hl, ptr %i.hn, align 8, !alias.scope !1308, !noalias !1311
  %i.ho = add nuw nsw i64 %.sroa.9.0.i.i.i.i.i.i.i.i.i.i, 1 ; 3 uses
  %i.hp = icmp eq ptr %i.hm, %i.gt
  br i1 %i.hp, label %bb.bw, label %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !1315

bb.bw:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.hq = load i64, ptr %i.gn, align 8, !alias.scope !1316, !noalias !1317, !noundef !18
  %i.hr = or i64 %i.hq, 1
  store i64 %i.hr, ptr %i.gn, align 8, !alias.scope !1316, !noalias !1317
  %i.hs = shl nuw nsw i64 %.sroa.514.0.copyload.i, 6 ; 3 uses
  %i.ht = sub i64 %i.hs, %.sroa.615.0.copyload.i  ; 2 uses
  %i.hu = icmp ult i64 %i.hs, %.sroa.615.0.copyload.i
  br i1 %i.hu, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.hv = icmp eq i64 %i.hs, %.sroa.615.0.copyload.i
  br i1 %i.hv, label %.preheader1.i.i.i.i.i.i.i.i, label %bb.bz

bb.by:                                            ; preds = %bb.bw
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @164) #41
          to label %.noexc11.i.i unwind label %bb.cd, !noalias !1268

.noexc11.i.i:                                     ; preds = %bb.by
  unreachable

bb.bz:                                            ; preds = %bb.bx
  %i.hw = icmp ult i64 %i.ht, 64
  br i1 %i.hw, label %.lr.ph.i.i.i.i.i.i.i.i, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_shr_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @165) #41
          to label %.noexc12.i.i unwind label %bb.cd, !noalias !1268

.noexc12.i.i:                                     ; preds = %bb.ca
  unreachable

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.bz
  %.not.i.not.i.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ho, %.sroa.514.0.copyload.i
  br i1 %.not.i.not.i.not.i.i.i.i.i.i.i.i.i, label %_RNvMsd_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1PNtNtB9_10montgomery1RE6doubleBb_.exit.i.i.i.i.i.i.i.i, label %_RNvNtCs5yxAJGbRKSL_4ring4limb16limbs_double_mod.exit.thread.i.i.i.i.i.i.i.invoke.i.i, !prof !88

_RNvMsd_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1PNtNtB9_10montgomery1RE6doubleBb_.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %_RNvMsd_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1PNtNtB9_10montgomery1RE6doubleBb_.exit.i.i.i.i.i.i.i.i
  %.sroa.08.05.i.i.i.i.i.i.i.i = phi i64 [ %i.hx, %_RNvMsd_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1PNtNtB9_10montgomery1RE6doubleBb_.exit.i.i.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i ]
  %i.hx = add nuw nsw i64 %.sroa.08.05.i.i.i.i.i.i.i.i, 1 ; 2 uses
  call void @ring_core_0_17_16000__LIMBS_shl_mod(ptr noundef nonnull align 8 %i.gn, ptr noundef nonnull align 8 %i.gn, ptr noundef nonnull readonly align 8 %i.fv, i64 noundef range(i64 0, 1152921504606846976) %.sroa.514.0.copyload.i) #36, !noalias !1318
  %exitcond.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.hx, %i.ht
  br i1 %exitcond.not.i.i.i.i.i.i.i.i, label %.preheader1.i.i.i.i.i.i.i.i, label %_RNvMsd_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1PNtNtB9_10montgomery1RE6doubleBb_.exit.i.i.i.i.i.i.i.i

_RNvNtCs5yxAJGbRKSL_4ring4limb16limbs_double_mod.exit.thread.i.i.i.i.i.i.i.invoke.i.i: ; preds = %.preheader1.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i
  invoke fastcc void @_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint36unwrap_impossible_len_mismatch_erroruEB6_() #39
          to label %_RNvNtCs5yxAJGbRKSL_4ring4limb16limbs_double_mod.exit.thread.i.i.i.i.i.i.i.cont.i.i unwind label %bb.cd

_RNvNtCs5yxAJGbRKSL_4ring4limb16limbs_double_mod.exit.thread.i.i.i.i.i.i.i.cont.i.i: ; preds = %_RNvNtCs5yxAJGbRKSL_4ring4limb16limbs_double_mod.exit.thread.i.i.i.i.i.i.i.invoke.i.i
  unreachable

.preheader1.i.i.i.i.i.i.i.i:                      ; preds = %_RNvMsd_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1PNtNtB9_10montgomery1RE6doubleBb_.exit.i.i.i.i.i.i.i.i, %bb.bx
  %.not.i.not.i.not.i.i9.i.i.i.i.i.i.i = icmp eq i64 %i.ho, %.sroa.514.0.copyload.i
  br i1 %.not.i.not.i.not.i.i9.i.i.i.i.i.i.i, label %_RNvMsd_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1PNtNtB9_10montgomery1RE6doubleBb_.exit.i11.i.i.i.i.i.i.i, label %_RNvNtCs5yxAJGbRKSL_4ring4limb16limbs_double_mod.exit.thread.i.i.i.i.i.i.i.invoke.i.i, !prof !88

.preheader.i.i.i.i.i.i.i.i:                       ; preds = %_RNvMsd_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1PNtNtB9_10montgomery1RE6doubleBb_.exit.i11.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1319
  call fastcc void @_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic10montgomery17limbs_square_montQSyEB6_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull align 8 %i.gn, i64 noundef %.sroa.514.0.copyload.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.fv, i64 noundef %.sroa.514.0.copyload.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val.i.i.i.i.i.i), !noalias !1325
  %i.hy = load i64, ptr %i.e, align 8, !range !129, !noalias !1319, !noundef !18
  %i.hz = trunc nuw i64 %i.hy to i1
  br i1 %i.hz, label %bb.cb, label %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1PNtNtB9_10montgomery1RE6squareBb_.exit.i.i.i.i.i.i.i.i, !prof !35

_RNvMsd_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1PNtNtB9_10montgomery1RE6doubleBb_.exit.i11.i.i.i.i.i.i.i: ; preds = %.preheader1.i.i.i.i.i.i.i.i, %_RNvMsd_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1PNtNtB9_10montgomery1RE6doubleBb_.exit.i11.i.i.i.i.i.i.i
  %.sroa.05.02.i.i.i.i.i.i.i.i = phi i64 [ %i.ia, %_RNvMsd_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1PNtNtB9_10montgomery1RE6doubleBb_.exit.i11.i.i.i.i.i.i.i ], [ 0, %.preheader1.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.ia = add nuw nsw i64 %.sroa.05.02.i.i.i.i.i.i.i.i, 1
  call void @ring_core_0_17_16000__LIMBS_shl_mod(ptr noundef nonnull align 8 %i.gn, ptr noundef nonnull align 8 %i.gn, ptr noundef nonnull readonly align 8 %i.fv, i64 noundef range(i64 0, 1152921504606846976) %.sroa.514.0.copyload.i) #36, !noalias !1325
  %exitcond.not.i12.i.i.i.i.i.i.i = icmp eq i64 %.sroa.05.02.i.i.i.i.i.i.i.i, %.sroa.9.0.i.i.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i12.i.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i.i, label %_RNvMsd_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1PNtNtB9_10montgomery1RE6doubleBb_.exit.i11.i.i.i.i.i.i.i

bb.cb:                                            ; preds = %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1PNtNtB9_10montgomery1RE6squareBb_.exit.4.i.i.i.i.i.i.i.i, %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1PNtNtB9_10montgomery1RE6squareBb_.exit.3.i.i.i.i.i.i.i.i, %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1PNtNtB9_10montgomery1RE6squareBb_.exit.2.i.i.i.i.i.i.i.i, %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1PNtNtB9_10montgomery1RE6squareBb_.exit.1.i.i.i.i.i.i.i.i, %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1PNtNtB9_10montgomery1RE6squareBb_.exit.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i
  %i.ib = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ic = load i64, ptr %i.ib, align 8, !range !130, !noalias !1319, !noundef !18
  invoke fastcc void @_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint34unwrap_impossible_limb_slice_errorQSyEB6_(i64 noundef %i.ic) #39
          to label %.noexc15.i.i unwind label %bb.cd

.noexc15.i.i:                                     ; preds = %bb.cb
  unreachable

_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1PNtNtB9_10montgomery1RE6squareBb_.exit.i.i.i.i.i.i.i.i: ; preds = %.preheader.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1319
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1319
  call fastcc void @_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic10montgomery17limbs_square_montQSyEB6_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull align 8 %i.gn, i64 noundef %.sroa.514.0.copyload.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.fv, i64 noundef %.sroa.514.0.copyload.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val.i.i.i.i.i.i), !noalias !1325
  %i.id = load i64, ptr %i.e, align 8, !range !129, !noalias !1319, !noundef !18
  %i.ie = trunc nuw i64 %i.id to i1
  br i1 %i.ie, label %bb.cb, label %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1PNtNtB9_10montgomery1RE6squareBb_.exit.1.i.i.i.i.i.i.i.i, !prof !35

_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1PNtNtB9_10montgomery1RE6squareBb_.exit.1.i.i.i.i.i.i.i.i: ; preds = %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1PNtNtB9_10montgomery1RE6squareBb_.exit.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1319
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1319
  call fastcc void @_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic10montgomery17limbs_square_montQSyEB6_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull align 8 %i.gn, i64 noundef %.sroa.514.0.copyload.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.fv, i64 noundef %.sroa.514.0.copyload.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val.i.i.i.i.i.i), !noalias !1325
  %i.if = load i64, ptr %i.e, align 8, !range !129, !noalias !1319, !noundef !18
  %i.ig = trunc nuw i64 %i.if to i1
  br i1 %i.ig, label %bb.cb, label %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1PNtNtB9_10montgomery1RE6squareBb_.exit.2.i.i.i.i.i.i.i.i, !prof !35

_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1PNtNtB9_10montgomery1RE6squareBb_.exit.2.i.i.i.i.i.i.i.i: ; preds = %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1PNtNtB9_10montgomery1RE6squareBb_.exit.1.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1319
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1319
  call fastcc void @_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic10montgomery17limbs_square_montQSyEB6_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull align 8 %i.gn, i64 noundef %.sroa.514.0.copyload.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.fv, i64 noundef %.sroa.514.0.copyload.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val.i.i.i.i.i.i), !noalias !1325
  %i.ih = load i64, ptr %i.e, align 8, !range !129, !noalias !1319, !noundef !18
  %i.ii = trunc nuw i64 %i.ih to i1
  br i1 %i.ii, label %bb.cb, label %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1PNtNtB9_10montgomery1RE6squareBb_.exit.3.i.i.i.i.i.i.i.i, !prof !35

_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1PNtNtB9_10montgomery1RE6squareBb_.exit.3.i.i.i.i.i.i.i.i: ; preds = %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1PNtNtB9_10montgomery1RE6squareBb_.exit.2.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1319
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1319
  call fastcc void @_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic10montgomery17limbs_square_montQSyEB6_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull align 8 %i.gn, i64 noundef %.sroa.514.0.copyload.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.fv, i64 noundef %.sroa.514.0.copyload.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val.i.i.i.i.i.i), !noalias !1325
  %i.ij = load i64, ptr %i.e, align 8, !range !129, !noalias !1319, !noundef !18
  %i.ik = trunc nuw i64 %i.ij to i1
  br i1 %i.ik, label %bb.cb, label %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1PNtNtB9_10montgomery1RE6squareBb_.exit.4.i.i.i.i.i.i.i.i, !prof !35

_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1PNtNtB9_10montgomery1RE6squareBb_.exit.4.i.i.i.i.i.i.i.i: ; preds = %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1PNtNtB9_10montgomery1RE6squareBb_.exit.3.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1319
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1319
  call fastcc void @_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic10montgomery17limbs_square_montQSyEB6_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull align 8 %i.gn, i64 noundef %.sroa.514.0.copyload.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.fv, i64 noundef %.sroa.514.0.copyload.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val.i.i.i.i.i.i), !noalias !1325
  %i.il = load i64, ptr %i.e, align 8, !range !129, !noalias !1319, !noundef !18
  %i.im = trunc nuw i64 %i.il to i1
  br i1 %i.im, label %bb.cb, label %_RNCINvMs1_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montNtNtBa_5value14ValidatedInput18write_into_mont_RRNtNtNtBg_3rsa7keypair1PEs_0Bg_.exit.i.i.i.i, !prof !35

_RNCINvMs1_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montNtNtBa_5value14ValidatedInput18write_into_mont_RRNtNtNtBg_3rsa7keypair1PEs_0Bg_.exit.i.i.thread.i.i: ; preds = %bb.bu, %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE18split_at_spare_mutB9_.exit.i.i.i.i.i.i, %bb.bp, %.noexc5.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1249
  br label %.invoke.i.i

_RNCINvMs1_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montNtNtBa_5value14ValidatedInput18write_into_mont_RRNtNtNtBg_3rsa7keypair1PEs_0Bg_.exit.i.i.i.i: ; preds = %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1PNtNtB9_10montgomery1RE6squareBb_.exit.4.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1319
  %i.in = icmp ne ptr %.val.i.i.i.i.i.i, %i.fl
  %i.io = icmp ne i64 %.val3.i.i.i.i.i.i, %i.fh
  %.not27.i.i = or i1 %i.io, %i.in
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1249
  br i1 %.not27.i.i, label %.invoke.i.i, label %bb.cc, !prof !1103

.invoke.i.i:                                      ; preds = %bb.cc, %_RNCINvMs1_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montNtNtBa_5value14ValidatedInput18write_into_mont_RRNtNtNtBg_3rsa7keypair1PEs_0Bg_.exit.i.i.i.i, %_RNCINvMs1_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montNtNtBa_5value14ValidatedInput18write_into_mont_RRNtNtNtBg_3rsa7keypair1PEs_0Bg_.exit.i.i.thread.i.i
  %i.ip = phi ptr [ @11, %_RNCINvMs1_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montNtNtBa_5value14ValidatedInput18write_into_mont_RRNtNtNtBg_3rsa7keypair1PEs_0Bg_.exit.i.i.i.i ], [ @11, %_RNCINvMs1_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montNtNtBa_5value14ValidatedInput18write_into_mont_RRNtNtNtBg_3rsa7keypair1PEs_0Bg_.exit.i.i.thread.i.i ], [ @10, %bb.cc ]
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ip) #42
          to label %.cont.i.i unwind label %bb.cd, !noalias !1268

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

bb.cc:                                            ; preds = %_RNCINvMs1_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montNtNtBa_5value14ValidatedInput18write_into_mont_RRNtNtNtBg_3rsa7keypair1PEs_0Bg_.exit.i.i.i.i
  %i.iq = add nuw i64 %i.ft, %.sroa.514.0.copyload.i
  %.not.i.i269 = icmp eq i64 %i.iq, %i.fh
  br i1 %.not.i.i269, label %bb.ch, label %.invoke.i.i, !prof !88

bb.cd:                                            ; preds = %_RNvNtCs5yxAJGbRKSL_4ring4limb16limbs_double_mod.exit.thread.i.i.i.i.i.i.i.invoke.i.i, %bb.cb, %bb.bt, %.invoke.i.i, %bb.ca, %bb.by, %.invoke45.i.i, %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i
  %i.ir = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.fl, i64 noundef %i.fj, i64 noundef 8) #36, !noalias !1268
  br label %.body

bb.ce:                                            ; preds = %bb.bk, %bb.bj
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #41
          to label %.noexc272 unwind label %bb.be

.noexc272:                                        ; preds = %bb.ce
  unreachable

bb.cf:                                            ; preds = %bb.df
  br i1 %.sroa.0151.4, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs5yxAJGbRKSL_4ring3rsa7keypair12PrivatePrimeNtBE_1PEEBI_.exit358, label %.body

bb.cg:                                            ; preds = %bb.ci, %bb.de, %bb.cm
  %i.is = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs5yxAJGbRKSL_4ring3rsa7keypair12PrivatePrimeNtBE_1PEEBI_.exit358

bb.ch:                                            ; preds = %bb.cc
  %i.it = add nuw i64 %.sroa.514.0.copyload.i, 2  ; 3 uses
  %i.iu = load i64, ptr %i.fp, align 8, !alias.scope !1326, !noalias !1329, !noundef !18
  %.not.i.i273 = icmp eq i64 %i.iu, %.sroa.514.0.copyload.i
  br i1 %.not.i.i273, label %2, label %bb.ci, !prof !88

2:                                                ; preds = %bb.ch
  %3 = icmp ult i64 %.sroa.514.0.copyload.i, 4
  br i1 %3, label %bb.ci, label %4, !prof !35

4:                                                ; preds = %2
  %5 = icmp ugt i64 %.sroa.514.0.copyload.i, 128
  br i1 %5, label %bb.ci, label %bb.cj, !prof !35

bb.ci:                                            ; preds = %4, %2, %bb.ch
  %.sroa.42.0.ph.i274 = phi i64 [ 0, %bb.ch ], [ 1, %2 ], [ 2, %4 ]
  invoke fastcc void @_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint34unwrap_impossible_limb_slice_errorINtNtNtNtB2_7modulus4mont4base4MontNtNtNtB6_3rsa7keypair1PEEB6_(i64 noundef %.sroa.42.0.ph.i274) #39
          to label %.noexc278 unwind label %bb.cg

.noexc278:                                        ; preds = %bb.ci
  unreachable

bb.cj:                                            ; preds = %4
  %i.iv = icmp slt i64 %.sroa.514.0.copyload.i256, 0
  br i1 %i.iv, label %bb.de, label %bb.ck, !prof !35

bb.ck:                                            ; preds = %bb.cj
  %i.iw = shl nuw i64 %.sroa.514.0.copyload.i256, 1
  %i.ix = add i64 %i.iw, 2                        ; 7 uses
  %i.iy = icmp eq i64 %i.ix, 0
  br i1 %i.iy, label %bb.de, label %bb.cl, !prof !35

bb.cl:                                            ; preds = %bb.ck
  %i.iz = shl i64 %i.ix, 3                        ; 8 uses
  %i.ja = icmp ugt i64 %i.ix, 2305843009213693951
  %.not.i.i.i.i279 = icmp ugt i64 %i.iz, 9223372036854775800
  %or.cond.i.i.i.i280 = or i1 %i.ja, %.not.i.i.i.i279
  br i1 %or.cond.i.i.i.i280, label %bb.cm, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i281, !prof !407

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i281: ; preds = %bb.cl
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #36, !noalias !1331
  %i.jb = call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.iz, i64 noundef range(i64 1, 9) 8) #36, !noalias !1331 ; 12 uses
  %i.jc = icmp eq ptr %i.jb, null
  br i1 %i.jc, label %bb.cm, label %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i282

bb.cm:                                            ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i281, %bb.cl
  %.sroa.4.0.ph.i.i.i327 = phi i64 [ 8, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i281 ], [ 0, %bb.cl ]
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i327, i64 %i.iz) #42
          to label %.noexc328 unwind label %bb.cg

.noexc328:                                        ; preds = %bb.cm
  unreachable

_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i282: ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i281
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1338
  store ptr %i.jb, ptr %i.d, align 8, !noalias !1338
  %i.jd = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store i64 %i.ix, ptr %i.jd, align 8, !noalias !1338
  %i.je = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1342)
  store i64 0, ptr %i.jb, align 8, !alias.scope !1345, !noalias !1348
  %i.jf = getelementptr inbounds nuw i8, ptr %i.jb, i64 8
  store i64 %.sroa.514.0.copyload.i256, ptr %i.jf, align 8, !alias.scope !1351, !noalias !1354
  store i64 2, ptr %i.je, align 8, !alias.scope !1342, !noalias !1338
  %i.jg = invoke fastcc { i64, i64 } @_RNvNtCs5yxAJGbRKSL_4ring4limb26limbs_from_be_bytes_padded(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bs, i64 noundef %i.bw, i64 noundef %.sroa.514.0.copyload.i256)
          to label %.noexc5.i.i283 unwind label %bb.dd, !noalias !1357

.noexc5.i.i283:                                   ; preds = %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i282
  %i.jh = extractvalue { i64, i64 } %i.jg, 0
  %i.ji = trunc nuw i64 %i.jh to i1
  br i1 %i.ji, label %_RNCINvMs1_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montNtNtBa_5value14ValidatedInput18write_into_mont_RRNtNtNtBg_3rsa7keypair1QEs_0Bg_.exit.i.i.thread.i.i, label %bb.cn

bb.cn:                                            ; preds = %.noexc5.i.i283
  %i.jj = load i64, ptr %i.je, align 8, !alias.scope !1358, !noalias !1338, !noundef !18 ; 8 uses
  %.val3.i.i.i.i.i.i284 = load i64, ptr %i.jd, align 8, !alias.scope !1358, !noalias !1338, !noundef !18 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i285 = icmp ugt i64 %i.jj, %.val3.i.i.i.i.i.i284
  br i1 %.not.i.i.i.i.i.i.i.i.i285, label %.invoke45.i.i288, label %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE10filled_mutB9_.exit.i.i.i.i.i286, !prof !35

.invoke45.i.i288:                                 ; preds = %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i306, %bb.co, %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE10filled_mutB9_.exit.i.i.i.i.i286, %bb.cn
  %i.jk = phi ptr [ @46, %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE10filled_mutB9_.exit.i.i.i.i.i286 ], [ @166, %bb.cn ], [ @47, %bb.co ], [ @64, %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i306 ]
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.jk) #41
          to label %.cont46.i.i289 unwind label %bb.dd, !noalias !1357

.cont46.i.i289:                                   ; preds = %.invoke45.i.i288
  unreachable

_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE10filled_mutB9_.exit.i.i.i.i.i286: ; preds = %bb.cn
  %.val.i.i.i.i.i.i287 = load ptr, ptr %i.d, align 8, !alias.scope !1358, !noalias !1338, !nonnull !18, !align !46, !noundef !18 ; 11 uses
  switch i64 %i.jj, label %bb.cp [
    i64 0, label %.invoke45.i.i288
    i64 1, label %bb.co
  ], !prof !66

bb.co:                                            ; preds = %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE10filled_mutB9_.exit.i.i.i.i.i286
  br label %.invoke45.i.i288

bb.cp:                                            ; preds = %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE10filled_mutB9_.exit.i.i.i.i.i286
  %i.jl = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i287, i64 16 ; 13 uses
  %i.jm = add i64 %i.jj, -2                       ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1361)
  call void @llvm.experimental.noalias.scope.decl(metadata !1364)
  %.not.i.i.i.i.i.i290 = icmp eq i64 %i.jm, 0
  br i1 %.not.i.i.i.i.i.i290, label %_RNCINvMs1_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montNtNtBa_5value14ValidatedInput18write_into_mont_RRNtNtNtBg_3rsa7keypair1QEs_0Bg_.exit.i.i.thread.i.i, label %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE18split_at_spare_mutB9_.exit.i.i.i.i.i.i291, !prof !35

_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE18split_at_spare_mutB9_.exit.i.i.i.i.i.i291: ; preds = %bb.cp
  %i.jn = load i64, ptr %i.jl, align 8, !alias.scope !1364, !noalias !1366, !noundef !18 ; 2 uses
  %i.jo = trunc i64 %i.jn to i32                  ; 6 uses
  %.neg.i.i.i.i.i.i292 = mul i32 %i.jo, %i.jo
  %.neg32.i.i.i.i.i.i293 = add i32 %.neg.i.i.i.i.i.i292, -2
  %i.jp = mul i32 %.neg32.i.i.i.i.i.i293, %i.jo   ; 2 uses
  %i.jq = mul i32 %i.jp, %i.jo
  %i.jr = add i32 %i.jq, 2
  %i.js = mul i32 %i.jr, %i.jp                    ; 2 uses
  %i.jt = mul i32 %i.js, %i.jo
  %i.ju = add i32 %i.jt, 2
  %i.jv = mul i32 %i.ju, %i.js                    ; 2 uses
  %i.jw = mul i32 %i.jv, %i.jo
  %i.jx = add i32 %i.jw, 2
  %i.jy = mul i32 %i.jx, %i.jv
  %i.jz = zext i32 %i.jy to i64                   ; 2 uses
  %i.ka = mul i64 %i.jn, %i.jz
  %i.kb = add i64 %i.ka, 2
  %i.kc = mul i64 %i.kb, %i.jz
  store i64 %i.kc, ptr %.val.i.i.i.i.i.i287, align 8, !alias.scope !1361, !noalias !1367
  %i.kd = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i.i.i.i287, i64 %i.jj ; 14 uses
  %i.ke = sub nuw i64 %.val3.i.i.i.i.i.i284, %i.jj
  %.not.i.i.i.i43.i.i.i.i.i295 = icmp ugt i64 %.sroa.514.0.copyload.i256, %i.ke
  br i1 %.not.i.i.i.i43.i.i.i.i.i295, label %_RNCINvMs1_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montNtNtBa_5value14ValidatedInput18write_into_mont_RRNtNtNtBg_3rsa7keypair1QEs_0Bg_.exit.i.i.thread.i.i, label %bb.cq, !prof !35

bb.cq:                                            ; preds = %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE18split_at_spare_mutB9_.exit.i.i.i.i.i.i291
  call void @llvm.experimental.noalias.scope.decl(metadata !1368)
  call void @llvm.experimental.noalias.scope.decl(metadata !1371)
  %i.kf = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i287, i64 8
  %i.kg = load i64, ptr %i.kf, align 8, !alias.scope !1373, !noalias !1376, !noundef !18
  %.not.i.i14.i.i.i.i.i.i297 = icmp eq i64 %i.kg, %i.jm
  br i1 %.not.i.i14.i.i.i.i.i.i297, label %bb.cr, label %bb.ct, !prof !88

bb.cr:                                            ; preds = %bb.cq
  %i.kh = icmp samesign ult i64 %i.jj, 6
  br i1 %i.kh, label %bb.ct, label %bb.cs, !prof !35

bb.cs:                                            ; preds = %bb.cr
  %i.ki = icmp samesign ugt i64 %i.jj, 130
  br i1 %i.ki, label %bb.ct, label %bb.cu, !prof !35

bb.ct:                                            ; preds = %bb.cs, %bb.cr, %bb.cq
  %.sroa.4.0.ph.i.i.i.i.i.i.i298 = phi i64 [ 0, %bb.cq ], [ 1, %bb.cr ], [ 2, %bb.cs ]
  invoke fastcc void @_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint34unwrap_impossible_limb_slice_errorINtNtNtNtB2_7modulus4mont4base4MontNtNtNtB6_3rsa7keypair1QEEB6_(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i298) #39
          to label %.noexc9.i.i301 unwind label %bb.dd

.noexc9.i.i301:                                   ; preds = %bb.ct
  unreachable

bb.cu:                                            ; preds = %bb.cs
  call void @llvm.experimental.noalias.scope.decl(metadata !1381)
  call void @llvm.experimental.noalias.scope.decl(metadata !1384)
  %.not.i.i.i.i.i.i.i.i.i.i302 = icmp eq i64 %i.jm, %.sroa.514.0.copyload.i256
  br i1 %.not.i.i.i.i.i.i.i.i.i.i302, label %bb.cv, label %_RNCINvMs1_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montNtNtBa_5value14ValidatedInput18write_into_mont_RRNtNtNtBg_3rsa7keypair1QEs_0Bg_.exit.i.i.thread.i.i, !prof !88

bb.cv:                                            ; preds = %bb.cu
  %.idx.i.i.i.i.i.i.i.i.i.i305 = shl i64 %.sroa.514.0.copyload.i256, 3 ; 3 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %i.jl, i64 %.idx.i.i.i.i.i.i.i.i.i.i305
  %i.kk = add i64 %.idx.i.i.i.i.i.i.i.i.i.i305, -8
  %i.kl = lshr exact i64 %i.kk, 3
  %i.km = call i64 @llvm.umin.i64(i64 %.sroa.514.0.copyload.i256, i64 %i.kl) ; 2 uses
  %min.iters.check520 = icmp samesign ult i64 %i.km, 4
  br i1 %min.iters.check520, label %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i306.preheader, label %vector.ph521

vector.ph521:                                     ; preds = %bb.cv
  %i.kn = add nuw nsw i64 %i.km, 1                ; 2 uses
  %i.ko = and i64 %i.kn, 3                        ; 2 uses
  %i.kp = icmp eq i64 %i.ko, 0
  %i.kq = select i1 %i.kp, i64 4, i64 %i.ko
  %n.vec522 = sub nsw i64 %i.kn, %i.kq            ; 3 uses
  %i.kr = shl i64 %n.vec522, 3
  %i.ks = getelementptr i8, ptr %i.jl, i64 %i.kr
  br label %vector.body523

vector.body523:                                   ; preds = %vector.body523, %vector.ph521
  %index524 = phi i64 [ 0, %vector.ph521 ], [ %index.next528, %vector.body523 ] ; 3 uses
  %i.kt = shl i64 %index524, 3
  %next.gep525 = getelementptr i8, ptr %i.jl, i64 %i.kt ; 2 uses
  %i.ku = getelementptr i8, ptr %next.gep525, i64 16
  %wide.load526 = load <2 x i64>, ptr %next.gep525, align 8, !alias.scope !1386, !noalias !1387
  %wide.load527 = load <2 x i64>, ptr %i.ku, align 8, !alias.scope !1386, !noalias !1387
  %i.kv = xor <2 x i64> %wide.load526, splat (i64 -1)
  %i.kw = xor <2 x i64> %wide.load527, splat (i64 -1)
  %i.kx = getelementptr inbounds nuw [8 x i8], ptr %i.kd, i64 %index524 ; 2 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 16
  store <2 x i64> %i.kv, ptr %i.kx, align 8, !alias.scope !1397, !noalias !1400
  store <2 x i64> %i.kw, ptr %i.ky, align 8, !alias.scope !1397, !noalias !1400
  %index.next528 = add nuw i64 %index524, 4       ; 2 uses
  %i.kz = icmp eq i64 %index.next528, %n.vec522
  br i1 %i.kz, label %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i306.preheader, label %vector.body523, !llvm.loop !1403

_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i306.preheader: ; preds = %vector.body523, %bb.cv
  %.sroa.9.0.i.i.i.i.i.i.i.i.i.i307.ph = phi i64 [ 0, %bb.cv ], [ %n.vec522, %vector.body523 ]
  %.sroa.0.02.i.i.i.i.i.i.i.i.i.i.i308.ph = phi ptr [ %i.jl, %bb.cv ], [ %i.ks, %vector.body523 ]
  br label %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i306

_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i306: ; preds = %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i306.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i309
  %.sroa.9.0.i.i.i.i.i.i.i.i.i.i307 = phi i64 [ %i.le, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i309 ], [ %.sroa.9.0.i.i.i.i.i.i.i.i.i.i307.ph, %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i306.preheader ] ; 4 uses
  %.sroa.0.02.i.i.i.i.i.i.i.i.i.i.i308 = phi ptr [ %i.lc, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i309 ], [ %.sroa.0.02.i.i.i.i.i.i.i.i.i.i.i308.ph, %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i306.preheader ] ; 2 uses
  %i.la = icmp eq i64 %.sroa.514.0.copyload.i256, %.sroa.9.0.i.i.i.i.i.i.i.i.i.i307
  br i1 %i.la, label %.invoke45.i.i288, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i309

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i309:            ; preds = %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i306
  %.sroa.0.0.val.i.i.i.i.i.i.i.i.i.i.i310 = load i64, ptr %.sroa.0.02.i.i.i.i.i.i.i.i.i.i.i308, align 8, !alias.scope !1386, !noalias !1387, !noundef !18
  %i.lb = xor i64 %.sroa.0.0.val.i.i.i.i.i.i.i.i.i.i.i310, -1
  %i.lc = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i.i.i.i.i.i.i.i.i.i.i308, i64 8 ; 2 uses
  %i.ld = getelementptr inbounds nuw [8 x i8], ptr %i.kd, i64 %.sroa.9.0.i.i.i.i.i.i.i.i.i.i307
  store i64 %i.lb, ptr %i.ld, align 8, !alias.scope !1397, !noalias !1400
  %i.le = add nuw nsw i64 %.sroa.9.0.i.i.i.i.i.i.i.i.i.i307, 1 ; 3 uses
  %i.lf = icmp eq ptr %i.lc, %i.kj
  br i1 %i.lf, label %bb.cw, label %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i306, !llvm.loop !1404

bb.cw:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i309
  %i.lg = load i64, ptr %i.kd, align 8, !alias.scope !1405, !noalias !1406, !noundef !18
  %i.lh = or i64 %i.lg, 1
  store i64 %i.lh, ptr %i.kd, align 8, !alias.scope !1405, !noalias !1406
  %i.li = shl nuw nsw i64 %.sroa.514.0.copyload.i256, 6 ; 3 uses
  %i.lj = sub nsw i64 %i.li, %.sroa.615.0.copyload.i ; 2 uses
  %i.lk = icmp ult i64 %i.li, %.sroa.615.0.copyload.i
end_hunk_1
