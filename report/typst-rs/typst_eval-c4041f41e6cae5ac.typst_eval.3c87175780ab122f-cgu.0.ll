Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_eval-c4041f41e6cae5ac.typst_eval.3c87175780ab122f-cgu.0?download=true
inline.NumInlined: 6644
inline.NumDeleted: 3025
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 23
loop-unroll.NumUnrolled: 28
begin_hunk_0_@_RINvNtCsloFShupyl5J_6comemo4hash4hashINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles10StyleChainNtNtB1h_4diag12HintedStringEECs5cbCQMMIObr_10typst_eval:_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCs5cbCQMMIObr_10typst_eval.exit.i
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4356)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4357)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.0..sroa_idx, i8 0, i64 40, i1 false)
  %i.b = load ptr, ptr %0, align 8, !alias.scope !4356, !noundef !35
  %i.c = icmp eq ptr %i.b, null                   ; 3 uses
  %i.d = zext i1 %i.c to i64                      ; 2 uses
  store i64 8, ptr %.sroa.12.0..sroa_idx, align 8, !alias.scope !4358
  %i.e = xor i64 %i.d, 110374107243891
  %i.f = select i1 %i.c, i64 -2243131504935184429, i64 -2243131504935184428 ; 2 uses
  %i.g = tail call noundef i64 @llvm.fshl.i64(i64 %i.e, i64 8387220255154660722, i64 16)
  %i.h = xor i64 %i.g, %i.f                       ; 2 uses
  %i.i = add i64 %i.h, -2389206912058073146       ; 2 uses
  %i.j = tail call noundef i64 @llvm.fshl.i64(i64 %i.h, i64 -8882027881020349520, i64 21)
  %i.k = xor i64 %i.j, %i.i                       ; 2 uses
  store i64 %i.k, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !4359
  %i.l = add nsw i64 %i.f, 4148644332920354933    ; 2 uses
  %i.m = xor i64 %i.l, -2011800273400728795       ; 2 uses
  store i64 %i.m, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4359
  %i.n = tail call noundef i64 @llvm.fshl.i64(i64 %i.l, i64 1905512827985170496, i64 32) ; 2 uses
  store i64 %i.n, ptr %.sroa.3.0..sroa_idx, align 8, !alias.scope !4359
  %i.o = xor i64 %i.i, %i.d                       ; 2 uses
  store i64 %i.o, ptr %i.a, align 8, !alias.scope !4358
  store i64 0, ptr %.sroa.14.0..sroa_idx, align 8, !alias.scope !4358
  br i1 %i.c, label %bb.a, label %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher19write_length_prefixCs5cbCQMMIObr_10typst_eval.exit.i.i

bb.a:                                             ; preds = %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCs5cbCQMMIObr_10typst_eval.exit.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.p, align 8, !alias.scope !4356, !nonnull !35, !noundef !35
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load i64, ptr %i.q, align 8, !alias.scope !4356, !noundef !35
  call fastcc void @_RINvXs14_NtCsdaEETE4DqmE_13typst_library4diagNtB7_12HintedStringNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECs5cbCQMMIObr_10typst_eval(ptr nonnull %.val.i, i64 %.val1.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.a) #48, !noalias !4356
  br label %_RINvXsu_NtCs3oUPovFnLWP_4core6resultINtB6_6ResultNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles10StyleChainNtNtBR_4diag12HintedStringENtNtB8_4hash4Hash4hashNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECs5cbCQMMIObr_10typst_eval.exit

_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher19write_length_prefixCs5cbCQMMIObr_10typst_eval.exit.i.i: ; preds = %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCs5cbCQMMIObr_10typst_eval.exit.i, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCs5cbCQMMIObr_10typst_eval.exit.i.i
  %.promoted1750.i = phi i64 [ %i.dd, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCs5cbCQMMIObr_10typst_eval.exit.i.i ], [ %i.n, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCs5cbCQMMIObr_10typst_eval.exit.i ]
  %.promoted1641.i = phi i64 [ %i.dc, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCs5cbCQMMIObr_10typst_eval.exit.i.i ], [ %i.m, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCs5cbCQMMIObr_10typst_eval.exit.i ] ; 3 uses
  %.promoted1132.i = phi i64 [ %i.de, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCs5cbCQMMIObr_10typst_eval.exit.i.i ], [ %i.o, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCs5cbCQMMIObr_10typst_eval.exit.i ]
  %.promoted1023.i = phi i64 [ %i.cz, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCs5cbCQMMIObr_10typst_eval.exit.i.i ], [ %i.k, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCs5cbCQMMIObr_10typst_eval.exit.i ]
  %i.r = phi i64 [ %i.cn, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCs5cbCQMMIObr_10typst_eval.exit.i.i ], [ 8, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCs5cbCQMMIObr_10typst_eval.exit.i ] ; 2 uses
  %.tr.i.i = phi ptr [ %i.cl, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCs5cbCQMMIObr_10typst_eval.exit.i.i ], [ %0, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCs5cbCQMMIObr_10typst_eval.exit.i ] ; 3 uses
  %i.s = load ptr, ptr %.tr.i.i, align 8, !noalias !4360, !nonnull !35, !align !92, !noundef !35 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.tr.i.i, i64 8
  %i.u = load i64, ptr %i.t, align 8, !noalias !4360, !noundef !35 ; 4 uses
  %i.v = add i64 %i.r, 8
  %i.w = xor i64 %i.u, %.promoted1023.i           ; 3 uses
  %i.x = add i64 %.promoted1132.i, %.promoted1641.i ; 3 uses
  %i.y = tail call noundef i64 @llvm.fshl.i64(i64 %.promoted1641.i, i64 %.promoted1641.i, i64 13)
  %i.z = xor i64 %i.x, %i.y                       ; 3 uses
  %i.aa = tail call noundef i64 @llvm.fshl.i64(i64 %i.x, i64 %i.x, i64 32)
  %i.ab = add i64 %i.w, %.promoted1750.i          ; 2 uses
  %i.ac = tail call noundef i64 @llvm.fshl.i64(i64 %i.w, i64 %i.w, i64 16)
  %i.ad = xor i64 %i.ab, %i.ac                    ; 3 uses
  %i.ae = add i64 %i.ad, %i.aa                    ; 2 uses
  %i.af = tail call noundef i64 @llvm.fshl.i64(i64 %i.ad, i64 %i.ad, i64 21)
  %i.ag = xor i64 %i.af, %i.ae                    ; 2 uses
  %i.ah = add i64 %i.ab, %i.z                     ; 3 uses
  %i.ai = tail call noundef i64 @llvm.fshl.i64(i64 %i.z, i64 %i.z, i64 17)
  %i.aj = xor i64 %i.ah, %i.ai                    ; 2 uses
  %i.ak = tail call noundef i64 @llvm.fshl.i64(i64 %i.ah, i64 %i.ah, i64 32) ; 2 uses
  %i.al = xor i64 %i.ae, %i.u                     ; 2 uses
  %.idx.i.i.i = shl i64 %i.u, 7                   ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.s, i64 %.idx.i.i.i
  %i.an = icmp eq i64 %i.u, 0
  br i1 %i.an, label %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCs5cbCQMMIObr_10typst_eval.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher19write_length_prefixCs5cbCQMMIObr_10typst_eval.exit.i.i, %.lr.ph.i.i
  %i.ao = phi i64 [ %i.cc, %.lr.ph.i.i ], [ %i.ak, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher19write_length_prefixCs5cbCQMMIObr_10typst_eval.exit.i.i ]
  %i.ap = phi i64 [ %i.cb, %.lr.ph.i.i ], [ %i.aj, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher19write_length_prefixCs5cbCQMMIObr_10typst_eval.exit.i.i ] ; 3 uses
  %.lcssa312.i = phi i64 [ %i.cd, %.lr.ph.i.i ], [ %i.al, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher19write_length_prefixCs5cbCQMMIObr_10typst_eval.exit.i.i ]
  %i.aq = phi i64 [ %i.by, %.lr.ph.i.i ], [ %i.ag, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher19write_length_prefixCs5cbCQMMIObr_10typst_eval.exit.i.i ]
  %.sroa.0.03.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i ], [ %i.s, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher19write_length_prefixCs5cbCQMMIObr_10typst_eval.exit.i.i ] ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i.i.i, i64 128 ; 2 uses
  %i.as = load atomic ptr, ptr @_RNvNvNtNtNtCsiL9kQKV5x1F_15portable_atomic3imp9atomic1286x86_6411atomic_load4FUNC monotonic, align 8, !noalias !4361, !nonnull !35, !noundef !35
  %i.at = tail call noundef i128 %i.as(ptr noundef nonnull align 16 %.sroa.0.03.i.i.i), !noalias !4361, !inline_history !4353 ; 3 uses
  %i.au = icmp eq i128 %i.at, 0
  %extract.t103 = trunc i128 %i.at to i64
  %extract105 = lshr i128 %i.at, 64
  %extract.t106 = trunc nuw i128 %extract105 to i64
  br i1 %i.au, label %bb.b, label %.lr.ph.i.i

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i.i.i, i64 16
  %i.aw = tail call fastcc noundef i128 @_RINvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleECs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.av), !noalias !4361, !inline_history !4354 ; 3 uses
  %i.ax = load atomic ptr, ptr @_RNvNvNtNtNtCsiL9kQKV5x1F_15portable_atomic3imp9atomic1286x86_6412atomic_store4FUNC monotonic, align 8, !noalias !4361, !nonnull !35, !noundef !35
  tail call void %i.ax(ptr noundef nonnull align 16 %.sroa.0.03.i.i.i, i128 noundef %i.aw), !noalias !4361, !inline_history !4355
  %extract.t = trunc i128 %i.aw to i64
  %extract = lshr i128 %i.aw, 64
  %extract.t104 = trunc nuw i128 %extract to i64
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.i, %bb.b
  %.sroa.0.0.i.i.i1.i.i.off0 = phi i64 [ %extract.t, %bb.b ], [ %extract.t103, %.lr.ph.i.i.i ] ; 2 uses
  %.sroa.0.0.i.i.i1.i.i.off64 = phi i64 [ %extract.t104, %bb.b ], [ %extract.t106, %.lr.ph.i.i.i ] ; 2 uses
  %i.ay = xor i64 %.sroa.0.0.i.i.i1.i.i.off0, %i.aq ; 3 uses
  %i.az = add i64 %.lcssa312.i, %i.ap             ; 3 uses
  %i.ba = tail call noundef i64 @llvm.fshl.i64(i64 %i.ap, i64 %i.ap, i64 13)
  %i.bb = xor i64 %i.az, %i.ba                    ; 3 uses
  %i.bc = tail call noundef i64 @llvm.fshl.i64(i64 %i.az, i64 %i.az, i64 32)
  %i.bd = add i64 %i.ay, %i.ao                    ; 2 uses
  %i.be = tail call noundef i64 @llvm.fshl.i64(i64 %i.ay, i64 %i.ay, i64 16)
  %i.bf = xor i64 %i.bd, %i.be                    ; 3 uses
  %i.bg = add i64 %i.bf, %i.bc                    ; 2 uses
  %i.bh = tail call noundef i64 @llvm.fshl.i64(i64 %i.bf, i64 %i.bf, i64 21)
  %i.bi = xor i64 %i.bh, %i.bg
  %i.bj = add i64 %i.bd, %i.bb                    ; 3 uses
  %i.bk = tail call noundef i64 @llvm.fshl.i64(i64 %i.bb, i64 %i.bb, i64 17)
  %i.bl = xor i64 %i.bj, %i.bk                    ; 3 uses
  %i.bm = tail call noundef i64 @llvm.fshl.i64(i64 %i.bj, i64 %i.bj, i64 32)
  %i.bn = xor i64 %i.bg, %.sroa.0.0.i.i.i1.i.i.off0
  %i.bo = xor i64 %.sroa.0.0.i.i.i1.i.i.off64, %i.bi ; 3 uses
  %i.bp = add i64 %i.bn, %i.bl                    ; 3 uses
  %i.bq = tail call noundef i64 @llvm.fshl.i64(i64 %i.bl, i64 %i.bl, i64 13)
  %i.br = xor i64 %i.bp, %i.bq                    ; 3 uses
  %i.bs = tail call noundef i64 @llvm.fshl.i64(i64 %i.bp, i64 %i.bp, i64 32)
  %i.bt = add i64 %i.bo, %i.bm                    ; 2 uses
  %i.bu = tail call noundef i64 @llvm.fshl.i64(i64 %i.bo, i64 %i.bo, i64 16)
  %i.bv = xor i64 %i.bt, %i.bu                    ; 3 uses
  %i.bw = add i64 %i.bv, %i.bs                    ; 2 uses
  %i.bx = tail call noundef i64 @llvm.fshl.i64(i64 %i.bv, i64 %i.bv, i64 21)
  %i.by = xor i64 %i.bx, %i.bw                    ; 2 uses
  %i.bz = add i64 %i.bt, %i.br                    ; 3 uses
  %i.ca = tail call noundef i64 @llvm.fshl.i64(i64 %i.br, i64 %i.br, i64 17)
  %i.cb = xor i64 %i.bz, %i.ca                    ; 2 uses
  %i.cc = tail call noundef i64 @llvm.fshl.i64(i64 %i.bz, i64 %i.bz, i64 32) ; 2 uses
  %i.cd = xor i64 %i.bw, %.sroa.0.0.i.i.i1.i.i.off64 ; 2 uses
  %i.ce = icmp eq ptr %i.ar, %i.am
  br i1 %i.ce, label %_RINvYINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleENtNtCs3oUPovFnLWP_4core4hash4Hash10hash_sliceNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECs5cbCQMMIObr_10typst_eval.exit.i.i.loopexit, label %.lr.ph.i.i.i

_RINvYINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleENtNtCs3oUPovFnLWP_4core4hash4Hash10hash_sliceNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECs5cbCQMMIObr_10typst_eval.exit.i.i.loopexit: ; preds = %.lr.ph.i.i
  %i.cf = add i64 %i.r, 24
  %i.cg = add i64 %.idx.i.i.i, -128
  %i.ch = lshr exact i64 %i.cg, 3
  %i.ci = add i64 %i.cf, %i.ch
  br label %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCs5cbCQMMIObr_10typst_eval.exit.i.i

_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCs5cbCQMMIObr_10typst_eval.exit.i.i: ; preds = %_RINvYINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleENtNtCs3oUPovFnLWP_4core4hash4Hash10hash_sliceNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECs5cbCQMMIObr_10typst_eval.exit.i.i.loopexit, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher19write_length_prefixCs5cbCQMMIObr_10typst_eval.exit.i.i
  %.promoted1752.i = phi i64 [ %i.ak, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher19write_length_prefixCs5cbCQMMIObr_10typst_eval.exit.i.i ], [ %i.cc, %_RINvYINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleENtNtCs3oUPovFnLWP_4core4hash4Hash10hash_sliceNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECs5cbCQMMIObr_10typst_eval.exit.i.i.loopexit ]
  %.promoted1643.i = phi i64 [ %i.aj, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher19write_length_prefixCs5cbCQMMIObr_10typst_eval.exit.i.i ], [ %i.cb, %_RINvYINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleENtNtCs3oUPovFnLWP_4core4hash4Hash10hash_sliceNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECs5cbCQMMIObr_10typst_eval.exit.i.i.loopexit ] ; 3 uses
  %.promoted1134.i = phi i64 [ %i.al, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher19write_length_prefixCs5cbCQMMIObr_10typst_eval.exit.i.i ], [ %i.cd, %_RINvYINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleENtNtCs3oUPovFnLWP_4core4hash4Hash10hash_sliceNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECs5cbCQMMIObr_10typst_eval.exit.i.i.loopexit ]
  %.promoted1025.i = phi i64 [ %i.ag, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher19write_length_prefixCs5cbCQMMIObr_10typst_eval.exit.i.i ], [ %i.by, %_RINvYINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleENtNtCs3oUPovFnLWP_4core4hash4Hash10hash_sliceNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECs5cbCQMMIObr_10typst_eval.exit.i.i.loopexit ]
  %i.cj = phi i64 [ %i.v, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher19write_length_prefixCs5cbCQMMIObr_10typst_eval.exit.i.i ], [ %i.ci, %_RINvYINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleENtNtCs3oUPovFnLWP_4core4hash4Hash10hash_sliceNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECs5cbCQMMIObr_10typst_eval.exit.i.i.loopexit ]
  %i.ck = getelementptr inbounds nuw i8, ptr %.tr.i.i, i64 16
  %i.cl = load ptr, ptr %i.ck, align 8, !noalias !4360, !align !45, !noundef !35 ; 2 uses
  %i.cm = icmp ne ptr %i.cl, null                 ; 2 uses
  %i.cn = add i64 %i.cj, 8                        ; 2 uses
  %i.co = zext i1 %i.cm to i64                    ; 2 uses
  %i.cp = xor i64 %.promoted1025.i, %i.co         ; 3 uses
  %i.cq = add i64 %.promoted1134.i, %.promoted1643.i ; 3 uses
  %i.cr = tail call noundef i64 @llvm.fshl.i64(i64 %.promoted1643.i, i64 %.promoted1643.i, i64 13)
  %i.cs = xor i64 %i.cq, %i.cr                    ; 3 uses
  %i.ct = tail call noundef i64 @llvm.fshl.i64(i64 %i.cq, i64 %i.cq, i64 32)
  %i.cu = add i64 %i.cp, %.promoted1752.i         ; 2 uses
  %i.cv = tail call noundef i64 @llvm.fshl.i64(i64 %i.cp, i64 %i.cp, i64 16)
  %i.cw = xor i64 %i.cu, %i.cv                    ; 3 uses
  %i.cx = add i64 %i.cw, %i.ct                    ; 2 uses
  %i.cy = tail call noundef i64 @llvm.fshl.i64(i64 %i.cw, i64 %i.cw, i64 21)
  %i.cz = xor i64 %i.cy, %i.cx                    ; 2 uses
  %i.da = add i64 %i.cu, %i.cs                    ; 3 uses
  %i.db = tail call noundef i64 @llvm.fshl.i64(i64 %i.cs, i64 %i.cs, i64 17)
  %i.dc = xor i64 %i.da, %i.db                    ; 2 uses
  %i.dd = tail call noundef i64 @llvm.fshl.i64(i64 %i.da, i64 %i.da, i64 32) ; 2 uses
  %i.de = xor i64 %i.cx, %i.co                    ; 2 uses
  br i1 %i.cm, label %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher19write_length_prefixCs5cbCQMMIObr_10typst_eval.exit.i.i, label %_RINvXsu_NtCs3oUPovFnLWP_4core6resultINtB6_6ResultNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles10StyleChainNtNtBR_4diag12HintedStringENtNtB8_4hash4Hash4hashNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECs5cbCQMMIObr_10typst_eval.exit.loopexit

_RINvXsu_NtCs3oUPovFnLWP_4core6resultINtB6_6ResultNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles10StyleChainNtNtBR_4diag12HintedStringENtNtB8_4hash4Hash4hashNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECs5cbCQMMIObr_10typst_eval.exit.loopexit: ; preds = %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCs5cbCQMMIObr_10typst_eval.exit.i.i
  store i64 %i.cn, ptr %.sroa.12.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.14.0..sroa_idx, align 8
  store i64 %i.cz, ptr %.sroa.5.0..sroa_idx, align 8
  store i64 %i.dc, ptr %.sroa.4.0..sroa_idx, align 8
  store i64 %i.dd, ptr %.sroa.3.0..sroa_idx, align 8
  store i64 %i.de, ptr %i.a, align 8
  store i64 0, ptr %.sroa.15.0..sroa_idx, align 8
  br label %_RINvXsu_NtCs3oUPovFnLWP_4core6resultINtB6_6ResultNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles10StyleChainNtNtBR_4diag12HintedStringENtNtB8_4hash4Hash4hashNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECs5cbCQMMIObr_10typst_eval.exit

_RINvXsu_NtCs3oUPovFnLWP_4core6resultINtB6_6ResultNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles10StyleChainNtNtBR_4diag12HintedStringENtNtB8_4hash4Hash4hashNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECs5cbCQMMIObr_10typst_eval.exit: ; preds = %_RINvXsu_NtCs3oUPovFnLWP_4core6resultINtB6_6ResultNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles10StyleChainNtNtBR_4diag12HintedStringENtNtB8_4hash4Hash4hashNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECs5cbCQMMIObr_10typst_eval.exit.loopexit, %bb.a
  %i.df = call fastcc { i64, i64 } @_RNvMs7_NtCs83m0le5ggt2_9siphasher6sip128INtB5_6HasherNtB5_11Sip13RoundsE9finish128Cs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.a) #48 ; 2 uses
  %i.dg = extractvalue { i64, i64 } %i.df, 0
  %i.dh = extractvalue { i64, i64 } %i.df, 1
  %i.di = zext i64 %i.dg to i128
  %i.dj = zext i64 %i.dh to i128
  %i.dk = shl nuw i128 %i.dj, 64
  %i.dl = or disjoint i128 %i.dk, %i.di
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i128 %i.dl
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCs3oUPovFnLWP_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtB2_10filter_map9FilterMapINtNtNtB6_5slice4iter4IterNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENvMs2_NtB24_3astNtB2U_4Expr15cast_with_spaceENCNvXs_NtCs5cbCQMMIObr_10typst_eval4mathNtB2U_4MathNtB3G_4Eval4eval0ENtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentINtNtB6_6result6ResultzINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB4K_4diag16SourceDiagnosticEENCINvXso_B5J_IB5H_INtNtCs1xwejQucwHj_5alloc3vec3VecB4E_EB63_EINtNtNtB4_6traits7collect12FromIteratorIB5H_B4E_B63_EE9from_iterBQ_E0B7r_EB3G_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 8 uses
  %i.b = alloca [32 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  %i.h = alloca [24 x i8], align 8                ; 9 uses
  %.sroa.0.sroa.0.0.copyload = load ptr, ptr %1, align 8
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.sroa.4.0.copyload = load ptr, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8 ; 3 uses
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.0.sroa.5.0.copyload = load ptr, ptr %.sroa.0.sroa.5.0..sroa_idx, align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !4403
  br label %bb.b

bb.b:                                             ; preds = %.noexc28, %bb.a
  %.sroa.0105.0 = phi ptr [ %.sroa.0.sroa.0.0.copyload, %bb.a ], [ %i.k, %.noexc28 ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0105.0), "nonnull"(ptr %.sroa.0.sroa.4.0.copyload) ]
  %i.i = icmp eq ptr %.sroa.0105.0, %.sroa.0.sroa.4.0.copyload
  br i1 %i.i, label %_RNCINvXso_NtCs3oUPovFnLWP_4core6resultINtB8_6ResultINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB1q_4diag16SourceDiagnosticEEINtNtNtNtBa_4iter6traits7collect12FromIteratorIBB_B1k_B2n_EE9from_iterINtNtNtB3A_8adapters3map3MapINtNtB4G_10filter_map9FilterMapINtNtNtBa_5slice4iter4IterNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENvMs2_NtB62_3astNtB6S_4Expr15cast_with_spaceENCNvXs_NtCs5cbCQMMIObr_10typst_eval4mathNtB6S_4MathNtB7E_4Eval4eval0EE0B7E_.exit, label %.noexc28

.noexc28:                                         ; preds = %bb.b
  %i.j = tail call { i64, ptr } @_RNvMs2_NtCs5PEMdK7bMAG_12typst_syntax3astNtB5_4Expr15cast_with_space(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.0105.0), !inline_history !4365 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0105.0, i64 32 ; 2 uses
  %i.l = extractvalue { i64, ptr } %i.j, 0        ; 2 uses
  %.not.i1.i = icmp eq i64 %i.l, -1
  br i1 %.not.i1.i, label %bb.b, label %.noexc29

.noexc29:                                         ; preds = %.noexc28
  %i.m = extractvalue { i64, ptr } %i.j, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !4404
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !4405
  store i64 %i.l, ptr %i.d, align 8, !noalias !4406
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.m, ptr %i.n, align 8, !noalias !4406
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.sroa.5.0.copyload) ]
  call void @_RNvXsb_NtCs5cbCQMMIObr_10typst_eval4mathNtNtCs5PEMdK7bMAG_12typst_syntax3ast4ExprNtB5_7ExprExt12eval_display(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(384) %.sroa.0.sroa.5.0.copyload), !inline_history !4365
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4405
  %.sroa.097.0.copyload = load ptr, ptr %i.e, align 8, !noalias !4404 ; 2 uses
  %.sroa.498.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.498.0.copyload = load ptr, ptr %.sroa.498.0..sroa_idx, align 8, !noalias !4404 ; 2 uses
  %.sroa.599.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.599.0.copyload = load i64, ptr %.sroa.599.0..sroa_idx, align 8, !noalias !4404 ; 2 uses
  %i.o = icmp eq ptr %.sroa.097.0.copyload, null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !4404
  br i1 %i.o, label %_RNCINvXso_NtCs3oUPovFnLWP_4core6resultINtB8_6ResultINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB1q_4diag16SourceDiagnosticEEINtNtNtNtBa_4iter6traits7collect12FromIteratorIBB_B1k_B2n_EE9from_iterINtNtNtB3A_8adapters3map3MapINtNtB4G_10filter_map9FilterMapINtNtNtBa_5slice4iter4IterNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENvMs2_NtB62_3astNtB6S_4Expr15cast_with_spaceENCNvXs_NtCs5cbCQMMIObr_10typst_eval4mathNtB6S_4MathNtB7E_4Eval4eval0EE0B7E_.exit, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i

bb.c:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs2_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB5_10RawContentNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultzINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEEECs5cbCQMMIObr_10typst_eval.exit unwind label %bb.q, !noalias !4407, !inline_history !4383

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i: ; preds = %.noexc29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !4403
  store ptr %.sroa.097.0.copyload, ptr %i.g, align 8, !noalias !4403
  %.sroa.7.0..sroa_idx41 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %.sroa.498.0.copyload, ptr %.sroa.7.0..sroa_idx41, align 8, !noalias !4403
  %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx41.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 %.sroa.599.0.copyload, ptr %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx41.sroa_idx, align 8, !noalias !4403
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !4408, !inline_history !4383
  %i.q = tail call noundef align 8 dereferenceable_or_null(96) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 96, i64 noundef range(i64 1, 9) 8) #45, !noalias !4408, !inline_history !4383 ; 4 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.d, label %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs5cbCQMMIObr_10typst_eval.exit.i

bb.d:                                             ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef 8, i64 96) #42
          to label %.noexc.i unwind label %bb.c, !noalias !4407, !inline_history !4383

.noexc.i:                                         ; preds = %bb.d
  unreachable

_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs5cbCQMMIObr_10typst_eval.exit.i: ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !4407
  store i64 4, ptr %i.h, align 8, !noalias !4403
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 3 uses
  store ptr %i.q, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !4403
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !4403
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !4403
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4409)
  %.sroa.4.0..sroa_idx.i32 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.69.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.6.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.8.0..sroa_idx4.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.10.0..sroa_idx6.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.5101.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.753.0..sroa_idx54 = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.753.sroa.5.0..sroa.753.0..sroa_idx54.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  br label %bb.e

bb.e:                                             ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE7reserveCs5cbCQMMIObr_10typst_eval.exit.i.i, %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs5cbCQMMIObr_10typst_eval.exit.i
  %i.t = phi ptr [ %i.q, %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs5cbCQMMIObr_10typst_eval.exit.i ], [ %i.ao, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE7reserveCs5cbCQMMIObr_10typst_eval.exit.i.i ]
  %.sroa.9.0.copyload328 = phi i64 [ 1, %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs5cbCQMMIObr_10typst_eval.exit.i ], [ %i.aq, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE7reserveCs5cbCQMMIObr_10typst_eval.exit.i.i ] ; 6 uses
  %.sroa.0103.0 = phi ptr [ %i.k, %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs5cbCQMMIObr_10typst_eval.exit.i ], [ %i.w, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE7reserveCs5cbCQMMIObr_10typst_eval.exit.i.i ]
  br label %bb.f

bb.f:                                             ; preds = %.noexc16, %bb.e
  %.sroa.0103.1 = phi ptr [ %.sroa.0103.0, %bb.e ], [ %i.w, %.noexc16 ] ; 3 uses
  %i.u = icmp eq ptr %.sroa.0103.1, %.sroa.0.sroa.4.0.copyload
  br i1 %i.u, label %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE16extend_desugaredINtNtNtCs3oUPovFnLWP_4core4iter8adapters12GenericShuntINtNtB24_3map3MapINtNtB24_10filter_map9FilterMapINtNtNtB28_5slice4iter4IterNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENvMs2_NtB4a_3astNtB50_4Expr15cast_with_spaceENCNvXs_NtCs5cbCQMMIObr_10typst_eval4mathNtB50_4MathNtB5M_4Eval4eval0EINtNtB28_6result6ResultzINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtBM_4diag16SourceDiagnosticEEEEB5M_.exit.i, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5cbCQMMIObr_10typst_eval.exit.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5cbCQMMIObr_10typst_eval.exit.i: ; preds = %bb.f
  %i.v = invoke { i64, ptr } @_RNvMs2_NtCs5PEMdK7bMAG_12typst_syntax3astNtB5_4Expr15cast_with_space(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.0103.1)
          to label %.noexc16 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !4388 ; 2 uses

.noexc16:                                         ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5cbCQMMIObr_10typst_eval.exit.i
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0103.1, i64 32 ; 2 uses
  %i.x = extractvalue { i64, ptr } %i.v, 0        ; 3 uses
  %.not.i.i13 = icmp eq i64 %i.x, -1
  br i1 %.not.i.i13, label %bb.f, label %bb.g

bb.g:                                             ; preds = %.noexc16
  %i.y = extractvalue { i64, ptr } %i.v, 1        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4410
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4410
  invoke void @_RNvXs_NtCs5cbCQMMIObr_10typst_eval4codeNtNtCs5PEMdK7bMAG_12typst_syntax3ast4ExprNtB6_4Eval4eval(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, i64 noundef %i.x, ptr noundef %i.y, ptr noalias nofree noundef nonnull align 8 dereferenceable(384) %.sroa.0.sroa.5.0.copyload)
          to label %.noexc34 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !4393

.noexc34:                                         ; preds = %bb.g
  %i.z = load i64, ptr %i.b, align 8, !range !39, !noalias !4410, !noundef !35 ; 2 uses
  %i.aa = icmp eq i64 %i.z, -1
  %i.ab = load ptr, ptr %.sroa.4.0..sroa_idx.i32, align 8, !noalias !4410 ; 2 uses
  %i.ac = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !4410 ; 2 uses
  br i1 %i.aa, label %.noexc17.thread, label %bb.h

.noexc17.thread:                                  ; preds = %.noexc34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4410
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4410
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE16extend_desugaredINtNtNtCs3oUPovFnLWP_4core4iter8adapters12GenericShuntINtNtB24_3map3MapINtNtB24_10filter_map9FilterMapINtNtNtB28_5slice4iter4IterNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENvMs2_NtB4a_3astNtB50_4Expr15cast_with_spaceENCNvXs_NtCs5cbCQMMIObr_10typst_eval4mathNtB50_4MathNtB5M_4Eval4eval0EINtNtB28_6result6ResultzINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtBM_4diag16SourceDiagnosticEEEEB5M_.exit.i

bb.h:                                             ; preds = %.noexc34
  %.sroa.69.0.copyload.i = load i64, ptr %.sroa.69.0..sroa_idx.i, align 8, !noalias !4410
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4410
  store i64 %i.z, ptr %i.a, align 8, !noalias !4410
  store ptr %i.ab, ptr %.sroa.6.0..sroa_idx2.i, align 8, !noalias !4410
  store i64 %i.ac, ptr %.sroa.8.0..sroa_idx4.i, align 8, !noalias !4410
  store i64 %.sroa.69.0.copyload.i, ptr %.sroa.10.0..sroa_idx6.i, align 8, !noalias !4410
  invoke void @_RNvMNtNtCsdaEETE4DqmE_13typst_library11foundations5valueNtB2_5Value7display(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
          to label %.noexc35 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !4393

.noexc35:                                         ; preds = %bb.h
  %i.ad = invoke noundef nonnull align 8 ptr @_RNvXs3_NtCs5PEMdK7bMAG_12typst_syntax3astNtB5_4ExprNtB5_7AstNode10to_untyped(i64 noundef %i.x, ptr noundef %i.y)
          to label %bb.j unwind label %bb.i, !noalias !4411, !inline_history !4393

bb.i:                                             ; preds = %.noexc35
  %i.ae = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs2_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB5_10RawContentNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.body.i7 unwind label %bb.l, !noalias !4411, !inline_history !4393

bb.j:                                             ; preds = %.noexc35
  %i.af = load i64, ptr %i.s, align 8, !range !38, !noalias !4410, !noundef !35 ; 2 uses
  %i.ag = icmp eq i64 %i.af, 1
  br i1 %i.ag, label %bb.k, label %.noexc17

bb.k:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.ai = load i64, ptr %i.ah, align 8, !range !38, !noalias !4411, !noundef !35
  br label %.noexc17

bb.l:                                             ; preds = %bb.i
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43, !noalias !4411, !inline_history !4393
  unreachable

.noexc17:                                         ; preds = %bb.j, %bb.k
  %.sroa.6102.0.copyload = phi i64 [ %i.af, %bb.j ], [ %i.ai, %bb.k ] ; 2 uses
  %.sroa.0100.0.copyload = load ptr, ptr %i.c, align 8, !noalias !4410 ; 2 uses
  %.sroa.5101.0.copyload = load ptr, ptr %.sroa.5101.0..sroa_idx, align 8, !noalias !4410 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4410
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ak = icmp eq ptr %.sroa.0100.0.copyload, null
  br i1 %i.ak, label %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE16extend_desugaredINtNtNtCs3oUPovFnLWP_4core4iter8adapters12GenericShuntINtNtB24_3map3MapINtNtB24_10filter_map9FilterMapINtNtNtB28_5slice4iter4IterNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENvMs2_NtB4a_3astNtB50_4Expr15cast_with_spaceENCNvXs_NtCs5cbCQMMIObr_10typst_eval4mathNtB50_4MathNtB5M_4Eval4eval0EINtNtB28_6result6ResultzINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtBM_4diag16SourceDiagnosticEEEEB5M_.exit.i, label %bb.m

bb.m:                                             ; preds = %.noexc17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !4412
  store ptr %.sroa.0100.0.copyload, ptr %i.f, align 8, !noalias !4412
  store ptr %.sroa.5101.0.copyload, ptr %.sroa.753.0..sroa_idx54, align 8, !noalias !4412
  store i64 %.sroa.6102.0.copyload, ptr %.sroa.753.sroa.5.0..sroa.753.0..sroa_idx54.sroa_idx, align 8, !noalias !4412
  %i.al = icmp samesign ult i64 %.sroa.9.0.copyload328, 384307168202282326
  call void @llvm.assume(i1 %i.al)
  %i.am = load i64, ptr %i.h, align 8, !range !43, !alias.scope !4409, !noalias !4403, !noundef !35
  %i.an = icmp eq i64 %.sroa.9.0.copyload328, %i.am
  br i1 %i.an, label %bb.o, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE7reserveCs5cbCQMMIObr_10typst_eval.exit.i.i

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE7reserveCs5cbCQMMIObr_10typst_eval.exit.i.i: ; preds = %._RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE7reserveCs5cbCQMMIObr_10typst_eval.exit.i.i_crit_edge, %bb.m
  %i.ao = phi ptr [ %.pre, %._RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE7reserveCs5cbCQMMIObr_10typst_eval.exit.i.i_crit_edge ], [ %i.t, %bb.m ] ; 2 uses
  %i.ap = getelementptr inbounds nuw [24 x i8], ptr %i.ao, i64 %.sroa.9.0.copyload328
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  %i.aq = add nuw nsw i64 %.sroa.9.0.copyload328, 1 ; 2 uses
  store i64 %i.aq, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !4409, !noalias !4403
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !4412
  br label %bb.e

bb.n:                                             ; preds = %bb.o
  %i.ar = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs2_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB5_10RawContentNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.body.i7 unwind label %bb.p, !noalias !4413, !inline_history !4395

bb.o:                                             ; preds = %bb.m
  invoke fastcc void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef %.sroa.9.0.copyload328, i64 noundef 1, i64 noundef 8, i64 noundef 24)
          to label %._RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE7reserveCs5cbCQMMIObr_10typst_eval.exit.i.i_crit_edge unwind label %bb.n, !noalias !4407, !inline_history !4395

._RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE7reserveCs5cbCQMMIObr_10typst_eval.exit.i.i_crit_edge: ; preds = %bb.o
  %.pre = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !4409, !noalias !4403
  br label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE7reserveCs5cbCQMMIObr_10typst_eval.exit.i.i

bb.p:                                             ; preds = %bb.n
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43, !noalias !4413, !inline_history !4395
end_hunk_0
begin_hunk_1_@_RNvXs1_NvCsdaEETE4DqmE_13typst_library1__NtB5_15___ComemoSurfaceNtB7_5World6source:bb.a
bb.k:                                             ; preds = %bb.f
  resume { ptr, i32 } %i.ad
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRINtNtB8_6option6OptionINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs89doag9UmMt_9toml_edit3key3KeyEENtB6_5Debug3fmtCs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !35, !align !45, !noundef !35 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18053)
  %i.c = load i64, ptr %i.b, align 8, !range !56, !alias.scope !18053, !noundef !35
  %.not.i = icmp eq i64 %i.c, -1
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !18054
  store ptr %i.b, ptr %i.a, align 8, !noalias !18054
  %i.d = call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @365, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @364)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !18054
  br label %_RNvXsR_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs89doag9UmMt_9toml_edit3key3KeyEENtNtB7_3fmt5Debug3fmtCs5cbCQMMIObr_10typst_eval.exit

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @363, i64 noundef 4), !noalias !18053
  br label %_RNvXsR_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs89doag9UmMt_9toml_edit3key3KeyEENtNtB7_3fmt5Debug3fmtCs5cbCQMMIObr_10typst_eval.exit

_RNvXsR_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs89doag9UmMt_9toml_edit3key3KeyEENtNtB7_3fmt5Debug3fmtCs5cbCQMMIObr_10typst_eval.exit: ; preds = %bb.b, %bb.c
  %.sroa.0.0.in.i = phi i1 [ %i.d, %bb.b ], [ %i.e, %bb.c ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs89doag9UmMt_9toml_edit3key3KeyENtB6_5Debug3fmtCs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !35, !align !45, !noundef !35 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18063)
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !18063, !nonnull !35, !noundef !35 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !18063, !noundef !35 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !18064
  call void @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter10debug_list(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !noalias !18065
  %.idx.i.i = mul nuw nsw i64 %i.g, 144
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx.i.i
  %i.i = icmp eq i64 %i.g, 0
  br i1 %i.i, label %_RNvXsr_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs89doag9UmMt_9toml_edit3key3KeyENtNtCs3oUPovFnLWP_4core3fmt5Debug3fmtCs5cbCQMMIObr_10typst_eval.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.sroa.0.05.i.i.i = phi ptr [ %i.j, %.lr.ph.i.i.i ], [ %i.e, %bb.a ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i, i64 144 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !18066
  store ptr %.sroa.0.05.i.i.i, ptr %i.a, align 8, !noalias !18066, !captures !46
  %i.k = call noundef nonnull align 8 ptr @_RNvMs6_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @37), !noalias !18063 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !18066
  %i.l = icmp eq ptr %i.j, %i.h
  br i1 %i.l, label %_RNvXsr_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs89doag9UmMt_9toml_edit3key3KeyENtNtCs3oUPovFnLWP_4core3fmt5Debug3fmtCs5cbCQMMIObr_10typst_eval.exit, label %.lr.ph.i.i.i

_RNvXsr_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs89doag9UmMt_9toml_edit3key3KeyENtNtCs3oUPovFnLWP_4core3fmt5Debug3fmtCs5cbCQMMIObr_10typst_eval.exit: ; preds = %.lr.ph.i.i.i, %bb.a
  %i.m = call noundef zeroext i1 @_RNvMs6_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b), !noalias !18063
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !18064
  ret i1 %i.m
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRINtNtNtB8_3ops5range5RangejENtB6_5Debug3fmtCs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !35, !align !45, !noundef !35 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !alias.scope !18074, !noundef !35 ; 2 uses
  %i.d = and i32 %i.c, 33554432
  %.not.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i, label %bb.b, label %.split.i

bb.b:                                             ; preds = %bb.a
  %i.e = and i32 %i.c, 67108864
  %.not1.i.i = icmp eq i32 %i.e, 0
  br i1 %.not1.i.i, label %.split10.i, label %_RNvXsZ_NtNtCs3oUPovFnLWP_4core3fmt3numjNtB7_5Debug3fmt.exit.i

.split.i:                                         ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_RNvXs6_NtNtCs3oUPovFnLWP_4core3fmt3numjNtB7_8LowerHex3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br i1 %i.f, label %_RNvXs_NtNtCs3oUPovFnLWP_4core3ops5rangeINtB4_5RangejENtNtB8_3fmt5Debug3fmtCs5cbCQMMIObr_10typst_eval.exit, label %bb.c

.split10.i:                                       ; preds = %bb.b
  %i.g = tail call noundef zeroext i1 @_RNvXsi_NtNtNtCs3oUPovFnLWP_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br i1 %i.g, label %_RNvXs_NtNtCs3oUPovFnLWP_4core3ops5rangeINtB4_5RangejENtNtB8_3fmt5Debug3fmtCs5cbCQMMIObr_10typst_eval.exit, label %bb.c

_RNvXsZ_NtNtCs3oUPovFnLWP_4core3fmt3numjNtB7_5Debug3fmt.exit.i: ; preds = %bb.b
  %i.h = tail call noundef zeroext i1 @_RNvXs8_NtNtCs3oUPovFnLWP_4core3fmt3numjNtB7_8UpperHex3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br i1 %i.h, label %_RNvXs_NtNtCs3oUPovFnLWP_4core3ops5rangeINtB4_5RangejENtNtB8_3fmt5Debug3fmtCs5cbCQMMIObr_10typst_eval.exit, label %bb.c

bb.c:                                             ; preds = %_RNvXsZ_NtNtCs3oUPovFnLWP_4core3fmt3numjNtB7_5Debug3fmt.exit.i, %.split10.i, %.split.i
  %i.i = load ptr, ptr %1, align 8, !alias.scope !18075, !nonnull !35, !noundef !35
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !18075, !nonnull !35, !align !45, !noundef !35
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !invariant.load !35, !nonnull !35
  %i.n = tail call noundef zeroext i1 %i.m(ptr noundef nonnull %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @150, i64 noundef 2) #48, !inline_history !18071
  br i1 %i.n, label %_RNvXs_NtNtCs3oUPovFnLWP_4core3ops5rangeINtB4_5RangejENtNtB8_3fmt5Debug3fmtCs5cbCQMMIObr_10typst_eval.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %i.p = load i32, ptr %i.b, align 8, !alias.scope !18076, !noundef !35 ; 2 uses
  %i.q = and i32 %i.p, 33554432
  %.not.i6.i = icmp eq i32 %i.q, 0
  br i1 %.not.i6.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.r = and i32 %i.p, 67108864
  %.not1.i8.i = icmp eq i32 %i.r, 0
  br i1 %.not1.i8.i, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.s = tail call noundef zeroext i1 @_RNvXs6_NtNtCs3oUPovFnLWP_4core3fmt3numjNtB7_8LowerHex3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.o, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXs_NtNtCs3oUPovFnLWP_4core3ops5rangeINtB4_5RangejENtNtB8_3fmt5Debug3fmtCs5cbCQMMIObr_10typst_eval.exit

bb.g:                                             ; preds = %bb.e
  %i.t = tail call noundef zeroext i1 @_RNvXsi_NtNtNtCs3oUPovFnLWP_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.o, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXs_NtNtCs3oUPovFnLWP_4core3ops5rangeINtB4_5RangejENtNtB8_3fmt5Debug3fmtCs5cbCQMMIObr_10typst_eval.exit

bb.h:                                             ; preds = %bb.e
  %i.u = tail call noundef zeroext i1 @_RNvXs8_NtNtCs3oUPovFnLWP_4core3fmt3numjNtB7_8UpperHex3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.o, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXs_NtNtCs3oUPovFnLWP_4core3ops5rangeINtB4_5RangejENtNtB8_3fmt5Debug3fmtCs5cbCQMMIObr_10typst_eval.exit

_RNvXs_NtNtCs3oUPovFnLWP_4core3ops5rangeINtB4_5RangejENtNtB8_3fmt5Debug3fmtCs5cbCQMMIObr_10typst_eval.exit: ; preds = %.split.i, %.split10.i, %_RNvXsZ_NtNtCs3oUPovFnLWP_4core3fmt3numjNtB7_5Debug3fmt.exit.i, %bb.c, %bb.f, %bb.g, %bb.h
  %.sroa.0.0.i = phi i1 [ true, %bb.c ], [ true, %_RNvXsZ_NtNtCs3oUPovFnLWP_4core3fmt3numjNtB7_5Debug3fmt.exit.i ], [ true, %.split10.i ], [ true, %.split.i ], [ %i.s, %bb.f ], [ %i.u, %bb.h ], [ %i.t, %bb.g ]
  ret i1 %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtCs5PEMdK7bMAG_12typst_syntax4path11VirtualPathNtB6_5Debug3fmtCs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !35, !align !45, !noundef !35
  %i.b = tail call noundef zeroext i1 @_RNvXs5_NtCs5PEMdK7bMAG_12typst_syntax4pathNtB5_11VirtualPathNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtCs89doag9UmMt_9toml_edit15internal_string14InternalStringNtB6_5Debug3fmtCs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !35, !align !45, !noundef !35 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18079)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !18079, !nonnull !35, !noundef !35
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !18079, !noundef !35
  %i.f = tail call noundef zeroext i1 @_RNvXsh_NtCs3oUPovFnLWP_4core3fmteNtB5_5Debug3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !noalias !18079
  ret i1 %i.f
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtCs89doag9UmMt_9toml_edit3key3KeyNtB6_5Debug3fmtCs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !35, !align !45, !noundef !35 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !18083
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  store ptr %i.e, ptr %i.a, align 8, !noalias !18083
  %i.f = call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter26debug_struct_field4_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @391, i64 noundef 3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @232, i64 noundef 3, ptr noundef nonnull readonly align 8 dereferenceable(144) %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @387, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @392, i64 noundef 4, ptr noundef nonnull readonly %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @388, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @393, i64 noundef 10, ptr noundef nonnull readonly %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @389, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @394, i64 noundef 12, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @390)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !18083
  ret i1 %i.f
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtCs89doag9UmMt_9toml_edit4repr4ReprNtB6_5Debug3fmtCs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = load ptr, ptr %0, align 8, !nonnull !35, !align !45, !noundef !35 ; 3 uses
  %.val = load ptr, ptr %1, align 8               ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.f, align 8            ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18090)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18091)
  %i.g = load i64, ptr %i.e, align 8, !range !77, !alias.scope !18092, !noundef !35 ; 3 uses
  %i.h = icmp ne i64 %i.g, -9223372036854775807
  tail call void @llvm.assume(i1 %i.h)
  %i.i = xor i64 %i.g, -9223372036854775808
  %i.j = icmp slt i64 %i.g, 0
  %i.k = select i1 %i.j, i64 %i.i, i64 1
  switch i64 %i.k, label %bb.b [
    i64 0, label %bb.e
    i64 1, label %bb.c
    i64 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !18093
  store ptr %i.e, ptr %i.d, align 8, !noalias !18093
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !18093
  store ptr %i.d, ptr %i.c, align 8, !noalias !18093
  %.sroa.47.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtCs89doag9UmMt_9toml_edit15internal_string14InternalStringNtB6_5Debug3fmtCs5cbCQMMIObr_10typst_eval, ptr %.sroa.47.0..sroa_idx.i.i, align 8, !noalias !18093
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val), "nonnull"(ptr %.val1) ]
  %i.l = call noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull %.val, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val1, ptr noundef nonnull @173, ptr noundef nonnull %i.c), !noalias !18094
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !18093
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !18093
  br label %_RNvXs2_NtCs89doag9UmMt_9toml_edit4reprNtB5_4ReprNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt.exit

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !18093
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.m, ptr %i.b, align 8, !noalias !18093
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !18093
  store ptr %i.b, ptr %i.a, align 8, !noalias !18093
  %.sroa.43.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRINtNtNtB8_3ops5range5RangejENtB6_5Debug3fmtCs5cbCQMMIObr_10typst_eval, ptr %.sroa.43.0..sroa_idx.i.i, align 8, !noalias !18093
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val), "nonnull"(ptr %.val1) ]
  %i.n = call noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull %.val, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val1, ptr noundef nonnull @173, ptr noundef nonnull %i.a), !noalias !18094
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !18093
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !18093
  br label %_RNvXs2_NtCs89doag9UmMt_9toml_edit4reprNtB5_4ReprNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt.exit

bb.e:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val), "nonnull"(ptr %.val1) ]
  %i.o = getelementptr inbounds nuw i8, ptr %.val1, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !invariant.load !35, !noalias !18093, !nonnull !35
  %i.q = tail call noundef zeroext i1 %i.p(ptr noundef nonnull %.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @318, i64 noundef 5) #48, !noalias !18093, !inline_history !18089
  br label %_RNvXs2_NtCs89doag9UmMt_9toml_edit4reprNtB5_4ReprNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt.exit

_RNvXs2_NtCs89doag9UmMt_9toml_edit4reprNtB5_4ReprNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt.exit: ; preds = %bb.c, %bb.d, %bb.e
  %.sroa.0.0.in.i.i = phi i1 [ %i.q, %bb.e ], [ %i.n, %bb.d ], [ %i.l, %bb.c ]
  ret i1 %.sroa.0.0.in.i.i
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtCs89doag9UmMt_9toml_edit4repr5DecorNtB6_5Debug3fmtCs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 8 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !35, !align !45, !noundef !35 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18098)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !18099
  call void @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @339, i64 noundef 5), !noalias !18098
  %i.c = load i64, ptr %i.b, align 8, !range !58, !alias.scope !18098, !noundef !35
  %.not.i = icmp eq i64 %i.c, -1
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @342, i64 noundef 6, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @343) ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @342, i64 noundef 6, ptr noundef nonnull @340, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @341), !noalias !18098 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !range !58, !alias.scope !18098, !noundef !35
  %.not1.i = icmp eq i64 %i.g, -1
  br i1 %.not1.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @344, i64 noundef 6, ptr noundef nonnull readonly %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @343) ; 0 uses
  br label %_RNvXs4_NtCs89doag9UmMt_9toml_edit4reprNtB5_5DecorNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt.exit

bb.f:                                             ; preds = %bb.d
  %i.i = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @344, i64 noundef 6, ptr noundef nonnull @340, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @341) ; 0 uses
  br label %_RNvXs4_NtCs89doag9UmMt_9toml_edit4reprNtB5_5DecorNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt.exit

_RNvXs4_NtCs89doag9UmMt_9toml_edit4reprNtB5_5DecorNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt.exit: ; preds = %bb.e, %bb.f
  %i.j = call noundef zeroext i1 @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !18099
  ret i1 %i.j
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtNtB8_3mem9alignment9AlignmentNtB6_5Debug3fmtCs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !35, !align !45, !noundef !35
  %i.b = tail call noundef zeroext i1 @_RNvXs_NtNtCs3oUPovFnLWP_4core3mem9alignmentNtB4_9AlignmentNtNtB8_3fmt5Debug3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtNtB8_5alloc6layout6LayoutNtB6_5Debug3fmtCs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !35, !align !45, !noundef !35 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !18103
  store ptr %i.b, ptr %i.a, align 8, !noalias !18103
  %i.d = call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @347, i64 noundef 6, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @348, i64 noundef 4, ptr noundef nonnull readonly %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @345, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @349, i64 noundef 5, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @346)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !18103
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRReNtB6_5Debug3fmtCs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !35, !align !45, !noundef !35 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18106)
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !18106, !nonnull !35, !noundef !35
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !18106, !noundef !35
  %i.e = tail call noundef zeroext i1 @_RNvXsh_NtCs3oUPovFnLWP_4core3fmteNtB5_5Debug3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !noalias !18106
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtReNtB6_5Debug3fmtCs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !35, !noundef !35
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !35
  %i.d = tail call noundef zeroext i1 @_RNvXsh_NtCs3oUPovFnLWP_4core3fmteNtB5_5Debug3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRjNtB6_5Debug3fmtCs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !35, !align !45, !noundef !35 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i32, ptr %i.b, align 8, !alias.scope !18109, !noundef !35 ; 2 uses
  %i.d = and i32 %i.c, 33554432
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = and i32 %i.c, 67108864
  %.not1.i = icmp eq i32 %i.e, 0
  br i1 %.not1.i, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_RNvXs6_NtNtCs3oUPovFnLWP_4core3fmt3numjNtB7_8LowerHex3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsZ_NtNtCs3oUPovFnLWP_4core3fmt3numjNtB7_5Debug3fmt.exit

bb.d:                                             ; preds = %bb.b
  %i.g = tail call noundef zeroext i1 @_RNvXsi_NtNtNtCs3oUPovFnLWP_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsZ_NtNtCs3oUPovFnLWP_4core3fmt3numjNtB7_5Debug3fmt.exit

bb.e:                                             ; preds = %bb.b
  %i.h = tail call noundef zeroext i1 @_RNvXs8_NtNtCs3oUPovFnLWP_4core3fmt3numjNtB7_8UpperHex3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsZ_NtNtCs3oUPovFnLWP_4core3fmt3numjNtB7_5Debug3fmt.exit

_RNvXsZ_NtNtCs3oUPovFnLWP_4core3fmt3numjNtB7_5Debug3fmt.exit: ; preds = %bb.c, %bb.d, %bb.e
  %.sroa.0.0.in.i = phi i1 [ %i.f, %bb.c ], [ %i.h, %bb.e ], [ %i.g, %bb.d ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtRDNtNtCs7PiwjADO7TO_10serde_core2de8ExpectedEL_NtB6_7Display3fmtCs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !35, !noundef !35
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !35, !align !45, !noundef !35
  %i.d = tail call noundef zeroext i1 @_RNvXs1_NtCs7PiwjADO7TO_10serde_core2deDNtB5_8ExpectedEL_NtNtCs3oUPovFnLWP_4core3fmt7Display3fmt(ptr noundef nonnull %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtRNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtB6_7Display3fmtCs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !35, !align !45, !noundef !35 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 15
  %i.c = load i8, ptr %i.b, align 1, !alias.scope !18114, !noundef !35 ; 2 uses
  %.not.i.i = icmp sgt i8 %i.c, -1                ; 2 uses
  %i.d = and i8 %i.c, 127
  %i.e = zext nneg i8 %i.d to i64
  %i.f = load ptr, ptr %i.a, align 8, !alias.scope !18114, !nonnull !35
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !18114
  %.sroa.3.0.i.i = select i1 %.not.i.i, i64 %i.h, i64 %i.e
  %.sroa.0.0.i.i = select i1 %.not.i.i, ptr %i.f, ptr %i.a
  %i.i = tail call noundef zeroext i1 @_RNvXsi_NtCs3oUPovFnLWP_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i.i, i64 noundef %.sroa.3.0.i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.i
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtRNtNtNtCsdaEETE4DqmE_13typst_library11foundations2ty4TypeNtB6_7Display3fmtCs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !35, !align !45, !noundef !35
  %i.b = tail call noundef zeroext i1 @_RNvXs1_NtNtCsdaEETE4DqmE_13typst_library11foundations2tyNtB5_4TypeNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtReNtB6_7Display3fmtCs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !35, !noundef !35
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !35
  %i.d = tail call noundef zeroext i1 @_RNvXsi_NtCs3oUPovFnLWP_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs2_NtCs5cbCQMMIObr_10typst_eval4callNtNtCs5PEMdK7bMAG_12typst_syntax3ast7ClosureNtB7_4Eval4eval(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noalias nofree noundef align 8 dereferenceable(384) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [64 x i8], align 8                ; 4 uses
  %i.c = alloca [96 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [64 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 5 uses
  %i.g = alloca [40 x i8], align 8                ; 9 uses
  %i.h = alloca [136 x i8], align 8               ; 7 uses
  %i.i = alloca [176 x i8], align 8               ; 11 uses
  %i.j = alloca [176 x i8], align 8               ; 10 uses
  %i.k = alloca [32 x i8], align 8                ; 6 uses
  %i.l = alloca [32 x i8], align 8                ; 8 uses
  %i.m = alloca [16 x i8], align 8                ; 7 uses
  %i.n = alloca [24 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store i64 0, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 3 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 4 uses
  store i64 0, ptr %i.p, align 8
  %i.q = invoke noundef nonnull align 8 ptr @_RNvMsZ_NtCs5PEMdK7bMAG_12typst_syntax3astNtB5_7Closure6params(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1)
          to label %bb.b unwind label %.body24.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.b:                                             ; preds = %bb.a
  %i.r = invoke { ptr, ptr } @_RNvMs10_NtCs5PEMdK7bMAG_12typst_syntax3astNtB6_6Params8children(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.q)
          to label %bb.c unwind label %.body24.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses
end_hunk_1
