Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/anki-0407df152365de94.anki.49bf70e6e198d769-cgu.03?download=true
inline.NumInlined: 3264
inline.NumDeleted: 1494
loop-unroll.NumCompletelyUnrolled: 50
loop-unroll.NumUnrolled: 50
begin_hunk_0_@"_ZN4anki7storage8upgrades54_$LT$impl$u20$anki..storage..sqlite..SqliteStorage$GT$24upgrade_to_latest_schema17h7902df0e615dcab8E":bb.a
  %.sroa.11438.sroa.10.0.extract.trunc466 = trunc nuw i64 %.sroa.11438.sroa.10.0.extract.shift465 to i32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.20, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.718.i.i.sroa.8, i64 80, i1 false), !noalias !5341
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ae)
          to label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE.exit.i.i.i387" unwind label %bb.py, !noalias !5342

bb.py:                                            ; preds = %bb.px
  %i.agj = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ae)
          to label %.body.i.i366 unwind label %bb.pz, !noalias !5342

bb.pz:                                            ; preds = %bb.py
  %i.agk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #32, !noalias !5342
  unreachable

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE.exit.i.i.i387": ; preds = %bb.px
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ae)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i390" unwind label %.loopexit.split-lp.i.i388, !noalias !5342

bb.qa:                                            ; preds = %bb.pw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.424.i.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.570.0..sroa_idx.i.i, i64 72, i1 false), !noalias !5342
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !5342
  %.not90.i.i = icmp eq i64 %i.agh, -9223372036854775808
  br i1 %.not90.i.i, label %bb.qc, label %bb.qb

bb.qb:                                            ; preds = %bb.qa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !5342
  store <2 x i64> %i.agg, ptr %i.ac, align 16, !noalias !5342
  store i64 %.sroa.718.i.i.sroa.5.0.copyload, ptr %.sroa.718.i.i.sroa.5.0..sroa.323.0..sroa_idx.i.i.sroa_idx, align 16, !noalias !5342
  store ptr %.sroa.718.i.i.sroa.6.0.copyload, ptr %.sroa.718.i.i.sroa.6.0..sroa.323.0..sroa_idx.i.i.sroa_idx, align 8, !noalias !5342
  store i64 %.sroa.718.i.i.sroa.7.0.copyload, ptr %.sroa.718.i.i.sroa.7.0..sroa.323.0..sroa_idx.i.i.sroa_idx, align 16, !noalias !5342
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.718.i.i.sroa.8.0..sroa.323.0..sroa_idx.i.i.sroa_idx, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.718.i.i.sroa.8, i64 80, i1 false), !noalias !5342
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.424.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.424.i.i, i64 72, i1 false), !noalias !5342
  %i.agl = load i64, ptr %i.afu, align 8, !range !9, !noalias !5342, !noundef !7
  %i.agm = icmp eq i64 %i.agl, -9223372036854775808
  br i1 %i.agm, label %bb.qf, label %bb.qg

bb.qc:                                            ; preds = %bb.ql, %bb.qa
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ae)
          to label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE.exit.i108.i.i" unwind label %bb.qd, !noalias !5342

bb.qd:                                            ; preds = %bb.qc
  %i.agn = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ae)
          to label %.body.i.i366 unwind label %bb.qe, !noalias !5342

bb.qe:                                            ; preds = %bb.qd
  %i.ago = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #32, !noalias !5342
  unreachable

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE.exit.i108.i.i": ; preds = %bb.qc
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ae)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit111.i.i" unwind label %.loopexit.i.i367, !noalias !5342

bb.qf:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hee073860126ff384E.exit.i.i", %bb.qg, %bb.qb
  invoke fastcc void @"_ZN4core3ptr38drop_in_place$LT$anki..decks..Deck$GT$17hc3e578a44c150c50E"(ptr noalias noundef align 8 dereferenceable(192) %i.ac)
          to label %bb.ql unwind label %bb.pv, !noalias !5342

bb.qg:                                            ; preds = %bb.qb
  %i.agp = load i64, ptr %.sroa.424.0..sroa_idx.i.i, align 8, !noalias !5342, !noundef !7
  %i.agq = load i64, ptr %.sroa.0.0189.i.i, align 8, !alias.scope !5341, !noalias !5346, !noundef !7
  %i.agr = icmp eq i64 %i.agp, %i.agq
  br i1 %i.agr, label %bb.qh, label %bb.qf

bb.qh:                                            ; preds = %bb.qg
  %i.ags = load i64, ptr %i.afv, align 8, !noalias !5342, !noundef !7
  %i.agt = load i64, ptr %i.afq, align 8, !alias.scope !5347, !noalias !5342, !noundef !7 ; 3 uses
  %i.agu = load i64, ptr %i.ah, align 8, !range !8, !alias.scope !5347, !noalias !5342, !noundef !7
  %i.agv = icmp eq i64 %i.agt, %i.agu
  br i1 %i.agv, label %bb.qi, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hee073860126ff384E.exit.i.i"

bb.qi:                                            ; preds = %bb.qh
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17hec843fede6384983E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ah)
          to label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hee073860126ff384E.exit.i.i" unwind label %bb.qj, !noalias !5342

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hee073860126ff384E.exit.i.i": ; preds = %bb.qi, %bb.qh
  %i.agw = load ptr, ptr %i.afp, align 8, !alias.scope !5347, !noalias !5342, !nonnull !7, !noundef !7
  %i.agx = getelementptr inbounds nuw [8 x i8], ptr %i.agw, i64 %i.agt
  store i64 %i.ags, ptr %i.agx, align 8, !noalias !5342
  %i.agy = add i64 %i.agt, 1
  store i64 %i.agy, ptr %i.afq, align 8, !alias.scope !5347, !noalias !5342
  br label %bb.qf

bb.qj:                                            ; preds = %bb.qi
  %i.agz = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr38drop_in_place$LT$anki..decks..Deck$GT$17hc3e578a44c150c50E"(ptr noalias noundef align 8 dereferenceable(192) %i.ac) #31
          to label %bb.pu unwind label %bb.qk, !noalias !5342

bb.qk:                                            ; preds = %bb.sr, %bb.sm, %.body116.i.i, %bb.qj, %bb.pu, %.body.i.i366, %.body126.i.i
  %i.aha = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #32, !noalias !5342
  unreachable

bb.ql:                                            ; preds = %bb.qf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !5342
  br label %bb.qc

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit111.i.i": ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE.exit.i108.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !5342
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.i.i)
  %i.ahb = load ptr, ptr %.sroa.7.0..sroa_idx.i.i362, align 8, !alias.scope !5348, !noalias !5344, !nonnull !7, !noundef !7
  %i.ahc = load ptr, ptr %.sroa.5.0..sroa_idx.i.i360, align 8, !alias.scope !5348, !noalias !5344, !nonnull !7, !noundef !7 ; 2 uses
  %i.ahd = icmp eq ptr %i.ahc, %i.ahb
  br i1 %i.ahd, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3cf512888383277fE.exit.thread.i.i", label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3cf512888383277fE.exit.i.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i390": ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE.exit.i.i.i387"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !5342
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i.i)
  invoke void @"_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2a5cf6ed1005fa6bE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.af)
          to label %"_ZN4core3ptr111drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$LP$anki..decks..DeckId$C$alloc..string..String$RP$$GT$$GT$17h427be998cd6653d9E.exit113.i.i" unwind label %.loopexit.split-lp157.i.i, !noalias !5342

"_ZN4core3ptr111drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$LP$anki..decks..DeckId$C$alloc..string..String$RP$$GT$$GT$17h427be998cd6653d9E.exit113.i.i": ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i390"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !5342
  %i.ahe = extractelement <2 x i64> %i.agg, i64 1
  br label %bb.qm

bb.qm:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit129.i.i", %"_ZN4core3ptr111drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$LP$anki..decks..DeckId$C$alloc..string..String$RP$$GT$$GT$17h427be998cd6653d9E.exit113.i.i", %bb.pr
  %.sroa.11438.sroa.10.1 = phi i32 [ %.sroa.11438.sroa.10.4, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit129.i.i" ], [ %.sroa.11438.sroa.10.0.extract.trunc466, %"_ZN4core3ptr111drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$LP$anki..decks..DeckId$C$alloc..string..String$RP$$GT$$GT$17h427be998cd6653d9E.exit113.i.i" ], [ %.sroa.11438.sroa.10.0.extract.trunc470, %bb.pr ]
  %.sroa.11438.sroa.0.1 = phi i32 [ %.sroa.11438.sroa.0.4, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit129.i.i" ], [ %.sroa.11438.sroa.0.0.extract.trunc458, %"_ZN4core3ptr111drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$LP$anki..decks..DeckId$C$alloc..string..String$RP$$GT$$GT$17h427be998cd6653d9E.exit113.i.i" ], [ %.sroa.11438.sroa.0.0.extract.trunc460, %bb.pr ]
  %.sroa.18.1 = phi i64 [ %.sroa.18.4, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit129.i.i" ], [ %.sroa.718.i.i.sroa.7.0.copyload, %"_ZN4core3ptr111drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$LP$anki..decks..DeckId$C$alloc..string..String$RP$$GT$$GT$17h427be998cd6653d9E.exit113.i.i" ], [ %.sroa.652.0.copyload.i.i, %bb.pr ]
  %.sroa.16.1 = phi ptr [ %.sroa.16.4, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit129.i.i" ], [ %.sroa.718.i.i.sroa.6.0.copyload, %"_ZN4core3ptr111drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$LP$anki..decks..DeckId$C$alloc..string..String$RP$$GT$$GT$17h427be998cd6653d9E.exit113.i.i" ], [ %.sroa.551.0.copyload.i.i, %bb.pr ]
  %.sroa.0434.1 = phi i64 [ %.sroa.0434.4, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit129.i.i" ], [ %i.ahe, %"_ZN4core3ptr111drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$LP$anki..decks..DeckId$C$alloc..string..String$RP$$GT$$GT$17h427be998cd6653d9E.exit113.i.i" ], [ %i.afx, %bb.pr ]
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h443c0f2199d408cdE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ah)
          to label %"_ZN4core3ptr63drop_in_place$LT$alloc..vec..Vec$LT$anki..decks..DeckId$GT$$GT$17ha45047441f91f5faE.exit.i.i" unwind label %bb.qn, !noalias !5342

bb.qn:                                            ; preds = %bb.qm
  %i.ahf = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hda2b47b306232246E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ah)
          to label %.body.i341 unwind label %bb.qo, !noalias !5342

bb.qo:                                            ; preds = %bb.qn
  %i.ahg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #32, !noalias !5342
  unreachable

"_ZN4core3ptr63drop_in_place$LT$alloc..vec..Vec$LT$anki..decks..DeckId$GT$$GT$17ha45047441f91f5faE.exit.i.i": ; preds = %bb.qm
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hda2b47b306232246E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ah)
          to label %bb.tk unwind label %bb.pk, !noalias !5333

.body116.i.i:                                     ; preds = %bb.tf, %bb.sm, %.loopexit.i.i.i, %bb.qp
  %.pn101.i.i = phi { ptr, i32 } [ %.pn99.i.i, %bb.sm ], [ %.pn.i.i.i372, %.loopexit.i.i.i ], [ %i.ahh, %bb.qp ], [ %i.aqn, %bb.tf ]
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ab) #31
          to label %.body126.i.i unwind label %bb.qk, !noalias !5342

bb.qp:                                            ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE.exit.i119.i.i", %bb.sz, %bb.qr, %bb.qq, %._crit_edge.i.i369
  %i.ahh = landingpad { ptr, i32 }
          cleanup
  br label %.body116.i.i

bb.qq:                                            ; preds = %._crit_edge.i.i369
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !5342
  %i.ahi = load ptr, ptr %.sroa.448.0..sroa_idx.i.i, align 8, !noalias !5342, !nonnull !7, !noundef !7 ; 4 uses
  %i.ahj = load i64, ptr %.sroa.549.0..sroa_idx.i.i, align 8, !noalias !5342, !noundef !7 ; 2 uses
  %.not18.i.i.i = icmp ult i64 %i.ahj, 8
  %spec.select.i.i.i = select i1 %.not18.i.i.i, i64 0, i64 136 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !5349
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !5349
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h29de420d60325245E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.n, i64 noundef %spec.select.i.i.i, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc114.i.i unwind label %bb.qp, !noalias !5342

.noexc114.i.i:                                    ; preds = %bb.qq
  %i.ahk = load i64, ptr %i.n, align 8, !range !15, !noalias !5349, !noundef !7
  %i.ahl = trunc nuw i64 %i.ahk to i1
  %i.ahm = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.ahn = load i64, ptr %i.ahm, align 8, !range !9, !noalias !5349, !noundef !7 ; 3 uses
  %i.aho = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  br i1 %i.ahl, label %bb.qr, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h10a3b5fe38ba3de6E.exit.i.i.i370", !prof !16

bb.qr:                                            ; preds = %.noexc114.i.i
  %i.ahp = load i64, ptr %i.aho, align 8, !noalias !5349
  invoke void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %i.ahn, i64 %i.ahp) #33
          to label %.noexc115.i.i unwind label %bb.qp, !noalias !5342

.noexc115.i.i:                                    ; preds = %bb.qr
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h10a3b5fe38ba3de6E.exit.i.i.i370": ; preds = %.noexc114.i.i
  %i.ahq = load ptr, ptr %i.aho, align 8, !noalias !5349, !nonnull !7, !noundef !7
  %i.ahr = icmp ule i64 %spec.select.i.i.i, %i.ahn
  call void @llvm.assume(i1 %i.ahr)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !5349
  store i64 %i.ahn, ptr %i.p, align 8, !noalias !5349
  %.sroa.4.0..sroa_idx.i.i.i371 = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %i.ahq, ptr %.sroa.4.0..sroa_idx.i.i.i371, align 8, !noalias !5349
  %.sroa.514.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store i64 0, ptr %.sroa.514.0..sroa_idx.i.i.i, align 8, !noalias !5349
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !5349
  invoke void @_ZN4core3str7pattern11StrSearcher3new17h06c723456276c09fE(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(address) dereferenceable(104) %i.o, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @328, i64 noundef 136, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @329, i64 noundef 8)
          to label %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd10808bddb3d13e7E.exit.i.i.i" unwind label %bb.qs, !noalias !5350

.loopexit.i.i.i:                                  ; preds = %.loopexit.split-lp.i.i.i, %.loopexit.split.i.loopexit.split-lp.i.i, %.loopexit.split.i.loopexit.i.i, %.loopexit.split.us.i.i.i, %bb.qs
  %.pn.i.i.i372 = phi { ptr, i32 } [ %i.ahs, %bb.qs ], [ %lpad.loopexit.split-lp.i.i.i, %.loopexit.split-lp.i.i.i ], [ %lpad.loopexit.us.i.i.i, %.loopexit.split.us.i.i.i ], [ %lpad.loopexit241.i.i, %.loopexit.split.i.loopexit.i.i ], [ %lpad.loopexit.split-lp242.i.i, %.loopexit.split.i.loopexit.split-lp.i.i ]
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p) #31
          to label %.body116.i.i unwind label %bb.sk, !noalias !5350

bb.qs:                                            ; preds = %.critedge25.i.i.i, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h10a3b5fe38ba3de6E.exit.i.i.i370"
  %i.ahs = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.i.i.i

"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd10808bddb3d13e7E.exit.i.i.i": ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h10a3b5fe38ba3de6E.exit.i.i.i370"
  %.sroa.043.0.copyload.i.i.i = load i64, ptr %i.o, align 8, !noalias !5349
  %.sroa.444.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.444.0.copyload.i.i.i = load i64, ptr %.sroa.444.0..sroa_idx.i.i.i, align 8, !noalias !5349 ; 27 uses
  %.sroa.646.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %.sroa.646.0.copyload.i.i.i = load i64, ptr %.sroa.646.0..sroa_idx.i.i.i, align 8, !noalias !5349 ; 5 uses
  %.sroa.747.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %.sroa.747.0.copyload.i.i.i = load i64, ptr %.sroa.747.0..sroa_idx.i.i.i, align 8, !noalias !5349 ; 2 uses
  %.sroa.848.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %.sroa.848.0.copyload.i.i.i = load i64, ptr %.sroa.848.0..sroa_idx.i.i.i, align 8, !noalias !5349
  %.sroa.1050.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  %.sroa.1050.0.copyload.i.i.i = load i64, ptr %.sroa.1050.0..sroa_idx.i.i.i, align 8, !noalias !5349
  %.sroa.1252.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 72
  %.sroa.1252.0.copyload.i.i.i = load ptr, ptr %.sroa.1252.0..sroa_idx.i.i.i, align 8, !noalias !5349 ; 17 uses
  %.sroa.1353.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 80
  %.sroa.1353.0.copyload.i.i.i = load i64, ptr %.sroa.1353.0..sroa_idx.i.i.i, align 8, !noalias !5349 ; 42 uses
  %.sroa.14.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 88
  %.sroa.14.0.copyload.i.i.i = load ptr, ptr %.sroa.14.0..sroa_idx.i.i.i, align 8, !noalias !5349 ; 5 uses
  %.sroa.15.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 96
  %.sroa.15.0.copyload.i.i.i = load i64, ptr %.sroa.15.0..sroa_idx.i.i.i, align 8, !noalias !5349 ; 13 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !5349
  %i.aht = trunc nuw i64 %.sroa.043.0.copyload.i.i.i to i1
  %i.ahu = add i64 %.sroa.15.0.copyload.i.i.i, -1 ; 3 uses
  %i.ahv = getelementptr inbounds nuw i8, ptr %i.ahi, i64 %i.ahj ; 3 uses
  br i1 %i.aht, label %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd10808bddb3d13e7E.exit.split.us.i.i.i", label %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd10808bddb3d13e7E.exit.split.i.i.i"

"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd10808bddb3d13e7E.exit.split.us.i.i.i": ; preds = %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd10808bddb3d13e7E.exit.i.i.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.1252.0.copyload.i.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.14.0.copyload.i.i.i) ]
  %i.ahw = sub i64 %.sroa.15.0.copyload.i.i.i, %.sroa.646.0.copyload.i.i.i
  %umax49.i.us.i.i.i = call i64 @llvm.umax.i64(i64 %.sroa.444.0.copyload.i.i.i, i64 %.sroa.15.0.copyload.i.i.i)
  %i.ahx = add i64 %.sroa.444.0.copyload.i.i.i, -1 ; 2 uses
  %.first_iter.i.i.i = icmp ult i64 %i.ahx, %.sroa.15.0.copyload.i.i.i
  %.first_iter.i.fr.i.i = freeze i1 %.first_iter.i.i.i
  %.not68.us.i.i.i = icmp eq i64 %.sroa.444.0.copyload.i.i.i, 0
  %invariant.op = sub i64 1, %.sroa.444.0.copyload.i.i.i
  %exitcond.not.i.us.i.i.i1156.not = icmp ult i64 %.sroa.444.0.copyload.i.i.i, %.sroa.15.0.copyload.i.i.i
  %invariant.op1424 = sub i64 1, %.sroa.444.0.copyload.i.i.i
  %.not68.us.i.us.i.i1159 = icmp eq i64 %.sroa.444.0.copyload.i.i.i, 0
  br label %bb.qt

bb.qt:                                            ; preds = %bb.rj, %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd10808bddb3d13e7E.exit.split.us.i.i.i"
  %.sroa.3015.0.us.i.i.i = phi i64 [ %.sroa.1050.0.copyload.i.i.i, %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd10808bddb3d13e7E.exit.split.us.i.i.i" ], [ %.sroa.3015.3.us.i.i.i, %bb.rj ] ; 2 uses
  %.sroa.18.0.us.i.i.i = phi i64 [ %.sroa.848.0.copyload.i.i.i, %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd10808bddb3d13e7E.exit.split.us.i.i.i" ], [ %.sroa.1156.3.us.i.i.i, %bb.rj ] ; 3 uses
  %.sroa.06.0.us.i.i.i = phi i64 [ 0, %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd10808bddb3d13e7E.exit.split.us.i.i.i" ], [ %.sroa.1156.3.us.i.i.i, %bb.rj ] ; 5 uses
  %i.ahy = icmp eq i64 %.sroa.3015.0.us.i.i.i, -1
  %i.ahz = add i64 %.sroa.18.0.us.i.i.i, %i.ahu   ; 3 uses
  %i.aia = icmp ult i64 %i.ahz, %.sroa.1353.0.copyload.i.i.i ; 2 uses
  br i1 %i.ahy, label %bb.rd, label %bb.qu

bb.qu:                                            ; preds = %bb.qt
  call void @llvm.experimental.noalias.scope.decl(metadata !5351)
  call void @llvm.experimental.noalias.scope.decl(metadata !5352)
  br i1 %i.aia, label %.lr.ph.i43.us.i.i.i, label %.critedge25.i.i.i

.lr.ph.i43.us.i.i.i:                              ; preds = %bb.qu, %.sink.split.i.us.i.i.i
  %i.aib = phi i64 [ %.sink.i.us.i.i.i, %.sink.split.i.us.i.i.i ], [ %.sroa.3015.0.us.i.i.i, %bb.qu ] ; 3 uses
  %i.aic = phi i64 [ %i.ajf, %.sink.split.i.us.i.i.i ], [ %i.ahz, %bb.qu ]
  %i.aid = phi i64 [ %.ph71.i.us.i.i.i, %.sink.split.i.us.i.i.i ], [ %.sroa.18.0.us.i.i.i, %bb.qu ] ; 8 uses
  %i.aie = getelementptr inbounds nuw i8, ptr %.sroa.1252.0.copyload.i.i.i, i64 %i.aic
  %i.aif = load i8, ptr %i.aie, align 1, !alias.scope !5351, !noalias !5353, !noundef !7
  %i.aig = and i8 %i.aif, 63
  %i.aih = zext nneg i8 %i.aig to i64
  %i.aii = shl nuw i64 1, %i.aih
  %i.aij = and i64 %i.aii, %.sroa.747.0.copyload.i.i.i
  %i.aik = icmp eq i64 %i.aij, 0
  br i1 %i.aik, label %bb.rc, label %bb.qv

bb.qv:                                            ; preds = %.lr.ph.i43.us.i.i.i
  %.sroa.0.0.i.i45.us.i.i.i = call i64 @llvm.umax.i64(i64 %i.aib, i64 %.sroa.444.0.copyload.i.i.i) ; 4 uses
  %umax49.i46.us.i.i.i = call i64 @llvm.umax.i64(i64 %.sroa.0.0.i.i45.us.i.i.i, i64 %.sroa.15.0.copyload.i.i.i)
  %exitcond.not.i48.us.i.i.i1150.not = icmp ult i64 %.sroa.0.0.i.i45.us.i.i.i, %.sroa.15.0.copyload.i.i.i
  br i1 %exitcond.not.i48.us.i.i.i1150.not, label %.lr.ph, label %.preheader69.us.i.i.i.preheader

bb.qw:                                            ; preds = %bb.qx
  %i.ail = add i64 %.sroa.02.0.i47.us.i.i.i1151, 1 ; 2 uses
  %exitcond.not.i48.us.i.i.i = icmp eq i64 %i.ail, %umax49.i46.us.i.i.i
  br i1 %exitcond.not.i48.us.i.i.i, label %.preheader69.us.i.i.i.preheader, label %.lr.ph

.preheader69.us.i.i.i.preheader:                  ; preds = %bb.qw, %bb.qv
  %i.aim = icmp ult i64 %i.aib, %.sroa.444.0.copyload.i.i.i
  br i1 %i.aim, label %.lr.ph1154, label %.loopexit.i.us.i.i.i

.lr.ph:                                           ; preds = %bb.qv, %bb.qw
  %.sroa.02.0.i47.us.i.i.i1151 = phi i64 [ %i.ail, %bb.qw ], [ %.sroa.0.0.i.i45.us.i.i.i, %bb.qv ] ; 4 uses
  %i.ain = add i64 %.sroa.02.0.i47.us.i.i.i1151, %i.aid ; 2 uses
  %i.aio = icmp ult i64 %i.ain, %.sroa.1353.0.copyload.i.i.i
  br i1 %i.aio, label %bb.qx, label %.split.us.i.i.i

bb.qx:                                            ; preds = %.lr.ph
  %i.aip = getelementptr inbounds nuw i8, ptr %.sroa.14.0.copyload.i.i.i, i64 %.sroa.02.0.i47.us.i.i.i1151
  %i.aiq = load i8, ptr %i.aip, align 1, !alias.scope !5352, !noalias !5354, !noundef !7
  %i.air = getelementptr inbounds nuw i8, ptr %.sroa.1252.0.copyload.i.i.i, i64 %i.ain
  %i.ais = load i8, ptr %i.air, align 1, !alias.scope !5351, !noalias !5353, !noundef !7
  %.not21.i50.us.i.i.i = icmp eq i8 %i.aiq, %i.ais
  br i1 %.not21.i50.us.i.i.i, label %bb.qw, label %bb.qy

bb.qy:                                            ; preds = %bb.qx
  %.reass.i.reass.i.reass.i.reass.reass = add i64 %i.aid, %invariant.op
  %i.ait = add i64 %.reass.i.reass.i.reass.i.reass.reass, %.sroa.02.0.i47.us.i.i.i1151
  br label %.sink.split.i.us.i.i.i

.preheader69.us.i.i.i:                            ; preds = %bb.ra
  %i.aiu = icmp ult i64 %i.aib, %i.aiv
  br i1 %i.aiu, label %.lr.ph1154, label %.loopexit.i.us.i.i.i

.lr.ph1154:                                       ; preds = %.preheader69.us.i.i.i.preheader, %.preheader69.us.i.i.i
  %.sroa.2.0.i51.us.i.i.i1153 = phi i64 [ %i.aiv, %.preheader69.us.i.i.i ], [ %.sroa.444.0.copyload.i.i.i, %.preheader69.us.i.i.i.preheader ]
  %i.aiv = add i64 %.sroa.2.0.i51.us.i.i.i1153, -1 ; 6 uses
  %i.aiw = icmp ult i64 %i.aiv, %.sroa.15.0.copyload.i.i.i
  br i1 %i.aiw, label %bb.qz, label %.split137.us.invoke.i.i.i

bb.qz:                                            ; preds = %.lr.ph1154
  %i.aix = add i64 %i.aiv, %i.aid                 ; 3 uses
  %i.aiy = icmp ult i64 %i.aix, %.sroa.1353.0.copyload.i.i.i
  br i1 %i.aiy, label %bb.ra, label %.split137.us.invoke.i.i.i

bb.ra:                                            ; preds = %bb.qz
  %i.aiz = getelementptr inbounds nuw i8, ptr %.sroa.14.0.copyload.i.i.i, i64 %i.aiv
  %i.aja = load i8, ptr %i.aiz, align 1, !alias.scope !5352, !noalias !5354, !noundef !7
  %i.ajb = getelementptr inbounds nuw i8, ptr %.sroa.1252.0.copyload.i.i.i, i64 %i.aix
  %i.ajc = load i8, ptr %i.ajb, align 1, !alias.scope !5351, !noalias !5353, !noundef !7
  %.not.i52.us.i.i.i = icmp eq i8 %i.aja, %i.ajc
  br i1 %.not.i52.us.i.i.i, label %.preheader69.us.i.i.i, label %bb.rb

bb.rb:                                            ; preds = %bb.ra
  %i.ajd = add i64 %i.aid, %.sroa.646.0.copyload.i.i.i
  br label %.sink.split.i.us.i.i.i

bb.rc:                                            ; preds = %.lr.ph.i43.us.i.i.i
  %i.aje = add i64 %i.aid, %.sroa.15.0.copyload.i.i.i
  br label %.sink.split.i.us.i.i.i

.sink.split.i.us.i.i.i:                           ; preds = %bb.rc, %bb.rb, %bb.qy
  %.sink.i.us.i.i.i = phi i64 [ %i.ahw, %bb.rb ], [ 0, %bb.qy ], [ 0, %bb.rc ]
  %.ph71.i.us.i.i.i = phi i64 [ %i.ajd, %bb.rb ], [ %i.ait, %bb.qy ], [ %i.aje, %bb.rc ] ; 2 uses
  %i.ajf = add i64 %.ph71.i.us.i.i.i, %i.ahu      ; 2 uses
  %i.ajg = icmp ult i64 %i.ajf, %.sroa.1353.0.copyload.i.i.i
  br i1 %i.ajg, label %.lr.ph.i43.us.i.i.i, label %.critedge25.i.i.i

bb.rd:                                            ; preds = %bb.qt
  call void @llvm.experimental.noalias.scope.decl(metadata !5355)
  call void @llvm.experimental.noalias.scope.decl(metadata !5356)
  br i1 %i.aia, label %.lr.ph.i36.us.i.i.i, label %.critedge25.i.i.i

.lr.ph.i36.us.i.i.i:                              ; preds = %bb.rd, %bb.ri
  %i.ajh = phi i64 [ %i.aki, %bb.ri ], [ %i.ahz, %bb.rd ]
  %i.aji = phi i64 [ %i.akh, %bb.ri ], [ %.sroa.18.0.us.i.i.i, %bb.rd ] ; 9 uses
  %i.ajj = getelementptr inbounds nuw i8, ptr %.sroa.1252.0.copyload.i.i.i, i64 %i.ajh
  %i.ajk = load i8, ptr %i.ajj, align 1, !alias.scope !5355, !noalias !5357, !noundef !7
  %i.ajl = and i8 %i.ajk, 63
  %i.ajm = zext nneg i8 %i.ajl to i64
  %i.ajn = shl nuw i64 1, %i.ajm
  %i.ajo = and i64 %i.ajn, %.sroa.747.0.copyload.i.i.i
  %i.ajp = icmp eq i64 %i.ajo, 0
  br i1 %i.ajp, label %bb.rh, label %.preheader.i.i.i.preheader

.preheader.i.i.i.preheader:                       ; preds = %.lr.ph.i36.us.i.i.i
  br i1 %exitcond.not.i.us.i.i.i1156.not, label %.lr.ph1158, label %.preheader.us.i.preheader.i.i

.preheader.i.i.i:                                 ; preds = %bb.rf
  %i.ajq = add i64 %.sroa.02.0.i.us.i.i.i1157, 1  ; 2 uses
  %exitcond.not.i.us.i.i.i = icmp eq i64 %i.ajq, %umax49.i.us.i.i.i
  br i1 %exitcond.not.i.us.i.i.i, label %.preheader.us.i.preheader.i.i, label %.lr.ph1158

.preheader.us.i.preheader.i.i:                    ; preds = %.preheader.i.i.i, %.preheader.i.i.i.preheader
  br i1 %.first_iter.i.fr.i.i, label %.preheader.us.i.us.i.i.preheader, label %.preheader.us.i.preheader.split.i.i

.preheader.us.i.us.i.i.preheader:                 ; preds = %.preheader.us.i.preheader.i.i
  br i1 %.not68.us.i.us.i.i1159, label %.loopexit.i.us.i.i.i, label %.lr.ph1161

.preheader.us.i.us.i.i:                           ; preds = %bb.re
  %.not68.us.i.us.i.i = icmp eq i64 %i.ajr, 0
  br i1 %.not68.us.i.us.i.i, label %.loopexit.i.us.i.i.i, label %.lr.ph1161

.lr.ph1161:                                       ; preds = %.preheader.us.i.us.i.i.preheader, %.preheader.us.i.us.i.i
  %.sroa.2.0.i.us.i.us.i.i1160 = phi i64 [ %i.ajr, %.preheader.us.i.us.i.i ], [ %.sroa.444.0.copyload.i.i.i, %.preheader.us.i.us.i.i.preheader ]
  %i.ajr = add i64 %.sroa.2.0.i.us.i.us.i.i1160, -1 ; 4 uses
  %i.ajs = add i64 %i.ajr, %i.aji                 ; 3 uses
  %i.ajt = icmp ult i64 %i.ajs, %.sroa.1353.0.copyload.i.i.i
  br i1 %i.ajt, label %bb.re, label %.split137.us.invoke.i.i.i

bb.re:                                            ; preds = %.lr.ph1161
  %i.aju = getelementptr inbounds nuw i8, ptr %.sroa.14.0.copyload.i.i.i, i64 %i.ajr
  %i.ajv = load i8, ptr %i.aju, align 1, !alias.scope !5356, !noalias !5358, !noundef !7
  %i.ajw = getelementptr inbounds nuw i8, ptr %.sroa.1252.0.copyload.i.i.i, i64 %i.ajs
  %i.ajx = load i8, ptr %i.ajw, align 1, !alias.scope !5355, !noalias !5357, !noundef !7
  %.not.i.us.i.us.i.i = icmp eq i8 %i.ajv, %i.ajx
  br i1 %.not.i.us.i.us.i.i, label %.preheader.us.i.us.i.i, label %.split.us.i.i

.split.us.i.i:                                    ; preds = %bb.re
  %i.ajy = add i64 %i.aji, %.sroa.646.0.copyload.i.i.i
end_hunk_0
begin_hunk_1_@"_ZN4anki7storage8upgrades54_$LT$impl$u20$anki..storage..sqlite..SqliteStorage$GT$24upgrade_to_latest_schema17h7902df0e615dcab8E":bb.a
  %i.akb = getelementptr inbounds nuw i8, ptr %.sroa.14.0.copyload.i.i.i, i64 %.sroa.02.0.i.us.i.i.i1157
  %i.akc = load i8, ptr %i.akb, align 1, !alias.scope !5356, !noalias !5358, !noundef !7
  %i.akd = getelementptr inbounds nuw i8, ptr %.sroa.1252.0.copyload.i.i.i, i64 %i.ajz
  %i.ake = load i8, ptr %i.akd, align 1, !alias.scope !5355, !noalias !5357, !noundef !7
  %.not21.i.us.i.i.i = icmp eq i8 %i.akc, %i.ake
  br i1 %.not21.i.us.i.i.i, label %.preheader.i.i.i, label %bb.rg

bb.rg:                                            ; preds = %bb.rf
  %.reass271.i.reass.i.reass.i.reass.reass = add i64 %i.aji, %invariant.op1424
  %i.akf = add i64 %.reass271.i.reass.i.reass.i.reass.reass, %.sroa.02.0.i.us.i.i.i1157
  br label %bb.ri

bb.rh:                                            ; preds = %.lr.ph.i36.us.i.i.i
  %i.akg = add i64 %i.aji, %.sroa.15.0.copyload.i.i.i
  br label %bb.ri

bb.ri:                                            ; preds = %bb.rh, %bb.rg, %.split.us.i.i
  %i.akh = phi i64 [ %i.akf, %bb.rg ], [ %i.akg, %bb.rh ], [ %i.ajy, %.split.us.i.i ] ; 2 uses
  %i.aki = add i64 %i.akh, %i.ahu                 ; 2 uses
  %i.akj = icmp ult i64 %i.aki, %.sroa.1353.0.copyload.i.i.i
  br i1 %i.akj, label %.lr.ph.i36.us.i.i.i, label %.critedge25.i.i.i

.loopexit.i.us.i.i.i:                             ; preds = %.preheader69.us.i.i.i.preheader, %.preheader.us.i.us.i.i.preheader, %.preheader69.us.i.i.i, %.preheader.us.i.us.i.i, %.preheader.us.i.preheader.split.i.i
  %.sroa.755.3.us.i.i.i = phi i64 [ %i.aji, %.preheader.us.i.preheader.split.i.i ], [ %i.aji, %.preheader.us.i.us.i.i ], [ %i.aid, %.preheader69.us.i.i.i ], [ %i.aji, %.preheader.us.i.us.i.i.preheader ], [ %i.aid, %.preheader69.us.i.i.i.preheader ] ; 2 uses
  %.sroa.3015.3.us.i.i.i = phi i64 [ -1, %.preheader.us.i.preheader.split.i.i ], [ -1, %.preheader.us.i.us.i.i ], [ 0, %.preheader69.us.i.i.i ], [ -1, %.preheader.us.i.us.i.i.preheader ], [ 0, %.preheader69.us.i.i.i.preheader ]
  %i.akk = getelementptr inbounds nuw i8, ptr @328, i64 %.sroa.06.0.us.i.i.i
  %i.akl = getelementptr inbounds nuw i8, ptr @328, i64 %.sroa.755.3.us.i.i.i
  invoke void @"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h705086954de2a2beE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull %i.akk, ptr noundef nonnull %i.akl)
          to label %bb.rj unwind label %.loopexit.split.us.i.i.i, !noalias !5350

bb.rj:                                            ; preds = %.loopexit.i.us.i.i.i
  %.sroa.1156.3.us.i.i.i = add i64 %.sroa.755.3.us.i.i.i, %.sroa.15.0.copyload.i.i.i ; 2 uses
  invoke void @"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h705086954de2a2beE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull readonly align 1 %i.ahi, ptr noundef nonnull readonly %i.ahv)
          to label %bb.qt unwind label %.loopexit.split.us.i.i.i, !noalias !5350

.loopexit.split.us.i.i.i:                         ; preds = %bb.rj, %.loopexit.i.us.i.i.i
  %lpad.loopexit.us.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.i.i.i

"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd10808bddb3d13e7E.exit.split.i.i.i": ; preds = %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd10808bddb3d13e7E.exit.i.i.i"
  %i.akm = and i64 %.sroa.646.0.copyload.i.i.i, 65536
  %.not.i.i.i373 = icmp eq i64 %i.akm, 0
  br i1 %.not.i.i.i373, label %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd10808bddb3d13e7E.exit.split.split.us.i.i.i", label %.critedge25.i.i.i

"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd10808bddb3d13e7E.exit.split.split.us.i.i.i": ; preds = %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd10808bddb3d13e7E.exit.split.i.i.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.1252.0.copyload.i.i.i) ]
  %i.akn = trunc i64 %.sroa.646.0.copyload.i.i.i to i1 ; 2 uses
  %i.ako = icmp eq i64 %.sroa.444.0.copyload.i.i.i, 0
  br i1 %i.ako, label %bb.rm, label %bb.rk

bb.rk:                                            ; preds = %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd10808bddb3d13e7E.exit.split.split.us.i.i.i"
  %.not.i.i.i.us.peel.i.peel.i.i = icmp ult i64 %.sroa.444.0.copyload.i.i.i, %.sroa.1353.0.copyload.i.i.i
  br i1 %.not.i.i.i.us.peel.i.peel.i.i, label %bb.rl, label %.split.i.i.i.us.peel.i.peel.i.i

.split.i.i.i.us.peel.i.peel.i.i:                  ; preds = %bb.rk
  %i.akp = icmp eq i64 %.sroa.444.0.copyload.i.i.i, %.sroa.1353.0.copyload.i.i.i
  br i1 %i.akp, label %bb.rm, label %.split.us155.i.i.i

bb.rl:                                            ; preds = %bb.rk
  %i.akq = getelementptr inbounds nuw i8, ptr %.sroa.1252.0.copyload.i.i.i, i64 %.sroa.444.0.copyload.i.i.i
  %i.akr = load i8, ptr %i.akq, align 1, !alias.scope !5359, !noalias !5360, !noundef !7
  %i.aks = icmp sgt i8 %i.akr, -65
  br i1 %i.aks, label %bb.rm, label %.split.us155.i.i.i

bb.rm:                                            ; preds = %bb.rl, %.split.i.i.i.us.peel.i.peel.i.i, %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd10808bddb3d13e7E.exit.split.split.us.i.i.i"
  %i.akt = getelementptr inbounds nuw i8, ptr %.sroa.1252.0.copyload.i.i.i, i64 %.sroa.444.0.copyload.i.i.i ; 4 uses
  %i.aku = icmp samesign eq i64 %.sroa.444.0.copyload.i.i.i, %.sroa.1353.0.copyload.i.i.i
  br i1 %i.aku, label %.loopexit208.i.peel.i.i, label %bb.rn

bb.rn:                                            ; preds = %bb.rm
  %i.akv = load i8, ptr %i.akt, align 1, !noalias !5361, !noundef !7 ; 5 uses
  %i.akw = icmp sgt i8 %i.akv, -1
  br i1 %i.akw, label %bb.ro, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit12.i.i.i.us.peel.i.peel.i.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit12.i.i.i.us.peel.i.peel.i.i": ; preds = %bb.rn
  %i.akx = getelementptr inbounds nuw i8, ptr %i.akt, i64 1
  %i.aky = and i8 %i.akv, 31
  %i.akz = zext nneg i8 %i.aky to i32             ; 3 uses
  %i.ala = add nuw nsw i64 %.sroa.444.0.copyload.i.i.i, 1
  %i.alb = icmp samesign ne i64 %i.ala, %.sroa.1353.0.copyload.i.i.i
  call void @llvm.assume(i1 %i.alb)
  %i.alc = load i8, ptr %i.akx, align 1, !noalias !5361, !noundef !7
  %i.ald = shl nuw nsw i32 %i.akz, 6
  %i.ale = and i8 %i.alc, 63
  %i.alf = zext nneg i8 %i.ale to i32             ; 2 uses
  %i.alg = or disjoint i32 %i.ald, %i.alf
  %i.alh = icmp samesign ugt i8 %i.akv, -33
  br i1 %i.alh, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit14.i.i.i.us.peel.i.peel.i.i", label %bb.rp

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit14.i.i.i.us.peel.i.peel.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit12.i.i.i.us.peel.i.peel.i.i"
  %i.ali = getelementptr inbounds nuw i8, ptr %i.akt, i64 2
  %i.alj = add nuw nsw i64 %.sroa.444.0.copyload.i.i.i, 2
  %i.alk = icmp samesign ne i64 %i.alj, %.sroa.1353.0.copyload.i.i.i
  call void @llvm.assume(i1 %i.alk)
  %i.all = load i8, ptr %i.ali, align 1, !noalias !5361, !noundef !7
  %i.alm = shl nuw nsw i32 %i.alf, 6
  %i.aln = and i8 %i.all, 63
  %i.alo = zext nneg i8 %i.aln to i32
  %i.alp = or disjoint i32 %i.alm, %i.alo         ; 2 uses
  %i.alq = shl nuw nsw i32 %i.akz, 12
  %i.alr = or disjoint i32 %i.alp, %i.alq
  %i.als = icmp samesign ugt i8 %i.akv, -17
  br i1 %i.als, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit16.i.i.i.us.peel.i.peel.i.i", label %bb.rp

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit16.i.i.i.us.peel.i.peel.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit14.i.i.i.us.peel.i.peel.i.i"
  %i.alt = getelementptr inbounds nuw i8, ptr %i.akt, i64 3
  %i.alu = add nuw nsw i64 %.sroa.444.0.copyload.i.i.i, 3
  %i.alv = icmp samesign ne i64 %i.alu, %.sroa.1353.0.copyload.i.i.i
  call void @llvm.assume(i1 %i.alv)
  %i.alw = load i8, ptr %i.alt, align 1, !noalias !5361, !noundef !7
  %i.alx = shl nuw nsw i32 %i.akz, 18
  %i.aly = and i32 %i.alx, 1835008
  %i.alz = shl nuw nsw i32 %i.alp, 6
  %i.ama = and i8 %i.alw, 63
  %i.amb = zext nneg i8 %i.ama to i32
  %i.amc = or disjoint i32 %i.alz, %i.amb
  %i.amd = or disjoint i32 %i.amc, %i.aly
  br label %bb.rp

bb.ro:                                            ; preds = %bb.rn
  %i.ame = zext nneg i8 %i.akv to i32
  br label %bb.rp

bb.rp:                                            ; preds = %bb.ro, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit16.i.i.i.us.peel.i.peel.i.i", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit14.i.i.i.us.peel.i.peel.i.i", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit12.i.i.i.us.peel.i.peel.i.i"
  %.sroa.4.0.i.ph.i.i.us.peel.i.peel.i.i = phi i32 [ %i.alr, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit14.i.i.i.us.peel.i.peel.i.i" ], [ %i.amd, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit16.i.i.i.us.peel.i.peel.i.i" ], [ %i.alg, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit12.i.i.i.us.peel.i.peel.i.i" ], [ %i.ame, %bb.ro ] ; 4 uses
  %i.amf = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.us.peel.i.peel.i.i, 1114112
  call void @llvm.assume(i1 %i.amf)
  br i1 %i.akn, label %.loopexit.i.us149.i.peel.i.i, label %bb.rq

bb.rq:                                            ; preds = %bb.rp
  %i.amg = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.us.peel.i.peel.i.i, 128
  br i1 %i.amg, label %bb.rt, label %bb.rr

bb.rr:                                            ; preds = %bb.rq
  %i.amh = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.us.peel.i.peel.i.i, 2048
  br i1 %i.amh, label %bb.rt, label %bb.rs

bb.rs:                                            ; preds = %bb.rr
  %i.ami = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.us.peel.i.peel.i.i, 65536
  %..i.i.us.peel.i.peel.i.i = select i1 %i.ami, i64 3, i64 4
  br label %bb.rt

bb.rt:                                            ; preds = %bb.rs, %bb.rr, %bb.rq
  %.sroa.01.0.i.i.us.peel.i.peel.i.i = phi i64 [ 2, %bb.rr ], [ %..i.i.us.peel.i.peel.i.i, %bb.rs ], [ 1, %bb.rq ]
  %i.amj = add i64 %.sroa.01.0.i.i.us.peel.i.peel.i.i, %.sroa.444.0.copyload.i.i.i ; 15 uses
  %i.amk = icmp eq i64 %i.amj, 0
  br i1 %i.amk, label %bb.rw, label %bb.ru

bb.ru:                                            ; preds = %bb.rt
  %.not.i.i.i.us.i.peel.i.i = icmp ult i64 %i.amj, %.sroa.1353.0.copyload.i.i.i
  br i1 %.not.i.i.i.us.i.peel.i.i, label %bb.rv, label %.split.i.i.i.us.i.peel.i.i

.split.i.i.i.us.i.peel.i.i:                       ; preds = %bb.ru
  %i.aml = icmp eq i64 %i.amj, %.sroa.1353.0.copyload.i.i.i
  br i1 %i.aml, label %bb.rw, label %.split.us155.i.i.i

bb.rv:                                            ; preds = %bb.ru
  %i.amm = getelementptr inbounds nuw i8, ptr %.sroa.1252.0.copyload.i.i.i, i64 %i.amj
  %i.amn = load i8, ptr %i.amm, align 1, !alias.scope !5359, !noalias !5360, !noundef !7
  %i.amo = icmp sgt i8 %i.amn, -65
  br i1 %i.amo, label %bb.rw, label %.split.us155.i.i.i

bb.rw:                                            ; preds = %bb.rv, %.split.i.i.i.us.i.peel.i.i, %bb.rt
  %i.amp = icmp samesign eq i64 %i.amj, %.sroa.1353.0.copyload.i.i.i
  br i1 %i.amp, label %.loopexit.i.us149.i.peel.i.i, label %bb.rx

bb.rx:                                            ; preds = %bb.rw
  %i.amq = getelementptr inbounds nuw i8, ptr %.sroa.1252.0.copyload.i.i.i, i64 %i.amj
  %i.amr = load i8, ptr %i.amq, align 1, !noalias !5361, !noundef !7 ; 3 uses
  %i.ams = icmp sgt i8 %i.amr, -1
  br i1 %i.ams, label %.loopexit.i.us149.i.peel.i.i, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit12.i.i.i.us.i.peel.i.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit12.i.i.i.us.i.peel.i.i": ; preds = %bb.rx
  %i.amt = add nuw nsw i64 %i.amj, 1
  %i.amu = icmp samesign ne i64 %i.amt, %.sroa.1353.0.copyload.i.i.i
  call void @llvm.assume(i1 %i.amu)
  %i.amv = icmp samesign ugt i8 %i.amr, -33
  br i1 %i.amv, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit14.i.i.i.us.i.peel.i.i", label %.loopexit.i.us149.i.peel.i.i

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit14.i.i.i.us.i.peel.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit12.i.i.i.us.i.peel.i.i"
  %i.amw = add nuw nsw i64 %i.amj, 2
  %i.amx = icmp samesign ne i64 %i.amw, %.sroa.1353.0.copyload.i.i.i
  call void @llvm.assume(i1 %i.amx)
  %i.amy = icmp samesign ugt i8 %i.amr, -17
  br i1 %i.amy, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit16.i.i.i.us.i.peel.i.i", label %.loopexit.i.us149.i.peel.i.i

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit16.i.i.i.us.i.peel.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit14.i.i.i.us.i.peel.i.i"
  %i.amz = add nuw nsw i64 %i.amj, 3
  %i.ana = icmp samesign ne i64 %i.amz, %.sroa.1353.0.copyload.i.i.i
  call void @llvm.assume(i1 %i.ana)
  br label %.loopexit.i.us149.i.peel.i.i

.loopexit208.i.peel.i.i:                          ; preds = %bb.rm
  br i1 %i.akn, label %.loopexit.i.us149.i.peel.i.i, label %.critedge25.i.i.i

.loopexit.i.us149.i.peel.i.i:                     ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit12.i.i.i.us.i.peel.i.i", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit14.i.i.i.us.i.peel.i.i", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit16.i.i.i.us.i.peel.i.i", %bb.rx, %.loopexit208.i.peel.i.i, %bb.rw, %bb.rp
  %.sroa.48.1.us204.i.peel.i.i = phi i64 [ %.sroa.444.0.copyload.i.i.i, %.loopexit208.i.peel.i.i ], [ %.sroa.1353.0.copyload.i.i.i, %bb.rw ], [ %.sroa.444.0.copyload.i.i.i, %bb.rp ], [ %i.amj, %bb.rx ], [ %i.amj, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit16.i.i.i.us.i.peel.i.i" ], [ %i.amj, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit14.i.i.i.us.i.peel.i.i" ], [ %i.amj, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit12.i.i.i.us.i.peel.i.i" ] ; 2 uses
  %i.anb = getelementptr inbounds nuw i8, ptr @328, i64 %.sroa.48.1.us204.i.peel.i.i
  invoke void @"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h705086954de2a2beE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull @328, ptr noundef nonnull %i.anb)
          to label %bb.ry unwind label %.loopexit.split.i.loopexit.split-lp.i.i, !noalias !5350

bb.ry:                                            ; preds = %.loopexit.i.us149.i.peel.i.i
  invoke void @"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h705086954de2a2beE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull readonly align 1 %i.ahi, ptr noundef nonnull readonly %i.ahv)
          to label %.preheader.i.us.i.i.i unwind label %.loopexit.split.i.loopexit.split-lp.i.i, !noalias !5350

.preheader.i.us.i.i.i:                            ; preds = %bb.ry, %6
  %.sroa.48.0.us147.i.i.i = phi i64 [ %.sroa.48.1191.i.i.i, %6 ], [ %.sroa.48.1.us204.i.peel.i.i, %bb.ry ] ; 13 uses
  %i.anc = icmp eq i64 %.sroa.48.0.us147.i.i.i, 0
  br i1 %i.anc, label %bb.sb, label %bb.rz

bb.rz:                                            ; preds = %.preheader.i.us.i.i.i
  %.not.i.i.i.us.peel.i.i.i = icmp ult i64 %.sroa.48.0.us147.i.i.i, %.sroa.1353.0.copyload.i.i.i
  br i1 %.not.i.i.i.us.peel.i.i.i, label %bb.sa, label %.split.i.i.i.us.peel.i.i.i

.split.i.i.i.us.peel.i.i.i:                       ; preds = %bb.rz
  %i.and = icmp eq i64 %.sroa.48.0.us147.i.i.i, %.sroa.1353.0.copyload.i.i.i
  br i1 %i.and, label %bb.sb, label %.split.us155.i.i.i

bb.sa:                                            ; preds = %bb.rz
  %i.ane = getelementptr inbounds nuw i8, ptr %.sroa.1252.0.copyload.i.i.i, i64 %.sroa.48.0.us147.i.i.i
  %i.anf = load i8, ptr %i.ane, align 1, !alias.scope !5359, !noalias !5360, !noundef !7
  %i.ang = icmp sgt i8 %i.anf, -65
  br i1 %i.ang, label %bb.sb, label %.split.us155.i.i.i

bb.sb:                                            ; preds = %bb.sa, %.split.i.i.i.us.peel.i.i.i, %.preheader.i.us.i.i.i
  %i.anh = getelementptr inbounds nuw i8, ptr %.sroa.1252.0.copyload.i.i.i, i64 %.sroa.48.0.us147.i.i.i ; 4 uses
  %i.ani = icmp samesign eq i64 %.sroa.48.0.us147.i.i.i, %.sroa.1353.0.copyload.i.i.i
  br i1 %i.ani, label %.critedge25.i.i.i, label %bb.sc

bb.sc:                                            ; preds = %bb.sb
  %i.anj = load i8, ptr %i.anh, align 1, !noalias !5361, !noundef !7 ; 4 uses
  %i.ank = icmp sgt i8 %i.anj, -1
  br i1 %i.ank, label %.thread.i.i386, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit12.i.i.i.us.peel.i.i.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit12.i.i.i.us.peel.i.i.i": ; preds = %bb.sc
  %i.anl = getelementptr inbounds nuw i8, ptr %i.anh, i64 1
  %i.anm = and i8 %i.anj, 31
  %i.ann = zext nneg i8 %i.anm to i32             ; 3 uses
  %i.ano = add nuw nsw i64 %.sroa.48.0.us147.i.i.i, 1
  %i.anp = icmp samesign ne i64 %i.ano, %.sroa.1353.0.copyload.i.i.i
  call void @llvm.assume(i1 %i.anp)
  %i.anq = load i8, ptr %i.anl, align 1, !noalias !5361, !noundef !7
  %i.anr = shl nuw nsw i32 %i.ann, 6
  %i.ans = and i8 %i.anq, 63
  %i.ant = zext nneg i8 %i.ans to i32             ; 2 uses
  %i.anu = or disjoint i32 %i.anr, %i.ant
  %i.anv = icmp samesign ugt i8 %i.anj, -33
  br i1 %i.anv, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit14.i.i.i.us.peel.i.i.i", label %bb.sd

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit14.i.i.i.us.peel.i.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit12.i.i.i.us.peel.i.i.i"
  %i.anw = getelementptr inbounds nuw i8, ptr %i.anh, i64 2
  %i.anx = add nuw nsw i64 %.sroa.48.0.us147.i.i.i, 2
  %i.any = icmp samesign ne i64 %i.anx, %.sroa.1353.0.copyload.i.i.i
  call void @llvm.assume(i1 %i.any)
  %i.anz = load i8, ptr %i.anw, align 1, !noalias !5361, !noundef !7
  %i.aoa = shl nuw nsw i32 %i.ant, 6
  %i.aob = and i8 %i.anz, 63
  %i.aoc = zext nneg i8 %i.aob to i32
  %i.aod = or disjoint i32 %i.aoa, %i.aoc         ; 2 uses
  %i.aoe = shl nuw nsw i32 %i.ann, 12
  %i.aof = or disjoint i32 %i.aod, %i.aoe
  %i.aog = icmp samesign ugt i8 %i.anj, -17
  br i1 %i.aog, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit16.i.i.i.us.peel.i.i.i", label %bb.sd

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit16.i.i.i.us.peel.i.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit14.i.i.i.us.peel.i.i.i"
  %i.aoh = getelementptr inbounds nuw i8, ptr %i.anh, i64 3
  %i.aoi = add nuw nsw i64 %.sroa.48.0.us147.i.i.i, 3
  %i.aoj = icmp samesign ne i64 %i.aoi, %.sroa.1353.0.copyload.i.i.i
  call void @llvm.assume(i1 %i.aoj)
  %i.aok = load i8, ptr %i.aoh, align 1, !noalias !5361, !noundef !7
  %i.aol = shl nuw nsw i32 %i.ann, 18
  %i.aom = and i32 %i.aol, 1835008
  %i.aon = shl nuw nsw i32 %i.aod, 6
  %i.aoo = and i8 %i.aok, 63
  %i.aop = zext nneg i8 %i.aoo to i32
  %i.aoq = or disjoint i32 %i.aon, %i.aop
  %i.aor = or disjoint i32 %i.aoq, %i.aom
  br label %bb.sd

bb.sd:                                            ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit16.i.i.i.us.peel.i.i.i", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit14.i.i.i.us.peel.i.i.i", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit12.i.i.i.us.peel.i.i.i"
  %.sroa.4.0.i.ph.i.i.us.peel.i.i.i = phi i32 [ %i.aof, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit14.i.i.i.us.peel.i.i.i" ], [ %i.aor, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit16.i.i.i.us.peel.i.i.i" ], [ %i.anu, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit12.i.i.i.us.peel.i.i.i" ] ; 4 uses
  %i.aos = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.us.peel.i.i.i, 1114112
  call void @llvm.assume(i1 %i.aos)
  %i.aot = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.us.peel.i.i.i, 128
  br i1 %i.aot, label %.thread.i.i386, label %bb.se

bb.se:                                            ; preds = %bb.sd
  %i.aou = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.us.peel.i.i.i, 2048
  br i1 %i.aou, label %.thread.i.i386, label %bb.sf

bb.sf:                                            ; preds = %bb.se
  %i.aov = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.us.peel.i.i.i, 65536
  %..i.i.us.peel.i.i.i = select i1 %i.aov, i64 3, i64 4
  br label %.thread.i.i386

.thread.i.i386:                                   ; preds = %bb.sf, %bb.se, %bb.sd, %bb.sc
  %.sroa.01.0.i.i.us.peel.i.i.i = phi i64 [ 2, %bb.se ], [ %..i.i.us.peel.i.i.i, %bb.sf ], [ 1, %bb.sd ], [ 1, %bb.sc ]
  %i.aow = add i64 %.sroa.01.0.i.i.us.peel.i.i.i, %.sroa.48.0.us147.i.i.i ; 15 uses
  %i.aox = icmp eq i64 %i.aow, 0
  br i1 %i.aox, label %bb.si, label %bb.sg

bb.sg:                                            ; preds = %.thread.i.i386
  %.not.i.i.i.us.i.i.i = icmp ult i64 %i.aow, %.sroa.1353.0.copyload.i.i.i
  br i1 %.not.i.i.i.us.i.i.i, label %bb.sh, label %.split.i.i.i.us.i.i.i

.split.i.i.i.us.i.i.i:                            ; preds = %bb.sg
  %i.aoy = icmp eq i64 %i.aow, %.sroa.1353.0.copyload.i.i.i
  br i1 %i.aoy, label %bb.si, label %.split.us155.i.i.i

bb.sh:                                            ; preds = %bb.sg
  %i.aoz = getelementptr inbounds nuw i8, ptr %.sroa.1252.0.copyload.i.i.i, i64 %i.aow
  %i.apa = load i8, ptr %i.aoz, align 1, !alias.scope !5359, !noalias !5360, !noundef !7
  %i.apb = icmp sgt i8 %i.apa, -65
  br i1 %i.apb, label %bb.si, label %.split.us155.i.i.i

bb.si:                                            ; preds = %bb.sh, %.split.i.i.i.us.i.i.i, %.thread.i.i386
  %i.apc = icmp samesign eq i64 %i.aow, %.sroa.1353.0.copyload.i.i.i
  br i1 %i.apc, label %.loopexit.i.i.i.i, label %bb.sj

bb.sj:                                            ; preds = %bb.si
  %i.apd = getelementptr inbounds nuw i8, ptr %.sroa.1252.0.copyload.i.i.i, i64 %i.aow
  %i.ape = load i8, ptr %i.apd, align 1, !noalias !5361, !noundef !7 ; 3 uses
  %i.apf = icmp sgt i8 %i.ape, -1
  br i1 %i.apf, label %.loopexit.i.i.i.i, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit12.i.i.i.us.i.i.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit12.i.i.i.us.i.i.i": ; preds = %bb.sj
  %i.apg = add nuw nsw i64 %i.aow, 1
  %i.aph = icmp samesign ne i64 %i.apg, %.sroa.1353.0.copyload.i.i.i
  call void @llvm.assume(i1 %i.aph)
  %i.api = icmp samesign ugt i8 %i.ape, -33
  br i1 %i.api, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit14.i.i.i.us.i.i.i", label %.loopexit.i.i.i.i

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit14.i.i.i.us.i.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit12.i.i.i.us.i.i.i"
  %i.apj = add nuw nsw i64 %i.aow, 2
  %i.apk = icmp samesign ne i64 %i.apj, %.sroa.1353.0.copyload.i.i.i
  call void @llvm.assume(i1 %i.apk)
  %i.apl = icmp samesign ugt i8 %i.ape, -17
  br i1 %i.apl, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit16.i.i.i.us.i.i.i", label %.loopexit.i.i.i.i

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit16.i.i.i.us.i.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit14.i.i.i.us.i.i.i"
  %i.apm = add nuw nsw i64 %i.aow, 3
  %i.apn = icmp samesign ne i64 %i.apm, %.sroa.1353.0.copyload.i.i.i
  call void @llvm.assume(i1 %i.apn)
  br label %.loopexit.i.i.i.i

.split.us155.i.i.i:                               ; preds = %bb.sh, %.split.i.i.i.us.i.i.i, %bb.sa, %.split.i.i.i.us.peel.i.i.i, %bb.rv, %.split.i.i.i.us.i.peel.i.i, %bb.rl, %.split.i.i.i.us.peel.i.peel.i.i
  %.sroa.48.1.us.lcssa.i.i.i = phi i64 [ %.sroa.444.0.copyload.i.i.i, %.split.i.i.i.us.peel.i.peel.i.i ], [ %.sroa.444.0.copyload.i.i.i, %bb.rl ], [ %i.amj, %.split.i.i.i.us.i.peel.i.i ], [ %i.amj, %bb.rv ], [ %i.aow, %bb.sh ], [ %i.aow, %.split.i.i.i.us.i.i.i ], [ %.sroa.48.0.us147.i.i.i, %.split.i.i.i.us.peel.i.i.i ], [ %.sroa.48.0.us147.i.i.i, %bb.sa ]
  invoke void @_ZN4core3str16slice_error_fail17h9e3908d5d4865c14E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.1252.0.copyload.i.i.i, i64 noundef %.sroa.1353.0.copyload.i.i.i, i64 noundef %.sroa.48.1.us.lcssa.i.i.i, i64 noundef %.sroa.1353.0.copyload.i.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1009) #33
          to label %.noexc.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !5350

.noexc.i.i.i:                                     ; preds = %.split.us155.i.i.i
  unreachable

.split.us.i.i.i:                                  ; preds = %.lr.ph
  %i.apo = add i64 %i.aid, %.sroa.0.0.i.i45.us.i.i.i
  %umax.i49.i.i.i = call i64 @llvm.umax.i64(i64 %.sroa.1353.0.copyload.i.i.i, i64 %i.apo)
  br label %.split137.us.invoke.i.i.i

.split137.us.invoke.i.i.i:                        ; preds = %.preheader.us.i.preheader.split.i.i, %bb.qz, %.lr.ph1154, %.lr.ph1161, %.split133.us.i.i.i, %.split.us.i.i.i
  %i.app = phi i64 [ %umax.i49.i.i.i, %.split.us.i.i.i ], [ %i.ajs, %.lr.ph1161 ], [ %umax.i.i.i.i, %.split133.us.i.i.i ], [ %i.aix, %bb.qz ], [ %i.aiv, %.lr.ph1154 ], [ %i.ahx, %.preheader.us.i.preheader.split.i.i ]
  %i.apq = phi i64 [ %.sroa.1353.0.copyload.i.i.i, %.split.us.i.i.i ], [ %.sroa.1353.0.copyload.i.i.i, %.lr.ph1161 ], [ %.sroa.1353.0.copyload.i.i.i, %.split133.us.i.i.i ], [ %.sroa.1353.0.copyload.i.i.i, %bb.qz ], [ %.sroa.15.0.copyload.i.i.i, %.lr.ph1154 ], [ %.sroa.15.0.copyload.i.i.i, %.preheader.us.i.preheader.split.i.i ]
  %i.apr = phi ptr [ @723, %.split.us.i.i.i ], [ @722, %.lr.ph1161 ], [ @723, %.split133.us.i.i.i ], [ @722, %bb.qz ], [ @721, %.lr.ph1154 ], [ @721, %.preheader.us.i.preheader.split.i.i ]
  invoke void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %i.app, i64 noundef %i.apq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.apr) #33
          to label %.split137.us.cont.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !5350

.split137.us.cont.i.i.i:                          ; preds = %.split137.us.invoke.i.i.i
  unreachable

.split133.us.i.i.i:                               ; preds = %.lr.ph1158
  %i.aps = add i64 %i.aji, %.sroa.444.0.copyload.i.i.i
  %umax.i.i.i.i = call i64 @llvm.umax.i64(i64 %.sroa.1353.0.copyload.i.i.i, i64 %i.aps)
  br label %.split137.us.invoke.i.i.i

.loopexit.split.i.loopexit.i.i:                   ; preds = %6, %.loopexit.i.i.i.i
  %lpad.loopexit241.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.i.i.i

.loopexit.split.i.loopexit.split-lp.i.i:          ; preds = %bb.ry, %.loopexit.i.us149.i.peel.i.i
  %lpad.loopexit.split-lp242.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.i.i.i

.loopexit.split-lp.i.i.i:                         ; preds = %.split137.us.invoke.i.i.i, %.split.us155.i.i.i
  %lpad.loopexit.split-lp.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.i.i.i

.loopexit.i.i.i.i:                                ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit12.i.i.i.us.i.i.i", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit14.i.i.i.us.i.i.i", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit16.i.i.i.us.i.i.i", %bb.sj, %bb.si
  %.sroa.48.1191.i.i.i = phi i64 [ %.sroa.1353.0.copyload.i.i.i, %bb.si ], [ %i.aow, %bb.sj ], [ %i.aow, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit16.i.i.i.us.i.i.i" ], [ %i.aow, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit14.i.i.i.us.i.i.i" ], [ %i.aow, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit12.i.i.i.us.i.i.i" ] ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr @328, i64 %.sroa.48.0.us147.i.i.i
  %5 = getelementptr inbounds nuw i8, ptr @328, i64 %.sroa.48.1191.i.i.i
  invoke void @"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h705086954de2a2beE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull %4, ptr noundef nonnull %5)
          to label %6 unwind label %.loopexit.split.i.loopexit.i.i, !noalias !5350

.critedge25.i.i.i:                                ; preds = %bb.sb, %bb.rd, %bb.qu, %.sink.split.i.us.i.i.i, %bb.ri, %.loopexit208.i.peel.i.i, %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd10808bddb3d13e7E.exit.split.i.i.i"
  %.sroa.06.0112.i.i.i = phi i64 [ 0, %.loopexit208.i.peel.i.i ], [ %.sroa.06.0.us.i.i.i, %.sink.split.i.us.i.i.i ], [ 0, %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd10808bddb3d13e7E.exit.split.i.i.i" ], [ %.sroa.06.0.us.i.i.i, %bb.ri ], [ %.sroa.06.0.us.i.i.i, %bb.rd ], [ %.sroa.06.0.us.i.i.i, %bb.qu ], [ %.sroa.1353.0.copyload.i.i.i, %bb.sb ]
  %i.apt = getelementptr inbounds nuw i8, ptr @328, i64 %.sroa.06.0112.i.i.i
  invoke void @"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h705086954de2a2beE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull %i.apt, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @328, i64 136))
          to label %bb.sl unwind label %bb.qs, !noalias !5350

6:                                                ; preds = %.loopexit.i.i.i.i
  invoke void @"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h705086954de2a2beE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull readonly align 1 %i.ahi, ptr noundef nonnull readonly %i.ahv)
          to label %.preheader.i.us.i.i.i unwind label %.loopexit.split.i.loopexit.i.i, !noalias !5350, !llvm.loop !5089

bb.sk:                                            ; preds = %.loopexit.i.i.i
  %i.apu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #32, !noalias !5350
  unreachable

bb.sl:                                            ; preds = %.critedge25.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false), !noalias !5362
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !5349
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !5342
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !5342
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.633.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !5342
  %i.apv = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.apw = load ptr, ptr %i.apv, align 8, !noalias !5342, !nonnull !7, !noundef !7
  %i.apx = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.apy = load i64, ptr %i.apx, align 8, !noalias !5342, !noundef !7
  invoke fastcc void @_ZN8rusqlite10Connection18prepare_with_flags17hc0e8780ef00dc013E(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.x, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.apw, i64 noundef %i.apy)
          to label %bb.so unwind label %bb.sn

bb.sm:                                            ; preds = %bb.sr, %bb.sn
  %.pn99.i.i = phi { ptr, i32 } [ %i.apz, %bb.sn ], [ %lpad.phi.i376, %bb.sr ]
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aa) #31
          to label %.body116.i.i unwind label %bb.qk, !noalias !5342

bb.sn:                                            ; preds = %bb.sl, %bb.td, %bb.sy, %bb.sp
  %i.apz = landingpad { ptr, i32 }
          cleanup
  br label %bb.sm

bb.so:                                            ; preds = %bb.sl
  %i.aqa = load i64, ptr %i.x, align 8, !range !15, !noalias !5342, !noundef !7
  %i.aqb = trunc nuw i64 %i.aqa to i1
  %i.aqc = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.633.i.i, ptr noundef nonnull align 8 dereferenceable(64) %i.aqc, i64 64, i1 false), !noalias !5342
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !5342
  br i1 %i.aqb, label %bb.sp, label %bb.sq

bb.sp:                                            ; preds = %bb.so
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !5342
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.t, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.633.i.i, i64 64, i1 false), !noalias !5342
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !5342
  invoke void @"_ZN4anki5error2db102_$LT$impl$u20$core..convert..From$LT$rusqlite..error..Error$GT$$u20$for$u20$anki..error..AnkiError$GT$4from17h203840764575bdf0E"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.s, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %i.t)
          to label %bb.th unwind label %bb.sn, !noalias !5342

bb.sq:                                            ; preds = %bb.so
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.y, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.633.i.i, i64 64, i1 false), !noalias !5342
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !5342
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !5342
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !5342
  invoke void @"_ZN4anki7storage4sync54_$LT$impl$u20$anki..storage..sqlite..SqliteStorage$GT$3usn17hb785e7eb17a3bc16E"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.u, ptr noundef nonnull align 8 %1, i1 noundef zeroext %3)
          to label %bb.ss unwind label %.loopexit.split-lp.i374, !noalias !5342

.loopexit.i377:                                   ; preds = %bb.su
  %lpad.loopexit.i378 = landingpad { ptr, i32 }
          cleanup
  br label %bb.sr

.loopexit.split-lp.i374:                          ; preds = %bb.sx, %_ZN8rusqlite9statement9Statement15bind_parameters17h1d4c92658edb0c43E.exit.i384, %bb.sq
  %lpad.loopexit.split-lp.i375 = landingpad { ptr, i32 }
          cleanup
  br label %bb.sr

bb.sr:                                            ; preds = %.loopexit.split-lp.i374, %.loopexit.i377
  %lpad.phi.i376 = phi { ptr, i32 } [ %lpad.loopexit.i378, %.loopexit.i377 ], [ %lpad.loopexit.split-lp.i375, %.loopexit.split-lp.i374 ]
  invoke fastcc void @"_ZN4core3ptr51drop_in_place$LT$rusqlite..statement..Statement$GT$17h4565240abdd5efccE"(ptr noalias noundef align 8 dereferenceable(64) %i.y) #31
          to label %bb.sm unwind label %bb.qk, !noalias !5342

bb.ss:                                            ; preds = %bb.sq
  %i.aqd = load i64, ptr %i.u, align 8, !range !28, !noalias !5342, !noundef !7 ; 2 uses
  %.not94.i.i = icmp eq i64 %i.aqd, -9223372036854775773
  %i.aqe = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.aqf = load i32, ptr %i.aqe, align 8, !noalias !5342 ; 2 uses
  br i1 %.not94.i.i, label %.lr.ph.i68.i, label %bb.st

bb.st:                                            ; preds = %bb.ss
  %.sroa.577.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  %.sroa.11438.sroa.10.4.copyload = load i32, ptr %.sroa.577.0..sroa_idx.i.i, align 4, !noalias !5341
  %.sroa.16.12..sroa.577.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %.sroa.16.12.copyload = load ptr, ptr %.sroa.16.12..sroa.577.0..sroa_idx.i.i.sroa_idx, align 8, !noalias !5341
  %.sroa.18.12..sroa.577.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %.sroa.18.12.copyload = load i64, ptr %.sroa.18.12..sroa.577.0..sroa_idx.i.i.sroa_idx, align 8, !noalias !5341
  %.sroa.20.12..sroa.577.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.20, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.20.12..sroa.577.0..sroa_idx.i.i.sroa_idx, i64 80, i1 false), !noalias !5341
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !5342
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !5342
  br label %bb.td

.lr.ph.i68.i:                                     ; preds = %bb.ss
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !5342
  store i32 %i.aqf, ptr %i.v, align 4, !noalias !5342
  store ptr %i.v, ptr %i.w, align 8, !noalias !5342
  %i.aqg = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr @169, ptr %i.aqg, align 8, !noalias !5342
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.1082.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !5363)
  %i.aqh = getelementptr inbounds nuw i8, ptr %i.y, i64 56 ; 2 uses
  %i.aqi = load ptr, ptr %i.aqh, align 8, !alias.scope !5363, !noalias !5364, !noundef !7
  %i.aqj = call noundef i32 @sqlite3_bind_parameter_count(ptr noundef %i.aqi) #34, !noalias !5365 ; 3 uses
  %i.aqk = sext i32 %i.aqj to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !5365
  store ptr %i.w, ptr %i.m, align 8, !noalias !5365
  %.not.i69.not.i = icmp eq i32 %i.aqj, 0
  br i1 %.not.i69.not.i, label %.thread.sink.split.i, label %bb.su

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3c60cd93ece0249eE.exit.thread.i.i382": ; preds = %.noexc72.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !5365
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !5365
  %.not13.i.i383 = icmp eq i32 %i.aqj, 1
  br i1 %.not13.i.i383, label %_ZN8rusqlite9statement9Statement15bind_parameters17h1d4c92658edb0c43E.exit.i384, label %.thread.i380

bb.su:                                            ; preds = %.lr.ph.i68.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !5365
  invoke void @_ZN8rusqlite9statement9Statement14bind_parameter17h7961f4d8e5b60af7E(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.l, ptr noundef nonnull readonly align 8 dereferenceable(64) %i.y, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.m, i64 noundef 1)
          to label %.noexc72.i unwind label %.loopexit.i377, !noalias !5333

.noexc72.i:                                       ; preds = %bb.su
  %i.aql = load i64, ptr %i.l, align 8, !range !30, !noalias !5365, !noundef !7 ; 2 uses
  %.not12.i.i379 = icmp eq i64 %i.aql, -9223372036854775783
  br i1 %.not12.i.i379, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3c60cd93ece0249eE.exit.thread.i.i382", label %bb.sv

bb.sv:                                            ; preds = %.noexc72.i
  %.sroa.877.0..sroa_idx78.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.877.0.copyload79.i = load i64, ptr %.sroa.877.0..sroa_idx78.i, align 8, !noalias !5366
  %.sroa.9.0..sroa_idx80.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sroa.9.0.copyload81.i = load i64, ptr %.sroa.9.0..sroa_idx80.i, align 8, !noalias !5366
  %.sroa.1082.0..sroa_idx83.i = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.1082.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.1082.0..sroa_idx83.i, i64 40, i1 false), !noalias !5366
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !5365
  br label %.thread.sink.split.i

.thread.sink.split.i:                             ; preds = %bb.sv, %.lr.ph.i68.i
  %.sroa.9.0.ph.ph.i = phi i64 [ %.sroa.9.0.copyload81.i, %bb.sv ], [ 0, %.lr.ph.i68.i ]
  %.sroa.877.0.ph.ph.i = phi i64 [ %.sroa.877.0.copyload79.i, %bb.sv ], [ 1, %.lr.ph.i68.i ]
  %.sroa.075.0.ph.ph.i = phi i64 [ %i.aql, %bb.sv ], [ -9223372036854775786, %.lr.ph.i68.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !5365
  br label %.thread.i380

.thread.i380:                                     ; preds = %.thread.sink.split.i, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3c60cd93ece0249eE.exit.thread.i.i382"
  %.sroa.9.0.ph.i381 = phi i64 [ %i.aqk, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3c60cd93ece0249eE.exit.thread.i.i382" ], [ %.sroa.9.0.ph.ph.i, %.thread.sink.split.i ]
  %.sroa.877.0.ph.i = phi i64 [ 1, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3c60cd93ece0249eE.exit.thread.i.i382" ], [ %.sroa.877.0.ph.ph.i, %.thread.sink.split.i ] ; 2 uses
  %.sroa.075.0.ph.i = phi i64 [ -9223372036854775786, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3c60cd93ece0249eE.exit.thread.i.i382" ], [ %.sroa.075.0.ph.ph.i, %.thread.sink.split.i ]
  %.sroa.877.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store i64 %.sroa.877.0.ph.i, ptr %.sroa.877.0..sroa_idx.i, align 8, !noalias !5342
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store i64 %.sroa.9.0.ph.i381, ptr %.sroa.9.0..sroa_idx.i, align 8, !noalias !5342
  %.sroa.1082.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.1082.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.1082.i, i64 40, i1 false), !noalias !5342
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1082.i)
  br label %bb.sx

_ZN8rusqlite9statement9Statement15bind_parameters17h1d4c92658edb0c43E.exit.i384: ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3c60cd93ece0249eE.exit.thread.i.i382"
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1082.i)
  %.val.i.i385 = load ptr, ptr %i.y, align 8, !noalias !5342
  %.val105.i.i = load ptr, ptr %i.aqh, align 8, !noalias !5342, !noundef !7
  invoke fastcc void @_ZN8rusqlite9statement9Statement29execute_with_bound_parameters17h99b9f01282993d44E(ptr noalias noundef align 8 captures(address) dereferenceable(64) %i.z, ptr %.val.i.i385, ptr %.val105.i.i)
          to label %bb.sw unwind label %.loopexit.split-lp.i374, !noalias !5342

bb.sw:                                            ; preds = %_ZN8rusqlite9statement9Statement15bind_parameters17h1d4c92658edb0c43E.exit.i384
  %.pre.i = load i64, ptr %i.z, align 8, !range !30, !noalias !5342 ; 2 uses
  %.not97.i.i = icmp eq i64 %.pre.i, -9223372036854775783
  br i1 %.not97.i.i, label %bb.sy, label %._crit_edge

._crit_edge:                                      ; preds = %bb.sw
  %.sroa.485.0..sroa_idx.i.i.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.sroa.485.0.copyload.i.i.pre = load i64, ptr %.sroa.485.0..sroa_idx.i.i.phi.trans.insert, align 8, !noalias !5342
  br label %bb.sx

bb.sx:                                            ; preds = %._crit_edge, %.thread.i380
  %.sroa.485.0.copyload.i.i = phi i64 [ %.sroa.877.0.ph.i, %.thread.i380 ], [ %.sroa.485.0.copyload.i.i.pre, %._crit_edge ]
  %i.aqm = phi i64 [ %.sroa.075.0.ph.i, %.thread.i380 ], [ %.pre.i, %._crit_edge ]
  %.sroa.586.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %.sroa.346.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !5342
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.346.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.586.0..sroa_idx.i.i, i64 48, i1 false), !noalias !5342
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !5342
  store i64 %i.aqm, ptr %i.r, align 8, !noalias !5342
  %.sroa.245.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 %.sroa.485.0.copyload.i.i, ptr %.sroa.245.0..sroa_idx.i.i, align 8, !noalias !5342
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !5342
  invoke void @"_ZN4anki5error2db102_$LT$impl$u20$core..convert..From$LT$rusqlite..error..Error$GT$$u20$for$u20$anki..error..AnkiError$GT$4from17h203840764575bdf0E"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.q, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %i.r)
          to label %bb.tc unwind label %.loopexit.split-lp.i374, !noalias !5342

bb.sy:                                            ; preds = %bb.sw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !5342
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !5342
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !5342
  invoke fastcc void @"_ZN4core3ptr51drop_in_place$LT$rusqlite..statement..Statement$GT$17h4565240abdd5efccE"(ptr noalias noundef align 8 dereferenceable(64) %i.y)
          to label %bb.sz unwind label %bb.sn, !noalias !5342

bb.sz:                                            ; preds = %bb.sy
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.633.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !5342
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %bb.ta unwind label %bb.qp, !noalias !5342

bb.ta:                                            ; preds = %bb.sz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !5342
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ab)
          to label %bb.tb unwind label %.loopexit.split-lp157.i.i, !noalias !5342
end_hunk_1
