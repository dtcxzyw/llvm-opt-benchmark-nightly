Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/anki-0407df152365de94.anki.49bf70e6e198d769-cgu.00?download=true
inline.NumInlined: 5827
inline.NumDeleted: 1787
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@"_ZN4anki10collection8transact46_$LT$impl$u20$anki..collection..Collection$GT$14transact_inner17hdf474e536c8e1bc6E":bb.a
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(384) %i.au)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i.i" unwind label %bb.ah, !noalias !861

bb.ah:                                            ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE.exit.i.i.i.i.i"
  %i.fz = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

.body.i.i.i.i:                                    ; preds = %bb.ah, %bb.af
  %eh.lpad-body.i.i.i.i = phi { ptr, i32 } [ %i.fz, %bb.ah ], [ %i.fx, %bb.af ]
  %i.ga = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  invoke fastcc void @"_ZN4core3ptr65drop_in_place$LT$anki_proto..deck_config..deck_config..Config$GT$17h8cd7d46a28072120E"(ptr noalias noundef align 8 dereferenceable(336) %i.ga) #27
          to label %.body.i.i.i unwind label %bb.ai, !noalias !861

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i.i": ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE.exit.i.i.i.i.i"
  %i.gb = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  invoke fastcc void @"_ZN4core3ptr65drop_in_place$LT$anki_proto..deck_config..deck_config..Config$GT$17h8cd7d46a28072120E"(ptr noalias noundef align 8 dereferenceable(336) %i.gb)
          to label %"_ZN4core3ptr49drop_in_place$LT$anki..deckconfig..DeckConfig$GT$17hb084b21ef4d188d6E.exit.i.i.i" unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !861

bb.ai:                                            ; preds = %.body.i.i.i.i
  %i.gc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28, !noalias !861
  unreachable

bb.aj:                                            ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !858
  %i.gd = icmp ult i64 %.sroa.6138.0.copyload.i.i.i, 24019198012642646
  call void @llvm.assume(i1 %i.gd)
  %.idx.i.i.i = mul nuw nsw i64 %.sroa.6138.0.copyload.i.i.i, 384
  %i.ge = getelementptr inbounds nuw i8, ptr %.sroa.5137.0.copyload.i.i.i, i64 %.idx.i.i.i
  %i.gf = icmp sgt i64 %.sroa.0136.0.copyload.i.i.i, -1
  call void @llvm.assume(i1 %i.gf)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !858
  store ptr %.sroa.5137.0.copyload.i.i.i, ptr %i.ar, align 8, !noalias !858
  %.sroa.613.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 8 ; 3 uses
  store ptr %.sroa.5137.0.copyload.i.i.i, ptr %.sroa.613.0..sroa_idx.i.i.i, align 8, !noalias !858
  %.sroa.714.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  store i64 %.sroa.0136.0.copyload.i.i.i, ptr %.sroa.714.0..sroa_idx.i.i.i, align 8, !noalias !858
  %.sroa.815.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 24 ; 2 uses
  store ptr %i.ge, ptr %.sroa.815.0..sroa_idx.i.i.i, align 8, !noalias !858
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7287.i.i.i)
  %i.gg = icmp eq i64 %.sroa.6138.0.copyload.i.i.i, 0
  br i1 %i.gg, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h62875096f65b5adbE.exit.thread.i.i.i", label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h62875096f65b5adbE.exit.lr.ph.i.i.i"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h62875096f65b5adbE.exit.lr.ph.i.i.i": ; preds = %bb.aj
  %.sroa.7287.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.gh = getelementptr inbounds nuw i8, ptr %i.aq, i64 360 ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.gj = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  %i.gk = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.gl = getelementptr inbounds nuw i8, ptr %i.aq, i64 24 ; 2 uses
  br label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h62875096f65b5adbE.exit.i.i.i"

.body276.i.i.i:                                   ; preds = %.loopexit.split-lp385.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.cv, %.body.i271.i.i.i, %bb.ak
  %.pn244.i.i.i = phi { ptr, i32 } [ %i.la, %bb.cv ], [ %lpad.loopexit.split-lp914, %.loopexit.split-lp385.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.gm, %bb.ak ], [ %eh.lpad-body.i272.i.i.i, %.body.i271.i.i.i ]
  invoke void @"_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h10cee6c6682fdc96E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ar)
          to label %.thread307.i.i.i unwind label %bb.bi, !noalias !861

bb.ak:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i274.i.i.i"
  %i.gm = landingpad { ptr, i32 }
          cleanup
  br label %.body276.i.i.i

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h62875096f65b5adbE.exit.i.i.i": ; preds = %"_ZN4core3ptr49drop_in_place$LT$anki..deckconfig..DeckConfig$GT$17hb084b21ef4d188d6E.exit278.i.i.i", %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h62875096f65b5adbE.exit.lr.ph.i.i.i"
  %i.gn = phi ptr [ %.sroa.5137.0.copyload.i.i.i, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h62875096f65b5adbE.exit.lr.ph.i.i.i" ], [ %i.ld, %"_ZN4core3ptr49drop_in_place$LT$anki..deckconfig..DeckConfig$GT$17hb084b21ef4d188d6E.exit278.i.i.i" ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !863)
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 384
  store ptr %i.go, ptr %.sroa.613.0..sroa_idx.i.i.i, align 8, !alias.scope !863, !noalias !858
  %.sroa.0285.0.copyload286.i.i.i = load i64, ptr %i.gn, align 8, !noalias !864 ; 2 uses
  %.sroa.7287.0..sroa_idx288.i.i.i = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(376) %.sroa.7287.i.i.i, ptr noundef nonnull align 8 dereferenceable(376) %.sroa.7287.0..sroa_idx288.i.i.i, i64 376, i1 false), !noalias !864
  %.not228.i.i.i = icmp eq i64 %.sroa.0285.0.copyload286.i.i.i, -9223372036854775808
  br i1 %.not228.i.i.i, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h62875096f65b5adbE.exit.thread.i.i.i", label %bb.al

bb.al:                                            ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h62875096f65b5adbE.exit.i.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !858
  store i64 %.sroa.0285.0.copyload286.i.i.i, ptr %i.aq, align 8, !noalias !858
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(376) %.sroa.7287.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(376) %.sroa.7287.i.i.i, i64 376, i1 false), !noalias !858
  %i.gp = load i64, ptr %i.gi, align 8, !alias.scope !865, !noalias !858, !noundef !4
  %i.gq = icmp eq i64 %i.gp, 0
  br i1 %i.gq, label %select.unfold.i.i.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.gr = invoke noundef i64 @_ZN4core4hash11BuildHasher8hash_one17h51d0505e4c32f33dE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.gj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.gh)
          to label %.noexc.i.i.i unwind label %.loopexit.split-lp385.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !861 ; 2 uses

.noexc.i.i.i:                                     ; preds = %bb.am
  call void @llvm.experimental.noalias.scope.decl(metadata !866)
  call void @llvm.experimental.noalias.scope.decl(metadata !867)
  %i.gs = lshr i64 %i.gr, 57
  %i.gt = trunc nuw nsw i64 %i.gs to i8
  %i.gu = load i64, ptr %i.gk, align 8, !alias.scope !868, !noalias !858, !noundef !4 ; 2 uses
  %i.gv = load ptr, ptr %i.av, align 8, !alias.scope !868, !noalias !858, !nonnull !4, !noundef !4 ; 2 uses
  %.sroa.0.0.vec.insert.i.i.i.i.i.i = insertelement <16 x i8> poison, i8 %i.gt, i64 0
  %.sroa.0.15.vec.insert.i.i.i.i.i.i = shufflevector <16 x i8> %.sroa.0.0.vec.insert.i.i.i.i.i.i, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.an

bb.an:                                            ; preds = %bb.ap, %.noexc.i.i.i
  %.sroa.9.0.i.i.i.i.i.i = phi i64 [ 0, %.noexc.i.i.i ], [ %i.hm, %bb.ap ]
  %.pn.i.i.i.i.i = phi i64 [ %i.gr, %.noexc.i.i.i ], [ %i.hn, %bb.ap ]
  %.sroa.01.0.i.i.i.i.i.i = and i64 %.pn.i.i.i.i.i, %i.gu ; 3 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 %.sroa.01.0.i.i.i.i.i.i
  %.sroa.0.0.copyload.i26.i.i.i.i.i = load <16 x i8>, ptr %i.gw, align 1, !noalias !869 ; 2 uses
  %i.gx = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i.i.i, %.sroa.0.15.vec.insert.i.i.i.i.i.i
  %i.gy = bitcast <16 x i1> %i.gx to i16          ; 2 uses
  %.not.i.not32.i.i.i.i.i = icmp eq i16 %i.gy, 0
  br i1 %.not.i.not32.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.an, %bb.ao
  %.sroa.06.0.i33.i.i.i.i.i = phi i16 [ %i.hl, %bb.ao ], [ %i.gy, %bb.an ] ; 3 uses
  %i.gz = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i.i.i.i.i, i1 true)
  %i.ha = zext nneg i16 %i.gz to i64
  %i.hb = add i64 %.sroa.01.0.i.i.i.i.i.i, %i.ha
  %i.hc = and i64 %i.hb, %i.gu
  %i.hd = sub nsw i64 0, %i.hc
  %i.he = getelementptr inbounds [8 x i8], ptr %i.gv, i64 %i.hd
  %i.hf = getelementptr inbounds i8, ptr %i.he, i64 -8
  %i.hg = invoke noundef zeroext i1 @"_ZN52_$LT$Q$u20$as$u20$hashbrown..Equivalent$LT$K$GT$$GT$10equivalent17h8f93f77da693ba91E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.gh, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.hf)
          to label %.noexc249.i.i.i unwind label %.loopexit.split-lp385.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !861

.noexc249.i.i.i:                                  ; preds = %.lr.ph.i.i.i.i.i
  br i1 %i.hg, label %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h2a011b2adf5ae946E.exit.i.i.i", label %bb.ao, !prof !6

._crit_edge.i.i.i.i.i:                            ; preds = %bb.ao, %bb.an
  %i.hh = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i.i.i, splat (i8 -1)
  %i.hi = bitcast <16 x i1> %i.hh to i16
  %i.hj = icmp eq i16 %i.hi, 0
  br i1 %i.hj, label %bb.ap, label %select.unfold.i.i.i, !prof !10

bb.ao:                                            ; preds = %.noexc249.i.i.i
  %i.hk = add i16 %.sroa.06.0.i33.i.i.i.i.i, -1
  %i.hl = and i16 %i.hk, %.sroa.06.0.i33.i.i.i.i.i ; 2 uses
  %.not.i.not.i.i.i.i.i = icmp eq i16 %i.hl, 0
  br i1 %.not.i.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

bb.ap:                                            ; preds = %._crit_edge.i.i.i.i.i
  %i.hm = add i64 %.sroa.9.0.i.i.i.i.i.i, 16      ; 2 uses
  %i.hn = add i64 %.sroa.01.0.i.i.i.i.i.i, %i.hm
  br label %bb.an

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h62875096f65b5adbE.exit.thread.i.i.i": ; preds = %"_ZN4core3ptr49drop_in_place$LT$anki..deckconfig..DeckConfig$GT$17hb084b21ef4d188d6E.exit278.i.i.i", %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h62875096f65b5adbE.exit.i.i.i", %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7287.i.i.i)
  invoke void @"_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h10cee6c6682fdc96E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ar)
          to label %"_ZN4core3ptr88drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$anki..deckconfig..DeckConfig$GT$$GT$17h5a6889366e285f8eE.exit251.i.i.i" unwind label %bb.ac, !noalias !861

"_ZN4core3ptr88drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$anki..deckconfig..DeckConfig$GT$$GT$17h5a6889366e285f8eE.exit251.i.i.i": ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h62875096f65b5adbE.exit.thread.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !858
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !858
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(384) %i.ao, ptr noundef nonnull align 8 dereferenceable(384) %i.au, i64 384, i1 false), !noalias !858
  %i.ho = load i64, ptr %i.dp, align 8, !alias.scope !870, !noalias !836, !noundef !4 ; 4 uses
  %i.hp = load i64, ptr %i.cz, align 8, !range !12, !alias.scope !870, !noalias !836, !noundef !4
  %i.hq = icmp eq i64 %i.ho, %i.hp
  br i1 %i.hq, label %bb.aq, label %bb.at

bb.aq:                                            ; preds = %"_ZN4core3ptr88drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$anki..deckconfig..DeckConfig$GT$$GT$17h5a6889366e285f8eE.exit251.i.i.i"
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17hc6ae48766870c564E"(ptr noalias noundef nonnull align 8 dereferenceable(136) %i.cz)
          to label %bb.at unwind label %bb.ar, !noalias !871

bb.ar:                                            ; preds = %bb.aq
  %i.hr = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr49drop_in_place$LT$anki..deckconfig..DeckConfig$GT$17hb084b21ef4d188d6E"(ptr noalias noundef nonnull align 8 dereferenceable(384) %i.ao) #27
          to label %.body.i.i.i unwind label %bb.as, !noalias !861

bb.as:                                            ; preds = %bb.ar
  %i.hs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28, !noalias !861
  unreachable

bb.at:                                            ; preds = %bb.aq, %"_ZN4core3ptr88drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$anki..deckconfig..DeckConfig$GT$$GT$17h5a6889366e285f8eE.exit251.i.i.i"
  %i.ht = load ptr, ptr %i.fb, align 8, !alias.scope !870, !noalias !836, !nonnull !4, !noundef !4 ; 3 uses
  %i.hu = getelementptr inbounds nuw [384 x i8], ptr %i.ht, i64 %i.ho
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(384) %i.hu, ptr noundef nonnull align 8 dereferenceable(384) %i.ao, i64 384, i1 false), !noalias !861
  %i.hv = add nsw i64 %i.ho, 1                    ; 4 uses
  store i64 %i.hv, ptr %i.dp, align 8, !alias.scope !870, !noalias !836
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !858
  %i.hw = icmp slt i64 %i.ho, 24019198012642645
  call void @llvm.assume(i1 %i.hw)
  %i.hx = trunc i64 %i.hv to i32
  %.idx414.i.i.i = mul nuw nsw i64 %i.hv, 384
  %i.hy = getelementptr inbounds nuw i8, ptr %i.ht, i64 %.idx414.i.i.i
  %i.hz = icmp eq i64 %i.hv, 0
  br i1 %i.hz, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.at
  %i.ia = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ic = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.id = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ie = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.if = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ad, i64 44
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.il = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.im = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  %.sroa.4182.0..sroa_idx.i.i.i.a = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.in = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %.sroa.4194.0..sroa_idx.i.i.i.a = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.io = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ip = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.is = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %.sroa.4186.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.it = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %.sroa.4190.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.iu = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.iv = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.iw = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.ix = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %.sroa.10.8..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 24 ; 2 uses
  br label %bb.au

bb.au:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit270.i.i.i", %.lr.ph.i.i.i
  %.sroa.0289.0413.i.i.i = phi ptr [ %i.ht, %.lr.ph.i.i.i ], [ %i.iy, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit270.i.i.i" ] ; 14 uses
  %.sroa.8291.0412.i.i.i = phi i32 [ 0, %.lr.ph.i.i.i ], [ %i.iz, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit270.i.i.i" ]
  %i.iy = getelementptr inbounds nuw i8, ptr %.sroa.0289.0413.i.i.i, i64 384 ; 2 uses
  %i.iz = add i32 %.sroa.8291.0412.i.i.i, 1       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !858
  %i.ja = getelementptr inbounds nuw i8, ptr %.sroa.0289.0413.i.i.i, i64 192
  %i.jb = getelementptr inbounds nuw i8, ptr %.sroa.0289.0413.i.i.i, i64 200
  %i.jc = load ptr, ptr %i.jb, align 8, !noalias !861, !nonnull !4, !noundef !4
  %i.jd = getelementptr inbounds nuw i8, ptr %.sroa.0289.0413.i.i.i, i64 208
  %i.je = load i64, ptr %i.jd, align 8, !noalias !861, !noundef !4
  %i.jf = invoke { ptr, i64 } @"_ZN4core3str21_$LT$impl$u20$str$GT$12trim_matches17h24b74c5c35210385E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.jc, i64 noundef %i.je)
          to label %bb.av unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !861

._crit_edge.i.i.i:                                ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit270.i.i.i", %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !858
  invoke void @"_ZN79_$LT$hashbrown..raw..RawTable$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hddce632ffba104bcE"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.av)
          to label %bb.cz unwind label %.loopexit.split-lp869.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !845

bb.av:                                            ; preds = %bb.au
  %i.jg = extractvalue { ptr, i64 } %i.jf, 1
  %i.jh = icmp eq i64 %i.jg, 0
  br i1 %i.jh, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !858
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.756.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !858
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !858
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !858
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !858
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17he0bc0e0b0b5c0846E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ai, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.0289.0413.i.i.i)
          to label %bb.ay unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !861

bb.ax:                                            ; preds = %bb.av
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17he0bc0e0b0b5c0846E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.an, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ja)
          to label %bb.bh unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !861

bb.ay:                                            ; preds = %bb.aw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ia, ptr noundef nonnull align 8 dereferenceable(24) %i.ai, i64 24, i1 false), !noalias !858
  store i64 -9223372036854775783, ptr %i.aj, align 8, !noalias !858
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !858
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !858
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !858
  store i8 7, ptr %i.ib, align 8, !noalias !858
  store i64 -9223372036854775794, ptr %i.ag, align 8, !noalias !858
  invoke void @"_ZN52_$LT$T$u20$as$u20$anki..search..builder..Negated$GT$7negated17hdcad9537b184fa5fE"(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.ah, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(72) %i.ag)
          to label %bb.az unwind label %bb.bj, !noalias !861

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE.exit.i265.i.i.i", %bb.bf, %bb.ba, %bb.az, %bb.ax, %bb.aw, %bb.au, %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE.exit.i.i.i.i", %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i.i", %bb.y
  %lpad.loopexit.split-lp870 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

bb.az:                                            ; preds = %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !858
  invoke void @"_ZN57_$LT$T$u20$as$u20$anki..search..builder..JoinSearches$GT$3and17hc11143b4a81b091dE"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ak, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(72) %i.aj, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(72) %i.ah)
          to label %bb.ba unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !861

bb.ba:                                            ; preds = %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !858
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !858
  invoke void @"_ZN84_$LT$anki..search..builder..SearchBuilder$u20$as$u20$anki..search..TryIntoSearch$GT$15try_into_search17h3bdc7ac4489cba63E"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.al, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.ak)
          to label %bb.bb unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !861

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !858
  %i.ji = load i64, ptr %i.al, align 8, !range !14, !noalias !858, !noundef !4 ; 2 uses
  %.not230.i.i.i = icmp eq i64 %i.ji, -9223372036854775773
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.756.i.i.i, ptr noundef nonnull align 8 dereferenceable(72) %i.ic, i64 72, i1 false), !noalias !858
  br i1 %.not230.i.i.i, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %.sroa.5166.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.al, i64 80
  %.sroa.3169.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.cr, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.3169.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5166.0..sroa_idx.i.i.i, i64 32, i1 false), !noalias !862
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !858
  %.sroa.2168.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.2168.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.756.i.i.i, i64 72, i1 false), !noalias !862
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.756.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !858
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i"

bb.bd:                                            ; preds = %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !858
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.am, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.756.i.i.i, i64 72, i1 false), !noalias !858
  invoke void @"_ZN4anki6search6writer80_$LT$impl$u20$alloc..string..ToString$u20$for$u20$anki..search..parser..Node$GT$9to_string17h875dd2e2e865900cE"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.an, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.am)
          to label %bb.bf unwind label %bb.be, !noalias !861

bb.be:                                            ; preds = %bb.bd
  %i.jj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr47drop_in_place$LT$anki..search..parser..Node$GT$17h210129451299b904E"(ptr noalias noundef align 8 dereferenceable(72) %i.am) #27
          to label %.body.i.i.i unwind label %bb.bi, !noalias !861

bb.bf:                                            ; preds = %bb.bd
  invoke fastcc void @"_ZN4core3ptr47drop_in_place$LT$anki..search..parser..Node$GT$17h210129451299b904E"(ptr noalias noundef align 8 dereferenceable(72) %i.am)
          to label %bb.bg unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !861

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.756.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !858
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !858
  invoke void @_ZN4anki9scheduler4fsrs6params36ignore_revlogs_before_ms_from_config17h9681a356a4ba294dE(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.af, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(384) %.sroa.0289.0413.i.i.i)
          to label %bb.bk unwind label %.loopexit.split-lp380.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !861

bb.bi:                                            ; preds = %.thread307.i.i.i, %.loopexit.split-lp385.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.cg, %bb.bz, %.loopexit.split-lp380.i.i.i, %bb.bj, %bb.be, %.body276.i.i.i, %.body.i.i.i
  %i.jk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28, !noalias !861
  unreachable

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i": ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE.exit.i.i.i.i", %bb.bc
  %.pr1051.i.i = phi i64 [ %.pr1052.i.i, %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE.exit.i.i.i.i" ], [ %i.ji, %bb.bc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !858
  br label %"_ZN4core3ptr49drop_in_place$LT$anki..deckconfig..DeckConfig$GT$17hb084b21ef4d188d6E.exit.i.i.i"

bb.bj:                                            ; preds = %bb.ay
  %i.jl = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr53drop_in_place$LT$anki..search..parser..SearchNode$GT$17h13c416b80bdb6889E"(ptr noalias noundef align 8 dereferenceable(72) %i.aj) #27
          to label %.body.i.i.i unwind label %bb.bi, !noalias !861

.loopexit.split-lp380.i.i.i:                      ; preds = %.loopexit.split-lp380.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.cg, %bb.bz, %"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$f32$GT$$GT$17h936e3e9dad5717c4E.exit.i.i.i.i"
  %.pn241.i.i.i = phi { ptr, i32 } [ %eh.lpad-body257.i.i.i, %"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$f32$GT$$GT$17h936e3e9dad5717c4E.exit.i.i.i.i" ], [ %i.km, %bb.cg ], [ %i.kj, %bb.bz ], [ %lpad.loopexit.split-lp873, %.loopexit.split-lp380.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.an) #27
          to label %.body.i.i.i unwind label %bb.bi, !noalias !861

.loopexit.split-lp380.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ck, %bb.ch, %bb.by, %bb.bq, %bb.bh, %bb.cb
  %lpad.loopexit.split-lp873 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp380.i.i.i

bb.bk:                                            ; preds = %bb.bh
  %i.jm = load i64, ptr %i.af, align 8, !range !14, !noalias !858, !noundef !4 ; 2 uses
  %.not232.i.i.i = icmp eq i64 %i.jm, -9223372036854775773
  %i.jn = load i64, ptr %i.id, align 8, !noalias !858 ; 2 uses
  br i1 %.not232.i.i.i, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %.sroa.5175.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %.sroa.3178.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.3178.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.5175.0..sroa_idx.i.i.i, i64 96, i1 false), !noalias !862
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !858
  %.sroa.2177.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  store i64 %i.jn, ptr %.sroa.2177.0..sroa_idx.i.i.i, align 8, !alias.scope !849, !noalias !840
  br label %bb.cd

bb.bm:                                            ; preds = %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !858
  %i.jo = getelementptr inbounds nuw i8, ptr %.sroa.0289.0413.i.i.i, i64 64
  %i.jp = load i64, ptr %i.jo, align 8, !noalias !861, !noundef !4 ; 2 uses
  %i.jq = icmp ult i64 %i.jp, 2305843009213693952
  call void @llvm.assume(i1 %i.jq)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !858
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !858
  %i.jr = load ptr, ptr %i.ie, align 8, !noalias !858, !nonnull !4, !noundef !4
  %i.js = load i64, ptr %i.if, align 8, !noalias !858, !noundef !4
  %i.jt = getelementptr inbounds nuw i8, ptr %.sroa.0289.0413.i.i.i, i64 120 ; 6 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %.sroa.0289.0413.i.i.i, i64 136
  %i.jv = load i64, ptr %i.ju, align 8, !noalias !861, !noundef !4 ; 2 uses
  %i.jw = icmp ult i64 %i.jv, 2305843009213693952
  call void @llvm.assume(i1 %i.jw)
  %i.jx = icmp eq i64 %i.jv, 0
  br i1 %i.jx, label %bb.bn, label %bb.bq

bb.bn:                                            ; preds = %bb.bm
  %i.jy = getelementptr inbounds nuw i8, ptr %.sroa.0289.0413.i.i.i, i64 112
  %i.jz = load i64, ptr %i.jy, align 8, !noalias !861, !noundef !4 ; 2 uses
  %i.ka = icmp ult i64 %i.jz, 2305843009213693952
  call void @llvm.assume(i1 %i.ka)
  %i.kb = icmp eq i64 %i.jz, 0
  br i1 %i.kb, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.kc = getelementptr inbounds nuw i8, ptr %.sroa.0289.0413.i.i.i, i64 72
  br label %bb.bq

bb.bp:                                            ; preds = %bb.bn
  %i.kd = getelementptr inbounds nuw i8, ptr %.sroa.0289.0413.i.i.i, i64 96
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo, %bb.bm
  %.sroa.073.0.i.i.i = phi ptr [ %i.kc, %bb.bo ], [ %i.kd, %bb.bp ], [ %i.jt, %bb.bm ]
  store ptr %i.jr, ptr %i.ad, align 8, !noalias !858
  store i64 %i.js, ptr %i.ig, align 8, !noalias !858
  store i64 %i.jn, ptr %i.ih, align 8, !noalias !858
  store i32 %i.iz, ptr %i.ii, align 8, !noalias !858
  store i32 %i.hx, ptr %i.ij, align 4, !noalias !858
  store ptr %.sroa.073.0.i.i.i, ptr %i.ik, align 8, !noalias !858
  store i64 %i.jp, ptr %i.il, align 8, !noalias !858
  store i8 0, ptr %i.im, align 8, !noalias !858
  invoke void @"_ZN4anki9scheduler4fsrs6params46_$LT$impl$u20$anki..collection..Collection$GT$14compute_params17hf00d161226adb890E"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.ae, ptr noalias noundef nonnull align 8 dereferenceable(728) %1, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(56) %i.ad)
          to label %bb.br unwind label %.loopexit.split-lp380.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !861

bb.br:                                            ; preds = %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !858
  %i.ke = load i64, ptr %i.ae, align 8, !range !14, !noalias !858, !noundef !4 ; 2 uses
  switch i64 %i.ke, label %bb.ca [
    i64 -9223372036854775773, label %bb.bs
    i64 -9223372036854775798, label %bb.cb
  ]

bb.bs:                                            ; preds = %bb.br
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !858
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ac, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4182.0..sroa_idx.i.i.i.a, i64 32, i1 false), !noalias !858
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !858
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !858
  store ptr %.sroa.0289.0413.i.i.i, ptr %i.aa, align 8, !noalias !858
  store ptr @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..fmt..Display$GT$3fmt17h9e12be448e379ec2E", ptr %i.in, align 8, !noalias !858
  store ptr %i.ac, ptr %.sroa.4194.0..sroa_idx.i.i.i.a, align 8, !noalias !858
  store ptr @"_ZN65_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h7f6cee95f0341d2cE", ptr %i.io, align 8, !noalias !858
  store ptr @46, ptr %i.ab, align 8, !noalias !858
  store i64 3, ptr %i.ip, align 8, !noalias !858
  store ptr null, ptr %i.iq, align 8, !noalias !858
  store ptr %i.aa, ptr %i.ir, align 8, !noalias !858
  store i64 2, ptr %i.is, align 8, !noalias !858
  invoke void @_ZN3std2io5stdio6_print17h3fda082316a9dfcbE(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.ab)
          to label %bb.bt unwind label %bb.bz, !noalias !861

"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$f32$GT$$GT$17h936e3e9dad5717c4E.exit.i.i.i.i": ; preds = %bb.bx, %bb.bu
  %eh.lpad-body257.i.i.i = phi { ptr, i32 } [ %i.kh, %bb.bx ], [ %i.kf, %bb.bu ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.jt, ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 24, i1 false), !noalias !861
  br label %.loopexit.split-lp380.i.i.i

bb.bt:                                            ; preds = %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !858
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !858
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i64 24, i1 false), !noalias !858
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hce7e94c3e5886d6aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.jt)
          to label %bb.bv unwind label %bb.bu, !noalias !861

bb.bu:                                            ; preds = %bb.bt
  %i.kf = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h839c12d139ef9055E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.jt)
          to label %"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$f32$GT$$GT$17h936e3e9dad5717c4E.exit.i.i.i.i" unwind label %bb.bw, !noalias !861

bb.bv:                                            ; preds = %bb.bt
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h839c12d139ef9055E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.jt)
          to label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$f32$GT$$GT$17h856f8f2c8d511aa4E.exit.i.i.i" unwind label %bb.bx, !noalias !861

bb.bw:                                            ; preds = %bb.bu
  %i.kg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28, !noalias !861
  unreachable

bb.bx:                                            ; preds = %bb.bv
  %i.kh = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$f32$GT$$GT$17h936e3e9dad5717c4E.exit.i.i.i.i"

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$f32$GT$$GT$17h856f8f2c8d511aa4E.exit.i.i.i": ; preds = %bb.bv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.jt, ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 24, i1 false), !noalias !861
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !858
  br label %bb.by

bb.by:                                            ; preds = %bb.ci, %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$f32$GT$$GT$17h856f8f2c8d511aa4E.exit.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !858
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !872
  invoke void @"_ZN4anki9scheduler46_$LT$impl$u20$anki..collection..Collection$GT$14scheduler_info17h26ff3f0e4f485b52E"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.r, ptr noalias noundef nonnull align 8 dereferenceable(728) %1)
          to label %.noexc259.i.i.i unwind label %.loopexit.split-lp380.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !861

.noexc259.i.i.i:                                  ; preds = %bb.by
  %i.ki = load i64, ptr %i.r, align 8, !range !14, !noalias !872, !noundef !4 ; 2 uses
  %.not.i258.i.i.i = icmp eq i64 %i.ki, -9223372036854775773
  br i1 %.not.i258.i.i.i, label %bb.ck, label %bb.cj

bb.bz:                                            ; preds = %bb.bs
  %i.kj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$f32$GT$$GT$17h856f8f2c8d511aa4E"(ptr noalias noundef align 8 dereferenceable(24) %i.ac) #27
          to label %.loopexit.split-lp380.i.i.i unwind label %bb.bi, !noalias !861

bb.ca:                                            ; preds = %bb.br
  %4 = icmp ne i64 %i.ke, -9223372036854775802
  call void @llvm.assume(i1 %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !858
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.y, ptr noundef nonnull align 8 dereferenceable(112) %i.ae, i64 112, i1 false), !noalias !858
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !858
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !858
  store ptr %.sroa.0289.0413.i.i.i, ptr %i.w, align 8, !noalias !858
  store ptr @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..fmt..Display$GT$3fmt17h9e12be448e379ec2E", ptr %.sroa.4186.0..sroa_idx.i.i.i, align 8, !noalias !858
  store ptr %i.y, ptr %i.it, align 8, !noalias !858
  store ptr @"_ZN61_$LT$anki..error..AnkiError$u20$as$u20$core..fmt..Display$GT$3fmt17h60e6009c7d8b3515E", ptr %.sroa.4190.0..sroa_idx.i.i.i, align 8, !noalias !858
  store ptr @46, ptr %i.x, align 8, !noalias !858
  store i64 3, ptr %i.iu, align 8, !noalias !858
  store ptr null, ptr %i.iv, align 8, !noalias !858
  store ptr %i.w, ptr %i.iw, align 8, !noalias !858
  store i64 2, ptr %i.ix, align 8, !noalias !858
  invoke void @_ZN3std2io5stdio6_print17h3fda082316a9dfcbE(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.x)
          to label %bb.ch unwind label %bb.cg, !noalias !861

bb.cb:                                            ; preds = %bb.br
  invoke void @"_ZN4core3ptr43drop_in_place$LT$anki..error..AnkiError$GT$17h49e25de86dfbbe0cE"(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.ae)
          to label %bb.cc unwind label %.loopexit.split-lp380.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !861

bb.cc:                                            ; preds = %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !858
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cm, %bb.cj, %bb.cc, %bb.bl
  %.pr1052.i.i = phi i64 [ %i.kp, %bb.cm ], [ %i.ki, %bb.cj ], [ -9223372036854775798, %bb.cc ], [ %i.jm, %bb.bl ]
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.an)
          to label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE.exit.i.i.i.i" unwind label %bb.ce, !noalias !861

bb.ce:                                            ; preds = %bb.cd
  %i.kk = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.an)
          to label %.body.i.i.i unwind label %bb.cf, !noalias !861

bb.cf:                                            ; preds = %bb.ce
  %i.kl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28, !noalias !861
  unreachable

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE.exit.i.i.i.i": ; preds = %bb.cd
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.an)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i" unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !861

bb.cg:                                            ; preds = %bb.ca
  %i.km = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr43drop_in_place$LT$anki..error..AnkiError$GT$17h49e25de86dfbbe0cE"(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.y) #27
          to label %.loopexit.split-lp380.i.i.i unwind label %bb.bi, !noalias !861

bb.ch:                                            ; preds = %bb.ca
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !858
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !858
  invoke void @"_ZN4core3ptr43drop_in_place$LT$anki..error..AnkiError$GT$17h49e25de86dfbbe0cE"(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.y)
          to label %bb.ci unwind label %.loopexit.split-lp380.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !861

bb.ci:                                            ; preds = %bb.ch
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !858
  br label %bb.by

bb.cj:                                            ; preds = %.noexc259.i.i.i
  %.sroa.5293.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.14295.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %.sroa.6217.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.cr, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.6217.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.14295.0..sroa_idx.i.i.i, i64 80, i1 false), !noalias !862
  %.sroa.2213.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %.sroa.4215.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.cr, i64 24
  %i.kn = load <2 x i32>, ptr %.sroa.10.8..sroa_idx.i.i.i, align 8, !noalias !873
  %i.ko = load <2 x i64>, ptr %.sroa.5293.0..sroa_idx.i.i.i, align 8, !noalias !873
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !872
  store <2 x i64> %i.ko, ptr %.sroa.2213.0..sroa_idx.i.i.i, align 8, !alias.scope !849, !noalias !840
  store <2 x i32> %i.kn, ptr %.sroa.4215.0..sroa_idx.i.i.i, align 8, !alias.scope !849, !noalias !840
  br label %bb.cd

bb.ck:                                            ; preds = %.noexc259.i.i.i
  %.sroa.10.8.copyload.i.i.i = load i32, ptr %.sroa.10.8..sroa_idx.i.i.i, align 8, !noalias !873
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !872
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !858
  invoke void @"_ZN4anki6config6number46_$LT$impl$u20$anki..collection..Collection$GT$20set_config_i32_inner17hcc0ca2e2ca2d61eaE"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.v, ptr noalias noundef nonnull align 8 dereferenceable(728) %1, i8 noundef 2, i32 noundef %.sroa.10.8.copyload.i.i.i)
          to label %bb.cl unwind label %.loopexit.split-lp380.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !861

bb.cl:                                            ; preds = %bb.ck
  %i.kp = load i64, ptr %i.v, align 8, !range !14, !noalias !858, !noundef !4 ; 2 uses
  %.not238.i.i.i = icmp eq i64 %i.kp, -9223372036854775773
  br i1 %.not238.i.i.i, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %.sroa.4222.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.sroa.4222.0.copyload.i.i.i = load i8, ptr %.sroa.4222.0..sroa_idx.i.i.i, align 8, !noalias !858
  %.sroa.5223.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 9
  %.sroa.3226.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.cr, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(103) %.sroa.3226.0..sroa_idx.i.i.i, ptr noundef nonnull align 1 dereferenceable(103) %.sroa.5223.0..sroa_idx.i.i.i, i64 103, i1 false), !noalias !862
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !858
  %.sroa.2225.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  store i8 %.sroa.4222.0.copyload.i.i.i, ptr %.sroa.2225.0..sroa_idx.i.i.i, align 8, !alias.scope !849, !noalias !840
  br label %bb.cd

bb.cn:                                            ; preds = %bb.cl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !858
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.an)
          to label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE.exit.i265.i.i.i" unwind label %bb.co, !noalias !861

bb.co:                                            ; preds = %bb.cn
  %i.kq = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.an)
          to label %.body.i.i.i unwind label %bb.cp, !noalias !861

bb.cp:                                            ; preds = %bb.co
  %i.kr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28, !noalias !861
  unreachable

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE.exit.i265.i.i.i": ; preds = %bb.cn
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.an)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit270.i.i.i" unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !861

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit270.i.i.i": ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE.exit.i265.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !858
  %i.ks = icmp eq ptr %i.iy, %i.hy
  br i1 %i.ks, label %._crit_edge.i.i.i, label %bb.au

"_ZN4core3ptr49drop_in_place$LT$anki..deckconfig..DeckConfig$GT$17hb084b21ef4d188d6E.exit.i.i.i": ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i", %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i.i", %bb.aa
  %.pr.i.i = phi i64 [ %.pr1051.i.i, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i" ], [ %i.fv, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i.i" ], [ -9223372036854775808, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !858
  invoke void @"_ZN79_$LT$hashbrown..raw..RawTable$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hddce632ffba104bcE"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.av)
          to label %bb.cy unwind label %.loopexit.split-lp869.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !845

"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h2a011b2adf5ae946E.exit.i.i.i": ; preds = %.noexc249.i.i.i
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(384) %i.aq)
          to label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE.exit.i.i273.i.i.i" unwind label %bb.cq, !noalias !861

bb.cq:                                            ; preds = %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h2a011b2adf5ae946E.exit.i.i.i"
  %i.kt = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(384) %i.aq)
          to label %.body.i271.i.i.i unwind label %bb.cr, !noalias !861

bb.cr:                                            ; preds = %bb.cq
  %i.ku = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28, !noalias !861
  unreachable

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE.exit.i.i273.i.i.i": ; preds = %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h2a011b2adf5ae946E.exit.i.i.i"
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(384) %i.aq)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i274.i.i.i" unwind label %bb.cs, !noalias !861

bb.cs:                                            ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE.exit.i.i273.i.i.i"
  %i.kv = landingpad { ptr, i32 }
          cleanup
  br label %.body.i271.i.i.i

.body.i271.i.i.i:                                 ; preds = %bb.cs, %bb.cq
  %eh.lpad-body.i272.i.i.i = phi { ptr, i32 } [ %i.kv, %bb.cs ], [ %i.kt, %bb.cq ]
  invoke fastcc void @"_ZN4core3ptr65drop_in_place$LT$anki_proto..deck_config..deck_config..Config$GT$17h8cd7d46a28072120E"(ptr noalias noundef align 8 dereferenceable(336) %i.gl) #27
          to label %.body276.i.i.i unwind label %bb.ct, !noalias !861

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i274.i.i.i": ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE.exit.i.i273.i.i.i"
  invoke fastcc void @"_ZN4core3ptr65drop_in_place$LT$anki_proto..deck_config..deck_config..Config$GT$17h8cd7d46a28072120E"(ptr noalias noundef align 8 dereferenceable(336) %i.gl)
          to label %"_ZN4core3ptr49drop_in_place$LT$anki..deckconfig..DeckConfig$GT$17hb084b21ef4d188d6E.exit278.i.i.i" unwind label %bb.ak, !noalias !861

bb.ct:                                            ; preds = %.body.i271.i.i.i
  %i.kw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28, !noalias !861
  unreachable

select.unfold.i.i.i:                              ; preds = %._crit_edge.i.i.i.i.i, %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !858
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(384) %i.ap, ptr noundef nonnull align 8 dereferenceable(384) %i.aq, i64 384, i1 false), !noalias !858
  %i.kx = load i64, ptr %i.dp, align 8, !alias.scope !874, !noalias !836, !noundef !4 ; 3 uses
  %i.ky = load i64, ptr %i.cz, align 8, !range !12, !alias.scope !874, !noalias !836, !noundef !4
  %i.kz = icmp eq i64 %i.kx, %i.ky
  br i1 %i.kz, label %bb.cu, label %bb.cx

bb.cu:                                            ; preds = %select.unfold.i.i.i
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17hc6ae48766870c564E"(ptr noalias noundef nonnull align 8 dereferenceable(136) %i.cz)
          to label %bb.cx unwind label %bb.cv, !noalias !875

bb.cv:                                            ; preds = %bb.cu
  %i.la = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr49drop_in_place$LT$anki..deckconfig..DeckConfig$GT$17hb084b21ef4d188d6E"(ptr noalias noundef nonnull align 8 dereferenceable(384) %i.ap) #27
          to label %.body276.i.i.i unwind label %bb.cw, !noalias !861

bb.cw:                                            ; preds = %bb.cv
  %i.lb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28, !noalias !861
  unreachable

"_ZN4core3ptr49drop_in_place$LT$anki..deckconfig..DeckConfig$GT$17hb084b21ef4d188d6E.exit278.i.i.i": ; preds = %bb.cx, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i274.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !858
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7287.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7287.i.i.i)
  %i.lc = load ptr, ptr %.sroa.815.0..sroa_idx.i.i.i, align 8, !alias.scope !876, !noalias !858, !nonnull !4, !noundef !4
  %i.ld = load ptr, ptr %.sroa.613.0..sroa_idx.i.i.i, align 8, !alias.scope !876, !noalias !858, !nonnull !4, !noundef !4 ; 2 uses
  %i.le = icmp eq ptr %i.ld, %i.lc
  br i1 %i.le, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h62875096f65b5adbE.exit.thread.i.i.i", label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h62875096f65b5adbE.exit.i.i.i"

bb.cx:                                            ; preds = %bb.cu, %select.unfold.i.i.i
  %i.lf = load ptr, ptr %i.fb, align 8, !alias.scope !874, !noalias !836, !nonnull !4, !noundef !4
  %i.lg = getelementptr inbounds nuw [384 x i8], ptr %i.lf, i64 %i.kx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(384) %i.lg, ptr noundef nonnull align 8 dereferenceable(384) %i.ap, i64 384, i1 false), !noalias !861
  %i.lh = add i64 %i.kx, 1
  store i64 %i.lh, ptr %i.dp, align 8, !alias.scope !874, !noalias !836
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !858
  br label %"_ZN4core3ptr49drop_in_place$LT$anki..deckconfig..DeckConfig$GT$17hb084b21ef4d188d6E.exit278.i.i.i"

.loopexit.split-lp385.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph.i.i.i.i.i, %bb.am
  %lpad.loopexit.split-lp914 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr49drop_in_place$LT$anki..deckconfig..DeckConfig$GT$17hb084b21ef4d188d6E"(ptr noalias noundef align 8 dereferenceable(384) %i.aq) #27
          to label %.body276.i.i.i unwind label %bb.bi, !noalias !861
end_hunk_0
