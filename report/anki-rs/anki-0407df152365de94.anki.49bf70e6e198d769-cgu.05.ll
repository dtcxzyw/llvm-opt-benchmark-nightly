Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/anki-0407df152365de94.anki.49bf70e6e198d769-cgu.05?download=true
inline.NumInlined: 5793
inline.NumDeleted: 2830
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 16
begin_hunk_0_@"_ZN4core3ptr95drop_in_place$LT$core..option..Option$LT$anki..sync..collection..start..ServerSyncState$GT$$GT$17h85dda0941e6d8365E":bb.a
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #51
  unreachable

bb.h:                                             ; preds = %.body.i
  resume { ptr, i32 } %eh.lpad-body.i

"_ZN4core3ptr67drop_in_place$LT$anki..sync..collection..start..ServerSyncState$GT$17hc0516ef3fce6f121E.exit": ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE.exit.i.i"
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call fastcc void @"_ZN4core3ptr93drop_in_place$LT$core..option..Option$LT$anki..sync..collection..chunks..ChunkableIds$GT$$GT$17hf755cc2747684552E"(ptr noalias noundef align 8 dereferenceable(72) %i.h)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_ZN4core4hash11BuildHasher8hash_one17h04b5638c27ac8fe8E(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %i.b = alloca [12 x i8], align 4                ; 7 uses
  %i.c = alloca [4 x i8], align 4                 ; 10 uses
  %i.d = alloca [72 x i8], align 16               ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %.sroa.59.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %.sroa.711.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.e = load <2 x i64>, ptr %0, align 8          ; 3 uses
  %i.f = shufflevector <2 x i64> %i.e, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.g = xor <2 x i64> %i.f, <i64 8317987319222330741, i64 7816392313619706465>
  store <2 x i64> %i.g, ptr %i.d, align 16, !alias.scope !5840
  %i.h = shufflevector <2 x i64> %i.e, <2 x i64> poison, <2 x i32> <i32 1, i32 1>
  %i.i = xor <2 x i64> %i.h, <i64 7237128888997146477, i64 8387220255154660723>
  store <2 x i64> %i.i, ptr %.sroa.59.0..sroa_idx.i, align 16, !alias.scope !5840
  store <2 x i64> %i.e, ptr %.sroa.711.0..sroa_idx.i, align 16, !alias.scope !5840
  %.sroa.913.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 48 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.913.0..sroa_idx.i, i8 0, i64 24, i1 false), !alias.scope !5840
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5841)
  %i.j = load i64, ptr %1, align 8, !range !12, !alias.scope !5841, !noalias !5842, !noundef !10
  %i.k = trunc nuw i64 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val.i.i = load ptr, ptr %i.l, align 8, !alias.scope !5841, !noalias !5842, !nonnull !10, !noundef !10 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val1.i.i = load i64, ptr %i.m, align 8, !alias.scope !5841, !noalias !5842, !noundef !10 ; 3 uses
  br i1 %i.k, label %bb.b, label %bb.p

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !5843
  store i32 0, ptr %i.c, align 4, !noalias !5843
  %i.n = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.val1.i.i ; 4 uses
  %.sroa.17.16..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %.sroa.22.16..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  br label %.outer

.outer:                                           ; preds = %bb.b, %bb.h
  %.sroa.22.1.i.i.i.ph = phi i32 [ undef, %bb.b ], [ %.sroa.22.16.copyload.i.i.i, %bb.h ]
  %.sroa.17.1.i.i.i.ph = phi i32 [ undef, %bb.b ], [ %.sroa.17.16.copyload.i.i.i, %bb.h ]
  %.sroa.10.1.i.i.i.ph = phi i32 [ 1114115, %bb.b ], [ %.pr.i.i.i.i, %bb.h ]
  %.sroa.0.1.i.i.i.ph = phi ptr [ %.val.i.i, %bb.b ], [ %.sroa.0.2.i.i.i, %bb.h ] ; 6 uses
  br label %bb.c

bb.c:                                             ; preds = %.outer, %_ZN7unicase7unicode12char_to_utf817h94ba0bbc3ad8ef76E.exit.i.i.i
  %.sroa.22.1.i.i.i = phi i32 [ %.sroa.22.2.i.i.i, %_ZN7unicase7unicode12char_to_utf817h94ba0bbc3ad8ef76E.exit.i.i.i ], [ %.sroa.22.1.i.i.i.ph, %.outer ] ; 4 uses
  %.sroa.17.1.i.i.i = phi i32 [ %.sroa.17.2.i.i.i, %_ZN7unicase7unicode12char_to_utf817h94ba0bbc3ad8ef76E.exit.i.i.i ], [ %.sroa.17.1.i.i.i.ph, %.outer ] ; 4 uses
  %.sroa.10.1.i.i.i = phi i32 [ %.sroa.10.3.i.i.i, %_ZN7unicase7unicode12char_to_utf817h94ba0bbc3ad8ef76E.exit.i.i.i ], [ %.sroa.10.1.i.i.i.ph, %.outer ] ; 4 uses
  %.not.i.i.i.i.i = icmp eq i32 %.sroa.10.1.i.i.i, 1114115
  br i1 %.not.i.i.i.i.i, label %_ZN4core4iter8adapters7flatten17and_then_or_clear17h8f2ee30a94633852E.exit.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = add nsw i32 %.sroa.10.1.i.i.i, -1114112
  %i.r = icmp samesign ugt i32 %.sroa.10.1.i.i.i, 1114111
  %narrow.i.i.i.i.i.i.i = select i1 %i.r, i32 %i.q, i32 3
  switch i32 %narrow.i.i.i.i.i.i.i, label %bb.e [
    i32 0, label %_ZN4core4iter8adapters7flatten17and_then_or_clear17h8f2ee30a94633852E.exit.i.i.i.i
    i32 1, label %"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h2e3ddd1423441cbeE.exit.i.i.i.loopexit"
    i32 2, label %"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h2e3ddd1423441cbeE.exit.i.i.i"
    i32 3, label %"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h2e3ddd1423441cbeE.exit.i.i.i.loopexit41"
  ]

bb.e:                                             ; preds = %bb.d
  unreachable

_ZN4core4iter8adapters7flatten17and_then_or_clear17h8f2ee30a94633852E.exit.i.i.i.i: ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5844
  %.not.i.i.i.i.i.i.i = icmp eq ptr %.sroa.0.1.i.i.i.ph, %i.n
  br i1 %.not.i.i.i.i.i.i.i, label %"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h2e3ddd1423441cbeE.exit.thread.i.i.i", label %bb.f

bb.f:                                             ; preds = %_ZN4core4iter8adapters7flatten17and_then_or_clear17h8f2ee30a94633852E.exit.i.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.ph, i64 1 ; 3 uses
  %i.t = load i8, ptr %.sroa.0.1.i.i.i.ph, align 1, !noalias !5845, !noundef !10 ; 5 uses
  %i.u = icmp sgt i8 %i.t, -1
  br i1 %i.u, label %bb.g, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit12.i.i.i.i.i.i.i.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit12.i.i.i.i.i.i.i.i": ; preds = %bb.f
  %i.v = and i8 %i.t, 31
  %i.w = zext nneg i8 %i.v to i32                 ; 3 uses
  %i.x = icmp ne ptr %i.s, %i.n
  call void @llvm.assume(i1 %i.x)
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.ph, i64 2 ; 3 uses
  %i.z = load i8, ptr %i.s, align 1, !noalias !5845, !noundef !10
  %i.aa = shl nuw nsw i32 %i.w, 6
  %i.ab = and i8 %i.z, 63
  %i.ac = zext nneg i8 %i.ab to i32               ; 2 uses
  %i.ad = or disjoint i32 %i.aa, %i.ac
  %i.ae = icmp samesign ugt i8 %i.t, -33
  br i1 %i.ae, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit14.i.i.i.i.i.i.i.i", label %"_ZN107_$LT$core..iter..adapters..fuse..Fuse$LT$I$GT$$u20$as$u20$core..iter..adapters..fuse..FuseImpl$LT$I$GT$$GT$4next17h03860d55e735c4efE.exit.i.i.i.i"

bb.g:                                             ; preds = %bb.f
  %i.af = zext nneg i8 %i.t to i32
  br label %"_ZN107_$LT$core..iter..adapters..fuse..Fuse$LT$I$GT$$u20$as$u20$core..iter..adapters..fuse..FuseImpl$LT$I$GT$$GT$4next17h03860d55e735c4efE.exit.i.i.i.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit14.i.i.i.i.i.i.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit12.i.i.i.i.i.i.i.i"
  %i.ag = icmp ne ptr %i.y, %i.n
  call void @llvm.assume(i1 %i.ag)
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.ph, i64 3 ; 3 uses
  %i.ai = load i8, ptr %i.y, align 1, !noalias !5845, !noundef !10
  %i.aj = shl nuw nsw i32 %i.ac, 6
  %i.ak = and i8 %i.ai, 63
  %i.al = zext nneg i8 %i.ak to i32
  %i.am = or disjoint i32 %i.aj, %i.al            ; 2 uses
  %i.an = shl nuw nsw i32 %i.w, 12
  %i.ao = or disjoint i32 %i.am, %i.an
  %i.ap = icmp samesign ugt i8 %i.t, -17
  br i1 %i.ap, label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5278c74934f49a32E.exit.i.i.i.i.i.i", label %"_ZN107_$LT$core..iter..adapters..fuse..Fuse$LT$I$GT$$u20$as$u20$core..iter..adapters..fuse..FuseImpl$LT$I$GT$$GT$4next17h03860d55e735c4efE.exit.i.i.i.i"

"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5278c74934f49a32E.exit.i.i.i.i.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit14.i.i.i.i.i.i.i.i"
  %i.aq = icmp ne ptr %i.ah, %i.n
  call void @llvm.assume(i1 %i.aq)
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.ph, i64 4
  %i.as = load i8, ptr %i.ah, align 1, !noalias !5845, !noundef !10
  %i.at = shl nuw nsw i32 %i.w, 18
  %i.au = and i32 %i.at, 1835008
  %i.av = shl nuw nsw i32 %i.am, 6
  %i.aw = and i8 %i.as, 63
  %i.ax = zext nneg i8 %i.aw to i32
  %i.ay = or disjoint i32 %i.av, %i.ax
  %i.az = or disjoint i32 %i.ay, %i.au            ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.az, 1114112
  br i1 %.not.i.i.i.i.i.i, label %"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h2e3ddd1423441cbeE.exit.thread.i.i.i", label %"_ZN107_$LT$core..iter..adapters..fuse..Fuse$LT$I$GT$$u20$as$u20$core..iter..adapters..fuse..FuseImpl$LT$I$GT$$GT$4next17h03860d55e735c4efE.exit.i.i.i.i"

"_ZN107_$LT$core..iter..adapters..fuse..Fuse$LT$I$GT$$u20$as$u20$core..iter..adapters..fuse..FuseImpl$LT$I$GT$$GT$4next17h03860d55e735c4efE.exit.i.i.i.i": ; preds = %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5278c74934f49a32E.exit.i.i.i.i.i.i", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit14.i.i.i.i.i.i.i.i", %bb.g, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit12.i.i.i.i.i.i.i.i"
  %.sroa.0.2.i.i.i = phi ptr [ %i.s, %bb.g ], [ %i.ar, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5278c74934f49a32E.exit.i.i.i.i.i.i" ], [ %i.ah, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit14.i.i.i.i.i.i.i.i" ], [ %i.y, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit12.i.i.i.i.i.i.i.i" ]
  %spec.select.i4.i.i.i.i.i.i = phi i32 [ %i.af, %bb.g ], [ %i.az, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5278c74934f49a32E.exit.i.i.i.i.i.i" ], [ %i.ao, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit14.i.i.i.i.i.i.i.i" ], [ %i.ad, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit12.i.i.i.i.i.i.i.i" ]
  call void @_ZN7unicase7unicode3map6lookup17h280042bd9517aa36E(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(address) dereferenceable(12) %i.b, i32 noundef range(i32 0, 1114112) %spec.select.i4.i.i.i.i.i.i), !noalias !5846
  %.pr.i.i.i.i = load i32, ptr %i.b, align 4, !noalias !5844 ; 2 uses
  %.not1.i.i.i.i = icmp eq i32 %.pr.i.i.i.i, 1114115
  br i1 %.not1.i.i.i.i, label %"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h2e3ddd1423441cbeE.exit.thread.i.i.i", label %bb.h

bb.h:                                             ; preds = %"_ZN107_$LT$core..iter..adapters..fuse..Fuse$LT$I$GT$$u20$as$u20$core..iter..adapters..fuse..FuseImpl$LT$I$GT$$GT$4next17h03860d55e735c4efE.exit.i.i.i.i"
  %.sroa.17.16.copyload.i.i.i = load i32, ptr %.sroa.17.16..sroa_idx.i.i.i, align 4, !noalias !5843
  %.sroa.22.16.copyload.i.i.i = load i32, ptr %.sroa.22.16..sroa_idx.i.i.i, align 4, !noalias !5843
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5844
  br label %.outer

"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h2e3ddd1423441cbeE.exit.thread.i.i.i": ; preds = %"_ZN107_$LT$core..iter..adapters..fuse..Fuse$LT$I$GT$$u20$as$u20$core..iter..adapters..fuse..FuseImpl$LT$I$GT$$GT$4next17h03860d55e735c4efE.exit.i.i.i.i", %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5278c74934f49a32E.exit.i.i.i.i.i.i", %_ZN4core4iter8adapters7flatten17and_then_or_clear17h8f2ee30a94633852E.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5844
  br label %"_ZN71_$LT$unicase..unicode..Unicode$LT$S$GT$$u20$as$u20$core..hash..Hash$GT$4hash17h9de58c0a91ac462aE.exit.i.i"

"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h2e3ddd1423441cbeE.exit.i.i.i.loopexit41": ; preds = %bb.d
  br label %"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h2e3ddd1423441cbeE.exit.i.i.i"

"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h2e3ddd1423441cbeE.exit.i.i.i.loopexit": ; preds = %bb.d
  br label %"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h2e3ddd1423441cbeE.exit.i.i.i"

"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h2e3ddd1423441cbeE.exit.i.i.i": ; preds = %bb.d, %"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h2e3ddd1423441cbeE.exit.i.i.i.loopexit", %"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h2e3ddd1423441cbeE.exit.i.i.i.loopexit41"
  %.sroa.22.2.i.i.i = phi i32 [ %.sroa.22.1.i.i.i, %"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h2e3ddd1423441cbeE.exit.i.i.i.loopexit" ], [ %.sroa.17.1.i.i.i, %"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h2e3ddd1423441cbeE.exit.i.i.i.loopexit41" ], [ %.sroa.22.1.i.i.i, %bb.d ]
  %.sroa.17.2.i.i.i = phi i32 [ %.sroa.17.1.i.i.i, %"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h2e3ddd1423441cbeE.exit.i.i.i.loopexit" ], [ %.sroa.10.1.i.i.i, %"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h2e3ddd1423441cbeE.exit.i.i.i.loopexit41" ], [ %.sroa.22.1.i.i.i, %bb.d ]
  %.sroa.10.3.i.i.i = phi i32 [ 1114112, %"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h2e3ddd1423441cbeE.exit.i.i.i.loopexit" ], [ 1114114, %"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h2e3ddd1423441cbeE.exit.i.i.i.loopexit41" ], [ 1114113, %bb.d ]
  %.sroa.0.0.i.i.i.i = phi i32 [ %.sroa.17.1.i.i.i, %"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h2e3ddd1423441cbeE.exit.i.i.i.loopexit" ], [ %.sroa.22.1.i.i.i, %"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h2e3ddd1423441cbeE.exit.i.i.i.loopexit41" ], [ %.sroa.17.1.i.i.i, %bb.d ] ; 14 uses
  %.not.i.i.i = icmp eq i32 %.sroa.0.0.i.i.i.i, 1114112
  br i1 %.not.i.i.i, label %"_ZN71_$LT$unicase..unicode..Unicode$LT$S$GT$$u20$as$u20$core..hash..Hash$GT$4hash17h9de58c0a91ac462aE.exit.i.i", label %bb.i

bb.i:                                             ; preds = %"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h2e3ddd1423441cbeE.exit.i.i.i"
  %i.ba = icmp samesign ult i32 %.sroa.0.0.i.i.i.i, 128
  br i1 %i.ba, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bb = icmp samesign ult i32 %.sroa.0.0.i.i.i.i, 2048
  br i1 %i.bb, label %bb.m, label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.bc = trunc nuw nsw i32 %.sroa.0.0.i.i.i.i to i8
  store i8 %i.bc, ptr %i.c, align 4, !alias.scope !5847, !noalias !5843
  br label %_ZN7unicase7unicode12char_to_utf817h94ba0bbc3ad8ef76E.exit.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.bd = icmp samesign ult i32 %.sroa.0.0.i.i.i.i, 65536
  br i1 %i.bd, label %bb.o, label %bb.n

bb.m:                                             ; preds = %bb.j
  %i.be = lshr i32 %.sroa.0.0.i.i.i.i, 6
  %i.bf = trunc nuw nsw i32 %i.be to i8
  %i.bg = or disjoint i8 %i.bf, -64
  store i8 %i.bg, ptr %i.c, align 4, !alias.scope !5847, !noalias !5843
  %i.bh = trunc i32 %.sroa.0.0.i.i.i.i to i8
  %i.bi = and i8 %i.bh, 63
  %i.bj = or disjoint i8 %i.bi, -128
  store i8 %i.bj, ptr %i.o, align 1, !alias.scope !5847, !noalias !5843
  br label %_ZN7unicase7unicode12char_to_utf817h94ba0bbc3ad8ef76E.exit.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.bk = lshr i32 %.sroa.0.0.i.i.i.i, 18
  %2 = trunc nsw i32 %i.bk to i8
  %i.bl = lshr i32 %.sroa.0.0.i.i.i.i, 12
  %i.bm = trunc i32 %i.bl to i8
  %3 = lshr i32 %.sroa.0.0.i.i.i.i, 6
  %i.bn = trunc i32 %3 to i8
  %i.bo = trunc i32 %.sroa.0.0.i.i.i.i to i8
  %i.bp = insertelement <4 x i8> poison, i8 %2, i64 0
  %i.bq = insertelement <4 x i8> %i.bp, i8 %i.bm, i64 1
  %i.br = insertelement <4 x i8> %i.bq, i8 %i.bn, i64 2
  %i.bs = insertelement <4 x i8> %i.br, i8 %i.bo, i64 3
  %i.bt = and <4 x i8> %i.bs, <i8 -1, i8 63, i8 63, i8 63>
  %i.bu = or disjoint <4 x i8> %i.bt, <i8 -16, i8 -128, i8 -128, i8 -128>
  store <4 x i8> %i.bu, ptr %i.c, align 4, !alias.scope !5847, !noalias !5843
  br label %_ZN7unicase7unicode12char_to_utf817h94ba0bbc3ad8ef76E.exit.i.i.i

bb.o:                                             ; preds = %bb.l
  %i.bv = lshr i32 %.sroa.0.0.i.i.i.i, 12
  %i.bw = trunc nuw nsw i32 %i.bv to i8
  %i.bx = or disjoint i8 %i.bw, -32
  store i8 %i.bx, ptr %i.c, align 4, !alias.scope !5847, !noalias !5843
  %i.by = lshr i32 %.sroa.0.0.i.i.i.i, 6
  %i.bz = trunc i32 %i.by to i8
  %i.ca = and i8 %i.bz, 63
  %i.cb = or disjoint i8 %i.ca, -128
  store i8 %i.cb, ptr %i.o, align 1, !alias.scope !5847, !noalias !5843
  %i.cc = trunc i32 %.sroa.0.0.i.i.i.i to i8
  %i.cd = and i8 %i.cc, 63
  %i.ce = or disjoint i8 %i.cd, -128
  store i8 %i.ce, ptr %i.p, align 2, !alias.scope !5847, !noalias !5843
  br label %_ZN7unicase7unicode12char_to_utf817h94ba0bbc3ad8ef76E.exit.i.i.i

_ZN7unicase7unicode12char_to_utf817h94ba0bbc3ad8ef76E.exit.i.i.i: ; preds = %bb.o, %bb.n, %bb.m, %bb.k
  %.sroa.0.0.i10.i.i.i = phi i64 [ 1, %bb.k ], [ 2, %bb.m ], [ 3, %bb.o ], [ 4, %bb.n ]
  call fastcc void @"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17h85f1b490c2f52fbfE"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.d, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.c, i64 noundef %.sroa.0.0.i10.i.i.i), !noalias !5841
  br label %bb.c

"_ZN71_$LT$unicase..unicode..Unicode$LT$S$GT$$u20$as$u20$core..hash..Hash$GT$4hash17h9de58c0a91ac462aE.exit.i.i": ; preds = %"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h2e3ddd1423441cbeE.exit.i.i.i", %"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h2e3ddd1423441cbeE.exit.thread.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !5843
  br label %"_ZN4core4hash5impls52_$LT$impl$u20$core..hash..Hash$u20$for$u20$$RF$T$GT$4hash17he499d92ee90ae867E.exit"

bb.p:                                             ; preds = %bb.a
  %i.cf = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.val1.i.i
  %i.cg = icmp samesign eq i64 %.val1.i.i, 0
  br i1 %i.cg, label %"_ZN4core4hash5impls52_$LT$impl$u20$core..hash..Hash$u20$for$u20$$RF$T$GT$4hash17he499d92ee90ae867E.exit", label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.p, %.lr.ph.i.i.i
  %.sroa.0.01.i.i.i = phi ptr [ %i.ch, %.lr.ph.i.i.i ], [ %.val.i.i, %bb.p ] ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i.i, i64 1 ; 2 uses
  %i.ci = load i8, ptr %.sroa.0.01.i.i.i, align 1, !noalias !5848, !noundef !10 ; 2 uses
  %i.cj = add i8 %i.ci, -65
  %i.ck = icmp ult i8 %i.cj, 26
  %i.cl = select i1 %i.ck, i8 32, i8 0
  %.sroa.05.0.i.i.i = or i8 %i.cl, %i.ci
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5849
  store i8 %.sroa.05.0.i.i.i, ptr %i.a, align 1, !noalias !5849
  call fastcc void @"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17h85f1b490c2f52fbfE"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.d, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.a, i64 noundef 1), !noalias !5841
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5849
  %i.cm = icmp eq ptr %i.ch, %i.cf
  br i1 %i.cm, label %"_ZN4core4hash5impls52_$LT$impl$u20$core..hash..Hash$u20$for$u20$$RF$T$GT$4hash17he499d92ee90ae867E.exit", label %.lr.ph.i.i.i

"_ZN4core4hash5impls52_$LT$impl$u20$core..hash..Hash$u20$for$u20$$RF$T$GT$4hash17he499d92ee90ae867E.exit": ; preds = %.lr.ph.i.i.i, %"_ZN71_$LT$unicase..unicode..Unicode$LT$S$GT$$u20$as$u20$core..hash..Hash$GT$4hash17h9de58c0a91ac462aE.exit.i.i", %bb.p
  %.sroa.610.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.d, align 16, !alias.scope !5850
  %.sroa.10.0.copyload.i.i = load i64, ptr %.sroa.48.0..sroa_idx.i, align 8, !alias.scope !5850
  %.sroa.17.0.copyload.i.i = load i64, ptr %.sroa.59.0..sroa_idx.i, align 16, !alias.scope !5850 ; 3 uses
  %.sroa.22.0.copyload.i.i = load i64, ptr %.sroa.610.0..sroa_idx.i, align 8, !alias.scope !5850
  %i.cn = load i64, ptr %.sroa.913.0..sroa_idx.i, align 16, !alias.scope !5850, !noundef !10
  %i.co = shl i64 %i.cn, 56
  %i.cp = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.cq = load i64, ptr %i.cp, align 8, !alias.scope !5850, !noundef !10
  %i.cr = or i64 %i.co, %i.cq                     ; 2 uses
  %i.cs = xor i64 %i.cr, %.sroa.22.0.copyload.i.i ; 3 uses
  %i.ct = add i64 %.sroa.17.0.copyload.i.i, %.sroa.0.0.copyload.i.i ; 3 uses
  %i.cu = add i64 %i.cs, %.sroa.10.0.copyload.i.i ; 2 uses
  %i.cv = call i64 @llvm.fshl.i64(i64 %.sroa.17.0.copyload.i.i, i64 %.sroa.17.0.copyload.i.i, i64 13)
  %i.cw = xor i64 %i.cv, %i.ct                    ; 3 uses
  %i.cx = call i64 @llvm.fshl.i64(i64 %i.cs, i64 %i.cs, i64 16)
  %i.cy = xor i64 %i.cx, %i.cu                    ; 3 uses
  %i.cz = call i64 @llvm.fshl.i64(i64 %i.ct, i64 %i.ct, i64 32)
  %i.da = add i64 %i.cu, %i.cw                    ; 3 uses
  %i.db = add i64 %i.cy, %i.cz                    ; 2 uses
  %i.dc = call i64 @llvm.fshl.i64(i64 %i.cw, i64 %i.cw, i64 17)
  %i.dd = xor i64 %i.da, %i.dc                    ; 3 uses
  %i.de = call i64 @llvm.fshl.i64(i64 %i.cy, i64 %i.cy, i64 21)
  %i.df = xor i64 %i.de, %i.db                    ; 3 uses
  %i.dg = call i64 @llvm.fshl.i64(i64 %i.da, i64 %i.da, i64 32)
  %i.dh = xor i64 %i.db, %i.cr
  %i.di = xor i64 %i.dg, 255
  %i.dj = add i64 %i.dh, %i.dd                    ; 3 uses
  %i.dk = add i64 %i.df, %i.di                    ; 2 uses
  %i.dl = call i64 @llvm.fshl.i64(i64 %i.dd, i64 %i.dd, i64 13)
  %i.dm = xor i64 %i.dj, %i.dl                    ; 3 uses
  %i.dn = call i64 @llvm.fshl.i64(i64 %i.df, i64 %i.df, i64 16)
  %i.do = xor i64 %i.dn, %i.dk                    ; 3 uses
  %i.dp = call i64 @llvm.fshl.i64(i64 %i.dj, i64 %i.dj, i64 32)
  %i.dq = add i64 %i.dm, %i.dk                    ; 3 uses
  %i.dr = add i64 %i.do, %i.dp                    ; 2 uses
  %i.ds = call i64 @llvm.fshl.i64(i64 %i.dm, i64 %i.dm, i64 17)
  %i.dt = xor i64 %i.dq, %i.ds                    ; 3 uses
  %i.du = call i64 @llvm.fshl.i64(i64 %i.do, i64 %i.do, i64 21)
  %i.dv = xor i64 %i.du, %i.dr                    ; 3 uses
  %i.dw = call i64 @llvm.fshl.i64(i64 %i.dq, i64 %i.dq, i64 32)
  %i.dx = add i64 %i.dt, %i.dr                    ; 3 uses
  %i.dy = add i64 %i.dv, %i.dw                    ; 2 uses
  %i.dz = call i64 @llvm.fshl.i64(i64 %i.dt, i64 %i.dt, i64 13)
  %i.ea = xor i64 %i.dz, %i.dx                    ; 3 uses
  %i.eb = call i64 @llvm.fshl.i64(i64 %i.dv, i64 %i.dv, i64 16)
  %i.ec = xor i64 %i.eb, %i.dy                    ; 3 uses
  %i.ed = call i64 @llvm.fshl.i64(i64 %i.dx, i64 %i.dx, i64 32)
  %i.ee = add i64 %i.ea, %i.dy                    ; 3 uses
  %i.ef = add i64 %i.ec, %i.ed                    ; 2 uses
  %i.eg = call i64 @llvm.fshl.i64(i64 %i.ea, i64 %i.ea, i64 17)
  %i.eh = xor i64 %i.eg, %i.ee                    ; 3 uses
  %i.ei = call i64 @llvm.fshl.i64(i64 %i.ec, i64 %i.ec, i64 21)
  %i.ej = xor i64 %i.ei, %i.ef                    ; 3 uses
  %i.ek = call i64 @llvm.fshl.i64(i64 %i.ee, i64 %i.ee, i64 32)
  %i.el = add i64 %i.eh, %i.ef
  %i.em = add i64 %i.ej, %i.ek                    ; 2 uses
  %i.en = call i64 @llvm.fshl.i64(i64 %i.eh, i64 %i.eh, i64 13)
  %i.eo = xor i64 %i.en, %i.el                    ; 3 uses
  %i.ep = call i64 @llvm.fshl.i64(i64 %i.ej, i64 %i.ej, i64 16)
  %i.eq = xor i64 %i.ep, %i.em                    ; 2 uses
  %i.er = add i64 %i.eo, %i.em                    ; 3 uses
  %i.es = call i64 @llvm.fshl.i64(i64 %i.eo, i64 %i.eo, i64 17)
  %i.et = call i64 @llvm.fshl.i64(i64 %i.eq, i64 %i.eq, i64 21)
  %i.eu = call i64 @llvm.fshl.i64(i64 %i.er, i64 %i.er, i64 32)
  %i.ev = xor i64 %i.et, %i.es
  %i.ew = xor i64 %i.ev, %i.eu
  %i.ex = xor i64 %i.ew, %i.er
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret i64 %i.ex
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable
define hidden noundef i64 @_ZN4core4hash11BuildHasher8hash_one17h05bb9f74ce1444f7E(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %1) unnamed_addr #14 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = alloca [72 x i8], align 16               ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.59.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %.sroa.610.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.711.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.c = load <2 x i64>, ptr %0, align 8          ; 3 uses
  %i.d = shufflevector <2 x i64> %i.c, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.e = xor <2 x i64> %i.d, <i64 8317987319222330741, i64 7816392313619706465>
  store <2 x i64> %i.e, ptr %i.b, align 16, !alias.scope !5863
  %i.f = shufflevector <2 x i64> %i.c, <2 x i64> poison, <2 x i32> <i32 1, i32 1>
  %i.g = xor <2 x i64> %i.f, <i64 7237128888997146477, i64 8387220255154660723>
  store <2 x i64> %i.g, ptr %.sroa.59.0..sroa_idx.i, align 16, !alias.scope !5863
  store <2 x i64> %i.c, ptr %.sroa.711.0..sroa_idx.i, align 16, !alias.scope !5863
  %.sroa.913.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.913.0..sroa_idx.i, i8 0, i64 24, i1 false), !alias.scope !5863
  %.val.i = load i32, ptr %1, align 4, !noalias !5864, !noundef !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5865
  store i32 %.val.i, ptr %i.a, align 4, !noalias !5865
  call fastcc void @"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17h85f1b490c2f52fbfE"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.a, i64 noundef 4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5865
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.b, align 16, !alias.scope !5866
  %.sroa.10.0.copyload.i.i = load i64, ptr %.sroa.48.0..sroa_idx.i, align 8, !alias.scope !5866
  %.sroa.17.0.copyload.i.i = load i64, ptr %.sroa.59.0..sroa_idx.i, align 16, !alias.scope !5866 ; 3 uses
  %.sroa.22.0.copyload.i.i = load i64, ptr %.sroa.610.0..sroa_idx.i, align 8, !alias.scope !5866
  %i.h = load i64, ptr %.sroa.913.0..sroa_idx.i, align 16, !alias.scope !5866, !noundef !10
  %i.i = shl i64 %i.h, 56
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !5866, !noundef !10
  %i.l = or i64 %i.i, %i.k                        ; 2 uses
  %i.m = xor i64 %i.l, %.sroa.22.0.copyload.i.i   ; 3 uses
  %i.n = add i64 %.sroa.17.0.copyload.i.i, %.sroa.0.0.copyload.i.i ; 3 uses
  %i.o = add i64 %i.m, %.sroa.10.0.copyload.i.i   ; 2 uses
  %i.p = tail call i64 @llvm.fshl.i64(i64 %.sroa.17.0.copyload.i.i, i64 %.sroa.17.0.copyload.i.i, i64 13)
  %i.q = xor i64 %i.p, %i.n                       ; 3 uses
  %i.r = tail call i64 @llvm.fshl.i64(i64 %i.m, i64 %i.m, i64 16)
  %i.s = xor i64 %i.r, %i.o                       ; 3 uses
  %i.t = tail call i64 @llvm.fshl.i64(i64 %i.n, i64 %i.n, i64 32)
  %i.u = add i64 %i.o, %i.q                       ; 3 uses
  %i.v = add i64 %i.s, %i.t                       ; 2 uses
  %i.w = tail call i64 @llvm.fshl.i64(i64 %i.q, i64 %i.q, i64 17)
  %i.x = xor i64 %i.u, %i.w                       ; 3 uses
  %i.y = tail call i64 @llvm.fshl.i64(i64 %i.s, i64 %i.s, i64 21)
  %i.z = xor i64 %i.y, %i.v                       ; 3 uses
  %i.aa = tail call i64 @llvm.fshl.i64(i64 %i.u, i64 %i.u, i64 32)
  %i.ab = xor i64 %i.v, %i.l
  %i.ac = xor i64 %i.aa, 255
  %i.ad = add i64 %i.ab, %i.x                     ; 3 uses
  %i.ae = add i64 %i.z, %i.ac                     ; 2 uses
  %i.af = tail call i64 @llvm.fshl.i64(i64 %i.x, i64 %i.x, i64 13)
  %i.ag = xor i64 %i.ad, %i.af                    ; 3 uses
  %i.ah = tail call i64 @llvm.fshl.i64(i64 %i.z, i64 %i.z, i64 16)
  %i.ai = xor i64 %i.ah, %i.ae                    ; 3 uses
  %i.aj = tail call i64 @llvm.fshl.i64(i64 %i.ad, i64 %i.ad, i64 32)
  %i.ak = add i64 %i.ag, %i.ae                    ; 3 uses
  %i.al = add i64 %i.ai, %i.aj                    ; 2 uses
  %i.am = tail call i64 @llvm.fshl.i64(i64 %i.ag, i64 %i.ag, i64 17)
  %i.an = xor i64 %i.ak, %i.am                    ; 3 uses
  %i.ao = tail call i64 @llvm.fshl.i64(i64 %i.ai, i64 %i.ai, i64 21)
  %i.ap = xor i64 %i.ao, %i.al                    ; 3 uses
  %i.aq = tail call i64 @llvm.fshl.i64(i64 %i.ak, i64 %i.ak, i64 32)
  %i.ar = add i64 %i.an, %i.al                    ; 3 uses
  %i.as = add i64 %i.ap, %i.aq                    ; 2 uses
  %i.at = tail call i64 @llvm.fshl.i64(i64 %i.an, i64 %i.an, i64 13)
  %i.au = xor i64 %i.at, %i.ar                    ; 3 uses
  %i.av = tail call i64 @llvm.fshl.i64(i64 %i.ap, i64 %i.ap, i64 16)
  %i.aw = xor i64 %i.av, %i.as                    ; 3 uses
  %i.ax = tail call i64 @llvm.fshl.i64(i64 %i.ar, i64 %i.ar, i64 32)
  %i.ay = add i64 %i.au, %i.as                    ; 3 uses
  %i.az = add i64 %i.aw, %i.ax                    ; 2 uses
  %i.ba = tail call i64 @llvm.fshl.i64(i64 %i.au, i64 %i.au, i64 17)
  %i.bb = xor i64 %i.ba, %i.ay                    ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN4core4hash11BuildHasher8hash_one17h1ea3f7ed602f7993E:bb.a
  %i.bj = xor i64 %i.bi, %i.bg                    ; 3 uses
  %i.bk = tail call i64 @llvm.fshl.i64(i64 %i.be, i64 %i.be, i64 16)
  %i.bl = xor i64 %i.bk, %i.bh                    ; 2 uses
  %i.bm = add i64 %i.bj, %i.bh                    ; 3 uses
  %i.bn = tail call i64 @llvm.fshl.i64(i64 %i.bj, i64 %i.bj, i64 17)
  %i.bo = tail call i64 @llvm.fshl.i64(i64 %i.bl, i64 %i.bl, i64 21)
  %i.bp = tail call i64 @llvm.fshl.i64(i64 %i.bm, i64 %i.bm, i64 32)
  %i.bq = xor i64 %i.bo, %i.bn
  %i.br = xor i64 %i.bq, %i.bp
  %i.bs = xor i64 %i.br, %i.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i64 %i.bs
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_ZN4core4hash11BuildHasher8hash_one17h2c5da30f37618ab9E(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %i.b = alloca [12 x i8], align 4                ; 7 uses
  %i.c = alloca [4 x i8], align 4                 ; 10 uses
  %i.d = alloca [72 x i8], align 16               ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %.sroa.59.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %.sroa.711.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.e = load <2 x i64>, ptr %0, align 8          ; 3 uses
  %i.f = shufflevector <2 x i64> %i.e, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.g = xor <2 x i64> %i.f, <i64 8317987319222330741, i64 7816392313619706465>
  store <2 x i64> %i.g, ptr %i.d, align 16, !alias.scope !5977
  %i.h = shufflevector <2 x i64> %i.e, <2 x i64> poison, <2 x i32> <i32 1, i32 1>
  %i.i = xor <2 x i64> %i.h, <i64 7237128888997146477, i64 8387220255154660723>
  store <2 x i64> %i.i, ptr %.sroa.59.0..sroa_idx.i, align 16, !alias.scope !5977
  store <2 x i64> %i.e, ptr %.sroa.711.0..sroa_idx.i, align 16, !alias.scope !5977
  %.sroa.913.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 48 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.913.0..sroa_idx.i, i8 0, i64 24, i1 false), !alias.scope !5977
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5978)
  %i.j = load i64, ptr %1, align 8, !range !12, !alias.scope !5978, !noalias !5979, !noundef !10
  %i.k = trunc nuw i64 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i.i = load ptr, ptr %i.l, align 8, !alias.scope !5978, !noalias !5979, !nonnull !10, !align !14, !noundef !10 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val1.i.i = load i64, ptr %i.m, align 8, !alias.scope !5978, !noalias !5979, !noundef !10 ; 3 uses
  br i1 %i.k, label %bb.b, label %bb.p

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !5980
  store i32 0, ptr %i.c, align 4, !noalias !5980
  %i.n = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.val1.i.i ; 4 uses
  %.sroa.17.16..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %.sroa.22.16..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  br label %.outer

.outer:                                           ; preds = %bb.b, %bb.h
  %.sroa.22.1.i.i.i.ph = phi i32 [ undef, %bb.b ], [ %.sroa.22.16.copyload.i.i.i, %bb.h ]
  %.sroa.17.1.i.i.i.ph = phi i32 [ undef, %bb.b ], [ %.sroa.17.16.copyload.i.i.i, %bb.h ]
  %.sroa.10.1.i.i.i.ph = phi i32 [ 1114115, %bb.b ], [ %.pr.i.i.i.i, %bb.h ]
  %.sroa.0.1.i.i.i.ph = phi ptr [ %.val.i.i, %bb.b ], [ %.sroa.0.2.i.i.i, %bb.h ] ; 6 uses
  br label %bb.c

bb.c:                                             ; preds = %.outer, %_ZN7unicase7unicode12char_to_utf817h94ba0bbc3ad8ef76E.exit.i.i.i
  %.sroa.22.1.i.i.i = phi i32 [ %.sroa.22.2.i.i.i, %_ZN7unicase7unicode12char_to_utf817h94ba0bbc3ad8ef76E.exit.i.i.i ], [ %.sroa.22.1.i.i.i.ph, %.outer ] ; 4 uses
  %.sroa.17.1.i.i.i = phi i32 [ %.sroa.17.2.i.i.i, %_ZN7unicase7unicode12char_to_utf817h94ba0bbc3ad8ef76E.exit.i.i.i ], [ %.sroa.17.1.i.i.i.ph, %.outer ] ; 4 uses
  %.sroa.10.1.i.i.i = phi i32 [ %.sroa.10.3.i.i.i, %_ZN7unicase7unicode12char_to_utf817h94ba0bbc3ad8ef76E.exit.i.i.i ], [ %.sroa.10.1.i.i.i.ph, %.outer ] ; 4 uses
  %.not.i.i.i.i.i = icmp eq i32 %.sroa.10.1.i.i.i, 1114115
  br i1 %.not.i.i.i.i.i, label %_ZN4core4iter8adapters7flatten17and_then_or_clear17h8f2ee30a94633852E.exit.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = add nsw i32 %.sroa.10.1.i.i.i, -1114112
  %i.r = icmp samesign ugt i32 %.sroa.10.1.i.i.i, 1114111
  %narrow.i.i.i.i.i.i.i = select i1 %i.r, i32 %i.q, i32 3
  switch i32 %narrow.i.i.i.i.i.i.i, label %bb.e [
    i32 0, label %_ZN4core4iter8adapters7flatten17and_then_or_clear17h8f2ee30a94633852E.exit.i.i.i.i
    i32 1, label %"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf2457cd6ba2b5e1fE.exit.i.i.i.loopexit"
    i32 2, label %"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf2457cd6ba2b5e1fE.exit.i.i.i"
    i32 3, label %"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf2457cd6ba2b5e1fE.exit.i.i.i.loopexit41"
  ]

bb.e:                                             ; preds = %bb.d
  unreachable

_ZN4core4iter8adapters7flatten17and_then_or_clear17h8f2ee30a94633852E.exit.i.i.i.i: ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5981
  %.not.i.i.i.i.i.i.i = icmp eq ptr %.sroa.0.1.i.i.i.ph, %i.n
  br i1 %.not.i.i.i.i.i.i.i, label %"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf2457cd6ba2b5e1fE.exit.thread.i.i.i", label %bb.f

bb.f:                                             ; preds = %_ZN4core4iter8adapters7flatten17and_then_or_clear17h8f2ee30a94633852E.exit.i.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.ph, i64 1 ; 3 uses
  %i.t = load i8, ptr %.sroa.0.1.i.i.i.ph, align 1, !noalias !5982, !noundef !10 ; 5 uses
  %i.u = icmp sgt i8 %i.t, -1
  br i1 %i.u, label %bb.g, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit12.i.i.i.i.i.i.i.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit12.i.i.i.i.i.i.i.i": ; preds = %bb.f
  %i.v = and i8 %i.t, 31
  %i.w = zext nneg i8 %i.v to i32                 ; 3 uses
  %i.x = icmp ne ptr %i.s, %i.n
  call void @llvm.assume(i1 %i.x)
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.ph, i64 2 ; 3 uses
  %i.z = load i8, ptr %i.s, align 1, !noalias !5982, !noundef !10
  %i.aa = shl nuw nsw i32 %i.w, 6
  %i.ab = and i8 %i.z, 63
  %i.ac = zext nneg i8 %i.ab to i32               ; 2 uses
  %i.ad = or disjoint i32 %i.aa, %i.ac
  %i.ae = icmp samesign ugt i8 %i.t, -33
  br i1 %i.ae, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit14.i.i.i.i.i.i.i.i", label %"_ZN107_$LT$core..iter..adapters..fuse..Fuse$LT$I$GT$$u20$as$u20$core..iter..adapters..fuse..FuseImpl$LT$I$GT$$GT$4next17hbd3f0b0ca515af12E.exit.i.i.i.i"

bb.g:                                             ; preds = %bb.f
  %i.af = zext nneg i8 %i.t to i32
  br label %"_ZN107_$LT$core..iter..adapters..fuse..Fuse$LT$I$GT$$u20$as$u20$core..iter..adapters..fuse..FuseImpl$LT$I$GT$$GT$4next17hbd3f0b0ca515af12E.exit.i.i.i.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit14.i.i.i.i.i.i.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit12.i.i.i.i.i.i.i.i"
  %i.ag = icmp ne ptr %i.y, %i.n
  call void @llvm.assume(i1 %i.ag)
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.ph, i64 3 ; 3 uses
  %i.ai = load i8, ptr %i.y, align 1, !noalias !5982, !noundef !10
  %i.aj = shl nuw nsw i32 %i.ac, 6
  %i.ak = and i8 %i.ai, 63
  %i.al = zext nneg i8 %i.ak to i32
  %i.am = or disjoint i32 %i.aj, %i.al            ; 2 uses
  %i.an = shl nuw nsw i32 %i.w, 12
  %i.ao = or disjoint i32 %i.am, %i.an
  %i.ap = icmp samesign ugt i8 %i.t, -17
  br i1 %i.ap, label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5278c74934f49a32E.exit.i.i.i.i.i.i", label %"_ZN107_$LT$core..iter..adapters..fuse..Fuse$LT$I$GT$$u20$as$u20$core..iter..adapters..fuse..FuseImpl$LT$I$GT$$GT$4next17hbd3f0b0ca515af12E.exit.i.i.i.i"

"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5278c74934f49a32E.exit.i.i.i.i.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit14.i.i.i.i.i.i.i.i"
  %i.aq = icmp ne ptr %i.ah, %i.n
  call void @llvm.assume(i1 %i.aq)
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.ph, i64 4
  %i.as = load i8, ptr %i.ah, align 1, !noalias !5982, !noundef !10
  %i.at = shl nuw nsw i32 %i.w, 18
  %i.au = and i32 %i.at, 1835008
  %i.av = shl nuw nsw i32 %i.am, 6
  %i.aw = and i8 %i.as, 63
  %i.ax = zext nneg i8 %i.aw to i32
  %i.ay = or disjoint i32 %i.av, %i.ax
  %i.az = or disjoint i32 %i.ay, %i.au            ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.az, 1114112
  br i1 %.not.i.i.i.i.i.i, label %"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf2457cd6ba2b5e1fE.exit.thread.i.i.i", label %"_ZN107_$LT$core..iter..adapters..fuse..Fuse$LT$I$GT$$u20$as$u20$core..iter..adapters..fuse..FuseImpl$LT$I$GT$$GT$4next17hbd3f0b0ca515af12E.exit.i.i.i.i"

"_ZN107_$LT$core..iter..adapters..fuse..Fuse$LT$I$GT$$u20$as$u20$core..iter..adapters..fuse..FuseImpl$LT$I$GT$$GT$4next17hbd3f0b0ca515af12E.exit.i.i.i.i": ; preds = %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5278c74934f49a32E.exit.i.i.i.i.i.i", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit14.i.i.i.i.i.i.i.i", %bb.g, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit12.i.i.i.i.i.i.i.i"
  %.sroa.0.2.i.i.i = phi ptr [ %i.s, %bb.g ], [ %i.ar, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5278c74934f49a32E.exit.i.i.i.i.i.i" ], [ %i.ah, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit14.i.i.i.i.i.i.i.i" ], [ %i.y, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit12.i.i.i.i.i.i.i.i" ]
  %spec.select.i4.i.i.i.i.i.i = phi i32 [ %i.af, %bb.g ], [ %i.az, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5278c74934f49a32E.exit.i.i.i.i.i.i" ], [ %i.ao, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit14.i.i.i.i.i.i.i.i" ], [ %i.ad, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit12.i.i.i.i.i.i.i.i" ]
  call void @_ZN7unicase7unicode3map6lookup17h280042bd9517aa36E(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(address) dereferenceable(12) %i.b, i32 noundef range(i32 0, 1114112) %spec.select.i4.i.i.i.i.i.i), !noalias !5983
  %.pr.i.i.i.i = load i32, ptr %i.b, align 4, !noalias !5981 ; 2 uses
  %.not1.i.i.i.i = icmp eq i32 %.pr.i.i.i.i, 1114115
  br i1 %.not1.i.i.i.i, label %"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf2457cd6ba2b5e1fE.exit.thread.i.i.i", label %bb.h

bb.h:                                             ; preds = %"_ZN107_$LT$core..iter..adapters..fuse..Fuse$LT$I$GT$$u20$as$u20$core..iter..adapters..fuse..FuseImpl$LT$I$GT$$GT$4next17hbd3f0b0ca515af12E.exit.i.i.i.i"
  %.sroa.17.16.copyload.i.i.i = load i32, ptr %.sroa.17.16..sroa_idx.i.i.i, align 4, !noalias !5980
  %.sroa.22.16.copyload.i.i.i = load i32, ptr %.sroa.22.16..sroa_idx.i.i.i, align 4, !noalias !5980
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5981
  br label %.outer

"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf2457cd6ba2b5e1fE.exit.thread.i.i.i": ; preds = %"_ZN107_$LT$core..iter..adapters..fuse..Fuse$LT$I$GT$$u20$as$u20$core..iter..adapters..fuse..FuseImpl$LT$I$GT$$GT$4next17hbd3f0b0ca515af12E.exit.i.i.i.i", %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5278c74934f49a32E.exit.i.i.i.i.i.i", %_ZN4core4iter8adapters7flatten17and_then_or_clear17h8f2ee30a94633852E.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5981
  br label %"_ZN71_$LT$unicase..unicode..Unicode$LT$S$GT$$u20$as$u20$core..hash..Hash$GT$4hash17hf97cc66a25f3b0faE.exit.i.i"

"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf2457cd6ba2b5e1fE.exit.i.i.i.loopexit41": ; preds = %bb.d
  br label %"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf2457cd6ba2b5e1fE.exit.i.i.i"

"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf2457cd6ba2b5e1fE.exit.i.i.i.loopexit": ; preds = %bb.d
  br label %"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf2457cd6ba2b5e1fE.exit.i.i.i"

"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf2457cd6ba2b5e1fE.exit.i.i.i": ; preds = %bb.d, %"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf2457cd6ba2b5e1fE.exit.i.i.i.loopexit", %"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf2457cd6ba2b5e1fE.exit.i.i.i.loopexit41"
  %.sroa.22.2.i.i.i = phi i32 [ %.sroa.22.1.i.i.i, %"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf2457cd6ba2b5e1fE.exit.i.i.i.loopexit" ], [ %.sroa.17.1.i.i.i, %"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf2457cd6ba2b5e1fE.exit.i.i.i.loopexit41" ], [ %.sroa.22.1.i.i.i, %bb.d ]
  %.sroa.17.2.i.i.i = phi i32 [ %.sroa.17.1.i.i.i, %"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf2457cd6ba2b5e1fE.exit.i.i.i.loopexit" ], [ %.sroa.10.1.i.i.i, %"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf2457cd6ba2b5e1fE.exit.i.i.i.loopexit41" ], [ %.sroa.22.1.i.i.i, %bb.d ]
  %.sroa.10.3.i.i.i = phi i32 [ 1114112, %"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf2457cd6ba2b5e1fE.exit.i.i.i.loopexit" ], [ 1114114, %"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf2457cd6ba2b5e1fE.exit.i.i.i.loopexit41" ], [ 1114113, %bb.d ]
  %.sroa.0.0.i.i.i.i = phi i32 [ %.sroa.17.1.i.i.i, %"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf2457cd6ba2b5e1fE.exit.i.i.i.loopexit" ], [ %.sroa.22.1.i.i.i, %"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf2457cd6ba2b5e1fE.exit.i.i.i.loopexit41" ], [ %.sroa.17.1.i.i.i, %bb.d ] ; 14 uses
  %.not.i.i.i = icmp eq i32 %.sroa.0.0.i.i.i.i, 1114112
  br i1 %.not.i.i.i, label %"_ZN71_$LT$unicase..unicode..Unicode$LT$S$GT$$u20$as$u20$core..hash..Hash$GT$4hash17hf97cc66a25f3b0faE.exit.i.i", label %bb.i

bb.i:                                             ; preds = %"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf2457cd6ba2b5e1fE.exit.i.i.i"
  %i.ba = icmp samesign ult i32 %.sroa.0.0.i.i.i.i, 128
  br i1 %i.ba, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bb = icmp samesign ult i32 %.sroa.0.0.i.i.i.i, 2048
  br i1 %i.bb, label %bb.m, label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.bc = trunc nuw nsw i32 %.sroa.0.0.i.i.i.i to i8
  store i8 %i.bc, ptr %i.c, align 4, !alias.scope !5984, !noalias !5980
  br label %_ZN7unicase7unicode12char_to_utf817h94ba0bbc3ad8ef76E.exit.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.bd = icmp samesign ult i32 %.sroa.0.0.i.i.i.i, 65536
  br i1 %i.bd, label %bb.o, label %bb.n

bb.m:                                             ; preds = %bb.j
  %i.be = lshr i32 %.sroa.0.0.i.i.i.i, 6
  %i.bf = trunc nuw nsw i32 %i.be to i8
  %i.bg = or disjoint i8 %i.bf, -64
  store i8 %i.bg, ptr %i.c, align 4, !alias.scope !5984, !noalias !5980
  %i.bh = trunc i32 %.sroa.0.0.i.i.i.i to i8
  %i.bi = and i8 %i.bh, 63
  %i.bj = or disjoint i8 %i.bi, -128
  store i8 %i.bj, ptr %i.o, align 1, !alias.scope !5984, !noalias !5980
  br label %_ZN7unicase7unicode12char_to_utf817h94ba0bbc3ad8ef76E.exit.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.bk = lshr i32 %.sroa.0.0.i.i.i.i, 18
  %2 = trunc nsw i32 %i.bk to i8
  %i.bl = lshr i32 %.sroa.0.0.i.i.i.i, 12
  %i.bm = trunc i32 %i.bl to i8
  %3 = lshr i32 %.sroa.0.0.i.i.i.i, 6
  %i.bn = trunc i32 %3 to i8
  %i.bo = trunc i32 %.sroa.0.0.i.i.i.i to i8
  %i.bp = insertelement <4 x i8> poison, i8 %2, i64 0
  %i.bq = insertelement <4 x i8> %i.bp, i8 %i.bm, i64 1
  %i.br = insertelement <4 x i8> %i.bq, i8 %i.bn, i64 2
  %i.bs = insertelement <4 x i8> %i.br, i8 %i.bo, i64 3
  %i.bt = and <4 x i8> %i.bs, <i8 -1, i8 63, i8 63, i8 63>
  %i.bu = or disjoint <4 x i8> %i.bt, <i8 -16, i8 -128, i8 -128, i8 -128>
  store <4 x i8> %i.bu, ptr %i.c, align 4, !alias.scope !5984, !noalias !5980
  br label %_ZN7unicase7unicode12char_to_utf817h94ba0bbc3ad8ef76E.exit.i.i.i

bb.o:                                             ; preds = %bb.l
  %i.bv = lshr i32 %.sroa.0.0.i.i.i.i, 12
  %i.bw = trunc nuw nsw i32 %i.bv to i8
  %i.bx = or disjoint i8 %i.bw, -32
  store i8 %i.bx, ptr %i.c, align 4, !alias.scope !5984, !noalias !5980
  %i.by = lshr i32 %.sroa.0.0.i.i.i.i, 6
  %i.bz = trunc i32 %i.by to i8
  %i.ca = and i8 %i.bz, 63
  %i.cb = or disjoint i8 %i.ca, -128
  store i8 %i.cb, ptr %i.o, align 1, !alias.scope !5984, !noalias !5980
  %i.cc = trunc i32 %.sroa.0.0.i.i.i.i to i8
  %i.cd = and i8 %i.cc, 63
  %i.ce = or disjoint i8 %i.cd, -128
  store i8 %i.ce, ptr %i.p, align 2, !alias.scope !5984, !noalias !5980
  br label %_ZN7unicase7unicode12char_to_utf817h94ba0bbc3ad8ef76E.exit.i.i.i

_ZN7unicase7unicode12char_to_utf817h94ba0bbc3ad8ef76E.exit.i.i.i: ; preds = %bb.o, %bb.n, %bb.m, %bb.k
  %.sroa.0.0.i10.i.i.i = phi i64 [ 1, %bb.k ], [ 2, %bb.m ], [ 3, %bb.o ], [ 4, %bb.n ]
  call fastcc void @"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17h85f1b490c2f52fbfE"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.d, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.c, i64 noundef %.sroa.0.0.i10.i.i.i), !noalias !5978
  br label %bb.c

"_ZN71_$LT$unicase..unicode..Unicode$LT$S$GT$$u20$as$u20$core..hash..Hash$GT$4hash17hf97cc66a25f3b0faE.exit.i.i": ; preds = %"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf2457cd6ba2b5e1fE.exit.i.i.i", %"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf2457cd6ba2b5e1fE.exit.thread.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !5980
  br label %"_ZN4core4hash5impls52_$LT$impl$u20$core..hash..Hash$u20$for$u20$$RF$T$GT$4hash17hf9e056deeb4327c4E.exit"

bb.p:                                             ; preds = %bb.a
  %i.cf = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.val1.i.i
  %i.cg = icmp samesign eq i64 %.val1.i.i, 0
  br i1 %i.cg, label %"_ZN4core4hash5impls52_$LT$impl$u20$core..hash..Hash$u20$for$u20$$RF$T$GT$4hash17hf9e056deeb4327c4E.exit", label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.p, %.lr.ph.i.i.i
  %.sroa.0.01.i.i.i = phi ptr [ %i.ch, %.lr.ph.i.i.i ], [ %.val.i.i, %bb.p ] ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i.i, i64 1 ; 2 uses
  %i.ci = load i8, ptr %.sroa.0.01.i.i.i, align 1, !noalias !5985, !noundef !10 ; 2 uses
  %i.cj = add i8 %i.ci, -65
  %i.ck = icmp ult i8 %i.cj, 26
  %i.cl = select i1 %i.ck, i8 32, i8 0
  %.sroa.05.0.i.i.i = or i8 %i.cl, %i.ci
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5986
  store i8 %.sroa.05.0.i.i.i, ptr %i.a, align 1, !noalias !5986
  call fastcc void @"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17h85f1b490c2f52fbfE"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.d, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.a, i64 noundef 1), !noalias !5978
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5986
  %i.cm = icmp eq ptr %i.ch, %i.cf
  br i1 %i.cm, label %"_ZN4core4hash5impls52_$LT$impl$u20$core..hash..Hash$u20$for$u20$$RF$T$GT$4hash17hf9e056deeb4327c4E.exit", label %.lr.ph.i.i.i

"_ZN4core4hash5impls52_$LT$impl$u20$core..hash..Hash$u20$for$u20$$RF$T$GT$4hash17hf9e056deeb4327c4E.exit": ; preds = %.lr.ph.i.i.i, %"_ZN71_$LT$unicase..unicode..Unicode$LT$S$GT$$u20$as$u20$core..hash..Hash$GT$4hash17hf97cc66a25f3b0faE.exit.i.i", %bb.p
  %.sroa.610.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.d, align 16, !alias.scope !5987
  %.sroa.10.0.copyload.i.i = load i64, ptr %.sroa.48.0..sroa_idx.i, align 8, !alias.scope !5987
  %.sroa.17.0.copyload.i.i = load i64, ptr %.sroa.59.0..sroa_idx.i, align 16, !alias.scope !5987 ; 3 uses
  %.sroa.22.0.copyload.i.i = load i64, ptr %.sroa.610.0..sroa_idx.i, align 8, !alias.scope !5987
  %i.cn = load i64, ptr %.sroa.913.0..sroa_idx.i, align 16, !alias.scope !5987, !noundef !10
  %i.co = shl i64 %i.cn, 56
  %i.cp = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.cq = load i64, ptr %i.cp, align 8, !alias.scope !5987, !noundef !10
  %i.cr = or i64 %i.co, %i.cq                     ; 2 uses
  %i.cs = xor i64 %i.cr, %.sroa.22.0.copyload.i.i ; 3 uses
  %i.ct = add i64 %.sroa.17.0.copyload.i.i, %.sroa.0.0.copyload.i.i ; 3 uses
  %i.cu = add i64 %i.cs, %.sroa.10.0.copyload.i.i ; 2 uses
  %i.cv = call i64 @llvm.fshl.i64(i64 %.sroa.17.0.copyload.i.i, i64 %.sroa.17.0.copyload.i.i, i64 13)
  %i.cw = xor i64 %i.cv, %i.ct                    ; 3 uses
  %i.cx = call i64 @llvm.fshl.i64(i64 %i.cs, i64 %i.cs, i64 16)
  %i.cy = xor i64 %i.cx, %i.cu                    ; 3 uses
  %i.cz = call i64 @llvm.fshl.i64(i64 %i.ct, i64 %i.ct, i64 32)
  %i.da = add i64 %i.cu, %i.cw                    ; 3 uses
  %i.db = add i64 %i.cy, %i.cz                    ; 2 uses
  %i.dc = call i64 @llvm.fshl.i64(i64 %i.cw, i64 %i.cw, i64 17)
  %i.dd = xor i64 %i.da, %i.dc                    ; 3 uses
  %i.de = call i64 @llvm.fshl.i64(i64 %i.cy, i64 %i.cy, i64 21)
  %i.df = xor i64 %i.de, %i.db                    ; 3 uses
  %i.dg = call i64 @llvm.fshl.i64(i64 %i.da, i64 %i.da, i64 32)
  %i.dh = xor i64 %i.db, %i.cr
  %i.di = xor i64 %i.dg, 255
  %i.dj = add i64 %i.dh, %i.dd                    ; 3 uses
  %i.dk = add i64 %i.df, %i.di                    ; 2 uses
  %i.dl = call i64 @llvm.fshl.i64(i64 %i.dd, i64 %i.dd, i64 13)
  %i.dm = xor i64 %i.dj, %i.dl                    ; 3 uses
  %i.dn = call i64 @llvm.fshl.i64(i64 %i.df, i64 %i.df, i64 16)
  %i.do = xor i64 %i.dn, %i.dk                    ; 3 uses
  %i.dp = call i64 @llvm.fshl.i64(i64 %i.dj, i64 %i.dj, i64 32)
  %i.dq = add i64 %i.dm, %i.dk                    ; 3 uses
  %i.dr = add i64 %i.do, %i.dp                    ; 2 uses
  %i.ds = call i64 @llvm.fshl.i64(i64 %i.dm, i64 %i.dm, i64 17)
  %i.dt = xor i64 %i.dq, %i.ds                    ; 3 uses
  %i.du = call i64 @llvm.fshl.i64(i64 %i.do, i64 %i.do, i64 21)
  %i.dv = xor i64 %i.du, %i.dr                    ; 3 uses
  %i.dw = call i64 @llvm.fshl.i64(i64 %i.dq, i64 %i.dq, i64 32)
  %i.dx = add i64 %i.dt, %i.dr                    ; 3 uses
  %i.dy = add i64 %i.dv, %i.dw                    ; 2 uses
  %i.dz = call i64 @llvm.fshl.i64(i64 %i.dt, i64 %i.dt, i64 13)
  %i.ea = xor i64 %i.dz, %i.dx                    ; 3 uses
  %i.eb = call i64 @llvm.fshl.i64(i64 %i.dv, i64 %i.dv, i64 16)
  %i.ec = xor i64 %i.eb, %i.dy                    ; 3 uses
  %i.ed = call i64 @llvm.fshl.i64(i64 %i.dx, i64 %i.dx, i64 32)
  %i.ee = add i64 %i.ea, %i.dy                    ; 3 uses
  %i.ef = add i64 %i.ec, %i.ed                    ; 2 uses
  %i.eg = call i64 @llvm.fshl.i64(i64 %i.ea, i64 %i.ea, i64 17)
  %i.eh = xor i64 %i.eg, %i.ee                    ; 3 uses
  %i.ei = call i64 @llvm.fshl.i64(i64 %i.ec, i64 %i.ec, i64 21)
  %i.ej = xor i64 %i.ei, %i.ef                    ; 3 uses
  %i.ek = call i64 @llvm.fshl.i64(i64 %i.ee, i64 %i.ee, i64 32)
  %i.el = add i64 %i.eh, %i.ef
  %i.em = add i64 %i.ej, %i.ek                    ; 2 uses
  %i.en = call i64 @llvm.fshl.i64(i64 %i.eh, i64 %i.eh, i64 13)
  %i.eo = xor i64 %i.en, %i.el                    ; 3 uses
  %i.ep = call i64 @llvm.fshl.i64(i64 %i.ej, i64 %i.ej, i64 16)
  %i.eq = xor i64 %i.ep, %i.em                    ; 2 uses
  %i.er = add i64 %i.eo, %i.em                    ; 3 uses
  %i.es = call i64 @llvm.fshl.i64(i64 %i.eo, i64 %i.eo, i64 17)
  %i.et = call i64 @llvm.fshl.i64(i64 %i.eq, i64 %i.eq, i64 21)
  %i.eu = call i64 @llvm.fshl.i64(i64 %i.er, i64 %i.er, i64 32)
  %i.ev = xor i64 %i.et, %i.es
  %i.ew = xor i64 %i.ev, %i.eu
  %i.ex = xor i64 %i.ew, %i.er
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret i64 %i.ex
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable
define hidden noundef i64 @_ZN4core4hash11BuildHasher8hash_one17h32be6b2309887a09E(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #14 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [72 x i8], align 16               ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.59.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %.sroa.610.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.711.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.d = load <2 x i64>, ptr %0, align 8          ; 3 uses
  %i.e = shufflevector <2 x i64> %i.d, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.f = xor <2 x i64> %i.e, <i64 8317987319222330741, i64 7816392313619706465>
  store <2 x i64> %i.f, ptr %i.c, align 16, !alias.scope !6010
  %i.g = shufflevector <2 x i64> %i.d, <2 x i64> poison, <2 x i32> <i32 1, i32 1>
  %i.h = xor <2 x i64> %i.g, <i64 7237128888997146477, i64 8387220255154660723>
  store <2 x i64> %i.h, ptr %.sroa.59.0..sroa_idx.i, align 16, !alias.scope !6010
  store <2 x i64> %i.d, ptr %.sroa.711.0..sroa_idx.i, align 16, !alias.scope !6010
  %.sroa.913.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.913.0..sroa_idx.i, i8 0, i64 24, i1 false), !alias.scope !6010
  %.val.i = load i64, ptr %1, align 8, !noalias !6011, !noundef !10
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1.i = load i64, ptr %i.i, align 8, !noalias !6011
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6012
  store i64 %.val.i, ptr %i.b, align 8, !noalias !6012
  call fastcc void @"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17h85f1b490c2f52fbfE"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.c, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.b, i64 noundef 8)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6012
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6013
  store i64 %.val1.i, ptr %i.a, align 8, !noalias !6013
  call fastcc void @"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17h85f1b490c2f52fbfE"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.c, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.a, i64 noundef 8)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6013
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.c, align 16, !alias.scope !6014
  %.sroa.10.0.copyload.i.i = load i64, ptr %.sroa.48.0..sroa_idx.i, align 8, !alias.scope !6014
  %.sroa.17.0.copyload.i.i = load i64, ptr %.sroa.59.0..sroa_idx.i, align 16, !alias.scope !6014 ; 3 uses
  %.sroa.22.0.copyload.i.i = load i64, ptr %.sroa.610.0..sroa_idx.i, align 8, !alias.scope !6014
  %i.j = load i64, ptr %.sroa.913.0..sroa_idx.i, align 16, !alias.scope !6014, !noundef !10
  %i.k = shl i64 %i.j, 56
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.m = load i64, ptr %i.l, align 8, !alias.scope !6014, !noundef !10
  %i.n = or i64 %i.k, %i.m                        ; 2 uses
  %i.o = xor i64 %i.n, %.sroa.22.0.copyload.i.i   ; 3 uses
  %i.p = add i64 %.sroa.17.0.copyload.i.i, %.sroa.0.0.copyload.i.i ; 3 uses
  %i.q = add i64 %i.o, %.sroa.10.0.copyload.i.i   ; 2 uses
  %i.r = tail call i64 @llvm.fshl.i64(i64 %.sroa.17.0.copyload.i.i, i64 %.sroa.17.0.copyload.i.i, i64 13)
  %i.s = xor i64 %i.r, %i.p                       ; 3 uses
  %i.t = tail call i64 @llvm.fshl.i64(i64 %i.o, i64 %i.o, i64 16)
  %i.u = xor i64 %i.t, %i.q                       ; 3 uses
  %i.v = tail call i64 @llvm.fshl.i64(i64 %i.p, i64 %i.p, i64 32)
  %i.w = add i64 %i.q, %i.s                       ; 3 uses
  %i.x = add i64 %i.u, %i.v                       ; 2 uses
  %i.y = tail call i64 @llvm.fshl.i64(i64 %i.s, i64 %i.s, i64 17)
  %i.z = xor i64 %i.w, %i.y                       ; 3 uses
  %i.aa = tail call i64 @llvm.fshl.i64(i64 %i.u, i64 %i.u, i64 21)
  %i.ab = xor i64 %i.aa, %i.x                     ; 3 uses
  %i.ac = tail call i64 @llvm.fshl.i64(i64 %i.w, i64 %i.w, i64 32)
  %i.ad = xor i64 %i.x, %i.n
  %i.ae = xor i64 %i.ac, 255
  %i.af = add i64 %i.ad, %i.z                     ; 3 uses
  %i.ag = add i64 %i.ab, %i.ae                    ; 2 uses
  %i.ah = tail call i64 @llvm.fshl.i64(i64 %i.z, i64 %i.z, i64 13)
  %i.ai = xor i64 %i.af, %i.ah                    ; 3 uses
  %i.aj = tail call i64 @llvm.fshl.i64(i64 %i.ab, i64 %i.ab, i64 16)
  %i.ak = xor i64 %i.aj, %i.ag                    ; 3 uses
  %i.al = tail call i64 @llvm.fshl.i64(i64 %i.af, i64 %i.af, i64 32)
  %i.am = add i64 %i.ai, %i.ag                    ; 3 uses
  %i.an = add i64 %i.ak, %i.al                    ; 2 uses
  %i.ao = tail call i64 @llvm.fshl.i64(i64 %i.ai, i64 %i.ai, i64 17)
  %i.ap = xor i64 %i.am, %i.ao                    ; 3 uses
  %i.aq = tail call i64 @llvm.fshl.i64(i64 %i.ak, i64 %i.ak, i64 21)
  %i.ar = xor i64 %i.aq, %i.an                    ; 3 uses
  %i.as = tail call i64 @llvm.fshl.i64(i64 %i.am, i64 %i.am, i64 32)
  %i.at = add i64 %i.ap, %i.an                    ; 3 uses
  %i.au = add i64 %i.ar, %i.as                    ; 2 uses
  %i.av = tail call i64 @llvm.fshl.i64(i64 %i.ap, i64 %i.ap, i64 13)
  %i.aw = xor i64 %i.av, %i.at                    ; 3 uses
end_hunk_1
