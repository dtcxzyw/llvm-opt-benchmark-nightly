Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_html-eed424199d03c1aa.typst_html.6be6ebf0611e0a90-cgu.0?download=true
inline.NumInlined: 8941
inline.NumDeleted: 4345
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9gmjTwvRRSu_10typst_html:bb.a
  %.sroa.5.0.i.ph = phi i64 [ undef, %bb.a ], [ %i.m, %bb.c ]
  %.sroa.0.0.i.ph = phi i64 [ 0, %bb.a ], [ %i.k, %bb.c ]
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %.sroa.0.0.i.ph, i64 %.sroa.5.0.i.ph) #54
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.j, align 8, !noalias !4701, !nonnull !57, !noundef !57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4701
  store ptr %i.n, ptr %i.g, align 8, !alias.scope !4701
  %i.o = icmp sgt i64 %..i14.i, -1
  tail call void @llvm.assume(i1 %i.o)
  store i64 %..i14.i, ptr %0, align 8, !alias.scope !4701
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXNtCsloFShupyl5J_6comemo5inputNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles10StyleChainNtB3_5Input3keyNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECs9gmjTwvRRSu_10typst_html(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 12 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4741)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %.pre.i = load i64, ptr %i.b, align 8, !alias.scope !4742, !noalias !4743
  %.pre5.i = load i64, ptr %i.c, align 8, !alias.scope !4742, !noalias !4743 ; 2 uses
  %.pre6.i = load i64, ptr %i.d, align 8, !alias.scope !4742, !noalias !4743
  %.promoted = load i64, ptr %i.e, align 8
  %.promoted26 = load i64, ptr %1, align 8
  %.promoted35 = load i64, ptr %i.f, align 8
  %.promoted44 = load i64, ptr %i.g, align 8
  br label %tailrecurse.i

tailrecurse.i:                                    ; preds = %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCs9gmjTwvRRSu_10typst_html.exit.i, %bb.a
  %.promoted754 = phi i64 [ %.pre5.i, %bb.a ], [ %.promoted755, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCs9gmjTwvRRSu_10typst_html.exit.i ]
  %.promoted1649 = phi i64 [ %.promoted44, %bb.a ], [ %.promoted1650, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCs9gmjTwvRRSu_10typst_html.exit.i ] ; 2 uses
  %.promoted1540 = phi i64 [ %.promoted35, %bb.a ], [ %.promoted1541, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCs9gmjTwvRRSu_10typst_html.exit.i ] ; 4 uses
  %.promoted1031 = phi i64 [ %.promoted26, %bb.a ], [ %.promoted1032, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCs9gmjTwvRRSu_10typst_html.exit.i ] ; 2 uses
  %.promoted922 = phi i64 [ %.promoted, %bb.a ], [ %.promoted923, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCs9gmjTwvRRSu_10typst_html.exit.i ] ; 2 uses
  %i.h = phi i64 [ %.pre5.i, %bb.a ], [ %i.if, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCs9gmjTwvRRSu_10typst_html.exit.i ] ; 5 uses
  %i.i = phi i64 [ %.pre6.i, %bb.a ], [ %i.ig, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCs9gmjTwvRRSu_10typst_html.exit.i ]
  %i.j = phi i64 [ %.pre.i, %bb.a ], [ %i.hg, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCs9gmjTwvRRSu_10typst_html.exit.i ]
  %.tr.i = phi ptr [ %0, %bb.a ], [ %i.hd, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCs9gmjTwvRRSu_10typst_html.exit.i ] ; 3 uses
  %i.k = load ptr, ptr %.tr.i, align 8, !noalias !4741, !nonnull !57, !align !111, !noundef !57 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.tr.i, i64 8
  %i.m = load i64, ptr %i.l, align 8, !noalias !4741, !noundef !57 ; 4 uses
  %i.n = add i64 %i.j, 8                          ; 3 uses
  store i64 %i.n, ptr %i.b, align 8, !alias.scope !4742, !noalias !4743
  %i.o = shl i64 %i.h, 3                          ; 2 uses
  %i.p = and i64 %i.o, 56
  %i.q = shl i64 %i.m, %i.p
  %i.r = or i64 %i.q, %i.i                        ; 4 uses
  store i64 %i.r, ptr %i.d, align 8, !alias.scope !4742, !noalias !4743
  %i.s = icmp ugt i64 %i.h, 8
  br i1 %i.s, label %bb.c, label %bb.b

bb.b:                                             ; preds = %tailrecurse.i
  %i.t = xor i64 %.promoted922, %i.r              ; 3 uses
  %i.u = add i64 %.promoted1540, %.promoted1031   ; 3 uses
  %i.v = tail call noundef i64 @llvm.fshl.i64(i64 %.promoted1540, i64 %.promoted1540, i64 13)
  %i.w = xor i64 %i.v, %i.u                       ; 3 uses
  %i.x = tail call noundef i64 @llvm.fshl.i64(i64 %i.u, i64 %i.u, i64 32)
  %i.y = add i64 %.promoted1649, %i.t             ; 2 uses
  %i.z = tail call noundef i64 @llvm.fshl.i64(i64 %i.t, i64 %i.t, i64 16)
  %i.aa = xor i64 %i.y, %i.z                      ; 3 uses
  %i.ab = add i64 %i.aa, %i.x                     ; 2 uses
  %i.ac = tail call noundef i64 @llvm.fshl.i64(i64 %i.aa, i64 %i.aa, i64 21)
  %i.ad = xor i64 %i.ac, %i.ab                    ; 2 uses
  store i64 %i.ad, ptr %i.e, align 8, !alias.scope !4744, !noalias !4743
  %i.ae = add i64 %i.y, %i.w                      ; 3 uses
  %i.af = tail call noundef i64 @llvm.fshl.i64(i64 %i.w, i64 %i.w, i64 17)
  %i.ag = xor i64 %i.ae, %i.af                    ; 2 uses
  store i64 %i.ag, ptr %i.f, align 8, !alias.scope !4744, !noalias !4743
  %i.ah = tail call noundef i64 @llvm.fshl.i64(i64 %i.ae, i64 %i.ae, i64 32) ; 2 uses
  store i64 %i.ah, ptr %i.g, align 8, !alias.scope !4744, !noalias !4743
  %i.ai = xor i64 %i.ab, %i.r                     ; 2 uses
  store i64 %i.ai, ptr %1, align 8, !alias.scope !4742, !noalias !4743
  %.not.i.i.i.i = icmp eq i64 %i.h, 0
  %i.aj = sub nuw nsw i64 64, %i.o
  %i.ak = lshr i64 %i.m, %i.aj
  %.sroa.0.0.i.i.i.i = select i1 %.not.i.i.i.i, i64 0, i64 %i.ak ; 2 uses
  store i64 %.sroa.0.0.i.i.i.i, ptr %i.d, align 8, !alias.scope !4742, !noalias !4743
  br label %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher19write_length_prefixCs9gmjTwvRRSu_10typst_html.exit.i

bb.c:                                             ; preds = %tailrecurse.i
  %i.al = add i64 %i.h, 8                         ; 3 uses
  store i64 %i.al, ptr %i.c, align 8, !alias.scope !4742, !noalias !4743
  br label %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher19write_length_prefixCs9gmjTwvRRSu_10typst_html.exit.i

_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher19write_length_prefixCs9gmjTwvRRSu_10typst_html.exit.i: ; preds = %bb.c, %bb.b
  %.promoted757 = phi i64 [ %.promoted754, %bb.b ], [ %i.al, %bb.c ] ; 2 uses
  %.promoted1652 = phi i64 [ %i.ah, %bb.b ], [ %.promoted1649, %bb.c ] ; 3 uses
  %.promoted1543 = phi i64 [ %i.ag, %bb.b ], [ %.promoted1540, %bb.c ] ; 3 uses
  %.promoted1034 = phi i64 [ %i.ai, %bb.b ], [ %.promoted1031, %bb.c ] ; 3 uses
  %.promoted925 = phi i64 [ %i.ad, %bb.b ], [ %.promoted922, %bb.c ] ; 3 uses
  %i.am = phi i64 [ %.sroa.0.0.i.i.i.i, %bb.b ], [ %i.r, %bb.c ] ; 2 uses
  %i.an = phi i64 [ %i.h, %bb.b ], [ %i.al, %bb.c ]
  %.idx.i.i = shl nuw nsw i64 %i.m, 7
  %i.ao = getelementptr inbounds nuw i8, ptr %i.k, i64 %.idx.i.i
  %i.ap = icmp eq i64 %i.m, 0
  br i1 %i.ap, label %_RINvYINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleENtNtCs3oUPovFnLWP_4core4hash4Hash10hash_sliceNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECs9gmjTwvRRSu_10typst_html.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher19write_length_prefixCs9gmjTwvRRSu_10typst_html.exit.i, %_RNvXsb_NtCs83m0le5ggt2_9siphasher6sip128INtB5_6HasherNtB5_11Sip13RoundsENtNtCs3oUPovFnLWP_4core4hash6Hasher5writeCs9gmjTwvRRSu_10typst_html.exit
  %.promoted1648 = phi i64 [ %.promoted1645, %_RNvXsb_NtCs83m0le5ggt2_9siphasher6sip128INtB5_6HasherNtB5_11Sip13RoundsENtNtCs3oUPovFnLWP_4core4hash6Hasher5writeCs9gmjTwvRRSu_10typst_html.exit ], [ %.promoted1652, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher19write_length_prefixCs9gmjTwvRRSu_10typst_html.exit.i ] ; 2 uses
  %.promoted1539 = phi i64 [ %.promoted1536, %_RNvXsb_NtCs83m0le5ggt2_9siphasher6sip128INtB5_6HasherNtB5_11Sip13RoundsENtNtCs3oUPovFnLWP_4core4hash6Hasher5writeCs9gmjTwvRRSu_10typst_html.exit ], [ %.promoted1543, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher19write_length_prefixCs9gmjTwvRRSu_10typst_html.exit.i ] ; 2 uses
  %.promoted1030 = phi i64 [ %.promoted1027, %_RNvXsb_NtCs83m0le5ggt2_9siphasher6sip128INtB5_6HasherNtB5_11Sip13RoundsENtNtCs3oUPovFnLWP_4core4hash6Hasher5writeCs9gmjTwvRRSu_10typst_html.exit ], [ %.promoted1034, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher19write_length_prefixCs9gmjTwvRRSu_10typst_html.exit.i ] ; 2 uses
  %.promoted921 = phi i64 [ %.promoted918, %_RNvXsb_NtCs83m0le5ggt2_9siphasher6sip128INtB5_6HasherNtB5_11Sip13RoundsENtNtCs3oUPovFnLWP_4core4hash6Hasher5writeCs9gmjTwvRRSu_10typst_html.exit ], [ %.promoted925, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher19write_length_prefixCs9gmjTwvRRSu_10typst_html.exit.i ] ; 2 uses
  %i.aq = phi i64 [ %i.gu, %_RNvXsb_NtCs83m0le5ggt2_9siphasher6sip128INtB5_6HasherNtB5_11Sip13RoundsENtNtCs3oUPovFnLWP_4core4hash6Hasher5writeCs9gmjTwvRRSu_10typst_html.exit ], [ %.promoted1652, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher19write_length_prefixCs9gmjTwvRRSu_10typst_html.exit.i ] ; 3 uses
  %i.ar = phi i64 [ %i.gv, %_RNvXsb_NtCs83m0le5ggt2_9siphasher6sip128INtB5_6HasherNtB5_11Sip13RoundsENtNtCs3oUPovFnLWP_4core4hash6Hasher5writeCs9gmjTwvRRSu_10typst_html.exit ], [ %.promoted1543, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher19write_length_prefixCs9gmjTwvRRSu_10typst_html.exit.i ] ; 5 uses
  %.lcssa211 = phi i64 [ %.lcssa212, %_RNvXsb_NtCs83m0le5ggt2_9siphasher6sip128INtB5_6HasherNtB5_11Sip13RoundsENtNtCs3oUPovFnLWP_4core4hash6Hasher5writeCs9gmjTwvRRSu_10typst_html.exit ], [ %.promoted1034, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher19write_length_prefixCs9gmjTwvRRSu_10typst_html.exit.i ] ; 3 uses
  %i.as = phi i64 [ %i.gw, %_RNvXsb_NtCs83m0le5ggt2_9siphasher6sip128INtB5_6HasherNtB5_11Sip13RoundsENtNtCs3oUPovFnLWP_4core4hash6Hasher5writeCs9gmjTwvRRSu_10typst_html.exit ], [ %.promoted925, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher19write_length_prefixCs9gmjTwvRRSu_10typst_html.exit.i ] ; 3 uses
  %i.at = phi i64 [ %i.gx, %_RNvXsb_NtCs83m0le5ggt2_9siphasher6sip128INtB5_6HasherNtB5_11Sip13RoundsENtNtCs3oUPovFnLWP_4core4hash6Hasher5writeCs9gmjTwvRRSu_10typst_html.exit ], [ %i.am, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher19write_length_prefixCs9gmjTwvRRSu_10typst_html.exit.i ]
  %i.au = phi i64 [ %storemerge.i, %_RNvXsb_NtCs83m0le5ggt2_9siphasher6sip128INtB5_6HasherNtB5_11Sip13RoundsENtNtCs3oUPovFnLWP_4core4hash6Hasher5writeCs9gmjTwvRRSu_10typst_html.exit ], [ %.promoted757, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher19write_length_prefixCs9gmjTwvRRSu_10typst_html.exit.i ] ; 4 uses
  %i.av = phi i64 [ %i.bd, %_RNvXsb_NtCs83m0le5ggt2_9siphasher6sip128INtB5_6HasherNtB5_11Sip13RoundsENtNtCs3oUPovFnLWP_4core4hash6Hasher5writeCs9gmjTwvRRSu_10typst_html.exit ], [ %i.n, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher19write_length_prefixCs9gmjTwvRRSu_10typst_html.exit.i ]
  %.sroa.0.03.i.i = phi ptr [ %i.aw, %_RNvXsb_NtCs83m0le5ggt2_9siphasher6sip128INtB5_6HasherNtB5_11Sip13RoundsENtNtCs3oUPovFnLWP_4core4hash6Hasher5writeCs9gmjTwvRRSu_10typst_html.exit ], [ %i.k, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher19write_length_prefixCs9gmjTwvRRSu_10typst_html.exit.i ] ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i.i, i64 128 ; 2 uses
  %i.ax = load atomic ptr, ptr @_RNvNvNtNtNtCsiL9kQKV5x1F_15portable_atomic3imp9atomic1286x86_6411atomic_load4FUNC monotonic, align 8, !noalias !4745, !nonnull !57, !noundef !57
  %i.ay = tail call noundef i128 %i.ax(ptr noundef nonnull align 16 %.sroa.0.03.i.i), !noalias !4745, !inline_history !4717 ; 2 uses
  %i.az = icmp eq i128 %i.ay, 0
  br i1 %i.az, label %bb.d, label %_RINvXs1_NtCs6xpQEr8gLsQ_11typst_utils4hashINtB6_8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleENtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECs9gmjTwvRRSu_10typst_html.exit.i.i

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i.i, i64 16
  %i.bb = tail call fastcc noundef i128 @_RINvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleECs9gmjTwvRRSu_10typst_html(ptr noalias nofree noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.ba), !noalias !4745, !inline_history !4718 ; 2 uses
  %i.bc = load atomic ptr, ptr @_RNvNvNtNtNtCsiL9kQKV5x1F_15portable_atomic3imp9atomic1286x86_6412atomic_store4FUNC monotonic, align 8, !noalias !4745, !nonnull !57, !noundef !57
  tail call void %i.bc(ptr noundef nonnull align 16 %.sroa.0.03.i.i, i128 noundef %i.bb), !noalias !4745, !inline_history !4719
  br label %_RINvXs1_NtCs6xpQEr8gLsQ_11typst_utils4hashINtB6_8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleENtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECs9gmjTwvRRSu_10typst_html.exit.i.i

_RINvXs1_NtCs6xpQEr8gLsQ_11typst_utils4hashINtB6_8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleENtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECs9gmjTwvRRSu_10typst_html.exit.i.i: ; preds = %bb.d, %.lr.ph.i.i
  %.sroa.0.0.i.i.i1.i = phi i128 [ %i.bb, %bb.d ], [ %i.ay, %.lr.ph.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4746
  store i128 %.sroa.0.0.i.i.i1.i, ptr %i.a, align 16, !noalias !4746
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4747)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4748)
  %i.bd = add i64 %i.av, 16                       ; 3 uses
  store i64 %i.bd, ptr %i.b, align 8, !alias.scope !4747, !noalias !4749
  %i.be = icmp eq i64 %i.au, 0
  br i1 %i.be, label %bb.i, label %bb.e

bb.e:                                             ; preds = %_RINvXs1_NtCs6xpQEr8gLsQ_11typst_utils4hashINtB6_8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleENtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECs9gmjTwvRRSu_10typst_html.exit.i.i
  %i.bf = trunc i128 %.sroa.0.0.i.i.i1.i to i64
  %i.bg = sub i64 8, %i.au                        ; 4 uses
  %..i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.bg, i64 16) ; 2 uses
  %i.bh = icmp ugt i64 %i.bg, 3                   ; 3 uses
  %i.bi = and i64 %i.bf, 4294967295
  %.sroa.03.0.i.i = select i1 %i.bh, i64 4, i64 0 ; 4 uses
  %.sroa.0.0.i.i = select i1 %i.bh, i64 %i.bi, i64 0 ; 2 uses
  %i.bj = or disjoint i64 %.sroa.03.0.i.i, 1
  %i.bk = icmp samesign ult i64 %i.bj, %..i.i
  br i1 %i.bk, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %.sroa.03.0.i.i.sroa.phi.idx.sroa.sel.idx.sroa.sel.idx = select i1 %i.bh, i64 4, i64 0
  %.sroa.03.0.i.i.sroa.phi.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.03.0.i.i.sroa.phi.idx.sroa.sel.idx.sroa.sel.idx
  %.sroa.015.0.copyload.i.i = load i16, ptr %.sroa.03.0.i.i.sroa.phi.idx.sroa.sel.idx.sroa.sel, align 4, !alias.scope !4750, !noalias !4751
  %i.bl = zext i16 %.sroa.015.0.copyload.i.i to i64
  %i.bm = shl nuw nsw i64 %.sroa.03.0.i.i, 3
  %i.bn = shl nuw nsw i64 %i.bl, %i.bm
  %i.bo = or i64 %i.bn, %.sroa.0.0.i.i
  %i.bp = or disjoint i64 %.sroa.03.0.i.i, 2
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.03.1.i.i = phi i64 [ %i.bp, %bb.f ], [ %.sroa.03.0.i.i, %bb.e ] ; 3 uses
  %.sroa.0.1.i.i = phi i64 [ %i.bo, %bb.f ], [ %.sroa.0.0.i.i, %bb.e ] ; 2 uses
  %i.bq = icmp samesign ult i64 %.sroa.03.1.i.i, %..i.i
  br i1 %i.bq, label %bb.h, label %_RNvNtCs83m0le5ggt2_9siphasher6sip1289u8to64_le.exit.i

bb.h:                                             ; preds = %bb.g
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.03.1.i.i
  %i.bs = load i8, ptr %i.br, align 1, !alias.scope !4750, !noalias !4751, !noundef !57
  %i.bt = zext i8 %i.bs to i64
  %i.bu = shl nuw nsw i64 %.sroa.03.1.i.i, 3
  %i.bv = shl nuw nsw i64 %i.bt, %i.bu
  %i.bw = or i64 %i.bv, %.sroa.0.1.i.i
  br label %_RNvNtCs83m0le5ggt2_9siphasher6sip1289u8to64_le.exit.i

_RNvNtCs83m0le5ggt2_9siphasher6sip1289u8to64_le.exit.i: ; preds = %bb.h, %bb.g
  %.sroa.0.2.i.i = phi i64 [ %i.bw, %bb.h ], [ %.sroa.0.1.i.i, %bb.g ]
  %i.bx = shl i64 %i.au, 3
  %i.by = and i64 %i.bx, 56
  %i.bz = shl i64 %.sroa.0.2.i.i, %i.by
  %i.ca = or i64 %i.at, %i.bz                     ; 4 uses
  store i64 %i.ca, ptr %i.d, align 8, !alias.scope !4747, !noalias !4749
  %i.cb = icmp ugt i64 %i.bg, 16
  br i1 %i.cb, label %bb.k, label %bb.j

bb.i:                                             ; preds = %bb.j, %_RINvXs1_NtCs6xpQEr8gLsQ_11typst_utils4hashINtB6_8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleENtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECs9gmjTwvRRSu_10typst_html.exit.i.i
  %.promoted1647 = phi i64 [ %.promoted1648, %_RINvXs1_NtCs6xpQEr8gLsQ_11typst_utils4hashINtB6_8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleENtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECs9gmjTwvRRSu_10typst_html.exit.i.i ], [ %i.cw, %bb.j ]
  %.promoted1538 = phi i64 [ %.promoted1539, %_RINvXs1_NtCs6xpQEr8gLsQ_11typst_utils4hashINtB6_8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleENtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECs9gmjTwvRRSu_10typst_html.exit.i.i ], [ %i.cv, %bb.j ]
  %.promoted1029 = phi i64 [ %.promoted1030, %_RINvXs1_NtCs6xpQEr8gLsQ_11typst_utils4hashINtB6_8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleENtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECs9gmjTwvRRSu_10typst_html.exit.i.i ], [ %i.cx, %bb.j ]
  %.promoted920 = phi i64 [ %.promoted921, %_RINvXs1_NtCs6xpQEr8gLsQ_11typst_utils4hashINtB6_8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleENtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECs9gmjTwvRRSu_10typst_html.exit.i.i ], [ %i.cs, %bb.j ]
  %i.cc = phi i64 [ %i.aq, %_RINvXs1_NtCs6xpQEr8gLsQ_11typst_utils4hashINtB6_8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleENtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECs9gmjTwvRRSu_10typst_html.exit.i.i ], [ %i.cw, %bb.j ] ; 2 uses
  %i.cd = phi i64 [ %i.ar, %_RINvXs1_NtCs6xpQEr8gLsQ_11typst_utils4hashINtB6_8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleENtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECs9gmjTwvRRSu_10typst_html.exit.i.i ], [ %i.cv, %bb.j ] ; 4 uses
  %.lcssa214 = phi i64 [ %.lcssa211, %_RINvXs1_NtCs6xpQEr8gLsQ_11typst_utils4hashINtB6_8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleENtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECs9gmjTwvRRSu_10typst_html.exit.i.i ], [ %i.cx, %bb.j ] ; 2 uses
  %i.ce = phi i64 [ %i.as, %_RINvXs1_NtCs6xpQEr8gLsQ_11typst_utils4hashINtB6_8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleENtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECs9gmjTwvRRSu_10typst_html.exit.i.i ], [ %i.cs, %bb.j ] ; 2 uses
  %.sroa.0.0.i = phi i64 [ 0, %_RINvXs1_NtCs6xpQEr8gLsQ_11typst_utils4hashINtB6_8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleENtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECs9gmjTwvRRSu_10typst_html.exit.i.i ], [ %i.bg, %bb.j ] ; 8 uses
  %i.cf = sub nuw nsw i64 16, %.sroa.0.0.i        ; 2 uses
  %2 = and i64 %i.cf, 7                           ; 4 uses
  %i.cg = and i64 %i.cf, 24                       ; 4 uses
  %i.ch = icmp samesign ult i64 %.sroa.0.0.i, %i.cg
  br i1 %i.ch, label %.lr.ph.i, label %bb.l

bb.j:                                             ; preds = %_RNvNtCs83m0le5ggt2_9siphasher6sip1289u8to64_le.exit.i
  %i.ci = xor i64 %i.as, %i.ca                    ; 3 uses
  %i.cj = add i64 %i.ar, %.lcssa211               ; 3 uses
  %i.ck = tail call noundef i64 @llvm.fshl.i64(i64 %i.ar, i64 %i.ar, i64 13)
  %i.cl = xor i64 %i.ck, %i.cj                    ; 3 uses
  %i.cm = tail call noundef i64 @llvm.fshl.i64(i64 %i.cj, i64 %i.cj, i64 32)
  %i.cn = add i64 %i.aq, %i.ci                    ; 2 uses
  %i.co = tail call noundef i64 @llvm.fshl.i64(i64 %i.ci, i64 %i.ci, i64 16)
  %i.cp = xor i64 %i.cn, %i.co                    ; 3 uses
  %i.cq = add i64 %i.cp, %i.cm                    ; 2 uses
  %i.cr = tail call noundef i64 @llvm.fshl.i64(i64 %i.cp, i64 %i.cp, i64 21)
  %i.cs = xor i64 %i.cr, %i.cq                    ; 3 uses
  store i64 %i.cs, ptr %i.e, align 8, !alias.scope !4752, !noalias !4749
  %i.ct = add i64 %i.cn, %i.cl                    ; 3 uses
  %i.cu = tail call noundef i64 @llvm.fshl.i64(i64 %i.cl, i64 %i.cl, i64 17)
  %i.cv = xor i64 %i.ct, %i.cu                    ; 3 uses
  store i64 %i.cv, ptr %i.f, align 8, !alias.scope !4752, !noalias !4749
  %i.cw = tail call noundef i64 @llvm.fshl.i64(i64 %i.ct, i64 %i.ct, i64 32) ; 3 uses
  store i64 %i.cw, ptr %i.g, align 8, !alias.scope !4752, !noalias !4749
  %i.cx = xor i64 %i.cq, %i.ca                    ; 3 uses
  store i64 %i.cx, ptr %1, align 8, !alias.scope !4747, !noalias !4749
  br label %bb.i

bb.k:                                             ; preds = %_RNvNtCs83m0le5ggt2_9siphasher6sip1289u8to64_le.exit.i
  %i.cy = add i64 %i.au, 16
  br label %_RNvXsb_NtCs83m0le5ggt2_9siphasher6sip128INtB5_6HasherNtB5_11Sip13RoundsENtNtCs3oUPovFnLWP_4core4hash6Hasher5writeCs9gmjTwvRRSu_10typst_html.exit

._crit_edge.i:                                    ; preds = %.lr.ph.i.3, %.lr.ph.i.2, %.lr.ph.i.1, %.lr.ph.i
  %.lcssa91 = phi i64 [ %i.ei, %.lr.ph.i ], [ %i.fb, %.lr.ph.i.1 ], [ %i.fu, %.lr.ph.i.2 ], [ %i.gn, %.lr.ph.i.3 ] ; 3 uses
  %.lcssa90 = phi i64 [ %i.el, %.lr.ph.i ], [ %i.fe, %.lr.ph.i.1 ], [ %i.fx, %.lr.ph.i.2 ], [ %i.gq, %.lr.ph.i.3 ] ; 3 uses
  %.lcssa89 = phi i64 [ %i.em, %.lr.ph.i ], [ %i.ff, %.lr.ph.i.1 ], [ %i.fy, %.lr.ph.i.2 ], [ %i.gr, %.lr.ph.i.3 ] ; 3 uses
  %.lcssa88 = phi i64 [ %i.en, %.lr.ph.i ], [ %i.fg, %.lr.ph.i.1 ], [ %i.fz, %.lr.ph.i.2 ], [ %i.gs, %.lr.ph.i.3 ] ; 3 uses
  %.lcssa = phi i64 [ %i.eo, %.lr.ph.i ], [ %i.fh, %.lr.ph.i.1 ], [ %i.ga, %.lr.ph.i.2 ], [ %i.gt, %.lr.ph.i.3 ]
  store i64 %.lcssa91, ptr %i.e, align 8, !alias.scope !4747, !noalias !4749
  store i64 %.lcssa90, ptr %i.f, align 8, !alias.scope !4753, !noalias !4749
  store i64 %.lcssa89, ptr %i.g, align 8, !alias.scope !4753, !noalias !4749
  store i64 %.lcssa88, ptr %1, align 8, !alias.scope !4747, !noalias !4749
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge.i, %bb.i
  %.promoted1646 = phi i64 [ %.lcssa89, %._crit_edge.i ], [ %.promoted1647, %bb.i ]
  %.promoted1537 = phi i64 [ %.lcssa90, %._crit_edge.i ], [ %.promoted1538, %bb.i ]
  %.promoted1028 = phi i64 [ %.lcssa88, %._crit_edge.i ], [ %.promoted1029, %bb.i ]
  %.promoted919 = phi i64 [ %.lcssa91, %._crit_edge.i ], [ %.promoted920, %bb.i ]
  %i.cz = phi i64 [ %.lcssa89, %._crit_edge.i ], [ %i.cc, %bb.i ]
  %i.da = phi i64 [ %.lcssa90, %._crit_edge.i ], [ %i.cd, %bb.i ]
  %.lcssa213 = phi i64 [ %.lcssa88, %._crit_edge.i ], [ %.lcssa214, %bb.i ]
  %i.db = phi i64 [ %.lcssa91, %._crit_edge.i ], [ %i.ce, %bb.i ]
  %.sroa.0.1.lcssa.i = phi i64 [ %.lcssa, %._crit_edge.i ], [ %.sroa.0.0.i, %bb.i ] ; 3 uses
  %i.dc = icmp samesign ugt i64 %2, 3
  br i1 %i.dc, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.dd = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.0.1.lcssa.i
  %.sroa.014.0.copyload.i16.i = load i32, ptr %i.dd, align 1, !alias.scope !4754, !noalias !4751
  %i.de = zext i32 %.sroa.014.0.copyload.i16.i to i64
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.sroa.03.0.i10.i = phi i64 [ 4, %bb.m ], [ 0, %bb.l ] ; 5 uses
  %.sroa.0.0.i11.i = phi i64 [ %i.de, %bb.m ], [ 0, %bb.l ] ; 2 uses
  %i.df = or disjoint i64 %.sroa.03.0.i10.i, 1
  %i.dg = icmp samesign ult i64 %i.df, %2
  br i1 %i.dg, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.dh = getelementptr i8, ptr %i.a, i64 %.sroa.0.1.lcssa.i
  %i.di = getelementptr i8, ptr %i.dh, i64 %.sroa.03.0.i10.i
  %.sroa.015.0.copyload.i15.i = load i16, ptr %i.di, align 1, !alias.scope !4754, !noalias !4751
  %i.dj = zext i16 %.sroa.015.0.copyload.i15.i to i64
  %i.dk = shl nuw nsw i64 %.sroa.03.0.i10.i, 3
  %i.dl = shl nuw nsw i64 %i.dj, %i.dk
  %i.dm = or i64 %i.dl, %.sroa.0.0.i11.i
  %i.dn = or disjoint i64 %.sroa.03.0.i10.i, 2
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.sroa.03.1.i12.i = phi i64 [ %i.dn, %bb.o ], [ %.sroa.03.0.i10.i, %bb.n ] ; 3 uses
  %.sroa.0.1.i13.i = phi i64 [ %i.dm, %bb.o ], [ %.sroa.0.0.i11.i, %bb.n ] ; 2 uses
  %i.do = icmp samesign ult i64 %.sroa.03.1.i12.i, %2
  br i1 %i.do, label %bb.q, label %_RNvNtCs83m0le5ggt2_9siphasher6sip1289u8to64_le.exit17.i

bb.q:                                             ; preds = %bb.p
  %i.dp = add nuw nsw i64 %.sroa.03.1.i12.i, %.sroa.0.1.lcssa.i ; 2 uses
  %i.dq = icmp samesign ult i64 %i.dp, 16
  tail call void @llvm.assume(i1 %i.dq), !noalias !4743
  %i.dr = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.dp
  %i.ds = load i8, ptr %i.dr, align 1, !alias.scope !4754, !noalias !4751, !noundef !57
  %i.dt = zext i8 %i.ds to i64
  %i.du = shl nuw nsw i64 %.sroa.03.1.i12.i, 3
  %i.dv = shl nuw nsw i64 %i.dt, %i.du
  %i.dw = or i64 %i.dv, %.sroa.0.1.i13.i
  br label %_RNvNtCs83m0le5ggt2_9siphasher6sip1289u8to64_le.exit17.i

_RNvNtCs83m0le5ggt2_9siphasher6sip1289u8to64_le.exit17.i: ; preds = %bb.q, %bb.p
  %.sroa.0.2.i14.i = phi i64 [ %i.dw, %bb.q ], [ %.sroa.0.1.i13.i, %bb.p ] ; 2 uses
  store i64 %.sroa.0.2.i14.i, ptr %i.d, align 8, !alias.scope !4747, !noalias !4749
  br label %_RNvXsb_NtCs83m0le5ggt2_9siphasher6sip128INtB5_6HasherNtB5_11Sip13RoundsENtNtCs3oUPovFnLWP_4core4hash6Hasher5writeCs9gmjTwvRRSu_10typst_html.exit

.lr.ph.i:                                         ; preds = %bb.i
  %i.dx = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.0.0.i
  %.sroa.07.0.copyload.i = load i64, ptr %i.dx, align 1, !alias.scope !4748, !noalias !4751 ; 2 uses
  %i.dy = xor i64 %.sroa.07.0.copyload.i, %i.ce   ; 3 uses
  %i.dz = add i64 %.lcssa214, %i.cd               ; 3 uses
  %i.ea = tail call noundef i64 @llvm.fshl.i64(i64 %i.cd, i64 %i.cd, i64 13)
  %i.eb = xor i64 %i.dz, %i.ea                    ; 3 uses
  %i.ec = tail call noundef i64 @llvm.fshl.i64(i64 %i.dz, i64 %i.dz, i64 32)
  %i.ed = add i64 %i.dy, %i.cc                    ; 2 uses
  %i.ee = tail call noundef i64 @llvm.fshl.i64(i64 %i.dy, i64 %i.dy, i64 16)
  %i.ef = xor i64 %i.ed, %i.ee                    ; 3 uses
  %i.eg = add i64 %i.ef, %i.ec                    ; 2 uses
  %i.eh = tail call noundef i64 @llvm.fshl.i64(i64 %i.ef, i64 %i.ef, i64 21)
  %i.ei = xor i64 %i.eh, %i.eg                    ; 2 uses
  %i.ej = add i64 %i.ed, %i.eb                    ; 3 uses
  %i.ek = tail call noundef i64 @llvm.fshl.i64(i64 %i.eb, i64 %i.eb, i64 17)
  %i.el = xor i64 %i.ej, %i.ek                    ; 4 uses
  %i.em = tail call noundef i64 @llvm.fshl.i64(i64 %i.ej, i64 %i.ej, i64 32) ; 2 uses
  %i.en = xor i64 %i.eg, %.sroa.07.0.copyload.i   ; 2 uses
  %i.eo = add nuw nsw i64 %.sroa.0.0.i, 8         ; 3 uses
  %i.ep = icmp samesign ult i64 %i.eo, %i.cg
  br i1 %i.ep, label %.lr.ph.i.1, label %._crit_edge.i

.lr.ph.i.1:                                       ; preds = %.lr.ph.i
  %i.eq = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.eo
  %.sroa.07.0.copyload.i.1 = load i64, ptr %i.eq, align 1, !alias.scope !4748, !noalias !4751 ; 2 uses
  %i.er = xor i64 %.sroa.07.0.copyload.i.1, %i.ei ; 3 uses
  %i.es = add i64 %i.en, %i.el                    ; 3 uses
  %i.et = tail call noundef i64 @llvm.fshl.i64(i64 %i.el, i64 %i.el, i64 13)
  %i.eu = xor i64 %i.es, %i.et                    ; 3 uses
  %i.ev = tail call noundef i64 @llvm.fshl.i64(i64 %i.es, i64 %i.es, i64 32)
  %i.ew = add i64 %i.er, %i.em                    ; 2 uses
  %i.ex = tail call noundef i64 @llvm.fshl.i64(i64 %i.er, i64 %i.er, i64 16)
  %i.ey = xor i64 %i.ew, %i.ex                    ; 3 uses
  %i.ez = add i64 %i.ey, %i.ev                    ; 2 uses
  %i.fa = tail call noundef i64 @llvm.fshl.i64(i64 %i.ey, i64 %i.ey, i64 21)
  %i.fb = xor i64 %i.fa, %i.ez                    ; 2 uses
  %i.fc = add i64 %i.ew, %i.eu                    ; 3 uses
  %i.fd = tail call noundef i64 @llvm.fshl.i64(i64 %i.eu, i64 %i.eu, i64 17)
  %i.fe = xor i64 %i.fc, %i.fd                    ; 4 uses
  %i.ff = tail call noundef i64 @llvm.fshl.i64(i64 %i.fc, i64 %i.fc, i64 32) ; 2 uses
  %i.fg = xor i64 %i.ez, %.sroa.07.0.copyload.i.1 ; 2 uses
  %i.fh = add nuw nsw i64 %.sroa.0.0.i, 16        ; 3 uses
  %i.fi = icmp samesign ult i64 %i.fh, %i.cg
  br i1 %i.fi, label %.lr.ph.i.2, label %._crit_edge.i

.lr.ph.i.2:                                       ; preds = %.lr.ph.i.1
  %i.fj = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.fh
  %.sroa.07.0.copyload.i.2 = load i64, ptr %i.fj, align 1, !alias.scope !4748, !noalias !4751 ; 2 uses
  %i.fk = xor i64 %.sroa.07.0.copyload.i.2, %i.fb ; 3 uses
  %i.fl = add i64 %i.fg, %i.fe                    ; 3 uses
  %i.fm = tail call noundef i64 @llvm.fshl.i64(i64 %i.fe, i64 %i.fe, i64 13)
  %i.fn = xor i64 %i.fl, %i.fm                    ; 3 uses
  %i.fo = tail call noundef i64 @llvm.fshl.i64(i64 %i.fl, i64 %i.fl, i64 32)
  %i.fp = add i64 %i.fk, %i.ff                    ; 2 uses
  %i.fq = tail call noundef i64 @llvm.fshl.i64(i64 %i.fk, i64 %i.fk, i64 16)
  %i.fr = xor i64 %i.fp, %i.fq                    ; 3 uses
  %i.fs = add i64 %i.fr, %i.fo                    ; 2 uses
  %i.ft = tail call noundef i64 @llvm.fshl.i64(i64 %i.fr, i64 %i.fr, i64 21)
  %i.fu = xor i64 %i.ft, %i.fs                    ; 2 uses
  %i.fv = add i64 %i.fp, %i.fn                    ; 3 uses
  %i.fw = tail call noundef i64 @llvm.fshl.i64(i64 %i.fn, i64 %i.fn, i64 17)
  %i.fx = xor i64 %i.fv, %i.fw                    ; 4 uses
  %i.fy = tail call noundef i64 @llvm.fshl.i64(i64 %i.fv, i64 %i.fv, i64 32) ; 2 uses
  %i.fz = xor i64 %i.fs, %.sroa.07.0.copyload.i.2 ; 2 uses
  %i.ga = add nuw nsw i64 %.sroa.0.0.i, 24        ; 3 uses
  %i.gb = icmp samesign ult i64 %i.ga, %i.cg
  br i1 %i.gb, label %.lr.ph.i.3, label %._crit_edge.i

.lr.ph.i.3:                                       ; preds = %.lr.ph.i.2
  %i.gc = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ga
  %.sroa.07.0.copyload.i.3 = load i64, ptr %i.gc, align 1, !alias.scope !4748, !noalias !4751 ; 2 uses
  %i.gd = xor i64 %.sroa.07.0.copyload.i.3, %i.fu ; 3 uses
  %i.ge = add i64 %i.fz, %i.fx                    ; 3 uses
  %i.gf = tail call noundef i64 @llvm.fshl.i64(i64 %i.fx, i64 %i.fx, i64 13)
  %i.gg = xor i64 %i.ge, %i.gf                    ; 3 uses
  %i.gh = tail call noundef i64 @llvm.fshl.i64(i64 %i.ge, i64 %i.ge, i64 32)
  %i.gi = add i64 %i.gd, %i.fy                    ; 2 uses
  %i.gj = tail call noundef i64 @llvm.fshl.i64(i64 %i.gd, i64 %i.gd, i64 16)
  %i.gk = xor i64 %i.gi, %i.gj                    ; 3 uses
  %i.gl = add i64 %i.gk, %i.gh                    ; 2 uses
  %i.gm = tail call noundef i64 @llvm.fshl.i64(i64 %i.gk, i64 %i.gk, i64 21)
  %i.gn = xor i64 %i.gm, %i.gl
  %i.go = add i64 %i.gi, %i.gg                    ; 3 uses
  %i.gp = tail call noundef i64 @llvm.fshl.i64(i64 %i.gg, i64 %i.gg, i64 17)
  %i.gq = xor i64 %i.go, %i.gp
  %i.gr = tail call noundef i64 @llvm.fshl.i64(i64 %i.go, i64 %i.go, i64 32)
  %i.gs = xor i64 %i.gl, %.sroa.07.0.copyload.i.3
  %i.gt = or disjoint i64 %.sroa.0.0.i, 32
  br label %._crit_edge.i

_RNvXsb_NtCs83m0le5ggt2_9siphasher6sip128INtB5_6HasherNtB5_11Sip13RoundsENtNtCs3oUPovFnLWP_4core4hash6Hasher5writeCs9gmjTwvRRSu_10typst_html.exit: ; preds = %bb.k, %_RNvNtCs83m0le5ggt2_9siphasher6sip1289u8to64_le.exit17.i
  %.promoted1645 = phi i64 [ %.promoted1648, %bb.k ], [ %.promoted1646, %_RNvNtCs83m0le5ggt2_9siphasher6sip1289u8to64_le.exit17.i ] ; 2 uses
  %.promoted1536 = phi i64 [ %.promoted1539, %bb.k ], [ %.promoted1537, %_RNvNtCs83m0le5ggt2_9siphasher6sip1289u8to64_le.exit17.i ] ; 2 uses
  %.promoted1027 = phi i64 [ %.promoted1030, %bb.k ], [ %.promoted1028, %_RNvNtCs83m0le5ggt2_9siphasher6sip1289u8to64_le.exit17.i ] ; 2 uses
  %.promoted918 = phi i64 [ %.promoted921, %bb.k ], [ %.promoted919, %_RNvNtCs83m0le5ggt2_9siphasher6sip1289u8to64_le.exit17.i ] ; 2 uses
  %i.gu = phi i64 [ %i.aq, %bb.k ], [ %i.cz, %_RNvNtCs83m0le5ggt2_9siphasher6sip1289u8to64_le.exit17.i ]
  %i.gv = phi i64 [ %i.ar, %bb.k ], [ %i.da, %_RNvNtCs83m0le5ggt2_9siphasher6sip1289u8to64_le.exit17.i ]
  %.lcssa212 = phi i64 [ %.lcssa211, %bb.k ], [ %.lcssa213, %_RNvNtCs83m0le5ggt2_9siphasher6sip1289u8to64_le.exit17.i ]
  %i.gw = phi i64 [ %i.as, %bb.k ], [ %i.db, %_RNvNtCs83m0le5ggt2_9siphasher6sip1289u8to64_le.exit17.i ]
  %i.gx = phi i64 [ %i.ca, %bb.k ], [ %.sroa.0.2.i14.i, %_RNvNtCs83m0le5ggt2_9siphasher6sip1289u8to64_le.exit17.i ] ; 2 uses
  %storemerge.i = phi i64 [ %i.cy, %bb.k ], [ %2, %_RNvNtCs83m0le5ggt2_9siphasher6sip1289u8to64_le.exit17.i ] ; 4 uses
  store i64 %storemerge.i, ptr %i.c, align 8, !alias.scope !4747, !noalias !4749
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4746
  %i.gy = icmp eq ptr %i.aw, %i.ao
  br i1 %i.gy, label %_RINvYINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleENtNtCs3oUPovFnLWP_4core4hash4Hash10hash_sliceNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECs9gmjTwvRRSu_10typst_html.exit.i, label %.lr.ph.i.i

_RINvYINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleENtNtCs3oUPovFnLWP_4core4hash4Hash10hash_sliceNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECs9gmjTwvRRSu_10typst_html.exit.i: ; preds = %_RNvXsb_NtCs83m0le5ggt2_9siphasher6sip128INtB5_6HasherNtB5_11Sip13RoundsENtNtCs3oUPovFnLWP_4core4hash6Hasher5writeCs9gmjTwvRRSu_10typst_html.exit, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher19write_length_prefixCs9gmjTwvRRSu_10typst_html.exit.i
  %.promoted756 = phi i64 [ %.promoted757, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher19write_length_prefixCs9gmjTwvRRSu_10typst_html.exit.i ], [ %storemerge.i, %_RNvXsb_NtCs83m0le5ggt2_9siphasher6sip128INtB5_6HasherNtB5_11Sip13RoundsENtNtCs3oUPovFnLWP_4core4hash6Hasher5writeCs9gmjTwvRRSu_10typst_html.exit ]
  %.promoted1651 = phi i64 [ %.promoted1652, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher19write_length_prefixCs9gmjTwvRRSu_10typst_html.exit.i ], [ %.promoted1645, %_RNvXsb_NtCs83m0le5ggt2_9siphasher6sip128INtB5_6HasherNtB5_11Sip13RoundsENtNtCs3oUPovFnLWP_4core4hash6Hasher5writeCs9gmjTwvRRSu_10typst_html.exit ] ; 2 uses
  %.promoted1542 = phi i64 [ %.promoted1543, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher19write_length_prefixCs9gmjTwvRRSu_10typst_html.exit.i ], [ %.promoted1536, %_RNvXsb_NtCs83m0le5ggt2_9siphasher6sip128INtB5_6HasherNtB5_11Sip13RoundsENtNtCs3oUPovFnLWP_4core4hash6Hasher5writeCs9gmjTwvRRSu_10typst_html.exit ] ; 4 uses
  %.promoted1033 = phi i64 [ %.promoted1034, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher19write_length_prefixCs9gmjTwvRRSu_10typst_html.exit.i ], [ %.promoted1027, %_RNvXsb_NtCs83m0le5ggt2_9siphasher6sip128INtB5_6HasherNtB5_11Sip13RoundsENtNtCs3oUPovFnLWP_4core4hash6Hasher5writeCs9gmjTwvRRSu_10typst_html.exit ] ; 2 uses
  %.promoted924 = phi i64 [ %.promoted925, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher19write_length_prefixCs9gmjTwvRRSu_10typst_html.exit.i ], [ %.promoted918, %_RNvXsb_NtCs83m0le5ggt2_9siphasher6sip128INtB5_6HasherNtB5_11Sip13RoundsENtNtCs3oUPovFnLWP_4core4hash6Hasher5writeCs9gmjTwvRRSu_10typst_html.exit ] ; 2 uses
  %i.gz = phi i64 [ %i.am, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher19write_length_prefixCs9gmjTwvRRSu_10typst_html.exit.i ], [ %i.gx, %_RNvXsb_NtCs83m0le5ggt2_9siphasher6sip128INtB5_6HasherNtB5_11Sip13RoundsENtNtCs3oUPovFnLWP_4core4hash6Hasher5writeCs9gmjTwvRRSu_10typst_html.exit ]
  %i.ha = phi i64 [ %i.an, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher19write_length_prefixCs9gmjTwvRRSu_10typst_html.exit.i ], [ %storemerge.i, %_RNvXsb_NtCs83m0le5ggt2_9siphasher6sip128INtB5_6HasherNtB5_11Sip13RoundsENtNtCs3oUPovFnLWP_4core4hash6Hasher5writeCs9gmjTwvRRSu_10typst_html.exit ] ; 5 uses
  %i.hb = phi i64 [ %i.n, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher19write_length_prefixCs9gmjTwvRRSu_10typst_html.exit.i ], [ %i.bd, %_RNvXsb_NtCs83m0le5ggt2_9siphasher6sip128INtB5_6HasherNtB5_11Sip13RoundsENtNtCs3oUPovFnLWP_4core4hash6Hasher5writeCs9gmjTwvRRSu_10typst_html.exit ]
  %i.hc = getelementptr inbounds nuw i8, ptr %.tr.i, i64 16
  %i.hd = load ptr, ptr %i.hc, align 8, !noalias !4741, !align !63, !noundef !57 ; 3 uses
  %i.he = icmp ne ptr %i.hd, null
  %i.hf = zext i1 %i.he to i64                    ; 2 uses
  %i.hg = add i64 %i.hb, 8                        ; 2 uses
  store i64 %i.hg, ptr %i.b, align 8, !alias.scope !4755, !noalias !4743
  %i.hh = shl i64 %i.ha, 3                        ; 2 uses
  %i.hi = and i64 %i.hh, 56
  %i.hj = shl nuw nsw i64 %i.hf, %i.hi
  %i.hk = or i64 %i.hj, %i.gz                     ; 4 uses
  store i64 %i.hk, ptr %i.d, align 8, !alias.scope !4755, !noalias !4743
  %i.hl = icmp ugt i64 %i.ha, 8
  br i1 %i.hl, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_RINvYINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleENtNtCs3oUPovFnLWP_4core4hash4Hash10hash_sliceNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECs9gmjTwvRRSu_10typst_html.exit.i
  %i.hm = xor i64 %.promoted924, %i.hk            ; 3 uses
  %i.hn = add i64 %.promoted1542, %.promoted1033  ; 3 uses
  %i.ho = tail call noundef i64 @llvm.fshl.i64(i64 %.promoted1542, i64 %.promoted1542, i64 13)
  %i.hp = xor i64 %i.ho, %i.hn                    ; 3 uses
  %i.hq = tail call noundef i64 @llvm.fshl.i64(i64 %i.hn, i64 %i.hn, i64 32)
  %i.hr = add i64 %.promoted1651, %i.hm           ; 2 uses
  %i.hs = tail call noundef i64 @llvm.fshl.i64(i64 %i.hm, i64 %i.hm, i64 16)
  %i.ht = xor i64 %i.hr, %i.hs                    ; 3 uses
  %i.hu = add i64 %i.ht, %i.hq                    ; 2 uses
  %i.hv = tail call noundef i64 @llvm.fshl.i64(i64 %i.ht, i64 %i.ht, i64 21)
  %i.hw = xor i64 %i.hv, %i.hu                    ; 2 uses
  store i64 %i.hw, ptr %i.e, align 8, !alias.scope !4756, !noalias !4743
  %i.hx = add i64 %i.hr, %i.hp                    ; 3 uses
  %i.hy = tail call noundef i64 @llvm.fshl.i64(i64 %i.hp, i64 %i.hp, i64 17)
  %i.hz = xor i64 %i.hx, %i.hy                    ; 2 uses
  store i64 %i.hz, ptr %i.f, align 8, !alias.scope !4756, !noalias !4743
  %i.ia = tail call noundef i64 @llvm.fshl.i64(i64 %i.hx, i64 %i.hx, i64 32) ; 2 uses
  store i64 %i.ia, ptr %i.g, align 8, !alias.scope !4756, !noalias !4743
  %i.ib = xor i64 %i.hu, %i.hk                    ; 2 uses
end_hunk_0
begin_hunk_1_@_RNvMNtCs9gmjTwvRRSu_10typst_html3domNtB2_12HtmlDocument16introspector_mut:bb.a

bb.al:                                            ; preds = %_RNvXNtCskt5MLIAl8nl_9hashbrown3mapINtB2_7HashMapNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejENtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherENtNtB1X_5clone5Clone5cloneCs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i
  %i.hf = add i64 %i.hd, 1                        ; 3 uses
  %i.hg = icmp ugt i64 %i.hf, 576460752303423487
  br i1 %i.hg, label %bb.an, label %bb.am, !prof !60

bb.am:                                            ; preds = %bb.al
  %i.hh = shl nuw i64 %i.hf, 5                    ; 3 uses
  %i.hi = add nsw i64 %i.hd, 17                   ; 2 uses
  %i.hj = add i64 %i.hh, %i.hi                    ; 5 uses
  %i.hk = icmp ult i64 %i.hj, %i.hh
  %i.hl = icmp ugt i64 %i.hj, 9223372036854775792
  %or.cond.i.i.i.i35.i.i.i.i.i.i = or i1 %i.hk, %i.hl
  br i1 %or.cond.i.i.i.i35.i.i.i.i.i.i, label %bb.an, label %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i36.i.i.i.i.i.i, !prof !75

_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i36.i.i.i.i.i.i: ; preds = %bb.am
  %i.hm = icmp eq i64 %i.hj, 0
  br i1 %i.hm, label %bb.ap, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i37.i.i.i.i.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i37.i.i.i.i.i.i: ; preds = %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i36.i.i.i.i.i.i
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53, !noalias !12951
  %i.hn = tail call noundef align 16 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef %i.hj, i64 noundef range(i64 1, -9223372036854775807) 16) #53, !noalias !12951 ; 2 uses
  %i.ho = icmp eq ptr %i.hn, null
  br i1 %i.ho, label %bb.ao, label %bb.ap

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.hp = invoke { i64, i64 } @_RNvMNtCskt5MLIAl8nl_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true)
          to label %.noexc100.i.i.i.i.i.i unwind label %bb.aw, !noalias !12884

bb.ao:                                            ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i37.i.i.i.i.i.i
  %i.hq = invoke { i64, i64 } @_RNvMNtCskt5MLIAl8nl_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext true, i64 noundef 16, i64 noundef %i.hj)
          to label %.noexc100.i.i.i.i.i.i unwind label %bb.aw, !noalias !12884

.noexc100.i.i.i.i.i.i:                            ; preds = %bb.ao, %bb.an
  %.pn.i.i.i96.i.i.i.i.i.i = phi { i64, i64 } [ %i.hp, %bb.an ], [ %i.hq, %bb.ao ] ; 2 uses
  %.sroa.7.0.ph.i.i.i97.i.i.i.i.i.i = extractvalue { i64, i64 } %.pn.i.i.i96.i.i.i.i.i.i, 0 ; 2 uses
  %.sroa.12.0.ph.i.i.i98.i.i.i.i.i.i = extractvalue { i64, i64 } %.pn.i.i.i96.i.i.i.i.i.i, 1
  %.pre.i.i99.i.i.i.i.i.i = add i64 %.sroa.7.0.ph.i.i.i97.i.i.i.i.i.i, 17
  br label %_RNvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTNtNtNtCsdaEETE4DqmE_13typst_library11foundations5label5LabelINtCsiSzwKAiqS6b_8smallvec8SmallVecAjj1_EEE17new_uninitializedCs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i.i.i

bb.ap:                                            ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i37.i.i.i.i.i.i, %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i36.i.i.i.i.i.i
  %.sroa.0.0.i.i9.i.i.i.i38.i.i.i.i.i.i = phi ptr [ %i.hn, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i37.i.i.i.i.i.i ], [ inttoptr (i64 16 to ptr), %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i36.i.i.i.i.i.i ]
  %i.hr = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i9.i.i.i.i38.i.i.i.i.i.i, i64 %i.hh
  %i.hs = icmp ult i64 %i.hd, 8
  %i.ht = lshr i64 %i.hf, 3
  %i.hu = mul nuw nsw i64 %i.ht, 7
  %.sroa.07.0.i.i.i.i39.i.i.i.i.i.i = select i1 %i.hs, i64 %i.hd, i64 %i.hu
  br label %_RNvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTNtNtNtCsdaEETE4DqmE_13typst_library11foundations5label5LabelINtCsiSzwKAiqS6b_8smallvec8SmallVecAjj1_EEE17new_uninitializedCs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i.i.i

_RNvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTNtNtNtCsdaEETE4DqmE_13typst_library11foundations5label5LabelINtCsiSzwKAiqS6b_8smallvec8SmallVecAjj1_EEE17new_uninitializedCs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i.i.i: ; preds = %bb.ap, %.noexc100.i.i.i.i.i.i
  %.pre-phi.i.i40.i.i.i.i.i.i = phi i64 [ %.pre.i.i99.i.i.i.i.i.i, %.noexc100.i.i.i.i.i.i ], [ %i.hi, %bb.ap ]
  %.sroa.7.0.i.i41.i.i.i.i.i.i = phi i64 [ %.sroa.12.0.ph.i.i.i98.i.i.i.i.i.i, %.noexc100.i.i.i.i.i.i ], [ %.sroa.07.0.i.i.i.i39.i.i.i.i.i.i, %bb.ap ]
  %.sroa.5.0.i.i42.i.i.i.i.i.i = phi i64 [ %.sroa.7.0.ph.i.i.i97.i.i.i.i.i.i, %.noexc100.i.i.i.i.i.i ], [ %i.hd, %bb.ap ]
  %.sroa.0.0.i.i43.i.i.i.i.i.i = phi ptr [ null, %.noexc100.i.i.i.i.i.i ], [ %i.hr, %bb.ap ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !12952
  store ptr %.sroa.0.0.i.i43.i.i.i.i.i.i, ptr %i.d, align 8, !noalias !12952
  %.sroa.5.0..sroa_idx.i.i44.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %.sroa.5.0.i.i42.i.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i44.i.i.i.i.i.i, align 8, !noalias !12952
  %.sroa.7.0..sroa_idx.i.i45.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  store i64 %.sroa.7.0.i.i41.i.i.i.i.i.i, ptr %.sroa.7.0..sroa_idx.i.i45.i.i.i.i.i.i, align 8, !noalias !12952
  %.sroa.9.0..sroa_idx.i.i46.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  store i64 0, ptr %.sroa.9.0..sroa_idx.i.i46.i.i.i.i.i.i, align 8, !noalias !12952
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12953)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12954)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12955)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12956)
  %i.hv = load ptr, ptr %i.hb, align 8, !alias.scope !12957, !noalias !12958, !nonnull !57, !noundef !57 ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.0.0.i.i43.i.i.i.i.i.i, ptr nonnull align 1 %i.hv, i64 %.pre-phi.i.i40.i.i.i.i.i.i, i1 false), !noalias !12959
  %i.hw = getelementptr inbounds nuw i8, ptr %i.p, i64 128
  %i.hx = load i64, ptr %i.hw, align 8, !alias.scope !12957, !noalias !12958, !noundef !57 ; 3 uses
  %i.hy = icmp eq i64 %i.hx, 0
  br i1 %i.hy, label %.loopexit.i.i75.i.i.i.i.i.i, label %.lr.ph.i.i.i.i47.i.i.i.i.i.i

.lr.ph.i.i.i.i47.i.i.i.i.i.i:                     ; preds = %_RNvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTNtNtNtCsdaEETE4DqmE_13typst_library11foundations5label5LabelINtCsiSzwKAiqS6b_8smallvec8SmallVecAjj1_EEE17new_uninitializedCs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i.i.i
  %.val3.i.i.i.i.i48.i.i.i.i.i.i = load <16 x i8>, ptr %i.hv, align 16, !noalias !12960
  %i.hz = icmp sgt <16 x i8> %.val3.i.i.i.i.i48.i.i.i.i.i.i, splat (i8 -1)
  %i.ia = bitcast <16 x i1> %i.hz to i16
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hv, i64 16
  %i.ic = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 6 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  %i.ie = ptrtoint ptr %i.hv to i64
  br label %bb.aq

.body.i.i.i.i80.i.i.i.i.i.i:                      ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecjEECs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.loopexit.split-lp.i.i.i.i.i.i.i78.i.i.i.i.i.i
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskt5MLIAl8nl_9hashbrown10scopeguard10ScopeGuardTjQINtNtBG_3raw8RawTableTNtNtNtCsdaEETE4DqmE_13typst_library11foundations5label5LabelINtCsiSzwKAiqS6b_8smallvec8SmallVecAjj1_EEEENCNvMse_B1y_B1v_15clone_from_impl0EECs9gmjTwvRRSu_10typst_html(i64 %.sroa.011.045.i.i.i.i49.i.i.i.i.i.i, ptr nonnull align 8 dereferenceable(32) %i.d) #49, !noalias !12961
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskt5MLIAl8nl_9hashbrown3raw8RawTableTNtNtNtCsdaEETE4DqmE_13typst_library11foundations5label5LabelINtCsiSzwKAiqS6b_8smallvec8SmallVecAjj1_EEEECs9gmjTwvRRSu_10typst_html(ptr noalias nofree noundef align 8 dereferenceable(32) %i.d) #49, !noalias !12952
  br label %.body102.i.i.i.i.i.i

bb.aq:                                            ; preds = %.loopexit.i.i.i.i73.i.i.i.i.i.i, %.lr.ph.i.i.i.i47.i.i.i.i.i.i
  %.sroa.011.045.i.i.i.i49.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i47.i.i.i.i.i.i ], [ %i.lh, %.loopexit.i.i.i.i73.i.i.i.i.i.i ]
  %.sroa.012.044.i.i.i.i50.i.i.i.i.i.i = phi ptr [ %i.hv, %.lr.ph.i.i.i.i47.i.i.i.i.i.i ], [ %.sroa.012.1.i.i.i.i57.i.i.i.i.i.i, %.loopexit.i.i.i.i73.i.i.i.i.i.i ] ; 2 uses
  %.sroa.6.043.i.i.i.i51.i.i.i.i.i.i = phi ptr [ %i.ib, %.lr.ph.i.i.i.i47.i.i.i.i.i.i ], [ %.sroa.6.1.i.i.i.i56.i.i.i.i.i.i, %.loopexit.i.i.i.i73.i.i.i.i.i.i ] ; 2 uses
  %.sroa.813.042.i.i.i.i52.i.i.i.i.i.i = phi i16 [ %i.ia, %.lr.ph.i.i.i.i47.i.i.i.i.i.i ], [ %i.in, %.loopexit.i.i.i.i73.i.i.i.i.i.i ] ; 2 uses
  %.sroa.1014.041.i.i.i.i53.i.i.i.i.i.i = phi i64 [ %i.hx, %.lr.ph.i.i.i.i47.i.i.i.i.i.i ], [ %i.iq, %.loopexit.i.i.i.i73.i.i.i.i.i.i ]
  %.not11.i.i.i.i.i54.i.i.i.i.i.i = icmp eq i16 %.sroa.813.042.i.i.i.i52.i.i.i.i.i.i, 0
  br i1 %.not11.i.i.i.i.i54.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i92.i.i.i.i.i.i, label %.loopexit21.i.i.i.i55.i.i.i.i.i.i

.lr.ph.i.i.i.i.i92.i.i.i.i.i.i:                   ; preds = %bb.aq, %.lr.ph.i.i.i.i.i92.i.i.i.i.i.i
  %i.if = phi ptr [ %i.ij, %.lr.ph.i.i.i.i.i92.i.i.i.i.i.i ], [ %.sroa.6.043.i.i.i.i51.i.i.i.i.i.i, %bb.aq ] ; 2 uses
  %i.ig = phi ptr [ %i.ii, %.lr.ph.i.i.i.i.i92.i.i.i.i.i.i ], [ %.sroa.012.044.i.i.i.i50.i.i.i.i.i.i, %bb.aq ]
  %.val9.i.i.i.i.i93.i.i.i.i.i.i = load <16 x i8>, ptr %i.if, align 16, !noalias !12962
  %i.ih = icmp sgt <16 x i8> %.val9.i.i.i.i.i93.i.i.i.i.i.i, splat (i8 -1)
  %i.ii = getelementptr inbounds i8, ptr %i.ig, i64 -512 ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.if, i64 16 ; 2 uses
  %.cast.i.i.i.i.i94.i.i.i.i.i.i = bitcast <16 x i1> %i.ih to i16 ; 2 uses
  %.not.i.i.i.i.i95.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i94.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i95.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i92.i.i.i.i.i.i, label %.loopexit21.i.i.i.i55.i.i.i.i.i.i

.loopexit21.i.i.i.i55.i.i.i.i.i.i:                ; preds = %.lr.ph.i.i.i.i.i92.i.i.i.i.i.i, %bb.aq
  %.sroa.6.1.i.i.i.i56.i.i.i.i.i.i = phi ptr [ %.sroa.6.043.i.i.i.i51.i.i.i.i.i.i, %bb.aq ], [ %i.ij, %.lr.ph.i.i.i.i.i92.i.i.i.i.i.i ]
  %.sroa.012.1.i.i.i.i57.i.i.i.i.i.i = phi ptr [ %.sroa.012.044.i.i.i.i50.i.i.i.i.i.i, %bb.aq ], [ %i.ii, %.lr.ph.i.i.i.i.i92.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i58.i.i.i.i.i.i = phi i16 [ %.sroa.813.042.i.i.i.i52.i.i.i.i.i.i, %bb.aq ], [ %.cast.i.i.i.i.i94.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i92.i.i.i.i.i.i ] ; 3 uses
  %i.ik = add i16 %.lcssa.i.i.i.i.i58.i.i.i.i.i.i, -1
  %i.il = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i58.i.i.i.i.i.i, i1 true)
  %i.im = zext nneg i16 %i.il to i64
  %i.in = and i16 %i.ik, %.lcssa.i.i.i.i.i58.i.i.i.i.i.i
  %i.io = sub nsw i64 0, %i.im
  %i.ip = getelementptr inbounds [32 x i8], ptr %.sroa.012.1.i.i.i.i57.i.i.i.i.i.i, i64 %i.io ; 5 uses
  %i.iq = add i64 %.sroa.1014.041.i.i.i.i53.i.i.i.i.i.i, -1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i.i.i34.i.i.i.i.i.i)
  %i.ir = getelementptr inbounds i8, ptr %i.ip, i64 -32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12963)
  %.val.i.i.i.i.i59.i.i.i.i.i.i = load i64, ptr %i.ir, align 8, !range !66, !alias.scope !12963, !noalias !12964, !noundef !57
  %i.is = getelementptr inbounds i8, ptr %i.ip, i64 -24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12965)
  %i.it = getelementptr inbounds i8, ptr %i.ip, i64 -8
  %i.iu = load i64, ptr %i.it, align 8, !alias.scope !12966, !noalias !12967, !noundef !57 ; 2 uses
  %i.iv = icmp ugt i64 %i.iu, 1                   ; 2 uses
  %i.iw = load ptr, ptr %i.is, align 8, !alias.scope !12966, !noalias !12967, !nonnull !57
  %i.ix = getelementptr inbounds i8, ptr %i.ip, i64 -16
  %i.iy = load i64, ptr %i.ix, align 8, !alias.scope !12966, !noalias !12967
  %.sink11.i.i.i.i.i.i.i60.i.i.i.i.i.i = select i1 %i.iv, ptr %i.iw, ptr %i.is ; 7 uses
  %.sink11.i.i.i.i.i.i.i60.i.i.i.i.i.i206 = ptrtoaddr ptr %.sink11.i.i.i.i.i.i.i60.i.i.i.i.i.i to i64
  %.sink10.i.i.i.i.i.i.i61.i.i.i.i.i.i = select i1 %i.iv, i64 %i.iy, i64 %i.iu ; 4 uses
  %i.iz = getelementptr inbounds nuw [8 x i8], ptr %.sink11.i.i.i.i.i.i.i60.i.i.i.i.i.i, i64 %.sink10.i.i.i.i.i.i.i61.i.i.i.i.i.i ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !12968
  store i64 0, ptr %i.ic, align 8, !noalias !12968
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12969)
  %.not.i.i.i.i.i.i.i.i.i62.i.i.i.i.i.i = icmp ugt i64 %.sink10.i.i.i.i.i.i.i61.i.i.i.i.i.i, 1
  br i1 %.not.i.i.i.i.i.i.i.i.i62.i.i.i.i.i.i, label %_RNvMsd_CsiSzwKAiqS6b_8smallvecINtB5_8SmallVecAjj1_E11try_reserveCs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RINvCsiSzwKAiqS6b_8smallvec10infallibleuECs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i.i.i63.i.i.i.i.i.i

_RNvMsd_CsiSzwKAiqS6b_8smallvecINtB5_8SmallVecAjj1_E11try_reserveCs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.loopexit21.i.i.i.i55.i.i.i.i.i.i
  %i.ja = add nsw i64 %.sink10.i.i.i.i.i.i.i61.i.i.i.i.i.i, -1
  %i.jb = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ja, i1 true)
  %i.jc = lshr i64 -1, %i.jb
  %i.jd = add nuw nsw i64 %i.jc, 1
  %i.je = invoke fastcc { i64, i64 } @_RNvMsd_CsiSzwKAiqS6b_8smallvecINtB5_8SmallVecAjj1_E8try_growCs9gmjTwvRRSu_10typst_html(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.jd)
          to label %.noexc.i.i.i.i.i.i.i86.i.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.loopexit.i.i.i.i84.i.i.i.i.i.i, !noalias !12968 ; 2 uses

.noexc.i.i.i.i.i.i.i86.i.i.i.i.i.i:               ; preds = %_RNvMsd_CsiSzwKAiqS6b_8smallvecINtB5_8SmallVecAjj1_E11try_reserveCs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.jf = extractvalue { i64, i64 } %i.je, 0      ; 2 uses
  switch i64 %i.jf, label %bb.ar [
    i64 -1, label %_RNvMsd_CsiSzwKAiqS6b_8smallvecINtB5_8SmallVecAjj1_E11try_reserveCs9gmjTwvRRSu_10typst_html.exit._RINvCsiSzwKAiqS6b_8smallvec10infallibleuECs9gmjTwvRRSu_10typst_html.exit_crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i
    i64 0, label %_RNvMsd_CsiSzwKAiqS6b_8smallvecINtB5_8SmallVecAjj1_E11try_reserveCs9gmjTwvRRSu_10typst_html.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  ], !prof !137

_RNvMsd_CsiSzwKAiqS6b_8smallvecINtB5_8SmallVecAjj1_E11try_reserveCs9gmjTwvRRSu_10typst_html.exit._RINvCsiSzwKAiqS6b_8smallvec10infallibleuECs9gmjTwvRRSu_10typst_html.exit_crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc.i.i.i.i.i.i.i86.i.i.i.i.i.i
  %.pre.i.i.i.i.i.i.i.i89.i.i.i.i.i.i = load i64, ptr %i.ic, align 8, !alias.scope !12970, !noalias !12971 ; 2 uses
  %.pre57.i.i.i.i.i.i.i.i90.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %.pre.i.i.i.i.i.i.i.i89.i.i.i.i.i.i, i64 1)
  %.pre.i.i.i.i.i.i.i91.i.i.i.i.i.i = load ptr, ptr %i.c, align 8, !alias.scope !12970, !noalias !12971
  br label %_RINvCsiSzwKAiqS6b_8smallvec10infallibleuECs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i.i.i63.i.i.i.i.i.i

bb.ar:                                            ; preds = %.noexc.i.i.i.i.i.i.i86.i.i.i.i.i.i
  %i.jg = extractvalue { i64, i64 } %i.je, 1
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) %i.jf, i64 noundef %i.jg) #54
          to label %.noexc9.i.i.i.i.i.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.loopexit.split-lp.i.i.i.i87.i.i.i.i.i.i, !noalias !12968

.noexc9.i.i.i.i.i.i.i.i.i.i.i.i.i:                ; preds = %bb.ar
  unreachable

_RNvMsd_CsiSzwKAiqS6b_8smallvecINtB5_8SmallVecAjj1_E11try_reserveCs9gmjTwvRRSu_10typst_html.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc.i.i.i.i.i.i.i86.i.i.i.i.i.i
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #51
          to label %.noexc10.i.i.i.i.i.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.loopexit.split-lp.i.i.i.i87.i.i.i.i.i.i, !noalias !12968

.noexc10.i.i.i.i.i.i.i.i.i.i.i.i.i:               ; preds = %_RNvMsd_CsiSzwKAiqS6b_8smallvecINtB5_8SmallVecAjj1_E11try_reserveCs9gmjTwvRRSu_10typst_html.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  unreachable

_RINvCsiSzwKAiqS6b_8smallvec10infallibleuECs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i.i.i63.i.i.i.i.i.i: ; preds = %_RNvMsd_CsiSzwKAiqS6b_8smallvecINtB5_8SmallVecAjj1_E11try_reserveCs9gmjTwvRRSu_10typst_html.exit._RINvCsiSzwKAiqS6b_8smallvec10infallibleuECs9gmjTwvRRSu_10typst_html.exit_crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.loopexit21.i.i.i.i55.i.i.i.i.i.i
  %i.jh = phi ptr [ %.pre.i.i.i.i.i.i.i91.i.i.i.i.i.i, %_RNvMsd_CsiSzwKAiqS6b_8smallvecINtB5_8SmallVecAjj1_E11try_reserveCs9gmjTwvRRSu_10typst_html.exit._RINvCsiSzwKAiqS6b_8smallvec10infallibleuECs9gmjTwvRRSu_10typst_html.exit_crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ undef, %.loopexit21.i.i.i.i55.i.i.i.i.i.i ]
  %.sink.i.pre-phi.i.i.i.i.i.i.i.i64.i.i.i.i.i.i = phi i64 [ %.pre57.i.i.i.i.i.i.i.i90.i.i.i.i.i.i, %_RNvMsd_CsiSzwKAiqS6b_8smallvecINtB5_8SmallVecAjj1_E11try_reserveCs9gmjTwvRRSu_10typst_html.exit._RINvCsiSzwKAiqS6b_8smallvec10infallibleuECs9gmjTwvRRSu_10typst_html.exit_crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 1, %.loopexit21.i.i.i.i55.i.i.i.i.i.i ]
  %i.ji = phi i64 [ %.pre.i.i.i.i.i.i.i.i89.i.i.i.i.i.i, %_RNvMsd_CsiSzwKAiqS6b_8smallvecINtB5_8SmallVecAjj1_E11try_reserveCs9gmjTwvRRSu_10typst_html.exit._RINvCsiSzwKAiqS6b_8smallvec10infallibleuECs9gmjTwvRRSu_10typst_html.exit_crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %.loopexit21.i.i.i.i55.i.i.i.i.i.i ] ; 3 uses
  %i.jj = icmp ugt i64 %i.ji, 1                   ; 2 uses
  %.sink10.i.i.i.i.i.i.i.i.i65.i.i.i.i.i.i = select i1 %i.jj, ptr %i.jh, ptr %i.c ; 3 uses
  %.sink10.i.i.i.i.i.i.i.i.i65.i.i.i.i.i.i205 = ptrtoaddr ptr %.sink10.i.i.i.i.i.i.i.i.i65.i.i.i.i.i.i to i64
  %.sink9.i.i.i.i.i.i.i.i.i66.i.i.i.i.i.i = select i1 %i.jj, ptr %i.id, ptr %i.ic ; 3 uses
  %i.jk = load i64, ptr %.sink9.i.i.i.i.i.i.i.i.i66.i.i.i.i.i.i, align 8, !alias.scope !12969, !noalias !12968, !noundef !57 ; 9 uses
  %i.jl = icmp ult i64 %i.jk, %.sink.i.pre-phi.i.i.i.i.i.i.i.i64.i.i.i.i.i.i
  br i1 %i.jl, label %.lr.ph.i.i.i.i.i.i.i.i83.i.i.i.i.i.i.preheader, label %._crit_edge.i.i.i.i.i.i.i.i67.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i83.i.i.i.i.i.i.preheader:   ; preds = %_RINvCsiSzwKAiqS6b_8smallvec10infallibleuECs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i.i.i63.i.i.i.i.i.i
  %i.jm = and i64 %.sink10.i.i.i.i.i.i.i61.i.i.i.i.i.i, 2305843009213693951
  %i.jn = add i64 %i.jk, 1
  %i.jo = call i64 @llvm.umax.i64(i64 %i.ji, i64 %i.jn)
  %i.jp = xor i64 %i.jk, -1
  %i.jq = add i64 %i.jo, %i.jp
  %i.jr = call i64 @llvm.umin.i64(i64 %i.jm, i64 %i.jq) ; 2 uses
  %i.js = add nuw nsw i64 %i.jr, 1                ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.jr, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i83.i.i.i.i.i.i.preheader212, label %vector.memcheck

.lr.ph.i.i.i.i.i.i.i.i83.i.i.i.i.i.i.preheader212: ; preds = %vector.body, %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.i83.i.i.i.i.i.i.preheader
  %storemerge50.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.jk, %vector.memcheck ], [ %i.jk, %.lr.ph.i.i.i.i.i.i.i.i83.i.i.i.i.i.i.preheader ], [ %1, %vector.body ]
  %.sroa.0.049.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %.sink11.i.i.i.i.i.i.i60.i.i.i.i.i.i, %vector.memcheck ], [ %.sink11.i.i.i.i.i.i.i60.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i83.i.i.i.i.i.i.preheader ], [ %3, %vector.body ]
  br label %.lr.ph.i.i.i.i.i.i.i.i83.i.i.i.i.i.i

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i83.i.i.i.i.i.i.preheader
  %i.jt = shl i64 %i.jk, 3
  %i.ju = add i64 %i.jt, %.sink10.i.i.i.i.i.i.i.i.i65.i.i.i.i.i.i205
  %i.jv = sub i64 %.sink11.i.i.i.i.i.i.i60.i.i.i.i.i.i206, %i.ju
  %diff.check = icmp ugt i64 %i.jv, -32
  br i1 %diff.check, label %.lr.ph.i.i.i.i.i.i.i.i83.i.i.i.i.i.i.preheader212, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.jw = and i64 %i.js, 3                        ; 2 uses
  %i.jx = icmp eq i64 %i.jw, 0
  %i.jy = select i1 %i.jx, i64 4, i64 %i.jw
  %n.vec = sub nsw i64 %i.js, %i.jy               ; 3 uses
  %1 = add i64 %i.jk, %n.vec
  %2 = shl i64 %n.vec, 3
  %3 = getelementptr i8, ptr %.sink11.i.i.i.i.i.i.i60.i.i.i.i.i.i, i64 %2
  %i.jz = getelementptr inbounds nuw [8 x i8], ptr %.sink10.i.i.i.i.i.i.i.i.i65.i.i.i.i.i.i, i64 %i.jk
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ka = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %.sink11.i.i.i.i.i.i.i60.i.i.i.i.i.i, i64 %i.ka ; 2 uses
  %i.kb = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep, align 8, !alias.scope !12972, !noalias !12973
  %wide.load207 = load <2 x i64>, ptr %i.kb, align 8, !alias.scope !12972, !noalias !12973
  %i.kc = getelementptr inbounds nuw [8 x i8], ptr %i.jz, i64 %index ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 16
  store <2 x i64> %wide.load, ptr %i.kc, align 8, !noalias !12968
  store <2 x i64> %wide.load207, ptr %i.kd, align 8, !noalias !12968
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ke = icmp eq i64 %index.next, %n.vec
  br i1 %i.ke, label %.lr.ph.i.i.i.i.i.i.i.i83.i.i.i.i.i.i.preheader212, label %vector.body, !llvm.loop !12812

._crit_edge.i.i.i.i.i.i.i.i67.i.i.i.i.i.i:        ; preds = %bb.at, %_RINvCsiSzwKAiqS6b_8smallvec10infallibleuECs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i.i.i63.i.i.i.i.i.i
  %.sroa.0.0.lcssa.i.i.i.i.i.i.i.i68.i.i.i.i.i.i = phi ptr [ %.sink11.i.i.i.i.i.i.i60.i.i.i.i.i.i, %_RINvCsiSzwKAiqS6b_8smallvec10infallibleuECs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i.i.i63.i.i.i.i.i.i ], [ %i.ku, %bb.at ] ; 2 uses
  %storemerge.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.jk, %_RINvCsiSzwKAiqS6b_8smallvec10infallibleuECs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i.i.i63.i.i.i.i.i.i ], [ %i.kx, %bb.at ]
  store i64 %storemerge.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sink9.i.i.i.i.i.i.i.i.i66.i.i.i.i.i.i, align 8, !alias.scope !12969, !noalias !12968
  %i.kf = icmp eq ptr %.sroa.0.0.lcssa.i.i.i.i.i.i.i.i68.i.i.i.i.i.i, %i.iz
  br i1 %i.kf, label %.loopexit.i.i.i.i73.i.i.i.i.i.i, label %.lr.ph54.i.i.i.i.i.i.i.i69.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i83.i.i.i.i.i.i:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i83.i.i.i.i.i.i.preheader212, %bb.at
  %storemerge50.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.kx, %bb.at ], [ %storemerge50.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i83.i.i.i.i.i.i.preheader212 ] ; 3 uses
  %.sroa.0.049.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ku, %bb.at ], [ %.sroa.0.049.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i83.i.i.i.i.i.i.preheader212 ] ; 3 uses
  %i.kg = icmp eq ptr %.sroa.0.049.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.iz
  br i1 %i.kg, label %bb.au, label %bb.at

.lr.ph54.i.i.i.i.i.i.i.i69.i.i.i.i.i.i:           ; preds = %._crit_edge.i.i.i.i.i.i.i.i67.i.i.i.i.i.i, %_RNvMsd_CsiSzwKAiqS6b_8smallvecINtB5_8SmallVecAjj1_E4pushCs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.030.052.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.kh, %_RNvMsd_CsiSzwKAiqS6b_8smallvecINtB5_8SmallVecAjj1_E4pushCs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.0.0.lcssa.i.i.i.i.i.i.i.i68.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i67.i.i.i.i.i.i ] ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %.sroa.030.052.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ki = load i64, ptr %.sroa.030.052.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !12976, !noalias !12977, !noundef !57
  %i.kj = load i64, ptr %i.ic, align 8, !alias.scope !12978, !noalias !12979, !noundef !57 ; 2 uses
  %i.kk = icmp ugt i64 %i.kj, 1                   ; 2 uses
  %i.kl = load ptr, ptr %i.c, align 8, !alias.scope !12978, !noalias !12979, !nonnull !57
  %.sink10.i.i.i.i.i.i.i.i.i.i70.i.i.i.i.i.i = select i1 %i.kk, ptr %i.kl, ptr %i.c
  %.sink9.i.i.i.i.i.i.i.i.i.i71.i.i.i.i.i.i = select i1 %i.kk, ptr %i.id, ptr %i.ic ; 2 uses
  %.sink.i.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.kj, i64 1)
  %i.km = load i64, ptr %.sink9.i.i.i.i.i.i.i.i.i.i71.i.i.i.i.i.i, align 8, !alias.scope !12980, !noalias !12968, !noundef !57 ; 2 uses
  %i.kn = icmp eq i64 %i.km, %.sink.i.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.kn, label %bb.as, label %_RNvMsd_CsiSzwKAiqS6b_8smallvecINtB5_8SmallVecAjj1_E4pushCs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !60

bb.as:                                            ; preds = %.lr.ph54.i.i.i.i.i.i.i.i69.i.i.i.i.i.i
  invoke fastcc void @_RNvMsd_CsiSzwKAiqS6b_8smallvecINtB5_8SmallVecAjj1_E21reserve_one_uncheckedCs9gmjTwvRRSu_10typst_html(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.noexc11.i.i.i.i.i.i.i.i.i.i.i.i.i unwind label %.loopexit.i.i.i.i.i.i.i76.i.i.i.i.i.i, !noalias !12968

.noexc11.i.i.i.i.i.i.i.i.i.i.i.i.i:               ; preds = %bb.as
  %i.ko = load ptr, ptr %i.c, align 8, !alias.scope !12980, !noalias !12968, !nonnull !57, !noundef !57
  %.pre.i.i.i.i.i.i.i.i.i82.i.i.i.i.i.i = load i64, ptr %i.id, align 8, !alias.scope !12980, !noalias !12968
  br label %_RNvMsd_CsiSzwKAiqS6b_8smallvecINtB5_8SmallVecAjj1_E4pushCs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_RNvMsd_CsiSzwKAiqS6b_8smallvecINtB5_8SmallVecAjj1_E4pushCs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc11.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph54.i.i.i.i.i.i.i.i69.i.i.i.i.i.i
  %i.kp = phi i64 [ %.pre.i.i.i.i.i.i.i.i.i82.i.i.i.i.i.i, %.noexc11.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.km, %.lr.ph54.i.i.i.i.i.i.i.i69.i.i.i.i.i.i ]
  %.sroa.01.0.i.i.i.i.i.i.i.i.i72.i.i.i.i.i.i = phi ptr [ %i.id, %.noexc11.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sink9.i.i.i.i.i.i.i.i.i.i71.i.i.i.i.i.i, %.lr.ph54.i.i.i.i.i.i.i.i69.i.i.i.i.i.i ] ; 2 uses
  %.sroa.0.0.i19.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ko, %.noexc11.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sink10.i.i.i.i.i.i.i.i.i.i70.i.i.i.i.i.i, %.lr.ph54.i.i.i.i.i.i.i.i69.i.i.i.i.i.i ]
  %i.kq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i19.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.kp
  store i64 %i.ki, ptr %i.kq, align 8, !noalias !12968
  %i.kr = load i64, ptr %.sroa.01.0.i.i.i.i.i.i.i.i.i72.i.i.i.i.i.i, align 8, !alias.scope !12980, !noalias !12968, !noundef !57
  %i.ks = add i64 %i.kr, 1
  store i64 %i.ks, ptr %.sroa.01.0.i.i.i.i.i.i.i.i.i72.i.i.i.i.i.i, align 8, !alias.scope !12980, !noalias !12968
  %i.kt = icmp eq ptr %i.kh, %i.iz
  br i1 %i.kt, label %.loopexit.i.i.i.i73.i.i.i.i.i.i, label %.lr.ph54.i.i.i.i.i.i.i.i69.i.i.i.i.i.i

bb.at:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i83.i.i.i.i.i.i
  %i.ku = getelementptr inbounds nuw i8, ptr %.sroa.0.049.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.kv = load i64, ptr %.sroa.0.049.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !12972, !noalias !12973, !noundef !57
  %i.kw = getelementptr inbounds nuw [8 x i8], ptr %.sink10.i.i.i.i.i.i.i.i.i65.i.i.i.i.i.i, i64 %storemerge50.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  store i64 %i.kv, ptr %i.kw, align 8, !noalias !12968
  %i.kx = add nuw i64 %storemerge50.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 3 uses
  %i.ky = icmp ugt i64 %i.ji, %i.kx
  br i1 %i.ky, label %.lr.ph.i.i.i.i.i.i.i.i83.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i67.i.i.i.i.i.i, !llvm.loop !12822

bb.au:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i83.i.i.i.i.i.i
  store i64 %storemerge50.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sink9.i.i.i.i.i.i.i.i.i66.i.i.i.i.i.i, align 8, !alias.scope !12969, !noalias !12968
  br label %.loopexit.i.i.i.i73.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i.i76.i.i.i.i.i.i:            ; preds = %bb.as
  %lpad.loopexit.i.i.i.i.i.i.i77.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i.i.i.i.i.i78.i.i.i.i.i.i

.loopexit.split-lp.i.i.i.loopexit.i.i.i.i84.i.i.i.i.i.i: ; preds = %_RNvMsd_CsiSzwKAiqS6b_8smallvecINtB5_8SmallVecAjj1_E11try_reserveCs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %lpad.loopexit.i.i.i.i85.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i.i.i.i.i.i78.i.i.i.i.i.i

.loopexit.split-lp.i.i.i.loopexit.split-lp.i.i.i.i87.i.i.i.i.i.i: ; preds = %_RNvMsd_CsiSzwKAiqS6b_8smallvecINtB5_8SmallVecAjj1_E11try_reserveCs9gmjTwvRRSu_10typst_html.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ar
  %lpad.loopexit.split-lp.i.i.i.i88.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i.i.i.i.i.i78.i.i.i.i.i.i

.loopexit.split-lp.i.i.i.i.i.i.i78.i.i.i.i.i.i:   ; preds = %.loopexit.split-lp.i.i.i.loopexit.split-lp.i.i.i.i87.i.i.i.i.i.i, %.loopexit.split-lp.i.i.i.loopexit.i.i.i.i84.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i76.i.i.i.i.i.i
  %lpad.phi.i.i.i.i.i.i.i79.i.i.i.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i.i.i.i.i.i77.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i76.i.i.i.i.i.i ], [ %lpad.loopexit.i.i.i.i85.i.i.i.i.i.i, %.loopexit.split-lp.i.i.i.loopexit.i.i.i.i84.i.i.i.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i.i88.i.i.i.i.i.i, %.loopexit.split-lp.i.i.i.loopexit.split-lp.i.i.i.i87.i.i.i.i.i.i ]
  %.val8.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ic, align 8, !alias.scope !12981, !noalias !12968, !noundef !57 ; 2 uses
  %i.kz = icmp ugt i64 %.val8.i.i.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.kz, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecjEECs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.body.i.i.i.i80.i.i.i.i.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecjEECs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.loopexit.split-lp.i.i.i.i.i.i.i78.i.i.i.i.i.i
  %.val.i.i.i.i.i.i.i81.i.i.i.i.i.i = load ptr, ptr %i.c, align 8, !noalias !12968, !nonnull !57, !noundef !57
  %i.la = shl nuw i64 %.val8.i.i.i.i.i.i.i.i.i.i.i.i.i, 3
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i.i81.i.i.i.i.i.i, i64 noundef %i.la, i64 noundef range(i64 1, -9223372036854775807) 8) #53, !noalias !12982
  br label %.body.i.i.i.i80.i.i.i.i.i.i

.loopexit.i.i.i.i73.i.i.i.i.i.i:                  ; preds = %_RNvMsd_CsiSzwKAiqS6b_8smallvecINtB5_8SmallVecAjj1_E4pushCs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.au, %._crit_edge.i.i.i.i.i.i.i.i67.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.i.i.i.i34.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !12983
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !12968
  %i.lb = ptrtoint ptr %i.ip to i64
  %i.lc = sub i64 %i.ie, %i.lb
  %i.ld = ashr exact i64 %i.lc, 5                 ; 2 uses
  %i.le = sub nsw i64 0, %i.ld
  %i.lf = getelementptr inbounds [32 x i8], ptr %.sroa.0.0.i.i43.i.i.i.i.i.i, i64 %i.le ; 2 uses
  %i.lg = getelementptr inbounds i8, ptr %i.lf, i64 -32
  store i64 %.val.i.i.i.i.i59.i.i.i.i.i.i, ptr %i.lg, align 8, !noalias !12959
  %.sroa.4.0..sroa_idx.i.i.i.i74.i.i.i.i.i.i = getelementptr inbounds i8, ptr %i.lf, i64 -24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx.i.i.i.i74.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.i.i.i.i34.i.i.i.i.i.i, i64 24, i1 false), !noalias !12959
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i.i34.i.i.i.i.i.i)
  %i.lh = add nsw i64 %i.ld, 1
  %i.li = icmp eq i64 %i.iq, 0
  br i1 %i.li, label %.loopexit.i.i75.i.i.i.i.i.i, label %bb.aq

bb.av:                                            ; preds = %_RNvXNtCskt5MLIAl8nl_9hashbrown3mapINtB2_7HashMapNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejENtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherENtNtB1X_5clone5Clone5cloneCs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) @70, i64 32, i1 false), !noalias !12884
  br label %bb.ax

.loopexit.i.i75.i.i.i.i.i.i:                      ; preds = %.loopexit.i.i.i.i73.i.i.i.i.i.i, %_RNvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTNtNtNtCsdaEETE4DqmE_13typst_library11foundations5label5LabelINtCsiSzwKAiqS6b_8smallvec8SmallVecAjj1_EEE17new_uninitializedCs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i.i.i
  store i64 %i.hx, ptr %.sroa.9.0..sroa_idx.i.i46.i.i.i.i.i.i, align 8, !alias.scope !12984, !noalias !12961
  %i.lj = getelementptr inbounds nuw i8, ptr %i.p, i64 120
  %i.lk = load i64, ptr %i.lj, align 8, !alias.scope !12957, !noalias !12958, !noundef !57
  store i64 %i.lk, ptr %.sroa.7.0..sroa_idx.i.i45.i.i.i.i.i.i, align 8, !alias.scope !12984, !noalias !12961
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false), !noalias !12884
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !12952
  br label %bb.ax

.body102.i.i.i.i.i.i:                             ; preds = %bb.ay, %bb.aw, %.body.i.i.i.i80.i.i.i.i.i.i
  %.pn.i.i.i.i.i.i = phi { ptr, i32 } [ %i.ln, %bb.ay ], [ %i.ll, %bb.aw ], [ %lpad.phi.i.i.i.i.i.i.i79.i.i.i.i.i.i, %.body.i.i.i.i80.i.i.i.i.i.i ]
  tail call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map7HashMapNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationINtNtNtB4_3ops5range5RangejENtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherEECs9gmjTwvRRSu_10typst_html(ptr nonnull %.sroa.0.0.i.i.i.i.i3.i.i, i64 %.sroa.5.0.i.i.i.i.i.i.i) #49, !noalias !12884
  br label %bb.aj

bb.aw:                                            ; preds = %bb.ao, %bb.an
  %i.ll = landingpad { ptr, i32 }
          cleanup
  br label %.body102.i.i.i.i.i.i

bb.ax:                                            ; preds = %.loopexit.i.i75.i.i.i.i.i.i, %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !12884
  %i.lm = getelementptr inbounds nuw i8, ptr %i.p, i64 136
  invoke void @_RNvXs6_NtNtCsdaEETE4DqmE_13typst_library13introspection12introspectorNtB5_10QueryCacheNtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.k, ptr noundef nonnull align 8 %i.lm)
          to label %_RNvXs7_NtNtCsdaEETE4DqmE_13typst_library13introspection12introspectorINtB5_19ElementIntrospectorNtNtB7_8position12HtmlPositionENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i unwind label %bb.ay, !noalias !12884

bb.ay:                                            ; preds = %bb.ax
  %i.ln = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsdaEETE4DqmE_13typst_library13introspection12introspector8MultiMapNtNtNtBI_11foundations5label5LabeljEECs9gmjTwvRRSu_10typst_html(ptr noalias nofree noundef align 8 dereferenceable(32) %i.e) #49, !noalias !12884
  br label %.body102.i.i.i.i.i.i

bb.az:                                            ; preds = %.body.i.i.i.i.i.i
  %i.lo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #50, !noalias !12884
  unreachable

_RNvXs7_NtNtCsdaEETE4DqmE_13typst_library13introspection12introspectorINtB5_19ElementIntrospectorNtNtB7_8position12HtmlPositionENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i: ; preds = %bb.ax
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !noalias !12882
  %i.lp = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.lp, ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 32, i1 false), !noalias !12882
  %i.lq = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  store ptr %.sroa.0.0.i.i.i.i.i3.i.i, ptr %i.lq, align 8, !alias.scope !12883, !noalias !12882
  %.sroa.5.0..sroa_idx105.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  store i64 %.sroa.5.0.i.i.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx105.i.i.i.i.i.i, align 8, !alias.scope !12883, !noalias !12882
  %.sroa.6.0..sroa_idx107.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 72
  store i64 %.sroa.6.0.i.i.i.i.i.i.i, ptr %.sroa.6.0..sroa_idx107.i.i.i.i.i.i, align 8, !alias.scope !12883, !noalias !12882
  %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx107.sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 80
  store i64 %.sroa.7.0.i.i.i.i.i.i.i, ptr %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx107.sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !12883, !noalias !12882
  %i.lr = getelementptr inbounds nuw i8, ptr %i.m, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.lr, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false), !noalias !12882
  %i.ls = getelementptr inbounds nuw i8, ptr %i.m, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ls, ptr noundef nonnull align 8 dereferenceable(48) %i.k, i64 48, i1 false), !noalias !12882
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !12884
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !12884
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !12882
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !12882
  %i.lt = getelementptr inbounds nuw i8, ptr %i.p, i64 184
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12985)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12986)
  %i.lu = getelementptr inbounds nuw i8, ptr %i.p, i64 192
  %i.lv = load i64, ptr %i.lu, align 8, !alias.scope !12987, !noalias !12988, !noundef !57 ; 5 uses
  %i.lw = icmp eq i64 %i.lv, 0
  br i1 %i.lw, label %_RNvXNtCskt5MLIAl8nl_9hashbrown3mapINtB2_7HashMapNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationuNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i, label %bb.ba

bb.ba:                                            ; preds = %_RNvXs7_NtNtCsdaEETE4DqmE_13typst_library13introspection12introspectorINtB5_19ElementIntrospectorNtNtB7_8position12HtmlPositionENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i
  %i.lx = add i64 %i.lv, 1                        ; 2 uses
  %i.ly = icmp ugt i64 %i.lx, 1152921504606846975
  br i1 %i.ly, label %bb.bc, label %bb.bb, !prof !60

bb.bb:                                            ; preds = %bb.ba
  %i.lz = shl nuw i64 %i.lx, 4                    ; 3 uses
  %i.ma = add nsw i64 %i.lv, 17                   ; 2 uses
  %i.mb = add i64 %i.lz, %i.ma                    ; 5 uses
  %i.mc = icmp ult i64 %i.mb, %i.lz
  %i.md = icmp ugt i64 %i.mb, 9223372036854775792
  %or.cond.i.i.i.i.i.i.i.i.i = or i1 %i.mc, %i.md
  br i1 %or.cond.i.i.i.i.i.i.i.i.i, label %bb.bc, label %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i.i, !prof !75

_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.bb
  %i.me = icmp eq i64 %i.mb, 0
  br i1 %i.me, label %bb.be, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i.i: ; preds = %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i.i
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53, !noalias !12989
  %i.mf = tail call noundef align 16 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef %i.mb, i64 noundef range(i64 1, -9223372036854775807) 16) #53, !noalias !12989 ; 2 uses
  %i.mg = icmp eq ptr %i.mf, null
  br i1 %i.mg, label %bb.bd, label %bb.be

bb.bc:                                            ; preds = %bb.bb, %bb.ba
end_hunk_1
begin_hunk_2_@_RNvXsa_NvCs9gmjTwvRRSu_10typst_html1__NtB7_8HtmlElemNtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7element9Construct9construct:bb.a
  store i64 0, ptr %i.do, align 8
  store i128 0, ptr %i.k, align 16
  call fastcc void @_RINvMNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB3_10RawContent3newNtCs9gmjTwvRRSu_10typst_html8HtmlElemEB1o_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 16 captures(none) dereferenceable(112) %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs9gmjTwvRRSu_10typst_html3dom9HtmlAttrsEEB11_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs9gmjTwvRRSu_10typst_html3dom9HtmlAttrsEEB11_.exit: ; preds = %bb.ac, %bb.af, %bb.ag, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecTNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlAttrNtNtBN_6string9EcoStringEENtNtNtB5_3ops4drop4Drop4drop0EB1T_.exit.i.i.i.i, %bb.aj, %_RINvMNtNtCsdaEETE4DqmE_13typst_library11foundations4argsNtB3_4Args6expectNtNtCs9gmjTwvRRSu_10typst_html3dom7HtmlTagEB1d_.exit.thread42, %bb.al
  ret void

bb.am:                                            ; preds = %bb.ad
  %i.dp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs9gmjTwvRRSu_10typst_html3dom9HtmlAttrsEEB11_(ptr %i.cm, i64 %i.co) #49
          to label %common.resume unwind label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.dq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #50
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCsakL8LGkl72C_4ecow6string9EcoStringENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs9gmjTwvRRSu_10typst_html(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr nofree readonly captures(address) %.8.val, i64 %.16.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22317)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !22318
  %i.b = shl nuw nsw i64 %.16.val, 4              ; 2 uses
  %i.c = icmp eq i64 %.16.val, 0
  br i1 %i.c, label %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9gmjTwvRRSu_10typst_html.exit.thread.i, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i

_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9gmjTwvRRSu_10typst_html.exit.thread.i: ; preds = %bb.a
  store i64 0, ptr %i.a, align 8, !noalias !22318
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.d, align 8, !noalias !22318
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %_RINvXNvMNtCs1xwejQucwHj_5alloc5sliceSp9to_vec_inNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs9gmjTwvRRSu_10typst_html.exit

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i: ; preds = %bb.a
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53, !noalias !22319
  %i.f = tail call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef %i.b, i64 noundef range(i64 1, 9) 8) #53, !noalias !22319 ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.b, label %.lr.ph.preheader.i

bb.b:                                             ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.b) #54, !noalias !22318
  unreachable

.lr.ph.preheader.i:                               ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i
  store i64 %.16.val, ptr %i.a, align 8, !noalias !22318
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.f, ptr %i.h, align 8, !noalias !22318
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %.8.val, i64 %.16.val
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvXsx_NtCsakL8LGkl72C_4ecow6stringNtB5_9EcoStringNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i, %.lr.ph.preheader.i
  %.sroa.014.033.i = phi ptr [ %i.m, %_RNvXsx_NtCsakL8LGkl72C_4ecow6stringNtB5_9EcoStringNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i ], [ %.8.val, %.lr.ph.preheader.i ] ; 5 uses
  %.sroa.7.032.i = phi i64 [ %i.n, %_RNvXsx_NtCsakL8LGkl72C_4ecow6stringNtB5_9EcoStringNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i ], [ 0, %.lr.ph.preheader.i ] ; 3 uses
  %.sroa.10.031.i = phi i64 [ %i.k, %_RNvXsx_NtCsakL8LGkl72C_4ecow6stringNtB5_9EcoStringNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i ], [ %.16.val, %.lr.ph.preheader.i ]
  %i.k = add nsw i64 %.sroa.10.031.i, -1          ; 2 uses
  %i.l = icmp eq ptr %.sroa.014.033.i, %i.j
  br i1 %i.l, label %_RINvXNvMNtCs1xwejQucwHj_5alloc5sliceSp9to_vec_inNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs9gmjTwvRRSu_10typst_html.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.014.033.i, i64 16
  %i.n = add nuw nsw i64 %.sroa.7.032.i, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22320)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22321)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22322)
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.014.033.i, i64 15
  %i.p = load i8, ptr %i.o, align 1, !alias.scope !22323, !noalias !22324, !noundef !57
  %.not.i.i12.i = icmp sgt i8 %i.p, -1
  %.val.i.i.i = load ptr, ptr %.sroa.014.033.i, align 8, !alias.scope !22325, !noalias !22326 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.014.033.i, i64 8
  %.val10.i.i.i = load i64, ptr %i.q, align 8, !alias.scope !22325, !noalias !22326
  br i1 %.not.i.i12.i, label %bb.d, label %_RNvXsx_NtCsakL8LGkl72C_4ecow6stringNtB5_9EcoStringNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i

bb.d:                                             ; preds = %bb.c
  %.not.i.i.i.i.i = icmp eq ptr %.val.i.i.i, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i.i.i, label %_RNvXsx_NtCsakL8LGkl72C_4ecow6stringNtB5_9EcoStringNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds i8, ptr %.val.i.i.i, i64 -16
  %i.s = atomicrmw add ptr %i.r, i64 1 monotonic, align 8, !noalias !22327
  %i.t = icmp slt i64 %i.s, 0
  br i1 %i.t, label %bb.f, label %_RNvXsx_NtCsakL8LGkl72C_4ecow6stringNtB5_9EcoStringNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i, !prof !60

bb.f:                                             ; preds = %bb.e
  invoke fastcc void @_RINvNtCsakL8LGkl72C_4ecow3vec18ref_count_overflowhECs9gmjTwvRRSu_10typst_html(ptr noundef nonnull %.val.i.i.i) #54
          to label %.noexc.i unwind label %bb.h

.noexc.i:                                         ; preds = %bb.f
  unreachable

_RNvXsx_NtCsakL8LGkl72C_4ecow6stringNtB5_9EcoStringNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i: ; preds = %bb.e, %bb.d, %bb.c
  %.sroa.0.0.i13.i = phi ptr [ inttoptr (i64 16 to ptr), %bb.d ], [ %.val.i.i.i, %bb.e ], [ %.val.i.i.i, %bb.c ]
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %.sroa.7.032.i ; 2 uses
  store ptr %.sroa.0.0.i13.i, ptr %i.u, align 8, !noalias !22318
  %.sroa.422.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store i64 %.val10.i.i.i, ptr %.sroa.422.0..sroa_idx.i, align 8, !noalias !22318
  %i.v = icmp eq i64 %i.k, 0
  br i1 %i.v, label %_RINvXNvMNtCs1xwejQucwHj_5alloc5sliceSp9to_vec_inNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs9gmjTwvRRSu_10typst_html.exit, label %.lr.ph.i

bb.g:                                             ; preds = %bb.h
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #50, !noalias !22318
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.x = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.032.i, ptr %i.i, align 8, !noalias !22318
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsakL8LGkl72C_4ecow6string9EcoStringEECs9gmjTwvRRSu_10typst_html(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #49
          to label %bb.i unwind label %bb.g, !noalias !22318

bb.i:                                             ; preds = %bb.h
  resume { ptr, i32 } %i.x

_RINvXNvMNtCs1xwejQucwHj_5alloc5sliceSp9to_vec_inNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs9gmjTwvRRSu_10typst_html.exit: ; preds = %.lr.ph.i, %_RNvXsx_NtCsakL8LGkl72C_4ecow6stringNtB5_9EcoStringNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i, %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9gmjTwvRRSu_10typst_html.exit.thread.i
  %i.y = phi ptr [ %i.e, %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9gmjTwvRRSu_10typst_html.exit.thread.i ], [ %i.i, %_RNvXsx_NtCsakL8LGkl72C_4ecow6stringNtB5_9EcoStringNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i ], [ %i.i, %.lr.ph.i ]
  store i64 %.16.val, ptr %i.y, align 8, !noalias !22318
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !22317
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !22318
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal fastcc void @_RNvXsb_NtCs83m0le5ggt2_9siphasher6sip128INtB5_6HasherNtB5_11Sip13RoundsENtNtCs3oUPovFnLWP_4core4hash6Hasher5writeCs9gmjTwvRRSu_10typst_html(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #28 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !57
  %i.c = add i64 %i.b, %2
  store i64 %i.c, ptr %i.a, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !noundef !57 ; 4 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = sub i64 8, %i.e                          ; 3 uses
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.g, i64 %2) ; 3 uses
  %i.h = icmp samesign ugt i64 %..i, 3
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.sroa.014.0.copyload.i = load i32, ptr %1, align 1, !alias.scope !22336
  %i.i = zext i32 %.sroa.014.0.copyload.i to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.03.0.i = phi i64 [ 4, %bb.c ], [ 0, %bb.b ] ; 5 uses
  %.sroa.0.0.i = phi i64 [ %i.i, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %i.j = or disjoint i64 %.sroa.03.0.i, 1
  %i.k = icmp samesign ult i64 %i.j, %..i
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr i8, ptr %1, i64 %.sroa.03.0.i
  %.sroa.015.0.copyload.i = load i16, ptr %i.l, align 1, !alias.scope !22336
  %i.m = zext i16 %.sroa.015.0.copyload.i to i64
  %i.n = shl nuw nsw i64 %.sroa.03.0.i, 3
  %i.o = shl nuw nsw i64 %i.m, %i.n
  %i.p = or i64 %i.o, %.sroa.0.0.i
  %i.q = or disjoint i64 %.sroa.03.0.i, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.03.1.i = phi i64 [ %i.q, %bb.e ], [ %.sroa.03.0.i, %bb.d ] ; 3 uses
  %.sroa.0.1.i = phi i64 [ %i.p, %bb.e ], [ %.sroa.0.0.i, %bb.d ] ; 2 uses
  %i.r = icmp samesign ult i64 %.sroa.03.1.i, %..i
  br i1 %i.r, label %bb.g, label %_RNvNtCs83m0le5ggt2_9siphasher6sip1289u8to64_le.exit

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.03.1.i
  %i.t = load i8, ptr %i.s, align 1, !alias.scope !22336, !noundef !57
  %i.u = zext i8 %i.t to i64
  %i.v = shl nuw nsw i64 %.sroa.03.1.i, 3
  %i.w = shl nuw nsw i64 %i.u, %i.v
  %i.x = or i64 %i.w, %.sroa.0.1.i
  br label %_RNvNtCs83m0le5ggt2_9siphasher6sip1289u8to64_le.exit

_RNvNtCs83m0le5ggt2_9siphasher6sip1289u8to64_le.exit: ; preds = %bb.f, %bb.g
  %.sroa.0.2.i = phi i64 [ %i.x, %bb.g ], [ %.sroa.0.1.i, %bb.f ]
  %i.y = shl i64 %i.e, 3
  %i.z = and i64 %i.y, 56
  %i.aa = shl i64 %.sroa.0.2.i, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !noundef !57
  %i.ad = or i64 %i.ac, %i.aa                     ; 3 uses
  store i64 %i.ad, ptr %i.ab, align 8
  %i.ae = icmp ult i64 %2, %i.g
  br i1 %i.ae, label %bb.j, label %bb.i

bb.h:                                             ; preds = %bb.a, %bb.i
  %.sroa.0.0 = phi i64 [ 0, %bb.a ], [ %i.g, %bb.i ] ; 4 uses
  %i.af = sub nsw i64 %2, %.sroa.0.0              ; 2 uses
  %3 = and i64 %i.af, 7                           ; 4 uses
  %i.ag = and i64 %i.af, -8                       ; 2 uses
  %i.ah = icmp ult i64 %.sroa.0.0, %i.ag
  br i1 %i.ah, label %.lr.ph, label %bb.k

.lr.ph:                                           ; preds = %bb.h
  %.promoted = load i64, ptr %0, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted19 = load i64, ptr %i.ai, align 8
  %.promoted20 = load i64, ptr %i.aj, align 8, !alias.scope !22337
  %.promoted22 = load i64, ptr %i.ak, align 8, !alias.scope !22337
  br label %bb.q

bb.i:                                             ; preds = %_RNvNtCs83m0le5ggt2_9siphasher6sip1289u8to64_le.exit
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !noundef !57
  %i.an = xor i64 %i.am, %i.ad                    ; 3 uses
  %i.ao = load i64, ptr %0, align 8, !alias.scope !22338, !noundef !57
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !alias.scope !22338, !noundef !57 ; 3 uses
  %i.ar = add i64 %i.aq, %i.ao                    ; 3 uses
  %i.as = tail call noundef i64 @llvm.fshl.i64(i64 %i.aq, i64 %i.aq, i64 13)
  %i.at = xor i64 %i.as, %i.ar                    ; 3 uses
  %i.au = tail call noundef i64 @llvm.fshl.i64(i64 %i.ar, i64 %i.ar, i64 32)
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.aw = load i64, ptr %i.av, align 8, !alias.scope !22338, !noundef !57
  %i.ax = add i64 %i.aw, %i.an                    ; 2 uses
  %i.ay = tail call noundef i64 @llvm.fshl.i64(i64 %i.an, i64 %i.an, i64 16)
  %i.az = xor i64 %i.ax, %i.ay                    ; 3 uses
  %i.ba = add i64 %i.az, %i.au                    ; 2 uses
  %i.bb = tail call noundef i64 @llvm.fshl.i64(i64 %i.az, i64 %i.az, i64 21)
  %i.bc = xor i64 %i.bb, %i.ba
  store i64 %i.bc, ptr %i.al, align 8, !alias.scope !22338
  %i.bd = add i64 %i.ax, %i.at                    ; 3 uses
  %i.be = tail call noundef i64 @llvm.fshl.i64(i64 %i.at, i64 %i.at, i64 17)
  %i.bf = xor i64 %i.bd, %i.be
  store i64 %i.bf, ptr %i.ap, align 8, !alias.scope !22338
  %i.bg = tail call noundef i64 @llvm.fshl.i64(i64 %i.bd, i64 %i.bd, i64 32)
  store i64 %i.bg, ptr %i.av, align 8, !alias.scope !22338
  %i.bh = xor i64 %i.ba, %i.ad
  store i64 %i.bh, ptr %0, align 8
  br label %bb.h

bb.j:                                             ; preds = %_RNvNtCs83m0le5ggt2_9siphasher6sip1289u8to64_le.exit
  %i.bi = add i64 %i.e, %2
  br label %bb.r

._crit_edge:                                      ; preds = %bb.q
  store i64 %i.cu, ptr %i.ai, align 8
  store i64 %i.cx, ptr %i.aj, align 8, !alias.scope !22337
  store i64 %i.cy, ptr %i.ak, align 8, !alias.scope !22337
  store i64 %i.cz, ptr %0, align 8
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge, %bb.h
  %.sroa.0.1.lcssa = phi i64 [ %i.da, %._crit_edge ], [ %.sroa.0.0, %bb.h ] ; 3 uses
  %i.bj = icmp samesign ugt i64 %3, 3
  br i1 %i.bj, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.1.lcssa
  %.sroa.014.0.copyload.i16 = load i32, ptr %i.bk, align 1, !alias.scope !22339
  %i.bl = zext i32 %.sroa.014.0.copyload.i16 to i64
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.sroa.03.0.i10 = phi i64 [ 4, %bb.l ], [ 0, %bb.k ] ; 5 uses
  %.sroa.0.0.i11 = phi i64 [ %i.bl, %bb.l ], [ 0, %bb.k ] ; 2 uses
  %i.bm = or disjoint i64 %.sroa.03.0.i10, 1
  %i.bn = icmp samesign ult i64 %i.bm, %3
  br i1 %i.bn, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bo = getelementptr i8, ptr %1, i64 %.sroa.0.1.lcssa
  %i.bp = getelementptr i8, ptr %i.bo, i64 %.sroa.03.0.i10
  %.sroa.015.0.copyload.i15 = load i16, ptr %i.bp, align 1, !alias.scope !22339
  %i.bq = zext i16 %.sroa.015.0.copyload.i15 to i64
  %i.br = shl nuw nsw i64 %.sroa.03.0.i10, 3
  %i.bs = shl nuw nsw i64 %i.bq, %i.br
  %i.bt = or i64 %i.bs, %.sroa.0.0.i11
  %i.bu = or disjoint i64 %.sroa.03.0.i10, 2
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.sroa.03.1.i12 = phi i64 [ %i.bu, %bb.n ], [ %.sroa.03.0.i10, %bb.m ] ; 3 uses
  %.sroa.0.1.i13 = phi i64 [ %i.bt, %bb.n ], [ %.sroa.0.0.i11, %bb.m ] ; 2 uses
  %i.bv = icmp samesign ult i64 %.sroa.03.1.i12, %3
  br i1 %i.bv, label %bb.p, label %_RNvNtCs83m0le5ggt2_9siphasher6sip1289u8to64_le.exit17

bb.p:                                             ; preds = %bb.o
  %i.bw = add i64 %.sroa.03.1.i12, %.sroa.0.1.lcssa ; 2 uses
  %i.bx = icmp ult i64 %i.bw, %2
  tail call void @llvm.assume(i1 %i.bx)
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 %i.bw
  %i.bz = load i8, ptr %i.by, align 1, !alias.scope !22339, !noundef !57
  %i.ca = zext i8 %i.bz to i64
  %i.cb = shl nuw nsw i64 %.sroa.03.1.i12, 3
  %i.cc = shl nuw nsw i64 %i.ca, %i.cb
  %i.cd = or i64 %i.cc, %.sroa.0.1.i13
  br label %_RNvNtCs83m0le5ggt2_9siphasher6sip1289u8to64_le.exit17

_RNvNtCs83m0le5ggt2_9siphasher6sip1289u8to64_le.exit17: ; preds = %bb.o, %bb.p
  %.sroa.0.2.i14 = phi i64 [ %i.cd, %bb.p ], [ %.sroa.0.1.i13, %bb.o ]
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %.sroa.0.2.i14, ptr %i.ce, align 8
  br label %bb.r

bb.q:                                             ; preds = %.lr.ph, %bb.q
  %i.cf = phi i64 [ %.promoted22, %.lr.ph ], [ %i.cy, %bb.q ]
  %i.cg = phi i64 [ %.promoted20, %.lr.ph ], [ %i.cx, %bb.q ] ; 3 uses
  %i.ch = phi i64 [ %.promoted19, %.lr.ph ], [ %i.cu, %bb.q ]
  %.sroa.0.118 = phi i64 [ %.sroa.0.0, %.lr.ph ], [ %i.da, %bb.q ] ; 2 uses
  %i.ci = phi i64 [ %.promoted, %.lr.ph ], [ %i.cz, %bb.q ]
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.118
  %.sroa.07.0.copyload = load i64, ptr %i.cj, align 1 ; 2 uses
  %i.ck = xor i64 %i.ch, %.sroa.07.0.copyload     ; 3 uses
  %i.cl = add i64 %i.cg, %i.ci                    ; 3 uses
  %i.cm = tail call noundef i64 @llvm.fshl.i64(i64 %i.cg, i64 %i.cg, i64 13)
  %i.cn = xor i64 %i.cm, %i.cl                    ; 3 uses
  %i.co = tail call noundef i64 @llvm.fshl.i64(i64 %i.cl, i64 %i.cl, i64 32)
  %i.cp = add i64 %i.cf, %i.ck                    ; 2 uses
  %i.cq = tail call noundef i64 @llvm.fshl.i64(i64 %i.ck, i64 %i.ck, i64 16)
  %i.cr = xor i64 %i.cp, %i.cq                    ; 3 uses
  %i.cs = add i64 %i.cr, %i.co                    ; 2 uses
  %i.ct = tail call noundef i64 @llvm.fshl.i64(i64 %i.cr, i64 %i.cr, i64 21)
  %i.cu = xor i64 %i.ct, %i.cs                    ; 2 uses
  %i.cv = add i64 %i.cp, %i.cn                    ; 3 uses
  %i.cw = tail call noundef i64 @llvm.fshl.i64(i64 %i.cn, i64 %i.cn, i64 17)
  %i.cx = xor i64 %i.cv, %i.cw                    ; 2 uses
  %i.cy = tail call noundef i64 @llvm.fshl.i64(i64 %i.cv, i64 %i.cv, i64 32) ; 2 uses
  %i.cz = xor i64 %i.cs, %.sroa.07.0.copyload     ; 2 uses
  %i.da = add nuw i64 %.sroa.0.118, 8             ; 3 uses
  %i.db = icmp ult i64 %i.da, %i.ag
  br i1 %i.db, label %bb.q, label %._crit_edge

bb.r:                                             ; preds = %_RNvNtCs83m0le5ggt2_9siphasher6sip1289u8to64_le.exit17, %bb.j
  %storemerge = phi i64 [ %i.bi, %bb.j ], [ %3, %_RNvNtCs83m0le5ggt2_9siphasher6sip1289u8to64_le.exit17 ]
  store i64 %storemerge, ptr %i.d, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define { ptr, i64 } @_RNvXsb_NtCs9gmjTwvRRSu_10typst_html3domNtB5_9HtmlAttrsNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles4Fold4fold(ptr noundef nonnull %0, i64 noundef %1, ptr noundef nonnull %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [40 x i8], align 8                ; 9 uses
  %i.c = alloca [16 x i8], align 8                ; 8 uses
  store ptr %0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 5 uses
  store i64 %1, ptr %i.d, align 8
  invoke fastcc void @_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecTNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlAttrNtNtB6_6string9EcoStringEE7reserveBL_(ptr noalias nofree noundef align 8 dereferenceable(16) %i.c, i64 noundef %3)
          to label %bb.c unwind label %bb.u

bb.b:                                             ; preds = %._crit_edge
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.c:                                             ; preds = %bb.a
  %.not.i.i.i = icmp eq ptr %2, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i, label %_RNvXsx_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecTNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlAttrNtNtB7_6string9EcoStringEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12IntoIterator9into_iterBM_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds i8, ptr %2, i64 -16
  %i.g = load atomic i64, ptr %i.f acquire, align 8, !noalias !22359
  %i.h = icmp eq i64 %i.g, 1
  %i.i = zext i1 %i.h to i8
  br label %_RNvXsx_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecTNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlAttrNtNtB7_6string9EcoStringEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12IntoIterator9into_iterBM_.exit

_RNvXsx_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecTNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlAttrNtNtB7_6string9EcoStringEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12IntoIterator9into_iterBM_.exit: ; preds = %bb.d, %bb.c
  %i.j = phi i8 [ %i.i, %bb.d ], [ 1, %bb.c ]     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %2, ptr %i.b, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %3, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 5 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %3, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i8 %i.j, ptr %.sroa.7.0..sroa_idx, align 8
  %.not = icmp eq i64 %3, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvXsx_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecTNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlAttrNtNtB7_6string9EcoStringEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12IntoIterator9into_iterBM_.exit
  %i.k = trunc nuw i8 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.e

._crit_edge:                                      ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlAttrNtNtCsakL8LGkl72C_4ecow6string9EcoStringEEBG_.exit, %_RNvXsx_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecTNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlAttrNtNtB7_6string9EcoStringEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12IntoIterator9into_iterBM_.exit
  store i64 %3, ptr %.sroa.5.0..sroa_idx, align 8
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec8IntoIterTNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlAttrNtNtBG_6string9EcoStringEEEB1h_(ptr noalias nofree noundef align 8 dereferenceable(40) %i.b)
          to label %bb.f unwind label %bb.b

bb.e:                                             ; preds = %.lr.ph, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlAttrNtNtCsakL8LGkl72C_4ecow6string9EcoStringEEBG_.exit
  %i.n = phi i64 [ 0, %.lr.ph ], [ %i.o, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlAttrNtNtCsakL8LGkl72C_4ecow6string9EcoStringEEBG_.exit ] ; 4 uses
  %i.o = add nuw i64 %i.n, 1                      ; 6 uses
  br i1 %i.k, label %bb.k, label %bb.g

bb.f:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.p = load ptr, ptr %i.c, align 8, !nonnull !57, !noundef !57
  %i.q = load i64, ptr %i.d, align 8, !noundef !57
  %i.r = insertvalue { ptr, i64 } poison, ptr %i.p, 0
  %i.s = insertvalue { ptr, i64 } %i.r, i64 %i.q, 1
  ret { ptr, i64 } %i.s

bb.g:                                             ; preds = %bb.e
  %i.t = icmp ult i64 %i.n, %3
  call void @llvm.assume(i1 %i.t)
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %i.n ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !22360)
  %.val.i = load i64, ptr %i.u, align 8, !range !66, !alias.scope !22360, !noalias !22361, !noundef !57 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !22362)
  call void @llvm.experimental.noalias.scope.decl(metadata !22363)
  call void @llvm.experimental.noalias.scope.decl(metadata !22364)
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 23
  %i.x = load i8, ptr %i.w, align 1, !alias.scope !22365, !noalias !22366, !noundef !57
  %.not.i.i.i10 = icmp sgt i8 %i.x, -1
  %.val.i.i.i = load ptr, ptr %i.v, align 8, !alias.scope !22367, !noalias !22368 ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %.val10.i.i.i = load i64, ptr %i.y, align 8, !alias.scope !22367, !noalias !22368 ; 3 uses
  br i1 %.not.i.i.i10, label %bb.h, label %_RNvYTNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlAttrNtNtCsakL8LGkl72C_4ecow6string9EcoStringENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneB7_.exit

bb.h:                                             ; preds = %bb.g
  %.not.i.i.i.i.i = icmp eq ptr %.val.i.i.i, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i.i.i, label %_RNvYTNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlAttrNtNtCsakL8LGkl72C_4ecow6string9EcoStringENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneB7_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = getelementptr inbounds i8, ptr %.val.i.i.i, i64 -16
  %i.aa = atomicrmw add ptr %i.z, i64 1 monotonic, align 8, !noalias !22369
  %i.ab = icmp slt i64 %i.aa, 0
  br i1 %i.ab, label %bb.j, label %_RNvYTNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlAttrNtNtCsakL8LGkl72C_4ecow6string9EcoStringENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneB7_.exit, !prof !60

bb.j:                                             ; preds = %bb.i
  store i64 %i.o, ptr %.sroa.5.0..sroa_idx, align 8
  invoke fastcc void @_RINvNtCsakL8LGkl72C_4ecow3vec18ref_count_overflowhECs9gmjTwvRRSu_10typst_html(ptr noundef nonnull %.val.i.i.i) #54
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %i.n ; 3 uses
  %.sroa.039.0.copyload = load i64, ptr %i.ac, align 8
  %.sroa.540.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %.sroa.540.0.copyload = load ptr, ptr %.sroa.540.0..sroa_idx, align 8
  %.sroa.741.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %.sroa.741.0.copyload = load i64, ptr %.sroa.741.0..sroa_idx, align 8
  br label %_RNvYTNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlAttrNtNtCsakL8LGkl72C_4ecow6string9EcoStringENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneB7_.exit

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.m
  %.pn = phi { ptr, i32 } [ %i.aj, %bb.m ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec8IntoIterTNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlAttrNtNtBG_6string9EcoStringEEEB1h_(ptr noalias nofree noundef align 8 dereferenceable(40) %i.b) #49
          to label %.thread unwind label %bb.t
end_hunk_2
