Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/anki-0407df152365de94.anki.49bf70e6e198d769-cgu.09?download=true
inline.NumInlined: 5377
inline.NumDeleted: 2914
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 25
begin_hunk_0_@_ZN4anki9scheduler4fsrs11rescheduler11Rescheduler3new17hab40a04479e4db56E:bb.a
  br label %bb.bk

bb.bj:                                            ; preds = %bb.bg
  %i.gb = load ptr, ptr %.sroa.4302.0..sroa_idx, align 8, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %.noexc267
  %.pn.i263 = phi ptr [ %i.ga, %.noexc267 ], [ %i.gb, %bb.bj ]
  %.sroa.0.0.i264 = getelementptr inbounds i8, ptr %.pn.i263, i64 -48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke void @"_ZN9hashbrown11rustc_entry62_$LT$impl$u20$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$GT$11rustc_entry17h84042923e165b172E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(48) %.sroa.0.0.i264, i32 noundef %.sroa.8.8.copyload)
          to label %bb.bl unwind label %.loopexit.split-lp408.loopexit

bb.bl:                                            ; preds = %bb.bk
  %i.gc = load ptr, ptr %i.d, align 8, !noundef !4 ; 2 uses
  %.not200 = icmp eq ptr %i.gc, null
  br i1 %.not200, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %.sroa.4308.0.copyload = load i64, ptr %.sroa.4308.0..sroa_idx, align 8
  %.sroa.5309.0.copyload = load ptr, ptr %.sroa.5309.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.gd = ptrtoint ptr %.sroa.5309.0.copyload to i64
  %.sroa.9289.16.extract.trunc = trunc i64 %i.gd to i32
  %i.ge = invoke noundef nonnull ptr @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14insert_no_grow17h900e8fcbe91aa488E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.gc, i64 noundef %.sroa.4308.0.copyload, i32 noundef %.sroa.9289.16.extract.trunc, i64 noundef %.sroa.9282.8.copyload)
          to label %"_ZN3std11collections4hash3map18Entry$LT$K$C$V$GT$9or_insert17ha6db2f6e16f2b158E.exit" unwind label %.loopexit.split-lp408.loopexit ; 0 uses

bb.bn:                                            ; preds = %bb.bl
  %i.gf = load ptr, ptr %.sroa.4308.0..sroa_idx, align 8, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.gg = getelementptr inbounds i8, ptr %i.gf, i64 -8 ; 2 uses
  %i.gh = load i64, ptr %i.gg, align 8, !alias.scope !6307, !noalias !6308, !noundef !4
  %i.gi = add i64 %i.gh, %.sroa.9282.8.copyload
  store i64 %i.gi, ptr %i.gg, align 8, !alias.scope !6307, !noalias !6308
  br label %"_ZN3std11collections4hash3map18Entry$LT$K$C$V$GT$9or_insert17ha6db2f6e16f2b158E.exit"

"_ZN3std11collections4hash3map18Entry$LT$K$C$V$GT$9or_insert17ha6db2f6e16f2b158E.exit": ; preds = %bb.bn, %bb.bm
  %i.gj = load ptr, ptr %.sroa.738.0..sroa_idx, align 8, !alias.scope !6309, !noalias !6283, !nonnull !4, !noundef !4
  %i.gk = load ptr, ptr %.sroa.536.0..sroa_idx, align 8, !alias.scope !6309, !noalias !6283, !nonnull !4, !noundef !4 ; 2 uses
  %i.gl = icmp eq ptr %i.gk, %i.gj
  br i1 %i.gl, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17haba4a6105351d0fcE.exit", label %bb.r

"_ZN4core3ptr101drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$LP$anki..decks..DeckId$C$i32$C$usize$RP$$GT$$GT$17h7b422df74a3ceff8E.exit258": ; preds = %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %bb.bc

"_ZN4core3ptr153drop_in_place$LT$std..collections..hash..map..HashMap$LT$anki..deckconfig..DeckConfigId$C$std..collections..hash..map..HashMap$LT$i32$C$usize$GT$$GT$$GT$17heecfd219ac00ca9bE.exit256": ; preds = %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  invoke void @"_ZN79_$LT$hashbrown..raw..RawTable$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0d2e03d794a568bdE"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.w)
          to label %"_ZN4core3ptr117drop_in_place$LT$std..collections..hash..map..HashMap$LT$anki..decks..DeckId$C$anki..deckconfig..DeckConfigId$GT$$GT$17h8842353feef81bebE.exit274" unwind label %bb.l

"_ZN4core3ptr117drop_in_place$LT$std..collections..hash..map..HashMap$LT$anki..decks..DeckId$C$anki..deckconfig..DeckConfigId$GT$$GT$17h8842353feef81bebE.exit274": ; preds = %"_ZN4core3ptr153drop_in_place$LT$std..collections..hash..map..HashMap$LT$anki..deckconfig..DeckConfigId$C$std..collections..hash..map..HashMap$LT$i32$C$usize$GT$$GT$$GT$17heecfd219ac00ca9bE.exit256"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @"_ZN79_$LT$hashbrown..raw..RawTable$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hcc6072d15c8c2edcE"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  br label %bb.bo

bb.bo:                                            ; preds = %"_ZN4core3ptr117drop_in_place$LT$std..collections..hash..map..HashMap$LT$anki..decks..DeckId$C$anki..deckconfig..DeckConfigId$GT$$GT$17h8842353feef81bebE.exit274", %"_ZN4core3ptr85drop_in_place$LT$alloc..vec..Vec$LT$$LP$anki..decks..DeckId$C$i32$C$usize$RP$$GT$$GT$17ha28206c71b6c30d0E.exit", %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  br label %bb.as

bb.bp:                                            ; preds = %.split, %bb.f
  %.pn207328 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %.split ], [ %.pn205, %bb.f ]
  invoke fastcc void @"_ZN4core3ptr85drop_in_place$LT$alloc..vec..Vec$LT$$LP$anki..decks..DeckId$C$i32$C$usize$RP$$GT$$GT$17ha28206c71b6c30d0E"(ptr noalias noundef align 8 dereferenceable(24) %i.aa) #41
          to label %common.resume unwind label %bb.ba
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_ZN4anki9scheduler4fsrs11rescheduler11Rescheduler9due_today17h1619a29616d2e78aE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(208) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 3 uses
  store i64 %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !6323, !noalias !6324, !noundef !4
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h053c89844743c0c9E.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.g = call noundef i64 @_ZN4core4hash11BuildHasher8hash_one17h51d0505e4c32f33dE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a) ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6325)
  call void @llvm.experimental.noalias.scope.decl(metadata !6326)
  %i.h = lshr i64 %i.g, 57
  %i.i = trunc nuw nsw i64 %i.h to i8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !6327, !noalias !6328, !noundef !4 ; 2 uses
  %i.l = load ptr, ptr %i.e, align 8, !alias.scope !6327, !noalias !6328, !nonnull !4, !noundef !4 ; 2 uses
  %.sroa.0.0.vec.insert.i.i.i = insertelement <16 x i8> poison, i8 %i.i, i64 0
  %.sroa.0.15.vec.insert.i.i.i = shufflevector <16 x i8> %.sroa.0.0.vec.insert.i.i.i, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.b
  %.sroa.9.0.i.i.i = phi i64 [ 0, %bb.b ], [ %i.ac, %bb.e ]
  %.pn.i.i = phi i64 [ %i.g, %bb.b ], [ %i.ad, %bb.e ]
  %.sroa.01.0.i.i.i = and i64 %.pn.i.i, %i.k      ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %.sroa.01.0.i.i.i
  %.sroa.0.0.copyload.i26.i.i = load <16 x i8>, ptr %i.m, align 1, !noalias !6329 ; 2 uses
  %i.n = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i, %.sroa.0.15.vec.insert.i.i.i
  %i.o = bitcast <16 x i1> %i.n to i16            ; 2 uses
  %.not.i.not32.i.i = icmp eq i16 %i.o, 0
  br i1 %.not.i.not32.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %bb.d
  %.sroa.06.0.i33.i.i = phi i16 [ %i.ab, %bb.d ], [ %i.o, %bb.c ] ; 3 uses
  %i.p = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i.i, i1 true)
  %i.q = zext nneg i16 %i.p to i64
  %i.r = add i64 %.sroa.01.0.i.i.i, %i.q
  %i.s = and i64 %i.r, %i.k
  %i.t = sub nsw i64 0, %i.s
  %i.u = getelementptr inbounds [16 x i8], ptr %i.l, i64 %i.t ; 2 uses
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 -16
  %i.w = call noundef zeroext i1 @"_ZN52_$LT$Q$u20$as$u20$hashbrown..Equivalent$LT$K$GT$$GT$10equivalent17h8f93f77da693ba91E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.v), !noalias !6330
  br i1 %i.w, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17h8603343ba126236fE.exit.i", label %bb.d, !prof !22

._crit_edge.i.i:                                  ; preds = %bb.d, %bb.c
  %i.x = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i, splat (i8 -1)
  %i.y = bitcast <16 x i1> %i.x to i16
  %i.z = icmp eq i16 %i.y, 0
  br i1 %i.z, label %bb.e, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17h8603343ba126236fE.exit.i", !prof !14

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.aa = add i16 %.sroa.06.0.i33.i.i, -1
  %i.ab = and i16 %i.aa, %.sroa.06.0.i33.i.i      ; 2 uses
  %.not.i.not.i.i = icmp eq i16 %i.ab, 0
  br i1 %.not.i.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.ac = add i64 %.sroa.9.0.i.i.i, 16            ; 2 uses
  %i.ad = add i64 %.sroa.01.0.i.i.i, %i.ac
  br label %bb.c

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17h8603343ba126236fE.exit.i": ; preds = %._crit_edge.i.i, %.lr.ph.i.i
  %i.ae = phi ptr [ %i.u, %.lr.ph.i.i ], [ null, %._crit_edge.i.i ] ; 2 uses
  %.not.i = icmp eq ptr %i.ae, null
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 -16
  %.sroa.0.1.i = select i1 %.not.i, ptr null, ptr %i.af
  br label %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h053c89844743c0c9E.exit"

"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h053c89844743c0c9E.exit": ; preds = %bb.a, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17h8603343ba126236fE.exit.i"
  %.sroa.0.0.i = phi ptr [ %.sroa.0.1.i, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17h8603343ba126236fE.exit.i" ], [ null, %bb.a ] ; 2 uses
  %.not = icmp eq ptr %.sroa.0.0.i, null
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 8
  %.sroa.0.0 = select i1 %.not, ptr @221, ptr %i.ag
  %i.ah = load i64, ptr %.sroa.0.0, align 8, !noundef !4
  ret i64 %i.ah
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN4anki9scheduler5queue7builder12QueueBuilder3new17hf89fc173daf97118E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([728 x i8]) align 8 captures(none) dereferenceable(728) %0, ptr noalias noundef align 8 dereferenceable(728) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 6 uses
  %i.b = alloca [1 x i8], align 1                 ; 3 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 5 uses
  %i.e = alloca [96 x i8], align 8                ; 5 uses
  %i.f = alloca [32 x i8], align 8                ; 6 uses
  %i.g = alloca [144 x i8], align 8               ; 7 uses
  %i.h = alloca [32 x i8], align 8                ; 3 uses
  %i.i = alloca [48 x i8], align 8                ; 7 uses
  %i.j = alloca [80 x i8], align 8                ; 4 uses
  %i.k = alloca [32 x i8], align 8                ; 6 uses
  %i.l = alloca [24 x i8], align 8                ; 6 uses
  %i.m = alloca [96 x i8], align 8                ; 6 uses
  %i.n = alloca [24 x i8], align 8                ; 4 uses
  %i.o = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.0.i = alloca [48 x i8], align 8          ; 6 uses
  %i.p = alloca [96 x i8], align 8                ; 16 uses
  %i.q = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.5.sroa.10.i = alloca [7 x i8], align 1   ; 4 uses
  %.sroa.6.i = alloca [16 x i8], align 8          ; 4 uses
  %i.r = alloca [48 x i8], align 8                ; 9 uses
  %i.s = alloca [24 x i8], align 8                ; 5 uses
  %i.t = alloca [112 x i8], align 8               ; 6 uses
  %i.u = alloca [48 x i8], align 8                ; 5 uses
  %i.v = alloca [48 x i8], align 8                ; 7 uses
  %i.w = alloca [192 x i8], align 8               ; 5 uses
  %i.x = alloca [48 x i8], align 8                ; 5 uses
  %.sroa.091 = alloca [352 x i8], align 8         ; 8 uses
  %i.y = alloca [104 x i8], align 8               ; 6 uses
  %i.z = alloca [144 x i8], align 8               ; 5 uses
  %i.aa = alloca [24 x i8], align 8               ; 7 uses
  %i.ab = alloca [24 x i8], align 8               ; 7 uses
  %i.ac = alloca [24 x i8], align 8               ; 7 uses
  %i.ad = alloca [24 x i8], align 8               ; 7 uses
  %.sroa.096 = alloca [592 x i8], align 8         ; 9 uses
  %i.ae = alloca [24 x i8], align 8               ; 4 uses
  %.sroa.787.sroa.5 = alloca [96 x i8], align 8   ; 6 uses
  %.sroa.782.sroa.7 = alloca [96 x i8], align 8   ; 7 uses
  %.sroa.778.sroa.7 = alloca [96 x i8], align 8   ; 7 uses
  %i.af = alloca [112 x i8], align 8              ; 7 uses
  %.sroa.769 = alloca [48 x i8], align 8          ; 6 uses
  %i.ag = alloca [48 x i8], align 8               ; 8 uses
  %.sroa.3266 = alloca i32, align 4               ; 3 uses
  %.sroa.9269 = alloca i32, align 4               ; 3 uses
  %i.ah = alloca [144 x i8], align 8              ; 8 uses
  %i.ai = alloca [192 x i8], align 8              ; 4 uses
  %i.aj = alloca [32 x i8], align 8               ; 8 uses
  %i.ak = alloca [112 x i8], align 8              ; 9 uses
  %i.al = alloca [192 x i8], align 8              ; 17 uses
  %i.am = alloca [112 x i8], align 8              ; 7 uses
  %.sroa.740 = alloca [24 x i8], align 8          ; 6 uses
  %i.an = alloca [24 x i8], align 8               ; 15 uses
  %i.ao = alloca [192 x i8], align 8              ; 4 uses
  %i.ap = alloca [192 x i8], align 8              ; 7 uses
  %.sroa.632 = alloca [112 x i8], align 8         ; 6 uses
  %i.aq = alloca [192 x i8], align 8              ; 8 uses
  %.sroa.7 = alloca [112 x i8], align 8           ; 6 uses
  %i.ar = alloca [192 x i8], align 8              ; 39 uses
  %i.as = alloca [112 x i8], align 8              ; 7 uses
  %.sroa.6 = alloca [48 x i8], align 8            ; 6 uses
  %i.at = alloca [48 x i8], align 8               ; 13 uses
  %.sroa.05 = alloca [16 x i8], align 8           ; 2 uses
  %i.au = alloca [112 x i8], align 8              ; 9 uses
  %.sroa.6.sroa.0 = alloca [16 x i8], align 8     ; 7 uses
  %i.av = alloca [24 x i8], align 8               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au)
  %i.aw = tail call noundef i64 @_ZN4anki9timestamp13TimestampSecs3now17h77445fd70f9cc13aE()
  call void @"_ZN4anki9scheduler46_$LT$impl$u20$anki..collection..Collection$GT$20timing_for_timestamp17h6f7c0e4ecc0a8523E"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.au, ptr noalias noundef nonnull align 8 dereferenceable(728) %1, i64 noundef %i.aw)
  %i.ax = load i64, ptr %i.au, align 8, !range !7, !noundef !4 ; 2 uses
  %.not = icmp eq i64 %i.ax, -9223372036854775773
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.sroa.0, ptr noundef nonnull align 8 dereferenceable(16) %i.ay, i64 16, i1 false)
  %.sroa.5107.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %.sroa.5107.0.copyload = load i32, ptr %.sroa.5107.0..sroa_idx, align 8 ; 5 uses
  %.sroa.6108.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 28
  %.sroa.6108.0.copyload = load i32, ptr %.sroa.6108.0..sroa_idx, align 4 ; 3 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.8118.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 32
  %.sroa.5123.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.5123.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.8118.0..sroa_idx, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  %.sroa.2120.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.2120.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.sroa.0, i64 16, i1 false)
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ax, ptr %i.az, align 8
  %.sroa.3121.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %.sroa.5107.0.copyload, ptr %.sroa.3121.0..sroa_idx, align 8
  %.sroa.4122.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %.sroa.6108.0.copyload, ptr %.sroa.4122.0..sroa_idx, align 4
  store i64 2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.sroa.0)
  br label %bb.cd

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.05, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.sroa.0, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.av, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.sroa.0, i64 16, i1 false)
  %.sroa.36.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 16 ; 2 uses
  store i32 %.sroa.5107.0.copyload, ptr %.sroa.36.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 20
  store i32 %.sroa.6108.0.copyload, ptr %.sroa.4.0..sroa_idx, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.sroa.0)
  %i.ba = call noundef zeroext i1 @"_ZN4anki6config4bool46_$LT$impl$u20$anki..collection..Collection$GT$15get_config_bool17h7136a4eca1934331E"(ptr noundef nonnull align 8 %1, i8 noundef 14) ; 2 uses
  %i.bb = call noundef zeroext i1 @"_ZN4anki6config4bool46_$LT$impl$u20$anki..collection..Collection$GT$15get_config_bool17h7136a4eca1934331E"(ptr noundef nonnull align 8 %1, i8 noundef 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 600 ; 5 uses
  call void @"_ZN4anki7storage10deckconfig54_$LT$impl$u20$anki..storage..sqlite..SqliteStorage$GT$19get_deck_config_map17h6cca34914308cf3bE"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.as, ptr noundef nonnull align 8 %i.bc)
  %i.bd = load i64, ptr %i.as, align 8, !range !7, !noundef !4 ; 2 uses
  %.not207 = icmp eq i64 %i.bd, -9223372036854775773
  %i.be = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(48) %i.be, i64 48, i1 false)
  br i1 %.not207, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.6129.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 56
  %.sroa.3132.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.3132.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6129.0..sroa_idx, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  %.sroa.2131.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.2131.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6, i64 48, i1 false)
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.bd, ptr %i.bf, align 8
  store i64 2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  br label %bb.cu

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.at, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.632)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  invoke void @"_ZN4anki7storage4deck54_$LT$impl$u20$anki..storage..sqlite..SqliteStorage$GT$8get_deck17h3aeace89e775e0d0E"(ptr noalias noundef nonnull sret([192 x i8]) align 8 captures(address) dereferenceable(192) %i.ap, ptr noundef nonnull align 8 %i.bc, i64 noundef %2)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %"_ZN4core3ptr61drop_in_place$LT$alloc..vec..Vec$LT$anki..decks..Deck$GT$$GT$17hb1f6e273cb9cf4fcE.exit", %bb.i, %bb.e
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %bb.cv

bb.g:                                             ; preds = %bb.e
  %i.bh = load i64, ptr %i.ap, align 8, !range !10, !noundef !4 ; 2 uses
  %i.bi = icmp eq i64 %i.bh, -9223372036854775807
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.632, ptr noundef nonnull align 8 dereferenceable(112) %i.bj, i64 112, i1 false)
  br i1 %i.bi, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.bk, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.632, i64 112, i1 false)
  store i64 2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  br label %bb.ct

bb.i:                                             ; preds = %bb.g
  %.sroa.6135.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 120
  %.sroa.834.0..sroa_idx35 = getelementptr inbounds nuw i8, ptr %i.ao, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.834.0..sroa_idx35, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.6135.0..sroa_idx, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  store i64 %i.bh, ptr %i.ao, align 8
  %.sroa.632.0..sroa_idx33 = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.632.0..sroa_idx33, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.632, i64 112, i1 false)
  invoke void @"_ZN84_$LT$core..option..Option$LT$T$GT$$u20$as$u20$anki..error..not_found..OrNotFound$GT$12or_not_found17hae19c4bba29e04dbE"(ptr noalias noundef nonnull sret([192 x i8]) align 8 captures(address) dereferenceable(192) %i.aq, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(192) %i.ao, i64 noundef %2)
          to label %bb.j unwind label %bb.f

bb.j:                                             ; preds = %bb.i
  %i.bl = load i64, ptr %i.aq, align 8, !range !12, !noundef !4 ; 2 uses
  %i.bm = icmp eq i64 %i.bl, -9223372036854775808
  %i.bn = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(112) %i.bn, i64 112, i1 false)
  br i1 %i.bm, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.bo, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.7, i64 112, i1 false)
  store i64 2, ptr %0, align 8
  br label %bb.ct

bb.l:                                             ; preds = %bb.j
  %.sroa.5138.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 120
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 120 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.5138.0..sroa_idx, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  %.sroa.437.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.437.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.7, i64 112, i1 false)
  store i64 %i.bl, ptr %i.ar, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.632)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.740)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  invoke void @"_ZN4anki7storage4deck54_$LT$impl$u20$anki..storage..sqlite..SqliteStorage$GT$11child_decks17h324ca15f3aa64795E"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.am, ptr noundef nonnull align 8 %i.bc, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %i.ar)
          to label %bb.m unwind label %.split.thread

.body257:                                         ; preds = %.body
  br i1 %.sroa.0104.2, label %.body257.thread, label %"_ZN4core3ptr126drop_in_place$LT$std..collections..hash..map..HashMap$LT$anki..deckconfig..DeckConfigId$C$anki..deckconfig..DeckConfig$GT$$GT$17h91cae3be92479d3fE.exit260"

.split.thread:                                    ; preds = %bb.cp, %bb.l
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.body257.thread

bb.m:                                             ; preds = %bb.l
  %i.bp = load i64, ptr %i.am, align 8, !range !7, !noundef !4 ; 2 uses
  %.not208 = icmp eq i64 %i.bp, -9223372036854775773
  %i.bq = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.740, ptr noundef nonnull align 8 dereferenceable(24) %i.bq, i64 24, i1 false)
  br i1 %.not208, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.sroa.5144.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  %.sroa.3147.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.3147.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.5144.0..sroa_idx, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  %.sroa.2146.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2146.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.740, i64 24, i1 false)
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.bp, ptr %i.br, align 8
  store i64 2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.740)
  br label %"_ZN4core3ptr61drop_in_place$LT$alloc..vec..Vec$LT$anki..decks..Deck$GT$$GT$17hb1f6e273cb9cf4fcE.exit"

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.an, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.740, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.740)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  call void @llvm.experimental.noalias.scope.decl(metadata !6385)
  call void @llvm.experimental.noalias.scope.decl(metadata !6386)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ar, i64 168
  %i.bt = load i64, ptr %i.bs, align 8, !alias.scope !6386, !noalias !6385, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !6387
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17he0bc0e0b0b5c0846E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.s, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %i.ar)
          to label %.noexc unwind label %bb.aa

.noexc:                                           ; preds = %bb.o
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ar, i64 176
  %i.bv = load i64, ptr %i.bu, align 8, !alias.scope !6386, !noalias !6385, !noundef !4
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ar, i64 184
  %i.bx = load i32, ptr %i.bw, align 8, !alias.scope !6386, !noalias !6385, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !6387
  %i.by = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ar, i64 68
  %i.ca = load i8, ptr %i.bz, align 4, !range !17, !alias.scope !6386, !noalias !6385, !noundef !4
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ar, i64 69
  %i.cc = load i8, ptr %i.cb, align 1, !range !17, !alias.scope !6386, !noalias !6385, !noundef !4
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ar, i64 48
  %i.ce = load <4 x i32>, ptr %i.cd, align 8, !alias.scope !6386, !noalias !6385
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ar, i64 64
  %i.cg = load i32, ptr %i.cf, align 8, !alias.scope !6386, !noalias !6385, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !6387
  invoke void @"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hd2ff4de40dc9149eE"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.q, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.by)
          to label %bb.r unwind label %bb.q, !noalias !6385

bb.p:                                             ; preds = %.body.i, %bb.q
  %.pn.i = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %i.ch, %bb.q ]
  invoke fastcc void @"_ZN4core3ptr54drop_in_place$LT$anki..decks..name..NativeDeckName$GT$17h2c3b0a10fe8347c5E"(ptr noalias noundef align 8 dereferenceable(24) %i.s) #41
          to label %.body unwind label %bb.z, !noalias !6385

bb.q:                                             ; preds = %.noexc
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.r:                                             ; preds = %.noexc
  %i.ci = getelementptr inbounds nuw i8, ptr %i.r, i64 44
  store i8 %i.ca, ptr %i.ci, align 4, !noalias !6387
  %i.cj = getelementptr inbounds nuw i8, ptr %i.r, i64 45
  store i8 %i.cc, ptr %i.cj, align 1, !noalias !6387
  %i.ck = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store <4 x i32> %i.ce, ptr %i.ck, align 8, !noalias !6387
  %i.cl = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  store i32 %i.cg, ptr %i.cl, align 8, !noalias !6387
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false), !noalias !6387
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !6387
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.sroa.10.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ar, i64 72 ; 3 uses
  %i.cn = load i64, ptr %i.cm, align 8, !range !12, !alias.scope !6386, !noalias !6385, !noundef !4
  %i.co = icmp eq i64 %i.cn, -9223372036854775808
  br i1 %i.co, label %bb.s, label %bb.v

bb.s:                                             ; preds = %bb.r
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ar, i64 80
  call void @llvm.experimental.noalias.scope.decl(metadata !6388)
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ar, i64 144
  %i.cr = load i8, ptr %i.cq, align 8, !range !17, !alias.scope !6389, !noalias !6390, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !6391
  invoke void @"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hdc9f3553434daff8E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.o, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.cp)
          to label %.noexc.i unwind label %bb.w, !noalias !6385

.noexc.i:                                         ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !6391
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ar, i64 104
  invoke void @"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hc9c52f58e3e45727E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cs)
          to label %bb.y unwind label %bb.t, !noalias !6390

bb.t:                                             ; preds = %.noexc.i
  %i.ct = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr89drop_in_place$LT$alloc..vec..Vec$LT$anki_proto..decks..deck..filtered..SearchTerm$GT$$GT$17h7ad1dc567626199dE"(ptr noalias noundef align 8 dereferenceable(24) %i.o) #41
          to label %.body.i unwind label %bb.u, !noalias !6390

bb.u:                                             ; preds = %bb.t
  %i.cu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #42, !noalias !6390
  unreachable

bb.v:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !6387
  call void @llvm.experimental.noalias.scope.decl(metadata !6392)
  call void @llvm.experimental.noalias.scope.decl(metadata !6393)
  %i.cv = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !6394, !noalias !6395, !noundef !4
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ar, i64 152
  %i.cx = load <2 x i32>, ptr %i.cw, align 8, !alias.scope !6394, !noalias !6395
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17he0bc0e0b0b5c0846E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(96) %i.p, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.cm)
          to label %bb.x unwind label %bb.w, !noalias !6385

bb.w:                                             ; preds = %bb.v, %bb.s
  %i.cy = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.w, %bb.t
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.cy, %bb.w ], [ %i.ct, %bb.t ]
  invoke fastcc void @"_ZN4core3ptr52drop_in_place$LT$anki_proto..decks..deck..Common$GT$17hda4943cee108cc67E"(ptr noalias noundef align 8 dereferenceable(48) %i.r) #41
          to label %bb.p unwind label %bb.z, !noalias !6385

bb.x:                                             ; preds = %bb.v
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ar, i64 160
  %i.da = load i8, ptr %i.cz, align 8, !range !17, !alias.scope !6394, !noalias !6395, !noundef !4
  %i.db = getelementptr inbounds nuw i8, ptr %i.ar, i64 96
  %i.dc = load i32, ptr %i.db, align 8, !range !39, !alias.scope !6394, !noalias !6395, !noundef !4 ; 2 uses
  %i.dd = trunc nuw i32 %i.dc to i1
  %i.de = getelementptr inbounds nuw i8, ptr %i.ar, i64 100
  %i.df = load i32, ptr %i.de, align 4, !alias.scope !6394, !noalias !6395
  %.sroa.5.0.i.i = select i1 %i.dd, i32 %i.df, i32 undef
  %i.dg = getelementptr inbounds nuw i8, ptr %i.ar, i64 104
  %i.dh = load i32, ptr %i.dg, align 8, !range !39, !alias.scope !6394, !noalias !6395, !noundef !4 ; 2 uses
  %i.di = trunc nuw i32 %i.dh to i1
  %i.dj = getelementptr inbounds nuw i8, ptr %i.ar, i64 108
  %i.dk = load i32, ptr %i.dj, align 4, !alias.scope !6394, !noalias !6395
  %.sroa.52.0.i.i = select i1 %i.di, i32 %i.dk, i32 undef
  %i.dl = getelementptr inbounds nuw i8, ptr %i.ar, i64 128
  %i.dm = load i32, ptr %i.dl, align 8, !range !39, !alias.scope !6394, !noalias !6395, !noundef !4 ; 2 uses
  %i.dn = trunc nuw i32 %i.dm to i1
  %.sroa.55.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 132
  %.sroa.55.0.copyload.i.i = load i64, ptr %.sroa.55.0..sroa_idx.i.i, align 4, !alias.scope !6394, !noalias !6395
  %.sroa.55.0.i.i = select i1 %i.dn, i64 %.sroa.55.0.copyload.i.i, i64 undef
  %i.do = getelementptr inbounds nuw i8, ptr %i.ar, i64 140
  %i.dp = load i32, ptr %i.do, align 4, !range !39, !alias.scope !6394, !noalias !6395, !noundef !4 ; 2 uses
  %i.dq = trunc nuw i32 %i.dp to i1
  %.sroa.510.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 144
  %.sroa.510.0.copyload.i.i = load i64, ptr %.sroa.510.0..sroa_idx.i.i, align 8, !alias.scope !6394, !noalias !6395
  %.sroa.510.0.i.i = select i1 %i.dq, i64 %.sroa.510.0.copyload.i.i, i64 undef ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.ar, i64 112
  %i.ds = load i32, ptr %i.dr, align 8, !range !39, !alias.scope !6394, !noalias !6395, !noundef !4 ; 2 uses
  %i.dt = trunc nuw i32 %i.ds to i1
  %i.du = getelementptr inbounds nuw i8, ptr %i.ar, i64 116
  %i.dv = load float, ptr %i.du, align 4, !alias.scope !6394, !noalias !6395
  %.sroa.514.0.i.i = select i1 %i.dt, float %i.dv, float undef
  %i.dw = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  store i64 %i.cv, ptr %i.dw, align 8, !alias.scope !6392, !noalias !6396
  %i.dx = getelementptr inbounds nuw i8, ptr %i.p, i64 80 ; 2 uses
  store <2 x i32> %i.cx, ptr %i.dx, align 8, !alias.scope !6392, !noalias !6396
  %i.dy = getelementptr inbounds nuw i8, ptr %i.p, i64 88
  store i8 %i.da, ptr %i.dy, align 8, !alias.scope !6392, !noalias !6396
  %i.dz = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store i32 %i.dc, ptr %i.dz, align 8, !alias.scope !6392, !noalias !6396
  %i.ea = getelementptr inbounds nuw i8, ptr %i.p, i64 28
  store i32 %.sroa.5.0.i.i, ptr %i.ea, align 4, !alias.scope !6392, !noalias !6396
  %i.eb = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  store i32 %i.dh, ptr %i.eb, align 8, !alias.scope !6392, !noalias !6396
  %i.ec = getelementptr inbounds nuw i8, ptr %i.p, i64 36
  store i32 %.sroa.52.0.i.i, ptr %i.ec, align 4, !alias.scope !6392, !noalias !6396
  %.sroa.510.0..sroa_idx11.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 72
  store i64 %.sroa.510.0.i.i, ptr %.sroa.510.0..sroa_idx11.i.i, align 8, !alias.scope !6392, !noalias !6396
  %i.ed = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  store i32 %i.ds, ptr %i.ed, align 8, !alias.scope !6392, !noalias !6396
  %i.ee = getelementptr inbounds nuw i8, ptr %i.p, i64 44
  store float %.sroa.514.0.i.i, ptr %i.ee, align 4, !alias.scope !6392, !noalias !6396
  %.sroa.0.0.copyload.i = load i64, ptr %i.p, align 8, !noalias !6387
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5.0..sroa_idx.i, i64 48, i1 false), !noalias !6387
  %i.ef = trunc i64 %.sroa.510.0.i.i to i8
  %.sroa.5.sroa.10.0..sroa.5.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 73
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5.sroa.10.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5.sroa.10.0..sroa.5.0..sroa_idx.sroa_idx.i, i64 7, i1 false), !noalias !6387
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i, ptr noundef nonnull align 8 dereferenceable(16) %i.dx, i64 16, i1 false), !noalias !6387
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !6387
  %3 = bitcast i64 %.sroa.55.0.i.i to <2 x i32>
  br label %bb.ab

bb.y:                                             ; preds = %.noexc.i
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ar, i64 128
  %i.eh = load i32, ptr %i.eg, align 8, !alias.scope !6389, !noalias !6390, !noundef !4
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ar, i64 132
  %4 = load <2 x i32>, ptr %i.ei, align 4, !alias.scope !6389, !noalias !6390
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ar, i64 140
  %i.ek = load i32, ptr %i.ej, align 4, !alias.scope !6389, !noalias !6390, !noundef !4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false), !noalias !6387
  %.sroa.0.24..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.24..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false), !noalias !6387
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !6391
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !6391
  br label %bb.ab

bb.z:                                             ; preds = %.body.i, %bb.p
  %i.el = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #42, !noalias !6385
  unreachable

.body:                                            ; preds = %bb.bs, %.body242, %bb.at, %bb.aw, %bb.ae, %bb.p, %bb.aa, %.thread292, %"_ZN4core3ptr104drop_in_place$LT$std..collections..hash..map..HashMap$LT$anki..decks..DeckId$C$anki..decks..Deck$GT$$GT$17h3d89fa835e606e05E.exit255"
  %.sroa.0104.2 = phi i1 [ true, %bb.at ], [ false, %"_ZN4core3ptr104drop_in_place$LT$std..collections..hash..map..HashMap$LT$anki..decks..DeckId$C$anki..decks..Deck$GT$$GT$17h3d89fa835e606e05E.exit255" ], [ true, %.thread292 ], [ true, %bb.p ], [ true, %bb.ae ], [ true, %bb.aa ], [ true, %bb.aw ], [ true, %.body242 ], [ false, %bb.bs ]
  %.pn223 = phi { ptr, i32 } [ %i.gf, %bb.at ], [ %.pn.pn305, %"_ZN4core3ptr104drop_in_place$LT$std..collections..hash..map..HashMap$LT$anki..decks..DeckId$C$anki..decks..Deck$GT$$GT$17h3d89fa835e606e05E.exit255" ], [ %.pn221296, %.thread292 ], [ %.pn.i, %bb.p ], [ %i.ez, %bb.ae ], [ %i.em, %bb.aa ], [ %.pn.pn.ph.i, %bb.aw ], [ %i.gw, %.body242 ], [ %.pn, %bb.bs ] ; 2 uses
  invoke fastcc void @"_ZN4core3ptr61drop_in_place$LT$alloc..vec..Vec$LT$anki..decks..Deck$GT$$GT$17hb1f6e273cb9cf4fcE"(ptr noalias noundef align 8 dereferenceable(24) %i.an) #41
          to label %.body257 unwind label %bb.ce

bb.aa:                                            ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd0227591d4c3ab2aE.exit.thread", %bb.ak, %.noexc235, %bb.aj, %bb.o, %"_ZN4core3ptr104drop_in_place$LT$std..collections..hash..map..HashMap$LT$anki..decks..DeckId$C$anki..decks..Deck$GT$$GT$17h3d89fa835e606e05E.exit", %bb.ax
  %i.em = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ab:                                            ; preds = %bb.y, %bb.x
  %.sroa.5.sroa.9.0.i = phi i8 [ %i.cr, %bb.y ], [ %i.ef, %bb.x ]
  %.sroa.5.sroa.8.0.i = phi i32 [ %i.ek, %bb.y ], [ %i.dp, %bb.x ]
  %.sroa.5.sroa.5.0.i = phi i32 [ %i.eh, %bb.y ], [ %i.dm, %bb.x ]
  %.sroa.0.0.i = phi i64 [ -9223372036854775808, %bb.y ], [ %.sroa.0.0.copyload.i, %bb.x ]
  %5 = phi <2 x i32> [ %4, %bb.y ], [ %3, %bb.x ]
  %i.en = getelementptr inbounds nuw i8, ptr %i.al, i64 168
  store i64 %i.bt, ptr %i.en, align 8, !alias.scope !6385, !noalias !6386
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %i.al, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false), !noalias !6386
  %i.eo = getelementptr inbounds nuw i8, ptr %i.al, i64 176
  store i64 %i.bv, ptr %i.eo, align 8, !alias.scope !6385, !noalias !6386
  %i.ep = getelementptr inbounds nuw i8, ptr %i.al, i64 184
  store i32 %i.bx, ptr %i.ep, align 8, !alias.scope !6385, !noalias !6386
  %i.eq = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.eq, ptr noundef nonnull align 8 dereferenceable(48) %i.r, i64 48, i1 false), !noalias !6386
  %i.er = getelementptr inbounds nuw i8, ptr %i.al, i64 72
  store i64 %.sroa.0.0.i, ptr %i.er, align 8, !alias.scope !6385, !noalias !6386
  %.sroa.5.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.al, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5.0..sroa_idx2.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.i, i64 48, i1 false), !noalias !6386
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx2.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 128
  store i32 %.sroa.5.sroa.5.0.i, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx2.sroa_idx.i, align 8, !alias.scope !6385, !noalias !6386
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx2.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 132
  store <2 x i32> %5, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx2.sroa_idx.i, align 4, !alias.scope !6385, !noalias !6386
  %.sroa.5.sroa.8.0..sroa.5.0..sroa_idx2.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 140
  store i32 %.sroa.5.sroa.8.0.i, ptr %.sroa.5.sroa.8.0..sroa.5.0..sroa_idx2.sroa_idx.i, align 4, !alias.scope !6385, !noalias !6386
  %.sroa.5.sroa.9.0..sroa.5.0..sroa_idx2.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 144
  store i8 %.sroa.5.sroa.9.0.i, ptr %.sroa.5.sroa.9.0..sroa.5.0..sroa_idx2.sroa_idx.i, align 8, !alias.scope !6385, !noalias !6386
  %.sroa.5.sroa.10.0..sroa.5.0..sroa_idx2.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 145
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5.sroa.10.0..sroa.5.0..sroa_idx2.sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5.sroa.10.i, i64 7, i1 false), !noalias !6386
  %.sroa.6.0..sroa_idx3.i = getelementptr inbounds nuw i8, ptr %i.al, i64 152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx3.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i, i64 16, i1 false), !noalias !6386
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.sroa.10.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !6387
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !6387
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  %i.es = getelementptr inbounds nuw i8, ptr %i.an, i64 16 ; 5 uses
  %i.et = load i64, ptr %i.es, align 8, !alias.scope !6397, !noalias !6398, !noundef !4 ; 5 uses
  %i.eu = icmp ult i64 %i.et, 48038396025285291
  call void @llvm.assume(i1 %i.eu)
  %i.ev = load i64, ptr %i.an, align 8, !range !15, !alias.scope !6397, !noalias !6398, !noundef !4
  %i.ew = icmp eq i64 %i.et, %i.ev
  br i1 %i.ew, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17he6467059f328a66aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.an)
          to label %bb.ad unwind label %bb.ae, !noalias !6398

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.ex = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 3 uses
  %i.ey = load ptr, ptr %i.ex, align 8, !alias.scope !6397, !noalias !6398, !nonnull !4, !noundef !4 ; 4 uses
  %.not.i = icmp eq i64 %i.et, 0
  br i1 %.not.i, label %bb.ah, label %bb.af

bb.ae:                                            ; preds = %bb.ac
  %i.ez = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr38drop_in_place$LT$anki..decks..Deck$GT$17hc3e578a44c150c50E"(ptr noalias noundef nonnull align 8 dereferenceable(192) %i.al) #41
          to label %.body unwind label %bb.ag

bb.af:                                            ; preds = %bb.ad
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ey, i64 192
  %i.fb = mul nuw nsw i64 %i.et, 192
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.fa, ptr nonnull align 8 %i.ey, i64 %i.fb, i1 false), !noalias !6398
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ae
  %i.fc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #42
  unreachable

bb.ah:                                            ; preds = %bb.af, %bb.ad
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %i.ey, ptr noundef nonnull align 8 dereferenceable(192) %i.al, i64 192, i1 false)
  %i.fd = add nuw nsw i64 %i.et, 1                ; 2 uses
  store i64 %i.fd, ptr %i.es, align 8, !alias.scope !6397, !noalias !6398
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  br i1 %i.bb, label %bb.ax, label %.thread279

.thread279:                                       ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  br label %bb.aj

bb.ai:                                            ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd0227591d4c3ab2aE.exit.thread"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  %.pr = load i64, ptr %i.es, align 8             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  %i.fe = load ptr, ptr %i.ex, align 8, !nonnull !4, !noundef !4
  call void @llvm.experimental.noalias.scope.decl(metadata !6399)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %.not.i232 = icmp eq i64 %.pr, 0
  br i1 %.not.i232, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %.thread279, %bb.ai
  %i.ff = phi ptr [ %i.ey, %.thread279 ], [ %i.fe, %bb.ai ] ; 4 uses
  %i.fg = phi i64 [ %i.fd, %.thread279 ], [ %.pr, %bb.ai ]
  %i.fh = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !6400
  invoke fastcc void @_ZN4anki5decks6limits10NodeLimits3new17hca0a5b85552f695fE(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.fh, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %i.ff, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.at, i32 noundef %.sroa.5107.0.copyload, i1 noundef zeroext %i.ba)
          to label %.noexc235 unwind label %bb.aa

.noexc235:                                        ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !6400
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !6400
  store i64 2, ptr %i.e, align 8, !noalias !6400
  %i.fi = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fi, i8 0, i64 16, i1 false), !noalias !6400
  invoke void @"_ZN7id_tree4tree20TreeBuilder$LT$T$GT$5build17ha6f94a595756250cE"(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.m, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(96) %i.e)
          to label %.noexc236 unwind label %bb.aa

.noexc236:                                        ; preds = %.noexc235
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !6400
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !6400
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !6400
  store i64 0, ptr %i.d, align 8, !noalias !6400
  invoke void @"_ZN7id_tree4node20NodeBuilder$LT$T$GT$5build17h3b71f96e155d4c29E"(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.j, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.d)
          to label %bb.am unwind label %bb.al, !noalias !6401

bb.ak:                                            ; preds = %bb.ai
  invoke void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @93) #43
          to label %.noexc237 unwind label %bb.aa

.noexc237:                                        ; preds = %bb.ak
  unreachable

bb.al:                                            ; preds = %bb.ar, %bb.aq, %bb.ao, %bb.am, %.noexc236
  %i.fj = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

bb.am:                                            ; preds = %.noexc236
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !6400
  invoke void @"_ZN7id_tree4tree13Tree$LT$T$GT$6insert17h5b69c116ee910f29E"(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.k, ptr noalias noundef nonnull align 8 dereferenceable(96) %i.m, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(80) %i.j, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null)
          to label %bb.an unwind label %bb.al, !noalias !6401

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !6400
  call void @llvm.experimental.noalias.scope.decl(metadata !6402)
  call void @llvm.experimental.noalias.scope.decl(metadata !6403)
  %i.fk = load i8, ptr %i.k, align 8, !range !17, !alias.scope !6403, !noalias !6404, !noundef !4
  %i.fl = trunc nuw i8 %i.fk to i1
  br i1 %i.fl, label %bb.ao, label %bb.ap, !prof !14

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6405
  %i.fm = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  %i.fn = load i8, ptr %i.fm, align 1, !range !17, !alias.scope !6403, !noalias !6404, !noundef !4
  store i8 %i.fn, ptr %i.b, align 1, !noalias !6405
  invoke void @_ZN4core6result13unwrap_failed17h8e46864fd8bf13c6E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @238, i64 noundef 43, ptr noundef nonnull align 1 %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @240, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @94) #43
          to label %.noexc.i234 unwind label %bb.al, !noalias !6401

.noexc.i234:                                      ; preds = %bb.ao
  unreachable

bb.ap:                                            ; preds = %bb.an
  %i.fo = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.fo, i64 24, i1 false), !alias.scope !6406, !noalias !6407
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !6400
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !6400
  %i.fp = call align 8 ptr @llvm.threadlocal.address.p0(ptr @"_ZN3std4hash6random11RandomState3new4KEYS29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$23__RUST_STD_INTERNAL_VAL17h52bbdbbe49363830E") ; 3 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 16
  %i.fr = load i8, ptr %i.fq, align 8, !range !17, !noalias !6408, !noundef !4
  %i.fs = trunc nuw i8 %i.fr to i1
  br i1 %i.fs, label %.noexc8.thread.i, label %bb.aq, !prof !22

bb.aq:                                            ; preds = %bb.ap
  %i.ft = invoke noundef ptr @"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h58eec1f8190c6d30E"(ptr noundef nonnull align 8 %i.fp, ptr noalias noundef align 8 dereferenceable_or_null(24) null)
          to label %.noexc8.i unwind label %bb.al, !noalias !6401 ; 2 uses

.noexc8.i:                                        ; preds = %bb.aq
  %i.fu = icmp eq ptr %i.ft, null
  br i1 %i.fu, label %bb.ar, label %.noexc8.thread.i

bb.ar:                                            ; preds = %.noexc8.i
  invoke void @_ZN3std6thread5local18panic_access_error17h8f81ecb49b0705c7E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @60) #43
          to label %.noexc9.i unwind label %bb.al, !noalias !6401

.noexc9.i:                                        ; preds = %bb.ar
  unreachable

.noexc8.thread.i:                                 ; preds = %.noexc8.i, %bb.ap
  %.sroa.0.0.i.i.i17.i = phi ptr [ %i.ft, %.noexc8.i ], [ %i.fp, %bb.ap ] ; 3 uses
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.fv = load <2 x i64>, ptr %.sroa.0.0.i.i.i17.i, align 8, !noalias !6409
  %i.fw = load i64, ptr %.sroa.0.0.i.i.i17.i, align 8, !noalias !6409, !noundef !4
  %i.fx = add i64 %i.fw, 1
  store i64 %i.fx, ptr %.sroa.0.0.i.i.i17.i, align 8, !noalias !6409
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) @10, i64 32, i1 false), !noalias !6400
  store <2 x i64> %i.fv, ptr %.sroa.44.0..sroa_idx.i, align 8, !noalias !6400
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !6400
  %i.fy = getelementptr inbounds nuw i8, ptr %i.ff, i64 168
  %i.fz = load i64, ptr %i.fy, align 8, !alias.scope !6399, !noalias !6410, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !6400
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !noalias !6400
  invoke void @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17h141136c0c0dc11caE"(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.h, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.i, i64 noundef %i.fz, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.c)
          to label %bb.as unwind label %bb.av, !noalias !6401

bb.as:                                            ; preds = %.noexc8.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !6400
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !6400
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !6400
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.g, ptr noundef nonnull align 8 dereferenceable(96) %i.m, i64 96, i1 false), !noalias !6400
  %i.ga = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ga, ptr noundef nonnull align 8 dereferenceable(48) %i.i, i64 48, i1 false), !noalias !6400
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !6400
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ff, i64 192
  %i.gc = getelementptr [192 x i8], ptr %i.ff, i64 %i.fg
  %i.gd = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.gb, ptr %i.gd, align 8, !noalias !6400
  %i.ge = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr %i.gc, ptr %i.ge, align 8, !noalias !6400
  store i64 0, ptr %i.f, align 8, !noalias !6400
  invoke fastcc void @_ZN4anki5decks6limits12LimitTreeMap15add_child_nodes17hc267cd2810d91f08E(ptr noalias noundef align 8 dereferenceable(144) %i.g, ptr noalias noundef readonly align 8 captures(address) dereferenceable(24) %i.l, ptr noalias noundef align 8 dereferenceable(32) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.at, i32 noundef %.sroa.5107.0.copyload, i1 noundef zeroext %i.ba)
          to label %bb.bh unwind label %bb.at, !noalias !6401

bb.at:                                            ; preds = %bb.as
  %i.gf = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr54drop_in_place$LT$anki..decks..limits..LimitTreeMap$GT$17hc79ce5c27b093697E"(ptr noalias noundef align 8 dereferenceable(144) %i.g) #41
          to label %.body unwind label %bb.au, !noalias !6401

bb.au:                                            ; preds = %bb.aw, %bb.av, %bb.at
end_hunk_0
