Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/insta-020b41739abf7dee.insta.f5a96bf8015bdfbc-cgu.0?download=true
inline.NumInlined: 7723
inline.NumDeleted: 3104
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 123
loop-unroll.NumUnrolled: 145
begin_hunk_0_@"_ZN98_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter..SpecFromIter$LT$T$C$I$GT$$GT$9from_iter17h96c76bf58e26adcdE":bb.a
  br i1 %i.r, label %bb.c, label %.preheader

bb.c:                                             ; preds = %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h492b47a98e4f6cccE.exit.i.i"
  store i64 %i.f, ptr %i.m, align 8, !noalias !23930
  br label %"_ZN111_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter_nested..SpecFromIterNested$LT$T$C$I$GT$$GT$9from_iter17h4a5617397ac58bfbE.exit"

.body:                                            ; preds = %.preheader
  %i.s = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.6.0, ptr %i.m, align 8, !noalias !23930
  invoke fastcc void @"_ZN4core3ptr86drop_in_place$LT$alloc..vec..Vec$LT$insta..content..yaml..vendored..yaml..Yaml$GT$$GT$17h43e739234e4e0f0bE"(ptr noalias noundef align 8 dereferenceable(24) %i.b) #55
          to label %bb.e unwind label %bb.d, !noalias !23928, !inline_history !23927

bb.d:                                             ; preds = %.body
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56, !noalias !23928, !inline_history !23927
  unreachable

bb.e:                                             ; preds = %.body
  resume { ptr, i32 } %i.s

"_ZN111_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter_nested..SpecFromIterNested$LT$T$C$I$GT$$GT$9from_iter17h4a5617397ac58bfbE.exit": ; preds = %.noexc1, %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !23928
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 8 dereferenceable(72) ptr @"_ZN99_$LT$insta..content..yaml..vendored..yaml..Yaml$u20$as$u20$core..ops..index..Index$LT$usize$GT$$GT$5index17hc8f3ca14a6231c4aE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(72) %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 6 uses
  %i.b = load i8, ptr %0, align 8, !range !16, !noundef !17
  switch i8 %i.b, label %bb.c [
    i8 4, label %bb.b
    i8 5, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i64, ptr %i.c, align 8, !noundef !17
  %i.e = icmp ult i64 %1, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !17
  %i.h = getelementptr inbounds nuw [72 x i8], ptr %i.g, i64 %1
  %.sroa.02.0 = select i1 %i.e, ptr %i.h, ptr @_ZN5insta7content4yaml8vendored4yaml9BAD_VALUE17hafa023aeb1ede197E
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.a, %bb.b
  %.sroa.0.0 = phi ptr [ %.sroa.02.0, %bb.b ], [ %_ZN5insta7content4yaml8vendored4yaml9BAD_VALUE17hafa023aeb1ede197E., %bb.d ], [ @_ZN5insta7content4yaml8vendored4yaml9BAD_VALUE17hafa023aeb1ede197E, %bb.a ]
  ret ptr %.sroa.0.0

bb.d:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %1, ptr %i.j, align 8
  store i8 1, ptr %i.a, align 8
  %i.k = call fastcc noundef align 8 dereferenceable_or_null(72) ptr @"_ZN15linked_hash_map30LinkedHashMap$LT$K$C$V$C$S$GT$3get17h80951a8a965ccc7dE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.a) ; 2 uses
  %.not = icmp eq ptr %i.k, null
  %_ZN5insta7content4yaml8vendored4yaml9BAD_VALUE17hafa023aeb1ede197E. = select i1 %.not, ptr @_ZN5insta7content4yaml8vendored4yaml9BAD_VALUE17hafa023aeb1ede197E, ptr %i.k
  call fastcc void @"_ZN4core3ptr63drop_in_place$LT$insta..content..yaml..vendored..yaml..Yaml$GT$17hb8081eeb1d574197E"(ptr noalias noundef align 8 dereferenceable(72) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.c
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN9hashbrown11rustc_entry62_$LT$impl$u20$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$GT$11rustc_entry17h896609c81019143bE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull align 8 dereferenceable(48) %1, i64 noundef range(i64 0, 2) %2, ptr noundef nonnull %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %i.b = alloca [1 x i8], align 1                 ; 4 uses
  %i.c = alloca [72 x i8], align 16               ; 13 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !23983
  %.sroa.48.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.59.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %.sroa.610.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.711.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load <2 x i64>, ptr %i.d, align 8        ; 3 uses
  %i.f = shufflevector <2 x i64> %i.e, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.g = xor <2 x i64> %i.f, <i64 8317987319222330741, i64 7816392313619706465>
  store <2 x i64> %i.g, ptr %i.c, align 16, !alias.scope !23984, !noalias !23983
  %i.h = shufflevector <2 x i64> %i.e, <2 x i64> poison, <2 x i32> <i32 1, i32 1>
  %i.i = xor <2 x i64> %i.h, <i64 7237128888997146477, i64 8387220255154660723>
  store <2 x i64> %i.i, ptr %.sroa.59.0..sroa_idx.i.i, align 16, !alias.scope !23984, !noalias !23983
  store <2 x i64> %i.e, ptr %.sroa.711.0..sroa_idx.i.i, align 16, !alias.scope !23984, !noalias !23983
  %.sroa.913.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.913.0..sroa_idx.i.i, i8 0, i64 24, i1 false), !alias.scope !23984, !noalias !23983
  %i.j = trunc nuw i64 %2 to i1                   ; 2 uses
  %.val2.i.i.i = load ptr, ptr %3, align 8, !noalias !23985, !nonnull !17, !align !31, !noundef !17 ; 2 uses
  %i.k = getelementptr i8, ptr %3, i64 8
  %.val3.i.i.i = load i64, ptr %i.k, align 8, !noalias !23985, !noundef !17 ; 5 uses
  call fastcc void @"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he374cecf129c27d4E"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.c, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val2.i.i.i, i64 noundef %.val3.i.i.i), !noalias !23983
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !23986
  store i8 -1, ptr %i.b, align 1, !noalias !23986
  call fastcc void @"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he374cecf129c27d4E"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.c, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.b, i64 noundef 1), !noalias !23987
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !23986
  br label %_ZN4core4hash11BuildHasher8hash_one17he739ad583b9a31c5E.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !23988
  store i8 -1, ptr %i.a, align 1, !noalias !23988
  call fastcc void @"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he374cecf129c27d4E"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.c, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.a, i64 noundef 1), !noalias !23989
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !23988
  br label %_ZN4core4hash11BuildHasher8hash_one17he739ad583b9a31c5E.exit

_ZN4core4hash11BuildHasher8hash_one17he739ad583b9a31c5E.exit: ; preds = %bb.b, %bb.c
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.c, align 16, !alias.scope !23990, !noalias !23983
  %.sroa.10.0.copyload.i.i.i = load i64, ptr %.sroa.48.0..sroa_idx.i.i, align 8, !alias.scope !23990, !noalias !23983
  %.sroa.17.0.copyload.i.i.i = load i64, ptr %.sroa.59.0..sroa_idx.i.i, align 16, !alias.scope !23990, !noalias !23983 ; 3 uses
  %.sroa.22.0.copyload.i.i.i = load i64, ptr %.sroa.610.0..sroa_idx.i.i, align 8, !alias.scope !23990, !noalias !23983
  %i.l = load i64, ptr %.sroa.913.0..sroa_idx.i.i, align 16, !alias.scope !23990, !noalias !23983, !noundef !17
  %i.m = shl i64 %i.l, 56
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !23990, !noalias !23983, !noundef !17
  %i.p = or i64 %i.m, %i.o                        ; 2 uses
  %i.q = xor i64 %i.p, %.sroa.22.0.copyload.i.i.i ; 3 uses
  %i.r = add i64 %.sroa.17.0.copyload.i.i.i, %.sroa.0.0.copyload.i.i.i ; 3 uses
  %i.s = add i64 %i.q, %.sroa.10.0.copyload.i.i.i ; 2 uses
  %i.t = tail call i64 @llvm.fshl.i64(i64 %.sroa.17.0.copyload.i.i.i, i64 %.sroa.17.0.copyload.i.i.i, i64 13)
  %i.u = xor i64 %i.t, %i.r                       ; 3 uses
  %i.v = tail call i64 @llvm.fshl.i64(i64 %i.q, i64 %i.q, i64 16)
  %i.w = xor i64 %i.v, %i.s                       ; 3 uses
  %i.x = tail call i64 @llvm.fshl.i64(i64 %i.r, i64 %i.r, i64 32)
  %i.y = add i64 %i.s, %i.u                       ; 3 uses
  %i.z = add i64 %i.w, %i.x                       ; 2 uses
  %i.aa = tail call i64 @llvm.fshl.i64(i64 %i.u, i64 %i.u, i64 17)
  %i.ab = xor i64 %i.y, %i.aa                     ; 3 uses
  %i.ac = tail call i64 @llvm.fshl.i64(i64 %i.w, i64 %i.w, i64 21)
  %i.ad = xor i64 %i.ac, %i.z                     ; 3 uses
  %i.ae = tail call i64 @llvm.fshl.i64(i64 %i.y, i64 %i.y, i64 32)
  %i.af = xor i64 %i.z, %i.p
  %i.ag = xor i64 %i.ae, 255
  %i.ah = add i64 %i.af, %i.ab                    ; 3 uses
  %i.ai = add i64 %i.ad, %i.ag                    ; 2 uses
  %i.aj = tail call i64 @llvm.fshl.i64(i64 %i.ab, i64 %i.ab, i64 13)
  %i.ak = xor i64 %i.ah, %i.aj                    ; 3 uses
  %i.al = tail call i64 @llvm.fshl.i64(i64 %i.ad, i64 %i.ad, i64 16)
  %i.am = xor i64 %i.al, %i.ai                    ; 3 uses
  %i.an = tail call i64 @llvm.fshl.i64(i64 %i.ah, i64 %i.ah, i64 32)
  %i.ao = add i64 %i.ak, %i.ai                    ; 3 uses
  %i.ap = add i64 %i.am, %i.an                    ; 2 uses
  %i.aq = tail call i64 @llvm.fshl.i64(i64 %i.ak, i64 %i.ak, i64 17)
  %i.ar = xor i64 %i.ao, %i.aq                    ; 3 uses
  %i.as = tail call i64 @llvm.fshl.i64(i64 %i.am, i64 %i.am, i64 21)
  %i.at = xor i64 %i.as, %i.ap                    ; 3 uses
  %i.au = tail call i64 @llvm.fshl.i64(i64 %i.ao, i64 %i.ao, i64 32)
  %i.av = add i64 %i.ar, %i.ap                    ; 3 uses
  %i.aw = add i64 %i.at, %i.au                    ; 2 uses
  %i.ax = tail call i64 @llvm.fshl.i64(i64 %i.ar, i64 %i.ar, i64 13)
  %i.ay = xor i64 %i.ax, %i.av                    ; 3 uses
  %i.az = tail call i64 @llvm.fshl.i64(i64 %i.at, i64 %i.at, i64 16)
  %i.ba = xor i64 %i.az, %i.aw                    ; 3 uses
  %i.bb = tail call i64 @llvm.fshl.i64(i64 %i.av, i64 %i.av, i64 32)
  %i.bc = add i64 %i.ay, %i.aw                    ; 3 uses
  %i.bd = add i64 %i.ba, %i.bb                    ; 2 uses
  %i.be = tail call i64 @llvm.fshl.i64(i64 %i.ay, i64 %i.ay, i64 17)
  %i.bf = xor i64 %i.be, %i.bc                    ; 3 uses
  %i.bg = tail call i64 @llvm.fshl.i64(i64 %i.ba, i64 %i.ba, i64 21)
  %i.bh = xor i64 %i.bg, %i.bd                    ; 3 uses
  %i.bi = tail call i64 @llvm.fshl.i64(i64 %i.bc, i64 %i.bc, i64 32)
  %i.bj = add i64 %i.bf, %i.bd
  %i.bk = add i64 %i.bh, %i.bi                    ; 2 uses
  %i.bl = tail call i64 @llvm.fshl.i64(i64 %i.bf, i64 %i.bf, i64 13)
  %i.bm = xor i64 %i.bl, %i.bj                    ; 3 uses
  %i.bn = tail call i64 @llvm.fshl.i64(i64 %i.bh, i64 %i.bh, i64 16)
  %i.bo = xor i64 %i.bn, %i.bk                    ; 2 uses
  %i.bp = add i64 %i.bm, %i.bk                    ; 3 uses
  %i.bq = tail call i64 @llvm.fshl.i64(i64 %i.bm, i64 %i.bm, i64 17)
  %i.br = tail call i64 @llvm.fshl.i64(i64 %i.bo, i64 %i.bo, i64 21)
  %i.bs = tail call i64 @llvm.fshl.i64(i64 %i.bp, i64 %i.bp, i64 32)
  %i.bt = xor i64 %i.br, %i.bq
  %i.bu = xor i64 %i.bt, %i.bs
  %i.bv = xor i64 %i.bu, %i.bp                    ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !23983
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23991)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23992)
  %i.bw = lshr i64 %i.bv, 57
  %i.bx = trunc nuw nsw i64 %i.bw to i8
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bz = load i64, ptr %i.by, align 8, !alias.scope !23993, !noalias !23994, !noundef !17 ; 4 uses
  %i.ca = load ptr, ptr %1, align 8, !alias.scope !23993, !noalias !23994, !nonnull !17, !noundef !17 ; 5 uses
  %.sroa.0.0.vec.insert.i.i = insertelement <16 x i8> poison, i8 %i.bx, i64 0
  %.sroa.0.15.vec.insert.i.i = shufflevector <16 x i8> %.sroa.0.0.vec.insert.i.i, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  br i1 %i.j, label %.split.us.i, label %.split.i

.split.us.i:                                      ; preds = %_ZN4core4hash11BuildHasher8hash_one17he739ad583b9a31c5E.exit, %7
  %.sroa.9.0.i.us.i = phi i64 [ %8, %7 ], [ 0, %_ZN4core4hash11BuildHasher8hash_one17he739ad583b9a31c5E.exit ]
  %.pn.us.i = phi i64 [ %9, %7 ], [ %i.bv, %_ZN4core4hash11BuildHasher8hash_one17he739ad583b9a31c5E.exit ]
  %.sroa.01.0.i.us.i = and i64 %.pn.us.i, %i.bz   ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 %.sroa.01.0.i.us.i
  %.sroa.0.0.copyload.i27.us.i = load <16 x i8>, ptr %i.cb, align 1, !noalias !23995 ; 2 uses
  %i.cc = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.us.i, %.sroa.0.15.vec.insert.i.i
  %i.cd = bitcast <16 x i1> %i.cc to i16          ; 2 uses
  %.not.i.not33.us.i = icmp eq i16 %i.cd, 0
  br i1 %.not.i.not33.us.i, label %._crit_edge.split.us.us.i, label %.lr.ph.us.i

._crit_edge.split.us.us.i:                        ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h976b2aae2fd20704E.exit.thread.us.us.i", %.split.us.i
  %4 = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.us.i, splat (i8 -1)
  %5 = bitcast <16 x i1> %4 to i16
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %7, label %.loopexit10, !prof !22

7:                                                ; preds = %._crit_edge.split.us.us.i
  %8 = add i64 %.sroa.9.0.i.us.i, 16              ; 2 uses
  %9 = add i64 %.sroa.01.0.i.us.i, %8
  br label %.split.us.i

.lr.ph.us.i:                                      ; preds = %.split.us.i, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h976b2aae2fd20704E.exit.thread.us.us.i"
  %.sroa.06.0.i34.us.us.i = phi i16 [ %i.cr, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h976b2aae2fd20704E.exit.thread.us.us.i" ], [ %i.cd, %.split.us.i ] ; 3 uses
  %i.ce = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i34.us.us.i, i1 true)
  %i.cf = zext nneg i16 %i.ce to i64
  %i.cg = add i64 %.sroa.01.0.i.us.i, %i.cf
  %i.ch = and i64 %i.cg, %i.bz
  %i.ci = sub nsw i64 0, %i.ch                    ; 2 uses
  %i.cj = getelementptr inbounds [24 x i8], ptr %i.ca, i64 %i.ci ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23996), !noalias !23997
  %i.ck = getelementptr inbounds i8, ptr %i.cj, i64 -16
  %.val.i.i.us.us.i = load ptr, ptr %i.ck, align 8, !noalias !23998, !nonnull !17, !align !29, !noundef !17 ; 3 uses
  %i.cl = getelementptr i8, ptr %.val.i.i.us.us.i, i64 8
  %.val1.i12.i.i.us.us.i = load i64, ptr %i.cl, align 8, !noalias !23999, !noundef !17
  %.not.i.i.i14.i.i.us.us.i = icmp eq i64 %.val1.i12.i.i.us.us.i, %.val3.i.i.i
  br i1 %.not.i.i.i14.i.i.us.us.i, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h976b2aae2fd20704E.exit.us.us.i", label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h976b2aae2fd20704E.exit.thread.us.us.i", !prof !72

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h976b2aae2fd20704E.exit.us.us.i": ; preds = %.lr.ph.us.i
  %i.cm = getelementptr inbounds i8, ptr %i.cj, i64 -24
  %i.cn = load i64, ptr %i.cm, align 8, !range !44, !alias.scope !24000, !noalias !24001, !noundef !17
  %i.co = trunc nuw i64 %i.cn to i1               ; 2 uses
  %.val.i.i.us.us.i. = select i1 %i.co, ptr %.val.i.i.us.us.i, ptr %3
  %..val.i.i.us.us.i = select i1 %i.co, ptr %3, ptr %.val.i.i.us.us.i
  %.val2.i16.i.i.us.us.i = load ptr, ptr %..val.i.i.us.us.i, align 8, !noalias !23999, !nonnull !17, !align !31, !noundef !17
  %.val.i17.i.i.us.us.i = load ptr, ptr %.val.i.i.us.us.i., align 8, !noalias !23999, !nonnull !17, !align !31, !noundef !17
  %bcmp.i.i.i18.i.i.us.us.i = tail call i32 @bcmp(ptr nonnull readonly align 1 %.val.i17.i.i.us.us.i, ptr nonnull readonly align 1 %.val2.i16.i.i.us.us.i, i64 %.val3.i.i.i), !noalias !23999
  %i.cp = icmp eq i32 %bcmp.i.i.i18.i.i.us.us.i, 0
  br i1 %i.cp, label %.loopexit, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h976b2aae2fd20704E.exit.thread.us.us.i", !prof !66

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h976b2aae2fd20704E.exit.thread.us.us.i": ; preds = %.lr.ph.us.i, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h976b2aae2fd20704E.exit.us.us.i"
  %i.cq = add i16 %.sroa.06.0.i34.us.us.i, -1
  %i.cr = and i16 %i.cq, %.sroa.06.0.i34.us.us.i  ; 2 uses
  %.not.i.not.us.us.i = icmp eq i16 %i.cr, 0
  br i1 %.not.i.not.us.us.i, label %._crit_edge.split.us.us.i, label %.lr.ph.us.i

.split.i:                                         ; preds = %_ZN4core4hash11BuildHasher8hash_one17he739ad583b9a31c5E.exit, %bb.d
  %.sroa.9.0.i.i = phi i64 [ %i.dj, %bb.d ], [ 0, %_ZN4core4hash11BuildHasher8hash_one17he739ad583b9a31c5E.exit ]
  %.pn.i = phi i64 [ %i.dk, %bb.d ], [ %i.bv, %_ZN4core4hash11BuildHasher8hash_one17he739ad583b9a31c5E.exit ]
  %.sroa.01.0.i.i = and i64 %.pn.i, %i.bz         ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ca, i64 %.sroa.01.0.i.i
  %.sroa.0.0.copyload.i27.i = load <16 x i8>, ptr %i.cs, align 1, !noalias !23995 ; 2 uses
  %i.ct = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i, %.sroa.0.15.vec.insert.i.i
  %i.cu = bitcast <16 x i1> %i.ct to i16          ; 2 uses
  %.not.i.not33.i = icmp eq i16 %i.cu, 0
  br i1 %.not.i.not33.i, label %._crit_edge.split.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.split.i, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h976b2aae2fd20704E.exit.thread.i"
  %.sroa.06.0.i34.i = phi i16 [ %i.di, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h976b2aae2fd20704E.exit.thread.i" ], [ %i.cu, %.split.i ] ; 3 uses
  %i.cv = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i34.i, i1 true)
  %i.cw = zext nneg i16 %i.cv to i64
  %i.cx = add i64 %.sroa.01.0.i.i, %i.cw
  %i.cy = and i64 %i.cx, %i.bz
  %i.cz = sub nsw i64 0, %i.cy                    ; 2 uses
  %i.da = getelementptr inbounds [24 x i8], ptr %i.ca, i64 %i.cz
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23996), !noalias !23997
  %i.db = getelementptr inbounds i8, ptr %i.da, i64 -16
  %.sroa.02.0.i.val.i.i.i = load ptr, ptr %i.db, align 8, !noalias !23998, !nonnull !17, !align !29, !noundef !17 ; 2 uses
  %i.dc = getelementptr i8, ptr %.sroa.02.0.i.val.i.i.i, i64 8
  %.val1.i4.i.i.i = load i64, ptr %i.dc, align 8, !noalias !23999, !noundef !17
  %.not.i.i.i6.i.i.i = icmp eq i64 %.val1.i4.i.i.i, %.val3.i.i.i
  br i1 %.not.i.i.i6.i.i.i, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h976b2aae2fd20704E.exit.i", label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h976b2aae2fd20704E.exit.thread.i", !prof !72

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h976b2aae2fd20704E.exit.i": ; preds = %.lr.ph.i
  %.val.i17.i.i.i = load ptr, ptr %.sroa.02.0.i.val.i.i.i, align 8, !noalias !23999, !nonnull !17, !align !31, !noundef !17
  %bcmp.i.i.i18.i.i.i = tail call i32 @bcmp(ptr nonnull readonly align 1 %.val.i17.i.i.i, ptr nonnull readonly align 1 %.val2.i.i.i, i64 %.val3.i.i.i), !noalias !23999
  %i.dd = icmp eq i32 %bcmp.i.i.i18.i.i.i, 0
  br i1 %i.dd, label %.loopexit, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h976b2aae2fd20704E.exit.thread.i", !prof !66

._crit_edge.split.i:                              ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h976b2aae2fd20704E.exit.thread.i", %.split.i
  %i.de = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i, splat (i8 -1)
  %i.df = bitcast <16 x i1> %i.de to i16
  %i.dg = icmp eq i16 %i.df, 0
  br i1 %i.dg, label %bb.d, label %.loopexit10, !prof !22

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h976b2aae2fd20704E.exit.thread.i": ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h976b2aae2fd20704E.exit.i", %.lr.ph.i
  %i.dh = add i16 %.sroa.06.0.i34.i, -1
  %i.di = and i16 %i.dh, %.sroa.06.0.i34.i        ; 2 uses
  %.not.i.not.i = icmp eq i16 %i.di, 0
  br i1 %.not.i.not.i, label %._crit_edge.split.i, label %.lr.ph.i

bb.d:                                             ; preds = %._crit_edge.split.i
  %i.dj = add i64 %.sroa.9.0.i.i, 16              ; 2 uses
  %i.dk = add i64 %.sroa.01.0.i.i, %i.dj
  br label %.split.i

.loopexit:                                        ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h976b2aae2fd20704E.exit.i", %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h976b2aae2fd20704E.exit.us.us.i"
  %.pre-phi = phi i64 [ %i.ci, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h976b2aae2fd20704E.exit.us.us.i" ], [ %i.cz, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h976b2aae2fd20704E.exit.i" ]
  %i.dl = getelementptr inbounds [24 x i8], ptr %i.ca, i64 %.pre-phi
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.dl, ptr %i.dm, align 8
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.dn, align 8
  store i64 2, ptr %0, align 8
  br label %bb.f

.loopexit10:                                      ; preds = %._crit_edge.split.i, %._crit_edge.split.us.us.i
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dp = load i64, ptr %i.do, align 8, !alias.scope !24002, !noalias !24003, !noundef !17
  %i.dq = icmp eq i64 %i.dp, 0
  br i1 %i.dq, label %bb.e, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h14be252801ede1baE.exit", !prof !22

bb.e:                                             ; preds = %.loopexit10
  %i.dr = tail call { i64, i64 } @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h445ebb60b0257be2E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %1, i64 noundef 1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.d, i1 noundef zeroext true) ; 0 uses
  br label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h14be252801ede1baE.exit"

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h14be252801ede1baE.exit": ; preds = %.loopexit10, %bb.e
  store i64 %2, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %3, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.bv, ptr %.sroa.6.0..sroa_idx, align 8
  br label %bb.f

bb.f:                                             ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h14be252801ede1baE.exit", %.loopexit
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17h0a320f296251e285E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.val = load i64, ptr %i.a, align 8, !noundef !17
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val9 = load i64, ptr %i.b, align 8, !noundef !17
  %i.c = tail call fastcc noundef i64 @_ZN4core4hash11BuildHasher8hash_one17h782ea02e9b9726f3E(i64 %.val, i64 %.val9, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24025)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24026)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !24027, !noalias !24028, !noundef !17
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h2a151e618622a864E.exit.i", !prof !22

bb.b:                                             ; preds = %bb.a
  %i.g = invoke { i64, i64 } @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h74b8e924a24d8cebE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a, i1 noundef zeroext true)
          to label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h2a151e618622a864E.exit.i" unwind label %bb.l ; 0 uses

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h2a151e618622a864E.exit.i": ; preds = %bb.b, %bb.a
  %.val.i = load ptr, ptr %0, align 8, !alias.scope !24025, !noalias !24029, !nonnull !17, !noundef !17 ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val7.i = load i64, ptr %i.h, align 8, !alias.scope !24025, !noalias !24029, !noundef !17 ; 4 uses
  %i.i = lshr i64 %i.c, 57
  %i.j = trunc nuw nsw i64 %i.i to i8             ; 3 uses
  %.sroa.0.0.vec.insert.i.i.i = insertelement <16 x i8> poison, i8 %i.j, i64 0
  %.sroa.0.15.vec.insert.i.i.i = shufflevector <16 x i8> %.sroa.0.0.vec.insert.i.i.i, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val1.i.i.i = load i64, ptr %i.k, align 8, !alias.scope !24026, !noalias !24030 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i.i.i = load ptr, ptr %i.l, align 8, !alias.scope !24026, !noalias !24030, !nonnull !17 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h2a151e618622a864E.exit.i"
  %.pn.i.i = phi i64 [ %i.c, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h2a151e618622a864E.exit.i" ], [ %i.al, %bb.e ]
  %.sroa.6.0.i.i = phi i64 [ undef, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h2a151e618622a864E.exit.i" ], [ %.sroa.6.120.i.i, %bb.e ]
  %.sroa.01.0.i.i = phi i64 [ 0, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h2a151e618622a864E.exit.i" ], [ %.sroa.01.122.i.i, %bb.e ]
  %i.m = phi i64 [ 0, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h2a151e618622a864E.exit.i" ], [ %i.ak, %bb.e ]
  %.sroa.0.017.i.i = and i64 %.pn.i.i, %.val7.i   ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.0.017.i.i
  %.sroa.0.0.copyload.i24.i.i = load <16 x i8>, ptr %i.n, align 1, !noalias !24031 ; 3 uses
  %i.o = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i, %.sroa.0.15.vec.insert.i.i.i
  %i.p = bitcast <16 x i1> %i.o to i16            ; 2 uses
  %.not25.i.i = icmp eq i16 %i.p, 0
  br i1 %.not25.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17h44b303b64448eb42E.exit.thread.i"
  %.sroa.05.026.i.i = phi i16 [ %i.aa, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17h44b303b64448eb42E.exit.thread.i" ], [ %i.p, %bb.c ] ; 3 uses
  %i.q = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.026.i.i, i1 true)
  %i.r = zext nneg i16 %i.q to i64
  %i.s = add i64 %.sroa.0.017.i.i, %i.r
  %i.t = and i64 %i.s, %.val7.i
  %i.u = sub nsw i64 0, %i.t
  %i.v = getelementptr inbounds [32 x i8], ptr %.val.i, i64 %i.u ; 3 uses
  %i.w = getelementptr i8, ptr %i.v, i64 -16
  %.val4.i.i = load i64, ptr %i.w, align 8, !noalias !24032, !noundef !17
  %.not.i.i.i.i.i.i.i = icmp eq i64 %.val1.i.i.i, %.val4.i.i
  br i1 %.not.i.i.i.i.i.i.i, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17h44b303b64448eb42E.exit.i", label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17h44b303b64448eb42E.exit.thread.i", !prof !72

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17h44b303b64448eb42E.exit.i": ; preds = %.lr.ph.i.i
  %i.x = getelementptr i8, ptr %i.v, i64 -24
  %.val3.i.i = load ptr, ptr %i.x, align 8, !noalias !24032, !nonnull !17, !noundef !17
  %bcmp.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly align 1 %.val.i.i.i, ptr nonnull readonly align 1 %.val3.i.i, i64 %.val1.i.i.i), !alias.scope !24033, !noalias !24032
  %i.y = icmp eq i32 %bcmp.i.i.i.i.i.i.i, 0
  br i1 %i.y, label %bb.h, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17h44b303b64448eb42E.exit.thread.i", !prof !66

._crit_edge.i.i:                                  ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17h44b303b64448eb42E.exit.thread.i", %bb.c
  %.not13.i.i = icmp eq i64 %.sroa.01.0.i.i, 1
  br i1 %.not13.i.i, label %.thread.i.i, label %bb.d, !prof !22

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17h44b303b64448eb42E.exit.thread.i": ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17h44b303b64448eb42E.exit.i", %.lr.ph.i.i
  %i.z = add i16 %.sroa.05.026.i.i, -1
  %i.aa = and i16 %i.z, %.sroa.05.026.i.i         ; 2 uses
  %.not.i.i = icmp eq i16 %i.aa, 0
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.ab = icmp slt <16 x i8> %.sroa.0.0.copyload.i24.i.i, zeroinitializer
  %i.ac = bitcast <16 x i1> %i.ab to i16          ; 2 uses
  %.not.not.i.not.i.i = icmp eq i16 %i.ac, 0      ; 2 uses
  %i.ad = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ac, i1 true)
  %i.ae = zext nneg i16 %i.ad to i64
  %.sroa.6.0.i.i.i = select i1 %.not.not.i.not.i.i, i64 undef, i64 %i.ae
  %i.af = add i64 %.sroa.6.0.i.i.i, %.sroa.0.017.i.i
  %i.ag = and i64 %i.af, %.val7.i
  br i1 %.not.not.i.not.i.i, label %bb.e, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.d, %._crit_edge.i.i
  %.sroa.6.121.i.i = phi i64 [ %i.ag, %bb.d ], [ %.sroa.6.0.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.ah = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i, splat (i8 -1)
  %i.ai = bitcast <16 x i1> %i.ah to i16
  %i.aj = icmp eq i16 %i.ai, 0
  br i1 %i.aj, label %bb.e, label %bb.f, !prof !22

bb.e:                                             ; preds = %.thread.i.i, %bb.d
  %.sroa.01.122.i.i = phi i64 [ 1, %.thread.i.i ], [ 0, %bb.d ]
  %.sroa.6.120.i.i = phi i64 [ %.sroa.6.121.i.i, %.thread.i.i ], [ undef, %bb.d ]
  %i.ak = add i64 %i.m, 16                        ; 2 uses
  %i.al = add i64 %i.ak, %.sroa.0.017.i.i
  br label %bb.c

bb.f:                                             ; preds = %.thread.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.6.121.i.i
  %i.an = load i8, ptr %i.am, align 1, !noalias !24026, !noundef !17 ; 2 uses
  %i.ao = icmp sgt i8 %i.an, -1
  br i1 %i.ao, label %bb.g, label %bb.j, !prof !22

bb.g:                                             ; preds = %bb.f
  %.val62.i.i.i = load <16 x i8>, ptr %.val.i, align 16, !noalias !24026
  %i.ap = icmp slt <16 x i8> %.val62.i.i.i, zeroinitializer
  %i.aq = bitcast <16 x i1> %i.ap to i16          ; 2 uses
  %i.ar = icmp ne i16 %i.aq, 0
  tail call void @llvm.assume(i1 %i.ar)
  %i.as = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.aq, i1 true)
  %i.at = zext nneg i16 %i.as to i64              ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.at
end_hunk_0
