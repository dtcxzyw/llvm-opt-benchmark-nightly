Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nickel-rs/original/nickel.nickel.321223028b931924-cgu.0?download=true
inline.NumInlined: 8338
inline.NumDeleted: 3955
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 34
begin_hunk_0_@"_ZN4core3str21_$LT$impl$u20$str$GT$12trim_matches17hc7ec6a6245bea41eE":bb.a
  br label %bb.l

bb.l:                                             ; preds = %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h386f873324456c1dE.exit21.i.i.i.i.i", %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h386f873324456c1dE.exit19.i.i.i.i.i"
  %i.co = phi ptr [ %i.cg, %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h386f873324456c1dE.exit21.i.i.i.i.i" ], [ %i.bv, %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h386f873324456c1dE.exit19.i.i.i.i.i" ]
  %.sroa.04.1.i.i.i.i.i = phi i32 [ %i.cn, %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h386f873324456c1dE.exit21.i.i.i.i.i" ], [ %i.by, %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h386f873324456c1dE.exit19.i.i.i.i.i" ]
  %i.cp = shl nuw nsw i32 %.sroa.04.1.i.i.i.i.i, 6
  %i.cq = and i8 %i.bp, 63
  %i.cr = zext nneg i8 %i.cq to i32
  %i.cs = or disjoint i32 %i.cp, %i.cr
  br label %bb.k

bb.m:                                             ; preds = %bb.k, %bb.j
  %i.ct = phi ptr [ %i.bk, %bb.j ], [ %i.ca, %bb.k ] ; 2 uses
  %.sroa.4.1.i.ph.i.i.i.i = phi i32 [ %i.bt, %bb.j ], [ %i.ce, %bb.k ] ; 8 uses
  %i.cu = icmp samesign ult i32 %.sroa.4.1.i.ph.i.i.i.i, 1114112
  tail call void @llvm.assume(i1 %i.cu)
  switch i32 %.sroa.4.1.i.ph.i.i.i.i, label %bb.n [
    i32 32, label %bb.t
    i32 13, label %bb.t
    i32 12, label %bb.t
    i32 11, label %bb.t
    i32 10, label %bb.t
    i32 9, label %bb.t
  ]

bb.n:                                             ; preds = %bb.m
  %i.cv = icmp samesign ugt i32 %.sroa.4.1.i.ph.i.i.i.i, 127
  br i1 %i.cv, label %bb.o, label %bb.u

bb.o:                                             ; preds = %bb.n
  %i.cw = lshr i32 %.sroa.4.1.i.ph.i.i.i.i, 8
  switch i32 %i.cw, label %bb.u [
    i32 0, label %bb.r
    i32 22, label %bb.p
    i32 32, label %bb.s
    i32 48, label %bb.q
  ]

bb.p:                                             ; preds = %bb.o
  %i.cx = icmp eq i32 %.sroa.4.1.i.ph.i.i.i.i, 5760
  %i.cy = zext i1 %i.cx to i8
  br label %"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17he51a4125dc29b22fE.exit.i.i.i6"

bb.q:                                             ; preds = %bb.o
  %i.cz = icmp eq i32 %.sroa.4.1.i.ph.i.i.i.i, 12288
  %i.da = zext i1 %i.cz to i8
  br label %"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17he51a4125dc29b22fE.exit.i.i.i6"

bb.r:                                             ; preds = %bb.o
  %i.db = and i32 %.sroa.4.1.i.ph.i.i.i.i, 255
  %i.dc = zext nneg i32 %i.db to i64
  %i.dd = getelementptr inbounds nuw i8, ptr @_ZN4core7unicode12unicode_data11white_space14WHITESPACE_MAP17h4cf41e25fd3a5318E, i64 %i.dc
  %i.de = load i8, ptr %i.dd, align 1, !noalias !22458, !noundef !16
  br label %"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17he51a4125dc29b22fE.exit.i.i.i6"

bb.s:                                             ; preds = %bb.o
  %i.df = and i32 %.sroa.4.1.i.ph.i.i.i.i, 255
  %i.dg = zext nneg i32 %i.df to i64
  %i.dh = getelementptr inbounds nuw i8, ptr @_ZN4core7unicode12unicode_data11white_space14WHITESPACE_MAP17h4cf41e25fd3a5318E, i64 %i.dg
  %i.di = load i8, ptr %i.dh, align 1, !noalias !22458, !noundef !16
  %i.dj = lshr i8 %i.di, 1
  br label %"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17he51a4125dc29b22fE.exit.i.i.i6"

"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17he51a4125dc29b22fE.exit.i.i.i6": ; preds = %bb.s, %bb.r, %bb.q, %bb.p
  %.sroa.0.0.i.i.i.i.i.i.i7 = phi i8 [ %i.da, %bb.q ], [ %i.de, %bb.r ], [ %i.cy, %bb.p ], [ %i.dj, %bb.s ]
  %i.dk = trunc i8 %.sroa.0.0.i.i.i.i.i.i.i7 to i1
  br i1 %i.dk, label %bb.t, label %bb.u

bb.t:                                             ; preds = %"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17he51a4125dc29b22fE.exit.i.i.i6", %bb.m, %bb.m, %bb.m, %bb.m, %bb.m, %bb.m
  %i.dl = icmp eq ptr %.sroa.4.121, %i.ct
  br i1 %i.dl, label %.loopexit, label %.lr.ph.i.i4

bb.u:                                             ; preds = %"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17he51a4125dc29b22fE.exit.i.i.i6", %bb.o, %bb.n
  %i.dm = ptrtoint ptr %i.bj to i64
  %i.dn = ptrtoint ptr %.sroa.4.121 to i64
  %i.do = sub i64 %.sroa.18.019, %i.dn
  %i.dp = add i64 %i.do, %i.dm
  br label %.loopexit

.loopexit:                                        ; preds = %"_ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17hdf20cf9dd26de360E.exit.i.i", %bb.t, %"_ZN99_$LT$core..str..pattern..CharPredicateSearcher$LT$F$GT$$u20$as$u20$core..str..pattern..Searcher$GT$11next_reject17h36dcdb1a51ca52deE.exit", %bb.u
  %.sroa.0.042 = phi i64 [ %.sroa.0.0, %bb.u ], [ %.sroa.0.0, %"_ZN99_$LT$core..str..pattern..CharPredicateSearcher$LT$F$GT$$u20$as$u20$core..str..pattern..Searcher$GT$11next_reject17h36dcdb1a51ca52deE.exit" ], [ %.sroa.0.0, %bb.t ], [ 0, %"_ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17hdf20cf9dd26de360E.exit.i.i" ] ; 2 uses
  %.sroa.01.1 = phi i64 [ %i.dp, %bb.u ], [ %.sroa.18.019, %"_ZN99_$LT$core..str..pattern..CharPredicateSearcher$LT$F$GT$$u20$as$u20$core..str..pattern..Searcher$GT$11next_reject17h36dcdb1a51ca52deE.exit" ], [ %.sroa.18.019, %bb.t ], [ 0, %"_ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17hdf20cf9dd26de360E.exit.i.i" ]
  %i.dq = sub nuw i64 %.sroa.01.1, %.sroa.0.042
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.042
  %i.ds = insertvalue { ptr, i64 } poison, ptr %i.dr, 0
  %i.dt = insertvalue { ptr, i64 } %i.ds, i64 %i.dq, 1
  ret { ptr, i64 } %i.dt
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable
define internal fastcc noundef i64 @_ZN4core4hash11BuildHasher8hash_one17h7e0e4e69a26aa54cE(i64 %.0.val, i64 %.8.val, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(4) %0) unnamed_addr #13 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = alloca [72 x i8], align 8                ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = xor i64 %.0.val, 8317987319222330741
  %i.d = xor i64 %.8.val, 7237128888997146477
  %i.e = xor i64 %.0.val, 7816392313619706465
  %i.f = xor i64 %.8.val, 8387220255154660723
  store i64 %i.c, ptr %i.b, align 8, !alias.scope !22471
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store i64 %i.e, ptr %.sroa.48.0..sroa_idx.i, align 8, !alias.scope !22471
  %.sroa.59.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 %i.d, ptr %.sroa.59.0..sroa_idx.i, align 8, !alias.scope !22471
  %.sroa.610.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  store i64 %i.f, ptr %.sroa.610.0..sroa_idx.i, align 8, !alias.scope !22471
  %.sroa.711.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %.0.val, ptr %.sroa.711.0..sroa_idx.i, align 8, !alias.scope !22471
  %.sroa.812.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 %.8.val, ptr %.sroa.812.0..sroa_idx.i, align 8, !alias.scope !22471
  %.sroa.913.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.913.0..sroa_idx.i, i8 0, i64 24, i1 false), !alias.scope !22471
  %.val.i = load i32, ptr %0, align 4, !noalias !22472, !noundef !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !22473
  store i32 %.val.i, ptr %i.a, align 4, !noalias !22473
  call fastcc void @"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17h09c14117b646cf30E"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.a, i64 noundef 4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !22473
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.b, align 8, !alias.scope !22474
  %.sroa.10.0.copyload.i.i = load i64, ptr %.sroa.48.0..sroa_idx.i, align 8, !alias.scope !22474
  %.sroa.17.0.copyload.i.i = load i64, ptr %.sroa.59.0..sroa_idx.i, align 8, !alias.scope !22474 ; 3 uses
  %.sroa.22.0.copyload.i.i = load i64, ptr %.sroa.610.0..sroa_idx.i, align 8, !alias.scope !22474
  %i.g = load i64, ptr %.sroa.913.0..sroa_idx.i, align 8, !alias.scope !22474, !noundef !16
  %i.h = shl i64 %i.g, 56
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !22474, !noundef !16
  %i.k = or i64 %i.h, %i.j                        ; 2 uses
  %i.l = xor i64 %i.k, %.sroa.22.0.copyload.i.i   ; 3 uses
  %i.m = add i64 %.sroa.17.0.copyload.i.i, %.sroa.0.0.copyload.i.i ; 3 uses
  %i.n = add i64 %i.l, %.sroa.10.0.copyload.i.i   ; 2 uses
  %i.o = tail call i64 @llvm.fshl.i64(i64 %.sroa.17.0.copyload.i.i, i64 %.sroa.17.0.copyload.i.i, i64 13)
  %i.p = xor i64 %i.o, %i.m                       ; 3 uses
  %i.q = tail call i64 @llvm.fshl.i64(i64 %i.l, i64 %i.l, i64 16)
  %i.r = xor i64 %i.q, %i.n                       ; 3 uses
  %i.s = tail call i64 @llvm.fshl.i64(i64 %i.m, i64 %i.m, i64 32)
  %i.t = add i64 %i.n, %i.p                       ; 3 uses
  %i.u = add i64 %i.r, %i.s                       ; 2 uses
  %i.v = tail call i64 @llvm.fshl.i64(i64 %i.p, i64 %i.p, i64 17)
  %i.w = xor i64 %i.t, %i.v                       ; 3 uses
  %i.x = tail call i64 @llvm.fshl.i64(i64 %i.r, i64 %i.r, i64 21)
  %i.y = xor i64 %i.x, %i.u                       ; 3 uses
  %i.z = tail call i64 @llvm.fshl.i64(i64 %i.t, i64 %i.t, i64 32)
  %i.aa = xor i64 %i.u, %i.k
  %i.ab = xor i64 %i.z, 255
  %i.ac = add i64 %i.aa, %i.w                     ; 3 uses
  %i.ad = add i64 %i.y, %i.ab                     ; 2 uses
  %i.ae = tail call i64 @llvm.fshl.i64(i64 %i.w, i64 %i.w, i64 13)
  %i.af = xor i64 %i.ac, %i.ae                    ; 3 uses
  %i.ag = tail call i64 @llvm.fshl.i64(i64 %i.y, i64 %i.y, i64 16)
  %i.ah = xor i64 %i.ag, %i.ad                    ; 3 uses
  %i.ai = tail call i64 @llvm.fshl.i64(i64 %i.ac, i64 %i.ac, i64 32)
  %i.aj = add i64 %i.af, %i.ad                    ; 3 uses
  %i.ak = add i64 %i.ah, %i.ai                    ; 2 uses
  %i.al = tail call i64 @llvm.fshl.i64(i64 %i.af, i64 %i.af, i64 17)
  %i.am = xor i64 %i.aj, %i.al                    ; 3 uses
  %i.an = tail call i64 @llvm.fshl.i64(i64 %i.ah, i64 %i.ah, i64 21)
  %i.ao = xor i64 %i.an, %i.ak                    ; 3 uses
  %i.ap = tail call i64 @llvm.fshl.i64(i64 %i.aj, i64 %i.aj, i64 32)
  %i.aq = add i64 %i.am, %i.ak                    ; 3 uses
  %i.ar = add i64 %i.ao, %i.ap                    ; 2 uses
  %i.as = tail call i64 @llvm.fshl.i64(i64 %i.am, i64 %i.am, i64 13)
  %i.at = xor i64 %i.as, %i.aq                    ; 3 uses
  %i.au = tail call i64 @llvm.fshl.i64(i64 %i.ao, i64 %i.ao, i64 16)
  %i.av = xor i64 %i.au, %i.ar                    ; 3 uses
  %i.aw = tail call i64 @llvm.fshl.i64(i64 %i.aq, i64 %i.aq, i64 32)
  %i.ax = add i64 %i.at, %i.ar                    ; 3 uses
  %i.ay = add i64 %i.av, %i.aw                    ; 2 uses
  %i.az = tail call i64 @llvm.fshl.i64(i64 %i.at, i64 %i.at, i64 17)
  %i.ba = xor i64 %i.az, %i.ax                    ; 3 uses
  %i.bb = tail call i64 @llvm.fshl.i64(i64 %i.av, i64 %i.av, i64 21)
  %i.bc = xor i64 %i.bb, %i.ay                    ; 3 uses
  %i.bd = tail call i64 @llvm.fshl.i64(i64 %i.ax, i64 %i.ax, i64 32)
  %i.be = add i64 %i.ba, %i.ay
  %i.bf = add i64 %i.bc, %i.bd                    ; 2 uses
  %i.bg = tail call i64 @llvm.fshl.i64(i64 %i.ba, i64 %i.ba, i64 13)
  %i.bh = xor i64 %i.bg, %i.be                    ; 3 uses
  %i.bi = tail call i64 @llvm.fshl.i64(i64 %i.bc, i64 %i.bc, i64 16)
  %i.bj = xor i64 %i.bi, %i.bf                    ; 2 uses
  %i.bk = add i64 %i.bh, %i.bf                    ; 3 uses
  %i.bl = tail call i64 @llvm.fshl.i64(i64 %i.bh, i64 %i.bh, i64 17)
  %i.bm = tail call i64 @llvm.fshl.i64(i64 %i.bj, i64 %i.bj, i64 21)
  %i.bn = tail call i64 @llvm.fshl.i64(i64 %i.bk, i64 %i.bk, i64 32)
  %i.bo = xor i64 %i.bm, %i.bl
  %i.bp = xor i64 %i.bo, %i.bn
  %i.bq = xor i64 %i.bp, %i.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i64 %i.bq
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4core4iter6traits7collect6Extend10extend_one17hf1ed971da7466113E(ptr noalias noundef nonnull align 8 dereferenceable(72) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(64) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [40 x i8], align 8                ; 5 uses
  %i.c = alloca [64 x i8], align 8                ; 6 uses
  %i.d = alloca [64 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22498)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !22499
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.d, ptr noundef nonnull readonly align 8 dereferenceable(64) %1, i64 64, i1 false), !alias.scope !22500, !noalias !22498
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  %.val3.i = load i64, ptr %i.f, align 8, !noalias !22499 ; 4 uses
  %.sroa.0.0.in.i = icmp ne i64 %.val3.i, -9223372036854775808
  %.sroa.0.0.i = zext i1 %.sroa.0.0.in.i to i64   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !22501, !noalias !22502, !noundef !16
  %i.j = icmp ult i64 %i.i, %.sroa.0.0.i
  br i1 %i.j, label %bb.b, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h1bcd01460d3c3fa9E.exit.i.i", !prof !22

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load i64, ptr %i.g, align 8, !alias.scope !22503, !noalias !22504, !noundef !16
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !22503, !noalias !22504, !nonnull !16, !noundef !16
  %i.o = invoke { i64, i64 } @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h1edceb31bf7fd235E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.k, i64 noundef %.sroa.0.0.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.n, i64 noundef %i.l, i1 noundef zeroext true)
          to label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h1bcd01460d3c3fa9E.exit.i.i" unwind label %bb.e, !noalias !22504 ; 0 uses

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h1bcd01460d3c3fa9E.exit.i.i": ; preds = %bb.b, %bb.a
  %i.p = load i64, ptr %0, align 8, !range !40, !alias.scope !22503, !noalias !22504, !noundef !16
  %i.q = load i64, ptr %i.g, align 8, !alias.scope !22503, !noalias !22504, !noundef !16 ; 2 uses
  %i.r = icmp ult i64 %i.q, 128102389400760776
  tail call void @llvm.assume(i1 %i.r)
  %i.s = sub nsw i64 %i.p, %i.q
  %i.t = icmp ult i64 %i.s, %.sroa.0.0.i
  br i1 %i.t, label %bb.c, label %"_ZN8indexmap3map4core25IndexMapCore$LT$K$C$V$GT$7reserve17h04518e39c7d77a70E.exit.i"

bb.c:                                             ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h1bcd01460d3c3fa9E.exit.i.i"
  %i.u = load i64, ptr %i.e, align 8, !alias.scope !22503, !noalias !22504, !noundef !16
  %i.v = load i64, ptr %i.h, align 8, !alias.scope !22503, !noalias !22504, !noundef !16
  %i.w = add i64 %i.v, %i.u
  invoke fastcc void @_ZN8indexmap3map4core15reserve_entries17h08915342def29ccfE(ptr noalias noundef nonnull align 8 dereferenceable(72) %0, i64 noundef 1, i64 noundef %i.w)
          to label %"_ZN8indexmap3map4core25IndexMapCore$LT$K$C$V$GT$7reserve17h04518e39c7d77a70E.exit.i" unwind label %bb.e, !noalias !22504

"_ZN8indexmap3map4core25IndexMapCore$LT$K$C$V$GT$7reserve17h04518e39c7d77a70E.exit.i": ; preds = %bb.c, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h1bcd01460d3c3fa9E.exit.i.i"
  %.not12.i.i.i = icmp eq i64 %.val3.i, -9223372036854775808
  br i1 %.not12.i.i.i, label %"_ZN117_$LT$indexmap..map..IndexMap$LT$K$C$V$C$S$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$$LP$K$C$V$RP$$GT$$GT$6extend17hecca974cce902ff7E.exit", label %.noexc2.i.i.i

.noexc2.i.i.i:                                    ; preds = %"_ZN8indexmap3map4core25IndexMapCore$LT$K$C$V$GT$7reserve17h04518e39c7d77a70E.exit.i"
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !22505
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull readonly align 8 dereferenceable(64) %1, i64 24, i1 false), !noalias !22498
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.3.0..sroa_idx.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.x, i64 32, i1 false), !noalias !22498
  store i64 %.val3.i, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !noalias !22505
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !22506
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !22506
  call fastcc void @"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$11insert_full17h099aab7514b4cb25E"(ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(72) %0, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(64) %i.c, ptr noalias noundef readonly align 8 captures(address) dereferenceable(40) %.sroa.2.0..sroa_idx.i.i.i), !noalias !22504
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %i.y, i64 40, i1 false), !noalias !22506
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !22506
  %i.z = load i64, ptr %i.b, align 8, !range !33, !alias.scope !22507, !noalias !22506, !noundef !16
  %i.aa = icmp eq i64 %i.z, -9223372036854775808
  br i1 %i.aa, label %"_ZN4core3ptr139drop_in_place$LT$core..option..IntoIter$LT$$LP$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..term..record..Field$RP$$GT$$GT$17h0183a7a04c87a5b3E.exit4.loopexit.i.i.i", label %bb.d

bb.d:                                             ; preds = %.noexc2.i.i.i
  call fastcc void @"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..term..record..Field$GT$17hd6967b05622b50ebE"(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.b), !noalias !22504
  br label %"_ZN4core3ptr139drop_in_place$LT$core..option..IntoIter$LT$$LP$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..term..record..Field$RP$$GT$$GT$17h0183a7a04c87a5b3E.exit4.loopexit.i.i.i"

"_ZN4core3ptr139drop_in_place$LT$core..option..IntoIter$LT$$LP$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..term..record..Field$RP$$GT$$GT$17h0183a7a04c87a5b3E.exit4.loopexit.i.i.i": ; preds = %bb.d, %.noexc2.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !22506
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !22505
  br label %"_ZN117_$LT$indexmap..map..IndexMap$LT$K$C$V$C$S$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$$LP$K$C$V$RP$$GT$$GT$6extend17hecca974cce902ff7E.exit"

"_ZN4core3ptr139drop_in_place$LT$core..option..IntoIter$LT$$LP$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..term..record..Field$RP$$GT$$GT$17h0183a7a04c87a5b3E.exit.i": ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %lpad.thr_comm.i

bb.e:                                             ; preds = %bb.c, %bb.b
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  %2 = icmp eq i64 %.val3.i, -9223372036854775808
  br i1 %2, label %"_ZN4core3ptr139drop_in_place$LT$core..option..IntoIter$LT$$LP$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..term..record..Field$RP$$GT$$GT$17h0183a7a04c87a5b3E.exit.i", label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..term..record..Field$GT$17hd6967b05622b50ebE"(ptr noalias noundef align 8 dereferenceable(40) %i.f)
          to label %"_ZN4core3ptr139drop_in_place$LT$core..option..IntoIter$LT$$LP$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..term..record..Field$RP$$GT$$GT$17h0183a7a04c87a5b3E.exit.i" unwind label %bb.g, !noalias !22504

bb.g:                                             ; preds = %bb.f
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #43, !noalias !22504
  unreachable

"_ZN117_$LT$indexmap..map..IndexMap$LT$K$C$V$C$S$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$$LP$K$C$V$RP$$GT$$GT$6extend17hecca974cce902ff7E.exit": ; preds = %"_ZN8indexmap3map4core25IndexMapCore$LT$K$C$V$GT$7reserve17h04518e39c7d77a70E.exit.i", %"_ZN4core3ptr139drop_in_place$LT$core..option..IntoIter$LT$$LP$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..term..record..Field$RP$$GT$$GT$17h0183a7a04c87a5b3E.exit4.loopexit.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !22499
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_ZN4core4iter6traits8iterator8Iterator3nth17h0288a56584187c0bE(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef nonnull align 8 dereferenceable(48) %1, i64 noundef range(i64 1, 0) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.sroa.01.0.i.i.i = phi i64 [ %2, %bb.a ], [ %i.e, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !22520
  call void @"_ZN110_$LT$regex_automata..util..captures..CapturesPatternIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h619b166054bf7559E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c), !noalias !22521
  %i.d = load i64, ptr %i.b, align 8, !range !35, !noalias !22520, !noundef !16
  %cond.i.i.i = icmp eq i64 %i.d, 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !22520
  br i1 %cond.i.i.i, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = add i64 %.sroa.01.0.i.i.i, -1            ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !22522)
  call void @llvm.experimental.noalias.scope.decl(metadata !22523)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !22524
  call void @"_ZN110_$LT$regex_automata..util..captures..CapturesPatternIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h619b166054bf7559E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c), !noalias !22522
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !22523, !noalias !22522, !noundef !16
  %i.i = load i64, ptr %i.a, align 8, !range !35, !noalias !22524, !noundef !16
  switch i64 %i.i, label %bb.e [
    i64 2, label %"_ZN98_$LT$regex..regex..string..SubCaptureMatches$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc98b1521b71476e1E.exit"
    i64 0, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  %i.j = load ptr, ptr %1, align 8, !alias.scope !22523, !noalias !22522, !nonnull !16, !align !28, !noundef !16
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.k = load <2 x i64>, ptr %.sroa.2.0..sroa_idx.i, align 8, !noalias !22524
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.01.0.i = phi ptr [ %i.j, %bb.e ], [ null, %bb.d ]
  %i.l = phi <2 x i64> [ %i.k, %bb.e ], [ undef, %bb.d ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.01.0.i, ptr %i.m, align 8, !alias.scope !22522, !noalias !22523
  %.sroa.5.0..sroa_idx3.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.h, ptr %.sroa.5.0..sroa_idx3.i, align 8, !alias.scope !22522, !noalias !22523
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx3.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <2 x i64> %i.l, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx3.sroa_idx.i, align 8, !alias.scope !22522, !noalias !22523
  br label %"_ZN98_$LT$regex..regex..string..SubCaptureMatches$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc98b1521b71476e1E.exit"

"_ZN98_$LT$regex..regex..string..SubCaptureMatches$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc98b1521b71476e1E.exit": ; preds = %bb.d, %bb.f
  %storemerge.i = phi i64 [ 1, %bb.f ], [ 0, %bb.d ]
  store i64 %storemerge.i, ptr %0, align 8, !alias.scope !22522, !noalias !22523
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !22524
  br label %bb.h

bb.g:                                             ; preds = %bb.b
  store i64 0, ptr %0, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %"_ZN98_$LT$regex..regex..string..SubCaptureMatches$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc98b1521b71476e1E.exit"
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_ZN4core4iter6traits8iterator8Iterator4fold17h15a2733e225b9c07E(ptr noundef nonnull %0, ptr noundef nonnull %1) unnamed_addr #2 personality ptr @rust_eh_personality {
.split.us:
  %i.a = alloca [56 x i8], align 8                ; 6 uses
  %i.b = alloca [56 x i8], align 8                ; 6 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %1, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !22527
  store i8 18, ptr %i.d, align 8
  store ptr %0, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !22527
  store i64 -9223372036854775757, ptr %i.a, align 8, !noalias !22527
  %i.e = invoke noundef nonnull ptr @"_ZN118_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..convert..From$LT$nickel_lang_core..term..Term$GT$$GT$4from17h1fb3531f2197356dE"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.a)
          to label %bb.a unwind label %bb.b

bb.a:                                             ; preds = %.split.us
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !22527
  store ptr %i.e, ptr %i.g, align 8
  store ptr %1, ptr %i.f, align 8
  store i64 -9223372036854775761, ptr %i.b, align 8
  %i.h = invoke noundef nonnull ptr @"_ZN118_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..convert..From$LT$nickel_lang_core..term..Term$GT$$GT$4from17h1fb3531f2197356dE"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.b)
          to label %"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_op19seq_terms28_$u7b$$u7b$closure$u7d$$u7d$17hc4e8976d0bfda454E.exit.us" unwind label %.split12.us

"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_op19seq_terms28_$u7b$$u7b$closure$u7d$$u7d$17hc4e8976d0bfda454E.exit.us": ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret ptr %i.h

.split12.us:                                      ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.b:                                             ; preds = %.split.us
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17hf0d8cbfb0a4765b9E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c) #46
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #43
  unreachable

bb.d:                                             ; preds = %bb.e
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #43
  unreachable

bb.e:                                             ; preds = %.split12.us, %bb.b
  %eh.lpad-body = phi { ptr, i32 } [ %i.j, %bb.b ], [ %i.i, %.split12.us ]
  invoke fastcc void @"_ZN4core3ptr102drop_in_place$LT$core..iter..sources..once..Once$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$17he7711571750fea27E"(ptr null) #46
          to label %bb.f unwind label %bb.d

bb.f:                                             ; preds = %bb.e
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4core4iter6traits8iterator8Iterator5unzip17h20ebf16f8ff370a2E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(144) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 4 uses
  %i.b = alloca [64 x i8], align 8                ; 5 uses
  %i.c = alloca [128 x i8], align 8               ; 7 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [144 x i8], align 8               ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22572)
  %i.f = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @"_ZN3std4hash6random11RandomState3new4KEYS29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$3VAL17h3d0bd8071983845cE") ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.h = load i8, ptr %i.g, align 8, !range !17, !noalias !22573, !noundef !16
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %._ZN4core3ops8function6FnOnce9call_once17hb79dade94bd0f8e9E.exit_crit_edge.i.i.i.i.i, label %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hfd4eb6fbd8a22789E.exit.i.i.i.i.i", !prof !18

._ZN4core3ops8function6FnOnce9call_once17hb79dade94bd0f8e9E.exit_crit_edge.i.i.i.i.i: ; preds = %bb.a
  %.pre.i.i.i.i.i = load i64, ptr %i.f, align 8, !noalias !22574
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.pre1.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !noalias !22574
  br label %bb.b

"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hfd4eb6fbd8a22789E.exit.i.i.i.i.i": ; preds = %bb.a
  %i.j = invoke { i64, i64 } @_ZN3std3sys6random5linux19hashmap_random_keys17he133c8f345d0b53aE()
          to label %.noexc unwind label %bb.l     ; 2 uses

.noexc:                                           ; preds = %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hfd4eb6fbd8a22789E.exit.i.i.i.i.i"
  %i.k = extractvalue { i64, i64 } %i.j, 0
  %i.l = extractvalue { i64, i64 } %i.j, 1        ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %i.l, ptr %i.m, align 8, !noalias !22575
  store i8 1, ptr %i.g, align 8, !noalias !22575
  br label %bb.b

bb.b:                                             ; preds = %.noexc, %._ZN4core3ops8function6FnOnce9call_once17hb79dade94bd0f8e9E.exit_crit_edge.i.i.i.i.i
  %.pre1.i.i.i.i9.i = phi i64 [ %.pre1.i.i.i.i.i, %._ZN4core3ops8function6FnOnce9call_once17hb79dade94bd0f8e9E.exit_crit_edge.i.i.i.i.i ], [ %i.l, %.noexc ] ; 2 uses
  %i.n = phi i64 [ %.pre.i.i.i.i.i, %._ZN4core3ops8function6FnOnce9call_once17hb79dade94bd0f8e9E.exit_crit_edge.i.i.i.i.i ], [ %i.k, %.noexc ] ; 3 uses
  %i.o = add i64 %i.n, 1
  %i.p = add i64 %i.n, 2
  store i64 %i.p, ptr %i.f, align 8, !noalias !22576
  store i64 0, ptr %i.e, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) @1, i64 32, i1 false)
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  store i64 %i.n, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  store i64 %.pre1.i.i.i.i9.i, ptr %.sroa.8.0..sroa_idx, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 72 ; 2 uses
  store i64 0, ptr %i.q, align 8, !alias.scope !22572
end_hunk_0
