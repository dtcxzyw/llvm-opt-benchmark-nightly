Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/anki-0407df152365de94.anki.49bf70e6e198d769-cgu.13?download=true
inline.NumInlined: 5550
inline.NumDeleted: 2375
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN4anki13import_export6gather12ExchangeData11gather_data17h033ea4702b5b270fE:bb.a
bb.l:                                             ; preds = %bb.bg, %bb.be, %"_ZN4core3ptr61drop_in_place$LT$alloc..vec..Vec$LT$anki..notes..Note$GT$$GT$17h7d33d9e13c7cded0E.exit"
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr49drop_in_place$LT$anki..search..CardTableGuard$GT$17h48132a332fdeb5a2E.exit"

bb.m:                                             ; preds = %"_ZN4core3ptr61drop_in_place$LT$alloc..vec..Vec$LT$anki..notes..Note$GT$$GT$17h7d33d9e13c7cded0E.exit"
  %i.ae = load i64, ptr %i.g, align 8, !range !62, !noundef !25 ; 2 uses
  %.not178 = icmp eq i64 %i.ae, -9223372036854775773
  %i.af = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.629, ptr noundef nonnull align 8 dereferenceable(24) %i.af, i64 24, i1 false)
  %.sroa.5123.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %.sroa.5123.0.copyload = load ptr, ptr %.sroa.5123.0..sroa_idx, align 8 ; 2 uses
  %.sroa.6124.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %.sroa.6124.0.copyload = load i64, ptr %.sroa.6124.0..sroa_idx, align 8 ; 2 uses
  br i1 %.not178, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.sroa.8134.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %.sroa.5139.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5139.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.8134.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %.sroa.2136.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2136.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.629, i64 24, i1 false)
  store i64 %i.ae, ptr %0, align 8
  %.sroa.3137.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sroa.5123.0.copyload, ptr %.sroa.3137.0..sroa_idx, align 8
  %.sroa.4138.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.6124.0.copyload, ptr %.sroa.4138.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.629)
  br label %"_ZN4core3ptr49drop_in_place$LT$anki..search..NoteTableGuard$GT$17he1811a7c5d4dc87bE.exit198"

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.629, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr %.sroa.5123.0.copyload, ptr %i.h, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %.sroa.6124.0.copyload, ptr %i.ag, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.629)
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 5 uses
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3f7d23b809bd1961E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ah)
          to label %bb.q unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ai = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hfda6a07db5a1c461E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ah)
          to label %.body189 unwind label %bb.r

bb.q:                                             ; preds = %bb.o
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hfda6a07db5a1c461E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ah)
          to label %"_ZN4core3ptr60drop_in_place$LT$alloc..vec..Vec$LT$anki..card..Card$GT$$GT$17ha4317dec3b4de08eE.exit" unwind label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #41
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %.body189

.body189:                                         ; preds = %bb.p, %bb.s
  %eh.lpad-body190 = phi { ptr, i32 } [ %i.ak, %bb.s ], [ %i.ai, %bb.p ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  br label %bb.t

"_ZN4core3ptr60drop_in_place$LT$alloc..vec..Vec$LT$anki..card..Card$GT$$GT$17ha4317dec3b4de08eE.exit": ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.al = load ptr, ptr %i.h, align 8, !nonnull !25, !align !26, !noundef !25
  %i.am = xor i1 %4, true                         ; 2 uses
  invoke void @"_ZN4anki13import_export6gather46_$LT$impl$u20$anki..collection..Collection$GT$12gather_decks17h5833d7f26f536cc7E"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(728) %i.al, i1 noundef zeroext %4, i1 noundef zeroext %i.am)
          to label %bb.v unwind label %bb.u

bb.t:                                             ; preds = %bb.bb, %bb.at, %.body193, %.body191, %bb.u, %.body189
  %.pn = phi { ptr, i32 } [ %i.an, %bb.u ], [ %i.cr, %bb.bb ], [ %i.ch, %bb.at ], [ %eh.lpad-body194, %.body193 ], [ %eh.lpad-body192, %.body191 ], [ %eh.lpad-body190, %.body189 ]
  invoke void @"_ZN70_$LT$anki..search..CardTableGuard$u20$as$u20$core..ops..drop..Drop$GT$4drop17h9a5d8ba3c89d3888E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.h)
          to label %"_ZN4core3ptr49drop_in_place$LT$anki..search..CardTableGuard$GT$17h48132a332fdeb5a2E.exit" unwind label %bb.bh

bb.u:                                             ; preds = %bb.bd, %bb.ax, %bb.aw, %bb.ao, %bb.an, %"_ZN4core3ptr61drop_in_place$LT$alloc..vec..Vec$LT$anki..decks..Deck$GT$$GT$17hb1f6e273cb9cf4fcE.exit", %"_ZN4core3ptr60drop_in_place$LT$alloc..vec..Vec$LT$anki..card..Card$GT$$GT$17ha4317dec3b4de08eE.exit"
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.v:                                             ; preds = %"_ZN4core3ptr60drop_in_place$LT$alloc..vec..Vec$LT$anki..card..Card$GT$$GT$17ha4317dec3b4de08eE.exit"
  %i.ao = load i64, ptr %i.f, align 8, !range !62, !noundef !25 ; 2 uses
  %.not179 = icmp eq i64 %i.ao, -9223372036854775773
  %i.ap = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.646, ptr noundef nonnull align 8 dereferenceable(24) %i.ap, i64 24, i1 false)
  br i1 %.not179, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.sroa.6145.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %.sroa.3148.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.3148.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.6145.0..sroa_idx, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.bg

bb.x:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h12c088f0ad43116eE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.z unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.aq = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb31842cba13afc6bE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %.body191 unwind label %bb.aa

bb.z:                                             ; preds = %bb.x
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb31842cba13afc6bE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %"_ZN4core3ptr61drop_in_place$LT$alloc..vec..Vec$LT$anki..decks..Deck$GT$$GT$17hb1f6e273cb9cf4fcE.exit" unwind label %bb.ab

bb.aa:                                            ; preds = %bb.y
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #41
  unreachable

bb.ab:                                            ; preds = %bb.z
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %.body191

.body191:                                         ; preds = %bb.y, %bb.ab
  %eh.lpad-body192 = phi { ptr, i32 } [ %i.as, %bb.ab ], [ %i.aq, %bb.y ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.646, i64 24, i1 false)
  br label %bb.t

"_ZN4core3ptr61drop_in_place$LT$alloc..vec..Vec$LT$anki..decks..Deck$GT$$GT$17hb1f6e273cb9cf4fcE.exit": ; preds = %bb.z
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.646, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.at = load ptr, ptr %i.h, align 8, !nonnull !25, !align !26, !noundef !25
  invoke void @"_ZN4anki13import_export6gather46_$LT$impl$u20$anki..collection..Collection$GT$16gather_notetypes17h407639f69efc4e87E"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(728) %i.at)
          to label %bb.ac unwind label %bb.u

bb.ac:                                            ; preds = %"_ZN4core3ptr61drop_in_place$LT$alloc..vec..Vec$LT$anki..decks..Deck$GT$$GT$17hb1f6e273cb9cf4fcE.exit"
  %i.au = load i64, ptr %i.e, align 8, !range !62, !noundef !25 ; 2 uses
  %.not180 = icmp eq i64 %i.au, -9223372036854775773
  %i.av = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.655, ptr noundef nonnull align 8 dereferenceable(24) %i.av, i64 24, i1 false)
  br i1 %.not180, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %.sroa.6154.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.sroa.3157.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.3157.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.6154.0..sroa_idx, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.bg

bb.ae:                                            ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 5 uses
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h62a3cebbd3ceb12cE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aw)
          to label %bb.ag unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ax = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h506f2c2f3bf27ce8E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aw)
          to label %.body193 unwind label %bb.ah

bb.ag:                                            ; preds = %bb.ae
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h506f2c2f3bf27ce8E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aw)
          to label %"_ZN4core3ptr68drop_in_place$LT$alloc..vec..Vec$LT$anki..notetype..Notetype$GT$$GT$17h45753bd07fd3d3c5E.exit" unwind label %bb.ai

bb.ah:                                            ; preds = %bb.af
  %i.ay = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #41
  unreachable

bb.ai:                                            ; preds = %bb.ag
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %.body193

.body193:                                         ; preds = %bb.af, %bb.ai
  %eh.lpad-body194 = phi { ptr, i32 } [ %i.az, %bb.ai ], [ %i.ax, %bb.af ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aw, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.655, i64 24, i1 false)
  br label %bb.t

"_ZN4core3ptr68drop_in_place$LT$alloc..vec..Vec$LT$anki..notetype..Notetype$GT$$GT$17h45753bd07fd3d3c5E.exit": ; preds = %bb.ag
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aw, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.655, i64 24, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !2086)
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bb = load ptr, ptr %i.ba, align 8, !alias.scope !2086, !nonnull !25, !noundef !25 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.bd = load i64, ptr %i.bc, align 8, !alias.scope !2086, !noundef !25 ; 2 uses
  %.idx.i = mul nuw nsw i64 %i.bd, 152
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 %.idx.i
  call void @llvm.experimental.noalias.scope.decl(metadata !2087)
  %i.bf = icmp eq i64 %i.bd, 0
  br i1 %i.bf, label %_ZN4anki13import_export6gather12ExchangeData22enables_filtered_decks17he65a27556f0b3f73E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %"_ZN4core3ptr68drop_in_place$LT$alloc..vec..Vec$LT$anki..notetype..Notetype$GT$$GT$17h45753bd07fd3d3c5E.exit"
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i.i.i = load ptr, ptr %i.bg, align 8, !alias.scope !2088 ; 5 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val1.i.i.i = load i64, ptr %i.bh, align 8, !alias.scope !2088 ; 3 uses
  %.idx = mul nuw nsw i64 %.val1.i.i.i, 192
  %i.bi = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %.idx ; 2 uses
  %i.bj = icmp eq i64 %.val1.i.i.i, 0
  %.not.not.not.i.not.not.i.not.i.i.i225 = icmp eq i64 %.val1.i.i.i, 0
  br label %bb.aj

bb.aj:                                            ; preds = %"_ZN4anki13import_export6gather12ExchangeData22enables_filtered_decks28_$u7b$$u7b$closure$u7d$$u7d$17h2a5276434dbcdd22E.exit.i.i", %.lr.ph.i.i
  %i.bk = phi ptr [ %i.bb, %.lr.ph.i.i ], [ %i.bl, %"_ZN4anki13import_export6gather12ExchangeData22enables_filtered_decks28_$u7b$$u7b$closure$u7d$$u7d$17h2a5276434dbcdd22E.exit.i.i" ] ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 152 ; 2 uses
  %i.bm = getelementptr i8, ptr %i.bk, i64 80
  %.val3.i.i = load i64, ptr %i.bm, align 8, !noalias !2089
  %i.bn = getelementptr i8, ptr %i.bk, i64 96
  %.val4.i.i = load i64, ptr %i.bn, align 8, !noalias !2089, !noundef !25 ; 2 uses
  switch i64 %.val4.i.i, label %_ZN4anki13import_export6gather12ExchangeData28card_and_its_deck_are_normal17h3df2acf79e38c30cE.exit.thread.i.i.i [
    i64 0, label %bb.ak
    i64 1, label %"_ZN4anki13import_export6gather12ExchangeData22enables_filtered_decks28_$u7b$$u7b$closure$u7d$$u7d$17h2a5276434dbcdd22E.exit.i.i"
  ]

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i) ]
  br i1 %i.bj, label %_ZN4anki13import_export6gather12ExchangeData28card_and_its_deck_are_normal17h3df2acf79e38c30cE.exit.thread.i.i.i, label %.lr.ph

bb.al:                                            ; preds = %.lr.ph
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bq, i64 192 ; 2 uses
  %i.bp = icmp eq ptr %i.bo, %i.bi
  br i1 %i.bp, label %_ZN4anki13import_export6gather12ExchangeData28card_and_its_deck_are_normal17h3df2acf79e38c30cE.exit.thread.i.i.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ak, %bb.al
  %i.bq = phi ptr [ %i.bo, %bb.al ], [ %.val.i.i.i, %bb.ak ] ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 168
  %i.bs = load i64, ptr %i.br, align 8, !noalias !2090, !noundef !25
  %i.bt = icmp eq i64 %i.bs, %.val3.i.i
  br i1 %i.bt, label %_ZN4anki13import_export6gather12ExchangeData28card_and_its_deck_are_normal17h3df2acf79e38c30cE.exit.i.i.i, label %bb.al

_ZN4anki13import_export6gather12ExchangeData28card_and_its_deck_are_normal17h3df2acf79e38c30cE.exit.i.i.i: ; preds = %.lr.ph
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bq, i64 72
  %i.bv = load i64, ptr %i.bu, align 8, !range !44, !noalias !2089, !noundef !25
  %.not.i.i.i = icmp eq i64 %i.bv, -9223372036854775808
  br i1 %.not.i.i.i, label %_ZN4anki13import_export6gather12ExchangeData28card_and_its_deck_are_normal17h3df2acf79e38c30cE.exit.thread.i.i.i, label %"_ZN4anki13import_export6gather12ExchangeData22enables_filtered_decks28_$u7b$$u7b$closure$u7d$$u7d$17h2a5276434dbcdd22E.exit.i.i"

_ZN4anki13import_export6gather12ExchangeData28card_and_its_deck_are_normal17h3df2acf79e38c30cE.exit.thread.i.i.i: ; preds = %bb.al, %bb.ak, %_ZN4anki13import_export6gather12ExchangeData28card_and_its_deck_are_normal17h3df2acf79e38c30cE.exit.i.i.i, %bb.aj
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i) ]
  br i1 %.not.not.not.i.not.not.i.not.i.i.i225, label %_ZN4anki13import_export6gather12ExchangeData22enables_filtered_decks17he65a27556f0b3f73E.exit, label %.lr.ph226

bb.am:                                            ; preds = %.lr.ph226
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bx, i64 192 ; 2 uses
  %.not.not.not.i.not.not.i.not.i.i.i = icmp eq ptr %i.bw, %i.bi
  br i1 %.not.not.not.i.not.not.i.not.i.i.i, label %_ZN4anki13import_export6gather12ExchangeData22enables_filtered_decks17he65a27556f0b3f73E.exit, label %.lr.ph226

.lr.ph226:                                        ; preds = %_ZN4anki13import_export6gather12ExchangeData28card_and_its_deck_are_normal17h3df2acf79e38c30cE.exit.thread.i.i.i, %bb.am
  %i.bx = phi ptr [ %i.bw, %bb.am ], [ %.val.i.i.i, %_ZN4anki13import_export6gather12ExchangeData28card_and_its_deck_are_normal17h3df2acf79e38c30cE.exit.thread.i.i.i ] ; 2 uses
  %i.by = getelementptr i8, ptr %i.bx, i64 168
  %.val3.i.i.i.i.i = load i64, ptr %i.by, align 8, !noalias !2091, !noundef !25
  %i.bz = icmp eq i64 %.val3.i.i.i.i.i, %.val4.i.i
  br i1 %i.bz, label %"_ZN4anki13import_export6gather12ExchangeData22enables_filtered_decks28_$u7b$$u7b$closure$u7d$$u7d$17h2a5276434dbcdd22E.exit.i.i", label %bb.am

"_ZN4anki13import_export6gather12ExchangeData22enables_filtered_decks28_$u7b$$u7b$closure$u7d$$u7d$17h2a5276434dbcdd22E.exit.i.i": ; preds = %.lr.ph226, %_ZN4anki13import_export6gather12ExchangeData28card_and_its_deck_are_normal17h3df2acf79e38c30cE.exit.i.i.i, %bb.aj
  %i.ca = icmp eq ptr %i.bl, %i.be
  br i1 %i.ca, label %_ZN4anki13import_export6gather12ExchangeData22enables_filtered_decks17he65a27556f0b3f73E.exit, label %bb.aj

_ZN4anki13import_export6gather12ExchangeData22enables_filtered_decks17he65a27556f0b3f73E.exit: ; preds = %"_ZN4anki13import_export6gather12ExchangeData22enables_filtered_decks28_$u7b$$u7b$closure$u7d$$u7d$17h2a5276434dbcdd22E.exit.i.i", %_ZN4anki13import_export6gather12ExchangeData28card_and_its_deck_are_normal17h3df2acf79e38c30cE.exit.thread.i.i.i, %bb.am, %"_ZN4core3ptr68drop_in_place$LT$alloc..vec..Vec$LT$anki..notetype..Notetype$GT$$GT$17h45753bd07fd3d3c5E.exit"
  %i.cb = phi i1 [ true, %"_ZN4core3ptr68drop_in_place$LT$alloc..vec..Vec$LT$anki..notetype..Notetype$GT$$GT$17h45753bd07fd3d3c5E.exit" ], [ false, %bb.am ], [ true, %"_ZN4anki13import_export6gather12ExchangeData22enables_filtered_decks28_$u7b$$u7b$closure$u7d$$u7d$17h2a5276434dbcdd22E.exit.i.i" ], [ false, %_ZN4anki13import_export6gather12ExchangeData28card_and_its_deck_are_normal17h3df2acf79e38c30cE.exit.thread.i.i.i ] ; 2 uses
  br i1 %4, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %_ZN4anki13import_export6gather12ExchangeData22enables_filtered_decks17he65a27556f0b3f73E.exit
  %i.cc = load ptr, ptr %i.h, align 8, !nonnull !25, !align !26, !noundef !25
  invoke void @_ZN4anki13import_export6gather12ExchangeData21reset_cards_and_notes17h3fc2d15d63e36e25E(ptr noalias noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 %i.cc)
          to label %bb.ap unwind label %bb.u

bb.ao:                                            ; preds = %_ZN4anki13import_export6gather12ExchangeData22enables_filtered_decks17he65a27556f0b3f73E.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.cd = load ptr, ptr %i.h, align 8, !nonnull !25, !align !26, !noundef !25
  invoke void @"_ZN4anki13import_export6gather46_$LT$impl$u20$anki..collection..Collection$GT$13gather_revlog17hff4bf714507717ecE"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(728) %i.cd)
          to label %bb.aq unwind label %bb.u

bb.ap:                                            ; preds = %bb.av, %bb.an, %bb.au
  br i1 %5, label %bb.ax, label %bb.aw

bb.aq:                                            ; preds = %bb.ao
  %i.ce = load i64, ptr %i.d, align 8, !range !62, !noundef !25 ; 2 uses
  %.not181 = icmp eq i64 %i.ce, -9223372036854775773
  %i.cf = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.664, ptr noundef nonnull align 8 dereferenceable(24) %i.cf, i64 24, i1 false)
  br i1 %.not181, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %.sroa.6163.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.sroa.3166.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.3166.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.6163.0..sroa_idx, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.bg

bb.as:                                            ; preds = %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 3 uses
  invoke fastcc void @"_ZN4core3ptr69drop_in_place$LT$alloc..vec..Vec$LT$anki..revlog..RevlogEntry$GT$$GT$17hc5ecab00a88ddd35E"(ptr noalias noundef align 8 dereferenceable(24) %i.cg)
          to label %bb.au unwind label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ch = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cg, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.664, i64 24, i1 false)
  br label %bb.t

bb.au:                                            ; preds = %bb.as
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cg, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.664, i64 24, i1 false)
  br i1 %i.cb, label %bb.ap, label %bb.av

bb.av:                                            ; preds = %bb.au
  call void @_ZN4anki13import_export6gather12ExchangeData33restore_cards_from_filtered_decks17ha89742c95222e3b5E(ptr noalias noundef nonnull align 8 dereferenceable(208) %1)
  br label %bb.ap

bb.aw:                                            ; preds = %bb.bc, %bb.ap
  %i.ci = xor i1 %5, true
  invoke void @_ZN4anki13import_export6gather12ExchangeData11reset_decks17hd768c8a4d88a7ceeE(ptr noalias noundef nonnull align 8 dereferenceable(208) %1, i1 noundef zeroext %i.ci, i1 noundef zeroext %i.am, i1 noundef zeroext %i.cb)
          to label %bb.bd unwind label %bb.u

bb.ax:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.cj = load ptr, ptr %i.h, align 8, !nonnull !25, !align !26, !noundef !25
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8, !nonnull !25, !noundef !25
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cn = load i64, ptr %i.cm, align 8, !noundef !25
  invoke void @"_ZN4anki13import_export6gather46_$LT$impl$u20$anki..collection..Collection$GT$19gather_deck_configs17h5b24228af4f8786cE"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(728) %i.cj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.cl, i64 noundef %i.cn, i1 noundef zeroext %4)
          to label %bb.ay unwind label %bb.u

bb.ay:                                            ; preds = %bb.ax
  %i.co = load i64, ptr %i.c, align 8, !range !62, !noundef !25 ; 2 uses
  %.not182 = icmp eq i64 %i.co, -9223372036854775773
  %i.cp = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(24) %i.cp, i64 24, i1 false)
  br i1 %.not182, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %.sroa.5172.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.3175.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.3175.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.5172.0..sroa_idx, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.bg

bb.ba:                                            ; preds = %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 3 uses
  invoke fastcc void @"_ZN4core3ptr72drop_in_place$LT$alloc..vec..Vec$LT$anki..deckconfig..DeckConfig$GT$$GT$17hbdcae7ede4179255E"(ptr noalias noundef align 8 dereferenceable(24) %i.cq)
          to label %bb.bc unwind label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.cr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cq, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7, i64 24, i1 false)
  br label %bb.t

bb.bc:                                            ; preds = %bb.ba
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cq, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7, i64 24, i1 false)
  br label %bb.aw

bb.bd:                                            ; preds = %bb.aw
  invoke void @_ZN4anki13import_export6gather12ExchangeData9check_ids17h18fac36d207fc177E(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(208) %1)
          to label %bb.be unwind label %bb.u

bb.be:                                            ; preds = %bb.bd
  invoke void @"_ZN70_$LT$anki..search..CardTableGuard$u20$as$u20$core..ops..drop..Drop$GT$4drop17h9a5d8ba3c89d3888E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.h)
          to label %"_ZN4core3ptr49drop_in_place$LT$anki..search..CardTableGuard$GT$17h48132a332fdeb5a2E.exit195" unwind label %bb.l

"_ZN4core3ptr49drop_in_place$LT$anki..search..CardTableGuard$GT$17h48132a332fdeb5a2E.exit195": ; preds = %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @"_ZN70_$LT$anki..search..NoteTableGuard$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4dc951a98e4344d9E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.bf

bb.bf:                                            ; preds = %"_ZN4core3ptr49drop_in_place$LT$anki..search..NoteTableGuard$GT$17he1811a7c5d4dc87bE.exit198", %bb.c, %"_ZN4core3ptr49drop_in_place$LT$anki..search..CardTableGuard$GT$17h48132a332fdeb5a2E.exit195", %bb.f
  ret void

bb.bg:                                            ; preds = %bb.az, %bb.ar, %bb.ad, %bb.w
  %.sroa.7.sink = phi ptr [ %.sroa.7, %bb.az ], [ %.sroa.664, %bb.ar ], [ %.sroa.655, %bb.ad ], [ %.sroa.646, %bb.w ]
  %.sink = phi i64 [ %i.co, %bb.az ], [ %i.ce, %bb.ar ], [ %i.au, %bb.ad ], [ %i.ao, %bb.w ]
  %.sroa.2174.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2174.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.sink, i64 24, i1 false)
  store i64 %.sink, ptr %0, align 8
  invoke void @"_ZN70_$LT$anki..search..CardTableGuard$u20$as$u20$core..ops..drop..Drop$GT$4drop17h9a5d8ba3c89d3888E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.h)
          to label %"_ZN4core3ptr49drop_in_place$LT$anki..search..CardTableGuard$GT$17h48132a332fdeb5a2E.exit197" unwind label %bb.l

"_ZN4core3ptr49drop_in_place$LT$anki..search..CardTableGuard$GT$17h48132a332fdeb5a2E.exit197": ; preds = %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %"_ZN4core3ptr49drop_in_place$LT$anki..search..NoteTableGuard$GT$17he1811a7c5d4dc87bE.exit198"

"_ZN4core3ptr49drop_in_place$LT$anki..search..NoteTableGuard$GT$17he1811a7c5d4dc87bE.exit198": ; preds = %"_ZN4core3ptr49drop_in_place$LT$anki..search..CardTableGuard$GT$17h48132a332fdeb5a2E.exit197", %bb.n
  call void @"_ZN70_$LT$anki..search..NoteTableGuard$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4dc951a98e4344d9E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.bf

bb.bh:                                            ; preds = %bb.t, %"_ZN4core3ptr49drop_in_place$LT$anki..search..CardTableGuard$GT$17h48132a332fdeb5a2E.exit", %bb.bi
  %i.cs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #41
  unreachable

.thread:                                          ; preds = %"_ZN4core3ptr49drop_in_place$LT$anki..search..CardTableGuard$GT$17h48132a332fdeb5a2E.exit", %bb.bi
  %.pn187201 = phi { ptr, i32 } [ %.pn185, %"_ZN4core3ptr49drop_in_place$LT$anki..search..CardTableGuard$GT$17h48132a332fdeb5a2E.exit" ], [ %lpad.thr_comm.split-lp, %bb.bi ]
  resume { ptr, i32 } %.pn187201

bb.bi:                                            ; preds = %bb.d, %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr59drop_in_place$LT$anki_proto..import_export..ExportLimit$GT$17hadcfb93929328379E"(ptr noalias noundef align 8 dereferenceable(32) %3) #40
          to label %.thread unwind label %bb.bh
}

; Function Attrs: nonlazybind uwtable
define void @_ZN4anki13import_export6gather12ExchangeData11reset_decks17hd768c8a4d88a7ceeE(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(208) %0, i1 noundef zeroext %1, i1 noundef zeroext %2, i1 noundef zeroext %3) unnamed_addr #1 personality ptr @rust_eh_personality !guid !2092 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !25, !noundef !25 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !25 ; 2 uses
  %.idx = mul nuw nsw i64 %i.d, 192
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx ; 4 uses
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  br i1 %2, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.g
  %.sroa.0.0124.us = phi ptr [ %i.g, %bb.g ], [ %i.b, %.lr.ph ] ; 29 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.0124.us, i64 192 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.0124.us, i64 24 ; 5 uses
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.h)
          to label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE.exit.i.us" unwind label %.split.us

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE.exit.i.us": ; preds = %.lr.ph.split.us
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.h)
          to label %"_ZN4core3ptr52drop_in_place$LT$anki_proto..decks..deck..Common$GT$17hda4943cee108cc67E.exit.us" unwind label %.split128.us

"_ZN4core3ptr52drop_in_place$LT$anki_proto..decks..deck..Common$GT$17hda4943cee108cc67E.exit.us": ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE.exit.i.us"
  store i64 0, ptr %i.h, align 8
  %.sroa.02.sroa.5.0..sroa_idx75.us = getelementptr inbounds nuw i8, ptr %.sroa.0.0124.us, i64 32
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.02.sroa.5.0..sroa_idx75.us, align 8
  %.sroa.02.sroa.6.0..sroa_idx77.us = getelementptr inbounds nuw i8, ptr %.sroa.0.0124.us, i64 40
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0124.us, i64 72 ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(30) %.sroa.02.sroa.6.0..sroa_idx77.us, i8 0, i64 30, i1 false)
  %i.j = load i64, ptr %i.i, align 8, !range !44, !noundef !25
  %i.k = icmp eq i64 %i.j, -9223372036854775808
  br i1 %i.k, label %bb.e, label %bb.b

bb.b:                                             ; preds = %"_ZN4core3ptr52drop_in_place$LT$anki_proto..decks..deck..Common$GT$17hda4943cee108cc67E.exit.us"
  br i1 %1, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.0124.us, i64 120
  store i64 1, ptr %i.l, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.0124.us, i64 152
  store i32 0, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0.0124.us, i64 156
  store i32 0, ptr %i.n, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.0124.us, i64 96
  store i32 0, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.0124.us, i64 128
end_hunk_0
begin_hunk_1_@_ZN4anki13import_export6gather12ExchangeData18gather_media_names17h3799b1ebd06f984dE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i)
  %i.ey = load ptr, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !2151, !noalias !2133, !nonnull !25, !noundef !25
  %i.ez = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !2151, !noalias !2133, !nonnull !25, !noundef !25 ; 2 uses
  %i.fa = icmp eq ptr %i.ez, %i.ey
  br i1 %i.fa, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he052c1ad24225ba5E.exit.thread.i", label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he052c1ad24225ba5E.exit.i"

_ZN4anki13import_export6gather28gather_media_names_from_note17h2071c3808de23fcaE.exit: ; preds = %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17h4174dd460f5ed00dE.exit.i", %bb.e
  %i.fb = icmp eq ptr %i.as, %i.ac
  br i1 %i.fb, label %._crit_edge, label %bb.b

bb.as:                                            ; preds = %._crit_edge65, %bb.d
  call void @"_ZN79_$LT$hashbrown..raw..RawTable$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h00abccaa9bfa09f7E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  ret void

.lr.ph64:                                         ; preds = %._crit_edge, %bb.at
  %.sroa.02.062 = phi ptr [ %i.fc, %bb.at ], [ %i.at, %._crit_edge ] ; 2 uses
  invoke void @_ZN4anki8notetype8Notetype18gather_media_names17hae7ceabb912049e2E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.02.062, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.p)
          to label %bb.at unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

._crit_edge65:                                    ; preds = %bb.at, %._crit_edge
  store i64 -9223372036854775773, ptr %0, align 8
  br label %bb.as

bb.at:                                            ; preds = %.lr.ph64
  %i.fc = getelementptr inbounds nuw i8, ptr %.sroa.02.062, i64 256 ; 2 uses
  %i.fd = icmp eq ptr %i.fc, %i.av
  br i1 %i.fd, label %._crit_edge65, label %.lr.ph64

bb.au:                                            ; preds = %.body
  %i.fe = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #41
  unreachable

"_ZN4core3ptr89drop_in_place$LT$anki..import_export..gather..svg_getter..$u7b$$u7b$closure$u7d$$u7d$$GT$17hfef7e1df755ce82eE.exit": ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define void @_ZN4anki13import_export6gather12ExchangeData21reset_cards_and_notes17h3fc2d15d63e36e25E(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(208) %0, ptr noundef nonnull align 8 %1) unnamed_addr #1 personality ptr @rust_eh_personality !guid !2154 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val = load ptr, ptr %i.c, align 8, !nonnull !25, !noundef !25 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val1 = load i64, ptr %i.d, align 8, !noundef !25 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.idx.i = mul nuw nsw i64 %.val1, 136
  %i.e = getelementptr inbounds nuw i8, ptr %.val, i64 %.idx.i
  %i.f = icmp eq i64 %.val1, 0
  br i1 %i.f, label %_ZN4anki13import_export6gather12ExchangeData18remove_system_tags17hd2286b6522ac3f00E.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  br label %bb.b

bb.b:                                             ; preds = %"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h0dbcb34878223f6fE.exit.i", %.lr.ph.i
  %.sroa.0.02.i = phi ptr [ %.val, %.lr.ph.i ], [ %i.r, %"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h0dbcb34878223f6fE.exit.i" ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i, i64 24 ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i, i64 32 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !25, !noundef !25 ; 3 uses
  %i.j = load i64, ptr %i.g, align 8, !range !40, !noundef !25
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i, i64 40 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !noundef !25 ; 2 uses
  store i64 0, ptr %i.g, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.h, align 8
  store i64 0, ptr %i.k, align 8
  %i.m = icmp ult i64 %i.l, 384307168202282326
  call void @llvm.assume(i1 %i.m)
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %i.i, i64 %i.l
  store ptr %i.i, ptr %i.a, align 8
  store ptr %i.i, ptr %.sroa.4.0..sroa_idx.i, align 8
  store i64 %i.j, ptr %.sroa.5.0..sroa_idx.i, align 8
  store ptr %i.n, ptr %.sroa.6.0..sroa_idx.i, align 8
  call void @_ZN5alloc3vec16in_place_collect18from_iter_in_place17h5f1c95e54d1d0bf9E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd14bfae6db337d46E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hddc20c1fa5644519E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %.body.i unwind label %bb.e

bb.d:                                             ; preds = %bb.b
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hddc20c1fa5644519E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h0dbcb34878223f6fE.exit.i" unwind label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #41
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.f, %bb.c
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.q, %bb.f ], [ %i.o, %bb.c ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  resume { ptr, i32 } %eh.lpad-body.i

"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h0dbcb34878223f6fE.exit.i": ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i, i64 136 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.s = icmp eq ptr %i.r, %i.e
  br i1 %i.s, label %_ZN4anki13import_export6gather12ExchangeData18remove_system_tags17hd2286b6522ac3f00E.exit, label %bb.b

_ZN4anki13import_export6gather12ExchangeData18remove_system_tags17hd2286b6522ac3f00E.exit: ; preds = %"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h0dbcb34878223f6fE.exit.i", %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val2 = load ptr, ptr %i.t, align 8            ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.val3 = load i64, ptr %i.u, align 8            ; 2 uses
  %i.v = call noundef i32 @"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$22get_next_card_position17h87fc95b138b2405fE"(ptr noundef nonnull align 8 %1)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2) ]
  %.idx.i4 = mul nuw nsw i64 %.val3, 152
  %i.w = getelementptr inbounds nuw i8, ptr %.val2, i64 %.idx.i4
  %i.x = icmp eq i64 %.val3, 0
  br i1 %i.x, label %_ZN4anki13import_export6gather12ExchangeData11reset_cards17h006a81da8e779c75E.exit, label %.lr.ph.i5

.lr.ph.i5:                                        ; preds = %_ZN4anki13import_export6gather12ExchangeData18remove_system_tags17hd2286b6522ac3f00E.exit, %"_ZN4anki9scheduler3new34_$LT$impl$u20$anki..card..Card$GT$15schedule_as_new17h094231b0f91adcfeE.exit.i"
  %.sroa.0.02.i6 = phi i32 [ %spec.select.i, %"_ZN4anki9scheduler3new34_$LT$impl$u20$anki..card..Card$GT$15schedule_as_new17h094231b0f91adcfeE.exit.i" ], [ %i.v, %_ZN4anki13import_export6gather12ExchangeData18remove_system_tags17hd2286b6522ac3f00E.exit ] ; 2 uses
  %.sroa.02.01.i = phi ptr [ %i.y, %"_ZN4anki9scheduler3new34_$LT$impl$u20$anki..card..Card$GT$15schedule_as_new17h094231b0f91adcfeE.exit.i" ], [ %.val2, %_ZN4anki13import_export6gather12ExchangeData18remove_system_tags17hd2286b6522ac3f00E.exit ] ; 13 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.02.01.i, i64 152 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.02.01.i, i64 80 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !noundef !25
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.02.01.i, i64 148
  %i.ac = load i8, ptr %i.ab, align 4, !range !41, !alias.scope !2155, !noundef !25
  %i.ad = icmp eq i8 %i.ac, 0                     ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.02.01.i, i64 96 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !alias.scope !2155 ; 2 uses
  %i.ag = icmp sgt i64 %i.af, 0
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.02.01.i, i64 140 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.02.01.i, i64 120 ; 2 uses
  %.sroa.011.0.in.i.i = select i1 %i.ag, ptr %i.ah, ptr %i.ai
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.02.01.i, i64 40 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 8, !range !61, !alias.scope !2155
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.02.01.i, i64 44
  %.sroa.510.0.in.i.i = select i1 %i.ad, ptr %.sroa.011.0.in.i.i, ptr %i.al
  %.sroa.510.0.i.i = load i32, ptr %.sroa.510.0.in.i.i, align 4, !alias.scope !2155
  %i.am = icmp eq i64 %i.af, 0
  br i1 %i.am, label %"_ZN4anki9scheduler3new34_$LT$impl$u20$anki..card..Card$GT$15schedule_as_new17h094231b0f91adcfeE.exit.i", label %bb.g

bb.g:                                             ; preds = %.lr.ph.i5
  store i64 0, ptr %i.ae, align 8, !alias.scope !2155
  store i32 0, ptr %i.ah, align 4, !alias.scope !2155
  br label %"_ZN4anki9scheduler3new34_$LT$impl$u20$anki..card..Card$GT$15schedule_as_new17h094231b0f91adcfeE.exit.i"

"_ZN4anki9scheduler3new34_$LT$impl$u20$anki..card..Card$GT$15schedule_as_new17h094231b0f91adcfeE.exit.i": ; preds = %bb.g, %.lr.ph.i5
  %.sroa.09.0.i.i = select i1 %i.ad, i32 1, i32 %i.ak ; 2 uses
  %i.an = trunc nuw i32 %.sroa.09.0.i.i to i1
  %spec.select.i.i = select i1 %i.an, i32 %.sroa.510.0.i.i, i32 %.sroa.0.02.i6
  store i32 %spec.select.i.i, ptr %i.ai, align 8, !alias.scope !2155
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.02.01.i, i64 124
  store i32 0, ptr %i.ao, align 4, !alias.scope !2155
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.02.01.i, i64 146
  store i32 0, ptr %i.aj, align 8, !alias.scope !2155
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.02.01.i, i64 128
  store i32 0, ptr %i.aq, align 8, !alias.scope !2155
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.02.01.i, i64 132
  store i32 0, ptr %i.ar, align 4, !alias.scope !2155
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.02.01.i, i64 104
  store i32 0, ptr %i.as, align 8, !alias.scope !2155
  %i.at = xor i32 %.sroa.09.0.i.i, 1
  %spec.select.i = add i32 %i.at, %.sroa.0.02.i6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(5) %i.ap, i8 0, i64 5, i1 false)
  store i64 %i.aa, ptr %i.z, align 8
  %i.au = icmp eq ptr %i.y, %i.w
  br i1 %i.au, label %_ZN4anki13import_export6gather12ExchangeData11reset_cards17h006a81da8e779c75E.exit, label %.lr.ph.i5

_ZN4anki13import_export6gather12ExchangeData11reset_cards17h006a81da8e779c75E.exit: ; preds = %"_ZN4anki9scheduler3new34_$LT$impl$u20$anki..card..Card$GT$15schedule_as_new17h094231b0f91adcfeE.exit.i", %_ZN4anki13import_export6gather12ExchangeData18remove_system_tags17hd2286b6522ac3f00E.exit
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define noundef zeroext i1 @_ZN4anki13import_export6gather12ExchangeData22enables_filtered_decks17he65a27556f0b3f73E(ptr noalias noundef readonly align 8 captures(none) dereferenceable(208) %0) unnamed_addr #14 personality ptr @rust_eh_personality !guid !2165 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !25, !noundef !25 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = load i64, ptr %i.c, align 8, !noundef !25 ; 2 uses
  %.idx = mul nuw nsw i64 %i.d, 152
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2166)
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3all17hb7dad75961a52eb1E.exit", label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i.i = load ptr, ptr %i.g, align 8, !alias.scope !2166 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i.i = load i64, ptr %i.h, align 8, !alias.scope !2166 ; 3 uses
  %.idx13 = mul nuw nsw i64 %.val1.i.i, 192
  %i.i = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.idx13 ; 2 uses
  %i.j = icmp eq i64 %.val1.i.i, 0
  %.not.not.not.i.not.not.i.not.i.i11 = icmp eq i64 %.val1.i.i, 0
  br label %bb.b

bb.b:                                             ; preds = %"_ZN4anki13import_export6gather12ExchangeData22enables_filtered_decks28_$u7b$$u7b$closure$u7d$$u7d$17h2a5276434dbcdd22E.exit.i", %.lr.ph.i
  %i.k = phi ptr [ %i.b, %.lr.ph.i ], [ %i.l, %"_ZN4anki13import_export6gather12ExchangeData22enables_filtered_decks28_$u7b$$u7b$closure$u7d$$u7d$17h2a5276434dbcdd22E.exit.i" ] ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 152 ; 2 uses
  %i.m = getelementptr i8, ptr %i.k, i64 80
  %.val3.i = load i64, ptr %i.m, align 8, !noalias !2167
  %i.n = getelementptr i8, ptr %i.k, i64 96
  %.val4.i = load i64, ptr %i.n, align 8, !noalias !2167, !noundef !25 ; 2 uses
  switch i64 %.val4.i, label %_ZN4anki13import_export6gather12ExchangeData28card_and_its_deck_are_normal17h3df2acf79e38c30cE.exit.thread.i.i [
    i64 0, label %bb.c
    i64 1, label %"_ZN4anki13import_export6gather12ExchangeData22enables_filtered_decks28_$u7b$$u7b$closure$u7d$$u7d$17h2a5276434dbcdd22E.exit.i"
  ]

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  br i1 %i.j, label %_ZN4anki13import_export6gather12ExchangeData28card_and_its_deck_are_normal17h3df2acf79e38c30cE.exit.thread.i.i, label %.lr.ph

bb.d:                                             ; preds = %.lr.ph
  %i.o = getelementptr inbounds nuw i8, ptr %i.q, i64 192 ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.i
  br i1 %i.p, label %_ZN4anki13import_export6gather12ExchangeData28card_and_its_deck_are_normal17h3df2acf79e38c30cE.exit.thread.i.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %i.q = phi ptr [ %i.o, %bb.d ], [ %.val.i.i, %bb.c ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 168
  %i.s = load i64, ptr %i.r, align 8, !noalias !2168, !noundef !25
  %i.t = icmp eq i64 %i.s, %.val3.i
  br i1 %i.t, label %_ZN4anki13import_export6gather12ExchangeData28card_and_its_deck_are_normal17h3df2acf79e38c30cE.exit.i.i, label %bb.d

_ZN4anki13import_export6gather12ExchangeData28card_and_its_deck_are_normal17h3df2acf79e38c30cE.exit.i.i: ; preds = %.lr.ph
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 72
  %i.v = load i64, ptr %i.u, align 8, !range !44, !noalias !2167, !noundef !25
  %.not.i.i = icmp eq i64 %i.v, -9223372036854775808
  br i1 %.not.i.i, label %_ZN4anki13import_export6gather12ExchangeData28card_and_its_deck_are_normal17h3df2acf79e38c30cE.exit.thread.i.i, label %"_ZN4anki13import_export6gather12ExchangeData22enables_filtered_decks28_$u7b$$u7b$closure$u7d$$u7d$17h2a5276434dbcdd22E.exit.i"

_ZN4anki13import_export6gather12ExchangeData28card_and_its_deck_are_normal17h3df2acf79e38c30cE.exit.thread.i.i: ; preds = %bb.d, %bb.c, %_ZN4anki13import_export6gather12ExchangeData28card_and_its_deck_are_normal17h3df2acf79e38c30cE.exit.i.i, %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  br i1 %.not.not.not.i.not.not.i.not.i.i11, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3all17hb7dad75961a52eb1E.exit", label %.lr.ph12

bb.e:                                             ; preds = %.lr.ph12
  %i.w = getelementptr inbounds nuw i8, ptr %i.x, i64 192 ; 2 uses
  %.not.not.not.i.not.not.i.not.i.i = icmp eq ptr %i.w, %i.i
  br i1 %.not.not.not.i.not.not.i.not.i.i, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3all17hb7dad75961a52eb1E.exit", label %.lr.ph12

.lr.ph12:                                         ; preds = %_ZN4anki13import_export6gather12ExchangeData28card_and_its_deck_are_normal17h3df2acf79e38c30cE.exit.thread.i.i, %bb.e
  %i.x = phi ptr [ %i.w, %bb.e ], [ %.val.i.i, %_ZN4anki13import_export6gather12ExchangeData28card_and_its_deck_are_normal17h3df2acf79e38c30cE.exit.thread.i.i ] ; 2 uses
  %i.y = getelementptr i8, ptr %i.x, i64 168
  %.val3.i.i.i.i = load i64, ptr %i.y, align 8, !noalias !2169, !noundef !25
  %i.z = icmp eq i64 %.val3.i.i.i.i, %.val4.i
  br i1 %i.z, label %"_ZN4anki13import_export6gather12ExchangeData22enables_filtered_decks28_$u7b$$u7b$closure$u7d$$u7d$17h2a5276434dbcdd22E.exit.i", label %bb.e

"_ZN4anki13import_export6gather12ExchangeData22enables_filtered_decks28_$u7b$$u7b$closure$u7d$$u7d$17h2a5276434dbcdd22E.exit.i": ; preds = %.lr.ph12, %_ZN4anki13import_export6gather12ExchangeData28card_and_its_deck_are_normal17h3df2acf79e38c30cE.exit.i.i, %bb.b
  %i.aa = icmp eq ptr %i.l, %i.e
  br i1 %i.aa, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3all17hb7dad75961a52eb1E.exit", label %bb.b

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3all17hb7dad75961a52eb1E.exit": ; preds = %"_ZN4anki13import_export6gather12ExchangeData22enables_filtered_decks28_$u7b$$u7b$closure$u7d$$u7d$17h2a5276434dbcdd22E.exit.i", %_ZN4anki13import_export6gather12ExchangeData28card_and_its_deck_are_normal17h3df2acf79e38c30cE.exit.thread.i.i, %bb.e, %bb.a
  %i.ab = phi i1 [ true, %bb.a ], [ false, %bb.e ], [ true, %"_ZN4anki13import_export6gather12ExchangeData22enables_filtered_decks28_$u7b$$u7b$closure$u7d$$u7d$17h2a5276434dbcdd22E.exit.i" ], [ false, %_ZN4anki13import_export6gather12ExchangeData28card_and_its_deck_are_normal17h3df2acf79e38c30cE.exit.thread.i.i ]
  ret i1 %i.ab
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN4anki13import_export6gather12ExchangeData33restore_cards_from_filtered_decks17ha89742c95222e3b5E(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(208) %0) unnamed_addr #15 !guid !2172 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !25, !noundef !25 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = load i64, ptr %i.c, align 8, !noundef !25 ; 2 uses
  %.idx = mul nuw nsw i64 %i.d, 152
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %"_ZN4anki9scheduler8filtered4card34_$LT$impl$u20$anki..card..Card$GT$41remove_from_filtered_deck_restoring_queue17hde9f5ccf8b4779c7E.exit"
  %.sroa.0.02 = phi ptr [ %i.g, %"_ZN4anki9scheduler8filtered4card34_$LT$impl$u20$anki..card..Card$GT$41remove_from_filtered_deck_restoring_queue17hde9f5ccf8b4779c7E.exit" ], [ %i.b, %bb.a ] ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.02, i64 152 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.02, i64 96 ; 3 uses
  %i.i = load i64, ptr %i.h, align 8, !noundef !25
  %i.j = icmp sgt i64 %i.i, 0
  br i1 %i.j, label %bb.b, label %"_ZN4anki9scheduler8filtered4card34_$LT$impl$u20$anki..card..Card$GT$41remove_from_filtered_deck_restoring_queue17hde9f5ccf8b4779c7E.exit"

._crit_edge:                                      ; preds = %"_ZN4anki9scheduler8filtered4card34_$LT$impl$u20$anki..card..Card$GT$41remove_from_filtered_deck_restoring_queue17hde9f5ccf8b4779c7E.exit", %bb.a
  ret void

"_ZN4anki9scheduler8filtered4card34_$LT$impl$u20$anki..card..Card$GT$41remove_from_filtered_deck_restoring_queue17hde9f5ccf8b4779c7E.exit": ; preds = %bb.f, %bb.b, %.lr.ph
  %i.k = icmp eq ptr %i.g, %i.e
  br i1 %i.k, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.02, i64 80
  %i.m = load i64, ptr %i.l, align 8, !noundef !25 ; 2 uses
  store i64 %i.m, ptr %i.h, align 8
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %"_ZN4anki9scheduler8filtered4card34_$LT$impl$u20$anki..card..Card$GT$41remove_from_filtered_deck_restoring_queue17hde9f5ccf8b4779c7E.exit", label %bb.c

bb.c:                                             ; preds = %bb.b
  store i64 0, ptr %i.h, align 8, !alias.scope !2173
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.02, i64 140 ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !alias.scope !2173, !noundef !25 ; 2 uses
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.02, i64 120
  store i32 %i.p, ptr %i.r, align 8, !alias.scope !2173
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.02, i64 149 ; 2 uses
  %i.t = load i8, ptr %i.s, align 1, !range !2174, !alias.scope !2173, !noundef !25
  %i.u = icmp sgt i8 %i.t, -1
  br i1 %i.u, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.i, %bb.e
  store i32 0, ptr %i.o, align 4, !alias.scope !2173
  br label %"_ZN4anki9scheduler8filtered4card34_$LT$impl$u20$anki..card..Card$GT$41remove_from_filtered_deck_restoring_queue17hde9f5ccf8b4779c7E.exit"

bb.g:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.02, i64 148
  %i.w = load i8, ptr %i.v, align 4, !range !41, !alias.scope !2173, !noundef !25 ; 3 uses
  switch i8 %i.w, label %default.unreachable [
    i8 0, label %bb.i
    i8 1, label %bb.h
    i8 2, label %bb.i
    i8 3, label %bb.h
  ]

default.unreachable:                              ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.g, %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.02, i64 120
  %i.y = load i32, ptr %i.x, align 8, !alias.scope !2173, !noundef !25
  %i.z = icmp sgt i32 %i.y, 1000000000
  %..i = select i1 %i.z, i8 1, i8 3
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.g
  %.sroa.0.0.i = phi i8 [ %..i, %bb.h ], [ %i.w, %bb.g ], [ %i.w, %bb.g ]
  store i8 %.sroa.0.0.i, ptr %i.s, align 1, !alias.scope !2173
  br label %bb.f
}

; Function Attrs: nonlazybind uwtable
define void @_ZN4anki13import_export6gather12ExchangeData9check_ids17h18fac36d207fc177E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 8 captures(none) dereferenceable(112) initializes((0, 8)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(208) %1) unnamed_addr #1 personality ptr @rust_eh_personality !guid !2178 {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 10 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = tail call noundef i64 @_ZN4anki9timestamp15TimestampMillis3now17h9a04f048132264a3E()
  %i.d = add i64 %i.c, 86400000
  store i64 %i.d, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !25, !noundef !25 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.h = load i64, ptr %i.g, align 8, !noundef !25
  %i.i = getelementptr inbounds nuw [152 x i8], ptr %i.f, i64 %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !25, !noundef !25 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.m = load i64, ptr %i.l, align 8, !noundef !25
  %i.n = getelementptr inbounds nuw [136 x i8], ptr %i.k, i64 %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !25, !noundef !25 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.r = load i64, ptr %i.q, align 8, !noundef !25
  %i.s = getelementptr inbounds nuw [40 x i8], ptr %i.p, i64 %i.r
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2179)
  store i64 1, ptr %i.a, align 8, !alias.scope !2180
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.f, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !2181
  %.sroa.4.0..sroa.4.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.i, ptr %.sroa.4.0..sroa.4.0..sroa_idx.i.sroa_idx, align 8, !alias.scope !2181
  %.sroa.5.0..sroa.4.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.k, ptr %.sroa.5.0..sroa.4.0..sroa_idx.i.sroa_idx, align 8, !alias.scope !2181
  %.sroa.6.0..sroa.4.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.n, ptr %.sroa.6.0..sroa.4.0..sroa_idx.i.sroa_idx, align 8, !alias.scope !2181
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %i.p, ptr %i.t, align 8, !alias.scope !2180
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %i.s, ptr %i.u, align 8, !alias.scope !2180
  %i.v = call noundef zeroext i1 @"_ZN106_$LT$core..iter..adapters..chain..Chain$LT$A$C$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h03eca33c61a8eb52E"(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %. = select i1 %i.v, i64 -9223372036854775783, i64 -9223372036854775773
  store i64 %., ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN4anki13import_export7package4apkg6import59_$LT$impl$u20$anki..import_export..gather..ExchangeData$GT$19gather_from_archive17h1c6b6da542b6319dE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([208 x i8]) align 8 captures(none) dereferenceable(208) %0, ptr noalias noundef align 8 dereferenceable(16) %1, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %2, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(72) %3, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %4, i1 noundef zeroext %5, i1 noundef zeroext %6) unnamed_addr #1 personality ptr @rust_eh_personality !guid !2204 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.7.i = alloca [24 x i8], align 8          ; 7 uses
  %i.c = alloca [112 x i8], align 8               ; 7 uses
  %.sroa.664.i = alloca [24 x i8], align 8        ; 7 uses
  %i.d = alloca [112 x i8], align 8               ; 7 uses
  %.sroa.655.i = alloca [24 x i8], align 8        ; 7 uses
  %i.e = alloca [112 x i8], align 8               ; 7 uses
  %.sroa.646.i = alloca [24 x i8], align 8        ; 7 uses
  %i.f = alloca [112 x i8], align 8               ; 7 uses
  %i.g = alloca [112 x i8], align 8               ; 9 uses
  %.sroa.629.i = alloca [24 x i8], align 8        ; 6 uses
  %i.h = alloca [16 x i8], align 8                ; 13 uses
  %i.i = alloca [72 x i8], align 8                ; 4 uses
  %i.j = alloca [112 x i8], align 8               ; 9 uses
  %.sroa.612.i = alloca [24 x i8], align 8        ; 6 uses
  %i.k = alloca [16 x i8], align 8                ; 9 uses
  %i.l = alloca [112 x i8], align 8               ; 9 uses
  %i.m = alloca [48 x i8], align 8                ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 7 uses
  %i.o = alloca [24 x i8], align 8                ; 7 uses
  %i.p = alloca [24 x i8], align 8                ; 7 uses
  %i.q = alloca [24 x i8], align 8                ; 7 uses
  %i.r = alloca [24 x i8], align 8                ; 7 uses
  %i.s = alloca [24 x i8], align 8                ; 7 uses
  %i.t = alloca [72 x i8], align 8                ; 7 uses
  %i.u = alloca [112 x i8], align 8               ; 26 uses
  %i.v = alloca [208 x i8], align 8               ; 31 uses
  %i.w = alloca [112 x i8], align 8               ; 6 uses
  %i.x = alloca [112 x i8], align 8               ; 6 uses
  %i.y = alloca [112 x i8], align 8               ; 7 uses
  %i.z = alloca [96 x i8], align 8                ; 8 uses
  %i.aa = alloca [728 x i8], align 8              ; 7 uses
  %.sroa.67 = alloca [112 x i8], align 8          ; 6 uses
  %i.ab = alloca [728 x i8], align 8              ; 14 uses
  %i.ac = alloca [112 x i8], align 8              ; 7 uses
  %.sroa.6 = alloca [32 x i8], align 8            ; 6 uses
  %i.ad = alloca [32 x i8], align 8               ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  invoke void @_ZN4anki13import_export7package4apkg6import22collection_to_tempfile17hbf494b49a91d29e4E(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.ac, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %2, ptr noalias noundef nonnull align 8 dereferenceable(16) %1)
          to label %bb.c unwind label %bb.b

.body60:                                          ; preds = %bb.b, %bb.db, %bb.f
  %.sroa.022.0 = phi i8 [ %.sroa.022.2, %bb.f ], [ %.sroa.022.1, %bb.b ], [ %.sroa.022.7, %bb.db ]
  %.pn53 = phi { ptr, i32 } [ %.pn51, %bb.f ], [ %i.af, %bb.b ], [ %i.ez, %bb.db ]
  %i.ae = trunc nuw i8 %.sroa.022.0 to i1
  br i1 %i.ae, label %bb.dg, label %bb.df

bb.b:                                             ; preds = %bb.cq, %bb.a
  %.sroa.022.1 = phi i8 [ 1, %bb.a ], [ 0, %bb.cq ]
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %.body60

bb.c:                                             ; preds = %bb.a
  %i.ag = load i64, ptr %i.ac, align 8, !range !62, !noundef !25 ; 2 uses
  %.not = icmp eq i64 %i.ag, -9223372036854775773
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(32) %i.ah, i64 32, i1 false)
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.629.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
end_hunk_1
begin_hunk_2_@"_ZN4anki13import_export7package4apkg6import59_$LT$impl$u20$anki..import_export..gather..ExchangeData$GT$19gather_from_archive17h1c6b6da542b6319dE":bb.a
          to label %.body58 unwind label %bb.ck, !noalias !2211

bb.ap:                                            ; preds = %bb.cj, %bb.ci, %"_ZN4core3ptr61drop_in_place$LT$alloc..vec..Vec$LT$anki..notes..Note$GT$$GT$17h7d33d9e13c7cded0E.exit.i"
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr49drop_in_place$LT$anki..search..CardTableGuard$GT$17h48132a332fdeb5a2E.exit.i"

bb.aq:                                            ; preds = %"_ZN4core3ptr61drop_in_place$LT$alloc..vec..Vec$LT$anki..notes..Note$GT$$GT$17h7d33d9e13c7cded0E.exit.i"
  %i.ck = load i64, ptr %i.g, align 8, !range !62, !noalias !2208, !noundef !25 ; 2 uses
  %.not178.i = icmp eq i64 %i.ck, -9223372036854775773
  %i.cl = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.629.i, ptr noundef nonnull align 8 dereferenceable(24) %i.cl, i64 24, i1 false), !noalias !2208
  %.sroa.5123.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %.sroa.5123.0.copyload.i = load ptr, ptr %.sroa.5123.0..sroa_idx.i, align 8, !noalias !2208 ; 2 uses
  %.sroa.6124.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %.sroa.6124.0.copyload.i = load i64, ptr %.sroa.6124.0..sroa_idx.i, align 8, !noalias !2208 ; 2 uses
  br i1 %.not178.i, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %.sroa.8134.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %.sroa.5139.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5139.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.8134.0..sroa_idx.i, i64 64, i1 false), !noalias !2210
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2208
  %.sroa.2136.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2136.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.629.i, i64 24, i1 false), !noalias !2210
  store i64 %i.ck, ptr %i.u, align 8, !alias.scope !2206
  %.sroa.3137.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  store ptr %.sroa.5123.0.copyload.i, ptr %.sroa.3137.0..sroa_idx.i, align 8, !alias.scope !2206
  %.sroa.4138.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  store i64 %.sroa.6124.0.copyload.i, ptr %.sroa.4138.0..sroa_idx.i, align 8, !alias.scope !2206
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.629.i)
  br label %"_ZN4core3ptr49drop_in_place$LT$anki..search..NoteTableGuard$GT$17he1811a7c5d4dc87bE.exit198.i"

bb.as:                                            ; preds = %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2208
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.629.i, i64 24, i1 false), !noalias !2208
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !2208
  store ptr %.sroa.5123.0.copyload.i, ptr %i.h, align 8, !noalias !2208
  %i.cm = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %.sroa.6124.0.copyload.i, ptr %i.cm, align 8, !noalias !2208
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.629.i)
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3f7d23b809bd1961E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bp)
          to label %bb.au unwind label %bb.at, !noalias !2211

bb.at:                                            ; preds = %bb.as
  %i.cn = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hfda6a07db5a1c461E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bp)
          to label %.body189.i unwind label %bb.av, !noalias !2211

bb.au:                                            ; preds = %bb.as
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hfda6a07db5a1c461E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bp)
          to label %"_ZN4core3ptr60drop_in_place$LT$alloc..vec..Vec$LT$anki..card..Card$GT$$GT$17ha4317dec3b4de08eE.exit.i" unwind label %bb.aw, !noalias !2211

bb.av:                                            ; preds = %bb.at
  %i.co = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #41, !noalias !2211
  unreachable

bb.aw:                                            ; preds = %bb.au
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %.body189.i

.body189.i:                                       ; preds = %bb.aw, %bb.at
  %eh.lpad-body190.i = phi { ptr, i32 } [ %i.cp, %bb.aw ], [ %i.cn, %bb.at ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bp, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !2213
  br label %bb.ax

"_ZN4core3ptr60drop_in_place$LT$alloc..vec..Vec$LT$anki..card..Card$GT$$GT$17ha4317dec3b4de08eE.exit.i": ; preds = %bb.au
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bp, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !2213
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2208
  %i.cq = load ptr, ptr %i.h, align 8, !noalias !2208, !nonnull !25, !align !26, !noundef !25
  %i.cr = xor i1 %5, true                         ; 2 uses
  invoke void @"_ZN4anki13import_export6gather46_$LT$impl$u20$anki..collection..Collection$GT$12gather_decks17h5833d7f26f536cc7E"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(728) %i.cq, i1 noundef zeroext %5, i1 noundef zeroext %i.cr)
          to label %bb.az unwind label %bb.ay, !noalias !2211

bb.ax:                                            ; preds = %bb.cf, %bb.bx, %.body193.i, %.body191.i, %bb.ay, %.body189.i
  %.pn.i = phi { ptr, i32 } [ %i.cs, %bb.ay ], [ %i.et, %bb.cf ], [ %i.ek, %bb.bx ], [ %eh.lpad-body194.i, %.body193.i ], [ %eh.lpad-body192.i, %.body191.i ], [ %eh.lpad-body190.i, %.body189.i ]
  invoke void @"_ZN70_$LT$anki..search..CardTableGuard$u20$as$u20$core..ops..drop..Drop$GT$4drop17h9a5d8ba3c89d3888E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.h)
          to label %"_ZN4core3ptr49drop_in_place$LT$anki..search..CardTableGuard$GT$17h48132a332fdeb5a2E.exit.i" unwind label %bb.ck, !noalias !2211

bb.ay:                                            ; preds = %bb.ch, %bb.cb, %bb.ca, %bb.bs, %bb.br, %"_ZN4core3ptr61drop_in_place$LT$alloc..vec..Vec$LT$anki..decks..Deck$GT$$GT$17hb1f6e273cb9cf4fcE.exit.i", %"_ZN4core3ptr60drop_in_place$LT$alloc..vec..Vec$LT$anki..card..Card$GT$$GT$17ha4317dec3b4de08eE.exit.i"
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.az:                                            ; preds = %"_ZN4core3ptr60drop_in_place$LT$alloc..vec..Vec$LT$anki..card..Card$GT$$GT$17ha4317dec3b4de08eE.exit.i"
  %i.ct = load i64, ptr %i.f, align 8, !range !62, !noalias !2208, !noundef !25 ; 2 uses
  %.not179.i = icmp eq i64 %i.ct, -9223372036854775773
  %i.cu = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.646.i, ptr noundef nonnull align 8 dereferenceable(24) %i.cu, i64 24, i1 false), !noalias !2208
  br i1 %.not179.i, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %.sroa.6145.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %.sroa.3148.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.3148.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.6145.0..sroa_idx.i, i64 80, i1 false), !noalias !2210
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2208
  br label %bb.cj

bb.bb:                                            ; preds = %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2208
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h12c088f0ad43116eE"(ptr noalias noundef nonnull align 8 dereferenceable(208) %i.v)
          to label %bb.bd unwind label %bb.bc, !noalias !2211

bb.bc:                                            ; preds = %bb.bb
  %i.cv = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb31842cba13afc6bE"(ptr noalias noundef nonnull align 8 dereferenceable(208) %i.v)
          to label %.body191.i unwind label %bb.be, !noalias !2211

bb.bd:                                            ; preds = %bb.bb
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb31842cba13afc6bE"(ptr noalias noundef nonnull align 8 dereferenceable(208) %i.v)
          to label %"_ZN4core3ptr61drop_in_place$LT$alloc..vec..Vec$LT$anki..decks..Deck$GT$$GT$17hb1f6e273cb9cf4fcE.exit.i" unwind label %bb.bf, !noalias !2211

bb.be:                                            ; preds = %bb.bc
  %i.cw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #41, !noalias !2211
  unreachable

bb.bf:                                            ; preds = %bb.bd
  %i.cx = landingpad { ptr, i32 }
          cleanup
  br label %.body191.i

.body191.i:                                       ; preds = %bb.bf, %bb.bc
  %eh.lpad-body192.i = phi { ptr, i32 } [ %i.cx, %bb.bf ], [ %i.cv, %bb.bc ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %i.v, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.646.i, i64 24, i1 false), !noalias !2213
  br label %bb.ax

"_ZN4core3ptr61drop_in_place$LT$alloc..vec..Vec$LT$anki..decks..Deck$GT$$GT$17hb1f6e273cb9cf4fcE.exit.i": ; preds = %bb.bd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %i.v, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.646.i, i64 24, i1 false), !noalias !2213
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2208
  %i.cy = load ptr, ptr %i.h, align 8, !noalias !2208, !nonnull !25, !align !26, !noundef !25
  invoke void @"_ZN4anki13import_export6gather46_$LT$impl$u20$anki..collection..Collection$GT$16gather_notetypes17h407639f69efc4e87E"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(728) %i.cy)
          to label %bb.bg unwind label %bb.ay, !noalias !2211

bb.bg:                                            ; preds = %"_ZN4core3ptr61drop_in_place$LT$alloc..vec..Vec$LT$anki..decks..Deck$GT$$GT$17hb1f6e273cb9cf4fcE.exit.i"
  %i.cz = load i64, ptr %i.e, align 8, !range !62, !noalias !2208, !noundef !25 ; 2 uses
  %.not180.i = icmp eq i64 %i.cz, -9223372036854775773
  %i.da = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.655.i, ptr noundef nonnull align 8 dereferenceable(24) %i.da, i64 24, i1 false), !noalias !2208
  br i1 %.not180.i, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %.sroa.6154.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.sroa.3157.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.3157.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.6154.0..sroa_idx.i, i64 80, i1 false), !noalias !2210
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2208
  br label %bb.cj

bb.bi:                                            ; preds = %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2208
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h62a3cebbd3ceb12cE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bq)
          to label %bb.bk unwind label %bb.bj, !noalias !2211

bb.bj:                                            ; preds = %bb.bi
  %i.db = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h506f2c2f3bf27ce8E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bq)
          to label %.body193.i unwind label %bb.bl, !noalias !2211

bb.bk:                                            ; preds = %bb.bi
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h506f2c2f3bf27ce8E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bq)
          to label %"_ZN4core3ptr68drop_in_place$LT$alloc..vec..Vec$LT$anki..notetype..Notetype$GT$$GT$17h45753bd07fd3d3c5E.exit.i" unwind label %bb.bm, !noalias !2211

bb.bl:                                            ; preds = %bb.bj
  %i.dc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #41, !noalias !2211
  unreachable

bb.bm:                                            ; preds = %bb.bk
  %i.dd = landingpad { ptr, i32 }
          cleanup
  br label %.body193.i

.body193.i:                                       ; preds = %bb.bm, %bb.bj
  %eh.lpad-body194.i = phi { ptr, i32 } [ %i.dd, %bb.bm ], [ %i.db, %bb.bj ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bq, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.655.i, i64 24, i1 false), !noalias !2213
  br label %bb.ax

"_ZN4core3ptr68drop_in_place$LT$alloc..vec..Vec$LT$anki..notetype..Notetype$GT$$GT$17h45753bd07fd3d3c5E.exit.i": ; preds = %bb.bk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bq, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.655.i, i64 24, i1 false), !noalias !2213
  call void @llvm.experimental.noalias.scope.decl(metadata !2214)
  %i.de = getelementptr inbounds nuw i8, ptr %i.v, i64 56
  %i.df = load ptr, ptr %i.de, align 8, !alias.scope !2215, !nonnull !25, !noundef !25 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.v, i64 64
  %i.dh = load i64, ptr %i.dg, align 8, !alias.scope !2215, !noundef !25 ; 2 uses
  %.idx.i.i = mul nuw nsw i64 %i.dh, 152
  %i.di = getelementptr inbounds nuw i8, ptr %i.df, i64 %.idx.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !2216)
  %i.dj = icmp eq i64 %i.dh, 0
  br i1 %i.dj, label %_ZN4anki13import_export6gather12ExchangeData22enables_filtered_decks17he65a27556f0b3f73E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %"_ZN4core3ptr68drop_in_place$LT$alloc..vec..Vec$LT$anki..notetype..Notetype$GT$$GT$17h45753bd07fd3d3c5E.exit.i"
  %i.dk = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.val.i.i.i.i = load ptr, ptr %i.dk, align 8, !alias.scope !2217 ; 5 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %.val1.i.i.i.i = load i64, ptr %i.dl, align 8, !alias.scope !2217 ; 3 uses
  %.idx = mul nuw nsw i64 %.val1.i.i.i.i, 192
  %i.dm = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %.idx ; 2 uses
  %i.dn = icmp eq i64 %.val1.i.i.i.i, 0
  %.not.not.not.i.not.not.i.not.i.i.i.i83 = icmp eq i64 %.val1.i.i.i.i, 0
  br label %bb.bn

bb.bn:                                            ; preds = %"_ZN4anki13import_export6gather12ExchangeData22enables_filtered_decks28_$u7b$$u7b$closure$u7d$$u7d$17h2a5276434dbcdd22E.exit.i.i.i", %.lr.ph.i.i.i
  %i.do = phi ptr [ %i.df, %.lr.ph.i.i.i ], [ %i.dp, %"_ZN4anki13import_export6gather12ExchangeData22enables_filtered_decks28_$u7b$$u7b$closure$u7d$$u7d$17h2a5276434dbcdd22E.exit.i.i.i" ] ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 152 ; 2 uses
  %i.dq = getelementptr i8, ptr %i.do, i64 80
  %.val3.i.i.i = load i64, ptr %i.dq, align 8, !noalias !2218
  %i.dr = getelementptr i8, ptr %i.do, i64 96
  %.val4.i.i.i = load i64, ptr %i.dr, align 8, !noalias !2218, !noundef !25 ; 2 uses
  switch i64 %.val4.i.i.i, label %_ZN4anki13import_export6gather12ExchangeData28card_and_its_deck_are_normal17h3df2acf79e38c30cE.exit.thread.i.i.i.i [
    i64 0, label %bb.bo
    i64 1, label %"_ZN4anki13import_export6gather12ExchangeData22enables_filtered_decks28_$u7b$$u7b$closure$u7d$$u7d$17h2a5276434dbcdd22E.exit.i.i.i"
  ]

bb.bo:                                            ; preds = %bb.bn
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i) ]
  br i1 %i.dn, label %_ZN4anki13import_export6gather12ExchangeData28card_and_its_deck_are_normal17h3df2acf79e38c30cE.exit.thread.i.i.i.i, label %.lr.ph

bb.bp:                                            ; preds = %.lr.ph
  %i.ds = getelementptr inbounds nuw i8, ptr %i.du, i64 192 ; 2 uses
  %i.dt = icmp eq ptr %i.ds, %i.dm
  br i1 %i.dt, label %_ZN4anki13import_export6gather12ExchangeData28card_and_its_deck_are_normal17h3df2acf79e38c30cE.exit.thread.i.i.i.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.bo, %bb.bp
  %i.du = phi ptr [ %i.ds, %bb.bp ], [ %.val.i.i.i.i, %bb.bo ] ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 168
  %i.dw = load i64, ptr %i.dv, align 8, !noalias !2219, !noundef !25
  %i.dx = icmp eq i64 %i.dw, %.val3.i.i.i
  br i1 %i.dx, label %_ZN4anki13import_export6gather12ExchangeData28card_and_its_deck_are_normal17h3df2acf79e38c30cE.exit.i.i.i.i, label %bb.bp

_ZN4anki13import_export6gather12ExchangeData28card_and_its_deck_are_normal17h3df2acf79e38c30cE.exit.i.i.i.i: ; preds = %.lr.ph
  %i.dy = getelementptr inbounds nuw i8, ptr %i.du, i64 72
  %i.dz = load i64, ptr %i.dy, align 8, !range !44, !noalias !2218, !noundef !25
  %.not.i.i.i.i = icmp eq i64 %i.dz, -9223372036854775808
  br i1 %.not.i.i.i.i, label %_ZN4anki13import_export6gather12ExchangeData28card_and_its_deck_are_normal17h3df2acf79e38c30cE.exit.thread.i.i.i.i, label %"_ZN4anki13import_export6gather12ExchangeData22enables_filtered_decks28_$u7b$$u7b$closure$u7d$$u7d$17h2a5276434dbcdd22E.exit.i.i.i"

_ZN4anki13import_export6gather12ExchangeData28card_and_its_deck_are_normal17h3df2acf79e38c30cE.exit.thread.i.i.i.i: ; preds = %bb.bp, %bb.bo, %_ZN4anki13import_export6gather12ExchangeData28card_and_its_deck_are_normal17h3df2acf79e38c30cE.exit.i.i.i.i, %bb.bn
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i) ]
  br i1 %.not.not.not.i.not.not.i.not.i.i.i.i83, label %_ZN4anki13import_export6gather12ExchangeData22enables_filtered_decks17he65a27556f0b3f73E.exit.i, label %.lr.ph84

bb.bq:                                            ; preds = %.lr.ph84
  %i.ea = getelementptr inbounds nuw i8, ptr %i.eb, i64 192 ; 2 uses
  %.not.not.not.i.not.not.i.not.i.i.i.i = icmp eq ptr %i.ea, %i.dm
  br i1 %.not.not.not.i.not.not.i.not.i.i.i.i, label %_ZN4anki13import_export6gather12ExchangeData22enables_filtered_decks17he65a27556f0b3f73E.exit.i, label %.lr.ph84

.lr.ph84:                                         ; preds = %_ZN4anki13import_export6gather12ExchangeData28card_and_its_deck_are_normal17h3df2acf79e38c30cE.exit.thread.i.i.i.i, %bb.bq
  %i.eb = phi ptr [ %i.ea, %bb.bq ], [ %.val.i.i.i.i, %_ZN4anki13import_export6gather12ExchangeData28card_and_its_deck_are_normal17h3df2acf79e38c30cE.exit.thread.i.i.i.i ] ; 2 uses
  %i.ec = getelementptr i8, ptr %i.eb, i64 168
  %.val3.i.i.i.i.i.i = load i64, ptr %i.ec, align 8, !noalias !2220, !noundef !25
  %i.ed = icmp eq i64 %.val3.i.i.i.i.i.i, %.val4.i.i.i
  br i1 %i.ed, label %"_ZN4anki13import_export6gather12ExchangeData22enables_filtered_decks28_$u7b$$u7b$closure$u7d$$u7d$17h2a5276434dbcdd22E.exit.i.i.i", label %bb.bq

"_ZN4anki13import_export6gather12ExchangeData22enables_filtered_decks28_$u7b$$u7b$closure$u7d$$u7d$17h2a5276434dbcdd22E.exit.i.i.i": ; preds = %.lr.ph84, %_ZN4anki13import_export6gather12ExchangeData28card_and_its_deck_are_normal17h3df2acf79e38c30cE.exit.i.i.i.i, %bb.bn
  %i.ee = icmp eq ptr %i.dp, %i.di
  br i1 %i.ee, label %_ZN4anki13import_export6gather12ExchangeData22enables_filtered_decks17he65a27556f0b3f73E.exit.i, label %bb.bn

_ZN4anki13import_export6gather12ExchangeData22enables_filtered_decks17he65a27556f0b3f73E.exit.i: ; preds = %"_ZN4anki13import_export6gather12ExchangeData22enables_filtered_decks28_$u7b$$u7b$closure$u7d$$u7d$17h2a5276434dbcdd22E.exit.i.i.i", %_ZN4anki13import_export6gather12ExchangeData28card_and_its_deck_are_normal17h3df2acf79e38c30cE.exit.thread.i.i.i.i, %bb.bq, %"_ZN4core3ptr68drop_in_place$LT$alloc..vec..Vec$LT$anki..notetype..Notetype$GT$$GT$17h45753bd07fd3d3c5E.exit.i"
  %i.ef = phi i1 [ true, %"_ZN4core3ptr68drop_in_place$LT$alloc..vec..Vec$LT$anki..notetype..Notetype$GT$$GT$17h45753bd07fd3d3c5E.exit.i" ], [ false, %bb.bq ], [ true, %"_ZN4anki13import_export6gather12ExchangeData22enables_filtered_decks28_$u7b$$u7b$closure$u7d$$u7d$17h2a5276434dbcdd22E.exit.i.i.i" ], [ false, %_ZN4anki13import_export6gather12ExchangeData28card_and_its_deck_are_normal17h3df2acf79e38c30cE.exit.thread.i.i.i.i ] ; 2 uses
  br i1 %5, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %_ZN4anki13import_export6gather12ExchangeData22enables_filtered_decks17he65a27556f0b3f73E.exit.i
  %i.eg = load ptr, ptr %i.h, align 8, !noalias !2208, !nonnull !25, !align !26, !noundef !25
  invoke void @_ZN4anki13import_export6gather12ExchangeData21reset_cards_and_notes17h3fc2d15d63e36e25E(ptr noalias noundef nonnull align 8 dereferenceable(208) %i.v, ptr noundef nonnull align 8 %i.eg)
          to label %bb.bt unwind label %bb.ay, !noalias !2211

bb.bs:                                            ; preds = %_ZN4anki13import_export6gather12ExchangeData22enables_filtered_decks17he65a27556f0b3f73E.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2208
  %i.eh = load ptr, ptr %i.h, align 8, !noalias !2208, !nonnull !25, !align !26, !noundef !25
  invoke void @"_ZN4anki13import_export6gather46_$LT$impl$u20$anki..collection..Collection$GT$13gather_revlog17hff4bf714507717ecE"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(728) %i.eh)
          to label %bb.bu unwind label %bb.ay, !noalias !2211

bb.bt:                                            ; preds = %bb.bz, %bb.by, %bb.br
  br i1 %6, label %bb.cb, label %bb.ca

bb.bu:                                            ; preds = %bb.bs
  %i.ei = load i64, ptr %i.d, align 8, !range !62, !noalias !2208, !noundef !25 ; 2 uses
  %.not181.i = icmp eq i64 %i.ei, -9223372036854775773
  %i.ej = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.664.i, ptr noundef nonnull align 8 dereferenceable(24) %i.ej, i64 24, i1 false), !noalias !2208
  br i1 %.not181.i, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %.sroa.6163.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.sroa.3166.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.3166.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.6163.0..sroa_idx.i, i64 80, i1 false), !noalias !2210
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2208
  br label %bb.cj

bb.bw:                                            ; preds = %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2208
  invoke fastcc void @"_ZN4core3ptr69drop_in_place$LT$alloc..vec..Vec$LT$anki..revlog..RevlogEntry$GT$$GT$17hc5ecab00a88ddd35E"(ptr noalias noundef align 8 dereferenceable(24) %i.br)
          to label %bb.by unwind label %bb.bx, !noalias !2211

bb.bx:                                            ; preds = %bb.bw
  %i.ek = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.br, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.664.i, i64 24, i1 false), !noalias !2213
  br label %bb.ax

bb.by:                                            ; preds = %bb.bw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.br, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.664.i, i64 24, i1 false), !noalias !2213
  br i1 %i.ef, label %bb.bt, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  call void @_ZN4anki13import_export6gather12ExchangeData33restore_cards_from_filtered_decks17ha89742c95222e3b5E(ptr noalias noundef nonnull align 8 dereferenceable(208) %i.v), !noalias !2211
  br label %bb.bt

bb.ca:                                            ; preds = %bb.cg, %bb.bt
  %i.el = xor i1 %6, true
  invoke void @_ZN4anki13import_export6gather12ExchangeData11reset_decks17hd768c8a4d88a7ceeE(ptr noalias noundef nonnull align 8 dereferenceable(208) %i.v, i1 noundef zeroext %i.el, i1 noundef zeroext %i.cr, i1 noundef zeroext %i.ef)
          to label %bb.ch unwind label %bb.ay, !noalias !2211

bb.cb:                                            ; preds = %bb.bt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2208
  %i.em = load ptr, ptr %i.h, align 8, !noalias !2208, !nonnull !25, !align !26, !noundef !25
  %i.en = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.eo = load ptr, ptr %i.en, align 8, !alias.scope !2207, !nonnull !25, !noundef !25
  %i.ep = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.eq = load i64, ptr %i.ep, align 8, !alias.scope !2207, !noundef !25
  invoke void @"_ZN4anki13import_export6gather46_$LT$impl$u20$anki..collection..Collection$GT$19gather_deck_configs17h5b24228af4f8786cE"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(728) %i.em, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.eo, i64 noundef %i.eq, i1 noundef zeroext %5)
          to label %bb.cc unwind label %bb.ay, !noalias !2211

bb.cc:                                            ; preds = %bb.cb
  %i.er = load i64, ptr %i.c, align 8, !range !62, !noalias !2208, !noundef !25 ; 2 uses
  %.not182.i = icmp eq i64 %i.er, -9223372036854775773
  %i.es = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.i, ptr noundef nonnull align 8 dereferenceable(24) %i.es, i64 24, i1 false), !noalias !2208
  br i1 %.not182.i, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %.sroa.5172.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.3175.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.3175.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.5172.0..sroa_idx.i, i64 80, i1 false), !noalias !2210
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2208
  br label %bb.cj

bb.ce:                                            ; preds = %bb.cc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2208
  invoke fastcc void @"_ZN4core3ptr72drop_in_place$LT$alloc..vec..Vec$LT$anki..deckconfig..DeckConfig$GT$$GT$17hbdcae7ede4179255E"(ptr noalias noundef align 8 dereferenceable(24) %i.bs)
          to label %bb.cg unwind label %bb.cf, !noalias !2211

bb.cf:                                            ; preds = %bb.ce
  %i.et = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bs, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.i, i64 24, i1 false), !noalias !2213
  br label %bb.ax

bb.cg:                                            ; preds = %bb.ce
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bs, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.i, i64 24, i1 false), !noalias !2213
  br label %bb.ca

bb.ch:                                            ; preds = %bb.ca
  invoke void @_ZN4anki13import_export6gather12ExchangeData9check_ids17h18fac36d207fc177E(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.u, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(208) %i.v)
          to label %bb.ci unwind label %bb.ay, !noalias !2221

bb.ci:                                            ; preds = %bb.ch
  invoke void @"_ZN70_$LT$anki..search..CardTableGuard$u20$as$u20$core..ops..drop..Drop$GT$4drop17h9a5d8ba3c89d3888E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.h)
          to label %"_ZN4core3ptr49drop_in_place$LT$anki..search..CardTableGuard$GT$17h48132a332fdeb5a2E.exit195.i" unwind label %bb.ap, !noalias !2211

"_ZN4core3ptr49drop_in_place$LT$anki..search..CardTableGuard$GT$17h48132a332fdeb5a2E.exit195.i": ; preds = %bb.ci
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !2208
  invoke void @"_ZN70_$LT$anki..search..NoteTableGuard$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4dc951a98e4344d9E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.k)
          to label %bb.cn unwind label %bb.cm

bb.cj:                                            ; preds = %bb.cd, %bb.bv, %bb.bh, %bb.ba
  %.sroa.7.i.sink = phi ptr [ %.sroa.7.i, %bb.cd ], [ %.sroa.664.i, %bb.bv ], [ %.sroa.655.i, %bb.bh ], [ %.sroa.646.i, %bb.ba ]
  %.sink = phi i64 [ %i.er, %bb.cd ], [ %i.ei, %bb.bv ], [ %i.cz, %bb.bh ], [ %i.ct, %bb.ba ]
  %.sroa.2174.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2174.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.i.sink, i64 24, i1 false), !noalias !2210
  store i64 %.sink, ptr %i.u, align 8, !alias.scope !2206
  invoke void @"_ZN70_$LT$anki..search..CardTableGuard$u20$as$u20$core..ops..drop..Drop$GT$4drop17h9a5d8ba3c89d3888E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.h)
          to label %"_ZN4core3ptr49drop_in_place$LT$anki..search..CardTableGuard$GT$17h48132a332fdeb5a2E.exit197.i" unwind label %bb.ap, !noalias !2211

"_ZN4core3ptr49drop_in_place$LT$anki..search..CardTableGuard$GT$17h48132a332fdeb5a2E.exit197.i": ; preds = %bb.cj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !2208
  br label %"_ZN4core3ptr49drop_in_place$LT$anki..search..NoteTableGuard$GT$17he1811a7c5d4dc87bE.exit198.i"

"_ZN4core3ptr49drop_in_place$LT$anki..search..NoteTableGuard$GT$17he1811a7c5d4dc87bE.exit198.i": ; preds = %"_ZN4core3ptr49drop_in_place$LT$anki..search..CardTableGuard$GT$17h48132a332fdeb5a2E.exit197.i", %bb.ar
  invoke void @"_ZN70_$LT$anki..search..NoteTableGuard$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4dc951a98e4344d9E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.k)
          to label %.noexc57 unwind label %bb.cm

.noexc57:                                         ; preds = %"_ZN4core3ptr49drop_in_place$LT$anki..search..NoteTableGuard$GT$17he1811a7c5d4dc87bE.exit198.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !2208
  br label %.thread

bb.ck:                                            ; preds = %bb.cl, %bb.ax, %"_ZN4core3ptr49drop_in_place$LT$anki..search..CardTableGuard$GT$17h48132a332fdeb5a2E.exit.i"
  %i.eu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #41, !noalias !2206
  unreachable

bb.cl:                                            ; preds = %bb.ah, %bb.ae
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr53drop_in_place$LT$anki..search..parser..SearchNode$GT$17h13c416b80bdb6889E"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.t) #40
          to label %.body58 unwind label %bb.ck, !noalias !2206

bb.cm:                                            ; preds = %"_ZN4core3ptr49drop_in_place$LT$anki..search..NoteTableGuard$GT$17he1811a7c5d4dc87bE.exit198.i", %"_ZN4core3ptr49drop_in_place$LT$anki..search..CardTableGuard$GT$17h48132a332fdeb5a2E.exit195.i", %bb.ai, %bb.ag
  %i.ev = landingpad { ptr, i32 }
          cleanup
  br label %.body58

.body58:                                          ; preds = %"_ZN4core3ptr49drop_in_place$LT$anki..search..CardTableGuard$GT$17h48132a332fdeb5a2E.exit.i", %bb.cl, %bb.cm
  %eh.lpad-body59 = phi { ptr, i32 } [ %i.ev, %bb.cm ], [ %.pn185.i, %"_ZN4core3ptr49drop_in_place$LT$anki..search..CardTableGuard$GT$17h48132a332fdeb5a2E.exit.i" ], [ %lpad.thr_comm.split-lp.i, %bb.cl ]
  invoke fastcc void @"_ZN4core3ptr62drop_in_place$LT$anki..import_export..gather..ExchangeData$GT$17h8df3bf630dea9145E"(ptr noalias noundef align 8 dereferenceable(208) %i.v) #40
          to label %.body unwind label %bb.cv

.thread:                                          ; preds = %.noexc57, %bb.aj, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.664.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.655.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.646.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %bb.co

bb.cn:                                            ; preds = %"_ZN4core3ptr49drop_in_place$LT$anki..search..CardTableGuard$GT$17h48132a332fdeb5a2E.exit195.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !2208
  %.pre = load i64, ptr %i.u, align 8, !range !62
  %i.ew = icmp eq i64 %.pre, -9223372036854775773
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.664.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.655.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.646.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br i1 %i.ew, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %.thread, %bb.cn
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.ex, ptr noundef nonnull align 8 dereferenceable(112) %i.u, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  store i64 -9223372036854775808, ptr %0, align 8
  invoke fastcc void @"_ZN4core3ptr62drop_in_place$LT$anki..import_export..gather..ExchangeData$GT$17h8df3bf630dea9145E"(ptr noalias noundef align 8 dereferenceable(208) %i.v)
          to label %bb.ct unwind label %bb.m

bb.cp:                                            ; preds = %bb.cn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %i.v, i64 208, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  invoke fastcc void @"_ZN4core3ptr49drop_in_place$LT$anki..collection..Collection$GT$17h73798fd49909d1b0E"(ptr noalias noundef align 8 dereferenceable(728) %i.ab)
          to label %bb.cq unwind label %bb.g

bb.cq:                                            ; preds = %bb.cp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  invoke fastcc void @"_ZN4core3ptr50drop_in_place$LT$tempfile..file..NamedTempFile$GT$17hac837e4b7f5181dbE"(ptr noalias noundef align 8 dereferenceable(32) %i.ad)
          to label %bb.cr unwind label %bb.b

bb.cr:                                            ; preds = %bb.cq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  br label %bb.cs

bb.cs:                                            ; preds = %bb.de, %bb.dd, %bb.cr
  ret void

bb.ct:                                            ; preds = %bb.co
end_hunk_2
