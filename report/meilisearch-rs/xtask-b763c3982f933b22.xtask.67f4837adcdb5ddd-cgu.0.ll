Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/xtask-b763c3982f933b22.xtask.67f4837adcdb5ddd-cgu.0?download=true
inline.NumInlined: 1754
inline.NumDeleted: 971
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN5xtask4main17hb2a19bbcbf99ae36E:bb.a
  %i.adm = bitcast <16 x i1> %i.adl to i16        ; 2 uses
  %.not.not.i.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.adm, 0 ; 2 uses
  %i.adn = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.adm, i1 true)
  %i.ado = zext nneg i16 %i.adn to i64
  %.sroa.6.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %.not.not.i.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 undef, i64 %i.ado
  %i.adp = add i64 %.sroa.6.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.sroa.0.021.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.adq = and i64 %i.adp, %.val7.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %.not.not.i.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.hr, label %.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i:              ; preds = %bb.hq, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.6.126.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.adq, %bb.hq ], [ %.sroa.6.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.adr = icmp eq <16 x i8> %.sroa.0.0.copyload.i29.i.i.i.i.i.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.ads = bitcast <16 x i1> %i.adr to i16
  %i.adt = icmp eq i16 %i.ads, 0
  br i1 %i.adt, label %bb.hr, label %bb.hs, !prof !164

bb.hr:                                            ; preds = %.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.hq
  %.sroa.01.127.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 1, %.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.hq ]
  %.sroa.6.125.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.6.126.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ undef, %bb.hq ]
  %i.adu = add i64 %i.acw, 16                     ; 2 uses
  %i.adv = add i64 %i.adu, %.sroa.0.021.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  br label %bb.hp

bb.hs:                                            ; preds = %.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.adw = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %.sroa.6.126.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.adx = load i8, ptr %i.adw, align 1, !noalias !2611, !noundef !4 ; 2 uses
  %i.ady = icmp sgt i8 %i.adx, -1
  br i1 %i.ady, label %bb.ht, label %bb.hw, !prof !164

bb.ht:                                            ; preds = %bb.hs
  %.val62.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i, align 16, !noalias !2611
  %i.adz = icmp slt <16 x i8> %.val62.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, zeroinitializer
  %i.aea = bitcast <16 x i1> %i.adz to i16        ; 2 uses
  %i.aeb = icmp ne i16 %i.aea, 0
  call void @llvm.assume(i1 %i.aeb)
  %i.aec = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.aea, i1 true)
  %i.aed = zext nneg i16 %i.aec to i64            ; 2 uses
  %.phi.trans.insert.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.aed
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i.i.i.i.i.i.i.i.i, align 1, !noalias !2612
  br label %bb.hw

bb.hu:                                            ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17haaa23d1b18eaab85E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.aee = icmp eq i64 %.sroa.04.0.copyload.i.i.i.i.i.i.i.i, 0
  br i1 %i.aee, label %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17he686544b8b052035E.exit.i.i.i.i.i.i.i.i", label %bb.hv

bb.hv:                                            ; preds = %bb.hu
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.2.0.copyload.i.i.i.i.i.i.i.i, i64 noundef %.sroa.04.0.copyload.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #32, !noalias !2616
  br label %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17he686544b8b052035E.exit.i.i.i.i.i.i.i.i"

bb.hw:                                            ; preds = %bb.ht, %bb.hs
  %i.aef = phi i8 [ %.pre.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ht ], [ %i.adx, %bb.hs ]
  %.sroa.3.0.i.ph.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.aed, %bb.ht ], [ %.sroa.6.126.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.hs ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2619)
  %i.aeg = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %.sroa.3.0.i.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.aeh = and i8 %i.aef, 1
  %i.aei = zext nneg i8 %i.aeh to i64
  %i.aej = add i64 %.sroa.3.0.i.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, -16
  %i.aek = and i64 %i.aej, %.val7.i.i.i.i.i.i.i.i.i.i.i.i.i
  store i8 %i.acv, ptr %i.aeg, align 1, !noalias !2612
  %i.ael = getelementptr i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.aek
  %i.aem = getelementptr i8, ptr %i.ael, i64 16
  store i8 %i.acv, ptr %i.aem, align 1, !noalias !2612
  %i.aen = load <2 x i64>, ptr %i.zt, align 8, !alias.scope !2620, !noalias !2621
  %i.aeo = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.aei, i64 0
  %i.aep = sub <2 x i64> %i.aen, %i.aeo
  store <2 x i64> %i.aep, ptr %i.zt, align 8, !alias.scope !2620, !noalias !2621
  %i.aeq = sub nsw i64 0, %.sroa.3.0.i.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.aer = getelementptr inbounds [24 x i8], ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.aeq ; 3 uses
  %i.aes = getelementptr inbounds i8, ptr %i.aer, i64 -24
  store i64 %.sroa.04.0.copyload.i.i.i.i.i.i.i.i, ptr %i.aes, align 8, !noalias !2622
  %.sroa.4.0..sroa_idx2.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %i.aer, i64 -16
  store ptr %.sroa.2.0.copyload.i.i.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx2.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !2622
  %.sroa.5.0..sroa_idx4.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %i.aer, i64 -8
  store i64 %.sroa.3.0.copyload.i.i.i.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx4.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !2622
  br label %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17he686544b8b052035E.exit.i.i.i.i.i.i.i.i"

bb.hx:                                            ; preds = %bb.ho
  %i.aet = landingpad { ptr, i32 }
          cleanup
  store ptr %i.aab, ptr %i.zx, align 8, !alias.scope !2547, !noalias !2552
  %i.aeu = icmp eq i64 %.sroa.04.0.copyload.i.i.i.i.i.i.i.i, 0
  br i1 %i.aeu, label %.body.i.i.i.i.i, label %bb.hy

bb.hy:                                            ; preds = %bb.hx
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.2.0.copyload.i.i.i.i.i.i.i.i, i64 noundef %.sroa.04.0.copyload.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #32, !noalias !2623
  br label %.body.i.i.i.i.i

"_ZN4core3ptr52drop_in_place$LT$$u5b$alloc..string..String$u5d$$GT$17h5ef12ab01efd7a8cE.exit.i.i.i.i.i.i.i.i.i.i": ; preds = %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17he686544b8b052035E.exit.i.i.i.i.i.i.i.i", %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h8d7bb7c18fbc105dE.exit.i.i.i.i.i"
  call void @llvm.experimental.noalias.scope.decl(metadata !2626)
  call void @llvm.experimental.noalias.scope.decl(metadata !2629)
  %i.aev = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.aew = load i64, ptr %i.aev, align 8, !alias.scope !2632, !noalias !2552, !noundef !4 ; 2 uses
  %i.aex = icmp eq i64 %i.aew, 0
  br i1 %i.aex, label %_ZN4core4iter6traits8iterator8Iterator7collect17h81f13751f0030125E.exit.i, label %bb.hz

bb.hz:                                            ; preds = %"_ZN4core3ptr52drop_in_place$LT$$u5b$alloc..string..String$u5d$$GT$17h5ef12ab01efd7a8cE.exit.i.i.i.i.i.i.i.i.i.i"
  %i.aey = load ptr, ptr %i.as, align 8, !alias.scope !2632, !noalias !2552, !nonnull !4, !noundef !4
  %i.aez = mul nuw i64 %i.aew, 24
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aey, i64 noundef %i.aez, i64 noundef range(i64 1, -9223372036854775807) 8) #32, !noalias !2633
  br label %_ZN4core4iter6traits8iterator8Iterator7collect17h81f13751f0030125E.exit.i

"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17he686544b8b052035E.exit.i.i.i.i.i.i.i.i": ; preds = %bb.hw, %bb.hv, %bb.hu
  %.not.i.i.i.i.i.i.i.i20 = icmp eq ptr %i.aab, %i.zw
  br i1 %.not.i.i.i.i.i.i.i.i20, label %"_ZN4core3ptr52drop_in_place$LT$$u5b$alloc..string..String$u5d$$GT$17h5ef12ab01efd7a8cE.exit.i.i.i.i.i.i.i.i.i.i", label %bb.hn

bb.ia:                                            ; preds = %bb.hm
  %i.afa = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr396drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$alloc..string..String$GT$$C$$LT$hashbrown..set..HashSet$LT$alloc..string..String$C$std..hash..random..RandomState$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$alloc..string..String$GT$$GT$..extend$LT$alloc..vec..into_iter..IntoIter$LT$alloc..string..String$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h7a5a3709a33983c0E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %i.bb) #30, !noalias !2634
  br label %.body.i.i.i16

.body.i.i.i16:                                    ; preds = %bb.ia, %.body.i.i.i.i.i
  %eh.lpad-body.i.i.i17 = phi { ptr, i32 } [ %i.aet, %.body.i.i.i.i.i ], [ %i.afa, %bb.ia ]
  call fastcc void @"_ZN4core3ptr86drop_in_place$LT$std..collections..hash..set..HashSet$LT$alloc..string..String$GT$$GT$17h4a7088066e13b997E"(ptr noalias noundef align 8 dereferenceable(48) %i.at) #30, !noalias !2507
  br label %common.resume

bb.ib:                                            ; preds = %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h0f1402691206c23eE.exit.i.i.i.i.i.i"
  %i.afb = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr81drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$alloc..string..String$GT$$GT$17h2028026093edaa9fE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %i.bb) #30, !noalias !2634
  br label %common.resume

_ZN4core4iter6traits8iterator8Iterator7collect17h81f13751f0030125E.exit.i: ; preds = %bb.hz, %"_ZN4core3ptr52drop_in_place$LT$$u5b$alloc..string..String$u5d$$GT$17h5ef12ab01efd7a8cE.exit.i.i.i.i.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !2545
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bc, ptr noundef nonnull align 8 dereferenceable(48) %i.at, i64 48, i1 false), !noalias !2635
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !2507
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !2499
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !noalias !2499
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az), !noalias !2499
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay), !noalias !2499
  %i.afc = getelementptr inbounds nuw i8, ptr %i.ay, i64 48
  store i64 -9223372036854775808, ptr %i.afc, align 8, !noalias !2499
  %i.afd = getelementptr inbounds nuw i8, ptr %i.ay, i64 72
  store i64 -9223372036854775808, ptr %i.afd, align 8, !noalias !2499
  %i.afe = getelementptr inbounds nuw i8, ptr %i.ay, i64 96
  store i64 -9223372036854775808, ptr %i.afe, align 8, !noalias !2499
  %i.aff = getelementptr inbounds nuw i8, ptr %i.ay, i64 144
  store i64 0, ptr %i.ay, align 8, !noalias !2499
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.47.0..sroa_idx.i, align 8, !noalias !2499
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %.sroa.49.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i, i8 0, i64 16, i1 false), !noalias !2499
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.49.0..sroa_idx.i, align 8, !noalias !2499
  %.sroa.510.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 40
  store i64 0, ptr %.sroa.510.0..sroa_idx.i, align 8, !noalias !2499
  %i.afg = getelementptr inbounds nuw i8, ptr %i.ay, i64 120
  store ptr null, ptr %i.afg, align 8, !noalias !2499
  %.sroa.513.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 136
  store i64 0, ptr %.sroa.513.0..sroa_idx.i, align 8, !noalias !2499
  store <4 x i8> <i8 1, i8 0, i8 0, i8 0>, ptr %i.aff, align 8, !noalias !2499
  invoke void @_ZN14cargo_metadata15MetadataCommand4exec17h27b23bd037146052E(ptr noalias noundef nonnull sret([272 x i8]) align 8 captures(address) dereferenceable(272) %i.az, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(152) %i.ay)
          to label %bb.id unwind label %bb.ic, !noalias !2499

bb.ic:                                            ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17h81f13751f0030125E.exit.i
  %i.afh = landingpad { ptr, i32 }
          cleanup
  br label %.body.i21

.body.i21:                                        ; preds = %bb.if, %bb.ic
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.afh, %bb.ic ], [ %i.afl, %bb.if ]
  invoke fastcc void @"_ZN4core3ptr52drop_in_place$LT$cargo_metadata..MetadataCommand$GT$17ha375c67617a1843bE"(ptr noalias noundef align 8 dereferenceable(152) %i.ay) #30
          to label %bb.jw unwind label %bb.kj, !noalias !2499

bb.id:                                            ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17h81f13751f0030125E.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !2636)
  call void @llvm.experimental.noalias.scope.decl(metadata !2639)
  %i.afi = load i64, ptr %i.az, align 8, !range !317, !alias.scope !2639, !noalias !2641, !noundef !4
  %i.afj = icmp eq i64 %i.afi, -9223372036854775808
  br i1 %i.afj, label %bb.ie, label %bb.ii, !prof !164

bb.ie:                                            ; preds = %bb.id
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !2642
  %i.afk = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.au, ptr noundef nonnull align 8 dereferenceable(40) %i.afk, i64 40, i1 false), !noalias !2641
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @56, i64 noundef 43, ptr noundef nonnull align 1 %i.au, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @55, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @72) #29
          to label %bb.ig unwind label %bb.if, !noalias !2642

bb.if:                                            ; preds = %bb.ie
  %i.afl = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr50drop_in_place$LT$cargo_metadata..errors..Error$GT$17hf3f747fa9b1aeac9E"(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.au) #30
          to label %.body.i21 unwind label %bb.ih, !noalias !2642

bb.ig:                                            ; preds = %bb.ie
  unreachable

bb.ih:                                            ; preds = %bb.if
  %i.afm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #31, !noalias !2642
  unreachable

bb.ii:                                            ; preds = %bb.id
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %i.ba, ptr noundef nonnull align 8 dereferenceable(272) %i.az, i64 272, i1 false), !alias.scope !2643, !noalias !2499
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !2499
  invoke fastcc void @"_ZN4core3ptr52drop_in_place$LT$cargo_metadata..MetadataCommand$GT$17ha375c67617a1843bE"(ptr noalias noundef align 8 dereferenceable(152) %i.ay)
          to label %bb.ij unwind label %.loopexit.split-lp.i, !noalias !2499

.body41.i:                                        ; preds = %bb.jo, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5f5f09b4f09f7748E.exit.i", %.body.i.i.i.i35.i, %bb.in, %bb.im, %.loopexit.split-lp.i, %.loopexit.i
  %.pn28.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ], [ %i.age, %bb.in ], [ %eh.lpad-body.i.i.i.i.i, %.body.i.i.i.i35.i ], [ %i.age, %bb.im ], [ %lpad.loopexit.i, %.loopexit.i ], [ %.pn.i30368, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5f5f09b4f09f7748E.exit.i" ], [ %.pn.i30368, %bb.jo ]
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$cargo_metadata..Metadata$GT$17haea961300c33dbbbE"(ptr noalias noundef align 8 dereferenceable(272) %i.ba) #30
          to label %bb.jw unwind label %bb.kj, !noalias !2499

.loopexit.i:                                      ; preds = %.lr.ph
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.body41.i

.loopexit.split-lp.i:                             ; preds = %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd2f58bbcfeec2e42E.exit.i.i.i.i.i", %bb.il, %bb.ii
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body41.i

bb.ij:                                            ; preds = %bb.ii
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !2499
  %i.afn = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.afo = load ptr, ptr %i.afn, align 8, !noalias !2499, !nonnull !4, !noundef !4 ; 3 uses
  %i.afp = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.afq = load i64, ptr %i.afp, align 8, !noalias !2499, !noundef !4 ; 2 uses
  %.idx = mul nuw nsw i64 %i.afq, 640
  %i.afr = getelementptr inbounds nuw i8, ptr %i.afo, i64 %.idx ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !2644
  %.sroa.454.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %.sroa.455.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 72 ; 3 uses
  store i64 2, ptr %.sroa.455.0..sroa_idx.i, align 8, !alias.scope !2651, !noalias !2655
  %.sroa.557.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 144 ; 2 uses
  store ptr %i.afo, ptr %.sroa.557.0..sroa_idx.i, align 8, !alias.scope !2651, !noalias !2655
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 152
  store ptr %i.afr, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !2651, !noalias !2655
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 160 ; 3 uses
  store ptr %i.bc, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !2651, !noalias !2655
  call void @llvm.experimental.noalias.scope.decl(metadata !2656)
  call void @llvm.experimental.noalias.scope.decl(metadata !2659)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !2662
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !2662
  call void @llvm.experimental.noalias.scope.decl(metadata !2665)
  call void @llvm.experimental.noalias.scope.decl(metadata !2668)
  call void @llvm.experimental.noalias.scope.decl(metadata !2671)
  call void @llvm.experimental.noalias.scope.decl(metadata !2674)
  call void @llvm.experimental.noalias.scope.decl(metadata !2677)
  call void @llvm.experimental.noalias.scope.decl(metadata !2680)
  call void @llvm.experimental.noalias.scope.decl(metadata !2683)
  call void @llvm.experimental.noalias.scope.decl(metadata !2686)
  call void @llvm.experimental.noalias.scope.decl(metadata !2688)
  call void @llvm.experimental.noalias.scope.decl(metadata !2691)
  call void @llvm.experimental.noalias.scope.decl(metadata !2693)
  %.sroa.53.0..8.val.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %.sroa.64.0..8.val.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %.sroa.75.0..8.val.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %.sroa.86.0..8.val.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 40
  %.sroa.97.0..8.val.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 48
  %.sroa.108.0..8.val.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 56
  %.sroa.119.0..8.val.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 64
  %i.afs = icmp eq i64 %i.afq, 0
  br i1 %i.afs, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph

bb.ik:                                            ; preds = %.noexc38.i
  %i.aft = icmp eq ptr %i.afv, %i.afr
  br i1 %i.aft, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ij, %bb.ik
  %i.afu = phi ptr [ %i.afv, %bb.ik ], [ %i.afo, %bb.ij ] ; 4 uses
  %i.afv = getelementptr inbounds nuw i8, ptr %i.afu, i64 640 ; 3 uses
  store ptr %i.afv, ptr %.sroa.557.0..sroa_idx.i, align 8, !alias.scope !2696, !noalias !2699
  call void @llvm.experimental.noalias.scope.decl(metadata !2706)
  %i.afw = getelementptr inbounds nuw i8, ptr %i.afu, i64 568
  %i.afx = load ptr, ptr %i.afw, align 8, !alias.scope !2709, !noalias !2712, !noundef !4 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp ne ptr %i.afx, null ; 3 uses
  %i.afy = getelementptr inbounds nuw i8, ptr %i.afu, i64 576
  %i.afz = load i64, ptr %i.afy, align 8, !alias.scope !2709, !noalias !2712
  %i.aga = getelementptr inbounds nuw i8, ptr %i.afu, i64 584
  %i.agb = load i64, ptr %i.aga, align 8, !alias.scope !2709, !noalias !2712
  %.sroa.0.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = zext i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i to i64 ; 2 uses
  %.sroa.0.sroa.5.sroa.6.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.afz, i64 undef ; 2 uses
  %.sroa.5.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.agb, i64 0
  store i64 %.sroa.0.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.ap, align 8, !alias.scope !2714, !noalias !2718
  store ptr null, ptr %.sroa.454.0..sroa_idx.i, align 8, !alias.scope !2714, !noalias !2718
  store ptr %i.afx, ptr %.sroa.53.0..8.val.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !2714, !noalias !2718
  store i64 %.sroa.0.sroa.5.sroa.6.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.64.0..8.val.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !2714, !noalias !2718
  store i64 %.sroa.0.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.75.0..8.val.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !2714, !noalias !2718
  store ptr null, ptr %.sroa.86.0..8.val.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !2714, !noalias !2718
  store ptr %i.afx, ptr %.sroa.97.0..8.val.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !2714, !noalias !2718
  store i64 %.sroa.0.sroa.5.sroa.6.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.108.0..8.val.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !2714, !noalias !2718
  store i64 %.sroa.5.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.119.0..8.val.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !2714, !noalias !2718
  %i.agc = invoke fastcc noundef align 8 dereferenceable_or_null(24) ptr @"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold7flatten28_$u7b$$u7b$closure$u7d$$u7d$17h4f55ab233fe0ccfcE"(ptr nonnull readonly align 8 dereferenceable(8) %.sroa.7.0..sroa_idx.i, ptr noalias noundef nonnull align 8 dereferenceable(168) %i.ap)
          to label %.noexc38.i unwind label %.loopexit.i, !noalias !2499 ; 2 uses

.noexc38.i:                                       ; preds = %.lr.ph
  %.not7.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.agc, null
  br i1 %.not7.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ik, label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd2f58bbcfeec2e42E.exit.i.i.i.i.i"

.loopexit.i.i.i.i.i.i.i.i.i.i.i:                  ; preds = %bb.ik, %bb.ij
  %.pre.i = load i64, ptr %.sroa.455.0..sroa_idx.i, align 8, !range !298, !alias.scope !2719, !noalias !2720
  store i64 2, ptr %i.ap, align 8, !alias.scope !2719, !noalias !2720
  %.not17.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.pre.i, 2
  br i1 %.not17.i.i.i.i.i.i.i.i.i.i.i, label %.thread.i46, label %bb.il

bb.il:                                            ; preds = %.loopexit.i.i.i.i.i.i.i.i.i.i.i
  %i.agd = invoke fastcc noundef align 8 dereferenceable_or_null(24) ptr @"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold7flatten28_$u7b$$u7b$closure$u7d$$u7d$17h4f55ab233fe0ccfcE"(ptr nonnull readonly align 8 dereferenceable(8) %.sroa.7.0..sroa_idx.i, ptr noalias noundef align 8 dereferenceable(72) %.sroa.455.0..sroa_idx.i)
          to label %.noexc39.i unwind label %.loopexit.split-lp.i, !noalias !2499 ; 2 uses

.noexc39.i:                                       ; preds = %bb.il
  %.not18.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.agd, null
  br i1 %.not18.i.i.i.i.i.i.i.i.i.i.i, label %.thread.i46, label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd2f58bbcfeec2e42E.exit.i.i.i.i.i"

"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd2f58bbcfeec2e42E.exit.i.i.i.i.i": ; preds = %.noexc38.i, %.noexc39.i
  %.sroa.0.0.i.i.i.i.i.ph.i.i.i.i.i.i = phi ptr [ %i.agd, %.noexc39.i ], [ %i.agc, %.noexc38.i ]
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.an, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.0.0.i.i.i.i.i.ph.i.i.i.i.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @76)
          to label %.noexc40.i unwind label %.loopexit.split-lp.i, !noalias !2499

.noexc40.i:                                       ; preds = %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd2f58bbcfeec2e42E.exit.i.i.i.i.i"
  %.pr.i.i.i.i.i = load i64, ptr %i.an, align 8, !noalias !2662 ; 4 uses
  %.not.i.i.i.i.i22 = icmp eq i64 %.pr.i.i.i.i.i, -9223372036854775808
  br i1 %.not.i.i.i.i.i22, label %.thread.i46, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i23"

.thread.i46:                                      ; preds = %.noexc40.i, %.noexc39.i, %.loopexit.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !2662
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !2662
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !2644
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !noalias !2499
  br label %_ZN5alloc3str17join_generic_copy17h01dade358e0be9d3E.exit.i

bb.im:                                            ; preds = %bb.io
  %i.age = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.agf = icmp eq i64 %.pr.i.i.i.i.i, 0
  br i1 %i.agf, label %.body41.i, label %bb.in

bb.in:                                            ; preds = %bb.im
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload.i.i.i.i.i, i64 noundef %.pr.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #32, !noalias !2721
  br label %.body41.i

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i23": ; preds = %.noexc40.i
  %.sroa.5.0..sroa_idx.i.i.i.i.i24 = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %.sroa.5.0.copyload.i.i.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i24, align 8, !noalias !2662 ; 3 uses
  %.sroa.6.0..sroa_idx4.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %.sroa.6.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.6.0..sroa_idx4.i.i.i.i.i, align 8, !noalias !2662
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #32, !noalias !2724
  %i.agg = call noundef align 8 dereferenceable_or_null(96) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 96, i64 noundef range(i64 1, 9) 8) #32, !noalias !2724 ; 6 uses
  %i.agh = icmp eq ptr %i.agg, null
  br i1 %i.agh, label %bb.io, label %bb.ip

bb.io:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i23"
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 8, i64 96, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @36) #29
          to label %.noexc.i.i.i.i37.i unwind label %bb.im, !noalias !2662

.noexc.i.i.i.i37.i:                               ; preds = %bb.io
  unreachable

bb.ip:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i23"
  store i64 %.pr.i.i.i.i.i, ptr %i.agg, align 8, !noalias !2662
  %.sroa.410.0..sroa_idx.i.i.i.i.i25 = getelementptr inbounds nuw i8, ptr %i.agg, i64 8
  store ptr %.sroa.5.0.copyload.i.i.i.i.i, ptr %.sroa.410.0..sroa_idx.i.i.i.i.i25, align 8, !noalias !2662
  %.sroa.511.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.agg, i64 16
  store i64 %.sroa.6.0.copyload.i.i.i.i.i, ptr %.sroa.511.0..sroa_idx.i.i.i.i.i, align 8, !noalias !2662
  store i64 4, ptr %i.ao, align 8, !noalias !2662
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 3 uses
  store ptr %i.agg, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !2662
  %.sroa.6.0..sroa_idx.i.i.i.i.i26 = getelementptr inbounds nuw i8, ptr %i.ao, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i26, align 8, !noalias !2662
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !2662
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !2662
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.am, ptr noundef nonnull align 8 dereferenceable(168) %i.ap, i64 168, i1 false), !noalias !2729
  call void @llvm.experimental.noalias.scope.decl(metadata !2730)
  call void @llvm.experimental.noalias.scope.decl(metadata !2733)
  call void @llvm.experimental.noalias.scope.decl(metadata !2735)
  call void @llvm.experimental.noalias.scope.decl(metadata !2738)
  %i.agi = getelementptr inbounds nuw i8, ptr %i.am, i64 160 ; 3 uses
  %i.agj = getelementptr inbounds nuw i8, ptr %i.am, i64 144 ; 2 uses
  %i.agk = getelementptr inbounds nuw i8, ptr %i.am, i64 152
  %.sroa.42.0..8.val.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %.sroa.53.0..8.val.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %.sroa.64.0..8.val.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %.sroa.75.0..8.val.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  %.sroa.86.0..8.val.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 40
  %.sroa.97.0..8.val.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 48
  %.sroa.108.0..8.val.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 56
  %.sroa.119.0..8.val.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 64
  %i.agl = getelementptr inbounds nuw i8, ptr %i.am, i64 72 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i27 = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  br label %bb.iq

bb.iq:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hb10aca56101ecb75E.exit.i.i.i.i.i.i.i", %bb.ip
  %i.agm = phi ptr [ %i.ahg, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hb10aca56101ecb75E.exit.i.i.i.i.i.i.i" ], [ %i.agg, %bb.ip ]
  %.sroa.1285.0.copyload = phi i64 [ %i.ahi, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hb10aca56101ecb75E.exit.i.i.i.i.i.i.i" ], [ 1, %bb.ip ] ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !2740
  call void @llvm.experimental.noalias.scope.decl(metadata !2741)
  call void @llvm.experimental.noalias.scope.decl(metadata !2744)
  call void @llvm.experimental.noalias.scope.decl(metadata !2747)
  call void @llvm.experimental.noalias.scope.decl(metadata !2750)
  call void @llvm.experimental.noalias.scope.decl(metadata !2753)
  call void @llvm.experimental.noalias.scope.decl(metadata !2756)
  %i.agn = load i64, ptr %i.am, align 8, !range !298, !alias.scope !2759, !noalias !2760, !noundef !4
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.agn, 2
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.is, label %bb.ir

bb.ir:                                            ; preds = %bb.iq
  %i.ago = invoke fastcc noundef align 8 dereferenceable_or_null(24) ptr @"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold7flatten28_$u7b$$u7b$closure$u7d$$u7d$17h4f55ab233fe0ccfcE"(ptr nonnull readonly align 8 dereferenceable(8) %i.agi, ptr noalias noundef nonnull align 8 dereferenceable(168) %i.am)
          to label %.noexc6.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i.i, !noalias !2662 ; 2 uses

.noexc6.i.i.i.i.i:                                ; preds = %bb.ir
  %.not15.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ago, null
  br i1 %.not15.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.is, label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd2f58bbcfeec2e42E.exit.i.i.i.i.i.i.i"

bb.is:                                            ; preds = %.noexc6.i.i.i.i.i, %bb.iq
  call void @llvm.experimental.noalias.scope.decl(metadata !2766)
  call void @llvm.experimental.noalias.scope.decl(metadata !2769)
  %i.agp = load ptr, ptr %i.agj, align 8, !alias.scope !2771, !noalias !2772, !noundef !4 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i36.i = icmp eq ptr %i.agp, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i36.i, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.it

bb.it:                                            ; preds = %bb.is
  call void @llvm.experimental.noalias.scope.decl(metadata !2773)
  call void @llvm.experimental.noalias.scope.decl(metadata !2776)
  call void @llvm.experimental.noalias.scope.decl(metadata !2778)
  %i.agq = load ptr, ptr %i.agk, align 8, !alias.scope !2781, !noalias !2784, !nonnull !4, !noundef !4
  br label %bb.iu

bb.iu:                                            ; preds = %.noexc7.i.i.i.i.i, %bb.it
  %i.agr = phi ptr [ %i.agt, %.noexc7.i.i.i.i.i ], [ %i.agp, %bb.it ] ; 5 uses
  %i.ags = icmp eq ptr %i.agr, %i.agq
  br i1 %i.ags, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.iv

bb.iv:                                            ; preds = %bb.iu
  %i.agt = getelementptr inbounds nuw i8, ptr %i.agr, i64 640 ; 2 uses
  store ptr %i.agt, ptr %i.agj, align 8, !alias.scope !2781, !noalias !2784
  call void @llvm.experimental.noalias.scope.decl(metadata !2786)
  %i.agu = getelementptr inbounds nuw i8, ptr %i.agr, i64 568
  %i.agv = load ptr, ptr %i.agu, align 8, !alias.scope !2789, !noalias !2792, !noundef !4 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp ne ptr %i.agv, null ; 3 uses
  %i.agw = getelementptr inbounds nuw i8, ptr %i.agr, i64 576
  %i.agx = load i64, ptr %i.agw, align 8, !alias.scope !2789, !noalias !2792
  %i.agy = getelementptr inbounds nuw i8, ptr %i.agr, i64 584
  %i.agz = load i64, ptr %i.agy, align 8, !alias.scope !2789, !noalias !2792
  %.sroa.0.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = zext i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i to i64 ; 2 uses
  %.sroa.0.sroa.5.sroa.6.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.agx, i64 undef ; 2 uses
  %.sroa.5.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.agz, i64 0
  store i64 %.sroa.0.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.am, align 8, !alias.scope !2794, !noalias !2798
  store ptr null, ptr %.sroa.42.0..8.val.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !2794, !noalias !2798
  store ptr %i.agv, ptr %.sroa.53.0..8.val.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !2794, !noalias !2798
  store i64 %.sroa.0.sroa.5.sroa.6.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.64.0..8.val.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !2794, !noalias !2798
  store i64 %.sroa.0.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.75.0..8.val.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !2794, !noalias !2798
  store ptr null, ptr %.sroa.86.0..8.val.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !2794, !noalias !2798
  store ptr %i.agv, ptr %.sroa.97.0..8.val.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !2794, !noalias !2798
  store i64 %.sroa.0.sroa.5.sroa.6.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.108.0..8.val.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !2794, !noalias !2798
  store i64 %.sroa.5.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.119.0..8.val.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !2794, !noalias !2798
  %i.aha = invoke fastcc noundef align 8 dereferenceable_or_null(24) ptr @"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold7flatten28_$u7b$$u7b$closure$u7d$$u7d$17h4f55ab233fe0ccfcE"(ptr nonnull readonly align 8 dereferenceable(8) %i.agi, ptr noalias noundef nonnull align 8 dereferenceable(168) %i.am)
          to label %.noexc7.i.i.i.i.i unwind label %.loopexit.i.i.i.i.i, !noalias !2662 ; 2 uses

.noexc7.i.i.i.i.i:                                ; preds = %bb.iv
  %.not7.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.aha, null
  br i1 %.not7.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.iu, label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd2f58bbcfeec2e42E.exit.i.i.i.i.i.i.i"

.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i:              ; preds = %bb.iu, %bb.is
  store i64 2, ptr %i.am, align 8, !alias.scope !2759, !noalias !2760
  %i.ahb = load i64, ptr %i.agl, align 8, !range !298, !alias.scope !2759, !noalias !2760, !noundef !4
  %.not17.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ahb, 2
  br i1 %.not17.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph541, label %bb.iw

bb.iw:                                            ; preds = %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ahc = invoke fastcc noundef align 8 dereferenceable_or_null(24) ptr @"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold7flatten28_$u7b$$u7b$closure$u7d$$u7d$17h4f55ab233fe0ccfcE"(ptr nonnull readonly align 8 dereferenceable(8) %i.agi, ptr noalias noundef align 8 dereferenceable(72) %i.agl)
          to label %.noexc8.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i.i, !noalias !2662 ; 2 uses

.noexc8.i.i.i.i.i:                                ; preds = %bb.iw
  %.not18.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ahc, null
  br i1 %.not18.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph541, label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd2f58bbcfeec2e42E.exit.i.i.i.i.i.i.i"

"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd2f58bbcfeec2e42E.exit.i.i.i.i.i.i.i": ; preds = %.noexc7.i.i.i.i.i, %.noexc8.i.i.i.i.i, %.noexc6.i.i.i.i.i
  %.sroa.0.0.i.i.i.i.i.ph.i.i.i.i.i.i.i.i = phi ptr [ %i.ago, %.noexc6.i.i.i.i.i ], [ %i.ahc, %.noexc8.i.i.i.i.i ], [ %i.aha, %.noexc7.i.i.i.i.i ]
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.al, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.0.0.i.i.i.i.i.ph.i.i.i.i.i.i.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @76)
          to label %.noexc9.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i.i, !noalias !2662

.noexc9.i.i.i.i.i:                                ; preds = %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd2f58bbcfeec2e42E.exit.i.i.i.i.i.i.i"
  %.pr.i.i.i.i.i.i.i = load i64, ptr %i.al, align 8, !noalias !2740 ; 4 uses
  %.not.i.i.i.i.i.i.i28 = icmp eq i64 %.pr.i.i.i.i.i.i.i, -9223372036854775808
  br i1 %.not.i.i.i.i.i.i.i28, label %.lr.ph541, label %bb.ix

bb.ix:                                            ; preds = %.noexc9.i.i.i.i.i
  %.sroa.5.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !2740 ; 3 uses
  %.sroa.6.0.copyload.i.i.i.i.i.i.i = load i64, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i27, align 8, !noalias !2740
  %i.ahd = icmp samesign ult i64 %.sroa.1285.0.copyload, 384307168202282326
  call void @llvm.assume(i1 %i.ahd)
  %i.ahe = load i64, ptr %i.ao, align 8, !range !185, !alias.scope !2799, !noalias !2800, !noundef !4
  %i.ahf = icmp eq i64 %.sroa.1285.0.copyload, %i.ahe
  br i1 %i.ahf, label %bb.ja, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hb10aca56101ecb75E.exit.i.i.i.i.i.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hb10aca56101ecb75E.exit.i.i.i.i.i.i.i": ; preds = %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hb10aca56101ecb75E.exit.i.i_crit_edge.i.i.i.i.i", %bb.ix
  %i.ahg = phi ptr [ %.pre.i.i.i.i.i29, %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hb10aca56101ecb75E.exit.i.i_crit_edge.i.i.i.i.i" ], [ %i.agm, %bb.ix ] ; 2 uses
  %i.ahh = getelementptr inbounds nuw [24 x i8], ptr %i.ahg, i64 %.sroa.1285.0.copyload ; 3 uses
  store i64 %.pr.i.i.i.i.i.i.i, ptr %i.ahh, align 8, !noalias !2740
  %.sroa.49.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ahh, i64 8
  store ptr %.sroa.5.0.copyload.i.i.i.i.i.i.i, ptr %.sroa.49.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !2740
  %.sroa.510.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ahh, i64 16
  store i64 %.sroa.6.0.copyload.i.i.i.i.i.i.i, ptr %.sroa.510.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !2740
  %i.ahi = add nuw nsw i64 %.sroa.1285.0.copyload, 1 ; 2 uses
  store i64 %i.ahi, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i26, align 8, !alias.scope !2799, !noalias !2800
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !2740
  br label %bb.iq

bb.iy:                                            ; preds = %bb.ja
  %i.ahj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ahk = icmp eq i64 %.pr.i.i.i.i.i.i.i, 0
  br i1 %i.ahk, label %.body.i.i.i.i35.i, label %bb.iz

bb.iz:                                            ; preds = %bb.iy
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i.i.i.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload.i.i.i.i.i.i.i, i64 noundef %.pr.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #32, !noalias !2801
  br label %.body.i.i.i.i35.i

bb.ja:                                            ; preds = %bb.ix
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17ha778ce7eb152fc10E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ao, i64 noundef %.sroa.1285.0.copyload, i64 noundef range(i64 1, 0) 1, i64 noundef 8, i64 noundef 24)
          to label %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hb10aca56101ecb75E.exit.i.i_crit_edge.i.i.i.i.i" unwind label %bb.iy, !noalias !2800

"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hb10aca56101ecb75E.exit.i.i_crit_edge.i.i.i.i.i": ; preds = %bb.ja
  %.pre.i.i.i.i.i29 = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !2799, !noalias !2800
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hb10aca56101ecb75E.exit.i.i.i.i.i.i.i"

.loopexit.i.i.i.i.i:                              ; preds = %bb.iv
  %lpad.loopexit.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i35.i

.loopexit.split-lp.i.i.i.i.i:                     ; preds = %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd2f58bbcfeec2e42E.exit.i.i.i.i.i.i.i", %bb.iw, %bb.ir
  %lpad.loopexit.split-lp.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i35.i

.body.i.i.i.i35.i:                                ; preds = %.loopexit.split-lp.i.i.i.i.i, %.loopexit.i.i.i.i.i, %bb.iz, %bb.iy
  %eh.lpad-body.i.i.i.i.i = phi { ptr, i32 } [ %i.ahj, %bb.iy ], [ %i.ahj, %bb.iz ], [ %lpad.loopexit.i.i.i.i.i, %.loopexit.i.i.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i.i.i, %.loopexit.split-lp.i.i.i.i.i ]
  call fastcc void @"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17hbbc98d388f6cd8f9E"(ptr noalias noundef align 8 dereferenceable(24) %i.ao) #30, !noalias !2662
  br label %.body41.i

.lr.ph541:                                        ; preds = %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc8.i.i.i.i.i, %.noexc9.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !2740
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !2662
  %.sroa.083.0.copyload = load i64, ptr %i.ao, align 8, !noalias !2804 ; 4 uses
  %.sroa.684.sroa.0.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !2804 ; 10 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !2662
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !2644
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !noalias !2499
  call void @llvm.experimental.noalias.scope.decl(metadata !2805)
  %.idx.i.i = mul nuw nsw i64 %.sroa.1285.0.copyload, 24 ; 2 uses
  %i.ahl = getelementptr inbounds nuw i8, ptr %.sroa.684.sroa.0.0.copyload, i64 %.idx.i.i ; 2 uses
  %gepdiff.i.i = add nsw i64 %.idx.i.i, -24
  %i.ahm = udiv exact i64 %gepdiff.i.i, 24
  br label %bb.jc

bb.jb:                                            ; preds = %bb.jc
  %i.ahn = getelementptr inbounds nuw i8, ptr %i.ahp, i64 24 ; 2 uses
  %i.aho = icmp eq ptr %i.ahn, %i.ahl
  br i1 %i.aho, label %._crit_edge, label %bb.jc

bb.jc:                                            ; preds = %.lr.ph541, %bb.jb
  %.sroa.01.0.i.i.i540 = phi i64 [ %i.ahm, %.lr.ph541 ], [ %i.ahr, %bb.jb ] ; 2 uses
  %i.ahp = phi ptr [ %.sroa.684.sroa.0.0.copyload, %.lr.ph541 ], [ %i.ahn, %bb.jb ] ; 2 uses
  %i.ahq = getelementptr i8, ptr %i.ahp, i64 16
  %.val9.i.i.i = load i64, ptr %i.ahq, align 8, !alias.scope !2805, !noalias !2808, !noundef !4
  %i.ahr = add i64 %.val9.i.i.i, %.sroa.01.0.i.i.i540 ; 10 uses
  %i.ahs = icmp ult i64 %i.ahr, %.sroa.01.0.i.i.i540
  br i1 %i.ahs, label %bb.je, label %bb.jb

._crit_edge:                                      ; preds = %bb.jb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !2812
  %i.aht = icmp slt i64 %i.ahr, 0
  br i1 %i.aht, label %bb.jd, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i, !prof !1769

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i: ; preds = %._crit_edge
  %i.ahu = icmp eq i64 %i.ahr, 0
  br i1 %i.ahu, label %bb.jh, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #32, !noalias !2813
  %i.ahv = call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.ahr, i64 noundef range(i64 1, 9) 1) #32, !noalias !2813 ; 2 uses
  %i.ahw = icmp eq ptr %i.ahv, null
  br i1 %i.ahw, label %bb.jd, label %bb.jh

bb.jd:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i", %._crit_edge
  %.sroa.4.0.ph.i.i.i = phi i64 [ 1, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i" ], [ 0, %._crit_edge ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i, i64 %i.ahr, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @63) #29
          to label %.noexc43.i unwind label %bb.jp, !noalias !2499

.noexc43.i:                                       ; preds = %bb.jd
  unreachable

bb.je:                                            ; preds = %bb.jc
  invoke void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @60, i64 noundef 53, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @62) #29
          to label %.noexc44.i unwind label %bb.jp, !noalias !2499

.noexc44.i:                                       ; preds = %bb.je
  unreachable

bb.jf:                                            ; preds = %.invoke.i.i40, %bb.ji
  %i.ahx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2818)
  %.val.i.i.i42 = load i64, ptr %i.ak, align 8, !range !185, !alias.scope !2818, !noalias !2812, !noundef !4 ; 2 uses
  %i.ahy = icmp eq i64 %.val.i.i.i42, 0
  br i1 %i.ahy, label %.lr.ph.i.i.i.preheader, label %bb.jg

bb.jg:                                            ; preds = %bb.jf
  %.val1.i.i.i = load ptr, ptr %i.ahz, align 8, !alias.scope !2818, !noalias !2812, !nonnull !4, !noundef !4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i42, i64 noundef range(i64 1, -9223372036854775807) 1) #32, !noalias !2821
  br label %.lr.ph.i.i.i.preheader

bb.jh:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i", %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i
  %.sroa.10.0.i.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i ], [ %i.ahv, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i" ] ; 2 uses
  store i64 %i.ahr, ptr %i.ak, align 8, !noalias !2812
  %i.ahz = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 4 uses
  store ptr %.sroa.10.0.i.i.i, ptr %i.ahz, align 8, !noalias !2812
  %i.aia = getelementptr inbounds nuw i8, ptr %i.ak, i64 16 ; 2 uses
  store i64 0, ptr %i.aia, align 8, !noalias !2812
  %i.aib = getelementptr i8, ptr %.sroa.684.sroa.0.0.copyload, i64 8
  %.val.i.i31 = load ptr, ptr %i.aib, align 8, !alias.scope !2805, !noalias !2822, !nonnull !4, !noundef !4
  %i.aic = getelementptr i8, ptr %.sroa.684.sroa.0.0.copyload, i64 16
  %.val83.i.i32 = load i64, ptr %i.aic, align 8, !alias.scope !2805, !noalias !2822, !noundef !4 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2823)
  call void @llvm.experimental.noalias.scope.decl(metadata !2826)
  %i.aid = icmp ugt i64 %.val83.i.i32, %i.ahr
  br i1 %i.aid, label %bb.ji, label %bb.jj, !prof !164

bb.ji:                                            ; preds = %bb.jh
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17ha778ce7eb152fc10E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ak, i64 noundef 0, i64 noundef %.val83.i.i32, i64 noundef 1, i64 noundef 1)
          to label %.noexc.i.i44 unwind label %bb.jf, !noalias !2812

.noexc.i.i44:                                     ; preds = %bb.ji
  %.pre.i.i.i.i45 = load i64, ptr %i.aia, align 8, !alias.scope !2829, !noalias !2812
  %.pre.i.i = load ptr, ptr %i.ahz, align 8, !alias.scope !2829, !noalias !2812
  br label %bb.jj

bb.jj:                                            ; preds = %.noexc.i.i44, %bb.jh
  %i.aie = phi ptr [ %.sroa.10.0.i.i.i, %bb.jh ], [ %.pre.i.i, %.noexc.i.i44 ] ; 2 uses
  %i.aif = phi i64 [ 0, %bb.jh ], [ %.pre.i.i.i.i45, %.noexc.i.i44 ] ; 3 uses
  %i.aig = icmp sgt i64 %i.aif, -1
  call void @llvm.assume(i1 %i.aig)
  %i.aih = getelementptr inbounds nuw i8, ptr %i.aie, i64 %i.aif
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aih, ptr nonnull readonly align 1 %.val.i.i31, i64 %.val83.i.i32, i1 false), !noalias !2830
  %i.aii = add i64 %i.aif, %.val83.i.i32          ; 3 uses
  %i.aij = icmp sgt i64 %i.aii, -1
  call void @llvm.assume(i1 %i.aij)
  %i.aik = sub nsw i64 %i.ahr, %i.aii             ; 2 uses
  %i.ail = icmp eq i64 %.sroa.1285.0.copyload, 1
  br i1 %i.ail, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h2fdb78e107f1378fE.exit88.thread.i.i", label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.jj
  %.sroa.05.028.i.i = getelementptr inbounds nuw i8, ptr %.sroa.684.sroa.0.0.copyload, i64 24
  %i.aim = getelementptr inbounds nuw i8, ptr %i.aie, i64 %i.aii
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h7b0ae6765a76bde7E.exit92.i.i", %.lr.ph.preheader.i.i
  %.sroa.05.032.i.i = phi ptr [ %.sroa.05.0.i.i, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h7b0ae6765a76bde7E.exit92.i.i" ], [ %.sroa.05.028.i.i, %.lr.ph.preheader.i.i ] ; 2 uses
  %.sroa.08.231.i.i = phi ptr [ %i.ais, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h7b0ae6765a76bde7E.exit92.i.i" ], [ %i.aim, %.lr.ph.preheader.i.i ] ; 2 uses
  %.sroa.28.230.i.i = phi i64 [ %i.ait, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h7b0ae6765a76bde7E.exit92.i.i" ], [ %i.aik, %.lr.ph.preheader.i.i ] ; 2 uses
  %.pn29.i.i = phi ptr [ %.sroa.05.032.i.i, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h7b0ae6765a76bde7E.exit92.i.i" ], [ %.sroa.684.sroa.0.0.copyload, %.lr.ph.preheader.i.i ] ; 2 uses
  %i.ain = getelementptr i8, ptr %.pn29.i.i, i64 32
  %.val84.i.i33 = load ptr, ptr %i.ain, align 8, !alias.scope !2805, !noalias !2822, !nonnull !4, !noundef !4
  %i.aio = getelementptr i8, ptr %.pn29.i.i, i64 40
  %.val85.i.i = load i64, ptr %i.aio, align 8, !alias.scope !2805, !noalias !2822, !noundef !4 ; 4 uses
  %.not81.i.i = icmp eq i64 %.sroa.28.230.i.i, 0
  br i1 %.not81.i.i, label %bb.jk, label %bb.jl, !prof !164

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h2fdb78e107f1378fE.exit88.thread.i.i": ; preds = %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h7b0ae6765a76bde7E.exit92.i.i", %bb.jj
  %.sroa.28.2.lcssa.i.i = phi i64 [ %i.aik, %bb.jj ], [ %i.ait, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h7b0ae6765a76bde7E.exit92.i.i" ]
  %i.aip = sub i64 %i.ahr, %.sroa.28.2.lcssa.i.i
  %.sroa.058.0.copyload59.i = load i64, ptr %i.ak, align 8, !noalias !2831
  %.sroa.560.0.copyload62.i = load ptr, ptr %i.ahz, align 8, !noalias !2831
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !2812
  br label %_ZN5alloc3str17join_generic_copy17h01dade358e0be9d3E.exit.i

bb.jk:                                            ; preds = %.lr.ph.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !2812
  br label %.invoke.i.i40

bb.jl:                                            ; preds = %.lr.ph.i.i
  %i.aiq = add i64 %.sroa.28.230.i.i, -1          ; 2 uses
  store i8 32, ptr %.sroa.08.231.i.i, align 1, !alias.scope !2832, !noalias !2812
  %.not82.i.i = icmp ugt i64 %.val85.i.i, %i.aiq
  br i1 %.not82.i.i, label %bb.jm, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h7b0ae6765a76bde7E.exit92.i.i", !prof !164

bb.jm:                                            ; preds = %bb.jl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !2812
  br label %.invoke.i.i40

.invoke.i.i40:                                    ; preds = %bb.jm, %bb.jk
  %.sink.i.sroa.phi.i = phi ptr [ %.sink.i.sroa.gep.i, %bb.jk ], [ %.sink.i.sroa.gep66.i, %bb.jm ]
  %.sink.i.sroa.phi67.i = phi ptr [ %.sink.i.sroa.gep68.i, %bb.jk ], [ %.sink.i.sroa.gep69.i, %bb.jm ]
  %.sink.i.sroa.phi70.i = phi ptr [ %.sink.i.sroa.gep71.i, %bb.jk ], [ %.sink.i.sroa.gep72.i, %bb.jm ]
  %.sink.i.sroa.phi73.i = phi ptr [ %.sink.i.sroa.gep74.i, %bb.jk ], [ %.sink.i.sroa.gep75.i, %bb.jm ]
  %.sink.i.i41 = phi ptr [ %i.aj, %bb.jk ], [ %i.ai, %bb.jm ] ; 2 uses
  store ptr @65, ptr %.sink.i.i41, align 8, !noalias !2812
  store i64 1, ptr %.sink.i.sroa.phi.i, align 8, !noalias !2812
  store ptr null, ptr %.sink.i.sroa.phi67.i, align 8, !noalias !2812
  store ptr inttoptr (i64 8 to ptr), ptr %.sink.i.sroa.phi70.i, align 8, !noalias !2812
  store i64 0, ptr %.sink.i.sroa.phi73.i, align 8, !noalias !2812
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %.sink.i.i41, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @66) #29
          to label %.cont.i.i43 unwind label %bb.jf, !noalias !2812

.cont.i.i43:                                      ; preds = %.invoke.i.i40
  unreachable

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h7b0ae6765a76bde7E.exit92.i.i": ; preds = %bb.jl
  %i.air = getelementptr inbounds nuw i8, ptr %.sroa.08.231.i.i, i64 1 ; 2 uses
  %i.ais = getelementptr inbounds nuw i8, ptr %i.air, i64 %.val85.i.i
  %i.ait = sub nuw i64 %i.aiq, %.val85.i.i        ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.air, ptr nonnull readonly align 1 %.val84.i.i33, i64 %.val85.i.i, i1 false), !alias.scope !2836, !noalias !2812
  %.sroa.05.0.i.i = getelementptr inbounds nuw i8, ptr %.sroa.05.032.i.i, i64 24 ; 2 uses
  %i.aiu = icmp eq ptr %.sroa.05.0.i.i, %i.ahl
  br i1 %i.aiu, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h2fdb78e107f1378fE.exit88.thread.i.i", label %.lr.ph.i.i

.body45.i:                                        ; preds = %bb.jr, %bb.jq
  call void @llvm.experimental.noalias.scope.decl(metadata !2840), !noalias !2499
  %i.aiv = icmp eq i64 %.sroa.1285.1, 0
  br i1 %i.aiv, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5f5f09b4f09f7748E.exit.i", label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.jg, %bb.jf, %bb.jp, %.body45.i
  %.pn.i30367 = phi { ptr, i32 } [ %i.aji, %.body45.i ], [ %i.ahx, %bb.jg ], [ %i.ahx, %bb.jf ], [ %i.ajd, %bb.jp ]
  %.sroa.083.0365 = phi i64 [ %.sroa.083.1, %.body45.i ], [ %.sroa.083.0.copyload, %bb.jg ], [ %.sroa.083.0.copyload, %bb.jf ], [ %.sroa.083.0.copyload, %bb.jp ]
  %.sroa.1285.sroa.0.0364 = phi i64 [ %.sroa.1285.1, %.body45.i ], [ %.sroa.1285.0.copyload, %bb.jg ], [ %.sroa.1285.0.copyload, %bb.jf ], [ %.sroa.1285.0.copyload, %bb.jp ]
  %.sroa.684.sroa.0.0362 = phi ptr [ %.sroa.684.sroa.0.1, %.body45.i ], [ %.sroa.684.sroa.0.0.copyload, %bb.jg ], [ %.sroa.684.sroa.0.0.copyload, %bb.jf ], [ %.sroa.684.sroa.0.0.copyload, %bb.jp ] ; 2 uses
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h8e5c1babcdd0534fE.exit.i.i.i"
  %.sroa.0.011.i.i.i = phi i64 [ %i.aix, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h8e5c1babcdd0534fE.exit.i.i.i" ], [ 0, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %i.aiw = getelementptr inbounds nuw [24 x i8], ptr %.sroa.684.sroa.0.0362, i64 %.sroa.0.011.i.i.i ; 2 uses
  %i.aix = add nuw i64 %.sroa.0.011.i.i.i, 1      ; 2 uses
  %.val8.i.i.i = load i64, ptr %i.aiw, align 8, !range !185, !alias.scope !2843, !noalias !2846, !noundef !4 ; 2 uses
  %i.aiy = icmp eq i64 %.val8.i.i.i, 0
  br i1 %i.aiy, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h8e5c1babcdd0534fE.exit.i.i.i", label %bb.jn

bb.jn:                                            ; preds = %.lr.ph.i.i.i
  %i.aiz = getelementptr i8, ptr %i.aiw, i64 8
  %.val9.i.i.i64 = load ptr, ptr %i.aiz, align 8, !alias.scope !2840, !noalias !2846, !nonnull !4, !noundef !4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i64, i64 noundef %.val8.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #32, !noalias !2849
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h8e5c1babcdd0534fE.exit.i.i.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h8e5c1babcdd0534fE.exit.i.i.i": ; preds = %bb.jn, %.lr.ph.i.i.i
  %i.aja = icmp eq i64 %i.aix, %.sroa.1285.sroa.0.0364
  br i1 %i.aja, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5f5f09b4f09f7748E.exit.i", label %.lr.ph.i.i.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5f5f09b4f09f7748E.exit.i": ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h8e5c1babcdd0534fE.exit.i.i.i", %.body45.i
  %.pn.i30368 = phi { ptr, i32 } [ %i.aji, %.body45.i ], [ %.pn.i30367, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h8e5c1babcdd0534fE.exit.i.i.i" ] ; 2 uses
  %.sroa.083.0366 = phi i64 [ %.sroa.083.1, %.body45.i ], [ %.sroa.083.0365, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h8e5c1babcdd0534fE.exit.i.i.i" ] ; 2 uses
  %.sroa.684.sroa.0.0363 = phi ptr [ %.sroa.684.sroa.0.1, %.body45.i ], [ %.sroa.684.sroa.0.0362, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h8e5c1babcdd0534fE.exit.i.i.i" ]
  %i.ajb = icmp eq i64 %.sroa.083.0366, 0
  br i1 %i.ajb, label %.body41.i, label %bb.jo

bb.jo:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5f5f09b4f09f7748E.exit.i"
  %i.ajc = mul nuw i64 %.sroa.083.0366, 24
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.684.sroa.0.0363, i64 noundef %i.ajc, i64 noundef range(i64 1, -9223372036854775807) 8) #32, !noalias !2846
  br label %.body41.i

bb.jp:                                            ; preds = %bb.je, %bb.jd
  %i.ajd = landingpad { ptr, i32 }
          cleanup
  br label %.lr.ph.i.i.i.preheader

_ZN5alloc3str17join_generic_copy17h01dade358e0be9d3E.exit.i: ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h2fdb78e107f1378fE.exit88.thread.i.i", %.thread.i46
  %.sroa.684.sroa.0.1 = phi ptr [ inttoptr (i64 8 to ptr), %.thread.i46 ], [ %.sroa.684.sroa.0.0.copyload, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h2fdb78e107f1378fE.exit88.thread.i.i" ] ; 4 uses
  %.sroa.1285.1 = phi i64 [ 0, %.thread.i46 ], [ %.sroa.1285.0.copyload, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h2fdb78e107f1378fE.exit88.thread.i.i" ] ; 4 uses
  %.sroa.083.1 = phi i64 [ 0, %.thread.i46 ], [ %.sroa.083.0.copyload, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h2fdb78e107f1378fE.exit88.thread.i.i" ] ; 4 uses
  %.sroa.058.0.i = phi i64 [ 0, %.thread.i46 ], [ %.sroa.058.0.copyload59.i, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h2fdb78e107f1378fE.exit88.thread.i.i" ]
  %.sroa.560.0.i = phi ptr [ inttoptr (i64 1 to ptr), %.thread.i46 ], [ %.sroa.560.0.copyload62.i, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h2fdb78e107f1378fE.exit88.thread.i.i" ]
  %.sroa.663.0.i = phi i64 [ 0, %.thread.i46 ], [ %i.aip, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h2fdb78e107f1378fE.exit88.thread.i.i" ]
  store i64 %.sroa.058.0.i, ptr %i.ax, align 8, !noalias !2499
  %.sroa.560.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 3 uses
  store ptr %.sroa.560.0.i, ptr %.sroa.560.0..sroa_idx.i, align 8, !noalias !2499
  %.sroa.663.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  store i64 %.sroa.663.0.i, ptr %.sroa.663.0..sroa_idx.i, align 8, !noalias !2499
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !2499
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !2499
  store ptr %i.ax, ptr %i.av, align 8, !noalias !2499
  %.sroa.425.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store ptr @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..fmt..Display$GT$3fmt17h86a528f6a97fe10dE", ptr %.sroa.425.0..sroa_idx.i, align 8, !noalias !2499
  store ptr @74, ptr %i.aw, align 8, !noalias !2499
  %i.aje = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store i64 2, ptr %i.aje, align 8, !noalias !2499
  %i.ajf = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  store ptr null, ptr %i.ajf, align 8, !noalias !2499
  %i.ajg = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  store ptr %i.av, ptr %i.ajg, align 8, !noalias !2499
  %i.ajh = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  store i64 1, ptr %i.ajh, align 8, !noalias !2499
  invoke void @_ZN3std2io5stdio6_print17h361a6d98ea723aceE(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.aw)
          to label %bb.js unwind label %bb.jq, !noalias !2499

bb.jq:                                            ; preds = %_ZN5alloc3str17join_generic_copy17h01dade358e0be9d3E.exit.i
  %i.aji = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val33.i = load i64, ptr %i.ax, align 8, !range !185, !alias.scope !2852, !noalias !2499, !noundef !4 ; 2 uses
  %i.ajj = icmp eq i64 %.val33.i, 0
  br i1 %i.ajj, label %.body45.i, label %bb.jr

bb.jr:                                            ; preds = %bb.jq
  %.val34.i = load ptr, ptr %.sroa.560.0..sroa_idx.i, align 8, !noalias !2499, !nonnull !4, !noundef !4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val34.i, i64 noundef %.val33.i, i64 noundef range(i64 1, -9223372036854775807) 1) #32, !noalias !2855
  br label %.body45.i

bb.js:                                            ; preds = %_ZN5alloc3str17join_generic_copy17h01dade358e0be9d3E.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !2499
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !2499
  %.val.i = load i64, ptr %i.ax, align 8, !range !185, !alias.scope !2852, !noalias !2499, !noundef !4 ; 2 uses
  %i.ajk = icmp eq i64 %.val.i, 0
  br i1 %i.ajk, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h8e5c1babcdd0534fE.exit49.i", label %bb.jt

bb.jt:                                            ; preds = %bb.js
  %.val32.i = load ptr, ptr %.sroa.560.0..sroa_idx.i, align 8, !noalias !2499, !nonnull !4, !noundef !4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val32.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #32, !noalias !2858
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h8e5c1babcdd0534fE.exit49.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h8e5c1babcdd0534fE.exit49.i": ; preds = %bb.jt, %bb.js
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !2499
  call void @llvm.experimental.noalias.scope.decl(metadata !2861)
  %i.ajl = icmp eq i64 %.sroa.1285.1, 0
  br i1 %i.ajl, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5f5f09b4f09f7748E.exit.i.i", label %.lr.ph.i.i.i.i34

.lr.ph.i.i.i.i34:                                 ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h8e5c1babcdd0534fE.exit49.i", %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h8e5c1babcdd0534fE.exit.i.i.i.i37"
  %.sroa.0.011.i.i.i.i = phi i64 [ %i.ajn, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h8e5c1babcdd0534fE.exit.i.i.i.i37" ], [ 0, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h8e5c1babcdd0534fE.exit49.i" ] ; 2 uses
  %i.ajm = getelementptr inbounds nuw [24 x i8], ptr %.sroa.684.sroa.0.1, i64 %.sroa.0.011.i.i.i.i ; 2 uses
  %i.ajn = add nuw i64 %.sroa.0.011.i.i.i.i, 1    ; 2 uses
  %.val8.i.i.i.i35 = load i64, ptr %i.ajm, align 8, !range !185, !alias.scope !2864, !noalias !2867, !noundef !4 ; 2 uses
  %i.ajo = icmp eq i64 %.val8.i.i.i.i35, 0
  br i1 %i.ajo, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h8e5c1babcdd0534fE.exit.i.i.i.i37", label %bb.ju

bb.ju:                                            ; preds = %.lr.ph.i.i.i.i34
  %i.ajp = getelementptr i8, ptr %i.ajm, i64 8
  %.val9.i.i.i.i36 = load ptr, ptr %i.ajp, align 8, !alias.scope !2861, !noalias !2867, !nonnull !4, !noundef !4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i36, i64 noundef %.val8.i.i.i.i35, i64 noundef range(i64 1, -9223372036854775807) 1) #32, !noalias !2870
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h8e5c1babcdd0534fE.exit.i.i.i.i37"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h8e5c1babcdd0534fE.exit.i.i.i.i37": ; preds = %bb.ju, %.lr.ph.i.i.i.i34
  %i.ajq = icmp eq i64 %i.ajn, %.sroa.1285.1
  br i1 %i.ajq, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5f5f09b4f09f7748E.exit.i.i", label %.lr.ph.i.i.i.i34

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5f5f09b4f09f7748E.exit.i.i": ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h8e5c1babcdd0534fE.exit.i.i.i.i37", %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h8e5c1babcdd0534fE.exit49.i"
  %i.ajr = icmp eq i64 %.sroa.083.1, 0
  br i1 %i.ajr, label %"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17hbbc98d388f6cd8f9E.exit.i", label %bb.jv

bb.jv:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5f5f09b4f09f7748E.exit.i.i"
  %i.ajs = mul nuw i64 %.sroa.083.1, 24
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.684.sroa.0.1, i64 noundef %i.ajs, i64 noundef range(i64 1, -9223372036854775807) 8) #32, !noalias !2867
  br label %"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17hbbc98d388f6cd8f9E.exit.i"

"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17hbbc98d388f6cd8f9E.exit.i": ; preds = %bb.jv, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5f5f09b4f09f7748E.exit.i.i"
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$cargo_metadata..Metadata$GT$17haea961300c33dbbbE"(ptr noalias noundef align 8 dereferenceable(272) %i.ba)
          to label %bb.kd unwind label %bb.kc, !noalias !2499

bb.jw:                                            ; preds = %bb.kc, %.body41.i, %.body.i21
  %.pn30.i = phi { ptr, i32 } [ %i.ale, %bb.kc ], [ %.pn28.i, %.body41.i ], [ %eh.lpad-body.i, %.body.i21 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2873)
  call void @llvm.experimental.noalias.scope.decl(metadata !2876), !noalias !2499
  call void @llvm.experimental.noalias.scope.decl(metadata !2879), !noalias !2499
  call void @llvm.experimental.noalias.scope.decl(metadata !2882), !noalias !2499
  call void @llvm.experimental.noalias.scope.decl(metadata !2885), !noalias !2499
  call void @llvm.experimental.noalias.scope.decl(metadata !2888), !noalias !2499
  %i.ajt = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.aju = load i64, ptr %i.ajt, align 8, !alias.scope !2891, !noalias !2499, !noundef !4 ; 3 uses
  %i.ajv = icmp eq i64 %i.aju, 0
  br i1 %i.ajv, label %common.resume, label %bb.jx

bb.jx:                                            ; preds = %bb.jw
  call void @llvm.experimental.noalias.scope.decl(metadata !2892), !noalias !2499
  %i.ajw = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %i.ajx = load i64, ptr %i.ajw, align 8, !alias.scope !2895, !noalias !2499, !noundef !4 ; 2 uses
  %i.ajy = icmp eq i64 %i.ajx, 0
  br i1 %i.ajy, label %_ZN9hashbrown3raw13RawTableInner13drop_elements17h303606d4757e4c22E.exit.i.i.i.i.i.i, label %bb.jy

bb.jy:                                            ; preds = %bb.jx
  %i.ajz = load ptr, ptr %i.bc, align 8, !alias.scope !2895, !noalias !2499, !nonnull !4, !noundef !4 ; 3 uses
  %.val13.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.ajz, align 16, !noalias !2896
  %i.aka = icmp sgt <16 x i8> %.val13.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.akb = getelementptr inbounds nuw i8, ptr %i.ajz, i64 16
  %i.akc = bitcast <16 x i1> %i.aka to i16
  br label %bb.jz

bb.jz:                                            ; preds = %"_ZN4core3ptr61drop_in_place$LT$$LP$alloc..string..String$C$$LP$$RP$$RP$$GT$17h1989bb773cc3c534E.exit.i.i.i.i.i.i.i", %bb.jy
  %.sroa.07.018.i.i.i.i.i.i.i = phi ptr [ %i.ajz, %bb.jy ], [ %.sroa.07.1.i.i.i.i.i.i.i, %"_ZN4core3ptr61drop_in_place$LT$$LP$alloc..string..String$C$$LP$$RP$$RP$$GT$17h1989bb773cc3c534E.exit.i.i.i.i.i.i.i" ] ; 2 uses
  %.sroa.6.017.i.i.i.i.i.i.i = phi ptr [ %i.akb, %bb.jy ], [ %.sroa.6.1.i.i.i.i.i.i.i, %"_ZN4core3ptr61drop_in_place$LT$$LP$alloc..string..String$C$$LP$$RP$$RP$$GT$17h1989bb773cc3c534E.exit.i.i.i.i.i.i.i" ] ; 2 uses
  %.sroa.88.016.i.i.i.i.i.i.i = phi i16 [ %i.akc, %bb.jy ], [ %i.akl, %"_ZN4core3ptr61drop_in_place$LT$$LP$alloc..string..String$C$$LP$$RP$$RP$$GT$17h1989bb773cc3c534E.exit.i.i.i.i.i.i.i" ] ; 2 uses
  %.sroa.109.015.i.i.i.i.i.i.i = phi i64 [ %i.ajx, %bb.jy ], [ %i.ako, %"_ZN4core3ptr61drop_in_place$LT$$LP$alloc..string..String$C$$LP$$RP$$RP$$GT$17h1989bb773cc3c534E.exit.i.i.i.i.i.i.i" ]
  %.not13.i.i.i.i.i.i.i.i = icmp eq i16 %.sroa.88.016.i.i.i.i.i.i.i, 0
  br i1 %.not13.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i61, label %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17hae4bf5fa000015abE.exit.i.i.i.i.i.i.i"

.lr.ph.i.i.i.i.i.i.i.i61:                         ; preds = %bb.jz, %.lr.ph.i.i.i.i.i.i.i.i61
  %i.akd = phi ptr [ %i.akh, %.lr.ph.i.i.i.i.i.i.i.i61 ], [ %.sroa.6.017.i.i.i.i.i.i.i, %bb.jz ] ; 2 uses
  %i.ake = phi ptr [ %i.akg, %.lr.ph.i.i.i.i.i.i.i.i61 ], [ %.sroa.07.018.i.i.i.i.i.i.i, %bb.jz ]
  %.val911.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.akd, align 16, !noalias !2899
  %i.akf = icmp sgt <16 x i8> %.val911.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.akg = getelementptr inbounds i8, ptr %i.ake, i64 -384 ; 2 uses
  %i.akh = getelementptr inbounds nuw i8, ptr %i.akd, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.akf to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i62 = icmp eq i16 %.cast.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i62, label %.lr.ph.i.i.i.i.i.i.i.i61, label %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17hae4bf5fa000015abE.exit.i.i.i.i.i.i.i"

"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17hae4bf5fa000015abE.exit.i.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i.i61, %bb.jz
  %.sroa.6.1.i.i.i.i.i.i.i = phi ptr [ %.sroa.6.017.i.i.i.i.i.i.i, %bb.jz ], [ %i.akh, %.lr.ph.i.i.i.i.i.i.i.i61 ]
  %.sroa.07.1.i.i.i.i.i.i.i = phi ptr [ %.sroa.07.018.i.i.i.i.i.i.i, %bb.jz ], [ %i.akg, %.lr.ph.i.i.i.i.i.i.i.i61 ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i.i = phi i16 [ %.sroa.88.016.i.i.i.i.i.i.i, %bb.jz ], [ %.cast.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i61 ] ; 3 uses
  %i.aki = add i16 %.lcssa.i.i.i.i.i.i.i.i, -1
  %i.akj = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i, i1 true)
  %i.akk = zext nneg i16 %i.akj to i64
  %i.akl = and i16 %i.aki, %.lcssa.i.i.i.i.i.i.i.i
  %i.akm = sub nsw i64 0, %i.akk
  %i.akn = getelementptr inbounds [24 x i8], ptr %.sroa.07.1.i.i.i.i.i.i.i, i64 %i.akm ; 2 uses
  %i.ako = add i64 %.sroa.109.015.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.akp = getelementptr inbounds i8, ptr %i.akn, i64 -24
  %.val.i.i.i.i.i.i.i = load i64, ptr %i.akp, align 8, !range !185, !alias.scope !2902, !noalias !2905, !noundef !4 ; 2 uses
  %i.akq = icmp eq i64 %.val.i.i.i.i.i.i.i, 0
  br i1 %i.akq, label %"_ZN4core3ptr61drop_in_place$LT$$LP$alloc..string..String$C$$LP$$RP$$RP$$GT$17h1989bb773cc3c534E.exit.i.i.i.i.i.i.i", label %bb.ka

bb.ka:                                            ; preds = %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17hae4bf5fa000015abE.exit.i.i.i.i.i.i.i"
  %i.akr = getelementptr i8, ptr %i.akn, i64 -16
  %.val6.i.i.i.i.i.i.i = load ptr, ptr %i.akr, align 8, !noalias !2905, !nonnull !4, !noundef !4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val6.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #32, !noalias !2906
  br label %"_ZN4core3ptr61drop_in_place$LT$$LP$alloc..string..String$C$$LP$$RP$$RP$$GT$17h1989bb773cc3c534E.exit.i.i.i.i.i.i.i"

"_ZN4core3ptr61drop_in_place$LT$$LP$alloc..string..String$C$$LP$$RP$$RP$$GT$17h1989bb773cc3c534E.exit.i.i.i.i.i.i.i": ; preds = %bb.ka, %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17hae4bf5fa000015abE.exit.i.i.i.i.i.i.i"
  %i.aks = icmp eq i64 %i.ako, 0
  br i1 %i.aks, label %_ZN9hashbrown3raw13RawTableInner13drop_elements17h303606d4757e4c22E.exit.i.i.i.i.i.i, label %bb.jz

_ZN9hashbrown3raw13RawTableInner13drop_elements17h303606d4757e4c22E.exit.i.i.i.i.i.i: ; preds = %"_ZN4core3ptr61drop_in_place$LT$$LP$alloc..string..String$C$$LP$$RP$$RP$$GT$17h1989bb773cc3c534E.exit.i.i.i.i.i.i.i", %bb.jx
  %i.akt = mul i64 %i.aju, 24
  %i.aku = and i64 %i.akt, -16                    ; 2 uses
  %i.akv = add i64 %i.aku, 32                     ; 2 uses
  %i.akw = add i64 %i.aju, 17
  %i.akx = add i64 %i.akw, %i.akv                 ; 4 uses
  %i.aky = icmp uge i64 %i.akx, %i.akv
  %i.akz = icmp ult i64 %i.akx, 9223372036854775793
  call void @llvm.assume(i1 %i.aky), !noalias !2499
  call void @llvm.assume(i1 %i.akz), !noalias !2499
  %i.ala = icmp eq i64 %i.akx, 0
  br i1 %i.ala, label %common.resume, label %bb.kb

bb.kb:                                            ; preds = %_ZN9hashbrown3raw13RawTableInner13drop_elements17h303606d4757e4c22E.exit.i.i.i.i.i.i
  %i.alb = load ptr, ptr %i.bc, align 8, !alias.scope !2891, !noalias !2499, !nonnull !4, !noundef !4
  %i.alc = sub i64 -32, %i.aku
  %i.ald = getelementptr inbounds i8, ptr %i.alb, i64 %i.alc
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ald, i64 noundef %i.akx, i64 noundef range(i64 1, -9223372036854775807) 16) #32, !noalias !2909
  br label %common.resume

bb.kc:                                            ; preds = %"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17hbbc98d388f6cd8f9E.exit.i"
  %i.ale = landingpad { ptr, i32 }
          cleanup
  br label %bb.jw

bb.kd:                                            ; preds = %"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17hbbc98d388f6cd8f9E.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !2499
  call void @llvm.experimental.noalias.scope.decl(metadata !2910)
  call void @llvm.experimental.noalias.scope.decl(metadata !2913)
  call void @llvm.experimental.noalias.scope.decl(metadata !2916)
  call void @llvm.experimental.noalias.scope.decl(metadata !2919)
  call void @llvm.experimental.noalias.scope.decl(metadata !2922)
  call void @llvm.experimental.noalias.scope.decl(metadata !2925)
  %i.alf = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.alg = load i64, ptr %i.alf, align 8, !alias.scope !2928, !noalias !2499, !noundef !4 ; 3 uses
  %i.alh = icmp eq i64 %i.alg, 0
  br i1 %i.alh, label %_ZN5xtask13list_features17h9449f48e968bd1b7E.exit, label %bb.ke

bb.ke:                                            ; preds = %bb.kd
  call void @llvm.experimental.noalias.scope.decl(metadata !2929)
  %i.ali = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %i.alj = load i64, ptr %i.ali, align 8, !alias.scope !2932, !noalias !2499, !noundef !4 ; 2 uses
  %i.alk = icmp eq i64 %i.alj, 0
  br i1 %i.alk, label %_ZN9hashbrown3raw13RawTableInner13drop_elements17h303606d4757e4c22E.exit.i.i.i.i.i.i.i, label %bb.kf

bb.kf:                                            ; preds = %bb.ke
  %i.all = load ptr, ptr %i.bc, align 8, !alias.scope !2932, !noalias !2499, !nonnull !4, !noundef !4 ; 3 uses
  %.val13.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.all, align 16, !noalias !2933
  %i.alm = icmp sgt <16 x i8> %.val13.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.aln = getelementptr inbounds nuw i8, ptr %i.all, i64 16
  %i.alo = bitcast <16 x i1> %i.alm to i16
  br label %bb.kg

bb.kg:                                            ; preds = %"_ZN4core3ptr61drop_in_place$LT$$LP$alloc..string..String$C$$LP$$RP$$RP$$GT$17h1989bb773cc3c534E.exit.i.i.i.i.i.i.i.i", %bb.kf
  %.sroa.07.018.i.i.i.i.i.i.i.i = phi ptr [ %i.all, %bb.kf ], [ %.sroa.07.1.i.i.i.i.i.i.i.i, %"_ZN4core3ptr61drop_in_place$LT$$LP$alloc..string..String$C$$LP$$RP$$RP$$GT$17h1989bb773cc3c534E.exit.i.i.i.i.i.i.i.i" ] ; 2 uses
  %.sroa.6.017.i.i.i.i.i.i.i.i = phi ptr [ %i.aln, %bb.kf ], [ %.sroa.6.1.i.i.i.i.i.i.i.i, %"_ZN4core3ptr61drop_in_place$LT$$LP$alloc..string..String$C$$LP$$RP$$RP$$GT$17h1989bb773cc3c534E.exit.i.i.i.i.i.i.i.i" ] ; 2 uses
  %.sroa.88.016.i.i.i.i.i.i.i.i = phi i16 [ %i.alo, %bb.kf ], [ %i.alx, %"_ZN4core3ptr61drop_in_place$LT$$LP$alloc..string..String$C$$LP$$RP$$RP$$GT$17h1989bb773cc3c534E.exit.i.i.i.i.i.i.i.i" ] ; 2 uses
  %.sroa.109.015.i.i.i.i.i.i.i.i = phi i64 [ %i.alj, %bb.kf ], [ %i.ama, %"_ZN4core3ptr61drop_in_place$LT$$LP$alloc..string..String$C$$LP$$RP$$RP$$GT$17h1989bb773cc3c534E.exit.i.i.i.i.i.i.i.i" ]
  %.not13.i.i.i.i.i.i.i.i.i = icmp eq i16 %.sroa.88.016.i.i.i.i.i.i.i.i, 0
  br i1 %.not13.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i38, label %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17hae4bf5fa000015abE.exit.i.i.i.i.i.i.i.i"

.lr.ph.i.i.i.i.i.i.i.i.i38:                       ; preds = %bb.kg, %.lr.ph.i.i.i.i.i.i.i.i.i38
  %i.alp = phi ptr [ %i.alt, %.lr.ph.i.i.i.i.i.i.i.i.i38 ], [ %.sroa.6.017.i.i.i.i.i.i.i.i, %bb.kg ] ; 2 uses
  %i.alq = phi ptr [ %i.als, %.lr.ph.i.i.i.i.i.i.i.i.i38 ], [ %.sroa.07.018.i.i.i.i.i.i.i.i, %bb.kg ]
  %.val911.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.alp, align 16, !noalias !2936
  %i.alr = icmp sgt <16 x i8> %.val911.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.als = getelementptr inbounds i8, ptr %i.alq, i64 -384 ; 2 uses
  %i.alt = getelementptr inbounds nuw i8, ptr %i.alp, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.alr to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i39 = icmp eq i16 %.cast.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i39, label %.lr.ph.i.i.i.i.i.i.i.i.i38, label %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17hae4bf5fa000015abE.exit.i.i.i.i.i.i.i.i"

"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17hae4bf5fa000015abE.exit.i.i.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i38, %bb.kg
  %.sroa.6.1.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.6.017.i.i.i.i.i.i.i.i, %bb.kg ], [ %i.alt, %.lr.ph.i.i.i.i.i.i.i.i.i38 ]
  %.sroa.07.1.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.07.018.i.i.i.i.i.i.i.i, %bb.kg ], [ %i.als, %.lr.ph.i.i.i.i.i.i.i.i.i38 ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i.i.i = phi i16 [ %.sroa.88.016.i.i.i.i.i.i.i.i, %bb.kg ], [ %.cast.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i38 ] ; 3 uses
  %i.alu = add i16 %.lcssa.i.i.i.i.i.i.i.i.i, -1
  %i.alv = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i.i, i1 true)
  %i.alw = zext nneg i16 %i.alv to i64
  %i.alx = and i16 %i.alu, %.lcssa.i.i.i.i.i.i.i.i.i
  %i.aly = sub nsw i64 0, %i.alw
  %i.alz = getelementptr inbounds [24 x i8], ptr %.sroa.07.1.i.i.i.i.i.i.i.i, i64 %i.aly ; 2 uses
  %i.ama = add i64 %.sroa.109.015.i.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.amb = getelementptr inbounds i8, ptr %i.alz, i64 -24
  %.val.i.i.i.i.i.i.i.i = load i64, ptr %i.amb, align 8, !range !185, !alias.scope !2939, !noalias !2942, !noundef !4 ; 2 uses
  %i.amc = icmp eq i64 %.val.i.i.i.i.i.i.i.i, 0
  br i1 %i.amc, label %"_ZN4core3ptr61drop_in_place$LT$$LP$alloc..string..String$C$$LP$$RP$$RP$$GT$17h1989bb773cc3c534E.exit.i.i.i.i.i.i.i.i", label %bb.kh

bb.kh:                                            ; preds = %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17hae4bf5fa000015abE.exit.i.i.i.i.i.i.i.i"
  %i.amd = getelementptr i8, ptr %i.alz, i64 -16
  %.val6.i.i.i.i.i.i.i.i = load ptr, ptr %i.amd, align 8, !noalias !2942, !nonnull !4, !noundef !4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val6.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #32, !noalias !2943
  br label %"_ZN4core3ptr61drop_in_place$LT$$LP$alloc..string..String$C$$LP$$RP$$RP$$GT$17h1989bb773cc3c534E.exit.i.i.i.i.i.i.i.i"

"_ZN4core3ptr61drop_in_place$LT$$LP$alloc..string..String$C$$LP$$RP$$RP$$GT$17h1989bb773cc3c534E.exit.i.i.i.i.i.i.i.i": ; preds = %bb.kh, %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17hae4bf5fa000015abE.exit.i.i.i.i.i.i.i.i"
  %i.ame = icmp eq i64 %i.ama, 0
  br i1 %i.ame, label %_ZN9hashbrown3raw13RawTableInner13drop_elements17h303606d4757e4c22E.exit.i.i.i.i.i.i.i, label %bb.kg

_ZN9hashbrown3raw13RawTableInner13drop_elements17h303606d4757e4c22E.exit.i.i.i.i.i.i.i: ; preds = %"_ZN4core3ptr61drop_in_place$LT$$LP$alloc..string..String$C$$LP$$RP$$RP$$GT$17h1989bb773cc3c534E.exit.i.i.i.i.i.i.i.i", %bb.ke
  %i.amf = mul i64 %i.alg, 24
  %i.amg = and i64 %i.amf, -16                    ; 2 uses
  %i.amh = add i64 %i.amg, 32                     ; 2 uses
  %i.ami = add i64 %i.alg, 17
  %i.amj = add i64 %i.ami, %i.amh                 ; 4 uses
  %i.amk = icmp uge i64 %i.amj, %i.amh
  %i.aml = icmp ult i64 %i.amj, 9223372036854775793
  call void @llvm.assume(i1 %i.amk)
  call void @llvm.assume(i1 %i.aml)
  %i.amm = icmp eq i64 %i.amj, 0
  br i1 %i.amm, label %_ZN5xtask13list_features17h9449f48e968bd1b7E.exit, label %bb.ki

bb.ki:                                            ; preds = %_ZN9hashbrown3raw13RawTableInner13drop_elements17h303606d4757e4c22E.exit.i.i.i.i.i.i.i
  %i.amn = load ptr, ptr %i.bc, align 8, !alias.scope !2928, !noalias !2499, !nonnull !4, !noundef !4
  %i.amo = sub i64 -32, %i.amg
  %i.amp = getelementptr inbounds i8, ptr %i.amn, i64 %i.amo
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.amp, i64 noundef %i.amj, i64 noundef range(i64 1, -9223372036854775807) 16) #32, !noalias !2946
  br label %_ZN5xtask13list_features17h9449f48e968bd1b7E.exit

bb.kj:                                            ; preds = %.body41.i, %.body.i21
  %i.amq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
end_hunk_0
