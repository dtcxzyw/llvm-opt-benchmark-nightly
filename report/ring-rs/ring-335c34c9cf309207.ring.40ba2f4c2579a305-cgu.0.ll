Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ring-rs/original/ring-335c34c9cf309207.ring.40ba2f4c2579a305-cgu.0?download=true
inline.NumInlined: 2615
inline.NumDeleted: 1171
loop-unroll.NumCompletelyUnrolled: 84
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 88
begin_hunk_0_@_RNvMs2_NtNtCs5yxAJGbRKSL_4ring3rsa7keypairNtB5_7KeyPair4sign:bb.a
_RNvXs_NtNtCs5yxAJGbRKSL_4ring8polyfill14array_flat_mapINtB4_12ArrayFlatMapINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters6copied6CopiedINtNtB1f_3rev3RevINtNtNtB1j_5slice4iter4IteryEEEhNvMs7_NtB1j_3numy11to_be_bytesKj8_ENtNtNtB1h_6traits8iterator8Iterator4nextB8_.exit.i.i.i.i: ; preds = %bb.ci, %bb.ch
  %i.pg = phi i64 [ %i.pf, %bb.ci ], [ %i.op, %bb.ch ]
  %i.ph = phi ptr [ %i.oz, %bb.ci ], [ %i.ab, %bb.ch ]
  %i.pi = phi i64 [ %i.pd, %bb.ci ], [ %i.or, %bb.ch ]
  %i.pj = phi i1 [ true, %bb.ci ], [ false, %bb.ch ]
  %i.pk = phi { i1, i8 } [ %i.pe, %bb.ci ], [ { i1 false, i8 undef }, %bb.ch ] ; 2 uses
  %i.pl = extractvalue { i1, i8 } %i.pk, 0
  br i1 %i.pl, label %bb.cj, label %_RNvMs5_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3RefNtNtBb_3rsa1NE13fill_be_bytesBb_.exit

bb.cj:                                            ; preds = %_RNvXs_NtNtCs5yxAJGbRKSL_4ring8polyfill14array_flat_mapINtB4_12ArrayFlatMapINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters6copied6CopiedINtNtB1f_3rev3RevINtNtNtB1j_5slice4iter4IteryEEEhNvMs7_NtB1j_3numy11to_be_bytesKj8_ENtNtNtB1h_6traits8iterator8Iterator4nextB8_.exit.i.i.i.i
  %i.pm = extractvalue { i1, i8 } %i.pk, 1
  store i8 %i.pm, ptr %i.os, align 1, !alias.scope !3596, !noalias !3597
  %i.pn = icmp eq ptr %i.ou, %i.oo
  br i1 %i.pn, label %_RNvMs5_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3RefNtNtBb_3rsa1NE13fill_be_bytesBb_.exit, label %.split.preheader.i.i.i.i.i.i

_RNvMs5_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3RefNtNtBb_3rsa1NE13fill_be_bytesBb_.exit: ; preds = %_RNvXs_NtNtCs5yxAJGbRKSL_4ring8polyfill14array_flat_mapINtB4_12ArrayFlatMapINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters6copied6CopiedINtNtB1f_3rev3RevINtNtNtB1j_5slice4iter4IteryEEEhNvMs7_NtB1j_3numy11to_be_bytesKj8_ENtNtNtB1h_6traits8iterator8Iterator4nextB8_.exit.i.i.i.i, %bb.cj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3589
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3586
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  br label %bb.ck

bb.ck:                                            ; preds = %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring3rsa4base14public_modulusINtB5_13PublicModulusINtNtNtNtNtBb_10arithmetic6bigint7modulus4mont8IntoMontNtB9_1NNtNtB1n_10montgomery2RREE8len_bits.exit.thread, %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring3rsa4base14public_modulusINtB5_13PublicModulusINtNtNtNtNtBb_10arithmetic6bigint7modulus4mont8IntoMontNtB9_1NNtNtB1n_10montgomery2RREE8len_bits.exit, %_RNvMNtNtCs5yxAJGbRKSL_4ring3rsa10public_keyNtB2_9PublicKey11modulus_len.exit, %bb.m, %_RNvMs2_NtNtCs5yxAJGbRKSL_4ring3rsa7keypairNtB5_7KeyPair20private_exponentiate.exit.thread, %_RNvMs5_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3RefNtNtBb_3rsa1NE13fill_be_bytesBb_.exit
  %.sroa.0.0 = phi i1 [ false, %_RNvMs5_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3RefNtNtBb_3rsa1NE13fill_be_bytesBb_.exit ], [ true, %bb.m ], [ true, %_RNvMNtNtCs5yxAJGbRKSL_4ring3rsa10public_keyNtB2_9PublicKey11modulus_len.exit ], [ true, %_RNvMs2_NtNtCs5yxAJGbRKSL_4ring3rsa7keypairNtB5_7KeyPair20private_exponentiate.exit.thread ], [ true, %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring3rsa4base14public_modulusINtB5_13PublicModulusINtNtNtNtNtBb_10arithmetic6bigint7modulus4mont8IntoMontNtB9_1NNtNtB1n_10montgomery2RREE8len_bits.exit ], [ true, %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring3rsa4base14public_modulusINtB5_13PublicModulusINtNtNtNtNtBb_10arithmetic6bigint7modulus4mont8IntoMontNtB9_1NNtNtB1n_10montgomery2RREE8len_bits.exit.thread ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { ptr, i64 } @_RNvMs2_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NE20from_be_bytes_paddedBb_(ptr noalias nofree noundef nonnull align 8 dereferenceable(1024) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef %2, ptr %.0.val, i64 %.8.val) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = icmp ugt i64 %.8.val, 1
  br i1 %i.c, label %bb.c, label %bb.b, !prof !19

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #41
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = add i64 %.8.val, -2                      ; 7 uses
  %.not.i = icmp eq i64 %i.d, 0
  br i1 %.not.i, label %bb.d, label %_RNvMs6_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montINtNtB5_4base4MontNtNtBd_3rsa1NE9num_limbsBd_.exit, !prof !16

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @154) #41
  unreachable

_RNvMs6_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montINtNtB5_4base4MontNtNtBd_3rsa1NE9num_limbsBd_.exit: ; preds = %bb.c
  %i.e = icmp ugt i64 %i.d, 128
  br i1 %i.e, label %bb.e, label %_RNvMs6_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montINtNtB5_4base4MontNtNtBd_3rsa1NE9num_limbsBd_.exit.i, !prof !16

bb.e:                                             ; preds = %_RNvMs6_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montINtNtB5_4base4MontNtNtBd_3rsa1NE9num_limbsBd_.exit
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @145) #41
  unreachable

_RNvMs6_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montINtNtB5_4base4MontNtNtBd_3rsa1NE9num_limbsBd_.exit.i: ; preds = %_RNvMs6_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montINtNtB5_4base4MontNtNtBd_3rsa1NE9num_limbsBd_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3609
  store ptr %0, ptr %i.b, align 8, !noalias !3609
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store i64 %i.d, ptr %i.f, align 8, !noalias !3609
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 0, ptr %i.g, align 8, !noalias !3609
  %i.h = call fastcc { i64, i64 } @_RNvNtCs5yxAJGbRKSL_4ring4limb26limbs_from_be_bytes_padded(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %i.d)
  %i.i = extractvalue { i64, i64 } %i.h, 0
  %i.j = trunc nuw i64 %i.i to i1
  br i1 %i.j, label %_RNvMs2_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NE21from_be_bytes_padded_Bb_.exit, label %bb.f, !prof !16

bb.f:                                             ; preds = %_RNvMs6_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montINtNtB5_4base4MontNtNtBd_3rsa1NE9num_limbsBd_.exit.i
  %.sroa.0.0.copyload.i = load ptr, ptr %i.b, align 8, !noalias !3609 ; 3 uses
  %.sroa.4.0.copyload.i = load i64, ptr %i.f, align 8, !noalias !3609
  %.sroa.5.0.copyload.i = load i64, ptr %i.g, align 8, !noalias !3609 ; 3 uses
  %.not.i.i.i = icmp ugt i64 %.sroa.5.0.copyload.i, %.sroa.4.0.copyload.i
  br i1 %.not.i.i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @168) #41, !noalias !3610
  unreachable

bb.h:                                             ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %.not9.i.i.i.i = icmp eq i64 %.sroa.5.0.copyload.i, %i.d
  br i1 %.not9.i.i.i.i, label %_RNvNtCs5yxAJGbRKSL_4ring4limb37verify_limbs_less_than_limbs_leak_bit.exit.i.i, label %_RNvNtCs5yxAJGbRKSL_4ring4limb37verify_limbs_less_than_limbs_leak_bit.exit.thread.i.i, !prof !36

_RNvNtCs5yxAJGbRKSL_4ring4limb37verify_limbs_less_than_limbs_leak_bit.exit.i.i: ; preds = %bb.h
  %i.k = getelementptr inbounds nuw i8, ptr %.0.val, i64 16
  %i.l = tail call noundef i64 @ring_core_0_17_16000__LIMBS_less_than(ptr noundef nonnull readonly align 8 %.sroa.0.0.copyload.i, ptr noundef nonnull readonly align 8 %i.k, i64 noundef range(i64 0, 1152921504606846976) %i.d) #36, !noalias !3611
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3612
  store i64 %i.l, ptr %i.a, align 8, !noalias !3612
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %i.a) #36, !noalias !3611, !srcloc !37
  %i.m = load i64, ptr %i.a, align 8, !noalias !3612, !noundef !15
  %.not.i.i5.i = icmp eq i64 %i.m, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3612
  br i1 %.not.i.i5.i, label %_RNvNtCs5yxAJGbRKSL_4ring4limb37verify_limbs_less_than_limbs_leak_bit.exit.thread.i.i, label %_RNvMs2_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NE21from_be_bytes_padded_Bb_.exit

_RNvNtCs5yxAJGbRKSL_4ring4limb37verify_limbs_less_than_limbs_leak_bit.exit.thread.i.i: ; preds = %_RNvNtCs5yxAJGbRKSL_4ring4limb37verify_limbs_less_than_limbs_leak_bit.exit.i.i, %bb.h
  br label %_RNvMs2_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NE21from_be_bytes_padded_Bb_.exit

_RNvMs2_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NE21from_be_bytes_padded_Bb_.exit: ; preds = %_RNvMs6_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montINtNtB5_4base4MontNtNtBd_3rsa1NE9num_limbsBd_.exit.i, %_RNvNtCs5yxAJGbRKSL_4ring4limb37verify_limbs_less_than_limbs_leak_bit.exit.i.i, %_RNvNtCs5yxAJGbRKSL_4ring4limb37verify_limbs_less_than_limbs_leak_bit.exit.thread.i.i
  %.sroa.3.0.i = phi i64 [ undef, %_RNvMs6_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montINtNtB5_4base4MontNtNtBd_3rsa1NE9num_limbsBd_.exit.i ], [ %i.d, %_RNvNtCs5yxAJGbRKSL_4ring4limb37verify_limbs_less_than_limbs_leak_bit.exit.i.i ], [ %.sroa.5.0.copyload.i, %_RNvNtCs5yxAJGbRKSL_4ring4limb37verify_limbs_less_than_limbs_leak_bit.exit.thread.i.i ]
  %.sroa.0.0.i = phi ptr [ null, %_RNvMs6_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montINtNtB5_4base4MontNtNtBd_3rsa1NE9num_limbsBd_.exit.i ], [ %.sroa.0.0.copyload.i, %_RNvNtCs5yxAJGbRKSL_4ring4limb37verify_limbs_less_than_limbs_leak_bit.exit.i.i ], [ null, %_RNvNtCs5yxAJGbRKSL_4ring4limb37verify_limbs_less_than_limbs_leak_bit.exit.thread.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3609
  %i.n = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.i, 0
  %i.o = insertvalue { ptr, i64 } %i.n, i64 %.sroa.3.0.i, 1
  ret { ptr, i64 } %i.o
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal fastcc void @_RNvMs2_NtNtNtCs5yxAJGbRKSL_4ring4aead3aes8fallbackNtB5_3Key3new(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(248) %0, i64 noundef range(i64 0, 2) %1, ptr nofree noundef nonnull readonly captures(none) %2) unnamed_addr #16 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %i.b = alloca [176 x i8], align 16              ; 5 uses
  %i.c = alloca [16 x i8], align 16               ; 4 uses
  %i.d = alloca [16 x i8], align 16               ; 4 uses
  %i.e = alloca [240 x i8], align 8               ; 4 uses
  %i.f = trunc nuw i64 %1 to i1
  br i1 %i.f, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3694)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3695)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.h = load <2 x i64>, ptr %2, align 1, !alias.scope !3696, !noalias !3697 ; 3 uses
  %i.i = lshr <2 x i64> %i.h, splat (i64 4)
  %i.j = xor <2 x i64> %i.i, %i.h
  %i.k = and <2 x i64> %i.j, splat (i64 67555025218437360)
  %i.l = mul nuw nsw <2 x i64> %i.k, splat (i64 17)
  %i.m = xor <2 x i64> %i.l, %i.h
  %i.n = shufflevector <2 x i64> %i.m, <2 x i64> poison, <2 x i32> <i32 1, i32 0> ; 3 uses
  %i.o = lshr <2 x i64> %i.n, splat (i64 8)
  %i.p = xor <2 x i64> %i.o, %i.n
  %i.q = and <2 x i64> %i.p, splat (i64 280375465148160)
  %i.r = mul nuw nsw <2 x i64> %i.q, splat (i64 257)
  %i.s = xor <2 x i64> %i.r, %i.n                 ; 3 uses
  %i.t = lshr <2 x i64> %i.s, splat (i64 16)
  %i.u = xor <2 x i64> %i.t, %i.s
  %i.v = and <2 x i64> %i.u, splat (i64 4294901760)
  %i.w = mul nuw nsw <2 x i64> %i.v, splat (i64 65537)
  %i.x = xor <2 x i64> %i.w, %i.s                 ; 3 uses
  %i.y = and <2 x i64> %i.x, <i64 -4294967296, i64 4294967295>
  %i.z = shufflevector <2 x i64> %i.y, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.aa = shl <2 x i64> %i.x, splat (i64 32)
  %i.ab = lshr <2 x i64> %i.x, splat (i64 32)
  %i.ac = shufflevector <2 x i64> %i.aa, <2 x i64> %i.ab, <2 x i32> <i32 0, i32 3>
  %i.ad = or disjoint <2 x i64> %i.ac, %i.z       ; 2 uses
  %i.ae = load <2 x i64>, ptr %i.g, align 1, !alias.scope !3698, !noalias !3699 ; 3 uses
  %i.af = lshr <2 x i64> %i.ae, splat (i64 4)
  %i.ag = xor <2 x i64> %i.af, %i.ae
  %i.ah = and <2 x i64> %i.ag, splat (i64 67555025218437360)
  %i.ai = mul nuw nsw <2 x i64> %i.ah, splat (i64 17)
  %i.aj = xor <2 x i64> %i.ai, %i.ae
  %i.ak = shufflevector <2 x i64> %i.aj, <2 x i64> poison, <2 x i32> <i32 1, i32 0> ; 3 uses
  %i.al = lshr <2 x i64> %i.ak, splat (i64 8)
  %i.am = xor <2 x i64> %i.al, %i.ak
  %i.an = and <2 x i64> %i.am, splat (i64 280375465148160)
  %i.ao = mul nuw nsw <2 x i64> %i.an, splat (i64 257)
  %i.ap = xor <2 x i64> %i.ao, %i.ak              ; 3 uses
  %i.aq = lshr <2 x i64> %i.ap, splat (i64 16)
  %i.ar = xor <2 x i64> %i.aq, %i.ap
  %i.as = and <2 x i64> %i.ar, splat (i64 4294901760)
  %i.at = mul nuw nsw <2 x i64> %i.as, splat (i64 65537)
  %i.au = xor <2 x i64> %i.at, %i.ap              ; 3 uses
  %i.av = and <2 x i64> %i.au, <i64 -4294967296, i64 4294967295>
  %i.aw = shufflevector <2 x i64> %i.av, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.ax = shl <2 x i64> %i.au, splat (i64 32)
  %i.ay = lshr <2 x i64> %i.au, splat (i64 32)
  %i.az = shufflevector <2 x i64> %i.ax, <2 x i64> %i.ay, <2 x i32> <i32 0, i32 3>
  %i.ba = or disjoint <2 x i64> %i.az, %i.aw      ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %bb.b
  %storemerge9.i.i.i = phi i64 [ 0, %bb.b ], [ %i.cu, %bb.g ] ; 5 uses
  %i.bb = phi <2 x i64> [ %i.ba, %bb.b ], [ %i.cp, %bb.g ] ; 4 uses
  %i.bc = phi <2 x i64> [ %i.ad, %bb.b ], [ %i.cq, %bb.g ] ; 4 uses
  %i.bd = phi <2 x i64> [ %i.ad, %bb.b ], [ %i.cr, %bb.g ] ; 6 uses
  %i.be = phi <2 x i64> [ %i.ba, %bb.b ], [ %i.cs, %bb.g ] ; 6 uses
  switch i64 %storemerge9.i.i.i, label %bb.e [
    i64 0, label %bb.g
    i64 1, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.bf = and i64 %storemerge9.i.i.i, 1
  %i.bg = icmp eq i64 %i.bf, 0
  br i1 %i.bg, label %bb.f, label %.lr.ph.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.bh = lshr exact i64 %storemerge9.i.i.i, 1
  %i.bi = getelementptr i8, ptr @_RNvNtNtNtCs5yxAJGbRKSL_4ring4aead3aes8fallback4RCON, i64 %i.bh
  %i.bj = getelementptr i8, ptr %i.bi, i64 -1
  %i.bk = load i8, ptr %i.bj, align 1, !noalias !3700, !noundef !15 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !3700
  %i.bl = extractelement <2 x i64> %i.be, i64 0
  %i.bm = extractelement <2 x i64> %i.be, i64 1
  call fastcc void @_RNvNtNtNtCs5yxAJGbRKSL_4ring4aead3aes8fallback9sub_block(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.d, i64 %i.bl, i64 %i.bm), !noalias !3700
  %i.bn = load <2 x i64>, ptr %i.d, align 16, !alias.scope !3701, !noalias !3702 ; 2 uses
  %3 = and i8 %i.bk, 15
  %4 = zext nneg i8 %3 to i64
  %5 = lshr i8 %i.bk, 4
  %i.bo = zext nneg i8 %5 to i64
  %i.bp = lshr <2 x i64> %i.bn, splat (i64 52)
  %i.bq = lshr <2 x i64> %i.bn, splat (i64 36)
  %i.br = and <2 x i64> %i.bq, splat (i64 61440)
  %i.bs = or disjoint <2 x i64> %i.br, %i.bp
  %i.bt = insertelement <2 x i64> poison, i64 %4, i64 0
  %i.bu = insertelement <2 x i64> %i.bt, i64 %i.bo, i64 1
  %i.bv = xor <2 x i64> %i.bs, %i.bu
  %i.bw = xor <2 x i64> %i.bv, %i.bd              ; 4 uses
  %i.bx = shl <2 x i64> %i.bw, splat (i64 16)
  %i.by = shl <2 x i64> %i.bw, splat (i64 32)
  %i.bz = shl <2 x i64> %i.bw, splat (i64 48)
  %i.ca = xor <2 x i64> %i.by, %i.bx
  %i.cb = xor <2 x i64> %i.ca, %i.bz
  %i.cc = xor <2 x i64> %i.cb, %i.bw              ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3700
  br label %bb.g

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3700
  %i.cd = extractelement <2 x i64> %i.bd, i64 0
  %i.ce = extractelement <2 x i64> %i.bd, i64 1
  call fastcc void @_RNvNtNtNtCs5yxAJGbRKSL_4ring4aead3aes8fallback9sub_block(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.c, i64 %i.cd, i64 %i.ce), !noalias !3700
  %i.cf = load <2 x i64>, ptr %i.c, align 16, !alias.scope !3703, !noalias !3700
  %i.cg = lshr <2 x i64> %i.cf, splat (i64 48)
  %i.ch = xor <2 x i64> %i.cg, %i.be              ; 4 uses
  %i.ci = shl <2 x i64> %i.ch, splat (i64 16)
  %i.cj = shl <2 x i64> %i.ch, splat (i64 32)
  %i.ck = shl <2 x i64> %i.ch, splat (i64 48)
  %i.cl = xor <2 x i64> %i.cj, %i.ci
  %i.cm = xor <2 x i64> %i.cl, %i.ck
  %i.cn = xor <2 x i64> %i.cm, %i.ch              ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3700
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i.i, %bb.f, %bb.d, %bb.c
  %i.co = phi <2 x i64> [ %i.cc, %bb.f ], [ %i.cn, %.lr.ph.i.i.i.i.i.i ], [ %i.bb, %bb.d ], [ %i.bc, %bb.c ]
  %i.cp = phi <2 x i64> [ %i.bb, %bb.f ], [ %i.cn, %.lr.ph.i.i.i.i.i.i ], [ %i.bb, %bb.d ], [ %i.bb, %bb.c ]
  %i.cq = phi <2 x i64> [ %i.cc, %bb.f ], [ %i.bc, %.lr.ph.i.i.i.i.i.i ], [ %i.bc, %bb.d ], [ %i.bc, %bb.c ]
  %i.cr = phi <2 x i64> [ %i.cc, %bb.f ], [ %i.bd, %.lr.ph.i.i.i.i.i.i ], [ %i.bd, %bb.d ], [ %i.bd, %bb.c ]
  %i.cs = phi <2 x i64> [ %i.be, %bb.f ], [ %i.cn, %.lr.ph.i.i.i.i.i.i ], [ %i.be, %bb.d ], [ %i.be, %bb.c ]
  %i.ct = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %storemerge9.i.i.i
  store <2 x i64> %i.co, ptr %i.ct, align 8, !noalias !3704
  %i.cu = add nuw nsw i64 %storemerge9.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.cu, 15
  br i1 %exitcond.not.i.i.i, label %_RNvNtNtNtCs5yxAJGbRKSL_4ring4aead3aes8fallback13setup_key_256.exit, label %bb.c

_RNvNtNtNtCs5yxAJGbRKSL_4ring4aead3aes8fallback13setup_key_256.exit: ; preds = %bb.g
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(240) %i.cv, ptr noundef nonnull align 8 dereferenceable(240) %i.e, i64 240, i1 false), !noalias !3695
  store i64 1, ptr %0, align 8, !alias.scope !3694, !noalias !3695
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.j

bb.h:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3705)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.cw = load <2 x i64>, ptr %2, align 1, !alias.scope !3706, !noalias !3707 ; 3 uses
  %i.cx = lshr <2 x i64> %i.cw, splat (i64 4)
  %i.cy = xor <2 x i64> %i.cx, %i.cw
  %i.cz = and <2 x i64> %i.cy, splat (i64 67555025218437360)
  %i.da = mul nuw nsw <2 x i64> %i.cz, splat (i64 17)
  %i.db = xor <2 x i64> %i.da, %i.cw
  %i.dc = shufflevector <2 x i64> %i.db, <2 x i64> poison, <2 x i32> <i32 1, i32 0> ; 3 uses
  %i.dd = lshr <2 x i64> %i.dc, splat (i64 8)
  %i.de = xor <2 x i64> %i.dd, %i.dc
  %i.df = and <2 x i64> %i.de, splat (i64 280375465148160)
  %i.dg = mul nuw nsw <2 x i64> %i.df, splat (i64 257)
  %i.dh = xor <2 x i64> %i.dg, %i.dc              ; 3 uses
  %i.di = lshr <2 x i64> %i.dh, splat (i64 16)
  %i.dj = xor <2 x i64> %i.di, %i.dh
  %i.dk = and <2 x i64> %i.dj, splat (i64 4294901760)
  %i.dl = mul nuw nsw <2 x i64> %i.dk, splat (i64 65537)
  %i.dm = xor <2 x i64> %i.dl, %i.dh              ; 3 uses
  %i.dn = and <2 x i64> %i.dm, <i64 -4294967296, i64 4294967295>
  %i.do = shufflevector <2 x i64> %i.dn, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.dp = shl <2 x i64> %i.dm, splat (i64 32)
  %i.dq = lshr <2 x i64> %i.dm, splat (i64 32)
  %i.dr = shufflevector <2 x i64> %i.dp, <2 x i64> %i.dq, <2 x i32> <i32 0, i32 3>
  %i.ds = or disjoint <2 x i64> %i.dr, %i.do      ; 2 uses
  store <2 x i64> %i.ds, ptr %i.b, align 16, !noalias !3705
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %bb.h
  %storemerge4.i.i.i = phi i64 [ 1, %bb.h ], [ %i.eq, %bb.i ] ; 3 uses
  %i.dt = phi <2 x i64> [ %i.ds, %bb.h ], [ %i.ep, %bb.i ] ; 3 uses
  %i.du = getelementptr i8, ptr @_RNvNtNtNtCs5yxAJGbRKSL_4ring4aead3aes8fallback4RCON, i64 %storemerge4.i.i.i
  %i.dv = getelementptr i8, ptr %i.du, i64 -1
  %i.dw = load i8, ptr %i.dv, align 1, !noalias !3708, !noundef !15 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3708
  %i.dx = extractelement <2 x i64> %i.dt, i64 0
  %i.dy = extractelement <2 x i64> %i.dt, i64 1
  call fastcc void @_RNvNtNtNtCs5yxAJGbRKSL_4ring4aead3aes8fallback9sub_block(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.a, i64 %i.dx, i64 %i.dy), !noalias !3708
  %i.dz = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %storemerge4.i.i.i
  %i.ea = load <2 x i64>, ptr %i.a, align 16, !alias.scope !3709, !noalias !3710 ; 2 uses
  %6 = and i8 %i.dw, 15
  %7 = zext nneg i8 %6 to i64
  %8 = lshr i8 %i.dw, 4
  %i.eb = zext nneg i8 %8 to i64
  %i.ec = lshr <2 x i64> %i.ea, splat (i64 52)
  %i.ed = lshr <2 x i64> %i.ea, splat (i64 36)
  %i.ee = and <2 x i64> %i.ed, splat (i64 61440)
  %i.ef = or disjoint <2 x i64> %i.ee, %i.ec
  %i.eg = insertelement <2 x i64> poison, i64 %7, i64 0
  %i.eh = insertelement <2 x i64> %i.eg, i64 %i.eb, i64 1
  %i.ei = xor <2 x i64> %i.ef, %i.eh
  %i.ej = xor <2 x i64> %i.ei, %i.dt              ; 4 uses
  %i.ek = shl <2 x i64> %i.ej, splat (i64 16)
  %i.el = shl <2 x i64> %i.ej, splat (i64 32)
  %i.em = shl <2 x i64> %i.ej, splat (i64 48)
  %i.en = xor <2 x i64> %i.el, %i.ek
  %i.eo = xor <2 x i64> %i.en, %i.em
  %i.ep = xor <2 x i64> %i.eo, %i.ej              ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3708
  store <2 x i64> %i.ep, ptr %i.dz, align 16, !noalias !3705
  %i.eq = add nuw nsw i64 %storemerge4.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i7 = icmp eq i64 %i.eq, 11
  br i1 %exitcond.not.i.i.i7, label %_RNvNtNtNtCs5yxAJGbRKSL_4ring4aead3aes8fallback13setup_key_128.exit, label %bb.i, !llvm.loop !3693

_RNvNtNtNtCs5yxAJGbRKSL_4ring4aead3aes8fallback13setup_key_128.exit: ; preds = %bb.i
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.er, ptr noundef nonnull align 16 dereferenceable(176) %i.b, i64 176, i1 false)
  store i64 0, ptr %0, align 8, !alias.scope !3705
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.j

bb.j:                                             ; preds = %_RNvNtNtNtCs5yxAJGbRKSL_4ring4aead3aes8fallback13setup_key_128.exit, %_RNvNtNtNtCs5yxAJGbRKSL_4ring4aead3aes8fallback13setup_key_256.exit
  ret void
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvMs3_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3RefNtNtBb_3rsa1NE7is_zeroBb_(ptr nofree readonly captures(none) %.0.val, i64 %.8.val) unnamed_addr #9 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.b = icmp eq i64 %.8.val, 0
  br i1 %i.b, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator4foldyNCNvNtCs5yxAJGbRKSL_4ring4limb14limbs_are_zero0EB1J_.exit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.a
  %min.iters.check = icmp ult i64 %.8.val, 4
  br i1 %min.iters.check, label %.preheader.preheader3, label %vector.ph

vector.ph:                                        ; preds = %.preheader.preheader
  %n.vec = and i64 %.8.val, -4                    ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.e, %vector.body ]
  %vec.phi1 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.f, %vector.body ]
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %.0.val, i64 %index ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %wide.load = load <2 x i64>, ptr %i.c, align 8
  %wide.load2 = load <2 x i64>, ptr %i.d, align 8
  %i.e = or <2 x i64> %wide.load, %vec.phi        ; 2 uses
  %i.f = or <2 x i64> %wide.load2, %vec.phi1      ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.g = icmp eq i64 %index.next, %n.vec
  br i1 %i.g, label %middle.block, label %vector.body, !llvm.loop !3711

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <2 x i64> %i.f, %i.e
  %i.h = tail call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %.8.val, %n.vec
  br i1 %cmp.n, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator4foldyNCNvNtCs5yxAJGbRKSL_4ring4limb14limbs_are_zero0EB1J_.exit, label %.preheader.preheader3

.preheader.preheader3:                            ; preds = %.preheader.preheader, %middle.block
  %.sroa.04.0.i.ph = phi i64 [ 0, %.preheader.preheader ], [ %n.vec, %middle.block ]
  %.sroa.02.0.i.ph = phi i64 [ 0, %.preheader.preheader ], [ %i.h, %middle.block ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader3, %.preheader
  %.sroa.04.0.i = phi i64 [ %i.k, %.preheader ], [ %.sroa.04.0.i.ph, %.preheader.preheader3 ] ; 2 uses
  %.sroa.02.0.i = phi i64 [ %i.j, %.preheader ], [ %.sroa.02.0.i.ph, %.preheader.preheader3 ]
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %.0.val, i64 %.sroa.04.0.i
  %.val.i = load i64, ptr %i.i, align 8, !noundef !15
  %i.j = or i64 %.val.i, %.sroa.02.0.i            ; 2 uses
  %i.k = add nuw i64 %.sroa.04.0.i, 1             ; 2 uses
  %i.l = icmp eq i64 %i.k, %.8.val
  br i1 %i.l, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator4foldyNCNvNtCs5yxAJGbRKSL_4ring4limb14limbs_are_zero0EB1J_.exit, label %.preheader, !llvm.loop !3712

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator4foldyNCNvNtCs5yxAJGbRKSL_4ring4limb14limbs_are_zero0EB1J_.exit: ; preds = %.preheader, %middle.block, %bb.a
  %.sroa.0.0.i = phi i64 [ 0, %bb.a ], [ %i.h, %middle.block ], [ %i.j, %.preheader ]
  %i.m = tail call noundef i64 @ring_core_0_17_16000__LIMB_is_zero(i64 noundef %.sroa.0.0.i) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.m, ptr %i.a, align 8
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %i.a) #36, !srcloc !37
  %i.n = load i64, ptr %i.a, align 8, !noundef !15
  %i.o = icmp ne i64 %i.n, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.o
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecTNtNtB7_6string6StringBN_bEE8grow_oneCs5yxAJGbRKSL_4ring(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !26, !noundef !15 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3715)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3715
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !3715
  call fastcc void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs5yxAJGbRKSL_4ring(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 8, i64 noundef 56), !noalias !3715
  %i.f = load i64, ptr %i.a, align 8, !range !22, !noalias !3715, !noundef !15
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !31, !noalias !3715, !noundef !15
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !3715
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3715
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #42
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !3715, !nonnull !15, !noundef !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3715
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !3715
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !3715
  ret void
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs5yxAJGbRKSL_4ring(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, i64 %.0.val, ptr %.8.val, i64 noundef %1, i64 noundef range(i64 1, 9) %2, i64 noundef range(i64 1, 57) %3) unnamed_addr #17 {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %3, i64 %1) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 0         ; 7 uses
  %i.c = extractvalue { i64, i1 } %i.a, 1
  %i.d = sub nuw i64 -9223372036854775808, %2
  %.not = icmp ugt i64 %i.b, %i.d
  %or.cond = select i1 %i.c, i1 true, i1 %.not, !prof !28
  br i1 %or.cond, label %bb.g, label %bb.b, !prof !28

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %.0.val, 0
  br i1 %i.e, label %bb.c, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator4grow.exit

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator4grow.exit: ; preds = %bb.b
  %i.f = mul nuw i64 %3, %.0.val                  ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.g = icmp uge i64 %i.b, %i.f
  tail call void @llvm.assume(i1 %i.g)
  %i.h = tail call noundef ptr @_RNvCsjHpjAFo4bi0_7___rustc14___rust_realloc(ptr noundef nonnull %.8.val, i64 noundef %i.f, i64 noundef range(i64 1, 9) %2, i64 noundef range(i64 0, -9223372036854775808) %i.b) #36
  br label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit

bb.c:                                             ; preds = %bb.b
  %i.i = icmp eq i64 %i.b, 0
  br i1 %i.i, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.thread, label %bb.d

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.thread: ; preds = %bb.c
  %i.j = inttoptr i64 %2 to ptr
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #36
  %i.k = tail call noundef ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.b, i64 noundef range(i64 1, 9) %2) #36
  br label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit: ; preds = %bb.d, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator4grow.exit
  %.pn8 = phi ptr [ %i.h, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator4grow.exit ], [ %i.k, %bb.d ] ; 2 uses
  %i.l = icmp eq ptr %.pn8, null
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.m, align 8
  br label %bb.g

bb.f:                                             ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.thread, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit
  %.pn810 = phi ptr [ %i.j, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.thread ], [ %.pn8, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.pn810, ptr %i.n, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.e, %bb.f
  %.sink13 = phi i64 [ 16, %bb.e ], [ 16, %bb.f ], [ 8, %bb.a ]
  %.sink11 = phi i64 [ %i.b, %bb.e ], [ %i.b, %bb.f ], [ 0, %bb.a ]
  %.sink = phi i64 [ 1, %bb.e ], [ 0, %bb.f ], [ 1, %bb.a ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %.sink13
  store i64 %.sink11, ptr %i.o, align 8
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs5_NtCs5yxAJGbRKSL_4ring4hmacNtB5_7Context4sign(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(288) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [72 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = load atomic i32, ptr @_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags8FEATURES acquire, align 4
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %bb.b, label %_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit, !prof !16

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_RINvMNtNtNtCs5yxAJGbRKSL_4ring8polyfill9once_cell4raceINtB3_14OnceNonZeroU32NtB3_14AcquireReleaseE4initNCNvNtNtNtB9_3cpu6x86_6412featureflags11get_or_init0EB9_() #39
  br label %_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit

_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit: ; preds = %bb.a, %bb.b
end_hunk_0
