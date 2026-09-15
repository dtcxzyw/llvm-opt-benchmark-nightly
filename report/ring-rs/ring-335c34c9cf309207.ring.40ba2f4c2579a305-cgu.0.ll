Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ring-rs/original/ring-335c34c9cf309207.ring.40ba2f4c2579a305-cgu.0?download=true
inline.NumInlined: 2615
inline.NumDeleted: 1171
loop-unroll.NumCompletelyUnrolled: 84
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 88
begin_hunk_0_@_RNvMNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigintINtNtB2_4elem5BoxedNtNtNtB6_3rsa7keypair1PE20from_be_bytes_paddedB6_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1179
  br i1 %.not.i.i5.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxSINtNtNtB4_3mem12maybe_uninit11MaybeUninityEEECs5yxAJGbRKSL_4ring.exit18, label %bb.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxSINtNtNtB4_3mem12maybe_uninit11MaybeUninityEEECs5yxAJGbRKSL_4ring.exit18: ; preds = %bb.h, %_RNvNtCs5yxAJGbRKSL_4ring4limb37verify_limbs_less_than_limbs_leak_bit.exit.i.i, %.noexc15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1177
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.g, i64 noundef %i.e, i64 noundef 8) #36
  br label %bb.j

bb.i:                                             ; preds = %_RNvNtCs5yxAJGbRKSL_4ring4limb37verify_limbs_less_than_limbs_leak_bit.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1177
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
  %i.a = load ptr, ptr %0, align 8, !nonnull !15, !noundef !15
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !15 ; 2 uses
  %i.d = icmp ult i64 %i.c, 2
  br i1 %i.d, label %bb.b, label %_RNvMs2_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montINtB5_8IntoMontNtNtBd_3rsa1NNtNtBb_10montgomery2RRE5valueBd_.exit.i.i

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @146) #41, !noalias !1182
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
  %i.j = load i64, ptr %i.i, align 8, !noundef !15
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
  %i.b = load ptr, ptr %i.a, align 8, !noundef !15 ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !15, !noundef !15
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.g = load i64, ptr %i.f, align 8, !noundef !15
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
  %i.ac = load ptr, ptr %i.ab, align 8, !nonnull !15, !noundef !15 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ae = load i64, ptr %i.ad, align 8, !noundef !15 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ag = load ptr, ptr %i.af, align 8, !nonnull !15, !noundef !15
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ai = load i64, ptr %i.ah, align 8, !noundef !15
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ak = load ptr, ptr %i.aj, align 8, !nonnull !15, !noundef !15
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.am = load i64, ptr %i.al, align 8, !noundef !15
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ao = load ptr, ptr %i.an, align 8, !nonnull !15, !noundef !15
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.aq = load i64, ptr %i.ap, align 8, !noundef !15
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.as = load ptr, ptr %i.ar, align 8, !nonnull !15, !noundef !15
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.au = load i64, ptr %i.at, align 8, !noundef !15
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.aw = load ptr, ptr %i.av, align 8, !nonnull !15, !noundef !15
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.ay = load i64, ptr %i.ax, align 8, !noundef !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  call fastcc void @_RNvMNtNtNtCs5yxAJGbRKSL_4ring3rsa4base10public_keyNtB2_14ValidatedInput17try_from_be_bytes(ptr noalias nofree noundef align 8 captures(none) dereferenceable(56) %i.aa, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1, i64 noundef 2048, i64 noundef 4096, i64 noundef 65537)
  %i.az = load ptr, ptr %i.aa, align 8, !noundef !15 ; 4 uses
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
  br label %bb.ec

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
  call fastcc void @_RNvMNtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus5valueNtB2_14ValidatedInput17try_from_be_bytes(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.q, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ag, i64 noundef %i.ai), !noalias !1387
  %i.bh = load ptr, ptr %i.q, align 8, !noalias !1388, !noundef !15 ; 2 uses
  %i.bi = icmp eq ptr %i.bh, null
  %i.bj = ptrtoint ptr %i.bc to i64
  br i1 %i.bi, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.413.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.413.0.copyload.i = load ptr, ptr %.sroa.413.0..sroa_idx.i, align 8, !noalias !1388
  %.sroa.514.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.sroa.514.0.copyload.i = load i64, ptr %.sroa.514.0..sroa_idx.i, align 8, !noalias !1388 ; 35 uses
  %.sroa.615.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %.sroa.615.0.copyload.i = load i64, ptr %.sroa.615.0..sroa_idx.i, align 8, !noalias !1388 ; 10 uses
  %i.bk = lshr i64 %.sroa.4.0.copyload, 1         ; 2 uses
  %i.bl = sub nuw i64 %.sroa.4.0.copyload, %i.bk  ; 2 uses
  %i.bm = icmp ult i64 %i.bl, %i.bk
  br i1 %i.bm, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not.i = icmp eq i64 %.sroa.615.0.copyload.i, %i.bl
  br i1 %.not.i, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.d
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @132) #41, !noalias !1387
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
  br label %bb.ec

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  %i.br = ptrtoint ptr %.sroa.413.0.copyload.i to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call fastcc void @_RNvMNtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus5valueNtB2_14ValidatedInput17try_from_be_bytes(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.p, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ak, i64 noundef %i.am), !noalias !1389
  %i.bs = load ptr, ptr %i.p, align 8, !noalias !1390, !noundef !15 ; 2 uses
  %i.bt = icmp eq ptr %i.bs, null
  br i1 %i.bt, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.sroa.514.0..sroa_idx.i255 = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.sroa.514.0.copyload.i256 = load i64, ptr %.sroa.514.0..sroa_idx.i255, align 8, !noalias !1390 ; 31 uses
  %.sroa.615.0..sroa_idx.i257 = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %.sroa.615.0.copyload.i258 = load i64, ptr %.sroa.615.0..sroa_idx.i257, align 8, !noalias !1390
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
  br label %bb.ec

bb.l:                                             ; preds = %bb.j
  %.sroa.413.0..sroa_idx.i253 = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.413.0.copyload.i254 = load ptr, ptr %.sroa.413.0..sroa_idx.i253, align 8, !noalias !1390
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %i.bw = ptrtoint ptr %.sroa.413.0.copyload.i254 to i64
  call fastcc void @_RNvMNtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus5valueNtB2_14ValidatedInput17try_from_be_bytes(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.y, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ac, i64 noundef %i.ae)
  %i.bx = load ptr, ptr %i.y, align 8, !noundef !15
  %i.by = icmp eq ptr %i.bx, null
  br i1 %i.by, label %bb.bc, label %_RNvMs3_NtCs5yxAJGbRKSL_4ring4bitsNtB5_9BitLength15half_rounded_up.exit

_RNvMs3_NtCs5yxAJGbRKSL_4ring4bitsNtB5_9BitLength15half_rounded_up.exit: ; preds = %bb.l
  %.sroa.6168.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %.sroa.6168.0.copyload = load i64, ptr %.sroa.6168.0..sroa_idx, align 8
  %i.bz = icmp ult i64 %.sroa.615.0.copyload.i, %.sroa.6168.0.copyload
  br i1 %i.bz, label %bb.m, label %bb.bc

bb.m:                                             ; preds = %_RNvMs3_NtCs5yxAJGbRKSL_4ring4bitsNtB5_9BitLength15half_rounded_up.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1391)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1392)
  %i.ca = icmp slt i64 %i.be, 0
  br i1 %i.ca, label %bb.u, label %bb.n, !prof !16

bb.n:                                             ; preds = %bb.m
  %i.cb = shl nuw i64 %i.be, 1
  %i.cc = add i64 %i.cb, 2                        ; 7 uses
  %i.cd = icmp eq i64 %i.cc, 0
  br i1 %i.cd, label %bb.u, label %bb.o, !prof !16

bb.o:                                             ; preds = %bb.n
  %i.ce = shl i64 %i.cc, 3                        ; 7 uses
  %i.cf = icmp ugt i64 %i.cc, 2305843009213693951
  %.not.i.i.i.i.i.i = icmp ugt i64 %i.ce, 9223372036854775800
  %or.cond.i.i.i.i.i.i = or i1 %i.cf, %.not.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i, label %bb.p, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i, !prof !28

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i: ; preds = %bb.o
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #36, !noalias !1393
  %i.cg = tail call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.ce, i64 noundef range(i64 1, 9) 8) #36, !noalias !1393 ; 12 uses
  %i.ch = icmp eq ptr %i.cg, null
  br i1 %i.ch, label %bb.p, label %_RNvMs2_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSyE16new_uninit_sliceCs5yxAJGbRKSL_4ring.exit.i.i.i.i

bb.p:                                             ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i, %bb.o
  %.sroa.4.0.ph.i.i.i.i.i = phi i64 [ 8, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i ], [ 0, %bb.o ]
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i.i.i, i64 %i.ce) #42, !noalias !1394
  unreachable

_RNvMs2_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSyE16new_uninit_sliceCs5yxAJGbRKSL_4ring.exit.i.i.i.i: ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !1394
  store ptr %i.cg, ptr %i.l, align 8, !noalias !1394
  %i.ci = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  store i64 %i.cc, ptr %i.ci, align 8, !noalias !1394
  %i.cj = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  store i64 0, ptr %i.cj, align 8, !noalias !1394
  %i.ck = invoke fastcc i64 @_RINvMs1_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montNtNtB8_5value14ValidatedInput18write_into_mont_RRNtNtBe_3rsa1NEBe_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.z, ptr noalias nofree noundef align 8 dereferenceable(24) %i.l)
          to label %_RNvMs2_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSyE16new_uninit_sliceCs5yxAJGbRKSL_4ring.exit.i.i.i.i._crit_edge unwind label %bb.t

_RNvMs2_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSyE16new_uninit_sliceCs5yxAJGbRKSL_4ring.exit.i.i.i.i._crit_edge: ; preds = %_RNvMs2_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSyE16new_uninit_sliceCs5yxAJGbRKSL_4ring.exit.i.i.i.i
  %i.cl = trunc nuw i64 %i.ck to i1
  br i1 %i.cl, label %.invoke.i.i.i.i, label %bb.q, !prof !16

.invoke.i.i.i.i:                                  ; preds = %bb.s, %_RNvMs2_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSyE16new_uninit_sliceCs5yxAJGbRKSL_4ring.exit.i.i.i.i._crit_edge
  %i.cm = phi ptr [ @11, %_RNvMs2_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSyE16new_uninit_sliceCs5yxAJGbRKSL_4ring.exit.i.i.i.i._crit_edge ], [ @10, %bb.s ]
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cm) #42
          to label %.cont.i.i.i.i unwind label %bb.t, !noalias !1394

.cont.i.i.i.i:                                    ; preds = %.invoke.i.i.i.i
  unreachable

bb.q:                                             ; preds = %_RNvMs2_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSyE16new_uninit_sliceCs5yxAJGbRKSL_4ring.exit.i.i.i.i._crit_edge
  %i.cn = load i64, ptr %i.cj, align 8, !alias.scope !1395, !noalias !1394, !noundef !15 ; 2 uses
  %i.co = load i64, ptr %i.ci, align 8, !alias.scope !1395, !noalias !1394, !noundef !15
  %.not.i.i.i.i.i = icmp ugt i64 %i.cn, %i.co
  br i1 %.not.i.i.i.i.i, label %bb.r, label %bb.s, !prof !30

bb.r:                                             ; preds = %bb.q
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @169) #41
          to label %.noexc.i.i.i.i unwind label %bb.t, !noalias !1394

.noexc.i.i.i.i:                                   ; preds = %bb.r
  unreachable

bb.s:                                             ; preds = %bb.q
  %.not.i.i.i.i = icmp eq i64 %i.cn, %i.cc
  br i1 %.not.i.i.i.i, label %_RNvMNtNtNtCs5yxAJGbRKSL_4ring3rsa4base10public_keyNtB2_14ValidatedInput11build_boxed.exit.i, label %.invoke.i.i.i.i, !prof !19

common.resume:                                    ; preds = %bb.t, %bb.bb, %.body
  %common.resume.op = phi { ptr, i32 } [ %.pn189, %.body ], [ %i.cp, %bb.t ], [ %eh.lpad-body.i, %bb.bb ]
  resume { ptr, i32 } %common.resume.op

bb.t:                                             ; preds = %_RNvMs2_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSyE16new_uninit_sliceCs5yxAJGbRKSL_4ring.exit.i.i.i.i, %bb.r, %.invoke.i.i.i.i
  %i.cp = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cg, i64 noundef %i.ce, i64 noundef 8) #36, !noalias !1394
  br label %common.resume

bb.u:                                             ; preds = %bb.n, %bb.m
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #41, !noalias !1394
  unreachable

_RNvMNtNtNtCs5yxAJGbRKSL_4ring3rsa4base10public_keyNtB2_14ValidatedInput11build_boxed.exit.i: ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !1394
  %i.cq = load i64, ptr %.sroa.5.0..sroa_idx360, align 8, !range !38, !alias.scope !1396, !noalias !1397, !noundef !15
  %i.cr = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  %i.cs = load ptr, ptr %i.cr, align 8, !alias.scope !1391, !noalias !1398, !nonnull !15, !noundef !15 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  %i.cu = load i64, ptr %i.ct, align 8, !alias.scope !1391, !noalias !1398, !noundef !15 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !1399
  %.not.i264 = icmp eq ptr %i.bc, null
  br i1 %.not.i264, label %bb.bd, label %bb.v

bb.v:                                             ; preds = %_RNvMNtNtNtCs5yxAJGbRKSL_4ring3rsa4base10public_keyNtB2_14ValidatedInput11build_boxed.exit.i
  %i.cv = load i8, ptr %i.az, align 1, !noalias !1399, !noundef !15
  %i.cw = icmp eq i8 %i.cv, 0
  br i1 %i.cw, label %bb.bd, label %bb.w

bb.w:                                             ; preds = %bb.v
  store ptr %i.az, ptr %i.o, align 8, !noalias !1399
  %i.cx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 %i.bj, ptr %i.cx, align 8, !noalias !1399
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !1399
  %.not41.i = icmp eq i64 %i.cu, 0
  br i1 %.not41.i, label %bb.ay, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cy = load i8, ptr %i.cs, align 1, !noalias !1399, !noundef !15
  %i.cz = icmp eq i8 %i.cy, 0
  br i1 %i.cz, label %bb.ay, label %bb.y

bb.y:                                             ; preds = %bb.x
  store ptr %i.cs, ptr %i.n, align 8, !noalias !1399
  %i.da = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 %i.cu, ptr %i.da, align 8, !noalias !1399
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !1399
  store ptr %i.o, ptr %i.m, align 8, !noalias !1399
  %i.db = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.n, ptr %i.db, align 8, !noalias !1399
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !1399
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1400
  store i64 0, ptr %i.h, align 8, !noalias !1400
  %i.dc = invoke fastcc noundef zeroext i1 @_RNCNvMNtNtCs5yxAJGbRKSL_4ring3rsa10public_keyNtB4_9PublicKey3news0_0B8_(ptr noundef nonnull readonly %i.m, ptr noundef nonnull %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) @35) #40
          to label %.noexc.i unwind label %bb.az, !noalias !1399

.noexc.i:                                         ; preds = %bb.y
  br i1 %i.dc, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1400
  br label %_RINvNtNtCs5yxAJGbRKSL_4ring2io10der_writer9write_tlvRDG_INtNtNtCs3oUPovFnLWP_4core3ops8function2FnTQL0_DNtNtB4_6writer11AccumulatorEL0_EEp6OutputINtNtBZ_6result6ResultuNtB1G_12TooLongErrorEEL_EB6_.exit.thread.i.i

bb.aa:                                            ; preds = %.noexc.i
  %i.dd = load i64, ptr %i.h, align 8, !noalias !1400, !noundef !15 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1400
  %i.de = icmp ugt i64 %i.dd, 65535
  br i1 %i.de, label %_RINvNtNtCs5yxAJGbRKSL_4ring2io10der_writer9write_tlvRDG_INtNtNtCs3oUPovFnLWP_4core3ops8function2FnTQL0_DNtNtB4_6writer11AccumulatorEL0_EEp6OutputINtNtBZ_6result6ResultuNtB1G_12TooLongErrorEEL_EB6_.exit.thread.i.i, label %_RINvNtNtCs5yxAJGbRKSL_4ring2io10der_writer9write_tlvRDG_INtNtNtCs3oUPovFnLWP_4core3ops8function2FnTQL0_DNtNtB4_6writer11AccumulatorEL0_EEp6OutputINtNtBZ_6result6ResultuNtB1G_12TooLongErrorEEL_EB6_.exit.i.i

_RINvNtNtCs5yxAJGbRKSL_4ring2io10der_writer9write_tlvRDG_INtNtNtCs3oUPovFnLWP_4core3ops8function2FnTQL0_DNtNtB4_6writer11AccumulatorEL0_EEp6OutputINtNtBZ_6result6ResultuNtB1G_12TooLongErrorEEL_EB6_.exit.i.i: ; preds = %bb.aa
  %i.df = icmp samesign ugt i64 %i.dd, 255
  %i.dg = icmp samesign ugt i64 %i.dd, 127
  %spec.select.i.i = select i1 %i.dg, i64 3, i64 2
  %i.dh = select i1 %i.df, i64 4, i64 %spec.select.i.i
  store i64 %i.dh, ptr %i.k, align 8, !alias.scope !1401, !noalias !1400
  %i.di = invoke fastcc noundef zeroext i1 @_RNCNvMNtNtCs5yxAJGbRKSL_4ring3rsa10public_keyNtB4_9PublicKey3news0_0B8_(ptr noundef nonnull readonly %i.m, ptr noundef nonnull %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) @35) #40
          to label %.noexc46.i unwind label %bb.az, !noalias !1399

.noexc46.i:                                       ; preds = %_RINvNtNtCs5yxAJGbRKSL_4ring2io10der_writer9write_tlvRDG_INtNtNtCs3oUPovFnLWP_4core3ops8function2FnTQL0_DNtNtB4_6writer11AccumulatorEL0_EEp6OutputINtNtBZ_6result6ResultuNtB1G_12TooLongErrorEEL_EB6_.exit.i.i
  br i1 %i.di, label %_RINvNtNtCs5yxAJGbRKSL_4ring2io10der_writer9write_tlvRDG_INtNtNtCs3oUPovFnLWP_4core3ops8function2FnTQL0_DNtNtB4_6writer11AccumulatorEL0_EEp6OutputINtNtBZ_6result6ResultuNtB1G_12TooLongErrorEEL_EB6_.exit.thread.i.i, label %bb.ab

_RINvNtNtCs5yxAJGbRKSL_4ring2io10der_writer9write_tlvRDG_INtNtNtCs3oUPovFnLWP_4core3ops8function2FnTQL0_DNtNtB4_6writer11AccumulatorEL0_EEp6OutputINtNtBZ_6result6ResultuNtB1G_12TooLongErrorEEL_EB6_.exit.thread.i.i: ; preds = %.noexc46.i, %bb.aa, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !1399
  br label %.thread.i

bb.ab:                                            ; preds = %.noexc46.i
  %i.dj = load i64, ptr %i.k, align 8, !noalias !1399, !noundef !15 ; 8 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !1399
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !1399
  call void @llvm.experimental.noalias.scope.decl(metadata !1402)
  %.not.i.i.i45.i = icmp slt i64 %i.dj, 0
  br i1 %.not.i.i.i45.i, label %bb.ae, label %bb.ac, !prof !28

bb.ac:                                            ; preds = %bb.ab
  %i.dk = icmp eq i64 %i.dj, 0                    ; 2 uses
  br i1 %i.dk, label %_RNvMs1_NtNtCs5yxAJGbRKSL_4ring2io6writerNtB5_6Writer13with_capacity.exit.i.i, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i

end_hunk_0
begin_hunk_1_@_RNvMNtNtCs5yxAJGbRKSL_4ring3rsa7keypairNtB2_7KeyPair16from_components_:bb.a
  %i.dx = icmp eq i64 %i.dw, 1
  br i1 %i.dx, label %bb.am, label %bb.ar

bb.am:                                            ; preds = %bb.al
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.j) #39
          to label %bb.ar unwind label %bb.aw, !noalias !1399

bb.an:                                            ; preds = %bb.ak
  %i.dy = load i64, ptr %i.j, align 8, !range !26, !alias.scope !1407, !noalias !1399, !noundef !15
  %i.dz = icmp eq i64 %i.dy, 1
  br i1 %i.dz, label %bb.ao, label %.sink.split.i.i

bb.ao:                                            ; preds = %bb.an
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.j) #39
          to label %.sink.split.i.i unwind label %bb.aw, !noalias !1399

.sink.split.i.i:                                  ; preds = %bb.as, %bb.ar, %bb.ao, %bb.an
  %.sink17.i.i = phi i64 [ 2, %bb.as ], [ 2, %bb.ar ], [ 1, %bb.an ], [ 1, %bb.ao ]
  %.sroa.48.0.extract.trunc.i6.sink.i.i = phi i8 [ %.sroa.48.0.extract.trunc.i6.i.i, %bb.as ], [ %.sroa.48.0.extract.trunc.i6.i.i, %bb.ar ], [ -127, %bb.an ], [ -127, %bb.ao ]
  %.sink.i.i = phi i64 [ 3, %bb.as ], [ 3, %bb.ar ], [ 2, %bb.an ], [ 2, %bb.ao ] ; 2 uses
  %i.ea = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !1399, !nonnull !15, !noundef !15
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 %.sink17.i.i
  store i8 %.sroa.48.0.extract.trunc.i6.sink.i.i, ptr %i.eb, align 1, !noalias !1399
  store i64 %.sink.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !1399
  br label %bb.ap

bb.ap:                                            ; preds = %.sink.split.i.i, %bb.ak
  %i.ec = phi i64 [ 1, %bb.ak ], [ %.sink.i.i, %.sink.split.i.i ] ; 3 uses
  %i.ed = load i64, ptr %i.j, align 8, !range !26, !alias.scope !1408, !noalias !1399, !noundef !15
  %i.ee = icmp eq i64 %i.ec, %i.ed
  br i1 %i.ee, label %bb.aq, label %bb.at

bb.aq:                                            ; preds = %bb.ap
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.j) #39
          to label %bb.at unwind label %bb.aw, !noalias !1399

bb.ar:                                            ; preds = %bb.am, %bb.al
  %i.ef = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !1406, !noalias !1399, !nonnull !15, !noundef !15
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 1
  store i8 -126, ptr %i.eg, align 1, !noalias !1399
  store i64 2, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !1406, !noalias !1399
  %i.eh = load i64, ptr %i.j, align 8, !range !26, !alias.scope !1409, !noalias !1399, !noundef !15
  %i.ei = icmp eq i64 %i.eh, 2
  br i1 %i.ei, label %bb.as, label %.sink.split.i.i

bb.as:                                            ; preds = %bb.ar
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.j) #39
          to label %.sink.split.i.i unwind label %bb.aw, !noalias !1399

bb.at:                                            ; preds = %bb.aq, %bb.ap
  %i.ej = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !1408, !noalias !1399, !nonnull !15, !noundef !15
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 %i.ec
  store i8 %.sroa.07.0.extract.trunc.i4.i.i, ptr %i.ek, align 1, !noalias !1399
  %i.el = add nuw nsw i64 %i.ec, 1
  store i64 %i.el, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !1408, !noalias !1399
  %i.em = invoke fastcc noundef zeroext i1 @_RNCNvMNtNtCs5yxAJGbRKSL_4ring3rsa10public_keyNtB4_9PublicKey3news0_0B8_(ptr noundef nonnull readonly %i.m, ptr noundef nonnull %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) @207) #40
          to label %_RINvNtNtCs5yxAJGbRKSL_4ring2io10der_writer9write_tlvRDG_INtNtNtCs3oUPovFnLWP_4core3ops8function2FnTQL0_DNtNtB4_6writer11AccumulatorEL0_EEp6OutputINtNtBZ_6result6ResultuNtB1G_12TooLongErrorEEL_EB6_.exit14.i.i unwind label %bb.aw, !noalias !1399

_RINvNtNtCs5yxAJGbRKSL_4ring2io10der_writer9write_tlvRDG_INtNtNtCs3oUPovFnLWP_4core3ops8function2FnTQL0_DNtNtB4_6writer11AccumulatorEL0_EEp6OutputINtNtBZ_6result6ResultuNtB1G_12TooLongErrorEEL_EB6_.exit14.i.i: ; preds = %bb.at
  br i1 %i.em, label %_RINvNtNtCs5yxAJGbRKSL_4ring2io10der_writer9write_tlvRDG_INtNtNtCs3oUPovFnLWP_4core3ops8function2FnTQL0_DNtNtB4_6writer11AccumulatorEL0_EEp6OutputINtNtBZ_6result6ResultuNtB1G_12TooLongErrorEEL_EB6_.exit14._RINvNtNtCs5yxAJGbRKSL_4ring2io10der_writer9write_tlvRDG_INtNtNtCs3oUPovFnLWP_4core3ops8function2FnTQL0_DNtNtB4_6writer11AccumulatorEL0_EEp6OutputINtNtBZ_6result6ResultuNtB1G_12TooLongErrorEEL_EB6_.exit14.thread_crit_edge.i.i, label %bb.av

_RINvNtNtCs5yxAJGbRKSL_4ring2io10der_writer9write_tlvRDG_INtNtNtCs3oUPovFnLWP_4core3ops8function2FnTQL0_DNtNtB4_6writer11AccumulatorEL0_EEp6OutputINtNtBZ_6result6ResultuNtB1G_12TooLongErrorEEL_EB6_.exit14._RINvNtNtCs5yxAJGbRKSL_4ring2io10der_writer9write_tlvRDG_INtNtNtCs3oUPovFnLWP_4core3ops8function2FnTQL0_DNtNtB4_6writer11AccumulatorEL0_EEp6OutputINtNtBZ_6result6ResultuNtB1G_12TooLongErrorEEL_EB6_.exit14.thread_crit_edge.i.i: ; preds = %_RINvNtNtCs5yxAJGbRKSL_4ring2io10der_writer9write_tlvRDG_INtNtNtCs3oUPovFnLWP_4core3ops8function2FnTQL0_DNtNtB4_6writer11AccumulatorEL0_EEp6OutputINtNtBZ_6result6ResultuNtB1G_12TooLongErrorEEL_EB6_.exit14.i.i
  %.val.i.pre.i.i = load i64, ptr %i.j, align 8, !alias.scope !1410, !noalias !1399
  br label %_RINvNtNtCs5yxAJGbRKSL_4ring2io10der_writer9write_tlvRDG_INtNtNtCs3oUPovFnLWP_4core3ops8function2FnTQL0_DNtNtB4_6writer11AccumulatorEL0_EEp6OutputINtNtBZ_6result6ResultuNtB1G_12TooLongErrorEEL_EB6_.exit14.thread.i.i

_RINvNtNtCs5yxAJGbRKSL_4ring2io10der_writer9write_tlvRDG_INtNtNtCs3oUPovFnLWP_4core3ops8function2FnTQL0_DNtNtB4_6writer11AccumulatorEL0_EEp6OutputINtNtBZ_6result6ResultuNtB1G_12TooLongErrorEEL_EB6_.exit14.thread.i.i: ; preds = %_RINvNtNtCs5yxAJGbRKSL_4ring2io10der_writer9write_tlvRDG_INtNtNtCs3oUPovFnLWP_4core3ops8function2FnTQL0_DNtNtB4_6writer11AccumulatorEL0_EEp6OutputINtNtBZ_6result6ResultuNtB1G_12TooLongErrorEEL_EB6_.exit14._RINvNtNtCs5yxAJGbRKSL_4ring2io10der_writer9write_tlvRDG_INtNtNtCs3oUPovFnLWP_4core3ops8function2FnTQL0_DNtNtB4_6writer11AccumulatorEL0_EEp6OutputINtNtBZ_6result6ResultuNtB1G_12TooLongErrorEEL_EB6_.exit14.thread_crit_edge.i.i, %bb.ag, %bb.af
  %.val.i.i.i = phi i64 [ %.val.i.pre.i.i, %_RINvNtNtCs5yxAJGbRKSL_4ring2io10der_writer9write_tlvRDG_INtNtNtCs3oUPovFnLWP_4core3ops8function2FnTQL0_DNtNtB4_6writer11AccumulatorEL0_EEp6OutputINtNtBZ_6result6ResultuNtB1G_12TooLongErrorEEL_EB6_.exit14._RINvNtNtCs5yxAJGbRKSL_4ring2io10der_writer9write_tlvRDG_INtNtNtCs3oUPovFnLWP_4core3ops8function2FnTQL0_DNtNtB4_6writer11AccumulatorEL0_EEp6OutputINtNtBZ_6result6ResultuNtB1G_12TooLongErrorEEL_EB6_.exit14.thread_crit_edge.i.i ], [ %i.dj, %bb.ag ], [ %i.dj, %bb.af ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1410)
  %i.en = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.en, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs5yxAJGbRKSL_4ring2io6writer6WriterEBH_.exit.i.i, label %bb.au

bb.au:                                            ; preds = %_RINvNtNtCs5yxAJGbRKSL_4ring2io10der_writer9write_tlvRDG_INtNtNtCs3oUPovFnLWP_4core3ops8function2FnTQL0_DNtNtB4_6writer11AccumulatorEL0_EEp6OutputINtNtBZ_6result6ResultuNtB1G_12TooLongErrorEEL_EB6_.exit14.thread.i.i
  %.val1.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !1410, !noalias !1399, !nonnull !15, !noundef !15
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #36, !noalias !1411
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs5yxAJGbRKSL_4ring2io6writer6WriterEBH_.exit.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs5yxAJGbRKSL_4ring2io6writer6WriterEBH_.exit.i.i: ; preds = %bb.au, %_RINvNtNtCs5yxAJGbRKSL_4ring2io10der_writer9write_tlvRDG_INtNtNtCs3oUPovFnLWP_4core3ops8function2FnTQL0_DNtNtB4_6writer11AccumulatorEL0_EEp6OutputINtNtBZ_6result6ResultuNtB1G_12TooLongErrorEEL_EB6_.exit14.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1399
  br label %.thread.i

bb.av:                                            ; preds = %_RINvNtNtCs5yxAJGbRKSL_4ring2io10der_writer9write_tlvRDG_INtNtNtCs3oUPovFnLWP_4core3ops8function2FnTQL0_DNtNtB4_6writer11AccumulatorEL0_EEp6OutputINtNtBZ_6result6ResultuNtB1G_12TooLongErrorEEL_EB6_.exit14.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1399
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.j, i64 32, i1 false), !noalias !1399
  %i.eo = invoke { ptr, i64 } @_RNvXs2_NtNtCs5yxAJGbRKSL_4ring2io6writerINtNtCs1xwejQucwHj_5alloc5boxed3BoxShEINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_6WriterE4from(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.i)
          to label %bb.ba unwind label %bb.az, !noalias !1399 ; 2 uses

bb.aw:                                            ; preds = %bb.at, %bb.as, %bb.aq, %bb.ao, %bb.am, %bb.ai, %_RNvMs1_NtNtCs5yxAJGbRKSL_4ring2io6writerNtB5_6Writer13with_capacity.exit.i.i
  %lpad.thr_comm.i.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1412)
  %.val.i15.i.i = load i64, ptr %i.j, align 8, !alias.scope !1412, !noalias !1399 ; 2 uses
  %i.ep = icmp eq i64 %.val.i15.i.i, 0
  br i1 %i.ep, label %bb.bb, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %.val1.i16.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !1412, !noalias !1399, !nonnull !15, !noundef !15
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i16.i.i, i64 noundef %.val.i15.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #36, !noalias !1413
  br label %bb.bb

bb.ay:                                            ; preds = %bb.w, %bb.x, %.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !1399
  br label %bb.bd

bb.az:                                            ; preds = %bb.av, %bb.ae, %_RINvNtNtCs5yxAJGbRKSL_4ring2io10der_writer9write_tlvRDG_INtNtNtCs3oUPovFnLWP_4core3ops8function2FnTQL0_DNtNtB4_6writer11AccumulatorEL0_EEp6OutputINtNtBZ_6result6ResultuNtB1G_12TooLongErrorEEL_EB6_.exit.i.i, %bb.y
  %i.eq = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

bb.ba:                                            ; preds = %bb.av
  %i.er = extractvalue { ptr, i64 } %i.eo, 0      ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1399
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1399
  %i.es = icmp eq ptr %i.er, null
  br i1 %i.es, label %.thread.i, label %bb.bf

.thread.i:                                        ; preds = %bb.ba, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs5yxAJGbRKSL_4ring2io6writer6WriterEBH_.exit.i.i, %_RINvNtNtCs5yxAJGbRKSL_4ring2io10der_writer9write_tlvRDG_INtNtNtCs3oUPovFnLWP_4core3ops8function2FnTQL0_DNtNtB4_6writer11AccumulatorEL0_EEp6OutputINtNtBZ_6result6ResultuNtB1G_12TooLongErrorEEL_EB6_.exit.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !1399
  br label %bb.ay

bb.bb:                                            ; preds = %bb.az, %bb.ax, %bb.aw
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.eq, %bb.az ], [ %lpad.thr_comm.i.i, %bb.ax ], [ %lpad.thr_comm.i.i, %bb.aw ]
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cg, i64 noundef %i.ce, i64 noundef 8) #36, !noalias !1399
  br label %common.resume

bb.bc:                                            ; preds = %_RNvMs3_NtCs5yxAJGbRKSL_4ring4bitsNtB5_9BitLength15half_rounded_up.exit, %bb.l
  %.sink508.a = phi ptr [ @54, %bb.l ], [ @55, %_RNvMs3_NtCs5yxAJGbRKSL_4ring4bitsNtB5_9BitLength15half_rounded_up.exit ]
  %.sink = phi i64 [ 16, %bb.l ], [ 22, %_RNvMs3_NtCs5yxAJGbRKSL_4ring4bitsNtB5_9BitLength15half_rounded_up.exit ]
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink508.a, ptr %i.et, align 8
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink, ptr %i.eu, align 8
  store ptr null, ptr %0, align 8
  br label %bb.ec

bb.bd:                                            ; preds = %bb.ay, %bb.v, %_RNvMNtNtNtCs5yxAJGbRKSL_4ring3rsa4base10public_keyNtB2_14ValidatedInput11build_boxed.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !1399
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cg, i64 noundef %i.ce, i64 noundef 8) #36, !noalias !1399
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @109, ptr %i.ev, align 8
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 15, ptr %i.ew, align 8
  store ptr null, ptr %0, align 8
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs5yxAJGbRKSL_4ring3rsa10public_key9PublicKeyEBH_.exit

.body:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs5yxAJGbRKSL_4ring3rsa7keypair12PrivatePrimeNtBE_1QEEBI_.exit356, %bb.be, %bb.cc, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs5yxAJGbRKSL_4ring3rsa7keypair12PrivatePrimeNtBE_1PEEBI_.exit358, %bb.ce
  %.pn189 = phi { ptr, i32 } [ %.pn, %bb.ce ], [ %.pn187446, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs5yxAJGbRKSL_4ring3rsa7keypair12PrivatePrimeNtBE_1PEEBI_.exit358 ], [ %i.ex, %bb.be ], [ %i.ip, %bb.cc ], [ %.pn, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs5yxAJGbRKSL_4ring3rsa7keypair12PrivatePrimeNtBE_1QEEBI_.exit356 ]
  call void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs5yxAJGbRKSL_4ring3rsa10public_key9PublicKeyEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.x) #43
  br label %common.resume

bb.be:                                            ; preds = %bb.bi, %bb.cd, %bb.bm
  %i.ex = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.bf:                                            ; preds = %bb.ba
  %i.ey = extractvalue { ptr, i64 } %i.eo, 1      ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !1399
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !1399
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !1399
  %i.ez = inttoptr i64 %i.cc to ptr
  store ptr %i.cg, ptr %i.x, align 8
  %.sroa.453.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %i.ez, ptr %.sroa.453.0..sroa_idx, align 8
  %.sroa.554.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store i64 %i.cq, ptr %.sroa.554.0..sroa_idx, align 8
  %.sroa.655.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  store ptr %i.er, ptr %.sroa.655.0..sroa_idx, align 8
  %.sroa.655.sroa.4.0..sroa.655.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  store i64 %i.ey, ptr %.sroa.655.sroa.4.0..sroa.655.0..sroa_idx.sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  %i.fa = add nuw i64 %i.be, 2                    ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.fc = load i64, ptr %i.fb, align 8, !alias.scope !1414, !noalias !1415, !noundef !15
  %.not.i.i = icmp eq i64 %i.fc, %i.be
  br i1 %.not.i.i, label %bb.bg, label %bb.bi, !prof !19

bb.bg:                                            ; preds = %bb.bf
  %i.fd = icmp samesign ult i64 %i.be, 4
  br i1 %i.fd, label %bb.bi, label %bb.bh, !prof !16

bb.bh:                                            ; preds = %bb.bg
  %i.fe = icmp samesign ugt i64 %i.be, 128
  br i1 %i.fe, label %bb.bi, label %bb.bj, !prof !16

bb.bi:                                            ; preds = %bb.bh, %bb.bg, %bb.bf
  %.sroa.42.0.ph.i = phi i64 [ 0, %bb.bf ], [ 1, %bb.bg ], [ 2, %bb.bh ]
  invoke fastcc void @_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint34unwrap_impossible_limb_slice_errorINtNtNtNtB2_7modulus4mont4base4MontNtNtB6_3rsa1NEEB6_(i64 noundef %.sroa.42.0.ph.i) #39
          to label %.noexc265 unwind label %bb.be

.noexc265:                                        ; preds = %bb.bi
  unreachable

bb.bj:                                            ; preds = %bb.bh
  %i.ff = icmp slt i64 %.sroa.514.0.copyload.i, 0
  br i1 %i.ff, label %bb.cd, label %bb.bk, !prof !16

bb.bk:                                            ; preds = %bb.bj
  %i.fg = shl nuw i64 %.sroa.514.0.copyload.i, 1
  %i.fh = add i64 %i.fg, 2                        ; 9 uses
  %i.fi = icmp eq i64 %i.fh, 0
  br i1 %i.fi, label %bb.cd, label %bb.bl, !prof !16

bb.bl:                                            ; preds = %bb.bk
  %i.fj = shl i64 %i.fh, 3                        ; 6 uses
  %i.fk = icmp ugt i64 %i.fh, 2305843009213693951
  %.not.i.i.i.i266 = icmp ugt i64 %i.fj, 9223372036854775800
  %or.cond.i.i.i.i = or i1 %i.fk, %.not.i.i.i.i266
  br i1 %or.cond.i.i.i.i, label %bb.bm, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i267, !prof !28

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i267: ; preds = %bb.bl
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #36, !noalias !1416
  %i.fl = call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.fj, i64 noundef range(i64 1, 9) 8) #36, !noalias !1416 ; 15 uses
  %i.fm = icmp eq ptr %i.fl, null
  br i1 %i.fm, label %bb.bm, label %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i

bb.bm:                                            ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i267, %bb.bl
  %.sroa.4.0.ph.i.i.i270 = phi i64 [ 8, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i267 ], [ 0, %bb.bl ]
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i270, i64 %i.fj) #42
          to label %.noexc271.a unwind label %bb.be

.noexc271.a:                                      ; preds = %bb.bm
  unreachable

_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i: ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i267
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1417
  store ptr %i.fl, ptr %i.f, align 8, !noalias !1417
  %i.fn = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  store i64 %i.fh, ptr %i.fn, align 8, !noalias !1417
  %i.fo = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1418)
  store i64 0, ptr %i.fl, align 8, !alias.scope !1419, !noalias !1420
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fl, i64 8 ; 2 uses
  store i64 %.sroa.514.0.copyload.i, ptr %i.fp, align 8, !alias.scope !1421, !noalias !1422
  store i64 2, ptr %i.fo, align 8, !alias.scope !1418, !noalias !1417
  %i.fq = invoke fastcc { i64, i64 } @_RNvNtCs5yxAJGbRKSL_4ring4limb26limbs_from_be_bytes_padded(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bh, i64 noundef %i.br, i64 noundef %.sroa.514.0.copyload.i)
          to label %.noexc5.i.i unwind label %bb.cc, !noalias !1423

.noexc5.i.i:                                      ; preds = %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i
  %i.fr = extractvalue { i64, i64 } %i.fq, 0
  %i.fs = trunc nuw i64 %i.fr to i1
  br i1 %i.fs, label %_RNCINvMs1_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montNtNtBa_5value14ValidatedInput18write_into_mont_RRNtNtNtBg_3rsa7keypair1PEs_0Bg_.exit.i.i.thread.i.i, label %bb.bn

bb.bn:                                            ; preds = %.noexc5.i.i
  %i.ft = load i64, ptr %i.fo, align 8, !alias.scope !1424, !noalias !1417, !noundef !15 ; 8 uses
  %.val3.i.i.i.i.i.i = load i64, ptr %i.fn, align 8, !alias.scope !1424, !noalias !1417, !noundef !15 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp ugt i64 %i.ft, %.val3.i.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %.invoke45.i.i, label %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE10filled_mutB9_.exit.i.i.i.i.i, !prof !16

.invoke45.i.i:                                    ; preds = %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.bo, %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE10filled_mutB9_.exit.i.i.i.i.i, %bb.bn
  %i.fu = phi ptr [ @46, %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE10filled_mutB9_.exit.i.i.i.i.i ], [ @166, %bb.bn ], [ @47, %bb.bo ], [ @64, %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fu) #41
          to label %.cont46.i.i unwind label %bb.cc, !noalias !1423

.cont46.i.i:                                      ; preds = %.invoke45.i.i
  unreachable

_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE10filled_mutB9_.exit.i.i.i.i.i: ; preds = %bb.bn
  %.val.i.i.i.i.i.i = load ptr, ptr %i.f, align 8, !alias.scope !1424, !noalias !1417, !nonnull !15, !align !17, !noundef !15 ; 11 uses
  switch i64 %i.ft, label %bb.bp [
    i64 0, label %.invoke45.i.i
    i64 1, label %bb.bo
  ], !prof !18

bb.bo:                                            ; preds = %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE10filled_mutB9_.exit.i.i.i.i.i
  br label %.invoke45.i.i

bb.bp:                                            ; preds = %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE10filled_mutB9_.exit.i.i.i.i.i
  %i.fv = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i, i64 16 ; 13 uses
  %i.fw = add i64 %i.ft, -2                       ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1425)
  call void @llvm.experimental.noalias.scope.decl(metadata !1426)
  %.not.i.i.i.i.i.i268 = icmp eq i64 %i.fw, 0
  br i1 %.not.i.i.i.i.i.i268, label %_RNCINvMs1_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montNtNtBa_5value14ValidatedInput18write_into_mont_RRNtNtNtBg_3rsa7keypair1PEs_0Bg_.exit.i.i.thread.i.i, label %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE18split_at_spare_mutB9_.exit.i.i.i.i.i.i, !prof !16

_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE18split_at_spare_mutB9_.exit.i.i.i.i.i.i: ; preds = %bb.bp
  %i.fx = load i64, ptr %i.fv, align 8, !alias.scope !1426, !noalias !1427, !noundef !15 ; 2 uses
  %i.fy = trunc i64 %i.fx to i32                  ; 6 uses
  %.neg.i.i.i.i.i.i = mul i32 %i.fy, %i.fy
  %.neg32.i.i.i.i.i.i = add i32 %.neg.i.i.i.i.i.i, -2
  %i.fz = mul i32 %.neg32.i.i.i.i.i.i, %i.fy      ; 2 uses
  %i.ga = mul i32 %i.fz, %i.fy
  %i.gb = add i32 %i.ga, 2
  %i.gc = mul i32 %i.gb, %i.fz                    ; 2 uses
  %i.gd = mul i32 %i.gc, %i.fy
  %i.ge = add i32 %i.gd, 2
  %i.gf = mul i32 %i.ge, %i.gc                    ; 2 uses
  %i.gg = mul i32 %i.gf, %i.fy
  %i.gh = add i32 %i.gg, 2
  %i.gi = mul i32 %i.gh, %i.gf
  %i.gj = zext i32 %i.gi to i64                   ; 2 uses
  %i.gk = mul i64 %i.fx, %i.gj
  %i.gl = add i64 %i.gk, 2
  %i.gm = mul i64 %i.gl, %i.gj
  store i64 %i.gm, ptr %.val.i.i.i.i.i.i, align 8, !alias.scope !1425, !noalias !1428
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i.i.i.i, i64 %i.ft ; 14 uses
  %i.go = sub nuw i64 %.val3.i.i.i.i.i.i, %i.ft
  %.not.i.i.i.i43.i.i.i.i.i = icmp ugt i64 %.sroa.514.0.copyload.i, %i.go
  br i1 %.not.i.i.i.i43.i.i.i.i.i, label %_RNCINvMs1_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montNtNtBa_5value14ValidatedInput18write_into_mont_RRNtNtNtBg_3rsa7keypair1PEs_0Bg_.exit.i.i.thread.i.i, label %bb.bq, !prof !16

bb.bq:                                            ; preds = %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE18split_at_spare_mutB9_.exit.i.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1429)
  call void @llvm.experimental.noalias.scope.decl(metadata !1430)
  %i.gp = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i, i64 8
  %i.gq = load i64, ptr %i.gp, align 8, !alias.scope !1431, !noalias !1432, !noundef !15
  %.not.i.i14.i.i.i.i.i.i = icmp eq i64 %i.gq, %i.fw
  br i1 %.not.i.i14.i.i.i.i.i.i, label %bb.br, label %bb.bt, !prof !19

bb.br:                                            ; preds = %bb.bq
  %i.gr = icmp samesign ult i64 %i.ft, 6
  br i1 %i.gr, label %bb.bt, label %bb.bs, !prof !16

bb.bs:                                            ; preds = %bb.br
  %i.gs = icmp samesign ugt i64 %i.ft, 130
  br i1 %i.gs, label %bb.bt, label %bb.bu, !prof !16

bb.bt:                                            ; preds = %bb.bs, %bb.br, %bb.bq
  %.sroa.4.0.ph.i.i.i.i.i.i.i = phi i64 [ 0, %bb.bq ], [ 1, %bb.br ], [ 2, %bb.bs ]
  invoke fastcc void @_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint34unwrap_impossible_limb_slice_errorINtNtNtNtB2_7modulus4mont4base4MontNtNtNtB6_3rsa7keypair1PEEB6_(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i) #39
          to label %.noexc9.i.i unwind label %bb.cc

.noexc9.i.i:                                      ; preds = %bb.bt
  unreachable

bb.bu:                                            ; preds = %bb.bs
  call void @llvm.experimental.noalias.scope.decl(metadata !1433)
  call void @llvm.experimental.noalias.scope.decl(metadata !1434)
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.fw, %.sroa.514.0.copyload.i
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.bv, label %_RNCINvMs1_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montNtNtBa_5value14ValidatedInput18write_into_mont_RRNtNtNtBg_3rsa7keypair1PEs_0Bg_.exit.i.i.thread.i.i, !prof !19

bb.bv:                                            ; preds = %bb.bu
  %.idx.i.i.i.i.i.i.i.i.i.i = shl i64 %.sroa.514.0.copyload.i, 3 ; 3 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.fv, i64 %.idx.i.i.i.i.i.i.i.i.i.i
  %i.gu = add i64 %.idx.i.i.i.i.i.i.i.i.i.i, -8
  %i.gv = lshr exact i64 %i.gu, 3
  %i.gw = call i64 @llvm.umin.i64(i64 %.sroa.514.0.copyload.i, i64 %i.gv) ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.gw, 4
  br i1 %min.iters.check, label %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.bv
  %i.gx = add nuw nsw i64 %i.gw, 1                ; 2 uses
  %i.gy = and i64 %i.gx, 3                        ; 2 uses
  %i.gz = icmp eq i64 %i.gy, 0
  %i.ha = select i1 %i.gz, i64 4, i64 %i.gy
  %n.vec = sub nsw i64 %i.gx, %i.ha               ; 3 uses
  %i.hb = shl i64 %n.vec, 3
  %i.hc = getelementptr i8, ptr %i.fv, i64 %i.hb
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.hd = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.fv, i64 %i.hd ; 2 uses
  %i.he = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep, align 8, !alias.scope !1435, !noalias !1436
  %wide.load517 = load <2 x i64>, ptr %i.he, align 8, !alias.scope !1435, !noalias !1436
  %i.hf = xor <2 x i64> %wide.load, splat (i64 -1)
  %i.hg = xor <2 x i64> %wide.load517, splat (i64 -1)
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %i.gn, i64 %index ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 16
  store <2 x i64> %i.hf, ptr %i.hh, align 8, !alias.scope !1437, !noalias !1438
  store <2 x i64> %i.hg, ptr %i.hi, align 8, !alias.scope !1437, !noalias !1438
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.hj = icmp eq i64 %index.next, %n.vec
  br i1 %i.hj, label %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, label %vector.body, !llvm.loop !1289

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
  %.sroa.0.0.val.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.0.02.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !1435, !noalias !1436, !noundef !15
  %i.hl = xor i64 %.sroa.0.0.val.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.hm = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i.i.i.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %i.gn, i64 %.sroa.9.0.i.i.i.i.i.i.i.i.i.i
  store i64 %i.hl, ptr %i.hn, align 8, !alias.scope !1437, !noalias !1438
  %i.ho = add nuw nsw i64 %.sroa.9.0.i.i.i.i.i.i.i.i.i.i, 1 ; 3 uses
  %i.hp = icmp eq ptr %i.hm, %i.gt
  br i1 %i.hp, label %bb.bw, label %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !1290

bb.bw:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.hq = load i64, ptr %i.gn, align 8, !alias.scope !1439, !noalias !1440, !noundef !15
  %i.hr = or i64 %i.hq, 1
  store i64 %i.hr, ptr %i.gn, align 8, !alias.scope !1439, !noalias !1440
  %i.hs = shl nuw nsw i64 %.sroa.514.0.copyload.i, 6 ; 3 uses
  %i.ht = sub nuw i64 %i.hs, %.sroa.615.0.copyload.i ; 2 uses
  %i.hu = icmp ult i64 %i.hs, %.sroa.615.0.copyload.i
  br i1 %i.hu, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.hv = icmp eq i64 %i.hs, %.sroa.615.0.copyload.i
  br i1 %i.hv, label %.preheader1.i.i.i.i.i.i.i.i, label %bb.bz

bb.by:                                            ; preds = %bb.bw
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @164) #41
          to label %.noexc11.i.i unwind label %bb.cc, !noalias !1423

.noexc11.i.i:                                     ; preds = %bb.by
  unreachable

bb.bz:                                            ; preds = %bb.bx
  %i.hw = icmp samesign ult i64 %i.ht, 64
  br i1 %i.hw, label %.lr.ph.i.i.i.i.i.i.i.i, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_shr_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @165) #41
          to label %.noexc12.i.i unwind label %bb.cc, !noalias !1423

.noexc12.i.i:                                     ; preds = %bb.ca
  unreachable

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.bz
  %.not.i.not.i.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ho, %.sroa.514.0.copyload.i
  br i1 %.not.i.not.i.not.i.i.i.i.i.i.i.i.i, label %_RNvMsd_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1PNtNtB9_10montgomery1RE6doubleBb_.exit.i.i.i.i.i.i.i.i, label %_RNvNtCs5yxAJGbRKSL_4ring4limb16limbs_double_mod.exit.thread.i.i.i.i.i.i.i.invoke.i.i, !prof !19

_RNvMsd_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1PNtNtB9_10montgomery1RE6doubleBb_.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %_RNvMsd_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1PNtNtB9_10montgomery1RE6doubleBb_.exit.i.i.i.i.i.i.i.i
  %.sroa.08.05.i.i.i.i.i.i.i.i = phi i64 [ %i.hx, %_RNvMsd_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1PNtNtB9_10montgomery1RE6doubleBb_.exit.i.i.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i ]
  %i.hx = add nuw nsw i64 %.sroa.08.05.i.i.i.i.i.i.i.i, 1 ; 2 uses
  call void @ring_core_0_17_16000__LIMBS_shl_mod(ptr noundef nonnull align 8 %i.gn, ptr noundef nonnull align 8 %i.gn, ptr noundef nonnull readonly align 8 %i.fv, i64 noundef range(i64 0, 1152921504606846976) %.sroa.514.0.copyload.i) #36, !noalias !1441
  %exitcond.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.hx, %i.ht
  br i1 %exitcond.not.i.i.i.i.i.i.i.i, label %.preheader1.i.i.i.i.i.i.i.i, label %_RNvMsd_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1PNtNtB9_10montgomery1RE6doubleBb_.exit.i.i.i.i.i.i.i.i

_RNvNtCs5yxAJGbRKSL_4ring4limb16limbs_double_mod.exit.thread.i.i.i.i.i.i.i.invoke.i.i: ; preds = %.preheader1.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i
  invoke fastcc void @_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint36unwrap_impossible_len_mismatch_erroruEB6_() #39
          to label %_RNvNtCs5yxAJGbRKSL_4ring4limb16limbs_double_mod.exit.thread.i.i.i.i.i.i.i.cont.i.i unwind label %bb.cc

_RNvNtCs5yxAJGbRKSL_4ring4limb16limbs_double_mod.exit.thread.i.i.i.i.i.i.i.cont.i.i: ; preds = %_RNvNtCs5yxAJGbRKSL_4ring4limb16limbs_double_mod.exit.thread.i.i.i.i.i.i.i.invoke.i.i
  unreachable

.preheader1.i.i.i.i.i.i.i.i:                      ; preds = %_RNvMsd_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1PNtNtB9_10montgomery1RE6doubleBb_.exit.i.i.i.i.i.i.i.i, %bb.bx
  %.not.i.not.i.not.i.i9.i.i.i.i.i.i.i = icmp eq i64 %i.ho, %.sroa.514.0.copyload.i
  br i1 %.not.i.not.i.not.i.i9.i.i.i.i.i.i.i, label %_RNvMsd_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1PNtNtB9_10montgomery1RE6doubleBb_.exit.i11.i.i.i.i.i.i.i, label %_RNvNtCs5yxAJGbRKSL_4ring4limb16limbs_double_mod.exit.thread.i.i.i.i.i.i.i.invoke.i.i, !prof !19

.preheader.i.i.i.i.i.i.i.i:                       ; preds = %_RNvMsd_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1PNtNtB9_10montgomery1RE6doubleBb_.exit.i11.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1442
  call fastcc void @_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic10montgomery17limbs_square_montQSyEB6_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull align 8 %i.gn, i64 noundef %.sroa.514.0.copyload.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.fv, i64 noundef %.sroa.514.0.copyload.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val.i.i.i.i.i.i), !noalias !1443
  %i.hy = load i64, ptr %i.e, align 8, !range !22, !noalias !1442, !noundef !15
  %i.hz = trunc nuw i64 %i.hy to i1
  br i1 %i.hz, label %bb.cb, label %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1PNtNtB9_10montgomery1RE6squareBb_.exit.i.i.i.i.i.i.i.i, !prof !16

_RNvMsd_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1PNtNtB9_10montgomery1RE6doubleBb_.exit.i11.i.i.i.i.i.i.i: ; preds = %.preheader1.i.i.i.i.i.i.i.i, %_RNvMsd_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1PNtNtB9_10montgomery1RE6doubleBb_.exit.i11.i.i.i.i.i.i.i
  %.sroa.05.02.i.i.i.i.i.i.i.i = phi i64 [ %i.ia, %_RNvMsd_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1PNtNtB9_10montgomery1RE6doubleBb_.exit.i11.i.i.i.i.i.i.i ], [ 0, %.preheader1.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.ia = add nuw nsw i64 %.sroa.05.02.i.i.i.i.i.i.i.i, 1
  call void @ring_core_0_17_16000__LIMBS_shl_mod(ptr noundef nonnull align 8 %i.gn, ptr noundef nonnull align 8 %i.gn, ptr noundef nonnull readonly align 8 %i.fv, i64 noundef range(i64 0, 1152921504606846976) %.sroa.514.0.copyload.i) #36, !noalias !1443
  %exitcond.not.i12.i.i.i.i.i.i.i = icmp eq i64 %.sroa.05.02.i.i.i.i.i.i.i.i, %.sroa.9.0.i.i.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i12.i.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i.i, label %_RNvMsd_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1PNtNtB9_10montgomery1RE6doubleBb_.exit.i11.i.i.i.i.i.i.i

bb.cb:                                            ; preds = %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1PNtNtB9_10montgomery1RE6squareBb_.exit.4.i.i.i.i.i.i.i.i, %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1PNtNtB9_10montgomery1RE6squareBb_.exit.3.i.i.i.i.i.i.i.i, %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1PNtNtB9_10montgomery1RE6squareBb_.exit.2.i.i.i.i.i.i.i.i, %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1PNtNtB9_10montgomery1RE6squareBb_.exit.1.i.i.i.i.i.i.i.i, %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1PNtNtB9_10montgomery1RE6squareBb_.exit.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i
  %i.ib = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ic = load i64, ptr %i.ib, align 8, !range !23, !noalias !1442, !noundef !15
  invoke fastcc void @_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint34unwrap_impossible_limb_slice_errorQSyEB6_(i64 noundef %i.ic) #39
          to label %.noexc15.i.i unwind label %bb.cc

.noexc15.i.i:                                     ; preds = %bb.cb
  unreachable

_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1PNtNtB9_10montgomery1RE6squareBb_.exit.i.i.i.i.i.i.i.i: ; preds = %.preheader.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1442
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1442
  call fastcc void @_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic10montgomery17limbs_square_montQSyEB6_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull align 8 %i.gn, i64 noundef %.sroa.514.0.copyload.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.fv, i64 noundef %.sroa.514.0.copyload.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val.i.i.i.i.i.i), !noalias !1443
  %i.id = load i64, ptr %i.e, align 8, !range !22, !noalias !1442, !noundef !15
  %i.ie = trunc nuw i64 %i.id to i1
  br i1 %i.ie, label %bb.cb, label %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1PNtNtB9_10montgomery1RE6squareBb_.exit.1.i.i.i.i.i.i.i.i, !prof !16

_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1PNtNtB9_10montgomery1RE6squareBb_.exit.1.i.i.i.i.i.i.i.i: ; preds = %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1PNtNtB9_10montgomery1RE6squareBb_.exit.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1442
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1442
  call fastcc void @_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic10montgomery17limbs_square_montQSyEB6_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull align 8 %i.gn, i64 noundef %.sroa.514.0.copyload.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.fv, i64 noundef %.sroa.514.0.copyload.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val.i.i.i.i.i.i), !noalias !1443
  %i.if = load i64, ptr %i.e, align 8, !range !22, !noalias !1442, !noundef !15
  %i.ig = trunc nuw i64 %i.if to i1
  br i1 %i.ig, label %bb.cb, label %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1PNtNtB9_10montgomery1RE6squareBb_.exit.2.i.i.i.i.i.i.i.i, !prof !16

_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1PNtNtB9_10montgomery1RE6squareBb_.exit.2.i.i.i.i.i.i.i.i: ; preds = %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1PNtNtB9_10montgomery1RE6squareBb_.exit.1.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1442
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1442
  call fastcc void @_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic10montgomery17limbs_square_montQSyEB6_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull align 8 %i.gn, i64 noundef %.sroa.514.0.copyload.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.fv, i64 noundef %.sroa.514.0.copyload.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val.i.i.i.i.i.i), !noalias !1443
  %i.ih = load i64, ptr %i.e, align 8, !range !22, !noalias !1442, !noundef !15
  %i.ii = trunc nuw i64 %i.ih to i1
  br i1 %i.ii, label %bb.cb, label %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1PNtNtB9_10montgomery1RE6squareBb_.exit.3.i.i.i.i.i.i.i.i, !prof !16

_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1PNtNtB9_10montgomery1RE6squareBb_.exit.3.i.i.i.i.i.i.i.i: ; preds = %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1PNtNtB9_10montgomery1RE6squareBb_.exit.2.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1442
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1442
  call fastcc void @_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic10montgomery17limbs_square_montQSyEB6_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull align 8 %i.gn, i64 noundef %.sroa.514.0.copyload.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.fv, i64 noundef %.sroa.514.0.copyload.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val.i.i.i.i.i.i), !noalias !1443
  %i.ij = load i64, ptr %i.e, align 8, !range !22, !noalias !1442, !noundef !15
  %i.ik = trunc nuw i64 %i.ij to i1
  br i1 %i.ik, label %bb.cb, label %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1PNtNtB9_10montgomery1RE6squareBb_.exit.4.i.i.i.i.i.i.i.i, !prof !16

_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1PNtNtB9_10montgomery1RE6squareBb_.exit.4.i.i.i.i.i.i.i.i: ; preds = %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1PNtNtB9_10montgomery1RE6squareBb_.exit.3.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1442
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1442
  call fastcc void @_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic10montgomery17limbs_square_montQSyEB6_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull align 8 %i.gn, i64 noundef %.sroa.514.0.copyload.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.fv, i64 noundef %.sroa.514.0.copyload.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val.i.i.i.i.i.i), !noalias !1443
  %i.il = load i64, ptr %i.e, align 8, !range !22, !noalias !1442, !noundef !15
  %i.im = trunc nuw i64 %i.il to i1
  br i1 %i.im, label %bb.cb, label %_RNCINvMs1_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montNtNtBa_5value14ValidatedInput18write_into_mont_RRNtNtNtBg_3rsa7keypair1PEs_0Bg_.exit.i.i.i.i, !prof !16

_RNCINvMs1_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montNtNtBa_5value14ValidatedInput18write_into_mont_RRNtNtNtBg_3rsa7keypair1PEs_0Bg_.exit.i.i.thread.i.i: ; preds = %bb.bu, %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE18split_at_spare_mutB9_.exit.i.i.i.i.i.i, %bb.bp, %.noexc5.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1417
  br label %.invoke.i.i

_RNCINvMs1_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montNtNtBa_5value14ValidatedInput18write_into_mont_RRNtNtNtBg_3rsa7keypair1PEs_0Bg_.exit.i.i.i.i: ; preds = %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1PNtNtB9_10montgomery1RE6squareBb_.exit.4.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1442
  %i.in = icmp ne ptr %.val.i.i.i.i.i.i, %i.fl
  %i.io = icmp ne i64 %.val3.i.i.i.i.i.i, %i.fh
  %.not27.i.i = or i1 %i.io, %i.in
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1417
  br i1 %.not27.i.i, label %.invoke.i.i, label %3, !prof !35

.invoke.i.i:                                      ; preds = %3, %_RNCINvMs1_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montNtNtBa_5value14ValidatedInput18write_into_mont_RRNtNtNtBg_3rsa7keypair1PEs_0Bg_.exit.i.i.i.i, %_RNCINvMs1_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montNtNtBa_5value14ValidatedInput18write_into_mont_RRNtNtNtBg_3rsa7keypair1PEs_0Bg_.exit.i.i.thread.i.i
  %2 = phi ptr [ @11, %_RNCINvMs1_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montNtNtBa_5value14ValidatedInput18write_into_mont_RRNtNtNtBg_3rsa7keypair1PEs_0Bg_.exit.i.i.i.i ], [ @11, %_RNCINvMs1_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montNtNtBa_5value14ValidatedInput18write_into_mont_RRNtNtNtBg_3rsa7keypair1PEs_0Bg_.exit.i.i.thread.i.i ], [ @10, %3 ]
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) #42
          to label %.cont.i.i unwind label %bb.cc, !noalias !1423

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

3:                                                ; preds = %_RNCINvMs1_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montNtNtBa_5value14ValidatedInput18write_into_mont_RRNtNtNtBg_3rsa7keypair1PEs_0Bg_.exit.i.i.i.i
  %4 = add nuw i64 %i.ft, %.sroa.514.0.copyload.i
  %.not.i.i269 = icmp eq i64 %4, %i.fh
  br i1 %.not.i.i269, label %bb.cg, label %.invoke.i.i, !prof !19

bb.cc:                                            ; preds = %_RNvNtCs5yxAJGbRKSL_4ring4limb16limbs_double_mod.exit.thread.i.i.i.i.i.i.i.invoke.i.i, %bb.cb, %bb.bt, %.invoke.i.i, %bb.ca, %bb.by, %.invoke45.i.i, %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i
  %i.ip = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.fl, i64 noundef %i.fj, i64 noundef 8) #36, !noalias !1423
  br label %.body

bb.cd:                                            ; preds = %bb.bk, %bb.bj
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #41
          to label %.noexc272 unwind label %bb.be

.noexc272:                                        ; preds = %bb.cd
  unreachable

bb.ce:                                            ; preds = %bb.dd
  br i1 %.sroa.0151.4, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs5yxAJGbRKSL_4ring3rsa7keypair12PrivatePrimeNtBE_1PEEBI_.exit358, label %.body

bb.cf:                                            ; preds = %bb.ch, %bb.dc, %bb.cl
  %i.iq = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs5yxAJGbRKSL_4ring3rsa7keypair12PrivatePrimeNtBE_1PEEBI_.exit358

bb.cg:                                            ; preds = %3
  %i.ir = add nuw i64 %.sroa.514.0.copyload.i, 2  ; 3 uses
  %i.is = load i64, ptr %i.fp, align 8, !alias.scope !1444, !noalias !1445, !noundef !15
  %.not.i.i273 = icmp eq i64 %i.is, %.sroa.514.0.copyload.i
  br i1 %.not.i.i273, label %5, label %bb.ch, !prof !19

5:                                                ; preds = %bb.cg
  %6 = icmp ult i64 %.sroa.514.0.copyload.i, 4
  br i1 %6, label %bb.ch, label %7, !prof !16

7:                                                ; preds = %5
  %8 = icmp ugt i64 %.sroa.514.0.copyload.i, 128
  br i1 %8, label %bb.ch, label %bb.ci, !prof !16

bb.ch:                                            ; preds = %7, %5, %bb.cg
  %.sroa.42.0.ph.i274 = phi i64 [ 0, %bb.cg ], [ 1, %5 ], [ 2, %7 ]
  invoke fastcc void @_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint34unwrap_impossible_limb_slice_errorINtNtNtNtB2_7modulus4mont4base4MontNtNtNtB6_3rsa7keypair1PEEB6_(i64 noundef %.sroa.42.0.ph.i274) #39
          to label %.noexc278 unwind label %bb.cf

.noexc278:                                        ; preds = %bb.ch
  unreachable

bb.ci:                                            ; preds = %7
  %i.it = icmp slt i64 %.sroa.514.0.copyload.i256, 0
  br i1 %i.it, label %bb.dc, label %bb.cj, !prof !16

bb.cj:                                            ; preds = %bb.ci
  %i.iu = shl nuw i64 %.sroa.514.0.copyload.i256, 1
  %i.iv = add i64 %i.iu, 2                        ; 7 uses
  %i.iw = icmp eq i64 %i.iv, 0
  br i1 %i.iw, label %bb.dc, label %bb.ck, !prof !16

bb.ck:                                            ; preds = %bb.cj
  %i.ix = shl i64 %i.iv, 3                        ; 8 uses
  %i.iy = icmp ugt i64 %i.iv, 2305843009213693951
  %.not.i.i.i.i279 = icmp ugt i64 %i.ix, 9223372036854775800
  %or.cond.i.i.i.i280 = or i1 %i.iy, %.not.i.i.i.i279
  br i1 %or.cond.i.i.i.i280, label %bb.cl, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i281, !prof !28

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i281: ; preds = %bb.ck
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #36, !noalias !1446
  %i.iz = call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.ix, i64 noundef range(i64 1, 9) 8) #36, !noalias !1446 ; 12 uses
  %i.ja = icmp eq ptr %i.iz, null
  br i1 %i.ja, label %bb.cl, label %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i282

bb.cl:                                            ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i281, %bb.ck
  %.sroa.4.0.ph.i.i.i327 = phi i64 [ 8, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i281 ], [ 0, %bb.ck ]
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i327, i64 %i.ix) #42
          to label %.noexc328 unwind label %bb.cf

.noexc328:                                        ; preds = %bb.cl
  unreachable

_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i282: ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i281
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1447
  store ptr %i.iz, ptr %i.d, align 8, !noalias !1447
  %i.jb = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store i64 %i.iv, ptr %i.jb, align 8, !noalias !1447
  %i.jc = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1448)
  store i64 0, ptr %i.iz, align 8, !alias.scope !1449, !noalias !1450
  %i.jd = getelementptr inbounds nuw i8, ptr %i.iz, i64 8
  store i64 %.sroa.514.0.copyload.i256, ptr %i.jd, align 8, !alias.scope !1451, !noalias !1452
  store i64 2, ptr %i.jc, align 8, !alias.scope !1448, !noalias !1447
  %i.je = invoke fastcc { i64, i64 } @_RNvNtCs5yxAJGbRKSL_4ring4limb26limbs_from_be_bytes_padded(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bs, i64 noundef %i.bw, i64 noundef %.sroa.514.0.copyload.i256)
          to label %.noexc5.i.i283 unwind label %bb.db, !noalias !1453

.noexc5.i.i283:                                   ; preds = %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i282
  %i.jf = extractvalue { i64, i64 } %i.je, 0
  %i.jg = trunc nuw i64 %i.jf to i1
  br i1 %i.jg, label %_RNCINvMs1_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montNtNtBa_5value14ValidatedInput18write_into_mont_RRNtNtNtBg_3rsa7keypair1QEs_0Bg_.exit.i.i.thread.i.i, label %bb.cm

bb.cm:                                            ; preds = %.noexc5.i.i283
  %i.jh = load i64, ptr %i.jc, align 8, !alias.scope !1454, !noalias !1447, !noundef !15 ; 8 uses
  %.val3.i.i.i.i.i.i284 = load i64, ptr %i.jb, align 8, !alias.scope !1454, !noalias !1447, !noundef !15 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i285 = icmp ugt i64 %i.jh, %.val3.i.i.i.i.i.i284
  br i1 %.not.i.i.i.i.i.i.i.i.i285, label %.invoke45.i.i288, label %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE10filled_mutB9_.exit.i.i.i.i.i286, !prof !16

.invoke45.i.i288:                                 ; preds = %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i306, %bb.cn, %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE10filled_mutB9_.exit.i.i.i.i.i286, %bb.cm
  %i.ji = phi ptr [ @46, %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE10filled_mutB9_.exit.i.i.i.i.i286 ], [ @166, %bb.cm ], [ @47, %bb.cn ], [ @64, %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i306 ]
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ji) #41
          to label %.cont46.i.i289 unwind label %bb.db, !noalias !1453

.cont46.i.i289:                                   ; preds = %.invoke45.i.i288
  unreachable

_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE10filled_mutB9_.exit.i.i.i.i.i286: ; preds = %bb.cm
  %.val.i.i.i.i.i.i287 = load ptr, ptr %i.d, align 8, !alias.scope !1454, !noalias !1447, !nonnull !15, !align !17, !noundef !15 ; 11 uses
  switch i64 %i.jh, label %bb.co [
    i64 0, label %.invoke45.i.i288
    i64 1, label %bb.cn
  ], !prof !18

bb.cn:                                            ; preds = %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE10filled_mutB9_.exit.i.i.i.i.i286
  br label %.invoke45.i.i288

bb.co:                                            ; preds = %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE10filled_mutB9_.exit.i.i.i.i.i286
  %i.jj = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i287, i64 16 ; 13 uses
  %i.jk = add i64 %i.jh, -2                       ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1455)
  call void @llvm.experimental.noalias.scope.decl(metadata !1456)
  %.not.i.i.i.i.i.i290 = icmp eq i64 %i.jk, 0
  br i1 %.not.i.i.i.i.i.i290, label %_RNCINvMs1_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montNtNtBa_5value14ValidatedInput18write_into_mont_RRNtNtNtBg_3rsa7keypair1QEs_0Bg_.exit.i.i.thread.i.i, label %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE18split_at_spare_mutB9_.exit.i.i.i.i.i.i291, !prof !16

_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE18split_at_spare_mutB9_.exit.i.i.i.i.i.i291: ; preds = %bb.co
  %i.jl = load i64, ptr %i.jj, align 8, !alias.scope !1456, !noalias !1457, !noundef !15 ; 2 uses
  %i.jm = trunc i64 %i.jl to i32                  ; 6 uses
  %.neg.i.i.i.i.i.i292 = mul i32 %i.jm, %i.jm
  %.neg32.i.i.i.i.i.i293 = add i32 %.neg.i.i.i.i.i.i292, -2
  %i.jn = mul i32 %.neg32.i.i.i.i.i.i293, %i.jm   ; 2 uses
  %i.jo = mul i32 %i.jn, %i.jm
  %i.jp = add i32 %i.jo, 2
  %i.jq = mul i32 %i.jp, %i.jn                    ; 2 uses
  %i.jr = mul i32 %i.jq, %i.jm
  %i.js = add i32 %i.jr, 2
  %i.jt = mul i32 %i.js, %i.jq                    ; 2 uses
  %i.ju = mul i32 %i.jt, %i.jm
  %i.jv = add i32 %i.ju, 2
  %i.jw = mul i32 %i.jv, %i.jt
  %i.jx = zext i32 %i.jw to i64                   ; 2 uses
  %i.jy = mul i64 %i.jl, %i.jx
  %i.jz = add i64 %i.jy, 2
  %i.ka = mul i64 %i.jz, %i.jx
  store i64 %i.ka, ptr %.val.i.i.i.i.i.i287, align 8, !alias.scope !1455, !noalias !1458
  %i.kb = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i.i.i.i287, i64 %i.jh ; 14 uses
  %i.kc = sub nuw i64 %.val3.i.i.i.i.i.i284, %i.jh
  %.not.i.i.i.i43.i.i.i.i.i295 = icmp ugt i64 %.sroa.514.0.copyload.i256, %i.kc
  br i1 %.not.i.i.i.i43.i.i.i.i.i295, label %_RNCINvMs1_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montNtNtBa_5value14ValidatedInput18write_into_mont_RRNtNtNtBg_3rsa7keypair1QEs_0Bg_.exit.i.i.thread.i.i, label %bb.cp, !prof !16

bb.cp:                                            ; preds = %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE18split_at_spare_mutB9_.exit.i.i.i.i.i.i291
  call void @llvm.experimental.noalias.scope.decl(metadata !1459)
  call void @llvm.experimental.noalias.scope.decl(metadata !1460)
  %i.kd = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i287, i64 8
  %i.ke = load i64, ptr %i.kd, align 8, !alias.scope !1461, !noalias !1462, !noundef !15
  %.not.i.i14.i.i.i.i.i.i297 = icmp eq i64 %i.ke, %i.jk
  br i1 %.not.i.i14.i.i.i.i.i.i297, label %bb.cq, label %bb.cs, !prof !19

bb.cq:                                            ; preds = %bb.cp
  %i.kf = icmp samesign ult i64 %i.jh, 6
  br i1 %i.kf, label %bb.cs, label %bb.cr, !prof !16

bb.cr:                                            ; preds = %bb.cq
  %i.kg = icmp samesign ugt i64 %i.jh, 130
  br i1 %i.kg, label %bb.cs, label %bb.ct, !prof !16

bb.cs:                                            ; preds = %bb.cr, %bb.cq, %bb.cp
  %.sroa.4.0.ph.i.i.i.i.i.i.i298 = phi i64 [ 0, %bb.cp ], [ 1, %bb.cq ], [ 2, %bb.cr ]
  invoke fastcc void @_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint34unwrap_impossible_limb_slice_errorINtNtNtNtB2_7modulus4mont4base4MontNtNtNtB6_3rsa7keypair1QEEB6_(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i298) #39
          to label %.noexc9.i.i301 unwind label %bb.db

.noexc9.i.i301:                                   ; preds = %bb.cs
  unreachable

bb.ct:                                            ; preds = %bb.cr
  call void @llvm.experimental.noalias.scope.decl(metadata !1463)
  call void @llvm.experimental.noalias.scope.decl(metadata !1464)
  %.not.i.i.i.i.i.i.i.i.i.i302 = icmp eq i64 %i.jk, %.sroa.514.0.copyload.i256
  br i1 %.not.i.i.i.i.i.i.i.i.i.i302, label %bb.cu, label %_RNCINvMs1_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montNtNtBa_5value14ValidatedInput18write_into_mont_RRNtNtNtBg_3rsa7keypair1QEs_0Bg_.exit.i.i.thread.i.i, !prof !19

bb.cu:                                            ; preds = %bb.ct
  %.idx.i.i.i.i.i.i.i.i.i.i305 = shl i64 %.sroa.514.0.copyload.i256, 3 ; 3 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %i.jj, i64 %.idx.i.i.i.i.i.i.i.i.i.i305
  %i.ki = add i64 %.idx.i.i.i.i.i.i.i.i.i.i305, -8
  %i.kj = lshr exact i64 %i.ki, 3
  %i.kk = call i64 @llvm.umin.i64(i64 %.sroa.514.0.copyload.i256, i64 %i.kj) ; 2 uses
  %min.iters.check520 = icmp samesign ult i64 %i.kk, 4
  br i1 %min.iters.check520, label %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i306.preheader, label %vector.ph521

vector.ph521:                                     ; preds = %bb.cu
  %i.kl = add nuw nsw i64 %i.kk, 1                ; 2 uses
  %i.km = and i64 %i.kl, 3                        ; 2 uses
  %i.kn = icmp eq i64 %i.km, 0
  %i.ko = select i1 %i.kn, i64 4, i64 %i.km
  %n.vec522 = sub nsw i64 %i.kl, %i.ko            ; 3 uses
  %i.kp = shl i64 %n.vec522, 3
  %i.kq = getelementptr i8, ptr %i.jj, i64 %i.kp
  br label %vector.body523

vector.body523:                                   ; preds = %vector.body523, %vector.ph521
  %index524 = phi i64 [ 0, %vector.ph521 ], [ %index.next528, %vector.body523 ] ; 3 uses
  %i.kr = shl i64 %index524, 3
  %next.gep525 = getelementptr i8, ptr %i.jj, i64 %i.kr ; 2 uses
  %i.ks = getelementptr i8, ptr %next.gep525, i64 16
  %wide.load526 = load <2 x i64>, ptr %next.gep525, align 8, !alias.scope !1465, !noalias !1466
  %wide.load527 = load <2 x i64>, ptr %i.ks, align 8, !alias.scope !1465, !noalias !1466
  %i.kt = xor <2 x i64> %wide.load526, splat (i64 -1)
  %i.ku = xor <2 x i64> %wide.load527, splat (i64 -1)
  %i.kv = getelementptr inbounds nuw [8 x i8], ptr %i.kb, i64 %index524 ; 2 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 16
  store <2 x i64> %i.kt, ptr %i.kv, align 8, !alias.scope !1467, !noalias !1468
  store <2 x i64> %i.ku, ptr %i.kw, align 8, !alias.scope !1467, !noalias !1468
  %index.next528 = add nuw i64 %index524, 4       ; 2 uses
  %i.kx = icmp eq i64 %index.next528, %n.vec522
  br i1 %i.kx, label %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i306.preheader, label %vector.body523, !llvm.loop !1348

_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i306.preheader: ; preds = %vector.body523, %bb.cu
  %.sroa.9.0.i.i.i.i.i.i.i.i.i.i307.ph = phi i64 [ 0, %bb.cu ], [ %n.vec522, %vector.body523 ]
  %.sroa.0.02.i.i.i.i.i.i.i.i.i.i.i308.ph = phi ptr [ %i.jj, %bb.cu ], [ %i.kq, %vector.body523 ]
  br label %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i306

_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i306: ; preds = %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i306.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i309
  %.sroa.9.0.i.i.i.i.i.i.i.i.i.i307 = phi i64 [ %i.lc, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i309 ], [ %.sroa.9.0.i.i.i.i.i.i.i.i.i.i307.ph, %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i306.preheader ] ; 4 uses
  %.sroa.0.02.i.i.i.i.i.i.i.i.i.i.i308 = phi ptr [ %i.la, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i309 ], [ %.sroa.0.02.i.i.i.i.i.i.i.i.i.i.i308.ph, %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i306.preheader ] ; 2 uses
  %i.ky = icmp eq i64 %.sroa.514.0.copyload.i256, %.sroa.9.0.i.i.i.i.i.i.i.i.i.i307
  br i1 %i.ky, label %.invoke45.i.i288, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i309

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i309:            ; preds = %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i306
  %.sroa.0.0.val.i.i.i.i.i.i.i.i.i.i.i310 = load i64, ptr %.sroa.0.02.i.i.i.i.i.i.i.i.i.i.i308, align 8, !alias.scope !1465, !noalias !1466, !noundef !15
  %i.kz = xor i64 %.sroa.0.0.val.i.i.i.i.i.i.i.i.i.i.i310, -1
  %i.la = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i.i.i.i.i.i.i.i.i.i.i308, i64 8 ; 2 uses
  %i.lb = getelementptr inbounds nuw [8 x i8], ptr %i.kb, i64 %.sroa.9.0.i.i.i.i.i.i.i.i.i.i307
  store i64 %i.kz, ptr %i.lb, align 8, !alias.scope !1467, !noalias !1468
  %i.lc = add nuw nsw i64 %.sroa.9.0.i.i.i.i.i.i.i.i.i.i307, 1 ; 3 uses
  %i.ld = icmp eq ptr %i.la, %i.kh
  br i1 %i.ld, label %bb.cv, label %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i306, !llvm.loop !1349

bb.cv:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i309
  %i.le = load i64, ptr %i.kb, align 8, !alias.scope !1469, !noalias !1470, !noundef !15
  %i.lf = or i64 %i.le, 1
  store i64 %i.lf, ptr %i.kb, align 8, !alias.scope !1469, !noalias !1470
  %i.lg = shl nuw nsw i64 %.sroa.514.0.copyload.i256, 6 ; 3 uses
  %i.lh = sub nuw nsw i64 %i.lg, %.sroa.615.0.copyload.i ; 2 uses
  %i.li = icmp ult i64 %i.lg, %.sroa.615.0.copyload.i
  br i1 %i.li, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.lj = icmp eq i64 %i.lg, %.sroa.615.0.copyload.i
  br i1 %i.lj, label %.preheader1.i.i.i.i.i.i.i.i318, label %bb.cy

bb.cx:                                            ; preds = %bb.cv
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @164) #41
          to label %.noexc11.i.i326 unwind label %bb.db, !noalias !1453

.noexc11.i.i326:                                  ; preds = %bb.cx
  unreachable

bb.cy:                                            ; preds = %bb.cw
  %i.lk = icmp samesign ult i64 %i.lh, 64
  br i1 %i.lk, label %.lr.ph.i.i.i.i.i.i.i.i312, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_shr_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @165) #41
          to label %.noexc12.i.i311 unwind label %bb.db, !noalias !1453

.noexc12.i.i311:                                  ; preds = %bb.cz
  unreachable

.lr.ph.i.i.i.i.i.i.i.i312:                        ; preds = %bb.cy
  %.not.i.not.i.not.i.i.i.i.i.i.i.i.i313 = icmp eq i64 %i.lc, %.sroa.514.0.copyload.i256
  br i1 %.not.i.not.i.not.i.i.i.i.i.i.i.i.i313, label %_RNvMsd_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1QNtNtB9_10montgomery1RE6doubleBb_.exit.i.i.i.i.i.i.i.i, label %_RNvNtCs5yxAJGbRKSL_4ring4limb16limbs_double_mod.exit.thread.i.i.i.i.i.i.i.invoke.i.i314, !prof !19

_RNvMsd_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1QNtNtB9_10montgomery1RE6doubleBb_.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i312, %_RNvMsd_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1QNtNtB9_10montgomery1RE6doubleBb_.exit.i.i.i.i.i.i.i.i
  %.sroa.08.05.i.i.i.i.i.i.i.i316 = phi i64 [ %i.ll, %_RNvMsd_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1QNtNtB9_10montgomery1RE6doubleBb_.exit.i.i.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i312 ]
  %i.ll = add nuw nsw i64 %.sroa.08.05.i.i.i.i.i.i.i.i316, 1 ; 2 uses
  call void @ring_core_0_17_16000__LIMBS_shl_mod(ptr noundef nonnull align 8 %i.kb, ptr noundef nonnull align 8 %i.kb, ptr noundef nonnull readonly align 8 %i.jj, i64 noundef range(i64 0, 1152921504606846976) %.sroa.514.0.copyload.i256) #36, !noalias !1471
  %exitcond.not.i.i.i.i.i.i.i.i317 = icmp eq i64 %i.ll, %i.lh
  br i1 %exitcond.not.i.i.i.i.i.i.i.i317, label %.preheader1.i.i.i.i.i.i.i.i318, label %_RNvMsd_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1QNtNtB9_10montgomery1RE6doubleBb_.exit.i.i.i.i.i.i.i.i

_RNvNtCs5yxAJGbRKSL_4ring4limb16limbs_double_mod.exit.thread.i.i.i.i.i.i.i.invoke.i.i314: ; preds = %.preheader1.i.i.i.i.i.i.i.i318, %.lr.ph.i.i.i.i.i.i.i.i312
  invoke fastcc void @_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint36unwrap_impossible_len_mismatch_erroruEB6_() #39
          to label %_RNvNtCs5yxAJGbRKSL_4ring4limb16limbs_double_mod.exit.thread.i.i.i.i.i.i.i.cont.i.i315 unwind label %bb.db

_RNvNtCs5yxAJGbRKSL_4ring4limb16limbs_double_mod.exit.thread.i.i.i.i.i.i.i.cont.i.i315: ; preds = %_RNvNtCs5yxAJGbRKSL_4ring4limb16limbs_double_mod.exit.thread.i.i.i.i.i.i.i.invoke.i.i314
  unreachable

.preheader1.i.i.i.i.i.i.i.i318:                   ; preds = %_RNvMsd_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1QNtNtB9_10montgomery1RE6doubleBb_.exit.i.i.i.i.i.i.i.i, %bb.cw
  %.not.i.not.i.not.i.i9.i.i.i.i.i.i.i319 = icmp eq i64 %i.lc, %.sroa.514.0.copyload.i256
  br i1 %.not.i.not.i.not.i.i9.i.i.i.i.i.i.i319, label %_RNvMsd_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1QNtNtB9_10montgomery1RE6doubleBb_.exit.i11.i.i.i.i.i.i.i, label %_RNvNtCs5yxAJGbRKSL_4ring4limb16limbs_double_mod.exit.thread.i.i.i.i.i.i.i.invoke.i.i314, !prof !19

.preheader.i.i.i.i.i.i.i.i322:                    ; preds = %_RNvMsd_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1QNtNtB9_10montgomery1RE6doubleBb_.exit.i11.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1472
  call fastcc void @_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic10montgomery17limbs_square_montQSyEB6_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 %i.kb, i64 noundef %.sroa.514.0.copyload.i256, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.jj, i64 noundef %.sroa.514.0.copyload.i256, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val.i.i.i.i.i.i287), !noalias !1473
  %i.lm = load i64, ptr %i.c, align 8, !range !22, !noalias !1472, !noundef !15
  %i.ln = trunc nuw i64 %i.lm to i1
  br i1 %i.ln, label %bb.da, label %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1QNtNtB9_10montgomery1RE6squareBb_.exit.i.i.i.i.i.i.i.i, !prof !16

_RNvMsd_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1QNtNtB9_10montgomery1RE6doubleBb_.exit.i11.i.i.i.i.i.i.i: ; preds = %.preheader1.i.i.i.i.i.i.i.i318, %_RNvMsd_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1QNtNtB9_10montgomery1RE6doubleBb_.exit.i11.i.i.i.i.i.i.i
  %.sroa.05.02.i.i.i.i.i.i.i.i320 = phi i64 [ %i.lo, %_RNvMsd_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1QNtNtB9_10montgomery1RE6doubleBb_.exit.i11.i.i.i.i.i.i.i ], [ 0, %.preheader1.i.i.i.i.i.i.i.i318 ] ; 2 uses
  %i.lo = add nuw nsw i64 %.sroa.05.02.i.i.i.i.i.i.i.i320, 1
  call void @ring_core_0_17_16000__LIMBS_shl_mod(ptr noundef nonnull align 8 %i.kb, ptr noundef nonnull align 8 %i.kb, ptr noundef nonnull readonly align 8 %i.jj, i64 noundef range(i64 0, 1152921504606846976) %.sroa.514.0.copyload.i256) #36, !noalias !1473
  %exitcond.not.i12.i.i.i.i.i.i.i321 = icmp eq i64 %.sroa.05.02.i.i.i.i.i.i.i.i320, %.sroa.9.0.i.i.i.i.i.i.i.i.i.i307
  br i1 %exitcond.not.i12.i.i.i.i.i.i.i321, label %.preheader.i.i.i.i.i.i.i.i322, label %_RNvMsd_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1QNtNtB9_10montgomery1RE6doubleBb_.exit.i11.i.i.i.i.i.i.i

bb.da:                                            ; preds = %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1QNtNtB9_10montgomery1RE6squareBb_.exit.4.i.i.i.i.i.i.i.i, %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1QNtNtB9_10montgomery1RE6squareBb_.exit.3.i.i.i.i.i.i.i.i, %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1QNtNtB9_10montgomery1RE6squareBb_.exit.2.i.i.i.i.i.i.i.i, %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1QNtNtB9_10montgomery1RE6squareBb_.exit.1.i.i.i.i.i.i.i.i, %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1QNtNtB9_10montgomery1RE6squareBb_.exit.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i322
  %i.lp = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.lq = load i64, ptr %i.lp, align 8, !range !23, !noalias !1472, !noundef !15
  invoke fastcc void @_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint34unwrap_impossible_limb_slice_errorQSyEB6_(i64 noundef %i.lq) #39
          to label %.noexc15.i.i325 unwind label %bb.db

.noexc15.i.i325:                                  ; preds = %bb.da
  unreachable

_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1QNtNtB9_10montgomery1RE6squareBb_.exit.i.i.i.i.i.i.i.i: ; preds = %.preheader.i.i.i.i.i.i.i.i322
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1472
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1472
  call fastcc void @_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic10montgomery17limbs_square_montQSyEB6_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 %i.kb, i64 noundef %.sroa.514.0.copyload.i256, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.jj, i64 noundef %.sroa.514.0.copyload.i256, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val.i.i.i.i.i.i287), !noalias !1473
  %i.lr = load i64, ptr %i.c, align 8, !range !22, !noalias !1472, !noundef !15
  %i.ls = trunc nuw i64 %i.lr to i1
  br i1 %i.ls, label %bb.da, label %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1QNtNtB9_10montgomery1RE6squareBb_.exit.1.i.i.i.i.i.i.i.i, !prof !16

_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1QNtNtB9_10montgomery1RE6squareBb_.exit.1.i.i.i.i.i.i.i.i: ; preds = %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1QNtNtB9_10montgomery1RE6squareBb_.exit.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1472
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1472
  call fastcc void @_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic10montgomery17limbs_square_montQSyEB6_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 %i.kb, i64 noundef %.sroa.514.0.copyload.i256, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.jj, i64 noundef %.sroa.514.0.copyload.i256, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val.i.i.i.i.i.i287), !noalias !1473
  %i.lt = load i64, ptr %i.c, align 8, !range !22, !noalias !1472, !noundef !15
  %i.lu = trunc nuw i64 %i.lt to i1
  br i1 %i.lu, label %bb.da, label %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1QNtNtB9_10montgomery1RE6squareBb_.exit.2.i.i.i.i.i.i.i.i, !prof !16

_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1QNtNtB9_10montgomery1RE6squareBb_.exit.2.i.i.i.i.i.i.i.i: ; preds = %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1QNtNtB9_10montgomery1RE6squareBb_.exit.1.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1472
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1472
  call fastcc void @_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic10montgomery17limbs_square_montQSyEB6_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 %i.kb, i64 noundef %.sroa.514.0.copyload.i256, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.jj, i64 noundef %.sroa.514.0.copyload.i256, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val.i.i.i.i.i.i287), !noalias !1473
  %i.lv = load i64, ptr %i.c, align 8, !range !22, !noalias !1472, !noundef !15
  %i.lw = trunc nuw i64 %i.lv to i1
  br i1 %i.lw, label %bb.da, label %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1QNtNtB9_10montgomery1RE6squareBb_.exit.3.i.i.i.i.i.i.i.i, !prof !16

_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1QNtNtB9_10montgomery1RE6squareBb_.exit.3.i.i.i.i.i.i.i.i: ; preds = %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1QNtNtB9_10montgomery1RE6squareBb_.exit.2.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1472
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1472
  call fastcc void @_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic10montgomery17limbs_square_montQSyEB6_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 %i.kb, i64 noundef %.sroa.514.0.copyload.i256, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.jj, i64 noundef %.sroa.514.0.copyload.i256, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val.i.i.i.i.i.i287), !noalias !1473
  %i.lx = load i64, ptr %i.c, align 8, !range !22, !noalias !1472, !noundef !15
  %i.ly = trunc nuw i64 %i.lx to i1
  br i1 %i.ly, label %bb.da, label %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1QNtNtB9_10montgomery1RE6squareBb_.exit.4.i.i.i.i.i.i.i.i, !prof !16

_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1QNtNtB9_10montgomery1RE6squareBb_.exit.4.i.i.i.i.i.i.i.i: ; preds = %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1QNtNtB9_10montgomery1RE6squareBb_.exit.3.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1472
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1472
  call fastcc void @_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic10montgomery17limbs_square_montQSyEB6_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 %i.kb, i64 noundef %.sroa.514.0.copyload.i256, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.jj, i64 noundef %.sroa.514.0.copyload.i256, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val.i.i.i.i.i.i287), !noalias !1473
  %i.lz = load i64, ptr %i.c, align 8, !range !22, !noalias !1472, !noundef !15
  %i.ma = trunc nuw i64 %i.lz to i1
  br i1 %i.ma, label %bb.da, label %_RNCINvMs1_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montNtNtBa_5value14ValidatedInput18write_into_mont_RRNtNtNtBg_3rsa7keypair1QEs_0Bg_.exit.i.i.i.i, !prof !16

_RNCINvMs1_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montNtNtBa_5value14ValidatedInput18write_into_mont_RRNtNtNtBg_3rsa7keypair1QEs_0Bg_.exit.i.i.thread.i.i: ; preds = %bb.ct, %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE18split_at_spare_mutB9_.exit.i.i.i.i.i.i291, %bb.co, %.noexc5.i.i283
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1447
  br label %.invoke.i.i303

_RNCINvMs1_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montNtNtBa_5value14ValidatedInput18write_into_mont_RRNtNtNtBg_3rsa7keypair1QEs_0Bg_.exit.i.i.i.i: ; preds = %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1QNtNtB9_10montgomery1RE6squareBb_.exit.4.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1472
  %i.mb = icmp ne ptr %.val.i.i.i.i.i.i287, %i.iz
  %i.mc = icmp ne i64 %.val3.i.i.i.i.i.i284, %i.iv
  %.not27.i.i323 = or i1 %i.mc, %i.mb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1447
  br i1 %.not27.i.i323, label %.invoke.i.i303, label %10, !prof !35

.invoke.i.i303:                                   ; preds = %10, %_RNCINvMs1_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montNtNtBa_5value14ValidatedInput18write_into_mont_RRNtNtNtBg_3rsa7keypair1QEs_0Bg_.exit.i.i.i.i, %_RNCINvMs1_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montNtNtBa_5value14ValidatedInput18write_into_mont_RRNtNtNtBg_3rsa7keypair1QEs_0Bg_.exit.i.i.thread.i.i
  %9 = phi ptr [ @11, %_RNCINvMs1_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montNtNtBa_5value14ValidatedInput18write_into_mont_RRNtNtNtBg_3rsa7keypair1QEs_0Bg_.exit.i.i.i.i ], [ @11, %_RNCINvMs1_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montNtNtBa_5value14ValidatedInput18write_into_mont_RRNtNtNtBg_3rsa7keypair1QEs_0Bg_.exit.i.i.thread.i.i ], [ @10, %10 ]
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %9) #42
          to label %.cont.i.i304 unwind label %bb.db, !noalias !1453

.cont.i.i304:                                     ; preds = %.invoke.i.i303
  unreachable

10:                                               ; preds = %_RNCINvMs1_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montNtNtBa_5value14ValidatedInput18write_into_mont_RRNtNtNtBg_3rsa7keypair1QEs_0Bg_.exit.i.i.i.i
  %11 = add nuw i64 %i.jh, %.sroa.514.0.copyload.i256
  %.not.i.i324 = icmp eq i64 %11, %i.iv
  br i1 %.not.i.i324, label %_RNvMs2_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montINtB5_8IntoMontNtNtNtBd_3rsa7keypair1QNtNtBb_10montgomery2RRE5valueBd_.exit.i, label %.invoke.i.i303, !prof !19

bb.db:                                            ; preds = %_RNvNtCs5yxAJGbRKSL_4ring4limb16limbs_double_mod.exit.thread.i.i.i.i.i.i.i.invoke.i.i314, %bb.da, %bb.cs, %.invoke.i.i303, %bb.cz, %bb.cx, %.invoke45.i.i288, %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i282
  %i.md = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.iz, i64 noundef %i.ix, i64 noundef 8) #36, !noalias !1453
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs5yxAJGbRKSL_4ring3rsa7keypair12PrivatePrimeNtBE_1PEEBI_.exit358

bb.dc:                                            ; preds = %bb.cj, %bb.ci
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #41
          to label %.noexc331 unwind label %bb.cf

.noexc331:                                        ; preds = %bb.dc
  unreachable

bb.dd:                                            ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i, %bb.do
  br i1 %.sroa.0150.2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs5yxAJGbRKSL_4ring3rsa7keypair12PrivatePrimeNtBE_1QEEBI_.exit356, label %bb.ce

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs5yxAJGbRKSL_4ring3rsa7keypair12PrivatePrimeNtBE_1QEEBI_.exit356.thread: ; preds = %bb.dn, %bb.dl, %bb.dj, %bb.dh, %bb.dg
  %i.me = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.iz, i64 noundef %i.ix, i64 noundef 8) #36
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs5yxAJGbRKSL_4ring3rsa7keypair12PrivatePrimeNtBE_1PEEBI_.exit358

_RNvMs2_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montINtB5_8IntoMontNtNtNtBd_3rsa7keypair1QNtNtBb_10montgomery2RRE5valueBd_.exit.i: ; preds = %10
  call void @llvm.experimental.noalias.scope.decl(metadata !1474)
  call void @llvm.experimental.noalias.scope.decl(metadata !1475)
  %i.mf = icmp samesign ult i64 %i.be, %.sroa.514.0.copyload.i256
  br i1 %i.mf, label %select.unfold455, label %bb.de, !prof !16

bb.de:                                            ; preds = %_RNvMs2_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montINtB5_8IntoMontNtNtNtBd_3rsa7keypair1QNtNtBb_10montgomery2RRE5valueBd_.exit.i
  %i.mg = getelementptr inbounds nuw i8, ptr %i.iz, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(1024) %i.w, ptr nonnull readonly align 8 %i.mg, i64 %.idx.i.i.i.i.i.i.i.i.i.i305, i1 false), !alias.scope !1476, !noalias !1477
  %i.mh = icmp eq i64 %i.be, %.sroa.514.0.copyload.i256
  br i1 %i.mh, label %_RNvNtCs5yxAJGbRKSL_4ring4limb37verify_limbs_less_than_limbs_leak_bit.exit.i.i, label %.lr.ph.i.i.preheader.i.i

.lr.ph.i.i.preheader.i.i:                         ; preds = %bb.de
  %i.mi = sub nuw nsw i64 %i.be, %.sroa.514.0.copyload.i256
  %.idx.i.i.i = shl nuw nsw i64 %i.mi, 3
  %i.mj = getelementptr [8 x i8], ptr %i.w, i64 %.sroa.514.0.copyload.i256
  call void @llvm.memset.p0.i64(ptr align 8 %i.mj, i8 0, i64 %.idx.i.i.i, i1 false), !alias.scope !1478, !noalias !1479
  br label %_RNvNtCs5yxAJGbRKSL_4ring4limb37verify_limbs_less_than_limbs_leak_bit.exit.i.i

_RNvNtCs5yxAJGbRKSL_4ring4limb37verify_limbs_less_than_limbs_leak_bit.exit.i.i: ; preds = %.lr.ph.i.i.preheader.i.i, %bb.de
  %i.mk = getelementptr inbounds nuw i8, ptr %i.cg, i64 16 ; 2 uses
  %i.ml = call noundef i64 @ring_core_0_17_16000__LIMBS_less_than(ptr noundef nonnull readonly align 8 dereferenceable(1024) %i.w, ptr noundef nonnull readonly align 8 %i.mk, i64 noundef range(i64 0, 1152921504606846976) %i.be) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1480
  store i64 %i.ml, ptr %i.b, align 8, !noalias !1480
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %i.b) #36, !srcloc !37
  %i.mm = load i64, ptr %i.b, align 8, !noalias !1480, !noundef !15
  %.not.i.i.i = icmp eq i64 %i.mm, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1480
  br i1 %.not.i.i.i, label %select.unfold455, label %_RNvMs2_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montINtB5_8IntoMontNtNtNtBd_3rsa7keypair1PNtNtBb_10montgomery2RRE5valueBd_.exit.i

_RNvMs2_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montINtB5_8IntoMontNtNtNtBd_3rsa7keypair1PNtNtBb_10montgomery2RRE5valueBd_.exit.i: ; preds = %_RNvNtCs5yxAJGbRKSL_4ring4limb37verify_limbs_less_than_limbs_leak_bit.exit.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1481)
  call void @llvm.experimental.noalias.scope.decl(metadata !1482)
  %i.mn = icmp samesign ult i64 %i.be, %.sroa.514.0.copyload.i
  br i1 %i.mn, label %select.unfold455, label %bb.df, !prof !16

bb.df:                                            ; preds = %_RNvMs2_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montINtB5_8IntoMontNtNtNtBd_3rsa7keypair1PNtNtBb_10montgomery2RRE5valueBd_.exit.i
  %i.mo = getelementptr inbounds nuw i8, ptr %i.fl, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(1024) %i.v, ptr nonnull readonly align 8 %i.mo, i64 %.idx.i.i.i.i.i.i.i.i.i.i, i1 false), !alias.scope !1483, !noalias !1484
  %i.mp = icmp eq i64 %i.be, %.sroa.514.0.copyload.i
  br i1 %i.mp, label %_RNvNtCs5yxAJGbRKSL_4ring4limb37verify_limbs_less_than_limbs_leak_bit.exit.i.i340, label %.lr.ph.i.i.preheader.i.i338

.lr.ph.i.i.preheader.i.i338:                      ; preds = %bb.df
  %i.mq = sub nuw nsw i64 %i.be, %.sroa.514.0.copyload.i
  %.idx.i.i.i339 = shl nuw nsw i64 %i.mq, 3
  %i.mr = getelementptr [8 x i8], ptr %i.v, i64 %.sroa.514.0.copyload.i
  call void @llvm.memset.p0.i64(ptr align 8 %i.mr, i8 0, i64 %.idx.i.i.i339, i1 false), !alias.scope !1485, !noalias !1486
  br label %_RNvNtCs5yxAJGbRKSL_4ring4limb37verify_limbs_less_than_limbs_leak_bit.exit.i.i340

_RNvNtCs5yxAJGbRKSL_4ring4limb37verify_limbs_less_than_limbs_leak_bit.exit.i.i340: ; preds = %.lr.ph.i.i.preheader.i.i338, %bb.df
  %i.ms = call noundef i64 @ring_core_0_17_16000__LIMBS_less_than(ptr noundef nonnull readonly align 8 dereferenceable(1024) %i.v, ptr noundef nonnull readonly align 8 %i.mk, i64 noundef range(i64 0, 1152921504606846976) %i.be) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1487
  store i64 %i.ms, ptr %i.a, align 8, !noalias !1487
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %i.a) #36, !srcloc !37
  %i.mt = load i64, ptr %i.a, align 8, !noalias !1487, !noundef !15
  %.not.i.i.i341 = icmp eq i64 %i.mt, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1487
  br i1 %.not.i.i.i341, label %select.unfold455, label %bb.dg

bb.dg:                                            ; preds = %_RNvNtCs5yxAJGbRKSL_4ring4limb37verify_limbs_less_than_limbs_leak_bit.exit.i.i340
  %i.mu = invoke fastcc { ptr, i64 } @_RINvMs7_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB6_3MutNtNtBc_3rsa1NE11encode_montNtNtBa_10montgomery2RREBc_(ptr noalias nofree noundef nonnull align 8 %i.v, i64 noundef %i.be, ptr nonnull %i.cg, i64 %i.cc)
          to label %bb.dh unwind label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs5yxAJGbRKSL_4ring3rsa7keypair12PrivatePrimeNtBE_1QEEBI_.exit356.thread ; 2 uses

bb.dh:                                            ; preds = %bb.dg
  %i.mv = extractvalue { ptr, i64 } %i.mu, 1
  %i.mw = extractvalue { ptr, i64 } %i.mu, 0
  %i.mx = invoke fastcc { ptr, i64 } @_RINvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB6_3MutNtNtBc_3rsa1NNtNtBa_10montgomery1RE3mulNtB1i_9UnencodedEBc_(ptr noalias nofree noundef nonnull align 8 %i.mw, i64 noundef %i.mv, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.w, i64 noundef %i.be, ptr nonnull %i.cg, i64 %i.fa)
          to label %bb.di unwind label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs5yxAJGbRKSL_4ring3rsa7keypair12PrivatePrimeNtBE_1QEEBI_.exit356.thread ; 2 uses

bb.di:                                            ; preds = %bb.dh
  %i.my = extractvalue { ptr, i64 } %i.mx, 0      ; 2 uses
  %i.mz = extractvalue { ptr, i64 } %i.mx, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.my) ]
  %i.na = call fastcc noundef zeroext i1 @_RNvMs3_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3RefNtNtBb_3rsa1NE7is_zeroBb_(ptr nonnull %i.my, i64 %i.mz)
  br i1 %i.na, label %bb.dj, label %select.unfold455

bb.dj:                                            ; preds = %bb.di
  %i.nb = invoke fastcc { ptr, i64 } @_RNvMs2_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NE20from_be_bytes_paddedBb_(ptr noalias nofree noundef align 8 dereferenceable(1024) %i.v, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ac, i64 noundef %i.ae, ptr nonnull %i.cg, i64 %i.fa)
          to label %bb.dk unwind label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs5yxAJGbRKSL_4ring3rsa7keypair12PrivatePrimeNtBE_1QEEBI_.exit356.thread

bb.dk:                                            ; preds = %bb.dj
  %i.nc = extractvalue { ptr, i64 } %i.nb, 0
  %i.nd = icmp eq ptr %i.nc, null
  br i1 %i.nd, label %select.unfold455, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.ne = invoke fastcc { ptr, i64 } @_RNvMNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigintINtNtB2_4elem5BoxedNtNtNtB6_3rsa7keypair1PE20from_be_bytes_paddedB6_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.aw, i64 noundef %i.ay, ptr nonnull %i.fl, i64 %i.ir)
          to label %bb.dm unwind label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs5yxAJGbRKSL_4ring3rsa7keypair12PrivatePrimeNtBE_1QEEBI_.exit356.thread ; 2 uses

bb.dm:                                            ; preds = %bb.dl
  %i.nf = extractvalue { ptr, i64 } %i.ne, 0      ; 2 uses
  %i.ng = icmp eq ptr %i.nf, null
  br i1 %i.ng, label %select.unfold455, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.nh = extractvalue { ptr, i64 } %i.ne, 1
  %i.ni = invoke fastcc { ptr, i64 } @_RINvMs6_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB6_5BoxedNtNtNtBc_3rsa7keypair1PE11encode_montNtNtBa_10montgomery2RREBc_(ptr noalias noundef nonnull align 8 %i.nf, i64 noundef %i.nh, ptr nonnull %i.fl, i64 %i.fh)
          to label %bb.dq unwind label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs5yxAJGbRKSL_4ring3rsa7keypair12PrivatePrimeNtBE_1QEEBI_.exit356.thread ; 2 uses

bb.do:                                            ; preds = %bb.dy, %bb.dp
  %.sroa.0150.2 = phi i1 [ true, %bb.dp ], [ false, %bb.dy ]
  %.sroa.0151.4 = phi i1 [ %.sroa.0151.5, %bb.dp ], [ false, %bb.dy ] ; 2 uses
  %.pn = phi { ptr, i32 } [ %i.nl, %bb.dp ], [ %i.od, %bb.dy ] ; 4 uses
  %i.nj = icmp eq i64 %i.nn, 0
  br i1 %i.nj, label %bb.dd, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i: ; preds = %bb.do
  %i.nk = shl nuw nsw i64 %i.nn, 3
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.nm) ]
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.nm, i64 noundef %i.nk, i64 noundef 8) #36
  br label %bb.dd

bb.dp:                                            ; preds = %bb.ds, %bb.dr, %bb.dq, %bb.du
  %.sroa.0151.5 = phi i1 [ true, %bb.dr ], [ true, %bb.dq ], [ false, %bb.du ], [ true, %bb.ds ]
  %i.nl = landingpad { ptr, i32 }
          cleanup
  br label %bb.do

bb.dq:                                            ; preds = %bb.dn
  %i.nm = extractvalue { ptr, i64 } %i.ni, 0      ; 7 uses
  %i.nn = extractvalue { ptr, i64 } %i.ni, 1      ; 8 uses
  %i.no = invoke fastcc { ptr, i64 } @_RINvMsb_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB6_3RefNtNtBc_3rsa1NE12reduced_montNtNtB15_7keypair1PEBc_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.w, i64 noundef %i.be, ptr noalias nofree noundef align 8 dereferenceable(1024) %i.v, ptr nonnull %i.fl, i64 %i.ir, ptr noalias nofree noundef align 8 dereferenceable(1024) %i.u)
          to label %bb.dr unwind label %bb.dp     ; 2 uses

bb.dr:                                            ; preds = %bb.dq
  %i.np = extractvalue { ptr, i64 } %i.no, 0
  %i.nq = extractvalue { ptr, i64 } %i.no, 1
  %i.nr = invoke fastcc { ptr, i64 } @_RINvMs7_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB6_3MutNtNtNtBc_3rsa7keypair1PNtNtBa_10montgomery8RInverseE11encode_montNtB1s_2RREBc_(ptr noalias nofree noundef nonnull align 8 %i.np, i64 noundef %i.nq, ptr nonnull %i.fl, i64 %i.fh)
          to label %bb.ds unwind label %bb.dp     ; 2 uses

bb.ds:                                            ; preds = %bb.dr
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.nm) ]
  %i.ns = extractvalue { ptr, i64 } %i.nr, 1
  %i.nt = extractvalue { ptr, i64 } %i.nr, 0
  %i.nu = invoke fastcc noundef zeroext i1 @_RNvMse_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1PE24verify_inverse_consttimeBb_(ptr noalias nofree noundef nonnull align 8 %i.nt, i64 noundef %i.ns, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.nm, i64 noundef %i.nn, ptr nonnull %i.fl, i64 %i.ir)
          to label %bb.dt unwind label %bb.dp     ; 2 uses

bb.dt:                                            ; preds = %bb.ds
  br i1 %i.nu, label %bb.ee, label %bb.du

bb.du:                                            ; preds = %bb.dt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  invoke fastcc void @_RNvMs1_NtNtCs5yxAJGbRKSL_4ring3rsa7keypairINtB5_15PrivateCrtPrimeNtB5_1PE3newB9_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.s, ptr noalias noundef nonnull align 8 %i.fl, i64 noundef %i.fh, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ao, i64 noundef %i.aq)
          to label %bb.dv unwind label %bb.dp

bb.dv:                                            ; preds = %bb.du
  %i.nv = load ptr, ptr %i.s, align 8, !noundef !15 ; 2 uses
  %i.nw = icmp eq ptr %i.nv, null
  %i.nx = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.ny = load ptr, ptr %i.nx, align 8            ; 2 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.oa = load i64, ptr %i.nz, align 8            ; 2 uses
  br i1 %i.nw, label %bb.dw, label %bb.dx

bb.dw:                                            ; preds = %bb.dv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %i.ob = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ny, ptr %i.ob, align 8
  %i.oc = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.oa, ptr %i.oc, align 8
  store ptr null, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %bb.ed

bb.dx:                                            ; preds = %bb.dv
  %.sroa.6178.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %.sroa.6178.0.copyload = load i64, ptr %.sroa.6178.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  store ptr %i.nv, ptr %i.t, align 8
  %.sroa.4127.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %i.ny, ptr %.sroa.4127.0..sroa_idx, align 8
  %.sroa.5128.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store i64 %i.oa, ptr %.sroa.5128.0..sroa_idx, align 8
  %.sroa.6129.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  store i64 %.sroa.6178.0.copyload, ptr %.sroa.6129.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  invoke fastcc void @_RNvMs1_NtNtCs5yxAJGbRKSL_4ring3rsa7keypairINtB5_15PrivateCrtPrimeNtB5_1QE3newB9_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.r, ptr noalias noundef nonnull align 8 %i.iz, i64 noundef %i.iv, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.as, i64 noundef %i.au)
          to label %bb.dz unwind label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.od = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs5yxAJGbRKSL_4ring3rsa7keypair15PrivateCrtPrimeNtBE_1PEEBI_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.t) #43
  br label %bb.do

bb.dz:                                            ; preds = %bb.dx
  %i.oe = load ptr, ptr %i.r, align 8, !noundef !15 ; 2 uses
  %i.of = icmp eq ptr %i.oe, null
  %i.og = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.oh = load ptr, ptr %i.og, align 8            ; 2 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.oj = load i64, ptr %i.oi, align 8            ; 2 uses
  br i1 %i.of, label %bb.ea, label %bb.eb

bb.ea:                                            ; preds = %bb.dz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %i.ok = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.oh, ptr %i.ok, align 8
  %i.ol = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.oj, ptr %i.ol, align 8
end_hunk_1
