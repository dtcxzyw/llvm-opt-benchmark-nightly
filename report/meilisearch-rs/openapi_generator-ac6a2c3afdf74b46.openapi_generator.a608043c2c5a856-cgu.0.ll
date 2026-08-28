Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/openapi_generator-ac6a2c3afdf74b46.openapi_generator.a608043c2c5a856-cgu.0?download=true
inline.NumInlined: 4415
inline.NumDeleted: 2263
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 72
loop-unroll.NumUnrolled: 78
begin_hunk_0_@_ZN17openapi_generator4main17h01da0525174ccda6E:bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !6849)
  %i.aqz = load i64, ptr %i.go, align 8, !range !318, !alias.scope !6849, !noalias !6666, !noundef !27
  %.not.i.i.i.i.i.i111.i.i.i = icmp eq i64 %i.aqz, -9223372036854775808
  br i1 %.not.i.i.i.i.i.i111.i.i.i, label %bb.ml, label %bb.mk

bb.mk:                                            ; preds = %_ZN10serde_core3ser10Serializer11collect_map17h26ca082ccc7c9a54E.exit.i.i.i.i.i.i.i.i
  invoke fastcc void @"_ZN4core3ptr98drop_in_place$LT$indexmap..inner..Core$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17h900ee67db92f5ea1E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(96) %i.go) #39
          to label %"_ZN4core3ptr97drop_in_place$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17he72da75895b7be74E.exit.i.i.i.i.i.i114.i.i.i" unwind label %bb.mn, !noalias !6666, !inline_history !537

bb.ml:                                            ; preds = %_ZN10serde_core3ser10Serializer11collect_map17h26ca082ccc7c9a54E.exit.i.i.i.i.i.i.i.i
  %i.ara = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i105.i.i.i, align 8, !range !321, !alias.scope !6852, !noalias !6666, !noundef !27
  %i.arb = icmp eq i64 %i.ara, -9223372036854775803
  br i1 %i.arb, label %.thread153.i.i.i, label %bb.mm

bb.mm:                                            ; preds = %bb.ml
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17h50592c2d2064937aE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(72) %.sroa.4.0..sroa_idx.i.i.i.i.i105.i.i.i)
          to label %.thread153.i.i.i unwind label %bb.mv, !noalias !6659

bb.mn:                                            ; preds = %bb.mk
  %i.arc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i.i.i.i112.i.i.i = load i64, ptr %i.akk, align 8, !range !318, !alias.scope !6849, !noalias !6666, !noundef !27 ; 2 uses
  %switch.i.i.i.i.i.i113.i.i.i = icmp sgt i64 %.val2.i.i.i.i.i.i112.i.i.i, 0
  br i1 %switch.i.i.i.i.i.i113.i.i.i, label %common.resume.i.sink.split.i.i.i.i.i.i.i, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1f5de302d11ecf9aE.exit.i.i100.i.i.i"

"_ZN4core3ptr97drop_in_place$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17he72da75895b7be74E.exit.i.i.i.i.i.i114.i.i.i": ; preds = %bb.mk
  %.val.i.i.i.i.i.i115.i.i.i = load i64, ptr %i.akk, align 8, !range !318, !alias.scope !6849, !noalias !6666, !noundef !27 ; 2 uses
  %switch5.i.i.i.i.i.i116.i.i.i = icmp sgt i64 %.val.i.i.i.i.i.i115.i.i.i, 0
  br i1 %switch5.i.i.i.i.i.i116.i.i.i, label %bb.mo, label %.thread153.i.i.i

bb.mo:                                            ; preds = %"_ZN4core3ptr97drop_in_place$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17he72da75895b7be74E.exit.i.i.i.i.i.i114.i.i.i"
  %.val1.i.i.i.i.i.i120.i.i.i = load ptr, ptr %.sroa.3.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !6849, !noalias !6666, !nonnull !27, !noundef !27
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i120.i.i.i, i64 noundef %.val.i.i.i.i.i.i115.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #37, !noalias !6855
  br label %.thread153.i.i.i

common.resume.i.sink.split.i.i.i.i.i.i.i:         ; preds = %"_ZN4core3ptr97drop_in_place$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17he72da75895b7be74E.exit.i.i.i.i.i.i.i.i", %bb.mn
  %.val.i.sink.i.i.i.i.i.i.i = phi i64 [ %.val.i.i.i.i.i108.i.i.i, %"_ZN4core3ptr97drop_in_place$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17he72da75895b7be74E.exit.i.i.i.i.i.i.i.i" ], [ %.val2.i.i.i.i.i.i112.i.i.i, %bb.mn ]
  %common.resume.op.i.ph.i.i.i.i.i.i.i = phi { ptr, i32 } [ %eh.lpad-body39.i.i.i.i.i.i.i.i, %"_ZN4core3ptr97drop_in_place$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17he72da75895b7be74E.exit.i.i.i.i.i.i.i.i" ], [ %i.arc, %bb.mn ]
  %.val1.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.3.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !6666, !nonnull !27, !noundef !27
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i.i, i64 noundef %.val.i.sink.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #37, !noalias !6666
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1f5de302d11ecf9aE.exit.i.i100.i.i.i"

.body.thread.i.i.i.i.i106.i.i.i:                  ; preds = %.body.thread41.loopexit.split-lp.loopexit.split-lp.i.i.i.i.i.i.i.i, %.body.thread41.loopexit.split-lp.loopexit.i.i.i.i.i.i.i.i, %.body.thread41.loopexit.i.i.i.i.i.i.i.i, %bb.mc, %.body.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %eh.lpad-body39.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %eh.lpad-body.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.body.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %eh.lpad-body.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.mc ], [ %lpad.loopexit.i.i.i.i.i.i.i.i, %.body.thread41.loopexit.i.i.i.i.i.i.i.i ], [ %lpad.loopexit49.i.i.i.i.i.i.i.i, %.body.thread41.loopexit.split-lp.loopexit.i.i.i.i.i.i.i.i ], [ %lpad.loopexit.split-lp50.i.i.i.i.i.i.i.i, %.body.thread41.loopexit.split-lp.loopexit.split-lp.i.i.i.i.i.i.i.i ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6856)
  %i.ard = load i64, ptr %i.go, align 8, !range !318, !alias.scope !6856, !noalias !6666, !noundef !27
  %.not.i.i.i.i.i107.i.i.i = icmp eq i64 %i.ard, -9223372036854775808
  br i1 %.not.i.i.i.i.i107.i.i.i, label %bb.mq, label %bb.mp

bb.mp:                                            ; preds = %.body.thread.i.i.i.i.i106.i.i.i
  invoke fastcc void @"_ZN4core3ptr98drop_in_place$LT$indexmap..inner..Core$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17h900ee67db92f5ea1E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(96) %i.go) #39
          to label %"_ZN4core3ptr97drop_in_place$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17he72da75895b7be74E.exit.i.i.i.i.i.i.i.i" unwind label %bb.ms, !noalias !6666, !inline_history !537

bb.mq:                                            ; preds = %.body.thread.i.i.i.i.i106.i.i.i
  %i.are = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i105.i.i.i, align 8, !range !321, !alias.scope !6859, !noalias !6666, !noundef !27
  %i.arf = icmp eq i64 %i.are, -9223372036854775803
  br i1 %i.arf, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1f5de302d11ecf9aE.exit.i.i100.i.i.i", label %bb.mr

bb.mr:                                            ; preds = %bb.mq
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17h50592c2d2064937aE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(72) %.sroa.4.0..sroa_idx.i.i.i.i.i105.i.i.i)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1f5de302d11ecf9aE.exit.i.i100.i.i.i" unwind label %bb.mu, !noalias !6862

bb.ms:                                            ; preds = %bb.mp
  %i.arg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  %.val2.i.i.i.i.i.i.i.i = load i64, ptr %i.akk, align 8, !range !318, !alias.scope !6856, !noalias !6666, !noundef !27 ; 2 uses
  %switch.i.i.i.i.i.i.i.i = icmp sgt i64 %.val2.i.i.i.i.i.i.i.i, 0
  br i1 %switch.i.i.i.i.i.i.i.i, label %bb.mt, label %.body.i.i.i.i.i.i.i

bb.mt:                                            ; preds = %bb.ms
  %.val3.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.3.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !6856, !noalias !6666, !nonnull !27, !noundef !27
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i.i.i.i.i, i64 noundef %.val2.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #37, !noalias !6863
  br label %.body.i.i.i.i.i.i.i

"_ZN4core3ptr97drop_in_place$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17he72da75895b7be74E.exit.i.i.i.i.i.i.i.i": ; preds = %bb.mp
  %.val.i.i.i.i.i108.i.i.i = load i64, ptr %i.akk, align 8, !range !318, !alias.scope !6856, !noalias !6666, !noundef !27 ; 2 uses
  %switch5.i.i.i.i.i.i.i.i = icmp sgt i64 %.val.i.i.i.i.i108.i.i.i, 0
  br i1 %switch5.i.i.i.i.i.i.i.i, label %common.resume.i.sink.split.i.i.i.i.i.i.i, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1f5de302d11ecf9aE.exit.i.i100.i.i.i"

bb.mu:                                            ; preds = %bb.mr
  %i.arh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body.i.i.i.i.i.i.i

.body.i.i.i.i.i.i.i:                              ; preds = %bb.mu, %bb.mt, %bb.ms
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #34, !noalias !6666
  unreachable

bb.mv:                                            ; preds = %bb.mm, %"_ZN6utoipa7openapi10extensions1_96_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$utoipa..openapi..extensions..Extensions$GT$9serialize17h9cdf9682d209f863E.exit.thread.i.i.i.i.i.i.i.i", %bb.jp
  %i.ari = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1f5de302d11ecf9aE.exit.i.i100.i.i.i"

.thread153.i.i.i:                                 ; preds = %bb.mo, %"_ZN4core3ptr97drop_in_place$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17he72da75895b7be74E.exit.i.i.i.i.i.i114.i.i.i", %bb.mm, %bb.ml
  call void @llvm.lifetime.end.p0(ptr nonnull %i.go), !noalias !6666
  %.val8.i.i118154.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i99.i.i.i, align 8, !noalias !6659, !nonnull !27, !noundef !27
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8.i.i118154.i.i.i, i64 noundef 5, i64 noundef range(i64 1, -9223372036854775807) 1) #37, !noalias !6659
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gr), !noalias !6659
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gp), !noalias !6656
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gq), !noalias !6656
  br label %bb.na

bb.mw:                                            ; preds = %"_ZN6utoipa7openapi10extensions1_96_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$utoipa..openapi..extensions..Extensions$GT$9serialize17h9cdf9682d209f863E.exit.thread.i.i.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gm), !noalias !6666
  %.pr.pre.i.i123.i.i.i = load i64, ptr %i.gq, align 8, !noalias !6659
  %i.arj = icmp eq i64 %.pr.pre.i.i123.i.i.i, -9223372036854775803
  call void @llvm.lifetime.end.p0(ptr nonnull %i.go), !noalias !6666
  br i1 %i.arj, label %.._crit_edge.i_crit_edge.i124.i.i.i, label %bb.mx

.._crit_edge.i_crit_edge.i124.i.i.i:              ; preds = %bb.mw
  %.phi.trans.insert.i.phi.trans.insert.i125.i.i.i = getelementptr inbounds nuw i8, ptr %i.gq, i64 8
  %.pre.i.pre.i126.i.i.i = load ptr, ptr %.phi.trans.insert.i.phi.trans.insert.i125.i.i.i, align 8, !noalias !6659
  br label %bb.nh

bb.mx:                                            ; preds = %bb.mw
  invoke fastcc void @"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$11insert_full17h6ca4489e61159290E"(ptr noalias noundef align 8 captures(address) dereferenceable(80) %i.gp, ptr noalias noundef nonnull align 8 dereferenceable(96) %i.hp, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.gr, ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.gq)
          to label %.noexc131.i.i.i unwind label %.body.thread141.i.i.i, !noalias !6303

.noexc131.i.i.i:                                  ; preds = %bb.mx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gr), !noalias !6659
  %i.ark = load i64, ptr %i.akc, align 8, !range !321, !noalias !6659, !noundef !27
  %i.arl = icmp eq i64 %i.ark, -9223372036854775803
  br i1 %i.arl, label %.thread150.i.i.i, label %bb.my

bb.my:                                            ; preds = %.noexc131.i.i.i
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17h50592c2d2064937aE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(72) %i.akc)
          to label %.thread150.i.i.i unwind label %.body.thread141.i.i.i, !noalias !6303

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1f5de302d11ecf9aE.exit.i.i100.i.i.i": ; preds = %bb.mv, %"_ZN4core3ptr97drop_in_place$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17he72da75895b7be74E.exit.i.i.i.i.i.i.i.i", %bb.mr, %bb.mq, %common.resume.i.sink.split.i.i.i.i.i.i.i, %bb.mn
  %eh.lpad-body.i.i101.i.i.i = phi { ptr, i32 } [ %i.ari, %bb.mv ], [ %i.arc, %bb.mn ], [ %eh.lpad-body39.i.i.i.i.i.i.i.i, %"_ZN4core3ptr97drop_in_place$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17he72da75895b7be74E.exit.i.i.i.i.i.i.i.i" ], [ %eh.lpad-body39.i.i.i.i.i.i.i.i, %bb.mr ], [ %eh.lpad-body39.i.i.i.i.i.i.i.i, %bb.mq ], [ %common.resume.op.i.ph.i.i.i.i.i.i.i, %common.resume.i.sink.split.i.i.i.i.i.i.i ]
  %.val10.i.i102.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i99.i.i.i, align 8, !noalias !6659, !nonnull !27, !noundef !27
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val10.i.i102.i.i.i, i64 noundef 5, i64 noundef range(i64 1, -9223372036854775807) 1) #37, !noalias !6659
  br label %.body.thread.i.i.i

bb.mz:                                            ; preds = %bb.jk
  %.not51.i.i.i = icmp eq ptr %i.ajw, null
  br i1 %.not51.i.i.i, label %bb.jl, label %bb.na

bb.na:                                            ; preds = %bb.oa, %bb.nx, %bb.nu, %bb.nr, %bb.no, %bb.nl, %bb.nh, %bb.mz, %.thread153.i.i.i, %bb.ji, %.thread146.i.i.i.a
  %.sink.i.i.i = phi ptr [ %i.asi, %bb.nx ], [ %i.asc, %bb.nu ], [ %i.arz, %bb.nr ], [ %i.arw, %bb.no ], [ %i.art, %bb.nl ], [ %i.arr, %bb.nh ], [ %i.asm, %bb.oa ], [ %i.ajt, %bb.ji ], [ %.lcssa130.sink.i.i.i.i.i.i.i.i, %.thread153.i.i.i ], [ %.sink.i.i.i.i.i.i.i.i, %.thread146.i.i.i.a ], [ %i.ajw, %bb.mz ]
  %i.arm = getelementptr inbounds nuw i8, ptr %i.kf, i64 8
  store ptr %.sink.i.i.i, ptr %i.arm, align 8, !alias.scope !6623, !noalias !6622
  store i64 -9223372036854775803, ptr %i.kf, align 8, !alias.scope !6623, !noalias !6622
  call void @llvm.experimental.noalias.scope.decl(metadata !6864)
  %i.arn = load i64, ptr %i.hp, align 8, !range !318, !alias.scope !6864, !noalias !6303, !noundef !27
  %.not.i.i.i.i147 = icmp eq i64 %i.arn, -9223372036854775808
  br i1 %.not.i.i.i.i147, label %bb.nc, label %bb.nb

bb.nb:                                            ; preds = %bb.na
  invoke fastcc void @"_ZN4core3ptr98drop_in_place$LT$indexmap..inner..Core$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17h900ee67db92f5ea1E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(96) %i.hp) #39
          to label %"_ZN4core3ptr97drop_in_place$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17he72da75895b7be74E.exit.i.i.i.i" unwind label %bb.ne, !noalias !6303, !inline_history !537

bb.nc:                                            ; preds = %bb.na
  %i.aro = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !range !321, !alias.scope !6867, !noalias !6303, !noundef !27
  %i.arp = icmp eq i64 %i.aro, -9223372036854775803
  br i1 %i.arp, label %.thread1888, label %bb.nd

bb.nd:                                            ; preds = %bb.nc
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17h50592c2d2064937aE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(72) %.sroa.4.0..sroa_idx.i.i.i)
          to label %.thread1888 unwind label %bb.oi

bb.ne:                                            ; preds = %bb.nb
  %i.arq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i.i = load i64, ptr %i.adj, align 8, !range !318, !alias.scope !6864, !noalias !6303, !noundef !27 ; 2 uses
  %switch.i.i.i.i148 = icmp sgt i64 %.val2.i.i.i.i, 0
  br i1 %switch.i.i.i.i148, label %bb.nf, label %.body

bb.nf:                                            ; preds = %bb.ne
  %.val3.i.i.i.i = load ptr, ptr %i.adk, align 8, !alias.scope !6864, !noalias !6303, !nonnull !27, !noundef !27
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i, i64 noundef %.val2.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #37, !noalias !6870
  br label %.body

"_ZN4core3ptr97drop_in_place$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17he72da75895b7be74E.exit.i.i.i.i": ; preds = %bb.nb
  %.val.i.i.i.i149 = load i64, ptr %i.adj, align 8, !range !318, !alias.scope !6864, !noalias !6303, !noundef !27 ; 2 uses
  %switch5.i.i.i.i = icmp sgt i64 %.val.i.i.i.i149, 0
  br i1 %switch5.i.i.i.i, label %bb.ng, label %.thread1888

bb.ng:                                            ; preds = %"_ZN4core3ptr97drop_in_place$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17he72da75895b7be74E.exit.i.i.i.i"
  %.val1.i.i.i.i = load ptr, ptr %i.adk, align 8, !alias.scope !6864, !noalias !6303, !nonnull !27, !noundef !27
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef %.val.i.i.i.i149, i64 noundef range(i64 1, -9223372036854775807) 1) #37, !noalias !6870
  br label %.thread1888

.thread150.i.i.i:                                 ; preds = %bb.my, %.noexc131.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gp), !noalias !6656
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gq), !noalias !6656
  br label %bb.ni

bb.nh:                                            ; preds = %.._crit_edge.i_crit_edge.i124.i.i.i, %.thread.i.i127.i.i.i
  %i.arr = phi ptr [ %i.akg, %.thread.i.i127.i.i.i ], [ %.pre.i.pre.i126.i.i.i, %.._crit_edge.i_crit_edge.i124.i.i.i ] ; 2 uses
  %.val8.i.i118.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i99.i.i.i, align 8, !noalias !6659, !nonnull !27, !noundef !27
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8.i.i118.i.i.i, i64 noundef 5, i64 noundef range(i64 1, -9223372036854775807) 1) #37, !noalias !6659
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gr), !noalias !6659
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gp), !noalias !6656
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gq), !noalias !6656
  %.not52.i.i.i = icmp eq ptr %i.arr, null
  br i1 %.not52.i.i.i, label %bb.ni, label %bb.na

bb.ni:                                            ; preds = %bb.nh, %.thread150.i.i.i
  %i.ars = load i64, ptr %i.kh, align 8, !range !3481, !alias.scope !6622, !noalias !6623, !noundef !27
  %.not53.i.i.i = icmp eq i64 %i.ars, 0
  br i1 %.not53.i.i.i, label %bb.nk, label %bb.nj

bb.nj:                                            ; preds = %bb.ni
  %i.art = invoke fastcc noundef align 8 ptr @_ZN10serde_core3ser12SerializeMap15serialize_entry17hd1227dd36a755c4dE(ptr noalias noundef align 8 dereferenceable(96) %i.hp, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(824) %i.kh)
          to label %bb.nl unwind label %.body.thread141.i.i.i ; 2 uses

bb.nk:                                            ; preds = %bb.nl, %bb.ni
  %i.aru = getelementptr inbounds nuw i8, ptr %i.kh, i64 560 ; 2 uses
  %i.arv = load i64, ptr %i.aru, align 8, !range !318, !alias.scope !6622, !noalias !6623, !noundef !27
  %.not56.i.i.i.a = icmp eq i64 %i.arv, -9223372036854775808
  br i1 %.not56.i.i.i.a, label %bb.nn, label %bb.nm

bb.nl:                                            ; preds = %bb.nj
  %.not54.i.i.i = icmp eq ptr %i.art, null
  br i1 %.not54.i.i.i, label %bb.nk, label %bb.na

bb.nm:                                            ; preds = %bb.nk
  %i.arw = invoke fastcc noundef align 8 ptr @_ZN10serde_core3ser12SerializeMap15serialize_entry17h25f37205c4172fd7E(ptr noalias noundef align 8 dereferenceable(96) %i.hp, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aru)
          to label %bb.no unwind label %.body.thread141.i.i.i ; 2 uses

bb.nn:                                            ; preds = %bb.no, %bb.nk
  %i.arx = getelementptr inbounds nuw i8, ptr %i.kh, i64 584 ; 2 uses
  %i.ary = load i64, ptr %i.arx, align 8, !range !318, !alias.scope !6622, !noalias !6623, !noundef !27
  %.not59.i.i.i.a = icmp eq i64 %i.ary, -9223372036854775808
  br i1 %.not59.i.i.i.a, label %bb.nq, label %bb.np

bb.no:                                            ; preds = %bb.nm
  %.not57.i.i.i = icmp eq ptr %i.arw, null
  br i1 %.not57.i.i.i, label %bb.nn, label %bb.na

bb.np:                                            ; preds = %bb.nn
  %i.arz = invoke fastcc noundef align 8 ptr @_ZN10serde_core3ser12SerializeMap15serialize_entry17ha927e370c691d21cE(ptr noalias noundef align 8 dereferenceable(96) %i.hp, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.arx)
          to label %bb.nr unwind label %.body.thread141.i.i.i ; 2 uses

bb.nq:                                            ; preds = %bb.nr, %bb.nn
  %i.asa = getelementptr inbounds nuw i8, ptr %i.kh, i64 608 ; 2 uses
  %i.asb = load i64, ptr %i.asa, align 8, !range !318, !alias.scope !6622, !noalias !6623, !noundef !27
  %.not62.i.i.i.a = icmp eq i64 %i.asb, -9223372036854775808
  br i1 %.not62.i.i.i.a, label %bb.nt, label %bb.ns

bb.nr:                                            ; preds = %bb.np
  %.not60.i.i.i = icmp eq ptr %i.arz, null
  br i1 %.not60.i.i.i, label %bb.nq, label %bb.na

bb.ns:                                            ; preds = %bb.nq
  %i.asc = invoke fastcc noundef align 8 ptr @_ZN10serde_core3ser12SerializeMap15serialize_entry17h2915a1a736dfb7e8E(ptr noalias noundef align 8 dereferenceable(96) %i.hp, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.asa)
          to label %bb.nu unwind label %.body.thread141.i.i.i ; 2 uses

bb.nt:                                            ; preds = %bb.nu, %bb.nq
  %i.asd = getelementptr inbounds nuw i8, ptr %i.kh, i64 528
  %i.ase = load i64, ptr %i.asd, align 8, !alias.scope !6622, !noalias !6623, !noundef !27 ; 3 uses
  %i.asf = icmp sgt i64 %i.ase, -1
  call void @llvm.assume(i1 %i.asf)
  %i.asg = icmp eq i64 %i.ase, 0
  br i1 %i.asg, label %bb.nw, label %bb.nv

bb.nu:                                            ; preds = %bb.ns
  %.not63.i.i.i = icmp eq ptr %i.asc, null
  br i1 %.not63.i.i.i, label %bb.nt, label %bb.na

bb.nv:                                            ; preds = %bb.nt
  %i.ash = getelementptr inbounds nuw i8, ptr %i.kh, i64 520
  %.val.i.i.i = load ptr, ptr %i.ash, align 8, !alias.scope !6622, !noalias !6623
  %i.asi = invoke fastcc noundef align 8 ptr @_ZN10serde_core3ser12SerializeMap15serialize_entry17hb9860c9e91dea0ddE(ptr noalias noundef align 8 dereferenceable(96) %i.hp, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @345, i64 noundef 7, ptr %.val.i.i.i, i64 %i.ase)
          to label %bb.nx unwind label %.body.thread141.i.i.i, !noalias !6303 ; 2 uses

bb.nw:                                            ; preds = %bb.nx, %bb.nt
  %i.asj = getelementptr inbounds nuw i8, ptr %i.kh, i64 776
  %i.ask = load ptr, ptr %i.asj, align 8, !alias.scope !6622, !noalias !6623, !noundef !27 ; 2 uses
  %.not67.i.i.i.a = icmp eq ptr %i.ask, null
  br i1 %.not67.i.i.i.a, label %bb.nz, label %bb.ny

bb.nx:                                            ; preds = %bb.nv
  %.not65.i.i.i.a = icmp eq ptr %i.asi, null
  br i1 %.not65.i.i.i.a, label %bb.nw, label %bb.na

bb.ny:                                            ; preds = %bb.nw
  %i.asl = getelementptr inbounds nuw i8, ptr %i.kh, i64 800
  %.val77.i.i.i.a = load i64, ptr %i.asl, align 8, !alias.scope !6871, !noalias !6878, !noundef !27
  %i.asm = invoke fastcc noundef align 8 ptr @"_ZN6utoipa7openapi10extensions1_96_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$utoipa..openapi..extensions..Extensions$GT$9serialize17h9cdf9682d209f863E"(ptr nonnull %i.ask, i64 %.val77.i.i.i.a, ptr noalias noundef align 8 dereferenceable(96) %i.hp)
          to label %bb.oa unwind label %.body.thread141.i.i.i, !noalias !6303 ; 2 uses

bb.nz:                                            ; preds = %bb.oa, %bb.nw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hn), !noalias !6303
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.hn, ptr noundef nonnull align 8 dereferenceable(96) %i.hp, i64 96, i1 false), !noalias !6303
  invoke void @"_ZN86_$LT$serde_json..value..ser..SerializeMap$u20$as$u20$serde_core..ser..SerializeMap$GT$3end17h6c83369807a7ac6cE"(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.kf, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(96) %i.hn)
          to label %bb.oj unwind label %bb.oi

bb.oa:                                            ; preds = %bb.ny
  %.not68.i.i.i.a = icmp eq ptr %i.asm, null
  br i1 %.not68.i.i.i.a, label %bb.nz, label %bb.na

.body.thread.i.i.i:                               ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1f5de302d11ecf9aE.exit.i.i100.i.i.i", %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1f5de302d11ecf9aE.exit.i.i85.i.i.i", %.body.thread141.i.i.i, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1f5de302d11ecf9aE.exit.i.i.i.i.i"
  %eh.lpad-body139.i.i.i = phi { ptr, i32 } [ %lpad.thr_comm.i.i.i, %.body.thread141.i.i.i ], [ %eh.lpad-body.i.i101.i.i.i, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1f5de302d11ecf9aE.exit.i.i100.i.i.i" ], [ %eh.lpad-body.i.i.i.i.i, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1f5de302d11ecf9aE.exit.i.i85.i.i.i" ], [ %i.adq, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1f5de302d11ecf9aE.exit.i.i.i.i.i" ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6882)
  %i.asn = load i64, ptr %i.hp, align 8, !range !318, !alias.scope !6882, !noalias !6303, !noundef !27
  %.not.i.i.i145 = icmp eq i64 %i.asn, -9223372036854775808
  br i1 %.not.i.i.i145, label %bb.oc, label %bb.ob

bb.ob:                                            ; preds = %.body.thread.i.i.i
  invoke fastcc void @"_ZN4core3ptr98drop_in_place$LT$indexmap..inner..Core$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17h900ee67db92f5ea1E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(96) %i.hp) #39
          to label %"_ZN4core3ptr97drop_in_place$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17he72da75895b7be74E.exit.i.i.i" unwind label %bb.oe, !noalias !6303, !inline_history !537

bb.oc:                                            ; preds = %.body.thread.i.i.i
  %i.aso = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !range !321, !alias.scope !6885, !noalias !6303, !noundef !27
  %i.asp = icmp eq i64 %i.aso, -9223372036854775803
  br i1 %i.asp, label %.body, label %bb.od

bb.od:                                            ; preds = %bb.oc
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17h50592c2d2064937aE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(72) %.sroa.4.0..sroa_idx.i.i.i)
          to label %.body unwind label %bb.oh, !noalias !6888

bb.oe:                                            ; preds = %bb.ob
  %i.asq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  %i.asr = getelementptr inbounds nuw i8, ptr %i.hp, i64 72
  %.val2.i.i.i = load i64, ptr %i.asr, align 8, !range !318, !alias.scope !6882, !noalias !6303, !noundef !27 ; 2 uses
  %switch.i.i.i = icmp sgt i64 %.val2.i.i.i, 0
  br i1 %switch.i.i.i, label %bb.of, label %.body.i.i

bb.of:                                            ; preds = %bb.oe
  %i.ass = getelementptr inbounds nuw i8, ptr %i.hp, i64 80
  %.val3.i.i.i = load ptr, ptr %i.ass, align 8, !alias.scope !6882, !noalias !6303, !nonnull !27, !noundef !27
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i, i64 noundef %.val2.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #37, !noalias !6889
  br label %.body.i.i

"_ZN4core3ptr97drop_in_place$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17he72da75895b7be74E.exit.i.i.i": ; preds = %bb.ob
  %i.ast = getelementptr inbounds nuw i8, ptr %i.hp, i64 72
  %.val.i1.i.i = load i64, ptr %i.ast, align 8, !range !318, !alias.scope !6882, !noalias !6303, !noundef !27 ; 2 uses
  %switch5.i.i.i = icmp sgt i64 %.val.i1.i.i, 0
  br i1 %switch5.i.i.i, label %bb.og, label %.body

bb.og:                                            ; preds = %"_ZN4core3ptr97drop_in_place$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17he72da75895b7be74E.exit.i.i.i"
  %i.asu = getelementptr inbounds nuw i8, ptr %i.hp, i64 80
  %.val1.i.i.i = load ptr, ptr %i.asu, align 8, !alias.scope !6882, !noalias !6303, !nonnull !27, !noundef !27
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i1.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #37, !noalias !6889
  br label %.body

bb.oh:                                            ; preds = %bb.od
  %i.asv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.oh, %bb.of, %bb.oe
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #34, !noalias !6303
  unreachable

.body:                                            ; preds = %bb.oi, %bb.og, %"_ZN4core3ptr97drop_in_place$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17he72da75895b7be74E.exit.i.i.i", %bb.od, %bb.oc, %bb.nf, %bb.ne, %.body162
  %.sroa.071.2 = phi i8 [ %.sroa.071.4, %.body162 ], [ %.sroa.071.3, %bb.oi ], [ 1, %bb.og ], [ 1, %"_ZN4core3ptr97drop_in_place$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17he72da75895b7be74E.exit.i.i.i" ], [ 1, %bb.od ], [ 1, %bb.oc ], [ 1, %bb.nf ], [ 1, %bb.ne ]
  %.pn116 = phi { ptr, i32 } [ %.pn114, %.body162 ], [ %i.asw, %bb.oi ], [ %eh.lpad-body139.i.i.i, %bb.og ], [ %eh.lpad-body139.i.i.i, %"_ZN4core3ptr97drop_in_place$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17he72da75895b7be74E.exit.i.i.i" ], [ %eh.lpad-body139.i.i.i, %bb.od ], [ %eh.lpad-body139.i.i.i, %bb.oc ], [ %i.arq, %bb.nf ], [ %i.arq, %bb.ne ]
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$utoipa..openapi..OpenApi$GT$17hd5704d9a60762741E"(ptr noalias noundef align 8 dereferenceable(824) %i.kh) #33
          to label %bb.fj unwind label %bb.ahk

bb.oi:                                            ; preds = %bb.nz, %bb.nd, %bb.fl, %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h945b6a273b4c97cbE.exit442", %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h945b6a273b4c97cbE.exit441", %bb.ok
  %.sroa.071.3 = phi i8 [ 1, %bb.ok ], [ %.sroa.071.6, %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h945b6a273b4c97cbE.exit442" ], [ 0, %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h945b6a273b4c97cbE.exit441" ], [ 1, %bb.nz ], [ 1, %bb.fl ], [ 1, %bb.nd ]
  %i.asw = landingpad { ptr, i32 }
          cleanup
  br label %.body

.thread1888:                                      ; preds = %bb.ng, %"_ZN4core3ptr97drop_in_place$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17he72da75895b7be74E.exit.i.i.i.i", %bb.nc, %bb.nd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hp), !noalias !6303
  br label %._crit_edge

bb.oj:                                            ; preds = %bb.nz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hn), !noalias !6303
  %.pr.pre = load i64, ptr %i.kf, align 8         ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hp), !noalias !6303
  %i.asx = icmp eq i64 %.pr.pre, -9223372036854775803
  br i1 %i.asx, label %._crit_edge, label %bb.ol

._crit_edge:                                      ; preds = %.thread1888, %bb.oj
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.kf, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8
  br label %bb.ok

bb.ok:                                            ; preds = %._crit_edge, %.thread
  %i.asy = phi ptr [ %.pre, %._crit_edge ], [ %i.ade, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.kf)
  %i.asz = invoke fastcc noundef nonnull ptr @"_ZN6anyhow5error72_$LT$impl$u20$core..convert..From$LT$E$GT$$u20$for$u20$anyhow..Error$GT$4from17hb89519a85d0c63efE"(ptr noalias noundef nonnull align 8 %i.asy)
          to label %bb.ahl unwind label %bb.oi

bb.ol:                                            ; preds = %bb.oj
  %.sroa.474.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.kf, i64 8
  %.sroa.474.0.copyload = load ptr, ptr %.sroa.474.0..sroa_idx, align 8
  %.sroa.575.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.kf, i64 16
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.kg, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.575.0..sroa_idx, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.kf)
  store i64 %.pr.pre, ptr %i.kg, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.kg, i64 8
  store ptr %.sroa.474.0.copyload, ptr %.sroa.4.0..sroa_idx, align 8
  %i.ata = trunc nuw i8 %i.aba to i1
  br i1 %i.ata, label %bb.on, label %bb.om

bb.om:                                            ; preds = %bb.pb, %bb.ol
  %i.atb = trunc nuw i8 %i.abl to i1
  br i1 %i.atb, label %bb.pd, label %bb.pc

bb.on:                                            ; preds = %bb.ol
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fz)
  %i.atc = invoke noundef align 8 dereferenceable_or_null(72) ptr @"_ZN55_$LT$str$u20$as$u20$serde_json..value..index..Index$GT$10index_into17hc4d599c23b3f23caE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @81, i64 noundef 5, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.kg)
end_hunk_0
begin_hunk_1_@"_ZN4core3ptr150drop_in_place$LT$alloc..collections..btree..map..BTreeMap$LT$alloc..string..String$C$utoipa..openapi..RefOr$LT$utoipa..openapi..link..Link$GT$$GT$$GT$17ha73ae7fefabd533cE":bb.a
; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr156drop_in_place$LT$alloc..collections..btree..map..BTreeMap$LT$alloc..string..String$C$utoipa..openapi..RefOr$LT$utoipa..openapi..example..Example$GT$$GT$$GT$17h79e4718a9c61c6a5E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  %i.b = alloca [72 x i8], align 8                ; 14 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8420)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !8420
  %.sroa.0.0.copyload.i = load ptr, ptr %0, align 8, !alias.scope !8420 ; 3 uses
  %.not.i.i = icmp eq ptr %.sroa.0.0.copyload.i, null
  br i1 %.not.i.i, label %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hfe625a5f92c67c7bE.exit.i", label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.5.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !8420
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !8420 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr null, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !alias.scope !8423, !noalias !8426
  %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %.sroa.0.0.copyload.i, ptr %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !8423, !noalias !8426
  %.sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %.sroa.4.0.copyload.i, ptr %.sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !8423, !noalias !8426
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr null, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !8423, !noalias !8426
  %.sroa.4.sroa.2.0..sroa.4.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr %.sroa.0.0.copyload.i, ptr %.sroa.4.sroa.2.0..sroa.4.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !8423, !noalias !8426
  %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i64 %.sroa.4.0.copyload.i, ptr %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !8423, !noalias !8426
  br label %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hfe625a5f92c67c7bE.exit.i"

"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hfe625a5f92c67c7bE.exit.i": ; preds = %bb.b, %bb.a
  %.sink23.i.i = phi i64 [ 1, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %.sroa.7.0.copyload.sink.i.i = phi i64 [ %.sroa.5.0.copyload.i, %bb.b ], [ 0, %bb.a ]
  store i64 %.sink23.i.i, ptr %i.b, align 8, !alias.scope !8423, !noalias !8426
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %.sink23.i.i, ptr %i.c, align 8, !alias.scope !8423, !noalias !8426
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i64 %.sroa.7.0.copyload.sink.i.i, ptr %i.d, align 8, !alias.scope !8423, !noalias !8426
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8428
  call fastcc void @"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17heb32141ff9183de8E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.b), !noalias !8420
  %i.e = load ptr, ptr %i.a, align 8, !noalias !8428, !noundef !27 ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not5.i.i.i, label %"_ZN99_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h77c6f2cb120c35a7E.exit", label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hfe625a5f92c67c7bE.exit.i"
  %.sroa.23.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.c

bb.c:                                             ; preds = %"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17h8fff92e4ac200d89E.exit.i.i.i", %.lr.ph.i.i.i
  %i.f = phi ptr [ %i.e, %.lr.ph.i.i.i ], [ %i.m, %"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17h8fff92e4ac200d89E.exit.i.i.i" ] ; 2 uses
  %.sroa.23.0.copyload.i.i.i = load i64, ptr %.sroa.23.0..sroa_idx.i.i.i, align 8, !noalias !8428 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 1592
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %.sroa.23.0.copyload.i.i.i ; 2 uses
  %.val.i.i.i.i = load i64, ptr %i.h, align 8, !noalias !8428 ; 2 uses
  %i.i = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.i, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1f5de302d11ecf9aE.exit.i.i.i.i", label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr i8, ptr %i.h, i64 8
  %.val5.i.i.i.i = load ptr, ptr %i.j, align 8, !noalias !8428, !nonnull !27, !noundef !27
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i.i.i.i, i64 noundef %.val.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #37, !noalias !8428
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1f5de302d11ecf9aE.exit.i.i.i.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1f5de302d11ecf9aE.exit.i.i.i.i": ; preds = %bb.d, %bb.c
  %i.k = getelementptr inbounds nuw [144 x i8], ptr %i.f, i64 %.sroa.23.0.copyload.i.i.i
  invoke fastcc void @"_ZN4core3ptr321drop_in_place$LT$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$..drop_key_val..Dropper$LT$utoipa..openapi..RefOr$LT$utoipa..openapi..example..Example$GT$$GT$$GT$17h034ac8900cba6e2aE"(ptr nonnull readonly %i.k)
          to label %"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17h8fff92e4ac200d89E.exit.i.i.i" unwind label %bb.e, !noalias !8428

bb.e:                                             ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1f5de302d11ecf9aE.exit.i.i.i.i"
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr254drop_in_place$LT$$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$..drop..DropGuard$LT$alloc..string..String$C$utoipa..openapi..RefOr$LT$utoipa..openapi..example..Example$GT$$C$alloc..alloc..Global$GT$$GT$17h905859267ac3dcc6E"(ptr nonnull align 8 dereferenceable(72) %i.b) #33
          to label %bb.g unwind label %bb.f, !noalias !8420

"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17h8fff92e4ac200d89E.exit.i.i.i": ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1f5de302d11ecf9aE.exit.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8428
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8428
  call fastcc void @"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17heb32141ff9183de8E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.b), !noalias !8420
  %i.m = load ptr, ptr %i.a, align 8, !noalias !8428, !noundef !27 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i, label %"_ZN99_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h77c6f2cb120c35a7E.exit", label %bb.c

bb.f:                                             ; preds = %bb.e
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #34, !noalias !8428
  unreachable

bb.g:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.l

"_ZN99_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h77c6f2cb120c35a7E.exit": ; preds = %"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17h8fff92e4ac200d89E.exit.i.i.i", %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hfe625a5f92c67c7bE.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8428
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !8420
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr158drop_in_place$LT$alloc..collections..btree..map..BTreeMap$LT$alloc..string..String$C$utoipa..openapi..RefOr$LT$utoipa..openapi..response..Response$GT$$GT$$GT$17h85e166c25297b5cbE"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  %i.b = alloca [72 x i8], align 8                ; 14 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8433)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !8433
  %.sroa.0.0.copyload.i = load ptr, ptr %0, align 8, !alias.scope !8433 ; 3 uses
  %.not.i.i = icmp eq ptr %.sroa.0.0.copyload.i, null
  br i1 %.not.i.i, label %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h14d19f3f753acaa9E.exit.i", label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.5.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !8433
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !8433 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr null, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !alias.scope !8436, !noalias !8439
  %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %.sroa.0.0.copyload.i, ptr %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !8436, !noalias !8439
  %.sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %.sroa.4.0.copyload.i, ptr %.sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !8436, !noalias !8439
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr null, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !8436, !noalias !8439
  %.sroa.4.sroa.2.0..sroa.4.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr %.sroa.0.0.copyload.i, ptr %.sroa.4.sroa.2.0..sroa.4.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !8436, !noalias !8439
  %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i64 %.sroa.4.0.copyload.i, ptr %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !8436, !noalias !8439
  br label %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h14d19f3f753acaa9E.exit.i"

"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h14d19f3f753acaa9E.exit.i": ; preds = %bb.b, %bb.a
  %.sink23.i.i = phi i64 [ 1, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %.sroa.7.0.copyload.sink.i.i = phi i64 [ %.sroa.5.0.copyload.i, %bb.b ], [ 0, %bb.a ]
  store i64 %.sink23.i.i, ptr %i.b, align 8, !alias.scope !8436, !noalias !8439
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %.sink23.i.i, ptr %i.c, align 8, !alias.scope !8436, !noalias !8439
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i64 %.sroa.7.0.copyload.sink.i.i, ptr %i.d, align 8, !alias.scope !8436, !noalias !8439
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8441
  call fastcc void @"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17h8fdcf75d25a41a72E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.b), !noalias !8433
  %i.e = load ptr, ptr %i.a, align 8, !noalias !8441, !noundef !27 ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not5.i.i.i, label %"_ZN99_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he892c96f0ef26fafE.exit", label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h14d19f3f753acaa9E.exit.i"
  %.sroa.23.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.c

bb.c:                                             ; preds = %"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17habdaa71ef213c0edE.exit.i.i.i", %.lr.ph.i.i.i
  %i.f = phi ptr [ %i.e, %.lr.ph.i.i.i ], [ %i.m, %"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17habdaa71ef213c0edE.exit.i.i.i" ] ; 2 uses
  %.sroa.23.0.copyload.i.i.i = load i64, ptr %.sroa.23.0..sroa_idx.i.i.i, align 8, !noalias !8441 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 2120
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %.sroa.23.0.copyload.i.i.i ; 2 uses
  %.val.i.i.i.i = load i64, ptr %i.h, align 8, !noalias !8441 ; 2 uses
  %i.i = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.i, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1f5de302d11ecf9aE.exit.i.i.i.i", label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr i8, ptr %i.h, i64 8
  %.val5.i.i.i.i = load ptr, ptr %i.j, align 8, !noalias !8441, !nonnull !27, !noundef !27
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i.i.i.i, i64 noundef %.val.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #37, !noalias !8441
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1f5de302d11ecf9aE.exit.i.i.i.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1f5de302d11ecf9aE.exit.i.i.i.i": ; preds = %bb.d, %bb.c
  %i.k = getelementptr inbounds nuw [192 x i8], ptr %i.f, i64 %.sroa.23.0.copyload.i.i.i
  invoke fastcc void @"_ZN4core3ptr323drop_in_place$LT$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$..drop_key_val..Dropper$LT$utoipa..openapi..RefOr$LT$utoipa..openapi..response..Response$GT$$GT$$GT$17h0b5e988c54d5b137E"(ptr nonnull readonly %i.k)
          to label %"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17habdaa71ef213c0edE.exit.i.i.i" unwind label %bb.e, !noalias !8441

bb.e:                                             ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1f5de302d11ecf9aE.exit.i.i.i.i"
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr256drop_in_place$LT$$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$..drop..DropGuard$LT$alloc..string..String$C$utoipa..openapi..RefOr$LT$utoipa..openapi..response..Response$GT$$C$alloc..alloc..Global$GT$$GT$17h110f66b58b6f5397E"(ptr nonnull align 8 dereferenceable(72) %i.b) #33
          to label %bb.g unwind label %bb.f, !noalias !8433

"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17habdaa71ef213c0edE.exit.i.i.i": ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1f5de302d11ecf9aE.exit.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8441
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8441
  call fastcc void @"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17h8fdcf75d25a41a72E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.b), !noalias !8433
  %i.m = load ptr, ptr %i.a, align 8, !noalias !8441, !noundef !27 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i, label %"_ZN99_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he892c96f0ef26fafE.exit", label %bb.c

bb.f:                                             ; preds = %bb.e
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #34, !noalias !8441
  unreachable

bb.g:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.l

"_ZN99_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he892c96f0ef26fafE.exit": ; preds = %"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17habdaa71ef213c0edE.exit.i.i.i", %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h14d19f3f753acaa9E.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8441
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !8433
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr160drop_in_place$LT$core..option..Option$LT$alloc..collections..btree..map..BTreeMap$LT$alloc..string..String$C$utoipa..openapi..server..ServerVariable$GT$$GT$$GT$17h45a296c86dfc6bc5E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  %i.b = alloca [72 x i8], align 8                ; 14 uses
  %i.c = load i64, ptr %0, align 8, !range !3481, !noundef !27
  %1 = icmp eq i64 %i.c, 0
  br i1 %1, label %bb.b, label %bb.c

bb.b:                                             ; preds = %"_ZN4core3ptr132drop_in_place$LT$alloc..collections..btree..map..BTreeMap$LT$alloc..string..String$C$utoipa..openapi..server..ServerVariable$GT$$GT$17hfeb1bf63ca86c753E.exit", %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8446)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8449)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !8452
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.d, align 8, !alias.scope !8452 ; 3 uses
  %.not.i.i.i = icmp eq ptr %.sroa.0.0.copyload.i.i, null
  br i1 %.not.i.i.i, label %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h05da5580b204b8acE.exit.i.i", label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.5.0.copyload.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !8452
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.4.0.copyload.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !8452 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr null, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !alias.scope !8453, !noalias !8456
  %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %.sroa.0.0.copyload.i.i, ptr %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i, align 8, !alias.scope !8453, !noalias !8456
  %.sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %.sroa.4.0.copyload.i.i, ptr %.sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i, align 8, !alias.scope !8453, !noalias !8456
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr null, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !8453, !noalias !8456
  %.sroa.4.sroa.2.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr %.sroa.0.0.copyload.i.i, ptr %.sroa.4.sroa.2.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i, align 8, !alias.scope !8453, !noalias !8456
  %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i64 %.sroa.4.0.copyload.i.i, ptr %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i, align 8, !alias.scope !8453, !noalias !8456
  br label %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h05da5580b204b8acE.exit.i.i"

"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h05da5580b204b8acE.exit.i.i": ; preds = %bb.d, %bb.c
  %.sink23.i.i.i = phi i64 [ 1, %bb.d ], [ 0, %bb.c ] ; 2 uses
  %.sroa.7.0.copyload.sink.i.i.i = phi i64 [ %.sroa.5.0.copyload.i.i, %bb.d ], [ 0, %bb.c ]
  store i64 %.sink23.i.i.i, ptr %i.b, align 8, !alias.scope !8453, !noalias !8456
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %.sink23.i.i.i, ptr %i.e, align 8, !alias.scope !8453, !noalias !8456
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i64 %.sroa.7.0.copyload.sink.i.i.i, ptr %i.f, align 8, !alias.scope !8453, !noalias !8456
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8458
  call fastcc void @"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17h51c1ee6d6e0277f3E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.b), !noalias !8452
  %i.g = load ptr, ptr %i.a, align 8, !noalias !8458, !noundef !27 ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not5.i.i.i.i, label %"_ZN4core3ptr132drop_in_place$LT$alloc..collections..btree..map..BTreeMap$LT$alloc..string..String$C$utoipa..openapi..server..ServerVariable$GT$$GT$17hfeb1bf63ca86c753E.exit", label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h05da5580b204b8acE.exit.i.i"
  %.sroa.23.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.e

bb.e:                                             ; preds = %"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17he409c7ab0b859254E.exit.i.i.i.i", %.lr.ph.i.i.i.i
  %i.h = phi ptr [ %i.g, %.lr.ph.i.i.i.i ], [ %i.p, %"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17he409c7ab0b859254E.exit.i.i.i.i" ] ; 2 uses
  %.sroa.23.0.copyload.i.i.i.i = load i64, ptr %.sroa.23.0..sroa_idx.i.i.i.i, align 8, !noalias !8458 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = getelementptr inbounds nuw [24 x i8], ptr %i.i, i64 %.sroa.23.0.copyload.i.i.i.i ; 2 uses
  %.val.i.i.i.i.i = load i64, ptr %i.j, align 8, !noalias !8458 ; 2 uses
  %i.k = icmp eq i64 %.val.i.i.i.i.i, 0
  br i1 %i.k, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1f5de302d11ecf9aE.exit.i.i.i.i.i", label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr i8, ptr %i.j, i64 8
  %.val5.i.i.i.i.i = load ptr, ptr %i.l, align 8, !noalias !8458, !nonnull !27, !noundef !27
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #37, !noalias !8458
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1f5de302d11ecf9aE.exit.i.i.i.i.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1f5de302d11ecf9aE.exit.i.i.i.i.i": ; preds = %bb.f, %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 272
  %i.n = getelementptr inbounds nuw [120 x i8], ptr %i.m, i64 %.sroa.23.0.copyload.i.i.i.i
  invoke fastcc void @"_ZN4core3ptr297drop_in_place$LT$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$..drop_key_val..Dropper$LT$utoipa..openapi..server..ServerVariable$GT$$GT$17h16774b294758420bE"(ptr nonnull readonly %i.n)
          to label %"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17he409c7ab0b859254E.exit.i.i.i.i" unwind label %bb.g, !noalias !8458

bb.g:                                             ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1f5de302d11ecf9aE.exit.i.i.i.i.i"
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr230drop_in_place$LT$$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$..drop..DropGuard$LT$alloc..string..String$C$utoipa..openapi..server..ServerVariable$C$alloc..alloc..Global$GT$$GT$17hd44aac85934c5023E"(ptr nonnull align 8 dereferenceable(72) %i.b) #33
          to label %bb.i unwind label %bb.h, !noalias !8452

"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17he409c7ab0b859254E.exit.i.i.i.i": ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1f5de302d11ecf9aE.exit.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8458
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8458
  call fastcc void @"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17h51c1ee6d6e0277f3E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.b), !noalias !8452
  %i.p = load ptr, ptr %i.a, align 8, !noalias !8458, !noundef !27 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i, label %"_ZN4core3ptr132drop_in_place$LT$alloc..collections..btree..map..BTreeMap$LT$alloc..string..String$C$utoipa..openapi..server..ServerVariable$GT$$GT$17hfeb1bf63ca86c753E.exit", label %bb.e

bb.h:                                             ; preds = %bb.g
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #34, !noalias !8458
  unreachable

bb.i:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.o

"_ZN4core3ptr132drop_in_place$LT$alloc..collections..btree..map..BTreeMap$LT$alloc..string..String$C$utoipa..openapi..server..ServerVariable$GT$$GT$17hfeb1bf63ca86c753E.exit": ; preds = %"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17he409c7ab0b859254E.exit.i.i.i.i", %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h05da5580b204b8acE.exit.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8458
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !8452
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr168drop_in_place$LT$core..iter..adapters..flatten..Flatten$LT$alloc..vec..into_iter..IntoIter$LT$alloc..vec..Vec$LT$clap_builder..util..any_value..AnyValue$GT$$GT$$GT$$GT$17h5fae4bafd2962c36E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8463)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8466)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8469)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !8472, !noundef !27 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %"_ZN4core3ptr162drop_in_place$LT$core..iter..adapters..fuse..Fuse$LT$alloc..vec..into_iter..IntoIter$LT$alloc..vec..Vec$LT$clap_builder..util..any_value..AnyValue$GT$$GT$$GT$$GT$17hb588eb93849e673fE.exit.i", label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8473)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8476)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !8479, !nonnull !27, !noundef !27 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val2.i.i.i.i.i = load ptr, ptr %i.e, align 8, !alias.scope !8479, !nonnull !27, !noundef !27 ; 2 uses
  %i.f = ptrtoint ptr %.val2.i.i.i.i.i to i64
  %i.g = ptrtoint ptr %i.d to i64
  %i.h = sub nuw i64 %i.f, %i.g
  %i.i = udiv exact i64 %i.h, 24                  ; 3 uses
  %i.j = icmp eq ptr %.val2.i.i.i.i.i, %i.d
  br i1 %i.j, label %"_ZN4core3ptr93drop_in_place$LT$$u5b$alloc..vec..Vec$LT$clap_builder..util..any_value..AnyValue$GT$$u5d$$GT$17h12ddb45a9b4cffb7E.exit.i.i.i.i.i", label %.lr.ph

.body.i.i.i.i.i:                                  ; preds = %bb.e, %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !8479, !noundef !27 ; 2 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %.body.i, label %bb.c

bb.c:                                             ; preds = %.body.i.i.i.i.i
  %i.n = mul nuw i64 %i.l, 24
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef %i.n, i64 noundef range(i64 1, -9223372036854775807) 8) #37, !noalias !8479
  br label %.body.i

bb.d:                                             ; preds = %.lr.ph
  %i.o = icmp eq i64 %i.q, %i.i
  br i1 %i.o, label %"_ZN4core3ptr93drop_in_place$LT$$u5b$alloc..vec..Vec$LT$clap_builder..util..any_value..AnyValue$GT$$u5d$$GT$17h12ddb45a9b4cffb7E.exit.i.i.i.i.i", label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.d
  %.sroa.0.0.i.i.i.i.i.i4 = phi i64 [ %i.q, %bb.d ], [ 0, %bb.b ] ; 2 uses
  %i.p = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %.sroa.0.0.i.i.i.i.i.i4
  %i.q = add nuw nsw i64 %.sroa.0.0.i.i.i.i.i.i4, 1 ; 4 uses
  invoke fastcc void @"_ZN4core3ptr83drop_in_place$LT$alloc..vec..Vec$LT$clap_builder..util..any_value..AnyValue$GT$$GT$17h5703540eb60c95d2E"(ptr noalias noundef readonly align 8 dereferenceable(24) %i.p)
          to label %bb.d unwind label %bb.f, !noalias !8479

bb.e:                                             ; preds = %.lr.ph6
  %i.r = add i64 %.sroa.0.1.i.i.i.i.i.i5, 1       ; 2 uses
  %i.s = icmp eq i64 %i.r, %i.i
  br i1 %i.s, label %.body.i.i.i.i.i, label %.lr.ph6

bb.f:                                             ; preds = %.lr.ph
  %i.t = landingpad { ptr, i32 }
          cleanup
  %i.u = icmp eq i64 %i.q, %i.i
  br i1 %i.u, label %.body.i.i.i.i.i, label %.lr.ph6

.lr.ph6:                                          ; preds = %bb.f, %bb.e
  %.sroa.0.1.i.i.i.i.i.i5 = phi i64 [ %i.r, %bb.e ], [ %i.q, %bb.f ] ; 2 uses
  %i.v = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %.sroa.0.1.i.i.i.i.i.i5
  invoke fastcc void @"_ZN4core3ptr83drop_in_place$LT$alloc..vec..Vec$LT$clap_builder..util..any_value..AnyValue$GT$$GT$17h5703540eb60c95d2E"(ptr noalias noundef readonly align 8 dereferenceable(24) %i.v) #33
          to label %bb.e unwind label %bb.g, !noalias !8479

bb.g:                                             ; preds = %.lr.ph6
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #34, !noalias !8480
  unreachable

"_ZN4core3ptr93drop_in_place$LT$$u5b$alloc..vec..Vec$LT$clap_builder..util..any_value..AnyValue$GT$$u5d$$GT$17h12ddb45a9b4cffb7E.exit.i.i.i.i.i": ; preds = %bb.d, %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.y = load i64, ptr %i.x, align 8, !alias.scope !8479, !noundef !27 ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %"_ZN4core3ptr162drop_in_place$LT$core..iter..adapters..fuse..Fuse$LT$alloc..vec..into_iter..IntoIter$LT$alloc..vec..Vec$LT$clap_builder..util..any_value..AnyValue$GT$$GT$$GT$$GT$17hb588eb93849e673fE.exit.i", label %bb.h

bb.h:                                             ; preds = %"_ZN4core3ptr93drop_in_place$LT$$u5b$alloc..vec..Vec$LT$clap_builder..util..any_value..AnyValue$GT$$u5d$$GT$17h12ddb45a9b4cffb7E.exit.i.i.i.i.i"
  %i.aa = mul nuw i64 %i.y, 24
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef %i.aa, i64 noundef range(i64 1, -9223372036854775807) 8) #37, !noalias !8479
  br label %"_ZN4core3ptr162drop_in_place$LT$core..iter..adapters..fuse..Fuse$LT$alloc..vec..into_iter..IntoIter$LT$alloc..vec..Vec$LT$clap_builder..util..any_value..AnyValue$GT$$GT$$GT$$GT$17hb588eb93849e673fE.exit.i"

.body.i:                                          ; preds = %bb.c, %.body.i.i.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke fastcc void @"_ZN4core3ptr127drop_in_place$LT$core..option..Option$LT$alloc..vec..into_iter..IntoIter$LT$clap_builder..util..any_value..AnyValue$GT$$GT$$GT$17hbfee8bcbd9128c15E"(ptr noalias noundef readonly align 8 dereferenceable(32) %i.ab) #33
          to label %bb.i unwind label %bb.k

"_ZN4core3ptr162drop_in_place$LT$core..iter..adapters..fuse..Fuse$LT$alloc..vec..into_iter..IntoIter$LT$alloc..vec..Vec$LT$clap_builder..util..any_value..AnyValue$GT$$GT$$GT$$GT$17hb588eb93849e673fE.exit.i": ; preds = %bb.h, %"_ZN4core3ptr93drop_in_place$LT$$u5b$alloc..vec..Vec$LT$clap_builder..util..any_value..AnyValue$GT$$u5d$$GT$17h12ddb45a9b4cffb7E.exit.i.i.i.i.i", %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke fastcc void @"_ZN4core3ptr127drop_in_place$LT$core..option..Option$LT$alloc..vec..into_iter..IntoIter$LT$clap_builder..util..any_value..AnyValue$GT$$GT$$GT$17hbfee8bcbd9128c15E"(ptr noalias noundef readonly align 8 dereferenceable(32) %i.ac)
          to label %"_ZN4core3ptr255drop_in_place$LT$core..iter..adapters..flatten..FlattenCompat$LT$alloc..vec..into_iter..IntoIter$LT$alloc..vec..Vec$LT$clap_builder..util..any_value..AnyValue$GT$$GT$$C$alloc..vec..into_iter..IntoIter$LT$clap_builder..util..any_value..AnyValue$GT$$GT$$GT$17h9bfd39c578294c0cE.exit" unwind label %bb.j

bb.i:                                             ; preds = %bb.j, %.body.i
  %.pn.i = phi { ptr, i32 } [ %i.ae, %bb.j ], [ %i.t, %.body.i ]
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 64
  invoke fastcc void @"_ZN4core3ptr127drop_in_place$LT$core..option..Option$LT$alloc..vec..into_iter..IntoIter$LT$clap_builder..util..any_value..AnyValue$GT$$GT$$GT$17hbfee8bcbd9128c15E"(ptr noalias noundef readonly align 8 dereferenceable(32) %i.ad) #33
          to label %bb.l unwind label %bb.k

bb.j:                                             ; preds = %"_ZN4core3ptr162drop_in_place$LT$core..iter..adapters..fuse..Fuse$LT$alloc..vec..into_iter..IntoIter$LT$alloc..vec..Vec$LT$clap_builder..util..any_value..AnyValue$GT$$GT$$GT$$GT$17hb588eb93849e673fE.exit.i"
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.i
end_hunk_1
begin_hunk_2_@"_ZN4core3ptr68drop_in_place$LT$alloc..vec..Vec$LT$serde_json..value..Value$GT$$GT$17hb1f2bdbbf8cbc852E":bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !9118, !nonnull !27, !noundef !27 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !9118, !noundef !27
  invoke fastcc void @"_ZN4core3ptr55drop_in_place$LT$$u5b$serde_json..value..Value$u5d$$GT$17h7a0b325eb9413a7aE"(ptr noalias noundef nonnull align 8 %i.b, i64 noundef %i.d)
          to label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h51d0e6041a278730E.exit" unwind label %bb.b, !inline_history !9121

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  %.val2 = load i64, ptr %0, align 8, !range !28, !noundef !27 ; 2 uses
  %i.f = icmp eq i64 %.val2, 0
  br i1 %i.f, label %"_ZN4core3ptr75drop_in_place$LT$alloc..raw_vec..RawVec$LT$serde_json..value..Value$GT$$GT$17hf7126b0baff4c0e3E.exit", label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = mul nuw i64 %.val2, 72
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef %i.g, i64 noundef range(i64 1, -9223372036854775807) 8) #37
  br label %"_ZN4core3ptr75drop_in_place$LT$alloc..raw_vec..RawVec$LT$serde_json..value..Value$GT$$GT$17hf7126b0baff4c0e3E.exit"

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h51d0e6041a278730E.exit": ; preds = %bb.a
  %.val = load i64, ptr %0, align 8, !range !28, !noundef !27 ; 2 uses
  %i.h = icmp eq i64 %.val, 0
  br i1 %i.h, label %"_ZN4core3ptr75drop_in_place$LT$alloc..raw_vec..RawVec$LT$serde_json..value..Value$GT$$GT$17hf7126b0baff4c0e3E.exit4", label %bb.d

bb.d:                                             ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h51d0e6041a278730E.exit"
  %i.i = mul nuw i64 %.val, 72
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef %i.i, i64 noundef range(i64 1, -9223372036854775807) 8) #37
  br label %"_ZN4core3ptr75drop_in_place$LT$alloc..raw_vec..RawVec$LT$serde_json..value..Value$GT$$GT$17hf7126b0baff4c0e3E.exit4"

"_ZN4core3ptr75drop_in_place$LT$alloc..raw_vec..RawVec$LT$serde_json..value..Value$GT$$GT$17hf7126b0baff4c0e3E.exit4": ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h51d0e6041a278730E.exit", %bb.d
  ret void

"_ZN4core3ptr75drop_in_place$LT$alloc..raw_vec..RawVec$LT$serde_json..value..Value$GT$$GT$17hf7126b0baff4c0e3E.exit": ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.e
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$std..ffi..os_str..OsString$GT$$GT$17h9f68a9fb82339fd8E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val4 = load ptr, ptr %i.a, align 8, !nonnull !27, !noundef !27 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val5 = load i64, ptr %i.b, align 8, !noundef !27 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9122)
  %i.c = icmp eq i64 %.val5, 0
  br i1 %i.c, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hda8787eefbf2f159E.exit", label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %"_ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17hafaab0b153e8b1eeE.exit.i.i"
  %.sroa.0.011.i.i = phi i64 [ %i.e, %"_ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17hafaab0b153e8b1eeE.exit.i.i" ], [ 0, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw [24 x i8], ptr %.val4, i64 %.sroa.0.011.i.i ; 2 uses
  %i.e = add nuw i64 %.sroa.0.011.i.i, 1          ; 2 uses
  %.val8.i.i = load i64, ptr %i.d, align 8, !alias.scope !9122 ; 2 uses
  %i.f = icmp eq i64 %.val8.i.i, 0
  br i1 %i.f, label %"_ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17hafaab0b153e8b1eeE.exit.i.i", label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.g = getelementptr i8, ptr %i.d, i64 8
  %.val9.i.i = load ptr, ptr %i.g, align 8, !alias.scope !9122, !nonnull !27, !noundef !27
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i, i64 noundef %.val8.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #37, !noalias !9122
  br label %"_ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17hafaab0b153e8b1eeE.exit.i.i"

"_ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17hafaab0b153e8b1eeE.exit.i.i": ; preds = %bb.b, %.lr.ph.i.i
  %i.h = icmp eq i64 %i.e, %.val5
  br i1 %i.h, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hda8787eefbf2f159E.exit", label %.lr.ph.i.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hda8787eefbf2f159E.exit": ; preds = %"_ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17hafaab0b153e8b1eeE.exit.i.i", %bb.a
  %.val = load i64, ptr %0, align 8, !range !28, !noundef !27 ; 2 uses
  %i.i = icmp eq i64 %.val, 0
  br i1 %i.i, label %"_ZN4core3ptr77drop_in_place$LT$alloc..raw_vec..RawVec$LT$std..ffi..os_str..OsString$GT$$GT$17h2315d58abccc260bE.exit6", label %bb.c

bb.c:                                             ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hda8787eefbf2f159E.exit"
  %i.j = mul nuw i64 %.val, 24
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4, i64 noundef %i.j, i64 noundef range(i64 1, -9223372036854775807) 8) #37
  br label %"_ZN4core3ptr77drop_in_place$LT$alloc..raw_vec..RawVec$LT$std..ffi..os_str..OsString$GT$$GT$17h2315d58abccc260bE.exit6"

"_ZN4core3ptr77drop_in_place$LT$alloc..raw_vec..RawVec$LT$std..ffi..os_str..OsString$GT$$GT$17h2315d58abccc260bE.exit6": ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hda8787eefbf2f159E.exit", %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @"_ZN4core3ptr74drop_in_place$LT$anyhow..error..ErrorImpl$LT$std..io..error..Error$GT$$GT$17h3ca323e9d870a32cE"(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(64) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke fastcc void @"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$std..backtrace..Backtrace$GT$$GT$17h2baf3e15910027c5E"(ptr noalias noundef align 8 dereferenceable(48) %i.a)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h889362eb2c39c873E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c) #33
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h889362eb2c39c873E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #34
  unreachable

bb.e:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$std..backtrace..Backtrace$GT$$GT$17h2baf3e15910027c5E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !720, !noundef !27 ; 2 uses
  %i.c = icmp eq i64 %i.b, 3
  br i1 %i.c, label %"_ZN4core3ptr46drop_in_place$LT$std..backtrace..Backtrace$GT$17h88ffef716ea5540dE.exit", label %bb.b

"_ZN4core3ptr46drop_in_place$LT$std..backtrace..Backtrace$GT$17h88ffef716ea5540dE.exit": ; preds = %bb.l, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h731f077e68accb7eE.exit.i.i.i.i.i", %bb.c, %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9125)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9128)
  %switch.i.i = icmp samesign ult i64 %i.b, 2
  br i1 %switch.i.i, label %"_ZN4core3ptr46drop_in_place$LT$std..backtrace..Backtrace$GT$17h88ffef716ea5540dE.exit", label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9131)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9134)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load i32, ptr %i.e, align 8, !alias.scope !9137, !noundef !27
  switch i32 %i.f, label %bb.d [
    i32 3, label %.sink.split.i.i.i.i
    i32 2, label %"_ZN4core3ptr46drop_in_place$LT$std..backtrace..Backtrace$GT$17h88ffef716ea5540dE.exit"
    i32 0, label %.sink.split.i.i.i.i
  ], !prof !9138

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9137
  store ptr @483, ptr %i.a, align 8, !noalias !9137
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.g, align 8, !noalias !9137
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %i.h, align 8, !noalias !9137
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.i, align 8, !noalias !9137
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %i.j, align 8, !noalias !9137
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @485) #38, !noalias !9137
  unreachable

.sink.split.i.i.i.i:                              ; preds = %bb.c, %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9139)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9142)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i.i.i.i.i = load ptr, ptr %i.k, align 8, !alias.scope !9145, !nonnull !27, !noundef !27 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i.i.i.i.i = load i64, ptr %i.l, align 8, !alias.scope !9145, !noundef !27 ; 2 uses
  %i.m = icmp eq i64 %.val1.i.i.i.i.i, 0
  br i1 %i.m, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h731f077e68accb7eE.exit.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.sink.split.i.i.i.i, %"_ZN4core3ptr51drop_in_place$LT$std..backtrace..BacktraceFrame$GT$17h04dadc82c6d032a3E.exit.i.i.i.i.i.i"
  %.sroa.0.07.i.i.i.i.i.i.i = phi i64 [ %i.o, %"_ZN4core3ptr51drop_in_place$LT$std..backtrace..BacktraceFrame$GT$17h04dadc82c6d032a3E.exit.i.i.i.i.i.i" ], [ 0, %.sink.split.i.i.i.i ] ; 2 uses
  %i.n = getelementptr inbounds nuw [56 x i8], ptr %.val.i.i.i.i.i, i64 %.sroa.0.07.i.i.i.i.i.i.i ; 3 uses
  %i.o = add nuw i64 %.sroa.0.07.i.i.i.i.i.i.i, 1 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9146)
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9149)
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %.val.i.i.i.i.i.i.i.i = load ptr, ptr %i.q, align 8, !alias.scope !9152, !noalias !9145, !nonnull !27, !noundef !27 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %.val1.i.i.i.i.i.i.i.i = load i64, ptr %i.r, align 8, !alias.scope !9152, !noalias !9145, !noundef !27 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9153)
  %i.s = icmp eq i64 %.val1.i.i.i.i.i.i.i.i, 0
  br i1 %i.s, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h79c3f19a26f92d85E.exit.i.i.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i.i, %"_ZN4core3ptr52drop_in_place$LT$std..backtrace..BacktraceSymbol$GT$17ha9b6e43f386a9d78E.exit.i.i.i.i.i.i.i.i.i.i"
  %.sroa.0.07.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.u, %"_ZN4core3ptr52drop_in_place$LT$std..backtrace..BacktraceSymbol$GT$17ha9b6e43f386a9d78E.exit.i.i.i.i.i.i.i.i.i.i" ], [ 0, %.lr.ph.i.i.i.i.i.i.i ] ; 2 uses
  %i.t = getelementptr inbounds nuw [72 x i8], ptr %.val.i.i.i.i.i.i.i.i, i64 %.sroa.0.07.i.i.i.i.i.i.i.i.i.i ; 6 uses
  %i.u = add nuw i64 %.sroa.0.07.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9156)
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %.val.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.v, align 8, !range !318, !alias.scope !9159, !noalias !9160, !noundef !27 ; 2 uses
  %switch.i.i.i.i.i.i.i.i.i.i.i = icmp sgt i64 %.val.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %switch.i.i.i.i.i.i.i.i.i.i.i, label %bb.e, label %"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$17h63f44f7693b4e6eaE.exit.i.i.i.i.i.i.i.i.i.i.i"

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %.val1.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.w, align 8, !alias.scope !9159, !noalias !9160, !nonnull !27, !noundef !27
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #37, !noalias !9161
  br label %"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$17h63f44f7693b4e6eaE.exit.i.i.i.i.i.i.i.i.i.i.i"

"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$17h63f44f7693b4e6eaE.exit.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.e, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9162)
  %i.x = load i64, ptr %i.t, align 8, !range !4073, !alias.scope !9165, !noalias !9160, !noundef !27 ; 2 uses
  %i.y = icmp eq i64 %i.x, 2
  br i1 %i.y, label %"_ZN4core3ptr52drop_in_place$LT$std..backtrace..BacktraceSymbol$GT$17ha9b6e43f386a9d78E.exit.i.i.i.i.i.i.i.i.i.i", label %bb.f

bb.f:                                             ; preds = %"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$17h63f44f7693b4e6eaE.exit.i.i.i.i.i.i.i.i.i.i.i"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9166)
  %1 = icmp eq i64 %i.x, 0
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.z, align 8, !alias.scope !9169, !noalias !9160 ; 3 uses
  %i.aa = icmp eq i64 %.val.i.i.i.i.i.i.i.i.i.i.i.i.i, 0 ; 2 uses
  br i1 %1, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  br i1 %i.aa, label %"_ZN4core3ptr52drop_in_place$LT$std..backtrace..BacktraceSymbol$GT$17ha9b6e43f386a9d78E.exit.i.i.i.i.i.i.i.i.i.i", label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %.val1.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ab, align 8, !alias.scope !9169, !noalias !9160, !nonnull !27, !noundef !27
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #37, !noalias !9170
  br label %"_ZN4core3ptr52drop_in_place$LT$std..backtrace..BacktraceSymbol$GT$17ha9b6e43f386a9d78E.exit.i.i.i.i.i.i.i.i.i.i"

bb.i:                                             ; preds = %bb.f
  br i1 %i.aa, label %"_ZN4core3ptr52drop_in_place$LT$std..backtrace..BacktraceSymbol$GT$17ha9b6e43f386a9d78E.exit.i.i.i.i.i.i.i.i.i.i", label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %.val3.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ac, align 8, !alias.scope !9169, !noalias !9160, !nonnull !27, !noundef !27
  %i.ad = shl nuw i64 %.val.i.i.i.i.i.i.i.i.i.i.i.i.i, 1
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.ad, i64 noundef range(i64 1, -9223372036854775807) 2) #37, !noalias !9170
  br label %"_ZN4core3ptr52drop_in_place$LT$std..backtrace..BacktraceSymbol$GT$17ha9b6e43f386a9d78E.exit.i.i.i.i.i.i.i.i.i.i"

"_ZN4core3ptr52drop_in_place$LT$std..backtrace..BacktraceSymbol$GT$17ha9b6e43f386a9d78E.exit.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$17h63f44f7693b4e6eaE.exit.i.i.i.i.i.i.i.i.i.i.i"
  %i.ae = icmp eq i64 %i.u, %.val1.i.i.i.i.i.i.i.i
  br i1 %i.ae, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h79c3f19a26f92d85E.exit.i.i.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i.i.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h79c3f19a26f92d85E.exit.i.i.i.i.i.i.i.i": ; preds = %"_ZN4core3ptr52drop_in_place$LT$std..backtrace..BacktraceSymbol$GT$17ha9b6e43f386a9d78E.exit.i.i.i.i.i.i.i.i.i.i", %.lr.ph.i.i.i.i.i.i.i
  %.val2.i.i.i.i.i.i.i.i = load i64, ptr %i.p, align 8, !range !28, !alias.scope !9152, !noalias !9145, !noundef !27 ; 2 uses
  %i.af = icmp eq i64 %.val2.i.i.i.i.i.i.i.i, 0
  br i1 %i.af, label %"_ZN4core3ptr51drop_in_place$LT$std..backtrace..BacktraceFrame$GT$17h04dadc82c6d032a3E.exit.i.i.i.i.i.i", label %bb.k

bb.k:                                             ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h79c3f19a26f92d85E.exit.i.i.i.i.i.i.i.i"
  %i.ag = mul nuw i64 %.val2.i.i.i.i.i.i.i.i, 72
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i.i.i, i64 noundef %i.ag, i64 noundef range(i64 1, -9223372036854775807) 8) #37, !noalias !9160
  br label %"_ZN4core3ptr51drop_in_place$LT$std..backtrace..BacktraceFrame$GT$17h04dadc82c6d032a3E.exit.i.i.i.i.i.i"

"_ZN4core3ptr51drop_in_place$LT$std..backtrace..BacktraceFrame$GT$17h04dadc82c6d032a3E.exit.i.i.i.i.i.i": ; preds = %bb.k, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h79c3f19a26f92d85E.exit.i.i.i.i.i.i.i.i"
  %i.ah = icmp eq i64 %i.o, %.val1.i.i.i.i.i
  br i1 %i.ah, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h731f077e68accb7eE.exit.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h731f077e68accb7eE.exit.i.i.i.i.i": ; preds = %"_ZN4core3ptr51drop_in_place$LT$std..backtrace..BacktraceFrame$GT$17h04dadc82c6d032a3E.exit.i.i.i.i.i.i", %.sink.split.i.i.i.i
  %.val2.i.i.i.i.i = load i64, ptr %i.d, align 8, !range !28, !alias.scope !9145, !noundef !27 ; 2 uses
  %i.ai = icmp eq i64 %.val2.i.i.i.i.i, 0
  br i1 %i.ai, label %"_ZN4core3ptr46drop_in_place$LT$std..backtrace..Backtrace$GT$17h88ffef716ea5540dE.exit", label %bb.l

bb.l:                                             ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h731f077e68accb7eE.exit.i.i.i.i.i"
  %i.aj = mul nuw i64 %.val2.i.i.i.i.i, 56
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i, i64 noundef %i.aj, i64 noundef range(i64 1, -9223372036854775807) 8) #37, !noalias !9145
  br label %"_ZN4core3ptr46drop_in_place$LT$std..backtrace..Backtrace$GT$17h88ffef716ea5540dE.exit"
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$utoipa..openapi..xml..Xml$GT$$GT$17hc1801484d4a9c5faE"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !1351, !noundef !27 ; 3 uses
  %i.b = icmp eq i64 %i.a, -9223372036854775806
  br i1 %i.b, label %"_ZN4core3ptr46drop_in_place$LT$utoipa..openapi..xml..Xml$GT$17h29bda8cdd6c1e639E.exit", label %bb.b

"_ZN4core3ptr46drop_in_place$LT$utoipa..openapi..xml..Xml$GT$17h29bda8cdd6c1e639E.exit": ; preds = %bb.e, %"_ZN4core3ptr78drop_in_place$LT$core..option..Option$LT$alloc..borrow..Cow$LT$str$GT$$GT$$GT$17h31277331a343ea10E.exit12.i", %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9171)
  %switch.i = icmp sgt i64 %i.a, 0
  br i1 %switch.i, label %bb.c, label %"_ZN4core3ptr78drop_in_place$LT$core..option..Option$LT$alloc..borrow..Cow$LT$str$GT$$GT$$GT$17h31277331a343ea10E.exit.i"

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val10.i = load ptr, ptr %i.c, align 8, !alias.scope !9171, !nonnull !27, !noundef !27
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val10.i, i64 noundef %i.a, i64 noundef range(i64 1, -9223372036854775807) 1) #37, !noalias !9171
  br label %"_ZN4core3ptr78drop_in_place$LT$core..option..Option$LT$alloc..borrow..Cow$LT$str$GT$$GT$$GT$17h31277331a343ea10E.exit.i"

"_ZN4core3ptr78drop_in_place$LT$core..option..Option$LT$alloc..borrow..Cow$LT$str$GT$$GT$$GT$17h31277331a343ea10E.exit.i": ; preds = %bb.c, %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val5.i = load i64, ptr %i.d, align 8, !range !490, !alias.scope !9171, !noundef !27 ; 2 uses
  %switch15.i = icmp sgt i64 %.val5.i, 0
  br i1 %switch15.i, label %bb.d, label %"_ZN4core3ptr78drop_in_place$LT$core..option..Option$LT$alloc..borrow..Cow$LT$str$GT$$GT$$GT$17h31277331a343ea10E.exit12.i"

bb.d:                                             ; preds = %"_ZN4core3ptr78drop_in_place$LT$core..option..Option$LT$alloc..borrow..Cow$LT$str$GT$$GT$$GT$17h31277331a343ea10E.exit.i"
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val6.i = load ptr, ptr %i.e, align 8, !alias.scope !9171, !nonnull !27, !noundef !27
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val6.i, i64 noundef %.val5.i, i64 noundef range(i64 1, -9223372036854775807) 1) #37, !noalias !9171
  br label %"_ZN4core3ptr78drop_in_place$LT$core..option..Option$LT$alloc..borrow..Cow$LT$str$GT$$GT$$GT$17h31277331a343ea10E.exit12.i"

"_ZN4core3ptr78drop_in_place$LT$core..option..Option$LT$alloc..borrow..Cow$LT$str$GT$$GT$$GT$17h31277331a343ea10E.exit12.i": ; preds = %bb.d, %"_ZN4core3ptr78drop_in_place$LT$core..option..Option$LT$alloc..borrow..Cow$LT$str$GT$$GT$$GT$17h31277331a343ea10E.exit.i"
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val.i = load i64, ptr %i.f, align 8, !range !490, !alias.scope !9171, !noundef !27 ; 2 uses
  %switch16.i = icmp sgt i64 %.val.i, 0
  br i1 %switch16.i, label %bb.e, label %"_ZN4core3ptr46drop_in_place$LT$utoipa..openapi..xml..Xml$GT$17h29bda8cdd6c1e639E.exit"

bb.e:                                             ; preds = %"_ZN4core3ptr78drop_in_place$LT$core..option..Option$LT$alloc..borrow..Cow$LT$str$GT$$GT$$GT$17h31277331a343ea10E.exit12.i"
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val2.i = load ptr, ptr %i.g, align 8, !alias.scope !9171, !nonnull !27, !noundef !27
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #37, !noalias !9171
  br label %"_ZN4core3ptr46drop_in_place$LT$utoipa..openapi..xml..Xml$GT$17h29bda8cdd6c1e639E.exit"
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr75drop_in_place$LT$alloc..vec..Vec$LT$utoipa..openapi..schema..Schema$GT$$GT$17h5280a7f5ca7a28d5E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !9174, !nonnull !27, !noundef !27 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !9174, !noundef !27 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h66070ef5045b31eaE.exit", label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %"_ZN4core3ptr52drop_in_place$LT$utoipa..openapi..schema..Schema$GT$17hdc4cabc32b41a25aE.exit.i"
  %.sroa.0.0.i5 = phi i64 [ %i.g, %"_ZN4core3ptr52drop_in_place$LT$utoipa..openapi..schema..Schema$GT$17hdc4cabc32b41a25aE.exit.i" ], [ 0, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw [752 x i8], ptr %i.b, i64 %.sroa.0.0.i5 ; 6 uses
  %i.g = add nuw i64 %.sroa.0.0.i5, 1             ; 4 uses
  %i.h = load i64, ptr %i.f, align 8, !range !2303, !alias.scope !9177, !noundef !27 ; 3 uses
  %i.i = icmp ne i64 %i.h, 3
  tail call void @llvm.assume(i1 %i.i)
  %i.j = add nsw i64 %i.h, -2
  %i.k = icmp samesign ugt i64 %i.h, 1
  %i.l = select i1 %i.k, i64 %i.j, i64 1
  switch i64 %i.l, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
    i64 3, label %bb.f
  ]

bb.b:                                             ; preds = %.lr.ph
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  invoke fastcc void @"_ZN4core3ptr51drop_in_place$LT$utoipa..openapi..schema..AnyOf$GT$17h0f14e21ebd479a2cE"(ptr noalias noundef align 8 dereferenceable(384) %i.m)
          to label %"_ZN4core3ptr52drop_in_place$LT$utoipa..openapi..schema..Schema$GT$17hdc4cabc32b41a25aE.exit.i" unwind label %bb.h, !inline_history !9182

bb.c:                                             ; preds = %.lr.ph
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  invoke fastcc void @"_ZN4core3ptr51drop_in_place$LT$utoipa..openapi..schema..Array$GT$17hd2ee63e91a5628c2E"(ptr noalias noundef align 8 dereferenceable(488) %i.n)
          to label %"_ZN4core3ptr52drop_in_place$LT$utoipa..openapi..schema..Schema$GT$17hdc4cabc32b41a25aE.exit.i" unwind label %bb.h, !inline_history !9182

bb.d:                                             ; preds = %.lr.ph
  invoke fastcc void @"_ZN4core3ptr52drop_in_place$LT$utoipa..openapi..schema..Object$GT$17he717affa078e6ce9E"(ptr noalias noundef nonnull align 8 dereferenceable(752) %i.f)
          to label %"_ZN4core3ptr52drop_in_place$LT$utoipa..openapi..schema..Schema$GT$17hdc4cabc32b41a25aE.exit.i" unwind label %bb.h, !inline_history !9182

bb.e:                                             ; preds = %.lr.ph
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  invoke fastcc void @"_ZN4core3ptr51drop_in_place$LT$utoipa..openapi..schema..OneOf$GT$17habae4fc0c5d09a1fE"(ptr noalias noundef align 8 dereferenceable(408) %i.o)
          to label %"_ZN4core3ptr52drop_in_place$LT$utoipa..openapi..schema..Schema$GT$17hdc4cabc32b41a25aE.exit.i" unwind label %bb.h, !inline_history !9182

bb.f:                                             ; preds = %.lr.ph
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  invoke fastcc void @"_ZN4core3ptr51drop_in_place$LT$utoipa..openapi..schema..AllOf$GT$17h0279199b6df0852bE"(ptr noalias noundef align 8 dereferenceable(408) %i.p)
          to label %"_ZN4core3ptr52drop_in_place$LT$utoipa..openapi..schema..Schema$GT$17hdc4cabc32b41a25aE.exit.i" unwind label %bb.h, !inline_history !9182

"_ZN4core3ptr52drop_in_place$LT$utoipa..openapi..schema..Schema$GT$17hdc4cabc32b41a25aE.exit.i": ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %i.q = icmp eq i64 %i.g, %i.d
  br i1 %i.q, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h66070ef5045b31eaE.exit", label %.lr.ph

bb.g:                                             ; preds = %.lr.ph15
  %i.r = add i64 %.sroa.0.1.i14, 1                ; 2 uses
  %i.s = icmp eq i64 %i.r, %i.d
  br i1 %i.s, label %.body, label %.lr.ph15

bb.h:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %i.t = landingpad { ptr, i32 }
          cleanup
  %i.u = icmp eq i64 %i.g, %i.d
  br i1 %i.u, label %.body, label %.lr.ph15

.lr.ph15:                                         ; preds = %bb.h, %bb.g
  %.sroa.0.1.i14 = phi i64 [ %i.r, %bb.g ], [ %i.g, %bb.h ] ; 2 uses
  %i.v = getelementptr inbounds nuw [752 x i8], ptr %i.b, i64 %.sroa.0.1.i14
  invoke fastcc void @"_ZN4core3ptr52drop_in_place$LT$utoipa..openapi..schema..Schema$GT$17hdc4cabc32b41a25aE"(ptr noalias noundef align 8 dereferenceable(752) %i.v) #33
          to label %bb.g unwind label %bb.i, !inline_history !9183

bb.i:                                             ; preds = %.lr.ph15
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #34, !inline_history !9183
  unreachable

.body:                                            ; preds = %bb.g, %bb.h
  %.val2 = load i64, ptr %0, align 8, !range !28, !noundef !27 ; 2 uses
  %i.x = icmp eq i64 %.val2, 0
  br i1 %i.x, label %"_ZN4core3ptr82drop_in_place$LT$alloc..raw_vec..RawVec$LT$utoipa..openapi..schema..Schema$GT$$GT$17h021facddf8bbc2dcE.exit", label %bb.j

bb.j:                                             ; preds = %.body
  %i.y = mul nuw i64 %.val2, 752
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef %i.y, i64 noundef range(i64 1, -9223372036854775807) 8) #37
  br label %"_ZN4core3ptr82drop_in_place$LT$alloc..raw_vec..RawVec$LT$utoipa..openapi..schema..Schema$GT$$GT$17h021facddf8bbc2dcE.exit"

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h66070ef5045b31eaE.exit": ; preds = %"_ZN4core3ptr52drop_in_place$LT$utoipa..openapi..schema..Schema$GT$17hdc4cabc32b41a25aE.exit.i", %bb.a
  %.val = load i64, ptr %0, align 8, !range !28, !noundef !27 ; 2 uses
  %i.z = icmp eq i64 %.val, 0
  br i1 %i.z, label %"_ZN4core3ptr82drop_in_place$LT$alloc..raw_vec..RawVec$LT$utoipa..openapi..schema..Schema$GT$$GT$17h021facddf8bbc2dcE.exit4", label %bb.k

bb.k:                                             ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h66070ef5045b31eaE.exit"
  %i.aa = mul nuw i64 %.val, 752
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef %i.aa, i64 noundef range(i64 1, -9223372036854775807) 8) #37
  br label %"_ZN4core3ptr82drop_in_place$LT$alloc..raw_vec..RawVec$LT$utoipa..openapi..schema..Schema$GT$$GT$17h021facddf8bbc2dcE.exit4"

"_ZN4core3ptr82drop_in_place$LT$alloc..raw_vec..RawVec$LT$utoipa..openapi..schema..Schema$GT$$GT$17h021facddf8bbc2dcE.exit4": ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h66070ef5045b31eaE.exit", %bb.k
  ret void

"_ZN4core3ptr82drop_in_place$LT$alloc..raw_vec..RawVec$LT$utoipa..openapi..schema..Schema$GT$$GT$17h021facddf8bbc2dcE.exit": ; preds = %bb.j, %.body
  resume { ptr, i32 } %i.t
}

end_hunk_2
begin_hunk_3_@"_ZN4core3ptr82drop_in_place$LT$utoipa..openapi..RefOr$LT$utoipa..openapi..schema..Schema$GT$$GT$17h691251737d51139aE":bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call fastcc void @"_ZN4core3ptr51drop_in_place$LT$utoipa..openapi..schema..OneOf$GT$17habae4fc0c5d09a1fE"(ptr noalias noundef align 8 dereferenceable(408) %i.r), !inline_history !9227
  br label %"_ZN4core3ptr49drop_in_place$LT$utoipa..openapi..schema..Ref$GT$17hce808cc8d600b322E.exit"

bb.k:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call fastcc void @"_ZN4core3ptr51drop_in_place$LT$utoipa..openapi..schema..AllOf$GT$17h0279199b6df0852bE"(ptr noalias noundef align 8 dereferenceable(408) %i.s), !inline_history !9227
  br label %"_ZN4core3ptr49drop_in_place$LT$utoipa..openapi..schema..Ref$GT$17hce808cc8d600b322E.exit"

"_ZN4core3ptr49drop_in_place$LT$utoipa..openapi..schema..Ref$GT$17hce808cc8d600b322E.exit": ; preds = %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.e, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1f5de302d11ecf9aE.exit12.i"
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr83drop_in_place$LT$alloc..vec..Vec$LT$clap_builder..builder..command..Command$GT$$GT$17h002516ab7611659bE"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !9277, !nonnull !27, !noundef !27 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !9277, !noundef !27 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h1d4a4434fdc970a1E.exit", label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.f = icmp eq i64 %i.h, %i.d
  br i1 %i.f, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h1d4a4434fdc970a1E.exit", label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i5 = phi i64 [ %i.h, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [712 x i8], ptr %i.b, i64 %.sroa.0.0.i5
  %i.h = add i64 %.sroa.0.0.i5, 1                 ; 4 uses
  invoke fastcc void @"_ZN4core3ptr60drop_in_place$LT$clap_builder..builder..command..Command$GT$17h2b22f74b3886983fE"(ptr noalias noundef align 8 dereferenceable(712) %i.g)
          to label %bb.b unwind label %bb.d, !inline_history !9280

bb.c:                                             ; preds = %.lr.ph7
  %i.i = add i64 %.sroa.0.1.i6, 1                 ; 2 uses
  %i.j = icmp eq i64 %i.i, %i.d
  br i1 %i.j, label %.body, label %.lr.ph7

bb.d:                                             ; preds = %.lr.ph
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = icmp eq i64 %i.h, %i.d
  br i1 %i.l, label %.body, label %.lr.ph7

.lr.ph7:                                          ; preds = %bb.d, %bb.c
  %.sroa.0.1.i6 = phi i64 [ %i.i, %bb.c ], [ %i.h, %bb.d ] ; 2 uses
  %i.m = getelementptr inbounds nuw [712 x i8], ptr %i.b, i64 %.sroa.0.1.i6
  invoke fastcc void @"_ZN4core3ptr60drop_in_place$LT$clap_builder..builder..command..Command$GT$17h2b22f74b3886983fE"(ptr noalias noundef align 8 dereferenceable(712) %i.m) #33
          to label %bb.c unwind label %bb.e, !inline_history !9280

bb.e:                                             ; preds = %.lr.ph7
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #34, !inline_history !9280
  unreachable

.body:                                            ; preds = %bb.c, %bb.d
  %.val2 = load i64, ptr %0, align 8, !range !28, !noundef !27 ; 2 uses
  %i.o = icmp eq i64 %.val2, 0
  br i1 %i.o, label %"_ZN4core3ptr90drop_in_place$LT$alloc..raw_vec..RawVec$LT$clap_builder..builder..command..Command$GT$$GT$17h525f08c26807f6faE.exit", label %bb.f

bb.f:                                             ; preds = %.body
  %i.p = mul nuw i64 %.val2, 712
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef %i.p, i64 noundef range(i64 1, -9223372036854775807) 8) #37
  br label %"_ZN4core3ptr90drop_in_place$LT$alloc..raw_vec..RawVec$LT$clap_builder..builder..command..Command$GT$$GT$17h525f08c26807f6faE.exit"

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h1d4a4434fdc970a1E.exit": ; preds = %bb.b, %bb.a
  %.val = load i64, ptr %0, align 8, !range !28, !noundef !27 ; 2 uses
  %i.q = icmp eq i64 %.val, 0
  br i1 %i.q, label %"_ZN4core3ptr90drop_in_place$LT$alloc..raw_vec..RawVec$LT$clap_builder..builder..command..Command$GT$$GT$17h525f08c26807f6faE.exit4", label %bb.g

bb.g:                                             ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h1d4a4434fdc970a1E.exit"
  %i.r = mul nuw i64 %.val, 712
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef %i.r, i64 noundef range(i64 1, -9223372036854775807) 8) #37
  br label %"_ZN4core3ptr90drop_in_place$LT$alloc..raw_vec..RawVec$LT$clap_builder..builder..command..Command$GT$$GT$17h525f08c26807f6faE.exit4"

"_ZN4core3ptr90drop_in_place$LT$alloc..raw_vec..RawVec$LT$clap_builder..builder..command..Command$GT$$GT$17h525f08c26807f6faE.exit4": ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h1d4a4434fdc970a1E.exit", %bb.g
  ret void

"_ZN4core3ptr90drop_in_place$LT$alloc..raw_vec..RawVec$LT$clap_builder..builder..command..Command$GT$$GT$17h525f08c26807f6faE.exit": ; preds = %bb.f, %.body
  resume { ptr, i32 } %i.k
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr83drop_in_place$LT$alloc..vec..Vec$LT$clap_builder..util..any_value..AnyValue$GT$$GT$17h5703540eb60c95d2E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !27, !noundef !27 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.b, align 8, !noundef !27 ; 4 uses
  %i.c = icmp eq i64 %.val1, 0
  br i1 %i.c, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he369e186c6e54cfbE.exit", label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %"_ZN4core3ptr60drop_in_place$LT$clap_builder..util..any_value..AnyValue$GT$17h5da5bd8f97cc7923E.exit.i.i"
  %.sroa.0.09.i.i = phi i64 [ %i.e, %"_ZN4core3ptr60drop_in_place$LT$clap_builder..util..any_value..AnyValue$GT$17h5da5bd8f97cc7923E.exit.i.i" ], [ 0, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw [32 x i8], ptr %.val, i64 %.sroa.0.09.i.i ; 2 uses
  %i.e = add nuw i64 %.sroa.0.09.i.i, 1           ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9281)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9284)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9287)
  %i.f = load ptr, ptr %i.d, align 8, !alias.scope !9290, !nonnull !27, !noundef !27
  %i.g = atomicrmw sub ptr %i.f, i64 1 release, align 8, !noalias !9293
  %i.h = icmp eq i64 %i.g, 1
  br i1 %i.h, label %bb.b, label %"_ZN4core3ptr60drop_in_place$LT$clap_builder..util..any_value..AnyValue$GT$17h5da5bd8f97cc7923E.exit.i.i"

bb.b:                                             ; preds = %.lr.ph.i.i
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hf71341fb7d59a632E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.d)
          to label %"_ZN4core3ptr60drop_in_place$LT$clap_builder..util..any_value..AnyValue$GT$17h5da5bd8f97cc7923E.exit.i.i" unwind label %bb.c

"_ZN4core3ptr60drop_in_place$LT$clap_builder..util..any_value..AnyValue$GT$17h5da5bd8f97cc7923E.exit.i.i": ; preds = %bb.b, %.lr.ph.i.i
  %i.i = icmp eq i64 %i.e, %.val1
  br i1 %i.i, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he369e186c6e54cfbE.exit", label %.lr.ph.i.i

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = icmp eq i64 %i.e, %.val1
  br i1 %i.k, label %.body, label %.lr.ph12.i.i

.lr.ph12.i.i:                                     ; preds = %bb.c, %"_ZN4core3ptr60drop_in_place$LT$clap_builder..util..any_value..AnyValue$GT$17h5da5bd8f97cc7923E.exit8.i.i"
  %.sroa.0.110.i.i = phi i64 [ %i.m, %"_ZN4core3ptr60drop_in_place$LT$clap_builder..util..any_value..AnyValue$GT$17h5da5bd8f97cc7923E.exit8.i.i" ], [ %i.e, %bb.c ] ; 2 uses
  %i.l = getelementptr inbounds nuw [32 x i8], ptr %.val, i64 %.sroa.0.110.i.i ; 2 uses
  %i.m = add i64 %.sroa.0.110.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9294)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9297)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9300)
  %i.n = load ptr, ptr %i.l, align 8, !alias.scope !9303, !nonnull !27, !noundef !27
  %i.o = atomicrmw sub ptr %i.n, i64 1 release, align 8, !noalias !9304
  %i.p = icmp eq i64 %i.o, 1
  br i1 %i.p, label %bb.d, label %"_ZN4core3ptr60drop_in_place$LT$clap_builder..util..any_value..AnyValue$GT$17h5da5bd8f97cc7923E.exit8.i.i"

bb.d:                                             ; preds = %.lr.ph12.i.i
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hf71341fb7d59a632E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.l)
          to label %"_ZN4core3ptr60drop_in_place$LT$clap_builder..util..any_value..AnyValue$GT$17h5da5bd8f97cc7923E.exit8.i.i" unwind label %bb.e

"_ZN4core3ptr60drop_in_place$LT$clap_builder..util..any_value..AnyValue$GT$17h5da5bd8f97cc7923E.exit8.i.i": ; preds = %bb.d, %.lr.ph12.i.i
  %i.q = icmp eq i64 %i.m, %.val1
  br i1 %i.q, label %.body, label %.lr.ph12.i.i

bb.e:                                             ; preds = %bb.d
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #34
  unreachable

.body:                                            ; preds = %"_ZN4core3ptr60drop_in_place$LT$clap_builder..util..any_value..AnyValue$GT$17h5da5bd8f97cc7923E.exit8.i.i", %bb.c
  %.val4 = load i64, ptr %0, align 8, !range !28, !noundef !27 ; 2 uses
  %i.s = icmp eq i64 %.val4, 0
  br i1 %i.s, label %"_ZN4core3ptr90drop_in_place$LT$alloc..raw_vec..RawVec$LT$clap_builder..util..any_value..AnyValue$GT$$GT$17h8793a2834b2ec39eE.exit", label %bb.f

bb.f:                                             ; preds = %.body
  %i.t = shl nuw i64 %.val4, 5
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.t, i64 noundef range(i64 1, -9223372036854775807) 8) #37
  br label %"_ZN4core3ptr90drop_in_place$LT$alloc..raw_vec..RawVec$LT$clap_builder..util..any_value..AnyValue$GT$$GT$17h8793a2834b2ec39eE.exit"

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he369e186c6e54cfbE.exit": ; preds = %"_ZN4core3ptr60drop_in_place$LT$clap_builder..util..any_value..AnyValue$GT$17h5da5bd8f97cc7923E.exit.i.i", %bb.a
  %.val2 = load i64, ptr %0, align 8, !range !28, !noundef !27 ; 2 uses
  %i.u = icmp eq i64 %.val2, 0
  br i1 %i.u, label %"_ZN4core3ptr90drop_in_place$LT$alloc..raw_vec..RawVec$LT$clap_builder..util..any_value..AnyValue$GT$$GT$17h8793a2834b2ec39eE.exit6", label %bb.g

bb.g:                                             ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he369e186c6e54cfbE.exit"
  %i.v = shl nuw i64 %.val2, 5
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.v, i64 noundef range(i64 1, -9223372036854775807) 8) #37
  br label %"_ZN4core3ptr90drop_in_place$LT$alloc..raw_vec..RawVec$LT$clap_builder..util..any_value..AnyValue$GT$$GT$17h8793a2834b2ec39eE.exit6"

"_ZN4core3ptr90drop_in_place$LT$alloc..raw_vec..RawVec$LT$clap_builder..util..any_value..AnyValue$GT$$GT$17h8793a2834b2ec39eE.exit6": ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he369e186c6e54cfbE.exit", %bb.g
  ret void

"_ZN4core3ptr90drop_in_place$LT$alloc..raw_vec..RawVec$LT$clap_builder..util..any_value..AnyValue$GT$$GT$17h8793a2834b2ec39eE.exit": ; preds = %bb.f, %.body
  resume { ptr, i32 } %i.j
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @"_ZN4core3ptr84drop_in_place$LT$anyhow..error..ContextError$LT$$RF$str$C$std..env..VarError$GT$$GT$17h29a7e219654360c8E"(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9305)
  %i.b = load i64, ptr %i.a, align 8, !range !318, !alias.scope !9305, !noundef !27 ; 2 uses
  %switch.i = icmp sgt i64 %i.b, 0
  br i1 %switch.i, label %bb.b, label %"_ZN4core3ptr39drop_in_place$LT$std..env..VarError$GT$17h29c3250990f22431E.exit"

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i = load ptr, ptr %i.c, align 8, !alias.scope !9305, !nonnull !27, !noundef !27
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %i.b, i64 noundef range(i64 1, -9223372036854775807) 1) #37, !noalias !9305
  br label %"_ZN4core3ptr39drop_in_place$LT$std..env..VarError$GT$17h29c3250990f22431E.exit"

"_ZN4core3ptr39drop_in_place$LT$std..env..VarError$GT$17h29c3250990f22431E.exit": ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr84drop_in_place$LT$core..option..Option$LT$utoipa..openapi..schema..Components$GT$$GT$17h31931aeaae0017f8E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  %i.b = alloca [72 x i8], align 8                ; 14 uses
  %i.c = load i64, ptr %0, align 8, !range !3481, !noundef !27
  %1 = icmp eq i64 %i.c, 0
  br i1 %1, label %bb.b, label %bb.c

bb.b:                                             ; preds = %"_ZN4core3ptr56drop_in_place$LT$utoipa..openapi..schema..Components$GT$17h6ad4cbdc2ac38f5cE.exit", %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9308)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9311)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9314)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !9317
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.e, align 8, !alias.scope !9317 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %.sroa.0.0.copyload.i.i.i, null
  br i1 %.not.i.i.i.i, label %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h335b29ed68855c2cE.exit.i.i.i", label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.5.0.copyload.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !9317
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.4.0.copyload.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !9317 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr null, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !alias.scope !9318, !noalias !9321
  %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %.sroa.0.0.copyload.i.i.i, ptr %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i.i, align 8, !alias.scope !9318, !noalias !9321
  %.sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %.sroa.4.0.copyload.i.i.i, ptr %.sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i.i, align 8, !alias.scope !9318, !noalias !9321
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr null, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !9318, !noalias !9321
  %.sroa.4.sroa.2.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr %.sroa.0.0.copyload.i.i.i, ptr %.sroa.4.sroa.2.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i, align 8, !alias.scope !9318, !noalias !9321
  %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i64 %.sroa.4.0.copyload.i.i.i, ptr %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i, align 8, !alias.scope !9318, !noalias !9321
  br label %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h335b29ed68855c2cE.exit.i.i.i"

"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h335b29ed68855c2cE.exit.i.i.i": ; preds = %bb.d, %bb.c
  %.sink23.i.i.i.i = phi i64 [ 1, %bb.d ], [ 0, %bb.c ] ; 2 uses
  %.sroa.7.0.copyload.sink.i.i.i.i = phi i64 [ %.sroa.5.0.copyload.i.i.i, %bb.d ], [ 0, %bb.c ]
  store i64 %.sink23.i.i.i.i, ptr %i.b, align 8, !alias.scope !9318, !noalias !9321
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %.sink23.i.i.i.i, ptr %i.f, align 8, !alias.scope !9318, !noalias !9321
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i64 %.sroa.7.0.copyload.sink.i.i.i.i, ptr %i.g, align 8, !alias.scope !9318, !noalias !9321
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9323
  invoke fastcc void @"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17h210b397d3a53be0bE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.b)
          to label %.noexc.i unwind label %.loopexit.split-lp.i, !noalias !9308

.noexc.i:                                         ; preds = %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h335b29ed68855c2cE.exit.i.i.i"
  %i.h = load ptr, ptr %i.a, align 8, !noalias !9323, !noundef !27 ; 2 uses
  %.not5.i.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not5.i.i.i.i.i, label %.loopexit5.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc.i
  %.sroa.23.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.e

bb.e:                                             ; preds = %.noexc4.i, %.lr.ph.i.i.i.i.i
  %i.i = phi ptr [ %i.h, %.lr.ph.i.i.i.i.i ], [ %i.p, %.noexc4.i ] ; 2 uses
  %.sroa.23.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.23.0..sroa_idx.i.i.i.i.i, align 8, !noalias !9323 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8280
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %i.j, i64 %.sroa.23.0.copyload.i.i.i.i.i ; 2 uses
  %.val.i.i.i.i.i.i = load i64, ptr %i.k, align 8, !noalias !9323 ; 2 uses
  %i.l = icmp eq i64 %.val.i.i.i.i.i.i, 0
  br i1 %i.l, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1f5de302d11ecf9aE.exit.i.i.i.i.i.i", label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr i8, ptr %i.k, i64 8
  %.val5.i.i.i.i.i.i = load ptr, ptr %i.m, align 8, !noalias !9323, !nonnull !27, !noundef !27
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #37, !noalias !9323
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1f5de302d11ecf9aE.exit.i.i.i.i.i.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1f5de302d11ecf9aE.exit.i.i.i.i.i.i": ; preds = %bb.f, %bb.e
  %i.n = getelementptr inbounds nuw [752 x i8], ptr %i.i, i64 %.sroa.23.0.copyload.i.i.i.i.i
  invoke fastcc void @"_ZN4core3ptr82drop_in_place$LT$utoipa..openapi..RefOr$LT$utoipa..openapi..schema..Schema$GT$$GT$17h691251737d51139aE"(ptr noalias noundef nonnull align 8 dereferenceable(752) %i.n)
          to label %"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17h00b5009125644447E.exit.i.i.i.i.i" unwind label %bb.g, !noalias !9323

bb.g:                                             ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1f5de302d11ecf9aE.exit.i.i.i.i.i.i"
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr252drop_in_place$LT$$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$..drop..DropGuard$LT$alloc..string..String$C$utoipa..openapi..RefOr$LT$utoipa..openapi..schema..Schema$GT$$C$alloc..alloc..Global$GT$$GT$17h2d4af2ebe75681b0E"(ptr nonnull align 8 dereferenceable(72) %i.b) #33
          to label %.body.i unwind label %bb.h, !noalias !9317

"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17h00b5009125644447E.exit.i.i.i.i.i": ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1f5de302d11ecf9aE.exit.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9323
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9323
  invoke fastcc void @"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17h210b397d3a53be0bE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.b)
          to label %.noexc4.i unwind label %.loopexit.i, !noalias !9308

.noexc4.i:                                        ; preds = %"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17h00b5009125644447E.exit.i.i.i.i.i"
  %i.p = load ptr, ptr %i.a, align 8, !noalias !9323, !noundef !27 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i.i, label %.loopexit5.i, label %bb.e

bb.h:                                             ; preds = %bb.g
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #34, !noalias !9323
  unreachable

.loopexit.i:                                      ; preds = %"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17h00b5009125644447E.exit.i.i.i.i.i"
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.split-lp.i:                             ; preds = %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h335b29ed68855c2cE.exit.i.i.i"
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %.loopexit.split-lp.i, %.loopexit.i, %bb.g
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.o, %bb.g ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 80
  invoke fastcc void @"_ZN4core3ptr158drop_in_place$LT$alloc..collections..btree..map..BTreeMap$LT$alloc..string..String$C$utoipa..openapi..RefOr$LT$utoipa..openapi..response..Response$GT$$GT$$GT$17h85e166c25297b5cbE"(ptr noalias noundef readonly align 8 dereferenceable(24) %i.r) #33
          to label %bb.i unwind label %bb.n

.loopexit5.i:                                     ; preds = %.noexc4.i, %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9323
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !9317
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 80
  invoke fastcc void @"_ZN4core3ptr158drop_in_place$LT$alloc..collections..btree..map..BTreeMap$LT$alloc..string..String$C$utoipa..openapi..RefOr$LT$utoipa..openapi..response..Response$GT$$GT$$GT$17h85e166c25297b5cbE"(ptr noalias noundef readonly align 8 dereferenceable(24) %i.s)
          to label %bb.k unwind label %bb.j

bb.i:                                             ; preds = %bb.j, %.body.i
  %.pn.i = phi { ptr, i32 } [ %i.u, %bb.j ], [ %eh.lpad-body.i, %.body.i ]
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 104
  invoke fastcc void @"_ZN4core3ptr134drop_in_place$LT$alloc..collections..btree..map..BTreeMap$LT$alloc..string..String$C$utoipa..openapi..security..SecurityScheme$GT$$GT$17h509f2bb696b0e850E"(ptr noalias noundef readonly align 8 dereferenceable(24) %i.t) #33
          to label %bb.l unwind label %bb.n

bb.j:                                             ; preds = %.loopexit5.i
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.k:                                             ; preds = %.loopexit5.i
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 104
  invoke fastcc void @"_ZN4core3ptr134drop_in_place$LT$alloc..collections..btree..map..BTreeMap$LT$alloc..string..String$C$utoipa..openapi..security..SecurityScheme$GT$$GT$17h509f2bb696b0e850E"(ptr noalias noundef readonly align 8 dereferenceable(24) %i.v)
          to label %"_ZN4core3ptr56drop_in_place$LT$utoipa..openapi..schema..Components$GT$17h6ad4cbdc2ac38f5cE.exit" unwind label %bb.m

bb.l:                                             ; preds = %bb.m, %bb.i
  %.pn2.i = phi { ptr, i32 } [ %i.w, %bb.m ], [ %.pn.i, %bb.i ]
  invoke fastcc void @"_ZN4core3ptr88drop_in_place$LT$core..option..Option$LT$utoipa..openapi..extensions..Extensions$GT$$GT$17h2f551b83d9a3e23fE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(120) %i.d) #33
          to label %bb.o unwind label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.n:                                             ; preds = %bb.l, %bb.i, %.body.i
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #34, !noalias !9308
  unreachable

bb.o:                                             ; preds = %bb.l
  resume { ptr, i32 } %.pn2.i

"_ZN4core3ptr56drop_in_place$LT$utoipa..openapi..schema..Components$GT$17h6ad4cbdc2ac38f5cE.exit": ; preds = %bb.k
  tail call fastcc void @"_ZN4core3ptr88drop_in_place$LT$core..option..Option$LT$utoipa..openapi..extensions..Extensions$GT$$GT$17h2f551b83d9a3e23fE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(120) %i.d)
  br label %bb.b
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr86drop_in_place$LT$alloc..vec..Vec$LT$clap_builder..builder..arg_group..ArgGroup$GT$$GT$17h91dd0cdfe3b3d23cE"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !27, !noundef !27 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.b, align 8, !noundef !27 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9328)
  %i.c = icmp eq i64 %.val1, 0
  br i1 %i.c, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3e681ade697e0db5E.exit", label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %"_ZN4core3ptr63drop_in_place$LT$clap_builder..builder..arg_group..ArgGroup$GT$17ha1c438e7d8823e31E.exit.i.i"
  %.sroa.0.07.i.i = phi i64 [ %i.e, %"_ZN4core3ptr63drop_in_place$LT$clap_builder..builder..arg_group..ArgGroup$GT$17ha1c438e7d8823e31E.exit.i.i" ], [ 0, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw [96 x i8], ptr %.val, i64 %.sroa.0.07.i.i ; 6 uses
  %i.e = add nuw i64 %.sroa.0.07.i.i, 1           ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9331)
  %.val9.i.i.i = load i64, ptr %i.d, align 8, !alias.scope !9334 ; 2 uses
  %i.f = icmp eq i64 %.val9.i.i.i, 0
  br i1 %i.f, label %"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$clap_builder..util..id..Id$GT$$GT$17h4348a6a0275c3837E.exit.i.i.i", label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.val10.i.i.i = load ptr, ptr %i.g, align 8, !alias.scope !9334, !nonnull !27, !noundef !27
  %i.h = shl nuw i64 %.val9.i.i.i, 4
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val10.i.i.i, i64 noundef %i.h, i64 noundef range(i64 1, -9223372036854775807) 8) #37, !noalias !9334
  br label %"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$clap_builder..util..id..Id$GT$$GT$17h4348a6a0275c3837E.exit.i.i.i"

"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$clap_builder..util..id..Id$GT$$GT$17h4348a6a0275c3837E.exit.i.i.i": ; preds = %bb.b, %.lr.ph.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.val5.i.i.i = load i64, ptr %i.i, align 8, !alias.scope !9334 ; 2 uses
  %i.j = icmp eq i64 %.val5.i.i.i, 0
  br i1 %i.j, label %"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$clap_builder..util..id..Id$GT$$GT$17h4348a6a0275c3837E.exit12.i.i.i", label %bb.c

bb.c:                                             ; preds = %"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$clap_builder..util..id..Id$GT$$GT$17h4348a6a0275c3837E.exit.i.i.i"
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.val6.i.i.i = load ptr, ptr %i.k, align 8, !alias.scope !9334, !nonnull !27, !noundef !27
  %i.l = shl nuw i64 %.val5.i.i.i, 4
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val6.i.i.i, i64 noundef %i.l, i64 noundef range(i64 1, -9223372036854775807) 8) #37, !noalias !9334
  br label %"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$clap_builder..util..id..Id$GT$$GT$17h4348a6a0275c3837E.exit12.i.i.i"
end_hunk_3
begin_hunk_4_@"_ZN4core3str21_$LT$impl$u20$str$GT$18trim_start_matches17h784aefc55df2ae25E":bb.a

bb.c:                                             ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he65392c538471d83E.exit16.i.i.i.i.i", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he65392c538471d83E.exit14.i.i.i.i.i", %bb.b, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he65392c538471d83E.exit12.i.i.i.i.i"
  %i.an = phi ptr [ %i.u, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he65392c538471d83E.exit14.i.i.i.i.i" ], [ %i.ae, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he65392c538471d83E.exit16.i.i.i.i.i" ], [ %i.l, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he65392c538471d83E.exit12.i.i.i.i.i" ], [ %i.f, %bb.b ] ; 3 uses
  %.sroa.4.0.i.ph.i.i.i.i = phi i32 [ %i.ab, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he65392c538471d83E.exit14.i.i.i.i.i" ], [ %i.am, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he65392c538471d83E.exit16.i.i.i.i.i" ], [ %i.q, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he65392c538471d83E.exit12.i.i.i.i.i" ], [ %i.s, %bb.b ] ; 8 uses
  %i.ao = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i, 1114112
  tail call void @llvm.assume(i1 %i.ao)
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = sub i64 %i.c, %i.e
  %i.ar = add i64 %i.aq, %i.ap
  switch i32 %.sroa.4.0.i.ph.i.i.i.i, label %bb.d [
    i32 32, label %"_ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17h90f07c7a2b6cf0aaE.exit.i.i"
    i32 13, label %"_ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17h90f07c7a2b6cf0aaE.exit.i.i"
    i32 12, label %"_ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17h90f07c7a2b6cf0aaE.exit.i.i"
    i32 11, label %"_ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17h90f07c7a2b6cf0aaE.exit.i.i"
    i32 10, label %"_ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17h90f07c7a2b6cf0aaE.exit.i.i"
    i32 9, label %"_ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17h90f07c7a2b6cf0aaE.exit.i.i"
  ]

bb.d:                                             ; preds = %bb.c
  %i.as = icmp samesign ugt i32 %.sroa.4.0.i.ph.i.i.i.i, 127
  br i1 %i.as, label %bb.e, label %"_ZN99_$LT$core..str..pattern..CharPredicateSearcher$LT$F$GT$$u20$as$u20$core..str..pattern..Searcher$GT$11next_reject17h8ca409a5f64ed479E.exit"

bb.e:                                             ; preds = %bb.d
  %i.at = lshr i32 %.sroa.4.0.i.ph.i.i.i.i, 8
  switch i32 %i.at, label %"_ZN99_$LT$core..str..pattern..CharPredicateSearcher$LT$F$GT$$u20$as$u20$core..str..pattern..Searcher$GT$11next_reject17h8ca409a5f64ed479E.exit" [
    i32 0, label %bb.h
    i32 22, label %bb.f
    i32 32, label %bb.i
    i32 48, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  %i.au = icmp eq i32 %.sroa.4.0.i.ph.i.i.i.i, 5760
  %i.av = zext i1 %i.au to i8
  br label %"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17h2b66030e469a66e5E.exit.i.i.i"

bb.g:                                             ; preds = %bb.e
  %i.aw = icmp eq i32 %.sroa.4.0.i.ph.i.i.i.i, 12288
  %i.ax = zext i1 %i.aw to i8
  br label %"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17h2b66030e469a66e5E.exit.i.i.i"

bb.h:                                             ; preds = %bb.e
  %i.ay = and i32 %.sroa.4.0.i.ph.i.i.i.i, 255
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw i8, ptr @_ZN4core7unicode12unicode_data11white_space14WHITESPACE_MAP17h4cf41e25fd3a5318E, i64 %i.az
  %i.bb = load i8, ptr %i.ba, align 1, !noalias !9495, !noundef !27
  br label %"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17h2b66030e469a66e5E.exit.i.i.i"

bb.i:                                             ; preds = %bb.e
  %i.bc = and i32 %.sroa.4.0.i.ph.i.i.i.i, 255
  %i.bd = zext nneg i32 %i.bc to i64
  %i.be = getelementptr inbounds nuw i8, ptr @_ZN4core7unicode12unicode_data11white_space14WHITESPACE_MAP17h4cf41e25fd3a5318E, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !noalias !9495, !noundef !27
  %i.bg = lshr i8 %i.bf, 1
  br label %"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17h2b66030e469a66e5E.exit.i.i.i"

"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17h2b66030e469a66e5E.exit.i.i.i": ; preds = %bb.i, %bb.h, %bb.g, %bb.f
  %.sroa.0.0.i.i.i.i.i.i.i = phi i8 [ %i.ax, %bb.g ], [ %i.bb, %bb.h ], [ %i.av, %bb.f ], [ %i.bg, %bb.i ]
  %i.bh = trunc i8 %.sroa.0.0.i.i.i.i.i.i.i to i1
  br i1 %i.bh, label %"_ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17h90f07c7a2b6cf0aaE.exit.i.i", label %"_ZN99_$LT$core..str..pattern..CharPredicateSearcher$LT$F$GT$$u20$as$u20$core..str..pattern..Searcher$GT$11next_reject17h8ca409a5f64ed479E.exit"

"_ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17h90f07c7a2b6cf0aaE.exit.i.i": ; preds = %"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17h2b66030e469a66e5E.exit.i.i.i", %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c
  %i.bi = icmp eq ptr %i.an, %i.a
  br i1 %i.bi, label %"_ZN99_$LT$core..str..pattern..CharPredicateSearcher$LT$F$GT$$u20$as$u20$core..str..pattern..Searcher$GT$11next_reject17h8ca409a5f64ed479E.exit", label %.lr.ph.i.i

"_ZN99_$LT$core..str..pattern..CharPredicateSearcher$LT$F$GT$$u20$as$u20$core..str..pattern..Searcher$GT$11next_reject17h8ca409a5f64ed479E.exit": ; preds = %"_ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17h90f07c7a2b6cf0aaE.exit.i.i", %bb.e, %"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17h2b66030e469a66e5E.exit.i.i.i", %bb.d, %bb.a
  %.sroa.0.0 = phi i64 [ 0, %bb.a ], [ %1, %"_ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17h90f07c7a2b6cf0aaE.exit.i.i" ], [ %i.c, %"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17h2b66030e469a66e5E.exit.i.i.i" ], [ %i.c, %bb.d ], [ %i.c, %bb.e ] ; 2 uses
  %i.bj = sub nuw i64 %1, %.sroa.0.0
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.0
  %i.bl = insertvalue { ptr, i64 } poison, ptr %i.bk, 0
  %i.bm = insertvalue { ptr, i64 } %i.bl, i64 %i.bj, 1
  ret { ptr, i64 } %i.bm
}

; Function Attrs: cold inlinehint nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @"_ZN4core3str7pattern13simd_contains28_$u7b$$u7b$closure$u7d$$u7d$17hcb1c8e7b01e56be1E"(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, i64 noundef %1, i16 noundef range(i16 1, 0) %2, i1 noundef zeroext %3) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  br i1 %3, label %_ZN4core3str7pattern14small_slice_eq17hbce1a36f18521dceE.exit.thread13, label %.preheader16

.preheader16:                                     ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !nonnull !27, !align !301, !noundef !27
  %i.b = getelementptr i8, ptr %i.a, i64 %1       ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !noundef !27 ; 6 uses
  %i.f = load ptr, ptr %i.c, align 8, !nonnull !27, !align !301, !noundef !27 ; 5 uses
  %i.g = icmp ult i64 %i.e, 4
  %i.h = getelementptr i8, ptr %i.f, i64 %i.e
  %i.i = getelementptr i8, ptr %i.h, i64 -4
  br i1 %i.g, label %.preheader.us.preheader, label %.preheader16.split

.preheader.us.preheader:                          ; preds = %.preheader16
  %exitcond.not.i.us30 = icmp eq i64 %i.e, 0      ; 3 uses
  %exitcond.not.i.us = icmp eq i64 %i.e, 1
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %exitcond.not.i.us.1 = icmp eq i64 %i.e, 2
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %_ZN4core3str7pattern14small_slice_eq17hbce1a36f18521dceE.exit.thread.loopexit.us
  %.sroa.01.018.us = phi i16 [ %i.z, %_ZN4core3str7pattern14small_slice_eq17hbce1a36f18521dceE.exit.thread.loopexit.us ], [ %2, %.preheader.us.preheader ] ; 2 uses
  %i.l = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.01.018.us, i1 true) ; 2 uses
  %i.m = zext nneg i16 %i.l to i64
  %i.n = getelementptr i8, ptr %i.b, i64 %i.m     ; 3 uses
  %i.o = getelementptr i8, ptr %i.n, i64 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9496)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9499)
  br i1 %exitcond.not.i.us30, label %_ZN4core3str7pattern14small_slice_eq17hbce1a36f18521dceE.exit.thread13, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  br i1 %exitcond.not.i.us, label %_ZN4core3str7pattern14small_slice_eq17hbce1a36f18521dceE.exit.thread13, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %bb.b
  %i.p = getelementptr i8, ptr %i.n, i64 2
  %i.q = load i8, ptr %i.p, align 1, !alias.scope !9496, !noalias !9499, !noundef !27
  %i.r = load i8, ptr %i.j, align 1, !alias.scope !9499, !noalias !9496, !noundef !27
  %.not13.i.us.1 = icmp eq i8 %i.q, %i.r
  br i1 %.not13.i.us.1, label %bb.c, label %_ZN4core3str7pattern14small_slice_eq17hbce1a36f18521dceE.exit.thread.loopexit.us

bb.c:                                             ; preds = %.lr.ph.1
  br i1 %exitcond.not.i.us.1, label %_ZN4core3str7pattern14small_slice_eq17hbce1a36f18521dceE.exit.thread13, label %.lr.ph.2

.lr.ph.2:                                         ; preds = %bb.c
  %i.s = getelementptr i8, ptr %i.n, i64 3
  %i.t = load i8, ptr %i.s, align 1, !alias.scope !9496, !noalias !9499, !noundef !27
  %i.u = load i8, ptr %i.k, align 1, !alias.scope !9499, !noalias !9496, !noundef !27
  %.not13.i.us.2 = icmp eq i8 %i.t, %i.u
  br i1 %.not13.i.us.2, label %_ZN4core3str7pattern14small_slice_eq17hbce1a36f18521dceE.exit.thread13, label %_ZN4core3str7pattern14small_slice_eq17hbce1a36f18521dceE.exit.thread.loopexit.us

.lr.ph:                                           ; preds = %.preheader.us
  %i.v = load i8, ptr %i.o, align 1, !alias.scope !9496, !noalias !9499, !noundef !27
  %i.w = load i8, ptr %i.f, align 1, !alias.scope !9499, !noalias !9496, !noundef !27
  %.not13.i.us = icmp eq i8 %i.v, %i.w
  br i1 %.not13.i.us, label %bb.b, label %_ZN4core3str7pattern14small_slice_eq17hbce1a36f18521dceE.exit.thread.loopexit.us

_ZN4core3str7pattern14small_slice_eq17hbce1a36f18521dceE.exit.thread.loopexit.us: ; preds = %.lr.ph.2, %.lr.ph.1, %.lr.ph
  %i.x = shl nuw i16 1, %i.l
  %i.y = xor i16 %i.x, -1
  %i.z = and i16 %.sroa.01.018.us, %i.y           ; 2 uses
  %i.aa = icmp eq i16 %i.z, 0
  br i1 %i.aa, label %_ZN4core3str7pattern14small_slice_eq17hbce1a36f18521dceE.exit.thread13, label %.preheader.us

.preheader16.split:                               ; preds = %.preheader16, %_ZN4core3str7pattern14small_slice_eq17hbce1a36f18521dceE.exit.thread
  %.sroa.01.018 = phi i16 [ %i.ao, %_ZN4core3str7pattern14small_slice_eq17hbce1a36f18521dceE.exit.thread ], [ %2, %.preheader16 ] ; 2 uses
  %i.ab = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.01.018, i1 true) ; 2 uses
  %i.ac = zext nneg i16 %i.ab to i64
  %i.ad = getelementptr i8, ptr %i.b, i64 %i.ac
  %i.ae = getelementptr i8, ptr %i.ad, i64 1      ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9496)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9499)
  %i.af = getelementptr i8, ptr %i.ae, i64 %i.e
  %i.ag = getelementptr i8, ptr %i.af, i64 -4     ; 3 uses
  %i.ah = icmp ult ptr %i.ae, %i.ag
  br i1 %i.ah, label %.lr.ph.i, label %_ZN4core3str7pattern14small_slice_eq17hbce1a36f18521dceE.exit

.lr.ph.i:                                         ; preds = %.preheader16.split, %bb.d
  %.sroa.04.024.i = phi ptr [ %i.ai, %bb.d ], [ %i.ae, %.preheader16.split ] ; 2 uses
  %.sroa.08.023.i = phi ptr [ %i.aj, %bb.d ], [ %i.f, %.preheader16.split ] ; 2 uses
  %.sroa.04.0.val.i = load i32, ptr %.sroa.04.024.i, align 1, !alias.scope !9496, !noalias !9499
  %.sroa.08.0.val.i = load i32, ptr %.sroa.08.023.i, align 1, !alias.scope !9499, !noalias !9496
  %.not.i = icmp eq i32 %.sroa.04.0.val.i, %.sroa.08.0.val.i
  br i1 %.not.i, label %bb.d, label %_ZN4core3str7pattern14small_slice_eq17hbce1a36f18521dceE.exit.thread

bb.d:                                             ; preds = %.lr.ph.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.04.024.i, i64 4 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.08.023.i, i64 4
  %i.ak = icmp ult ptr %i.ai, %i.ag
  br i1 %i.ak, label %.lr.ph.i, label %_ZN4core3str7pattern14small_slice_eq17hbce1a36f18521dceE.exit

_ZN4core3str7pattern14small_slice_eq17hbce1a36f18521dceE.exit: ; preds = %bb.d, %.preheader16.split
  %.val14.i = load i32, ptr %i.ag, align 1, !alias.scope !9496, !noalias !9499
  %.val.i = load i32, ptr %i.i, align 1, !alias.scope !9499, !noalias !9496
  %i.al = icmp eq i32 %.val14.i, %.val.i
  br i1 %i.al, label %_ZN4core3str7pattern14small_slice_eq17hbce1a36f18521dceE.exit.thread13, label %_ZN4core3str7pattern14small_slice_eq17hbce1a36f18521dceE.exit.thread

_ZN4core3str7pattern14small_slice_eq17hbce1a36f18521dceE.exit.thread13: ; preds = %_ZN4core3str7pattern14small_slice_eq17hbce1a36f18521dceE.exit.thread, %_ZN4core3str7pattern14small_slice_eq17hbce1a36f18521dceE.exit, %_ZN4core3str7pattern14small_slice_eq17hbce1a36f18521dceE.exit.thread.loopexit.us, %.preheader.us, %.lr.ph.2, %bb.b, %bb.c, %bb.a
  %.sroa.0.0 = phi i1 [ true, %.lr.ph.2 ], [ false, %bb.a ], [ %exitcond.not.i.us30, %_ZN4core3str7pattern14small_slice_eq17hbce1a36f18521dceE.exit.thread.loopexit.us ], [ true, %bb.c ], [ true, %bb.b ], [ %exitcond.not.i.us30, %.preheader.us ], [ false, %_ZN4core3str7pattern14small_slice_eq17hbce1a36f18521dceE.exit.thread ], [ true, %_ZN4core3str7pattern14small_slice_eq17hbce1a36f18521dceE.exit ]
  ret i1 %.sroa.0.0

_ZN4core3str7pattern14small_slice_eq17hbce1a36f18521dceE.exit.thread: ; preds = %.lr.ph.i, %_ZN4core3str7pattern14small_slice_eq17hbce1a36f18521dceE.exit
  %i.am = shl nuw i16 1, %i.ab
  %i.an = xor i16 %i.am, -1
  %i.ao = and i16 %.sroa.01.018, %i.an            ; 2 uses
  %i.ap = icmp eq i16 %i.ao, 0
  br i1 %i.ap, label %_ZN4core3str7pattern14small_slice_eq17hbce1a36f18521dceE.exit.thread13, label %.preheader16.split
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_ZN4core3str7pattern14TwoWaySearcher4next17h33251aae195f93b4E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(64) %1, ptr noalias noundef nonnull readonly align 1 captures(none) %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 1 captures(none) %4, i64 noundef %5, i1 noundef zeroext %6) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 6 uses
  %i.b = add i64 %5, -1                           ; 2 uses
  %.promoted = load i64, ptr %i.a, align 8        ; 2 uses
  %i.c = add i64 %i.b, %.promoted                 ; 2 uses
  %i.d = icmp ult i64 %i.c, %3
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load i64, ptr %i.e, align 8, !noundef !27
  %7 = load i64, ptr %1, align 8                  ; 5 uses
  %8 = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load i64, ptr %i.g, align 8              ; 2 uses
  %i.i = sub i64 %5, %i.h
  %.promoted36 = load i64, ptr %8, align 8
  br label %bb.b

._crit_edge:                                      ; preds = %bb.f, %bb.a
  store i64 %3, ptr %i.a, align 8
  br label %bb.c

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %i.j = phi i64 [ %.promoted36, %.lr.ph ], [ %i.r, %bb.f ] ; 5 uses
  %i.k = phi i64 [ %i.c, %.lr.ph ], [ %i.t, %bb.f ]
  %i.l = phi i64 [ %.promoted, %.lr.ph ], [ %i.s, %bb.f ] ; 8 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 %i.k
  %i.n = load i8, ptr %i.m, align 1, !noundef !27
  %i.o = and i8 %i.n, 63
  %i.p = zext nneg i8 %i.o to i64
  %9 = shl nuw i64 1, %i.p
  %10 = and i64 %9, %i.f
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.j, %._crit_edge
  %storemerge = phi i64 [ 0, %._crit_edge ], [ 1, %bb.j ]
  store i64 %storemerge, ptr %0, align 8
  ret void

bb.d:                                             ; preds = %bb.b
  %i.q = add i64 %i.l, %5                         ; 3 uses
  store i64 %i.q, ptr %i.a, align 8
  br i1 %6, label %bb.f, label %.sink.split

bb.e:                                             ; preds = %bb.b
  %.sroa.0.0.i = tail call i64 @llvm.umax.i64(i64 %i.j, i64 %7)
  %.sroa.01.0 = select i1 %6, i64 %7, i64 %.sroa.0.0.i ; 4 uses
  %umax50 = tail call i64 @llvm.umax.i64(i64 %.sroa.01.0, i64 %5)
  %exitcond.not87.not = icmp ult i64 %.sroa.01.0, %5
  br i1 %exitcond.not87.not, label %.lr.ph90, label %._crit_edge91

.sink.split:                                      ; preds = %bb.d, %bb.r, %bb.o
  %.sink = phi i64 [ %i.i, %bb.o ], [ 0, %bb.r ], [ 0, %bb.d ] ; 2 uses
  %.ph72 = phi i64 [ %i.al, %bb.o ], [ %i.at, %bb.r ], [ %i.q, %bb.d ]
  store i64 %.sink, ptr %8, align 8
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.r, %bb.o, %bb.d
  %i.r = phi i64 [ %i.j, %bb.r ], [ %i.j, %bb.o ], [ %i.j, %bb.d ], [ %.sink, %.sink.split ]
  %i.s = phi i64 [ %i.at, %bb.r ], [ %i.al, %bb.o ], [ %i.q, %bb.d ], [ %.ph72, %.sink.split ] ; 2 uses
  %i.t = add i64 %i.b, %i.s                       ; 2 uses
  %i.u = icmp ult i64 %i.t, %3
  br i1 %i.u, label %bb.b, label %._crit_edge

bb.g:                                             ; preds = %bb.p
  %i.v = add i64 %.sroa.02.088, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.v, %umax50
  br i1 %exitcond.not, label %._crit_edge91, label %.lr.ph90

._crit_edge91:                                    ; preds = %bb.g, %bb.e
  %.sroa.05.0 = select i1 %6, i64 0, i64 %i.j     ; 2 uses
  %i.w = icmp ult i64 %.sroa.05.0, %7
  br i1 %i.w, label %.lr.ph94, label %._crit_edge95

.lr.ph90:                                         ; preds = %bb.e, %bb.g
  %.sroa.02.088 = phi i64 [ %i.v, %bb.g ], [ %.sroa.01.0, %bb.e ] ; 4 uses
  %i.x = add i64 %.sroa.02.088, %i.l              ; 2 uses
  %i.y = icmp ult i64 %i.x, %3
  br i1 %i.y, label %bb.p, label %bb.q

bb.h:                                             ; preds = %bb.m
  %i.z = icmp ult i64 %.sroa.05.0, %i.ab
  br i1 %i.z, label %.lr.ph94, label %._crit_edge95

._crit_edge95:                                    ; preds = %._crit_edge91, %bb.h
  %i.aa = add i64 %i.l, %5                        ; 2 uses
  store i64 %i.aa, ptr %i.a, align 8
  br i1 %6, label %bb.j, label %bb.i

.lr.ph94:                                         ; preds = %._crit_edge91, %bb.h
  %.sroa.57.092 = phi i64 [ %i.ab, %bb.h ], [ %7, %._crit_edge91 ]
  %i.ab = add i64 %.sroa.57.092, -1               ; 6 uses
  %i.ac = icmp ult i64 %i.ab, %5
  br i1 %i.ac, label %bb.k, label %bb.l

bb.i:                                             ; preds = %._crit_edge95
  store i64 0, ptr %8, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge95
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.l, ptr %i.ad, align 8, !alias.scope !9501
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.aa, ptr %i.ae, align 8, !alias.scope !9501
  br label %bb.c

bb.k:                                             ; preds = %.lr.ph94
  %i.af = add i64 %i.ab, %i.l                     ; 3 uses
  %i.ag = icmp ult i64 %i.af, %3
  br i1 %i.ag, label %bb.m, label %bb.n

bb.l:                                             ; preds = %.lr.ph94
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.ab, i64 noundef %5, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @227) #38
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 %i.ab
  %i.ai = load i8, ptr %i.ah, align 1, !noundef !27
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 %i.af
  %i.ak = load i8, ptr %i.aj, align 1, !noundef !27
  %.not = icmp eq i8 %i.ai, %i.ak
  br i1 %.not, label %bb.h, label %bb.o

bb.n:                                             ; preds = %bb.k
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.af, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @228) #38
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.al = add i64 %i.h, %i.l                      ; 3 uses
  store i64 %i.al, ptr %i.a, align 8
  br i1 %6, label %bb.f, label %.sink.split

bb.p:                                             ; preds = %.lr.ph90
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 %.sroa.02.088
  %i.an = load i8, ptr %i.am, align 1, !noundef !27
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 %i.x
  %i.ap = load i8, ptr %i.ao, align 1, !noundef !27
  %.not22 = icmp eq i8 %i.an, %i.ap
  br i1 %.not22, label %bb.g, label %bb.r

bb.q:                                             ; preds = %.lr.ph90
  %i.aq = add i64 %.sroa.01.0, %i.l
  %umax = tail call i64 @llvm.umax.i64(i64 %3, i64 %i.aq)
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %umax, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @229) #38
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.ar = add i64 %i.l, 1
  %i.as = add i64 %i.ar, %.sroa.02.088
  %i.at = sub i64 %i.as, %7                       ; 3 uses
  store i64 %i.at, ptr %i.a, align 8
  br i1 %6, label %bb.f, label %.sink.split
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define internal fastcc noundef i64 @_ZN4core4hash11BuildHasher8hash_one17h9a0cf704dcdc809bE(i64 %.0.val, i64 %.8.val, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %i.b = alloca [72 x i8], align 8                ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = xor i64 %.0.val, 8317987319222330741
  %i.d = xor i64 %.8.val, 7237128888997146477
  %i.e = xor i64 %.0.val, 7816392313619706465
  %i.f = xor i64 %.8.val, 8387220255154660723
  store i64 %i.c, ptr %i.b, align 8, !alias.scope !9504
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store i64 %i.e, ptr %.sroa.48.0..sroa_idx.i, align 8, !alias.scope !9504
  %.sroa.59.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 %i.d, ptr %.sroa.59.0..sroa_idx.i, align 8, !alias.scope !9504
  %.sroa.610.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  store i64 %i.f, ptr %.sroa.610.0..sroa_idx.i, align 8, !alias.scope !9504
  %.sroa.711.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %.0.val, ptr %.sroa.711.0..sroa_idx.i, align 8, !alias.scope !9504
  %.sroa.812.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 %.8.val, ptr %.sroa.812.0..sroa_idx.i, align 8, !alias.scope !9504
  %.sroa.913.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.913.0..sroa_idx.i, i8 0, i64 24, i1 false), !alias.scope !9504
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.g, align 8, !noalias !9507, !nonnull !27, !noundef !27
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load i64, ptr %i.h, align 8, !noalias !9507, !noundef !27
  call fastcc void @"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17hce18c0b16ad05d31E"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val.i, i64 noundef %.val1.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9510
  store i8 -1, ptr %i.a, align 1, !noalias !9510
  call fastcc void @"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17hce18c0b16ad05d31E"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.a, i64 noundef 1), !noalias !9519
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9510
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.b, align 8, !alias.scope !9520
  %.sroa.10.0.copyload.i.i = load i64, ptr %.sroa.48.0..sroa_idx.i, align 8, !alias.scope !9520
  %.sroa.17.0.copyload.i.i = load i64, ptr %.sroa.59.0..sroa_idx.i, align 8, !alias.scope !9520 ; 3 uses
  %.sroa.22.0.copyload.i.i = load i64, ptr %.sroa.610.0..sroa_idx.i, align 8, !alias.scope !9520
  %i.i = load i64, ptr %.sroa.913.0..sroa_idx.i, align 8, !alias.scope !9520, !noundef !27
  %i.j = shl i64 %i.i, 56
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !9520, !noundef !27
  %i.m = or i64 %i.j, %i.l                        ; 2 uses
  %i.n = xor i64 %i.m, %.sroa.22.0.copyload.i.i   ; 3 uses
  %i.o = add i64 %.sroa.17.0.copyload.i.i, %.sroa.0.0.copyload.i.i ; 3 uses
  %i.p = add i64 %i.n, %.sroa.10.0.copyload.i.i   ; 2 uses
  %i.q = tail call i64 @llvm.fshl.i64(i64 %.sroa.17.0.copyload.i.i, i64 %.sroa.17.0.copyload.i.i, i64 13)
  %i.r = xor i64 %i.q, %i.o                       ; 3 uses
  %i.s = tail call i64 @llvm.fshl.i64(i64 %i.n, i64 %i.n, i64 16)
  %i.t = xor i64 %i.s, %i.p                       ; 3 uses
  %i.u = tail call i64 @llvm.fshl.i64(i64 %i.o, i64 %i.o, i64 32)
  %i.v = add i64 %i.p, %i.r                       ; 3 uses
  %i.w = add i64 %i.t, %i.u                       ; 2 uses
  %i.x = tail call i64 @llvm.fshl.i64(i64 %i.r, i64 %i.r, i64 17)
  %i.y = xor i64 %i.v, %i.x                       ; 3 uses
  %i.z = tail call i64 @llvm.fshl.i64(i64 %i.t, i64 %i.t, i64 21)
  %i.aa = xor i64 %i.z, %i.w                      ; 3 uses
  %i.ab = tail call i64 @llvm.fshl.i64(i64 %i.v, i64 %i.v, i64 32)
  %i.ac = xor i64 %i.w, %i.m
  %i.ad = xor i64 %i.ab, 255
  %i.ae = add i64 %i.ac, %i.y                     ; 3 uses
  %i.af = add i64 %i.aa, %i.ad                    ; 2 uses
  %i.ag = tail call i64 @llvm.fshl.i64(i64 %i.y, i64 %i.y, i64 13)
  %i.ah = xor i64 %i.ae, %i.ag                    ; 3 uses
  %i.ai = tail call i64 @llvm.fshl.i64(i64 %i.aa, i64 %i.aa, i64 16)
  %i.aj = xor i64 %i.ai, %i.af                    ; 3 uses
  %i.ak = tail call i64 @llvm.fshl.i64(i64 %i.ae, i64 %i.ae, i64 32)
  %i.al = add i64 %i.ah, %i.af                    ; 3 uses
  %i.am = add i64 %i.aj, %i.ak                    ; 2 uses
  %i.an = tail call i64 @llvm.fshl.i64(i64 %i.ah, i64 %i.ah, i64 17)
  %i.ao = xor i64 %i.al, %i.an                    ; 3 uses
  %i.ap = tail call i64 @llvm.fshl.i64(i64 %i.aj, i64 %i.aj, i64 21)
  %i.aq = xor i64 %i.ap, %i.am                    ; 3 uses
  %i.ar = tail call i64 @llvm.fshl.i64(i64 %i.al, i64 %i.al, i64 32)
  %i.as = add i64 %i.ao, %i.am                    ; 3 uses
  %i.at = add i64 %i.aq, %i.ar                    ; 2 uses
  %i.au = tail call i64 @llvm.fshl.i64(i64 %i.ao, i64 %i.ao, i64 13)
  %i.av = xor i64 %i.au, %i.as                    ; 3 uses
  %i.aw = tail call i64 @llvm.fshl.i64(i64 %i.aq, i64 %i.aq, i64 16)
  %i.ax = xor i64 %i.aw, %i.at                    ; 3 uses
  %i.ay = tail call i64 @llvm.fshl.i64(i64 %i.as, i64 %i.as, i64 32)
  %i.az = add i64 %i.av, %i.at                    ; 3 uses
  %i.ba = add i64 %i.ax, %i.ay                    ; 2 uses
  %i.bb = tail call i64 @llvm.fshl.i64(i64 %i.av, i64 %i.av, i64 17)
  %i.bc = xor i64 %i.bb, %i.az                    ; 3 uses
  %i.bd = tail call i64 @llvm.fshl.i64(i64 %i.ax, i64 %i.ax, i64 21)
  %i.be = xor i64 %i.bd, %i.ba                    ; 3 uses
  %i.bf = tail call i64 @llvm.fshl.i64(i64 %i.az, i64 %i.az, i64 32)
  %i.bg = add i64 %i.bc, %i.ba
  %i.bh = add i64 %i.be, %i.bf                    ; 2 uses
  %i.bi = tail call i64 @llvm.fshl.i64(i64 %i.bc, i64 %i.bc, i64 13)
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

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_ZN4core4iter8adapters7flatten17and_then_or_clear17h5b51a8096d301cfbE(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.5.i.i.i = alloca [16 x i8], align 8      ; 5 uses
  %.sroa.7 = alloca [16 x i8], align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  %i.e = load ptr, ptr %1, align 8, !noundef !27  ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9525)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9528)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9531)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9534)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.i)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !9536, !noalias !9539, !nonnull !27, !noundef !27
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.49.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.413.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.6.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.7.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %.sroa.5.0..sroa_idx8.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  br label %bb.c

bb.c:                                             ; preds = %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17h8cbac3bbdecad510E.exit.i.i.i", %bb.b
  %i.n = phi ptr [ %i.p, %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17h8cbac3bbdecad510E.exit.i.i.i" ], [ %i.e, %bb.b ] ; 4 uses
  %i.o = icmp eq ptr %i.n, %i.h
  br i1 %i.o, label %bb.q, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  store ptr %i.p, ptr %1, align 8, !alias.scope !9536, !noalias !9539
  %.val4.i.i.i = load ptr, ptr %i.n, align 8, !noalias !9543, !nonnull !27, !align !301, !noundef !27 ; 2 uses
  %i.q = getelementptr i8, ptr %i.n, i64 8
  %.val5.i.i.i = load i64, ptr %i.q, align 8, !noalias !9543, !noundef !27 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9544)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !9547
  %i.r = load ptr, ptr %i.f, align 8, !alias.scope !9550, !noalias !9551, !nonnull !27, !align !319, !noundef !27 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9553)
  %i.s = call fastcc { i64, i64 } @"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$12get_index_of17hb959e6ee67c7adb7E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.r, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val4.i.i.i, i64 noundef %.val5.i.i.i), !noalias !9556 ; 2 uses
  %i.t = extractvalue { i64, i64 } %i.s, 0
  %i.u = extractvalue { i64, i64 } %i.s, 1        ; 3 uses
  %i.v = trunc nuw i64 %i.t to i1
  br i1 %i.v, label %bb.e, label %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17h8cbac3bbdecad510E.exit.i.i.i"

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !9553, !noalias !9557, !noundef !27 ; 2 uses
  %i.y = icmp ult i64 %i.u, %i.x
  br i1 %i.y, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.u, i64 noundef %i.x, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @495) #38, !noalias !9559
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !9553, !noalias !9557, !nonnull !27, !noundef !27
  %i.ab = getelementptr inbounds nuw [104 x i8], ptr %i.aa, i64 %i.u
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.i, align 8, !alias.scope !9550, !noalias !9551, !nonnull !27, !align !301, !noundef !27
  %i.ae = load i64, ptr %i.j, align 8, !alias.scope !9550, !noalias !9551, !noundef !27
  %i.af = call noundef align 8 dereferenceable_or_null(72) ptr @"_ZN55_$LT$str$u20$as$u20$serde_json..value..index..Index$GT$10index_into17hc4d599c23b3f23caE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ad, i64 noundef %i.ae, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.ac), !noalias !9556 ; 4 uses
  %.not16.i.i.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not16.i.i.i.i.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ag = load i64, ptr %i.af, align 8, !range !4006, !noalias !9556, !noundef !27
  %i.ah = icmp eq i64 %i.ag, -9223372036854775805
  br i1 %i.ah, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !noalias !9556, !nonnull !27, !noundef !27
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.al = load i64, ptr %i.ak, align 8, !noalias !9556, !noundef !27
  %i.am = call fastcc { ptr, i64 } @"_ZN4core3str21_$LT$impl$u20$str$GT$12trim_matches17h6197f76d203b4248E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.aj, i64 noundef %i.al), !noalias !9556
  %i.an = extractvalue { ptr, i64 } %i.am, 1
  %.not17.i.i.i.i.i = icmp eq i64 %i.an, 0
  br i1 %.not17.i.i.i.i.i, label %bb.j, label %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17h8cbac3bbdecad510E.exit.i.i.i"
end_hunk_4
begin_hunk_5_@"_ZN6utoipa7openapi6schema1_87_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$utoipa..openapi..schema..Array$GT$9serialize17h41ee7fdc2c6cb045E":bb.a
  %i.co = landingpad { ptr, i32 }
          cleanup
  br label %.body18.i

.body18.i:                                        ; preds = %bb.ar, %bb.ap
  %eh.lpad-body19.i = phi { ptr, i32 } [ %i.co, %bb.ar ], [ %i.ci, %bb.ap ]
  invoke fastcc void @"_ZN4core3ptr57drop_in_place$LT$serde_json..value..ser..SerializeVec$GT$17hc788f4b1bc9ad7dfE"(ptr noalias noundef align 8 dereferenceable(24) %i.c) #33
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1f5de302d11ecf9aE.exit.i" unwind label %bb.az, !noalias !10853, !inline_history !10854

bb.as:                                            ; preds = %"_ZN10serde_core3ser5impls62_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$$RF$T$GT$9serialize17h44dad2ddaefce974E.exit.i.i"
  %i.cp = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.cq = load ptr, ptr %i.cp, align 8, !noalias !10846, !nonnull !27, !align !319, !noundef !27 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10876)
  call void @llvm.experimental.noalias.scope.decl(metadata !10879)
  %i.cr = load ptr, ptr %i.bs, align 8, !alias.scope !10882, !noalias !10853, !nonnull !27, !noundef !27 ; 4 uses
  %i.cs = load i64, ptr %i.br, align 8, !alias.scope !10882, !noalias !10853, !noundef !27 ; 4 uses
  %i.ct = icmp eq i64 %i.cs, 0
  br i1 %i.ct, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h51d0e6041a278730E.exit.i.i.i.i", label %.lr.ph

bb.at:                                            ; preds = %.lr.ph
  %i.cu = icmp eq i64 %i.cw, %i.cs
  br i1 %i.cu, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h51d0e6041a278730E.exit.i.i.i.i", label %.lr.ph

.lr.ph:                                           ; preds = %bb.as, %bb.at
  %.sroa.0.0.i.i.i.i242 = phi i64 [ %i.cw, %bb.at ], [ 0, %bb.as ] ; 2 uses
  %i.cv = getelementptr inbounds nuw [72 x i8], ptr %i.cr, i64 %.sroa.0.0.i.i.i.i242
  %i.cw = add i64 %.sroa.0.0.i.i.i.i242, 1        ; 4 uses
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17h50592c2d2064937aE"(ptr noalias noundef readonly align 8 dereferenceable(72) %i.cv) #35
          to label %bb.at unwind label %bb.av, !noalias !10885, !inline_history !10886

bb.au:                                            ; preds = %.lr.ph244
  %i.cx = add i64 %.sroa.0.1.i.i.i.i243, 1        ; 2 uses
  %i.cy = icmp eq i64 %i.cx, %i.cs
  br i1 %i.cy, label %.body.i.i.i, label %.lr.ph244

bb.av:                                            ; preds = %.lr.ph
  %i.cz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.da = icmp eq i64 %i.cw, %i.cs
  br i1 %i.da, label %.body.i.i.i, label %.lr.ph244

.lr.ph244:                                        ; preds = %bb.av, %bb.au
  %.sroa.0.1.i.i.i.i243 = phi i64 [ %i.cx, %bb.au ], [ %i.cw, %bb.av ] ; 2 uses
  %i.db = getelementptr inbounds nuw [72 x i8], ptr %i.cr, i64 %.sroa.0.1.i.i.i.i243
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17h50592c2d2064937aE"(ptr noalias noundef readonly align 8 dereferenceable(72) %i.db) #36
          to label %bb.au unwind label %bb.aw, !noalias !10885, !inline_history !10886

bb.aw:                                            ; preds = %.lr.ph244
  %i.dc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #34, !noalias !10887, !inline_history !10886
  unreachable

.body.i.i.i:                                      ; preds = %bb.au, %bb.av
  %.val2.i.i.i.i = load i64, ptr %i.c, align 8, !range !28, !alias.scope !10890, !noalias !10853, !noundef !27 ; 2 uses
  %i.dd = icmp eq i64 %.val2.i.i.i.i, 0
  br i1 %i.dd, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1f5de302d11ecf9aE.exit.i", label %bb.ax

bb.ax:                                            ; preds = %.body.i.i.i
  %i.de = mul nuw i64 %.val2.i.i.i.i, 72
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cr, i64 noundef %i.de, i64 noundef range(i64 1, -9223372036854775807) 8) #37, !noalias !10885, !inline_history !10891
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1f5de302d11ecf9aE.exit.i"

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h51d0e6041a278730E.exit.i.i.i.i": ; preds = %bb.at, %bb.as
  %.val.i.i.i.i = load i64, ptr %i.c, align 8, !range !28, !alias.scope !10890, !noalias !10853, !noundef !27 ; 2 uses
  %i.df = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.df, label %_ZN10serde_core3ser12SerializeMap15serialize_entry17he464f577869b0532E.exit, label %bb.ay

bb.ay:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h51d0e6041a278730E.exit.i.i.i.i"
  %i.dg = mul nuw i64 %.val.i.i.i.i, 72
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cr, i64 noundef %i.dg, i64 noundef range(i64 1, -9223372036854775807) 8) #37, !noalias !10885, !inline_history !10891
  br label %_ZN10serde_core3ser12SerializeMap15serialize_entry17he464f577869b0532E.exit

bb.az:                                            ; preds = %.body18.i
  %i.dh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #34, !noalias !10853, !inline_history !10854
  unreachable

bb.ba:                                            ; preds = %bb.ae
  %i.di = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1f5de302d11ecf9aE.exit.i"

._crit_edge.i:                                    ; preds = %.noexc.i.i
  %.sroa.024.0.copyload.i = load ptr, ptr %i.c, align 8, !noalias !10853
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.12.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i, i64 16, i1 false), !noalias !10846
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !10853
  store i64 -9223372036854775804, ptr %i.e, align 8, !noalias !10846
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %.sroa.024.0.copyload.i, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !10846
  invoke fastcc void @"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$11insert_full17h6ca4489e61159290E"(ptr noalias noundef align 8 captures(address) dereferenceable(80) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(96) %i.m, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.f, ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.e)
          to label %.noexc212 unwind label %.body.thread175, !inline_history !10845

.noexc212:                                        ; preds = %._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !10846
  %i.dj = load i64, ptr %i.bh, align 8, !range !321, !noalias !10846, !noundef !27
  %i.dk = icmp eq i64 %i.dj, -9223372036854775803
  br i1 %i.dk, label %_ZN10serde_core3ser12SerializeMap15serialize_entry17he464f577869b0532E.exit.thread, label %bb.bb

bb.bb:                                            ; preds = %.noexc212
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17h50592c2d2064937aE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(72) %i.bh)
          to label %_ZN10serde_core3ser12SerializeMap15serialize_entry17he464f577869b0532E.exit.thread unwind label %.body.thread175, !inline_history !10845

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1f5de302d11ecf9aE.exit.i": ; preds = %bb.ba, %bb.ax, %.body.i.i.i, %.body18.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.di, %bb.ba ], [ %i.cz, %.body.i.i.i ], [ %i.cz, %bb.ax ], [ %eh.lpad-body19.i, %.body18.i ]
  %.val10.i209 = load ptr, ptr %.sroa.5.0..sroa_idx.i208, align 8, !noalias !10846, !nonnull !27, !noundef !27
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val10.i209, i64 noundef 11, i64 noundef range(i64 1, -9223372036854775807) 1) #37, !noalias !10846, !inline_history !10845
  br label %.body.thread175.body

bb.bc:                                            ; preds = %_ZN10serde_core3ser12SerializeMap15serialize_entry17he464f577869b0532E.exit.thread, %bb.y
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 2 uses
  %i.dm = load i64, ptr %i.dl, align 8, !range !318, !noundef !27
  %.not84 = icmp eq i64 %i.dm, -9223372036854775808
  br i1 %.not84, label %bb.be, label %bb.bd

_ZN10serde_core3ser12SerializeMap15serialize_entry17he464f577869b0532E.exit.thread: ; preds = %.noexc212, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.bc

_ZN10serde_core3ser12SerializeMap15serialize_entry17he464f577869b0532E.exit: ; preds = %bb.af, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h51d0e6041a278730E.exit.i.i.i.i", %bb.ay
  %.sroa.8.0.i = phi ptr [ %i.bq, %bb.af ], [ %i.cq, %bb.ay ], [ %i.cq, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h51d0e6041a278730E.exit.i.i.i.i" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !10853
  %.val8.i210 = load ptr, ptr %.sroa.5.0..sroa_idx.i208, align 8, !noalias !10846, !nonnull !27, !noundef !27
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8.i210, i64 noundef 11, i64 noundef range(i64 1, -9223372036854775807) 1) #37, !noalias !10846, !inline_history !10845
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !10846
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.q

bb.bd:                                            ; preds = %bb.bc
  %i.dn = invoke fastcc noundef align 8 ptr @_ZN10serde_core3ser12SerializeMap15serialize_entry17h1f76c4e2f91a7378E(ptr noalias noundef align 8 dereferenceable(96) %i.m, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @165, i64 noundef 11, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dl)
          to label %bb.bf unwind label %.body.thread175 ; 2 uses

bb.be:                                            ; preds = %bb.bf, %bb.bc
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 481
  %i.dp = load i8, ptr %i.do, align 1, !range !1369, !noundef !27 ; 2 uses
  %.not87 = icmp eq i8 %i.dp, 2
  br i1 %.not87, label %bb.bh, label %bb.bg

bb.bf:                                            ; preds = %bb.bd
  %.not85 = icmp eq ptr %i.dn, null
  br i1 %.not85, label %bb.be, label %bb.q

bb.bg:                                            ; preds = %bb.be
  %i.dq = invoke fastcc noundef align 8 ptr @_ZN10serde_core3ser12SerializeMap15serialize_entry17haf97605ed7d14815E(ptr noalias noundef align 8 dereferenceable(96) %i.m, i8 %i.dp)
          to label %bb.bi unwind label %.body.thread175 ; 2 uses

bb.bh:                                            ; preds = %bb.bi, %bb.be
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 280 ; 2 uses
  %i.ds = load i64, ptr %i.dr, align 8, !range !321, !noundef !27
  %.not90 = icmp eq i64 %i.ds, -9223372036854775803
  br i1 %.not90, label %bb.bk, label %bb.bj

bb.bi:                                            ; preds = %bb.bg
  %.not88 = icmp eq ptr %i.dq, null
  br i1 %.not88, label %bb.bh, label %bb.q

bb.bj:                                            ; preds = %bb.bh
  %i.dt = invoke fastcc noundef align 8 ptr @_ZN10serde_core3ser12SerializeMap15serialize_entry17hf0cc705ad414f837E(ptr noalias noundef align 8 dereferenceable(96) %i.m, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @136, i64 noundef 7, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.dr)
          to label %bb.bl unwind label %.body.thread175 ; 2 uses

bb.bk:                                            ; preds = %bb.bl, %bb.bh
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.dv = load i64, ptr %i.du, align 8, !noundef !27 ; 2 uses
  %i.dw = icmp ult i64 %i.dv, 128102389400760776
  call void @llvm.assume(i1 %i.dw)
  %i.dx = icmp eq i64 %i.dv, 0
  br i1 %i.dx, label %bb.bn, label %bb.bm

bb.bl:                                            ; preds = %bb.bj
  %.not91 = icmp eq ptr %i.dt, null
  br i1 %.not91, label %bb.bk, label %bb.q

bb.bm:                                            ; preds = %bb.bk
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.dz = invoke fastcc noundef align 8 ptr @_ZN10serde_core3ser12SerializeMap15serialize_entry17h125ddcdd7ce6982bE(ptr noalias noundef align 8 dereferenceable(96) %i.m, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dy)
          to label %bb.bo unwind label %.body.thread175 ; 2 uses

bb.bn:                                            ; preds = %bb.bo, %bb.bk
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 352 ; 2 uses
  %i.eb = load i64, ptr %i.ea, align 8, !range !321, !noundef !27
  %.not95 = icmp eq i64 %i.eb, -9223372036854775803
  br i1 %.not95, label %bb.bq, label %bb.bp

bb.bo:                                            ; preds = %bb.bm
  %.not93 = icmp eq ptr %i.dz, null
  br i1 %.not93, label %bb.bn, label %bb.q

bb.bp:                                            ; preds = %bb.bn
  %i.ec = invoke fastcc noundef align 8 ptr @_ZN10serde_core3ser12SerializeMap15serialize_entry17hf0cc705ad414f837E(ptr noalias noundef align 8 dereferenceable(96) %i.m, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @389, i64 noundef 7, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.ea)
          to label %bb.br unwind label %.body.thread175 ; 2 uses

bb.bq:                                            ; preds = %bb.br, %bb.bn
  %i.ed = load i64, ptr %1, align 8, !range !3481, !noundef !27
  %.not98 = icmp eq i64 %i.ed, 0
  br i1 %.not98, label %bb.bt, label %bb.bs

bb.br:                                            ; preds = %bb.bp
  %.not96 = icmp eq ptr %i.ec, null
  br i1 %.not96, label %bb.bq, label %bb.q

bb.bs:                                            ; preds = %bb.bq
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val140 = load i64, ptr %i.ee, align 8
  %i.ef = invoke fastcc noundef align 8 ptr @_ZN10serde_core3ser12SerializeMap15serialize_entry17h9bbaac793b7b6814E(ptr noalias noundef align 8 dereferenceable(96) %i.m, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @393, i64 noundef 8, i64 1, i64 %.val140)
          to label %bb.bu unwind label %.body.thread175 ; 2 uses

bb.bt:                                            ; preds = %bb.bu, %bb.bq
  %i.eg = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.eh = load i64, ptr %i.eg, align 8, !range !3481, !noundef !27
  %.not101 = icmp eq i64 %i.eh, 0
  br i1 %.not101, label %bb.bw, label %bb.bv

bb.bu:                                            ; preds = %bb.bs
  %.not99 = icmp eq ptr %i.ef, null
  br i1 %.not99, label %bb.bt, label %bb.q

bb.bv:                                            ; preds = %bb.bt
  %i.ei = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val138 = load i64, ptr %i.ei, align 8
  %i.ej = invoke fastcc noundef align 8 ptr @_ZN10serde_core3ser12SerializeMap15serialize_entry17h9bbaac793b7b6814E(ptr noalias noundef align 8 dereferenceable(96) %i.m, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @394, i64 noundef 8, i64 1, i64 %.val138)
          to label %bb.bx unwind label %.body.thread175 ; 2 uses

bb.bw:                                            ; preds = %bb.bx, %bb.bt
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 480
  %i.el = load i8, ptr %i.ek, align 8, !range !302, !noundef !27
  %i.em = trunc nuw i8 %i.el to i1
  br i1 %i.em, label %bb.by, label %bb.bz

bb.bx:                                            ; preds = %bb.bv
  %.not102.a = icmp eq ptr %i.ej, null
  br i1 %.not102.a, label %bb.bw, label %bb.q

bb.by:                                            ; preds = %bb.bw
  %i.en = invoke fastcc noundef align 8 ptr @_ZN10serde_core3ser12SerializeMap15serialize_entry17hb58f597cd7881849E(ptr noalias noundef align 8 dereferenceable(96) %i.m, i8 1)
          to label %bb.ca unwind label %.body.thread175 ; 2 uses

bb.bz:                                            ; preds = %bb.ca, %bb.bw
  %i.eo = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 2 uses
  %i.ep = load i64, ptr %i.eo, align 8, !range !1351, !noundef !27
  %.not106 = icmp eq i64 %i.ep, -9223372036854775806
  br i1 %.not106, label %bb.cc, label %bb.cb

bb.ca:                                            ; preds = %bb.by
  %.not104 = icmp eq ptr %i.en, null
  br i1 %.not104, label %bb.bz, label %bb.q

bb.cb:                                            ; preds = %bb.bz
  %i.eq = invoke fastcc noundef align 8 ptr @_ZN10serde_core3ser12SerializeMap15serialize_entry17h366dd41838737c2cE(ptr noalias noundef align 8 dereferenceable(96) %i.m, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.eo)
          to label %bb.cd unwind label %.body.thread175 ; 2 uses

bb.cc:                                            ; preds = %bb.cd, %bb.bz
  %i.er = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.es = load i64, ptr %i.er, align 8, !noundef !27 ; 3 uses
  %i.et = icmp sgt i64 %i.es, -1
  call void @llvm.assume(i1 %i.et)
  %i.eu = icmp eq i64 %i.es, 0
  br i1 %i.eu, label %bb.cf, label %bb.ce

bb.cd:                                            ; preds = %bb.cb
  %.not107.a = icmp eq ptr %i.eq, null
  br i1 %.not107.a, label %bb.cc, label %bb.q

bb.ce:                                            ; preds = %bb.cc
  %i.ev = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.val132 = load ptr, ptr %i.ev, align 8
  %i.ew = invoke fastcc noundef align 8 ptr @_ZN10serde_core3ser12SerializeMap15serialize_entry17hb9860c9e91dea0ddE(ptr noalias noundef align 8 dereferenceable(96) %i.m, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @397, i64 noundef 15, ptr %.val132, i64 %i.es)
          to label %bb.cg unwind label %.body.thread175 ; 2 uses

bb.cf:                                            ; preds = %bb.cg, %bb.cc
  %i.ex = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.ey = load i64, ptr %i.ex, align 8, !noundef !27 ; 3 uses
  %i.ez = icmp sgt i64 %i.ey, -1
  call void @llvm.assume(i1 %i.ez)
  %i.fa = icmp eq i64 %i.ey, 0
  br i1 %i.fa, label %bb.ci, label %bb.ch

bb.cg:                                            ; preds = %bb.ce
  %.not109.a = icmp eq ptr %i.ew, null
  br i1 %.not109.a, label %bb.cf, label %bb.q

bb.ch:                                            ; preds = %bb.cf
  %i.fb = getelementptr inbounds nuw i8, ptr %1, i64 112
  %.val = load ptr, ptr %i.fb, align 8
  %i.fc = invoke fastcc noundef align 8 ptr @_ZN10serde_core3ser12SerializeMap15serialize_entry17hb9860c9e91dea0ddE(ptr noalias noundef align 8 dereferenceable(96) %i.m, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @398, i64 noundef 16, ptr %.val, i64 %i.ey)
          to label %bb.cj unwind label %.body.thread175 ; 2 uses

bb.ci:                                            ; preds = %bb.cj, %bb.cf
  %i.fd = getelementptr inbounds nuw i8, ptr %1, i64 432
  %i.fe = load ptr, ptr %i.fd, align 8, !noundef !27 ; 2 uses
  %.not113 = icmp eq ptr %i.fe, null
  br i1 %.not113, label %bb.cl, label %bb.ck

bb.cj:                                            ; preds = %bb.ch
  %.not111 = icmp eq ptr %i.fc, null
  br i1 %.not111, label %bb.ci, label %bb.q

bb.ck:                                            ; preds = %bb.ci
  %i.ff = getelementptr inbounds nuw i8, ptr %1, i64 456
  %.val135 = load i64, ptr %i.ff, align 8, !alias.scope !10744, !noalias !10745, !noundef !27
  %i.fg = invoke fastcc noundef align 8 ptr @"_ZN6utoipa7openapi10extensions1_96_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$utoipa..openapi..extensions..Extensions$GT$9serialize17h9cdf9682d209f863E"(ptr nonnull %i.fe, i64 %.val135, ptr noalias noundef align 8 dereferenceable(96) %i.m)
          to label %bb.cm unwind label %.body.thread175 ; 2 uses

bb.cl:                                            ; preds = %bb.cm, %bb.ci
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.k, ptr noundef nonnull align 8 dereferenceable(96) %i.m, i64 96, i1 false)
  call void @"_ZN86_$LT$serde_json..value..ser..SerializeMap$u20$as$u20$serde_core..ser..SerializeMap$GT$3end17h6c83369807a7ac6cE"(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(96) %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %"_ZN4core3ptr57drop_in_place$LT$serde_json..value..ser..SerializeMap$GT$17hd33f461d90fda394E.exit"

bb.cm:                                            ; preds = %bb.ck
  %.not114 = icmp eq ptr %i.fg, null
  br i1 %.not114, label %bb.cl, label %bb.q

"_ZN4core3ptr57drop_in_place$LT$serde_json..value..ser..SerializeMap$GT$17hd33f461d90fda394E.exit": ; preds = %bb.b, %bb.s, %bb.t, %"_ZN4core3ptr97drop_in_place$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17he72da75895b7be74E.exit.i", %bb.w, %bb.cl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  ret void

.body.thread175.body:                             ; preds = %.body.thread175, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1f5de302d11ecf9aE.exit.i", %.body.thread
  %eh.lpad-body174 = phi { ptr, i32 } [ %i.ak, %.body.thread ], [ %lpad.thr_comm, %.body.thread175 ], [ %eh.lpad-body.i, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1f5de302d11ecf9aE.exit.i" ]
  invoke fastcc void @"_ZN4core3ptr57drop_in_place$LT$serde_json..value..ser..SerializeMap$GT$17hd33f461d90fda394E"(ptr noalias noundef align 8 dereferenceable(96) %i.m) #33
          to label %common.resume unwind label %bb.cn

bb.cn:                                            ; preds = %.body.thread175.body
  %i.fh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #34
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN6utoipa7openapi6schema1_87_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$utoipa..openapi..schema..OneOf$GT$9serialize17h5dff63c9e91f1c46E"(ptr dead_on_unwind noalias noundef nonnull writable align 8 captures(address) dereferenceable(72) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(408) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 4 uses
  %i.b = alloca [96 x i8], align 8                ; 7 uses
  %i.c = alloca [96 x i8], align 8                ; 21 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @"_ZN82_$LT$serde_json..value..ser..Serializer$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_map17h38fa74e76d6ab555E"(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.b, i64 noundef 0, i64 undef)
  %i.d = load i64, ptr %i.b, align 8, !range !490, !noundef !27 ; 3 uses
  %i.e = icmp eq i64 %i.d, -9223372036854775807
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.g, ptr %i.h, align 8
  store i64 -9223372036854775803, ptr %0, align 8
  br label %"_ZN4core3ptr57drop_in_place$LT$serde_json..value..ser..SerializeMap$GT$17hd33f461d90fda394E.exit"

bb.c:                                             ; preds = %bb.a
  %.sroa.640.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.640.0..sroa_idx, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 %i.d, ptr %i.c, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  store ptr %i.g, ptr %.sroa.4.0..sroa_idx, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !10892)
  %i.i = icmp eq i64 %i.d, -9223372036854775808
  br i1 %i.i, label %bb.d, label %bb.e, !prof !29

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @223, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @487) #38
          to label %.noexc71.a unwind label %bb.ap

.noexc71.a:                                       ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.c
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #37, !noalias !10895
  %i.j = call noundef dereferenceable_or_null(5) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 5, i64 noundef range(i64 1, 9) 1) #37, !noalias !10895 ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 5, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @493) #38
          to label %.noexc72 unwind label %bb.ap

.noexc72:                                         ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.j, ptr noundef nonnull readonly align 1 dereferenceable(5) @166, i64 5, i1 false), !noalias !10910
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 72 ; 4 uses
  %.val.i68 = load i64, ptr %i.l, align 8, !range !318, !alias.scope !10892, !noalias !10911, !noundef !27 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 80 ; 4 uses
  %switch.i69 = icmp sgt i64 %.val.i68, 0
  br i1 %switch.i69, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %.val2.i70 = load ptr, ptr %i.m, align 8, !alias.scope !10892, !noalias !10911, !nonnull !27, !noundef !27
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i70, i64 noundef %.val.i68, i64 noundef range(i64 1, -9223372036854775807) 1) #37, !noalias !10912
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  store i64 5, ptr %i.l, align 8, !alias.scope !10892, !noalias !10911
  store ptr %i.j, ptr %i.m, align 8, !alias.scope !10892, !noalias !10911
  %.sroa.7.0..sroa_idx9.i = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  store i64 5, ptr %.sroa.7.0..sroa_idx9.i, align 8, !alias.scope !10892, !noalias !10911
  %i.n = invoke fastcc noundef align 8 ptr @"_ZN86_$LT$serde_json..value..ser..SerializeMap$u20$as$u20$serde_core..ser..SerializeMap$GT$15serialize_value17h67f9d2ea5f6c2dbeE"(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %_ZN10serde_core3ser12SerializeMap15serialize_entry17h2cae2eafd4430297E.exit unwind label %bb.ap, !inline_history !10737 ; 2 uses

_ZN10serde_core3ser12SerializeMap15serialize_entry17h2cae2eafd4430297E.exit: ; preds = %bb.i
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %bb.j, label %bb.q

bb.j:                                             ; preds = %_ZN10serde_core3ser12SerializeMap15serialize_entry17h2cae2eafd4430297E.exit
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !range !1351, !noundef !27 ; 2 uses
end_hunk_5
begin_hunk_6_@"_ZN6utoipa7openapi6schema1_88_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$utoipa..openapi..schema..Object$GT$9serialize17hdb2e8411a15702d5E":bb.a

bb.cz:                                            ; preds = %_ZN10serde_core3ser12SerializeMap15serialize_entry17h81525946a052bc69E.exit.thread492, %_ZN10serde_core3ser12SerializeMap15serialize_entry17h81525946a052bc69E.exit, %bb.bw
  %i.gx = getelementptr inbounds nuw i8, ptr %1, i64 680 ; 2 uses
  %i.gy = load ptr, ptr %i.gx, align 8, !align !319, !noundef !27
  %.not148 = icmp eq ptr %i.gy, null
  br i1 %.not148, label %bb.db, label %bb.da

_ZN10serde_core3ser12SerializeMap15serialize_entry17h81525946a052bc69E.exit.thread492: ; preds = %.noexc490, %bb.cy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.cz

_ZN10serde_core3ser12SerializeMap15serialize_entry17h81525946a052bc69E.exit: ; preds = %_ZN10serde_json5value8to_value17h0d71a13b5441aac3E.exit.i
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.pre56.i = load ptr, ptr %.phi.trans.insert.i, align 8, !noalias !11423 ; 2 uses
  %.val8.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !11423, !nonnull !27, !noundef !27
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8.i, i64 noundef 10, i64 noundef range(i64 1, -9223372036854775807) 1) #37, !noalias !11423, !inline_history !11422
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !11423
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %.not146 = icmp eq ptr %.pre56.i, null
  br i1 %.not146, label %bb.cz, label %_ZN10serde_core3ser12SerializeMap15serialize_entry17h81525946a052bc69E.exit.thread

bb.da:                                            ; preds = %bb.cz
  %i.gz = invoke fastcc noundef align 8 ptr @_ZN10serde_core3ser12SerializeMap15serialize_entry17hbba275cb5eb1aea3E(ptr noalias noundef align 8 dereferenceable(96) %i.s, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.gx)
          to label %bb.dc unwind label %.body.thread309 ; 2 uses

bb.db:                                            ; preds = %bb.dc, %bb.cz
  %i.ha = getelementptr inbounds nuw i8, ptr %1, i64 688 ; 2 uses
  %i.hb = load ptr, ptr %i.ha, align 8, !align !319, !noundef !27
  %.not151 = icmp eq ptr %i.hb, null
  br i1 %.not151, label %bb.de, label %bb.dd

bb.dc:                                            ; preds = %bb.da
  %.not149 = icmp eq ptr %i.gz, null
  br i1 %.not149, label %bb.db, label %_ZN10serde_core3ser12SerializeMap15serialize_entry17h81525946a052bc69E.exit.thread

bb.dd:                                            ; preds = %bb.db
  %i.hc = invoke fastcc noundef align 8 ptr @_ZN10serde_core3ser12SerializeMap15serialize_entry17ha04daa48871c173aE(ptr noalias noundef align 8 dereferenceable(96) %i.s, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ha)
          to label %bb.df unwind label %.body.thread309 ; 2 uses

bb.de:                                            ; preds = %bb.df, %bb.db
  %i.hd = getelementptr inbounds nuw i8, ptr %1, i64 744
  %i.he = load i8, ptr %i.hd, align 8, !range !1369, !noundef !27 ; 2 uses
  %.not154 = icmp eq i8 %i.he, 2
  br i1 %.not154, label %bb.dh, label %bb.dg

bb.df:                                            ; preds = %bb.dd
  %.not152 = icmp eq ptr %i.hc, null
  br i1 %.not152, label %bb.de, label %_ZN10serde_core3ser12SerializeMap15serialize_entry17h81525946a052bc69E.exit.thread

bb.dg:                                            ; preds = %bb.de
  %i.hf = invoke fastcc noundef align 8 ptr @_ZN10serde_core3ser12SerializeMap15serialize_entry17haf97605ed7d14815E(ptr noalias noundef align 8 dereferenceable(96) %i.s, i8 %i.he)
          to label %bb.di unwind label %.body.thread309 ; 2 uses

bb.dh:                                            ; preds = %bb.di, %bb.de
  %i.hg = getelementptr inbounds nuw i8, ptr %1, i64 608 ; 2 uses
  %i.hh = load i64, ptr %i.hg, align 8, !range !321, !noundef !27
  %.not157 = icmp eq i64 %i.hh, -9223372036854775803
  br i1 %.not157, label %bb.dk, label %bb.dj

bb.di:                                            ; preds = %bb.dg
  %.not155 = icmp eq ptr %i.hf, null
  br i1 %.not155, label %bb.dh, label %_ZN10serde_core3ser12SerializeMap15serialize_entry17h81525946a052bc69E.exit.thread

bb.dj:                                            ; preds = %bb.dh
  %i.hi = invoke fastcc noundef align 8 ptr @_ZN10serde_core3ser12SerializeMap15serialize_entry17hf0cc705ad414f837E(ptr noalias noundef align 8 dereferenceable(96) %i.s, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @136, i64 noundef 7, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.hg)
          to label %bb.dl unwind label %.body.thread309 ; 2 uses

bb.dk:                                            ; preds = %bb.dl, %bb.dh
  %i.hj = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.hk = load i64, ptr %i.hj, align 8, !noundef !27 ; 2 uses
  %i.hl = icmp ult i64 %i.hk, 128102389400760776
  call void @llvm.assume(i1 %i.hl)
  %i.hm = icmp eq i64 %i.hk, 0
  br i1 %i.hm, label %bb.dn, label %bb.dm

bb.dl:                                            ; preds = %bb.dj
  %.not158 = icmp eq ptr %i.hi, null
  br i1 %.not158, label %bb.dk, label %_ZN10serde_core3ser12SerializeMap15serialize_entry17h81525946a052bc69E.exit.thread

bb.dm:                                            ; preds = %bb.dk
  %i.hn = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.ho = invoke fastcc noundef align 8 ptr @_ZN10serde_core3ser12SerializeMap15serialize_entry17h125ddcdd7ce6982bE(ptr noalias noundef align 8 dereferenceable(96) %i.s, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.hn)
          to label %bb.do unwind label %.body.thread309 ; 2 uses

bb.dn:                                            ; preds = %bb.do, %bb.dk
  %i.hp = getelementptr inbounds nuw i8, ptr %1, i64 745
  %i.hq = load i8, ptr %i.hp, align 1, !range !1369, !noundef !27 ; 2 uses
  %.not162 = icmp eq i8 %i.hq, 2
  br i1 %.not162, label %bb.dq, label %bb.dp

bb.do:                                            ; preds = %bb.dm
  %.not160 = icmp eq ptr %i.ho, null
  br i1 %.not160, label %bb.dn, label %_ZN10serde_core3ser12SerializeMap15serialize_entry17h81525946a052bc69E.exit.thread

bb.dp:                                            ; preds = %bb.dn
  %i.hr = invoke fastcc noundef align 8 ptr @_ZN10serde_core3ser12SerializeMap15serialize_entry17hfdc9304e29692eb1E(ptr noalias noundef align 8 dereferenceable(96) %i.s, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @403, i64 noundef 9, i8 %i.hq)
          to label %bb.dr unwind label %.body.thread309 ; 2 uses

bb.dq:                                            ; preds = %bb.dr, %bb.dn
  %i.hs = getelementptr inbounds nuw i8, ptr %1, i64 746
  %i.ht = load i8, ptr %i.hs, align 2, !range !1369, !noundef !27 ; 2 uses
  %.not165 = icmp eq i8 %i.ht, 2
  br i1 %.not165, label %bb.dt, label %bb.ds

bb.dr:                                            ; preds = %bb.dp
  %.not163 = icmp eq ptr %i.hr, null
  br i1 %.not163, label %bb.dq, label %_ZN10serde_core3ser12SerializeMap15serialize_entry17h81525946a052bc69E.exit.thread

bb.ds:                                            ; preds = %bb.dq
  %i.hu = invoke fastcc noundef align 8 ptr @_ZN10serde_core3ser12SerializeMap15serialize_entry17hfdc9304e29692eb1E(ptr noalias noundef align 8 dereferenceable(96) %i.s, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @404, i64 noundef 8, i8 %i.ht)
          to label %bb.du unwind label %.body.thread309 ; 2 uses

bb.dt:                                            ; preds = %bb.du, %bb.dq
  %i.hv = getelementptr inbounds nuw i8, ptr %1, i64 456 ; 2 uses
  %i.hw = load i64, ptr %i.hv, align 8, !range !1351, !noundef !27
  %.not168 = icmp eq i64 %i.hw, -9223372036854775806
  br i1 %.not168, label %bb.dw, label %bb.dv

bb.du:                                            ; preds = %bb.ds
  %.not166 = icmp eq ptr %i.hu, null
  br i1 %.not166, label %bb.dt, label %_ZN10serde_core3ser12SerializeMap15serialize_entry17h81525946a052bc69E.exit.thread

bb.dv:                                            ; preds = %bb.dt
  %i.hx = invoke fastcc noundef align 8 ptr @_ZN10serde_core3ser12SerializeMap15serialize_entry17h366dd41838737c2cE(ptr noalias noundef align 8 dereferenceable(96) %i.s, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.hv)
          to label %bb.dx unwind label %.body.thread309 ; 2 uses

bb.dw:                                            ; preds = %bb.dx, %bb.dt
  %i.hy = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.hz = load i64, ptr %i.hy, align 8, !range !720, !noundef !27
  %.not171 = icmp eq i64 %i.hz, 3
  br i1 %.not171, label %bb.dz, label %bb.dy

bb.dx:                                            ; preds = %bb.dv
  %.not169 = icmp eq ptr %i.hx, null
  br i1 %.not169, label %bb.dw, label %_ZN10serde_core3ser12SerializeMap15serialize_entry17h81525946a052bc69E.exit.thread

bb.dy:                                            ; preds = %bb.dw
  %i.ia = invoke fastcc noundef align 8 ptr @_ZN10serde_core3ser12SerializeMap15serialize_entry17hcdbba6823def54b7E(ptr noalias noundef align 8 dereferenceable(96) %i.s, ptr nonnull %i.hy)
          to label %bb.ea unwind label %.body.thread309 ; 2 uses

bb.dz:                                            ; preds = %bb.ea, %bb.dw
  %i.ib = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.ic = load i64, ptr %i.ib, align 8, !range !720, !noundef !27
  %.not174 = icmp eq i64 %i.ic, 3
  br i1 %.not174, label %bb.ec, label %bb.eb

bb.ea:                                            ; preds = %bb.dy
  %.not172 = icmp eq ptr %i.ia, null
  br i1 %.not172, label %bb.dz, label %_ZN10serde_core3ser12SerializeMap15serialize_entry17h81525946a052bc69E.exit.thread

bb.eb:                                            ; preds = %bb.dz
  %i.id = invoke fastcc noundef align 8 ptr @_ZN10serde_core3ser12SerializeMap15serialize_entry17hbda972cad251254bE(ptr noalias noundef align 8 dereferenceable(96) %i.s, ptr nonnull %i.ib)
          to label %bb.ed unwind label %.body.thread309 ; 2 uses

bb.ec:                                            ; preds = %bb.ed, %bb.dz
  %i.ie = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.if = load i64, ptr %i.ie, align 8, !range !720, !noundef !27
  %.not177 = icmp eq i64 %i.if, 3
  br i1 %.not177, label %bb.ef, label %bb.ee

bb.ed:                                            ; preds = %bb.eb
  %.not175 = icmp eq ptr %i.id, null
  br i1 %.not175, label %bb.ec, label %_ZN10serde_core3ser12SerializeMap15serialize_entry17h81525946a052bc69E.exit.thread

bb.ee:                                            ; preds = %bb.ec
  %i.ig = invoke fastcc noundef align 8 ptr @_ZN10serde_core3ser12SerializeMap15serialize_entry17h55c0be310c7f3de1E(ptr noalias noundef align 8 dereferenceable(96) %i.s, ptr nonnull %i.ie)
          to label %bb.eg unwind label %.body.thread309 ; 2 uses

bb.ef:                                            ; preds = %bb.eg, %bb.ec
  %i.ih = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.ii = load i64, ptr %i.ih, align 8, !range !720, !noundef !27
  %.not180 = icmp eq i64 %i.ii, 3
  br i1 %.not180, label %bb.ei, label %bb.eh

bb.eg:                                            ; preds = %bb.ee
  %.not178 = icmp eq ptr %i.ig, null
  br i1 %.not178, label %bb.ef, label %_ZN10serde_core3ser12SerializeMap15serialize_entry17h81525946a052bc69E.exit.thread

bb.eh:                                            ; preds = %bb.ef
  %i.ij = invoke fastcc noundef align 8 ptr @_ZN10serde_core3ser12SerializeMap15serialize_entry17h51952aec216c6a04E(ptr noalias noundef align 8 dereferenceable(96) %i.s, ptr nonnull %i.ih)
          to label %bb.ej unwind label %.body.thread309 ; 2 uses

bb.ei:                                            ; preds = %bb.ej, %bb.ef
  %i.ik = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.il = load i64, ptr %i.ik, align 8, !range !720, !noundef !27
  %.not183 = icmp eq i64 %i.il, 3
  br i1 %.not183, label %bb.el, label %bb.ek

bb.ej:                                            ; preds = %bb.eh
  %.not181 = icmp eq ptr %i.ij, null
  br i1 %.not181, label %bb.ei, label %_ZN10serde_core3ser12SerializeMap15serialize_entry17h81525946a052bc69E.exit.thread

bb.ek:                                            ; preds = %bb.ei
  %i.im = invoke fastcc noundef align 8 ptr @_ZN10serde_core3ser12SerializeMap15serialize_entry17hdaf4a424fb1fa499E(ptr noalias noundef align 8 dereferenceable(96) %i.s, ptr nonnull %i.ik)
          to label %bb.em unwind label %.body.thread309 ; 2 uses

bb.el:                                            ; preds = %bb.em, %bb.ei
  %i.in = load i64, ptr %1, align 8, !range !3481, !noundef !27
  %.not186 = icmp eq i64 %i.in, 0
  br i1 %.not186, label %bb.eo, label %bb.en

bb.em:                                            ; preds = %bb.ek
  %.not184 = icmp eq ptr %i.im, null
  br i1 %.not184, label %bb.el, label %_ZN10serde_core3ser12SerializeMap15serialize_entry17h81525946a052bc69E.exit.thread

bb.en:                                            ; preds = %bb.el
  %i.io = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val249 = load i64, ptr %i.io, align 8
  %i.ip = invoke fastcc noundef align 8 ptr @_ZN10serde_core3ser12SerializeMap15serialize_entry17h9bbaac793b7b6814E(ptr noalias noundef align 8 dereferenceable(96) %i.s, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @410, i64 noundef 9, i64 1, i64 %.val249)
          to label %bb.ep unwind label %.body.thread309 ; 2 uses

bb.eo:                                            ; preds = %bb.ep, %bb.el
  %i.iq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ir = load i64, ptr %i.iq, align 8, !range !3481, !noundef !27
  %.not189 = icmp eq i64 %i.ir, 0
  br i1 %.not189, label %bb.er, label %bb.eq

bb.ep:                                            ; preds = %bb.en
  %.not187 = icmp eq ptr %i.ip, null
  br i1 %.not187, label %bb.eo, label %_ZN10serde_core3ser12SerializeMap15serialize_entry17h81525946a052bc69E.exit.thread

bb.eq:                                            ; preds = %bb.eo
  %i.is = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val247 = load i64, ptr %i.is, align 8
  %i.it = invoke fastcc noundef align 8 ptr @_ZN10serde_core3ser12SerializeMap15serialize_entry17h9bbaac793b7b6814E(ptr noalias noundef align 8 dereferenceable(96) %i.s, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @411, i64 noundef 9, i64 1, i64 %.val247)
          to label %bb.es unwind label %.body.thread309 ; 2 uses

bb.er:                                            ; preds = %bb.es, %bb.eo
  %i.iu = getelementptr inbounds nuw i8, ptr %1, i64 384 ; 2 uses
  %i.iv = load i64, ptr %i.iu, align 8, !range !318, !noundef !27
  %.not192 = icmp eq i64 %i.iv, -9223372036854775808
  br i1 %.not192, label %bb.eu, label %bb.et

bb.es:                                            ; preds = %bb.eq
  %.not190 = icmp eq ptr %i.it, null
  br i1 %.not190, label %bb.er, label %_ZN10serde_core3ser12SerializeMap15serialize_entry17h81525946a052bc69E.exit.thread

bb.et:                                            ; preds = %bb.er
  %i.iw = invoke fastcc noundef align 8 ptr @_ZN10serde_core3ser12SerializeMap15serialize_entry17h1f76c4e2f91a7378E(ptr noalias noundef align 8 dereferenceable(96) %i.s, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @412, i64 noundef 7, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.iu)
          to label %bb.ev unwind label %.body.thread309 ; 2 uses

bb.eu:                                            ; preds = %bb.ev, %bb.er
  %i.ix = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.iy = load i64, ptr %i.ix, align 8, !range !3481, !noundef !27
  %.not195 = icmp eq i64 %i.iy, 0
  br i1 %.not195, label %bb.ex, label %bb.ew

bb.ev:                                            ; preds = %bb.et
  %.not193.a = icmp eq ptr %i.iw, null
  br i1 %.not193.a, label %bb.eu, label %_ZN10serde_core3ser12SerializeMap15serialize_entry17h81525946a052bc69E.exit.thread

bb.ew:                                            ; preds = %bb.eu
  %i.iz = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val245 = load i64, ptr %i.iz, align 8
  %i.ja = invoke fastcc noundef align 8 ptr @_ZN10serde_core3ser12SerializeMap15serialize_entry17h9bbaac793b7b6814E(ptr noalias noundef align 8 dereferenceable(96) %i.s, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @413, i64 noundef 13, i64 1, i64 %.val245)
          to label %bb.ey unwind label %.body.thread309 ; 2 uses

bb.ex:                                            ; preds = %bb.ey, %bb.eu
  %i.jb = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.jc = load i64, ptr %i.jb, align 8, !range !3481, !noundef !27
  %.not198 = icmp eq i64 %i.jc, 0
  br i1 %.not198, label %bb.fa, label %bb.ez

bb.ey:                                            ; preds = %bb.ew
  %.not196 = icmp eq ptr %i.ja, null
  br i1 %.not196, label %bb.ex, label %_ZN10serde_core3ser12SerializeMap15serialize_entry17h81525946a052bc69E.exit.thread

bb.ez:                                            ; preds = %bb.ex
  %i.jd = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.val243 = load i64, ptr %i.jd, align 8
  %i.je = invoke fastcc noundef align 8 ptr @_ZN10serde_core3ser12SerializeMap15serialize_entry17h9bbaac793b7b6814E(ptr noalias noundef align 8 dereferenceable(96) %i.s, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @414, i64 noundef 13, i64 1, i64 %.val243)
          to label %bb.fb unwind label %.body.thread309 ; 2 uses

bb.fa:                                            ; preds = %bb.fb, %bb.ex
  %i.jf = getelementptr inbounds nuw i8, ptr %1, i64 696
  %i.jg = load ptr, ptr %i.jf, align 8, !noundef !27 ; 2 uses
  %.not201 = icmp eq ptr %i.jg, null
  br i1 %.not201, label %bb.fd, label %bb.fc

bb.fb:                                            ; preds = %bb.ez
  %.not199 = icmp eq ptr %i.je, null
  br i1 %.not199, label %bb.fa, label %_ZN10serde_core3ser12SerializeMap15serialize_entry17h81525946a052bc69E.exit.thread

bb.fc:                                            ; preds = %bb.fa
  %i.jh = getelementptr inbounds nuw i8, ptr %1, i64 720
  %.val240 = load i64, ptr %i.jh, align 8, !alias.scope !10744, !noalias !10745, !noundef !27
  %i.ji = invoke fastcc noundef align 8 ptr @"_ZN6utoipa7openapi10extensions1_96_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$utoipa..openapi..extensions..Extensions$GT$9serialize17h9cdf9682d209f863E"(ptr nonnull %i.jg, i64 %.val240, ptr noalias noundef align 8 dereferenceable(96) %i.s)
          to label %bb.fe unwind label %.body.thread309 ; 2 uses

bb.fd:                                            ; preds = %bb.fe, %bb.fa
  %i.jj = getelementptr inbounds nuw i8, ptr %1, i64 280
  %i.jk = load i64, ptr %i.jj, align 8, !noundef !27 ; 3 uses
  %i.jl = icmp sgt i64 %i.jk, -1
  call void @llvm.assume(i1 %i.jl)
  %i.jm = icmp eq i64 %i.jk, 0
  br i1 %i.jm, label %bb.fg, label %bb.ff

bb.fe:                                            ; preds = %bb.fc
  %.not202.a = icmp eq ptr %i.ji, null
  br i1 %.not202.a, label %bb.fd, label %_ZN10serde_core3ser12SerializeMap15serialize_entry17h81525946a052bc69E.exit.thread

bb.ff:                                            ; preds = %bb.fd
  %i.jn = getelementptr inbounds nuw i8, ptr %1, i64 272
  %.val237 = load ptr, ptr %i.jn, align 8
  %i.jo = invoke fastcc noundef align 8 ptr @_ZN10serde_core3ser12SerializeMap15serialize_entry17hb9860c9e91dea0ddE(ptr noalias noundef align 8 dereferenceable(96) %i.s, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @397, i64 noundef 15, ptr %.val237, i64 %i.jk)
          to label %bb.fh unwind label %.body.thread309 ; 2 uses

bb.fg:                                            ; preds = %bb.fh, %bb.fd
  %i.jp = getelementptr inbounds nuw i8, ptr %1, i64 304
  %i.jq = load i64, ptr %i.jp, align 8, !noundef !27 ; 3 uses
  %i.jr = icmp sgt i64 %i.jq, -1
  call void @llvm.assume(i1 %i.jr)
  %i.js = icmp eq i64 %i.jq, 0
  br i1 %i.js, label %bb.fj, label %bb.fi

bb.fh:                                            ; preds = %bb.ff
  %.not204 = icmp eq ptr %i.jo, null
  br i1 %.not204, label %bb.fg, label %_ZN10serde_core3ser12SerializeMap15serialize_entry17h81525946a052bc69E.exit.thread

bb.fi:                                            ; preds = %bb.fg
  %i.jt = getelementptr inbounds nuw i8, ptr %1, i64 296
  %.val = load ptr, ptr %i.jt, align 8
  %i.ju = invoke fastcc noundef align 8 ptr @_ZN10serde_core3ser12SerializeMap15serialize_entry17hb9860c9e91dea0ddE(ptr noalias noundef align 8 dereferenceable(96) %i.s, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @398, i64 noundef 16, ptr %.val, i64 %i.jq)
          to label %bb.fk unwind label %.body.thread309 ; 2 uses

bb.fj:                                            ; preds = %bb.fk, %bb.fg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.q, ptr noundef nonnull align 8 dereferenceable(96) %i.s, i64 96, i1 false)
  call void @"_ZN86_$LT$serde_json..value..ser..SerializeMap$u20$as$u20$serde_core..ser..SerializeMap$GT$3end17h6c83369807a7ac6cE"(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(96) %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %"_ZN4core3ptr57drop_in_place$LT$serde_json..value..ser..SerializeMap$GT$17hd33f461d90fda394E.exit"

bb.fk:                                            ; preds = %bb.fi
  %.not206 = icmp eq ptr %i.ju, null
  br i1 %.not206, label %bb.fj, label %_ZN10serde_core3ser12SerializeMap15serialize_entry17h81525946a052bc69E.exit.thread

"_ZN4core3ptr57drop_in_place$LT$serde_json..value..ser..SerializeMap$GT$17hd33f461d90fda394E.exit": ; preds = %bb.b, %bb.k, %bb.l, %"_ZN4core3ptr97drop_in_place$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17he72da75895b7be74E.exit.i", %bb.n, %bb.fj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  ret void

.body.thread:                                     ; preds = %.body.thread309, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1f5de302d11ecf9aE.exit.i", %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1f5de302d11ecf9aE.exit.i.i281", %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1f5de302d11ecf9aE.exit.i.i267", %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1f5de302d11ecf9aE.exit.i.i"
  %eh.lpad-body307 = phi { ptr, i32 } [ %i.do, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1f5de302d11ecf9aE.exit.i.i" ], [ %i.fa, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1f5de302d11ecf9aE.exit.i.i281" ], [ %i.eh, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1f5de302d11ecf9aE.exit.i.i267" ], [ %lpad.thr_comm, %.body.thread309 ], [ %eh.lpad-body.i, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1f5de302d11ecf9aE.exit.i" ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11467)
  %i.jv = load i64, ptr %i.s, align 8, !range !318, !alias.scope !11467, !noundef !27
  %.not.i401 = icmp eq i64 %i.jv, -9223372036854775808
  br i1 %.not.i401, label %bb.fm, label %bb.fl

bb.fl:                                            ; preds = %.body.thread
  invoke fastcc void @"_ZN4core3ptr98drop_in_place$LT$indexmap..inner..Core$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17h900ee67db92f5ea1E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(96) %i.s) #39
          to label %"_ZN4core3ptr97drop_in_place$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17he72da75895b7be74E.exit.i405" unwind label %bb.fo, !inline_history !537

bb.fm:                                            ; preds = %.body.thread
  %i.jw = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !range !321, !alias.scope !11470, !noundef !27
  %i.jx = icmp eq i64 %i.jw, -9223372036854775803
  br i1 %i.jx, label %common.resume, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17h50592c2d2064937aE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(72) %.sroa.4.0..sroa_idx)
          to label %common.resume unwind label %bb.fq

bb.fo:                                            ; preds = %bb.fl
  %i.jy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %i.s, i64 72
  %.val2.i402 = load i64, ptr %i.jz, align 8, !range !318, !alias.scope !11467, !noundef !27 ; 2 uses
  %switch.i403 = icmp sgt i64 %.val2.i402, 0
  br i1 %switch.i403, label %bb.fp, label %.body

bb.fp:                                            ; preds = %bb.fo
  %i.ka = getelementptr inbounds nuw i8, ptr %i.s, i64 80
  %.val3.i404 = load ptr, ptr %i.ka, align 8, !alias.scope !11467, !nonnull !27, !noundef !27
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i404, i64 noundef %.val2.i402, i64 noundef range(i64 1, -9223372036854775807) 1) #37, !noalias !11467
  br label %.body

"_ZN4core3ptr97drop_in_place$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17he72da75895b7be74E.exit.i405": ; preds = %bb.fl
  %i.kb = getelementptr inbounds nuw i8, ptr %i.s, i64 72
  %.val.i406 = load i64, ptr %i.kb, align 8, !range !318, !alias.scope !11467, !noundef !27 ; 2 uses
  %switch5.i407 = icmp sgt i64 %.val.i406, 0
  br i1 %switch5.i407, label %common.resume.sink.split, label %common.resume

bb.fq:                                            ; preds = %bb.fn
  %i.kc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body

.body:                                            ; preds = %bb.fo, %bb.fp, %bb.fq
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #34
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN6utoipa7openapi6schema1_92_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$utoipa..openapi..schema..Components$GT$9serialize17he38b4426e9f282e6E"(ptr dead_on_unwind noalias noundef nonnull writable align 8 captures(address) dereferenceable(72) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(120) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 4 uses
  %i.b = alloca [96 x i8], align 8                ; 7 uses
  %i.c = alloca [96 x i8], align 8                ; 14 uses
  %i.d = alloca [80 x i8], align 8                ; 4 uses
  %i.e = alloca [72 x i8], align 8                ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 5 uses
  %i.g = alloca [96 x i8], align 8                ; 4 uses
  %i.h = alloca [96 x i8], align 8                ; 7 uses
  %i.i = alloca [96 x i8], align 8                ; 16 uses
  %i.j = alloca [128 x i8], align 8               ; 19 uses
  %i.k = alloca [128 x i8], align 8               ; 19 uses
  %i.l = alloca [128 x i8], align 8               ; 19 uses
  %i.m = alloca [96 x i8], align 8                ; 4 uses
  %i.n = alloca [96 x i8], align 8                ; 7 uses
  %i.o = alloca [96 x i8], align 8                ; 16 uses
  %i.p = alloca [96 x i8], align 8                ; 4 uses
  %i.q = alloca [96 x i8], align 8                ; 7 uses
  %i.r = alloca [96 x i8], align 8                ; 15 uses
  %i.s = alloca [96 x i8], align 8                ; 4 uses
  %i.t = alloca [96 x i8], align 8                ; 7 uses
  %i.u = alloca [96 x i8], align 8                ; 15 uses
  %i.v = alloca [96 x i8], align 8                ; 4 uses
  %i.w = alloca [96 x i8], align 8                ; 7 uses
  %i.x = alloca [96 x i8], align 8                ; 15 uses
  %i.y = alloca [80 x i8], align 8                ; 5 uses
  %i.z = alloca [72 x i8], align 8                ; 18 uses
  %i.aa = alloca [24 x i8], align 8               ; 6 uses
  %i.ab = alloca [96 x i8], align 8               ; 4 uses
  %i.ac = alloca [96 x i8], align 8               ; 7 uses
  %i.ad = alloca [96 x i8], align 8               ; 16 uses
  %i.ae = alloca [80 x i8], align 8               ; 6 uses
  %i.af = alloca [72 x i8], align 8               ; 8 uses
  %i.ag = alloca [24 x i8], align 8               ; 7 uses
  %i.ah = alloca [96 x i8], align 8               ; 4 uses
  %i.ai = alloca [96 x i8], align 8               ; 7 uses
  %i.aj = alloca [96 x i8], align 8               ; 16 uses
  %i.ak = alloca [64 x i8], align 8               ; 11 uses
  %i.al = alloca [64 x i8], align 8               ; 11 uses
  %i.am = alloca [64 x i8], align 8               ; 11 uses
  %i.an = alloca [96 x i8], align 8               ; 4 uses
  %i.ao = alloca [96 x i8], align 8               ; 7 uses
  %i.ap = alloca [96 x i8], align 8               ; 15 uses
  %i.aq = alloca [80 x i8], align 8               ; 5 uses
  %i.ar = alloca [72 x i8], align 8               ; 21 uses
  %i.as = alloca [24 x i8], align 8               ; 6 uses
  %i.at = alloca [96 x i8], align 8               ; 4 uses
  %i.au = alloca [96 x i8], align 8               ; 7 uses
  %i.av = alloca [96 x i8], align 8               ; 17 uses
  %i.aw = alloca [80 x i8], align 8               ; 6 uses
  %i.ax = alloca [72 x i8], align 8               ; 8 uses
  %i.ay = alloca [24 x i8], align 8               ; 7 uses
  %i.az = alloca [96 x i8], align 8               ; 4 uses
  %i.ba = alloca [96 x i8], align 8               ; 7 uses
  %i.bb = alloca [96 x i8], align 8               ; 14 uses
  %i.bc = alloca [80 x i8], align 8               ; 6 uses
  %i.bd = alloca [72 x i8], align 8               ; 8 uses
  %i.be = alloca [24 x i8], align 8               ; 7 uses
  %i.bf = alloca [8 x i8], align 8                ; 4 uses
  %i.bg = alloca [96 x i8], align 8               ; 4 uses
  %i.bh = alloca [96 x i8], align 8               ; 7 uses
  %i.bi = alloca [96 x i8], align 8               ; 16 uses
  %i.bj = alloca [80 x i8], align 8               ; 6 uses
  %i.bk = alloca [72 x i8], align 8               ; 8 uses
  %i.bl = alloca [24 x i8], align 8               ; 7 uses
  %i.bm = alloca [96 x i8], align 8               ; 4 uses
  %i.bn = alloca [96 x i8], align 8               ; 7 uses
  %i.bo = alloca [96 x i8], align 8               ; 28 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn)
end_hunk_6
begin_hunk_7_@"_ZN6utoipa7openapi6schema1_92_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$utoipa..openapi..schema..Components$GT$9serialize17he38b4426e9f282e6E":bb.a
  %.val13.i.i.i.i.i = load <16 x i8>, ptr %i.ago, align 16, !noalias !12582
  %i.agr = icmp sgt <16 x i8> %.val13.i.i.i.i.i, splat (i8 -1)
  %i.ags = bitcast <16 x i1> %i.agr to i16
  %i.agt = getelementptr inbounds nuw i8, ptr %i.ago, i64 16
  br label %bb.md

bb.mc:                                            ; preds = %.noexc180
  %i.agu = add i64 %i.agy, -1                     ; 2 uses
  %i.agv = add i16 %.lcssa.i.i.i.i.i.i.i, -1
  %i.agw = and i16 %i.agv, %.lcssa.i.i.i.i.i.i.i
  %i.agx = icmp eq i64 %i.agu, 0
  br i1 %i.agx, label %"_ZN6utoipa7openapi10extensions1_96_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$utoipa..openapi..extensions..Extensions$GT$9serialize17h9cdf9682d209f863E.exit.thread", label %bb.md

bb.md:                                            ; preds = %.lr.ph1082, %bb.mc
  %i.agy = phi i64 [ %.val29, %.lr.ph1082 ], [ %i.agu, %bb.mc ]
  %.lcssa1215.i.i.i.i1080 = phi ptr [ %i.ago, %.lr.ph1082 ], [ %.lcssa1214.i.i.i.i, %bb.mc ] ; 2 uses
  %i.agz = phi i16 [ %i.ags, %.lr.ph1082 ], [ %i.agw, %bb.mc ] ; 2 uses
  %.lcssa19.i.i.i.i1079 = phi ptr [ %i.agt, %.lr.ph1082 ], [ %.lcssa18.i.i.i.i, %bb.mc ] ; 2 uses
  %.not13.i.i.i.i.i.i.i = icmp eq i16 %i.agz, 0
  br i1 %.not13.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, label %._crit_edge20.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.md, %.lr.ph.i.i.i.i.i.i.i
  %i.aha = phi ptr [ %i.ahe, %.lr.ph.i.i.i.i.i.i.i ], [ %.lcssa19.i.i.i.i1079, %bb.md ] ; 2 uses
  %i.ahb = phi ptr [ %i.ahd, %.lr.ph.i.i.i.i.i.i.i ], [ %.lcssa1215.i.i.i.i1080, %bb.md ]
  %.val911.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.aha, align 16, !noalias !12596
  %i.ahc = icmp sgt <16 x i8> %.val911.i.i.i.i.i.i.i, splat (i8 -1)
  %i.ahd = getelementptr inbounds i8, ptr %i.ahb, i64 -1536 ; 2 uses
  %i.ahe = getelementptr inbounds nuw i8, ptr %i.aha, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i = bitcast <16 x i1> %i.ahc to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i179 = icmp eq i16 %.cast.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i179, label %.lr.ph.i.i.i.i.i.i.i, label %._crit_edge20.i.i.i.i.i.i.i

._crit_edge20.i.i.i.i.i.i.i:                      ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.md
  %.lcssa18.i.i.i.i = phi ptr [ %.lcssa19.i.i.i.i1079, %bb.md ], [ %i.ahe, %.lr.ph.i.i.i.i.i.i.i ]
  %.lcssa1214.i.i.i.i = phi ptr [ %.lcssa1215.i.i.i.i1080, %bb.md ], [ %i.ahd, %.lr.ph.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i = phi i16 [ %i.agz, %bb.md ], [ %.cast.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ] ; 3 uses
  %i.ahf = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i, i1 true)
  %i.ahg = zext nneg i16 %i.ahf to i64
  %i.ahh = sub nsw i64 0, %i.ahg
  %i.ahi = getelementptr inbounds [96 x i8], ptr %.lcssa1214.i.i.i.i, i64 %i.ahh ; 2 uses
  %i.ahj = getelementptr inbounds i8, ptr %i.ahi, i64 -96
  %i.ahk = getelementptr inbounds i8, ptr %i.ahi, i64 -72
  %i.ahl = invoke fastcc noundef align 8 ptr @_ZN10serde_core3ser12SerializeMap15serialize_entry17h4ef2acf6d15ff0efE(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.bo, ptr nonnull readonly align 8 dereferenceable(24) %i.ahj, ptr nonnull readonly align 8 dereferenceable(72) %i.ahk)
          to label %.noexc180 unwind label %.body.thread186.loopexit ; 2 uses

.noexc180:                                        ; preds = %._crit_edge20.i.i.i.i.i.i.i
  %.not8.i.i.i.i = icmp eq ptr %i.ahl, null
  br i1 %.not8.i.i.i.i, label %bb.mc, label %"_ZN6utoipa7openapi10extensions1_96_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$utoipa..openapi..extensions..Extensions$GT$9serialize17h9cdf9682d209f863E.exit"

"_ZN6utoipa7openapi10extensions1_96_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$utoipa..openapi..extensions..Extensions$GT$9serialize17h9cdf9682d209f863E.exit.thread": ; preds = %bb.mc, %bb.mb, %bb.lz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.bm, ptr noundef nonnull align 8 dereferenceable(96) %i.bo, i64 96, i1 false)
  call void @"_ZN86_$LT$serde_json..value..ser..SerializeMap$u20$as$u20$serde_core..ser..SerializeMap$GT$3end17h6c83369807a7ac6cE"(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(96) %i.bm)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm)
  br label %"_ZN4core3ptr57drop_in_place$LT$serde_json..value..ser..SerializeMap$GT$17hd33f461d90fda394E.exit"

"_ZN6utoipa7openapi10extensions1_96_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$utoipa..openapi..extensions..Extensions$GT$9serialize17h9cdf9682d209f863E.exit": ; preds = %.noexc180, %bb.ma, %.thread210, %bb.br, %.thread201, %bb.ao, %.thread192
  %.lcssa677.sink = phi ptr [ %.pre.i.pre.i154, %bb.ma ], [ %.pre.i.pre.i89, %bb.br ], [ %.pre.i.pre.i, %bb.ao ], [ %.ph, %.thread192 ], [ %.ph200, %.thread201 ], [ %.ph209, %.thread210 ], [ %i.ahl, %.noexc180 ]
  %i.ahm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.lcssa677.sink, ptr %i.ahm, align 8
  store i64 -9223372036854775803, ptr %0, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !12608)
  %i.ahn = load i64, ptr %i.bo, align 8, !range !318, !alias.scope !12608, !noundef !27
  %.not.i = icmp eq i64 %i.ahn, -9223372036854775808
  br i1 %.not.i, label %bb.mf, label %bb.me

bb.me:                                            ; preds = %"_ZN6utoipa7openapi10extensions1_96_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$utoipa..openapi..extensions..Extensions$GT$9serialize17h9cdf9682d209f863E.exit"
  invoke fastcc void @"_ZN4core3ptr98drop_in_place$LT$indexmap..inner..Core$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17h900ee67db92f5ea1E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(96) %i.bo) #39
          to label %"_ZN4core3ptr97drop_in_place$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17he72da75895b7be74E.exit.i" unwind label %bb.mh, !inline_history !537

bb.mf:                                            ; preds = %"_ZN6utoipa7openapi10extensions1_96_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$utoipa..openapi..extensions..Extensions$GT$9serialize17h9cdf9682d209f863E.exit"
  %i.aho = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !range !321, !alias.scope !12611, !noundef !27
  %i.ahp = icmp eq i64 %i.aho, -9223372036854775803
  br i1 %i.ahp, label %"_ZN4core3ptr57drop_in_place$LT$serde_json..value..ser..SerializeMap$GT$17hd33f461d90fda394E.exit", label %bb.mg

bb.mg:                                            ; preds = %bb.mf
  call fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17h50592c2d2064937aE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(72) %.sroa.4.0..sroa_idx)
  br label %"_ZN4core3ptr57drop_in_place$LT$serde_json..value..ser..SerializeMap$GT$17hd33f461d90fda394E.exit"

bb.mh:                                            ; preds = %bb.me
  %i.ahq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ahr = getelementptr inbounds nuw i8, ptr %i.bo, i64 72
  %.val2.i = load i64, ptr %i.ahr, align 8, !range !318, !alias.scope !12608, !noundef !27 ; 2 uses
  %switch.i = icmp sgt i64 %.val2.i, 0
  br i1 %switch.i, label %bb.mi, label %common.resume

bb.mi:                                            ; preds = %bb.mh
  %i.ahs = getelementptr inbounds nuw i8, ptr %i.bo, i64 80
  %.val3.i = load ptr, ptr %i.ahs, align 8, !alias.scope !12608, !nonnull !27, !noundef !27
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i, i64 noundef %.val2.i, i64 noundef range(i64 1, -9223372036854775807) 1) #37, !noalias !12608
  br label %common.resume

"_ZN4core3ptr97drop_in_place$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17he72da75895b7be74E.exit.i": ; preds = %bb.me
  %i.aht = getelementptr inbounds nuw i8, ptr %i.bo, i64 72
  %.val.i = load i64, ptr %i.aht, align 8, !range !318, !alias.scope !12608, !noundef !27 ; 2 uses
  %switch5.i = icmp sgt i64 %.val.i, 0
  br i1 %switch5.i, label %bb.mj, label %"_ZN4core3ptr57drop_in_place$LT$serde_json..value..ser..SerializeMap$GT$17hd33f461d90fda394E.exit"

bb.mj:                                            ; preds = %"_ZN4core3ptr97drop_in_place$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17he72da75895b7be74E.exit.i"
  %i.ahu = getelementptr inbounds nuw i8, ptr %i.bo, i64 80
  %.val1.i = load ptr, ptr %i.ahu, align 8, !alias.scope !12608, !nonnull !27, !noundef !27
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #37, !noalias !12608
  br label %"_ZN4core3ptr57drop_in_place$LT$serde_json..value..ser..SerializeMap$GT$17hd33f461d90fda394E.exit"

common.resume:                                    ; preds = %.body.thread, %bb.mh, %bb.mi
  %common.resume.op = phi { ptr, i32 } [ %i.ahq, %bb.mh ], [ %i.ahq, %bb.mi ], [ %eh.lpad-body184, %.body.thread ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core3ptr57drop_in_place$LT$serde_json..value..ser..SerializeMap$GT$17hd33f461d90fda394E.exit": ; preds = %bb.b, %bb.mf, %bb.mg, %"_ZN4core3ptr97drop_in_place$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17he72da75895b7be74E.exit.i", %bb.mj, %"_ZN6utoipa7openapi10extensions1_96_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$utoipa..openapi..extensions..Extensions$GT$9serialize17h9cdf9682d209f863E.exit.thread"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo)
  ret void

.body.thread:                                     ; preds = %.body.thread186.loopexit, %.body.thread186.loopexit.split-lp, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1f5de302d11ecf9aE.exit.i.i105", %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1f5de302d11ecf9aE.exit.i.i39", %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1f5de302d11ecf9aE.exit.i.i"
  %eh.lpad-body184 = phi { ptr, i32 } [ %eh.lpad-body.i.i, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1f5de302d11ecf9aE.exit.i.i" ], [ %eh.lpad-body.i.i106, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1f5de302d11ecf9aE.exit.i.i105" ], [ %eh.lpad-body.i.i40, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1f5de302d11ecf9aE.exit.i.i39" ], [ %lpad.loopexit, %.body.thread186.loopexit ], [ %lpad.loopexit.split-lp, %.body.thread186.loopexit.split-lp ]
  invoke fastcc void @"_ZN4core3ptr57drop_in_place$LT$serde_json..value..ser..SerializeMap$GT$17hd33f461d90fda394E"(ptr noalias noundef align 8 dereferenceable(96) %i.bo) #33
          to label %common.resume unwind label %bb.mk

bb.mk:                                            ; preds = %.body.thread
  %i.ahv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #34
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN6utoipa7openapi6server1_88_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$utoipa..openapi..server..Server$GT$9serialize17h21addc85f5b959d5E"(ptr dead_on_unwind noalias noundef nonnull writable align 8 captures(address) dereferenceable(72) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(128) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 4 uses
  %i.b = alloca [96 x i8], align 8                ; 7 uses
  %i.c = alloca [96 x i8], align 8                ; 17 uses
  %i.d = alloca [80 x i8], align 8                ; 4 uses
  %i.e = alloca [72 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [96 x i8], align 8                ; 4 uses
  %i.h = alloca [96 x i8], align 8                ; 7 uses
  %i.i = alloca [96 x i8], align 8                ; 17 uses
  %i.j = alloca [80 x i8], align 8                ; 6 uses
  %i.k = alloca [72 x i8], align 8                ; 8 uses
  %i.l = alloca [24 x i8], align 8                ; 7 uses
  %i.m = alloca [96 x i8], align 8                ; 4 uses
  %i.n = alloca [96 x i8], align 8                ; 7 uses
  %i.o = alloca [96 x i8], align 8                ; 21 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @"_ZN82_$LT$serde_json..value..ser..Serializer$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_map17h38fa74e76d6ab555E"(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.n, i64 noundef 0, i64 undef)
  %i.p = load i64, ptr %i.n, align 8, !range !490, !noundef !27 ; 2 uses
  %i.q = icmp eq i64 %i.p, -9223372036854775807
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
  br i1 %i.q, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.s, ptr %i.t, align 8
  store i64 -9223372036854775803, ptr %0, align 8
  br label %"_ZN4core3ptr57drop_in_place$LT$serde_json..value..ser..SerializeMap$GT$17hd33f461d90fda394E.exit"

bb.c:                                             ; preds = %bb.a
  %.sroa.621.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.621.0..sroa_idx, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  store i64 %i.p, ptr %i.o, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 3 uses
  store ptr %i.s, ptr %.sroa.4.0..sroa_idx, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val = load ptr, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.val31 = load i64, ptr %i.v, align 8
  %i.w = invoke fastcc noundef align 8 ptr @_ZN10serde_core3ser12SerializeMap15serialize_entry17hb9860c9e91dea0ddE(ptr noalias noundef align 8 dereferenceable(96) %i.o, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @339, i64 noundef 3, ptr %.val, i64 %.val31)
          to label %bb.d unwind label %.body.thread42.loopexit.split-lp ; 2 uses

.body.thread42.loopexit:                          ; preds = %._crit_edge20.i.i.i.i.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread42

.body.thread42.loopexit.split-lp:                 ; preds = %bb.bx, %bb.r, %bb.p, %bb.c, %bb.f, %bb.by
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread42

bb.d:                                             ; preds = %bb.c
  %.not = icmp eq ptr %i.w, null
  br i1 %.not, label %bb.e, label %"_ZN6utoipa7openapi10extensions1_96_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$utoipa..openapi..extensions..Extensions$GT$9serialize17h9cdf9682d209f863E.exit"

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !range !318, !noundef !27
  %.not25 = icmp eq i64 %i.y, -9223372036854775808
  br i1 %.not25, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = invoke fastcc noundef align 8 ptr @_ZN10serde_core3ser12SerializeMap15serialize_entry17h1f76c4e2f91a7378E(ptr noalias noundef align 8 dereferenceable(96) %i.o, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @165, i64 noundef 11, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.x)
          to label %bb.h unwind label %.body.thread42.loopexit.split-lp ; 2 uses

bb.g:                                             ; preds = %bb.h, %bb.e
  %i.aa = load i64, ptr %1, align 8, !range !3481, !noundef !27
  %.not27 = icmp eq i64 %i.aa, 0
  br i1 %.not27, label %bb.bz, label %bb.o

bb.h:                                             ; preds = %bb.f
  %.not26 = icmp eq ptr %i.z, null
  br i1 %.not26, label %bb.g, label %"_ZN6utoipa7openapi10extensions1_96_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$utoipa..openapi..extensions..Extensions$GT$9serialize17h9cdf9682d209f863E.exit"

"_ZN6utoipa7openapi10extensions1_96_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$utoipa..openapi..extensions..Extensions$GT$9serialize17h9cdf9682d209f863E.exit": ; preds = %.noexc37, %bb.h, %bb.d, %bb.ca, %.thread48
  %.lcssa119.sink = phi ptr [ %.pre.i.pre.i, %bb.ca ], [ %i.z, %bb.h ], [ %i.w, %bb.d ], [ %.ph, %.thread48 ], [ %i.hc, %.noexc37 ]
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.lcssa119.sink, ptr %i.ab, align 8
  store i64 -9223372036854775803, ptr %0, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !12614)
  %i.ac = load i64, ptr %i.o, align 8, !range !318, !alias.scope !12614, !noundef !27
  %.not.i = icmp eq i64 %i.ac, -9223372036854775808
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %"_ZN6utoipa7openapi10extensions1_96_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$utoipa..openapi..extensions..Extensions$GT$9serialize17h9cdf9682d209f863E.exit"
  invoke fastcc void @"_ZN4core3ptr98drop_in_place$LT$indexmap..inner..Core$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17h900ee67db92f5ea1E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(96) %i.o) #39
          to label %"_ZN4core3ptr97drop_in_place$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17he72da75895b7be74E.exit.i" unwind label %bb.l, !inline_history !537

bb.j:                                             ; preds = %"_ZN6utoipa7openapi10extensions1_96_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$utoipa..openapi..extensions..Extensions$GT$9serialize17h9cdf9682d209f863E.exit"
  %i.ad = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !range !321, !alias.scope !12617, !noundef !27
  %i.ae = icmp eq i64 %i.ad, -9223372036854775803
  br i1 %i.ae, label %"_ZN4core3ptr57drop_in_place$LT$serde_json..value..ser..SerializeMap$GT$17hd33f461d90fda394E.exit", label %bb.k

bb.k:                                             ; preds = %bb.j
  call fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17h50592c2d2064937aE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(72) %.sroa.4.0..sroa_idx)
  br label %"_ZN4core3ptr57drop_in_place$LT$serde_json..value..ser..SerializeMap$GT$17hd33f461d90fda394E.exit"

bb.l:                                             ; preds = %bb.i
  %i.af = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.o, i64 72
  %.val2.i = load i64, ptr %i.ag, align 8, !range !318, !alias.scope !12614, !noundef !27 ; 2 uses
  %switch.i = icmp sgt i64 %.val2.i, 0
  br i1 %switch.i, label %bb.m, label %common.resume

bb.m:                                             ; preds = %bb.l
  %i.ah = getelementptr inbounds nuw i8, ptr %i.o, i64 80
  %.val3.i = load ptr, ptr %i.ah, align 8, !alias.scope !12614, !nonnull !27, !noundef !27
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i, i64 noundef %.val2.i, i64 noundef range(i64 1, -9223372036854775807) 1) #37, !noalias !12614
  br label %common.resume

"_ZN4core3ptr97drop_in_place$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17he72da75895b7be74E.exit.i": ; preds = %bb.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.o, i64 72
  %.val.i = load i64, ptr %i.ai, align 8, !range !318, !alias.scope !12614, !noundef !27 ; 2 uses
  %switch5.i = icmp sgt i64 %.val.i, 0
  br i1 %switch5.i, label %bb.n, label %"_ZN4core3ptr57drop_in_place$LT$serde_json..value..ser..SerializeMap$GT$17hd33f461d90fda394E.exit"

bb.n:                                             ; preds = %"_ZN4core3ptr97drop_in_place$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17he72da75895b7be74E.exit.i"
  %i.aj = getelementptr inbounds nuw i8, ptr %i.o, i64 80
  %.val1.i = load ptr, ptr %i.aj, align 8, !alias.scope !12614, !nonnull !27, !noundef !27
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #37, !noalias !12614
  br label %"_ZN4core3ptr57drop_in_place$LT$serde_json..value..ser..SerializeMap$GT$17hd33f461d90fda394E.exit"

common.resume:                                    ; preds = %.body.thread42, %bb.l, %bb.m
  %common.resume.op = phi { ptr, i32 } [ %i.af, %bb.l ], [ %i.af, %bb.m ], [ %eh.lpad-body41, %.body.thread42 ]
  resume { ptr, i32 } %common.resume.op

bb.o:                                             ; preds = %bb.g
  call void @llvm.experimental.noalias.scope.decl(metadata !12620)
  call void @llvm.experimental.noalias.scope.decl(metadata !12623)
  call void @llvm.experimental.noalias.scope.decl(metadata !12625)
  %i.ak = load i64, ptr %i.o, align 8, !range !318, !alias.scope !12628, !noalias !12629, !noundef !27
  %i.al = icmp eq i64 %i.ak, -9223372036854775808
  br i1 %i.al, label %bb.p, label %bb.q, !prof !29

bb.p:                                             ; preds = %bb.o
  invoke void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @223, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @487) #38
          to label %.noexc unwind label %.body.thread42.loopexit.split-lp

.noexc:                                           ; preds = %bb.p
  unreachable

bb.q:                                             ; preds = %bb.o
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #37, !noalias !12631
  %i.am = call noundef dereferenceable_or_null(9) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 9, i64 noundef range(i64 1, 9) 1) #37, !noalias !12631 ; 3 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 9, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @493) #38
          to label %.noexc34.a unwind label %.body.thread42.loopexit.split-lp

.noexc34.a:                                       ; preds = %bb.r
  unreachable

bb.s:                                             ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.am, ptr noundef nonnull readonly align 1 dereferenceable(9) @436, i64 9, i1 false), !noalias !12645
  %i.ao = getelementptr inbounds nuw i8, ptr %i.o, i64 72 ; 2 uses
  %.val.i.i = load i64, ptr %i.ao, align 8, !range !318, !alias.scope !12628, !noalias !12629, !noundef !27 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.o, i64 80 ; 3 uses
  %switch.i.i = icmp sgt i64 %.val.i.i, 0
  br i1 %switch.i.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %.val2.i.i = load ptr, ptr %i.ap, align 8, !alias.scope !12628, !noalias !12629, !nonnull !27, !noundef !27
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #37, !noalias !12646
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t
  store ptr %i.am, ptr %i.ap, align 8, !alias.scope !12628, !noalias !12629
  %.sroa.7.0..sroa_idx9.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 88
  store i64 9, ptr %.sroa.7.0..sroa_idx9.i.i, align 8, !alias.scope !12628, !noalias !12629
  call void @llvm.experimental.noalias.scope.decl(metadata !12647)
  call void @llvm.experimental.noalias.scope.decl(metadata !12650)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !12652
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !12652
  %i.aq = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  store i64 -9223372036854775808, ptr %i.ao, align 8, !alias.scope !12653, !noalias !12654
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !12655
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.ap, i64 16, i1 false), !noalias !12654
  store i64 9, ptr %i.l, align 8, !noalias !12655
  call void @llvm.experimental.noalias.scope.decl(metadata !12656)
  call void @llvm.experimental.noalias.scope.decl(metadata !12659)
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !12662)
  call void @llvm.experimental.noalias.scope.decl(metadata !12665)
  call void @llvm.experimental.noalias.scope.decl(metadata !12668)
  %i.as = load ptr, ptr %i.ar, align 8, !alias.scope !12671, !noalias !12674, !noundef !27 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp ne ptr %i.as, null ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.au = load i64, ptr %i.at, align 8, !alias.scope !12683, !noalias !12684
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aw = load i64, ptr %i.av, align 8, !alias.scope !12683, !noalias !12684
  %.sink.i.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i.i, i64 %i.aw, i64 0 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !12685
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !12685
  invoke void @"_ZN82_$LT$serde_json..value..ser..Serializer$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_map17h38fa74e76d6ab555E"(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.h, i64 noundef 1, i64 %.sink.i.i.i.i.i.i.i.i.i)
          to label %.noexc.i.i unwind label %bb.bw, !noalias !12655

.noexc.i.i:                                       ; preds = %bb.u
  %i.ax = load i64, ptr %i.h, align 8, !range !490, !noalias !12685, !noundef !27
  %i.ay = icmp eq i64 %i.ax, -9223372036854775807
  br i1 %i.ay, label %_ZN10serde_json5value8to_value17h803194754ab5fcddE.exit.thread21.i.i, label %bb.v

_ZN10serde_json5value8to_value17h803194754ab5fcddE.exit.thread21.i.i: ; preds = %.noexc.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !noalias !12685, !nonnull !27, !align !319, !noundef !27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !12685
  br label %.thread48

bb.v:                                             ; preds = %.noexc.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.i, ptr noundef nonnull align 8 dereferenceable(96) %i.h, i64 96, i1 false), !noalias !12685
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !12685
  call void @llvm.experimental.noalias.scope.decl(metadata !12686)
  call void @llvm.experimental.noalias.scope.decl(metadata !12689)
  %i.bb = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.i, i64 72 ; 7 uses
  %.sroa.3.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 80 ; 6 uses
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.621.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.c, i64 72 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.c, i64 80 ; 2 uses
  %.phi.trans.insert.i.phi.trans.insert.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.7.0..sroa_idx7.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 88
  %i.bg = icmp eq i64 %.sink.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.bg, label %._crit_edge, label %.lr.ph169

.lr.ph169:                                        ; preds = %bb.v
  %i.bh = ptrtoint ptr %i.as to i64
  %.sroa.15.0.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i.i, i64 %i.au, i64 undef
  br label %bb.x

bb.w:                                             ; preds = %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h757b353d79eaac13E.exit.i.i.i.i.i.i.i.i.i.i"
  %i.bi = icmp eq i64 %i.bl, 0
  br i1 %i.bi, label %._crit_edge, label %bb.x

bb.x:                                             ; preds = %.lr.ph169, %bb.w
  %i.bj = phi i64 [ %.sink.i.i.i.i.i.i.i.i.i, %.lr.ph169 ], [ %i.bl, %bb.w ]
  %i.bk = phi i1 [ %.not.i.i.i.i.i.i.i.i.i, %.lr.ph169 ], [ true, %bb.w ]
  %.sroa.012.0.lcssa.i.i33.i.i.i.i.i.i.i.i.i.i168 = phi ptr [ null, %.lr.ph169 ], [ %.sroa.07.0.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.w ] ; 2 uses
  %.sroa.15.1.i.i.i.i.i.i.i.i167 = phi i64 [ %.sroa.15.0.i.i.i.i.i.i.i.i, %.lr.ph169 ], [ %.sroa.7.0.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.w ] ; 6 uses
  %.sroa.10.1.i.i.i.i.i.i.i.i166 = phi i64 [ %i.bh, %.lr.ph169 ], [ 0, %bb.w ] ; 2 uses
  %i.bl = add i64 %i.bj, -1                       ; 2 uses
  br i1 %i.bk, label %bb.y, label %.critedge.i.i.i.i.i.i.i.i.i.i.i

bb.y:                                             ; preds = %bb.x
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.sroa.012.0.lcssa.i.i33.i.i.i.i.i.i.i.i.i.i168, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.z, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hd1066e68e3eeee2aE.exit.i.i.i.i.i.i.i.i.i.i.i"

bb.z:                                             ; preds = %bb.y
  %i.bm = inttoptr i64 %.sroa.10.1.i.i.i.i.i.i.i.i166 to ptr ; 3 uses
  %i.bn = icmp eq i64 %.sroa.15.1.i.i.i.i.i.i.i.i167, 0
  br i1 %i.bn, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hd1066e68e3eeee2aE.exit.i.i.i.i.i.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader:         ; preds = %bb.z
  %xtraiter = and i64 %.sroa.15.1.i.i.i.i.i.i.i.i167, 7 ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol:              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol
  %.sroa.012.015.i.i.i.i.i.i.i.i.i.i.i.i.prol = phi ptr [ %.sroa.012.0.i.i.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol ], [ %i.bm, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader ]
  %.sroa.011.014.i.i.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.bp, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol ], [ %.sroa.15.1.i.i.i.i.i.i.i.i167, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader ]
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.012.015.i.i.i.i.i.i.i.i.i.i.i.i.prol, i64 1600
  %i.bp = add i64 %.sroa.011.014.i.i.i.i.i.i.i.i.i.i.i.i.prol, -1 ; 2 uses
end_hunk_7
