Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/configure-6c1e72b3311f803b.configure.dc0aea985e7c587b-cgu.02?download=true
inline.NumInlined: 358
inline.NumDeleted: 144
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN9configure3aqt19build_and_check_aqt17h5fcb78e7430b2d49E:bb.a
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #17, !noalias !314
  unreachable

"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17hd482f5003becba95E.exit.i.i": ; preds = %bb.ao
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h443f75200eb5e93bE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cu)
          to label %"_ZN4core3ptr79drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$$GT$17h605c3cff841a528bE.exit.i" unwind label %bb.af, !noalias !314

"_ZN4core3ptr79drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$$GT$17h605c3cff841a528bE.exit.i": ; preds = %"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17hd482f5003becba95E.exit.i.i", %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cu), !noalias !314
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cs), !noalias !314
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cr), !noalias !314
  %i.gn = load ptr, ptr %i.dy, align 8, !noalias !314, !nonnull !4, !noundef !4 ; 2 uses
  %i.go = load i64, ptr %i.dz, align 8, !noalias !314, !noundef !4
  %i.gp = getelementptr inbounds nuw [24 x i8], ptr %i.gn, i64 %i.go
  store ptr %i.gn, ptr %i.cq, align 8, !noalias !314
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  store ptr %i.gp, ptr %.sroa.44.0..sroa_idx.i, align 8, !noalias !314
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  store i64 1, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !314
  invoke void @"_ZN111_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter_nested..SpecFromIterNested$LT$T$C$I$GT$$GT$9from_iter17h1a3730d9b641c41cE"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.cr, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.cq)
          to label %bb.ar unwind label %bb.af, !noalias !314

bb.ar:                                            ; preds = %"_ZN4core3ptr79drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$$GT$17h605c3cff841a528bE.exit.i"
  invoke void @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17h3e4c56e2a230e719E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.cs, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.cv, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) inttoptr (i64 1 to ptr), i64 noundef 0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.cr)
          to label %bb.as unwind label %bb.af, !noalias !314

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cr), !noalias !314
  %i.gq = load i64, ptr %i.cs, align 8, !range !6, !alias.scope !326, !noalias !314, !noundef !4
  %i.gr = icmp eq i64 %i.gq, -9223372036854775808
  br i1 %i.gr, label %"_ZN4core3ptr79drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$$GT$17h605c3cff841a528bE.exit52.i", label %bb.at

bb.at:                                            ; preds = %bb.as
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h040d78a81c75c243E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cs)
          to label %"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17hd482f5003becba95E.exit.i48.i" unwind label %bb.au, !noalias !314

bb.au:                                            ; preds = %bb.at
  %i.gs = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h443f75200eb5e93bE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cs)
          to label %.body44.i unwind label %bb.av, !noalias !314

bb.av:                                            ; preds = %bb.au
  %i.gt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #17, !noalias !314
  unreachable

"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17hd482f5003becba95E.exit.i48.i": ; preds = %bb.at
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h443f75200eb5e93bE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cs)
          to label %"_ZN4core3ptr79drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$$GT$17h605c3cff841a528bE.exit52.i" unwind label %bb.af, !noalias !314

"_ZN4core3ptr79drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$$GT$17h605c3cff841a528bE.exit52.i": ; preds = %"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17hd482f5003becba95E.exit.i48.i", %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cs), !noalias !314
  %i.gu = getelementptr inbounds nuw i8, ptr %i.dd, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.gu, ptr noundef nonnull align 8 dereferenceable(48) %i.cv, i64 48, i1 false), !noalias !314
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cv), !noalias !314
  store ptr @7, ptr %i.dd, align 8, !noalias !314
  %i.gv = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  store i64 10, ptr %i.gv, align 8, !noalias !314
  %i.gw = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  store ptr @25, ptr %i.gw, align 8, !noalias !314
  %i.gx = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  store i64 19, ptr %i.gx, align 8, !noalias !314
  %i.gy = getelementptr inbounds nuw i8, ptr %i.dd, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.gy, ptr noundef nonnull align 8 dereferenceable(48) %i.dc, i64 48, i1 false), !noalias !314
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dc), !noalias !314
  %i.gz = invoke noundef ptr @_ZN9ninja_gen5build5Build10add_action17h5179106c156724c1E(ptr noalias noundef nonnull align 8 dereferenceable(248) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @26, i64 noundef 12, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(128) %i.dd)
          to label %bb.aw unwind label %bb.e      ; 2 uses

bb.aw:                                            ; preds = %"_ZN4core3ptr79drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$$GT$17h605c3cff841a528bE.exit52.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dd), !noalias !314
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h670739065d6ccec7E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dl)
          to label %bb.ay unwind label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ha = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha86766fe95ee8582E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dl)
          to label %.body54.i unwind label %bb.az

bb.ay:                                            ; preds = %bb.aw
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha86766fe95ee8582E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dl)
          to label %"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h191415ba13e9866fE.exit.i" unwind label %bb.ba

bb.az:                                            ; preds = %bb.ax
  %i.hb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #17
  unreachable

.body54.i:                                        ; preds = %bb.ba, %bb.ax, %.body.i
  %.sroa.05.6.i = phi i1 [ %.sroa.05.2.i, %.body.i ], [ false, %bb.ax ], [ false, %bb.ba ]
  %.pn30.pn.pn.i = phi { ptr, i32 } [ %.pn30.pn.i, %.body.i ], [ %i.ha, %bb.ax ], [ %i.hc, %bb.ba ] ; 2 uses
  invoke fastcc void @"_ZN4core3ptr40drop_in_place$LT$camino..Utf8PathBuf$GT$17h4f097c106282b31fE"(ptr noalias noundef align 8 dereferenceable(24) %i.dm) #16
          to label %bb.c unwind label %bb.bd

bb.ba:                                            ; preds = %bb.ay
  %i.hc = landingpad { ptr, i32 }
          cleanup
  br label %.body54.i

"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h191415ba13e9866fE.exit.i": ; preds = %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dl), !noalias !314
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h77374583839addd9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dm)
          to label %_ZN9configure3aqt11build_forms17hda932fd8c0c9422eE.exit unwind label %bb.bb

bb.bb:                                            ; preds = %"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h191415ba13e9866fE.exit.i"
  %i.hd = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0ee8f0e210b7ef47E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dm)
          to label %common.resume unwind label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.he = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #17
  unreachable

bb.bd:                                            ; preds = %bb.dm, %.body63.i, %.body67.i, %.body54.i, %.body44.i, %"_ZN4core3ptr105drop_in_place$LT$std..collections..hash..map..HashMap$LT$$RF$str$C$alloc..vec..Vec$LT$$RF$str$GT$$GT$$GT$17hb1a9ae4dedb14d2eE.exit.i", %bb.r, %.body72.i, %.body.i
  %i.hf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #17
  unreachable

.body67.i:                                        ; preds = %bb.di, %.body63.i, %.loopexit.split-lp171.i, %.loopexit170.i
  %.pn28.i = phi { ptr, i32 } [ %eh.lpad-body64.i, %.body63.i ], [ %i.rf, %bb.di ], [ %lpad.loopexit172.i, %.loopexit170.i ], [ %lpad.loopexit.split-lp173.i, %.loopexit.split-lp171.i ]
  invoke fastcc void @"_ZN4core3ptr40drop_in_place$LT$camino..Utf8PathBuf$GT$17h4f097c106282b31fE"(ptr noalias noundef align 8 dereferenceable(24) %i.dh) #16
          to label %.body72.i unwind label %bb.bd, !noalias !314

.loopexit170.i:                                   ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hf1cb1ef03b2c1034E.exit.i.i", %_ZN6camino8Utf8Path4join17h6a8b2847f4ffdda4E.exit.i, %.noexc59.i, %bb.bf, %bb.j
  %lpad.loopexit172.i = landingpad { ptr, i32 }
          cleanup
  br label %.body67.i

.loopexit.split-lp171.i:                          ; preds = %bb.bg
  %lpad.loopexit.split-lp173.i = landingpad { ptr, i32 }
          cleanup
  br label %.body67.i

bb.be:                                            ; preds = %bb.j
  %i.hg = extractvalue { ptr, i64 } %i.eu, 0      ; 2 uses
  %.not27.i = icmp eq ptr %i.hg, null
  br i1 %.not27.i, label %bb.bg, label %bb.bf, !prof !10

bb.bf:                                            ; preds = %bb.be
  %i.hh = extractvalue { ptr, i64 } %i.eu, 1
  %i.hi = invoke { ptr, i64 } @_ZN6camino8Utf8Path3new17h4ab38da8cf1b9539E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.hg, i64 noundef %i.hh)
          to label %.noexc59.i unwind label %.loopexit170.i, !noalias !314 ; 2 uses

.noexc59.i:                                       ; preds = %bb.bf
  %i.hj = extractvalue { ptr, i64 } %i.hi, 0
  %i.hk = extractvalue { ptr, i64 } %i.hi, 1
  invoke void @_ZN3std4path4Path4join17h630e4bc09ee3484dE(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.df, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.eq, i64 noundef %i.er, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.hj, i64 noundef %i.hk)
          to label %_ZN6camino8Utf8Path4join17h6a8b2847f4ffdda4E.exit.i unwind label %.loopexit170.i, !noalias !314

bb.bg:                                            ; preds = %bb.be
  invoke void @_ZN4core6option13unwrap_failed17h02f41afc018838f2E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #19
          to label %bb.al unwind label %.loopexit.split-lp171.i, !noalias !314

_ZN6camino8Utf8Path4join17h6a8b2847f4ffdda4E.exit.i: ; preds = %.noexc59.i
  invoke void @_ZN6camino11Utf8PathBuf11into_string17hc4a010c3e4baf0b1E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.dg, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.df)
          to label %bb.bh unwind label %.loopexit170.i, !noalias !314

bb.bh:                                            ; preds = %_ZN6camino8Utf8Path4join17h6a8b2847f4ffdda4E.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.df), !noalias !314
  call void @llvm.lifetime.start.p0(ptr nonnull %i.de), !noalias !314
  %i.hl = load ptr, ptr %i.eh, align 8, !noalias !314, !nonnull !4, !noundef !4 ; 9 uses
  %i.hm = load i64, ptr %i.ei, align 8, !noalias !314, !noundef !4 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cl), !noalias !327
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cj), !noalias !327
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h8efc9a160d154ccbE"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.cj, i64 noundef %i.hm, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc61.i unwind label %.loopexit175.i, !noalias !314

.noexc61.i:                                       ; preds = %bb.bh
  %i.hn = load i64, ptr %i.cj, align 8, !range !11, !noalias !327, !noundef !4
  %i.ho = trunc nuw i64 %i.hn to i1
  %i.hp = load i64, ptr %i.ej, align 8, !range !6, !noalias !327, !noundef !4 ; 3 uses
  br i1 %i.ho, label %bb.bi, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h345c2bfb50fa5b09E.exit.i.i", !prof !10

bb.bi:                                            ; preds = %.noexc61.i
  %i.hq = load i64, ptr %i.ek, align 8, !noalias !327
  invoke void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %i.hp, i64 %i.hq) #19
          to label %.noexc62.i unwind label %.loopexit.split-lp176.i, !noalias !314

.noexc62.i:                                       ; preds = %bb.bi
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h345c2bfb50fa5b09E.exit.i.i": ; preds = %.noexc61.i
  %i.hr = load ptr, ptr %i.ek, align 8, !noalias !327, !nonnull !4, !noundef !4
  %i.hs = icmp ule i64 %i.hm, %i.hp
  call void @llvm.assume(i1 %i.hs)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cj), !noalias !327
  store i64 %i.hp, ptr %i.cl, align 8, !noalias !327
  store ptr %i.hr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !327
  store i64 0, ptr %.sroa.514.0..sroa_idx.i.i, align 8, !noalias !327
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ck), !noalias !327
  invoke void @_ZN4core3str7pattern11StrSearcher3new17h06c723456276c09fE(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(address) dereferenceable(104) %i.ck, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.hl, i64 noundef %i.hm, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @28, i64 noundef 3)
          to label %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd10808bddb3d13e7E.exit.i.i" unwind label %bb.bj, !noalias !328

.loopexit164.i:                                   ; preds = %.loopexit164.split.i.loopexit, %.loopexit164.split.i.loopexit.split-lp, %.loopexit.split-lp.i, %.loopexit164.split.us.i, %bb.bj
  %.pn.i.i = phi { ptr, i32 } [ %i.ht, %bb.bj ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ], [ %lpad.loopexit.us.i, %.loopexit164.split.us.i ], [ %lpad.loopexit, %.loopexit164.split.i.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit164.split.i.loopexit.split-lp ]
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd440d1522a579274E"(ptr noalias noundef align 8 dereferenceable(24) %i.cl) #16
          to label %.body63.i unwind label %bb.dc, !noalias !328

bb.bj:                                            ; preds = %.loopexit162.split.us.i, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h345c2bfb50fa5b09E.exit.i.i"
  %i.ht = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit164.i

"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd10808bddb3d13e7E.exit.i.i": ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h345c2bfb50fa5b09E.exit.i.i"
  %.sroa.0116.0.copyload.i = load i64, ptr %i.ck, align 8, !noalias !327
  %.sroa.4117.0.copyload.i = load i64, ptr %.sroa.4117.0..sroa_idx.i, align 8, !noalias !327 ; 27 uses
  %.sroa.8119.0.copyload.i = load i64, ptr %.sroa.8119.0..sroa_idx.i, align 8, !noalias !327 ; 5 uses
  %.sroa.16.0.copyload.i = load i64, ptr %.sroa.16.0..sroa_idx.i, align 8, !noalias !327 ; 2 uses
  %.sroa.18.0.copyload.i = load i64, ptr %.sroa.18.0..sroa_idx.i, align 8, !noalias !327
  %.sroa.30123.0.copyload.i = load i64, ptr %.sroa.30123.0..sroa_idx.i, align 8, !noalias !327
  %.sroa.35124.0.copyload.i = load ptr, ptr %.sroa.35124.0..sroa_idx.i, align 8, !noalias !327 ; 17 uses
  %.sroa.37.0.copyload.i = load i64, ptr %.sroa.37.0..sroa_idx.i, align 8, !noalias !327 ; 42 uses
  %.sroa.39.0.copyload.i = load ptr, ptr %.sroa.39.0..sroa_idx.i, align 8, !noalias !327 ; 5 uses
  %.sroa.40.0.copyload.i = load i64, ptr %.sroa.40.0..sroa_idx.i, align 8, !noalias !327 ; 13 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ck), !noalias !327
  %i.hu = trunc nuw i64 %.sroa.0116.0.copyload.i to i1
  %i.hv = add i64 %.sroa.40.0.copyload.i, -1      ; 3 uses
  br i1 %i.hu, label %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd10808bddb3d13e7E.exit.i.split.us.i", label %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd10808bddb3d13e7E.exit.i.split.i"

"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd10808bddb3d13e7E.exit.i.split.us.i": ; preds = %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd10808bddb3d13e7E.exit.i.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.35124.0.copyload.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.39.0.copyload.i) ]
  %i.hw = sub i64 %.sroa.40.0.copyload.i, %.sroa.8119.0.copyload.i
  %umax49.i.us.i = call i64 @llvm.umax.i64(i64 %.sroa.4117.0.copyload.i, i64 %.sroa.40.0.copyload.i)
  %i.hx = add i64 %.sroa.4117.0.copyload.i, -1    ; 2 uses
  %.first_iter.i = icmp ult i64 %i.hx, %.sroa.40.0.copyload.i
  %.first_iter.i.fr = freeze i1 %.first_iter.i
  %.not160.us.i = icmp eq i64 %.sroa.4117.0.copyload.i, 0
  %invariant.op = sub i64 1, %.sroa.4117.0.copyload.i
  %exitcond.not.i.us.i572.not = icmp ult i64 %.sroa.4117.0.copyload.i, %.sroa.40.0.copyload.i
  %invariant.op816 = sub i64 1, %.sroa.4117.0.copyload.i
  %.not160.us.i.us575 = icmp eq i64 %.sroa.4117.0.copyload.i, 0
  br label %bb.bk

bb.bk:                                            ; preds = %bb.ca, %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd10808bddb3d13e7E.exit.i.split.us.i"
  %.sroa.30123.0.us.i = phi i64 [ %.sroa.30123.0.copyload.i, %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd10808bddb3d13e7E.exit.i.split.us.i" ], [ %.sroa.30123.1.us.i, %bb.ca ] ; 2 uses
  %.sroa.18.0.us.i = phi i64 [ %.sroa.18.0.copyload.i, %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd10808bddb3d13e7E.exit.i.split.us.i" ], [ %.sroa.11.1.us.i, %bb.ca ] ; 3 uses
  %.sroa.06.0.i.us.i = phi i64 [ 0, %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd10808bddb3d13e7E.exit.i.split.us.i" ], [ %.sroa.11.1.us.i, %bb.ca ] ; 5 uses
  %i.hy = icmp eq i64 %.sroa.30123.0.us.i, -1
  %i.hz = add i64 %.sroa.18.0.us.i, %i.hv         ; 3 uses
  %i.ia = icmp ult i64 %i.hz, %.sroa.37.0.copyload.i ; 2 uses
  br i1 %i.hy, label %bb.bu, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  call void @llvm.experimental.noalias.scope.decl(metadata !329)
  call void @llvm.experimental.noalias.scope.decl(metadata !330)
  br i1 %i.ia, label %.lr.ph.i90.us.i, label %.loopexit162.split.us.i

.lr.ph.i90.us.i:                                  ; preds = %bb.bl, %.sink.split.i.us.i
  %i.ib = phi i64 [ %.sink.i.us.i, %.sink.split.i.us.i ], [ %.sroa.30123.0.us.i, %bb.bl ] ; 3 uses
  %i.ic = phi i64 [ %i.jf, %.sink.split.i.us.i ], [ %i.hz, %bb.bl ]
  %i.id = phi i64 [ %.ph71.i.us.i, %.sink.split.i.us.i ], [ %.sroa.18.0.us.i, %bb.bl ] ; 8 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %.sroa.35124.0.copyload.i, i64 %i.ic
  %i.if = load i8, ptr %i.ie, align 1, !alias.scope !329, !noalias !331, !noundef !4
  %i.ig = and i8 %i.if, 63
  %i.ih = zext nneg i8 %i.ig to i64
  %i.ii = shl nuw i64 1, %i.ih
  %i.ij = and i64 %i.ii, %.sroa.16.0.copyload.i
  %i.ik = icmp eq i64 %i.ij, 0
  br i1 %i.ik, label %bb.bt, label %bb.bm

bb.bm:                                            ; preds = %.lr.ph.i90.us.i
  %.sroa.0.0.i.i92.us.i = call i64 @llvm.umax.i64(i64 %i.ib, i64 %.sroa.4117.0.copyload.i) ; 4 uses
  %umax49.i93.us.i = call i64 @llvm.umax.i64(i64 %.sroa.0.0.i.i92.us.i, i64 %.sroa.40.0.copyload.i)
  %exitcond.not.i95.us.i567.not = icmp ult i64 %.sroa.0.0.i.i92.us.i, %.sroa.40.0.copyload.i
  br i1 %exitcond.not.i95.us.i567.not, label %.lr.ph, label %.preheader161.us.i.preheader

bb.bn:                                            ; preds = %bb.bo
  %i.il = add i64 %.sroa.02.0.i94.us.i568, 1      ; 2 uses
  %exitcond.not.i95.us.i = icmp eq i64 %i.il, %umax49.i93.us.i
  br i1 %exitcond.not.i95.us.i, label %.preheader161.us.i.preheader, label %.lr.ph

.preheader161.us.i.preheader:                     ; preds = %bb.bn, %bb.bm
  %i.im = icmp ult i64 %i.ib, %.sroa.4117.0.copyload.i
  br i1 %i.im, label %.lr.ph570, label %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h016e67ebd8b5e350E.exit.us.i"

.lr.ph:                                           ; preds = %bb.bm, %bb.bn
  %.sroa.02.0.i94.us.i568 = phi i64 [ %i.il, %bb.bn ], [ %.sroa.0.0.i.i92.us.i, %bb.bm ] ; 4 uses
  %i.in = add i64 %.sroa.02.0.i94.us.i568, %i.id  ; 2 uses
  %i.io = icmp ult i64 %i.in, %.sroa.37.0.copyload.i
  br i1 %i.io, label %bb.bo, label %.split.us.i

bb.bo:                                            ; preds = %.lr.ph
  %i.ip = getelementptr inbounds nuw i8, ptr %.sroa.39.0.copyload.i, i64 %.sroa.02.0.i94.us.i568
  %i.iq = load i8, ptr %i.ip, align 1, !alias.scope !330, !noalias !332, !noundef !4
  %i.ir = getelementptr inbounds nuw i8, ptr %.sroa.35124.0.copyload.i, i64 %i.in
  %i.is = load i8, ptr %i.ir, align 1, !alias.scope !329, !noalias !331, !noundef !4
  %.not21.i97.us.i = icmp eq i8 %i.iq, %i.is
  br i1 %.not21.i97.us.i, label %bb.bn, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %.reass.i.reass.reass = add i64 %i.id, %invariant.op
  %i.it = add i64 %.reass.i.reass.reass, %.sroa.02.0.i94.us.i568
  br label %.sink.split.i.us.i

.preheader161.us.i:                               ; preds = %bb.br
  %i.iu = icmp ult i64 %i.ib, %i.iv
  br i1 %i.iu, label %.lr.ph570, label %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h016e67ebd8b5e350E.exit.us.i"

.lr.ph570:                                        ; preds = %.preheader161.us.i.preheader, %.preheader161.us.i
  %.sroa.2.0.i98.us.i569 = phi i64 [ %i.iv, %.preheader161.us.i ], [ %.sroa.4117.0.copyload.i, %.preheader161.us.i.preheader ]
  %i.iv = add i64 %.sroa.2.0.i98.us.i569, -1      ; 6 uses
  %i.iw = icmp ult i64 %i.iv, %.sroa.40.0.copyload.i
  br i1 %i.iw, label %bb.bq, label %.split310.us.invoke.i

bb.bq:                                            ; preds = %.lr.ph570
  %i.ix = add i64 %i.iv, %i.id                    ; 3 uses
  %i.iy = icmp ult i64 %i.ix, %.sroa.37.0.copyload.i
  br i1 %i.iy, label %bb.br, label %.split310.us.invoke.i

bb.br:                                            ; preds = %bb.bq
  %i.iz = getelementptr inbounds nuw i8, ptr %.sroa.39.0.copyload.i, i64 %i.iv
  %i.ja = load i8, ptr %i.iz, align 1, !alias.scope !330, !noalias !332, !noundef !4
  %i.jb = getelementptr inbounds nuw i8, ptr %.sroa.35124.0.copyload.i, i64 %i.ix
  %i.jc = load i8, ptr %i.jb, align 1, !alias.scope !329, !noalias !331, !noundef !4
  %.not.i99.us.i = icmp eq i8 %i.ja, %i.jc
  br i1 %.not.i99.us.i, label %.preheader161.us.i, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.jd = add i64 %i.id, %.sroa.8119.0.copyload.i
  br label %.sink.split.i.us.i

bb.bt:                                            ; preds = %.lr.ph.i90.us.i
  %i.je = add i64 %i.id, %.sroa.40.0.copyload.i
  br label %.sink.split.i.us.i

.sink.split.i.us.i:                               ; preds = %bb.bt, %bb.bs, %bb.bp
  %.sink.i.us.i = phi i64 [ %i.hw, %bb.bs ], [ 0, %bb.bp ], [ 0, %bb.bt ]
  %.ph71.i.us.i = phi i64 [ %i.jd, %bb.bs ], [ %i.it, %bb.bp ], [ %i.je, %bb.bt ] ; 2 uses
  %i.jf = add i64 %.ph71.i.us.i, %i.hv            ; 2 uses
  %i.jg = icmp ult i64 %i.jf, %.sroa.37.0.copyload.i
  br i1 %i.jg, label %.lr.ph.i90.us.i, label %.loopexit162.split.us.i

bb.bu:                                            ; preds = %bb.bk
  call void @llvm.experimental.noalias.scope.decl(metadata !333)
  call void @llvm.experimental.noalias.scope.decl(metadata !334)
  br i1 %i.ia, label %.lr.ph.i82.us.i, label %.loopexit162.split.us.i

.lr.ph.i82.us.i:                                  ; preds = %bb.bu, %bb.bz
  %i.jh = phi i64 [ %i.ki, %bb.bz ], [ %i.hz, %bb.bu ]
  %i.ji = phi i64 [ %i.kh, %bb.bz ], [ %.sroa.18.0.us.i, %bb.bu ] ; 9 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %.sroa.35124.0.copyload.i, i64 %i.jh
  %i.jk = load i8, ptr %i.jj, align 1, !alias.scope !333, !noalias !335, !noundef !4
  %i.jl = and i8 %i.jk, 63
  %i.jm = zext nneg i8 %i.jl to i64
  %i.jn = shl nuw i64 1, %i.jm
  %i.jo = and i64 %i.jn, %.sroa.16.0.copyload.i
  %i.jp = icmp eq i64 %i.jo, 0
  br i1 %i.jp, label %bb.by, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %.lr.ph.i82.us.i
  br i1 %exitcond.not.i.us.i572.not, label %.lr.ph574, label %.preheader.us.i.preheader

.preheader.i:                                     ; preds = %bb.bw
  %i.jq = add i64 %.sroa.02.0.i.us.i573, 1        ; 2 uses
  %exitcond.not.i.us.i = icmp eq i64 %i.jq, %umax49.i.us.i
  br i1 %exitcond.not.i.us.i, label %.preheader.us.i.preheader, label %.lr.ph574

.preheader.us.i.preheader:                        ; preds = %.preheader.i, %.preheader.i.preheader
  br i1 %.first_iter.i.fr, label %.preheader.us.i.us.preheader, label %.preheader.us.i.preheader.split

.preheader.us.i.us.preheader:                     ; preds = %.preheader.us.i.preheader
  br i1 %.not160.us.i.us575, label %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h016e67ebd8b5e350E.exit.us.i", label %.lr.ph577

.preheader.us.i.us:                               ; preds = %bb.bv
  %.not160.us.i.us = icmp eq i64 %i.jr, 0
  br i1 %.not160.us.i.us, label %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h016e67ebd8b5e350E.exit.us.i", label %.lr.ph577

.lr.ph577:                                        ; preds = %.preheader.us.i.us.preheader, %.preheader.us.i.us
  %.sroa.2.0.i.us.i.us576 = phi i64 [ %i.jr, %.preheader.us.i.us ], [ %.sroa.4117.0.copyload.i, %.preheader.us.i.us.preheader ]
  %i.jr = add i64 %.sroa.2.0.i.us.i.us576, -1     ; 4 uses
  %i.js = add i64 %i.jr, %i.ji                    ; 3 uses
  %i.jt = icmp ult i64 %i.js, %.sroa.37.0.copyload.i
  br i1 %i.jt, label %bb.bv, label %.split310.us.invoke.i

bb.bv:                                            ; preds = %.lr.ph577
  %i.ju = getelementptr inbounds nuw i8, ptr %.sroa.39.0.copyload.i, i64 %i.jr
  %i.jv = load i8, ptr %i.ju, align 1, !alias.scope !334, !noalias !336, !noundef !4
  %i.jw = getelementptr inbounds nuw i8, ptr %.sroa.35124.0.copyload.i, i64 %i.js
  %i.jx = load i8, ptr %i.jw, align 1, !alias.scope !333, !noalias !335, !noundef !4
  %.not.i83.us.i.us = icmp eq i8 %i.jv, %i.jx
  br i1 %.not.i83.us.i.us, label %.preheader.us.i.us, label %.split.us

.split.us:                                        ; preds = %bb.bv
  %i.jy = add i64 %i.ji, %.sroa.8119.0.copyload.i
  br label %bb.bz

.preheader.us.i.preheader.split:                  ; preds = %.preheader.us.i.preheader
  br i1 %.not160.us.i, label %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h016e67ebd8b5e350E.exit.us.i", label %.split310.us.invoke.i

.lr.ph574:                                        ; preds = %.preheader.i.preheader, %.preheader.i
  %.sroa.02.0.i.us.i573 = phi i64 [ %i.jq, %.preheader.i ], [ %.sroa.4117.0.copyload.i, %.preheader.i.preheader ] ; 4 uses
  %i.jz = add i64 %.sroa.02.0.i.us.i573, %i.ji    ; 2 uses
  %i.ka = icmp ult i64 %i.jz, %.sroa.37.0.copyload.i
  br i1 %i.ka, label %bb.bw, label %.split305.us.i
end_hunk_0
begin_hunk_1_@_ZN9configure3aqt19build_and_check_aqt17h5fcb78e7430b2d49E:bb.a
.loopexit164.split.us.i:                          ; preds = %bb.ca, %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h016e67ebd8b5e350E.exit.us.i"
  %lpad.loopexit.us.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit164.i

"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd10808bddb3d13e7E.exit.i.split.i": ; preds = %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd10808bddb3d13e7E.exit.i.i"
  %i.km = and i64 %.sroa.8119.0.copyload.i, 65536
  %.not.i = icmp eq i64 %i.km, 0
  br i1 %.not.i, label %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd10808bddb3d13e7E.exit.i.split.split.us.i", label %.loopexit162.split.us.i

"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd10808bddb3d13e7E.exit.i.split.split.us.i": ; preds = %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd10808bddb3d13e7E.exit.i.split.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.35124.0.copyload.i) ]
  %i.kn = trunc i64 %.sroa.8119.0.copyload.i to i1 ; 2 uses
  %i.ko = icmp eq i64 %.sroa.4117.0.copyload.i, 0
  br i1 %i.ko, label %bb.cd, label %bb.cb

bb.cb:                                            ; preds = %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd10808bddb3d13e7E.exit.i.split.split.us.i"
  %.not.i.i.i.us.peel.i.peel = icmp ult i64 %.sroa.4117.0.copyload.i, %.sroa.37.0.copyload.i
  br i1 %.not.i.i.i.us.peel.i.peel, label %bb.cc, label %.split.i.i.i.us.peel.i.peel

.split.i.i.i.us.peel.i.peel:                      ; preds = %bb.cb
  %i.kp = icmp eq i64 %.sroa.4117.0.copyload.i, %.sroa.37.0.copyload.i
  br i1 %i.kp, label %bb.cd, label %.split.us330.i

bb.cc:                                            ; preds = %bb.cb
  %i.kq = getelementptr inbounds nuw i8, ptr %.sroa.35124.0.copyload.i, i64 %.sroa.4117.0.copyload.i
  %i.kr = load i8, ptr %i.kq, align 1, !alias.scope !337, !noalias !338, !noundef !4
  %i.ks = icmp sgt i8 %i.kr, -65
  br i1 %i.ks, label %bb.cd, label %.split.us330.i

bb.cd:                                            ; preds = %bb.cc, %.split.i.i.i.us.peel.i.peel, %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd10808bddb3d13e7E.exit.i.split.split.us.i"
  %i.kt = getelementptr inbounds nuw i8, ptr %.sroa.35124.0.copyload.i, i64 %.sroa.4117.0.copyload.i ; 4 uses
  %i.ku = icmp samesign eq i64 %.sroa.4117.0.copyload.i, %.sroa.37.0.copyload.i
  br i1 %i.ku, label %.loopexit.i.peel, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.kv = load i8, ptr %i.kt, align 1, !noalias !339, !noundef !4 ; 5 uses
  %i.kw = icmp sgt i8 %i.kv, -1
  br i1 %i.kw, label %bb.cf, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.us.peel.i.peel"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.us.peel.i.peel": ; preds = %bb.ce
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kt, i64 1
  %i.ky = and i8 %i.kv, 31
  %i.kz = zext nneg i8 %i.ky to i32               ; 3 uses
  %i.la = add nuw nsw i64 %.sroa.4117.0.copyload.i, 1
  %i.lb = icmp samesign ne i64 %i.la, %.sroa.37.0.copyload.i
  call void @llvm.assume(i1 %i.lb), !noalias !340
  %i.lc = load i8, ptr %i.kx, align 1, !noalias !339, !noundef !4
  %i.ld = shl nuw nsw i32 %i.kz, 6
  %i.le = and i8 %i.lc, 63
  %i.lf = zext nneg i8 %i.le to i32               ; 2 uses
  %i.lg = or disjoint i32 %i.ld, %i.lf
  %i.lh = icmp samesign ugt i8 %i.kv, -33
  br i1 %i.lh, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.us.peel.i.peel", label %bb.cg

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.us.peel.i.peel": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.us.peel.i.peel"
  %i.li = getelementptr inbounds nuw i8, ptr %i.kt, i64 2
  %i.lj = add nuw nsw i64 %.sroa.4117.0.copyload.i, 2
  %i.lk = icmp samesign ne i64 %i.lj, %.sroa.37.0.copyload.i
  call void @llvm.assume(i1 %i.lk), !noalias !340
  %i.ll = load i8, ptr %i.li, align 1, !noalias !339, !noundef !4
  %i.lm = shl nuw nsw i32 %i.lf, 6
  %i.ln = and i8 %i.ll, 63
  %i.lo = zext nneg i8 %i.ln to i32
  %i.lp = or disjoint i32 %i.lm, %i.lo            ; 2 uses
  %i.lq = shl nuw nsw i32 %i.kz, 12
  %i.lr = or disjoint i32 %i.lp, %i.lq
  %i.ls = icmp samesign ugt i8 %i.kv, -17
  br i1 %i.ls, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i.us.peel.i.peel", label %bb.cg

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i.us.peel.i.peel": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.us.peel.i.peel"
  %i.lt = getelementptr inbounds nuw i8, ptr %i.kt, i64 3
  %i.lu = add nuw nsw i64 %.sroa.4117.0.copyload.i, 3
  %i.lv = icmp samesign ne i64 %i.lu, %.sroa.37.0.copyload.i
  call void @llvm.assume(i1 %i.lv), !noalias !340
  %i.lw = load i8, ptr %i.lt, align 1, !noalias !339, !noundef !4
  %i.lx = shl nuw nsw i32 %i.kz, 18
  %i.ly = and i32 %i.lx, 1835008
  %i.lz = shl nuw nsw i32 %i.lp, 6
  %i.ma = and i8 %i.lw, 63
  %i.mb = zext nneg i8 %i.ma to i32
  %i.mc = or disjoint i32 %i.lz, %i.mb
  %i.md = or disjoint i32 %i.mc, %i.ly
  br label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  %i.me = zext nneg i8 %i.kv to i32
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i.us.peel.i.peel", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.us.peel.i.peel", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.us.peel.i.peel"
  %.sroa.4.0.i.ph.i.i.us.peel.i.peel = phi i32 [ %i.lr, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.us.peel.i.peel" ], [ %i.md, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i.us.peel.i.peel" ], [ %i.lg, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.us.peel.i.peel" ], [ %i.me, %bb.cf ] ; 4 uses
  %i.mf = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.us.peel.i.peel, 1114112
  call void @llvm.assume(i1 %i.mf), !noalias !340
  br i1 %i.kn, label %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h016e67ebd8b5e350E.exit.us324.i.peel", label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.mg = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.us.peel.i.peel, 128
  br i1 %i.mg, label %bb.ck, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.mh = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.us.peel.i.peel, 2048
  br i1 %i.mh, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.mi = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.us.peel.i.peel, 65536
  %..i.i.us.peel.i.peel = select i1 %i.mi, i64 3, i64 4
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci, %bb.ch
  %.sroa.01.0.i.i.us.peel.i.peel = phi i64 [ 2, %bb.ci ], [ %..i.i.us.peel.i.peel, %bb.cj ], [ 1, %bb.ch ]
  %i.mj = add i64 %.sroa.01.0.i.i.us.peel.i.peel, %.sroa.4117.0.copyload.i ; 12 uses
  %i.mk = icmp eq i64 %i.mj, 0
  br i1 %i.mk, label %bb.cn, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %.not.i.i.i.us.i.peel = icmp ult i64 %i.mj, %.sroa.37.0.copyload.i
  br i1 %.not.i.i.i.us.i.peel, label %bb.cm, label %.split.i.i.i.us.i.peel

.split.i.i.i.us.i.peel:                           ; preds = %bb.cl
  %i.ml = icmp eq i64 %i.mj, %.sroa.37.0.copyload.i
  br i1 %i.ml, label %bb.cn, label %.split.us330.i

bb.cm:                                            ; preds = %bb.cl
  %i.mm = getelementptr inbounds nuw i8, ptr %.sroa.35124.0.copyload.i, i64 %i.mj
  %i.mn = load i8, ptr %i.mm, align 1, !alias.scope !337, !noalias !338, !noundef !4
  %i.mo = icmp sgt i8 %i.mn, -65
  br i1 %i.mo, label %bb.cn, label %.split.us330.i

bb.cn:                                            ; preds = %bb.cm, %.split.i.i.i.us.i.peel, %bb.ck
  %i.mp = getelementptr inbounds nuw i8, ptr %.sroa.35124.0.copyload.i, i64 %i.mj ; 4 uses
  %i.mq = icmp samesign eq i64 %i.mj, %.sroa.37.0.copyload.i
  br i1 %i.mq, label %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h016e67ebd8b5e350E.exit.us324.i.peel", label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.mr = load i8, ptr %i.mp, align 1, !noalias !339, !noundef !4 ; 5 uses
  %i.ms = icmp sgt i8 %i.mr, -1
  br i1 %i.ms, label %bb.cp, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.us.i.peel"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.us.i.peel": ; preds = %bb.co
  %i.mt = getelementptr inbounds nuw i8, ptr %i.mp, i64 1
  %i.mu = and i8 %i.mr, 31
  %i.mv = zext nneg i8 %i.mu to i32               ; 3 uses
  %i.mw = add nuw nsw i64 %i.mj, 1
  %i.mx = icmp samesign ne i64 %i.mw, %.sroa.37.0.copyload.i
  call void @llvm.assume(i1 %i.mx), !noalias !340
  %i.my = load i8, ptr %i.mt, align 1, !noalias !339, !noundef !4
  %i.mz = shl nuw nsw i32 %i.mv, 6
  %i.na = and i8 %i.my, 63
  %i.nb = zext nneg i8 %i.na to i32               ; 2 uses
  %i.nc = or disjoint i32 %i.mz, %i.nb
  %i.nd = icmp samesign ugt i8 %i.mr, -33
  br i1 %i.nd, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.us.i.peel", label %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h016e67ebd8b5e350E.exit.us324.loopexit.loopexit.i.peel"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.us.i.peel": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.us.i.peel"
  %i.ne = getelementptr inbounds nuw i8, ptr %i.mp, i64 2
  %i.nf = add nuw nsw i64 %i.mj, 2
  %i.ng = icmp samesign ne i64 %i.nf, %.sroa.37.0.copyload.i
  call void @llvm.assume(i1 %i.ng), !noalias !340
  %i.nh = load i8, ptr %i.ne, align 1, !noalias !339, !noundef !4
  %i.ni = shl nuw nsw i32 %i.nb, 6
  %i.nj = and i8 %i.nh, 63
  %i.nk = zext nneg i8 %i.nj to i32
  %i.nl = or disjoint i32 %i.ni, %i.nk            ; 2 uses
  %i.nm = shl nuw nsw i32 %i.mv, 12
  %i.nn = or disjoint i32 %i.nl, %i.nm
  %i.no = icmp samesign ugt i8 %i.mr, -17
  br i1 %i.no, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i.us.i.peel", label %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h016e67ebd8b5e350E.exit.us324.loopexit.loopexit.i.peel"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i.us.i.peel": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.us.i.peel"
  %i.np = getelementptr inbounds nuw i8, ptr %i.mp, i64 3
  %i.nq = add nuw nsw i64 %i.mj, 3
  %i.nr = icmp samesign ne i64 %i.nq, %.sroa.37.0.copyload.i
  call void @llvm.assume(i1 %i.nr), !noalias !340
  %i.ns = load i8, ptr %i.np, align 1, !noalias !339, !noundef !4
  %i.nt = shl nuw nsw i32 %i.mv, 18
  %i.nu = and i32 %i.nt, 1835008
  %i.nv = shl nuw nsw i32 %i.nl, 6
  %i.nw = and i8 %i.ns, 63
  %i.nx = zext nneg i8 %i.nw to i32
  %i.ny = or disjoint i32 %i.nv, %i.nx
  %i.nz = or disjoint i32 %i.ny, %i.nu
  br label %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h016e67ebd8b5e350E.exit.us324.loopexit.loopexit.i.peel"

bb.cp:                                            ; preds = %bb.co
  %i.oa = zext nneg i8 %i.mr to i32
  br label %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h016e67ebd8b5e350E.exit.us324.loopexit.loopexit.i.peel"

"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h016e67ebd8b5e350E.exit.us324.loopexit.loopexit.i.peel": ; preds = %bb.cp, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i.us.i.peel", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.us.i.peel", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.us.i.peel"
  %.sroa.4.0.i.ph.i.i.us.i.peel = phi i32 [ %i.nn, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.us.i.peel" ], [ %i.nz, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i.us.i.peel" ], [ %i.nc, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.us.i.peel" ], [ %i.oa, %bb.cp ]
  %i.ob = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.us.i.peel, 1114112
  call void @llvm.assume(i1 %i.ob), !noalias !340
  br label %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h016e67ebd8b5e350E.exit.us324.i.peel"

.loopexit.i.peel:                                 ; preds = %bb.cd
  br i1 %i.kn, label %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h016e67ebd8b5e350E.exit.us324.i.peel", label %.loopexit162.split.us.i

"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h016e67ebd8b5e350E.exit.us324.i.peel": ; preds = %.loopexit.i.peel, %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h016e67ebd8b5e350E.exit.us324.loopexit.loopexit.i.peel", %bb.cn, %bb.cg
  %.sroa.4117.1.us345.i.peel = phi i64 [ %.sroa.4117.0.copyload.i, %.loopexit.i.peel ], [ %i.mj, %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h016e67ebd8b5e350E.exit.us324.loopexit.loopexit.i.peel" ], [ %.sroa.4117.0.copyload.i, %bb.cg ], [ %.sroa.37.0.copyload.i, %bb.cn ] ; 2 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %i.hl, i64 %.sroa.4117.1.us345.i.peel
  invoke void @"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17ha4fa478cf81366bcE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cl, ptr noundef nonnull readonly %i.hl, ptr noundef nonnull readonly %i.oc)
          to label %bb.cq unwind label %.loopexit164.split.i.loopexit.split-lp, !noalias !328

bb.cq:                                            ; preds = %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h016e67ebd8b5e350E.exit.us324.i.peel"
  invoke void @"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17ha4fa478cf81366bcE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cl, ptr noundef nonnull @29, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @29, i64 7))
          to label %.preheader.i.us.i unwind label %.loopexit164.split.i.loopexit.split-lp, !noalias !328

.preheader.i.us.i:                                ; preds = %bb.cq, %3
  %.sroa.4117.0.us322.i = phi i64 [ %.sroa.4117.1330.i, %3 ], [ %.sroa.4117.1.us345.i.peel, %bb.cq ] ; 13 uses
  %i.od = icmp eq i64 %.sroa.4117.0.us322.i, 0
  br i1 %i.od, label %bb.ct, label %bb.cr

bb.cr:                                            ; preds = %.preheader.i.us.i
  %.not.i.i.i.us.peel.i = icmp ult i64 %.sroa.4117.0.us322.i, %.sroa.37.0.copyload.i
  br i1 %.not.i.i.i.us.peel.i, label %bb.cs, label %.split.i.i.i.us.peel.i

.split.i.i.i.us.peel.i:                           ; preds = %bb.cr
  %i.oe = icmp eq i64 %.sroa.4117.0.us322.i, %.sroa.37.0.copyload.i
  br i1 %i.oe, label %bb.ct, label %.split.us330.i

bb.cs:                                            ; preds = %bb.cr
  %i.of = getelementptr inbounds nuw i8, ptr %.sroa.35124.0.copyload.i, i64 %.sroa.4117.0.us322.i
  %i.og = load i8, ptr %i.of, align 1, !alias.scope !337, !noalias !338, !noundef !4
  %i.oh = icmp sgt i8 %i.og, -65
  br i1 %i.oh, label %bb.ct, label %.split.us330.i

bb.ct:                                            ; preds = %bb.cs, %.split.i.i.i.us.peel.i, %.preheader.i.us.i
  %i.oi = getelementptr inbounds nuw i8, ptr %.sroa.35124.0.copyload.i, i64 %.sroa.4117.0.us322.i ; 4 uses
  %i.oj = icmp samesign eq i64 %.sroa.4117.0.us322.i, %.sroa.37.0.copyload.i
  br i1 %i.oj, label %.loopexit162.split.us.i, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.ok = load i8, ptr %i.oi, align 1, !noalias !339, !noundef !4 ; 4 uses
  %i.ol = icmp sgt i8 %i.ok, -1
  br i1 %i.ol, label %.thread, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.us.peel.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.us.peel.i": ; preds = %bb.cu
  %i.om = getelementptr inbounds nuw i8, ptr %i.oi, i64 1
  %i.on = and i8 %i.ok, 31
  %i.oo = zext nneg i8 %i.on to i32               ; 3 uses
  %i.op = add nuw nsw i64 %.sroa.4117.0.us322.i, 1
  %i.oq = icmp samesign ne i64 %i.op, %.sroa.37.0.copyload.i
  call void @llvm.assume(i1 %i.oq), !noalias !340
  %i.or = load i8, ptr %i.om, align 1, !noalias !339, !noundef !4
  %i.os = shl nuw nsw i32 %i.oo, 6
  %i.ot = and i8 %i.or, 63
  %i.ou = zext nneg i8 %i.ot to i32               ; 2 uses
  %i.ov = or disjoint i32 %i.os, %i.ou
  %i.ow = icmp samesign ugt i8 %i.ok, -33
  br i1 %i.ow, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.us.peel.i", label %bb.cv

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.us.peel.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.us.peel.i"
  %i.ox = getelementptr inbounds nuw i8, ptr %i.oi, i64 2
  %i.oy = add nuw nsw i64 %.sroa.4117.0.us322.i, 2
  %i.oz = icmp samesign ne i64 %i.oy, %.sroa.37.0.copyload.i
  call void @llvm.assume(i1 %i.oz), !noalias !340
  %i.pa = load i8, ptr %i.ox, align 1, !noalias !339, !noundef !4
  %i.pb = shl nuw nsw i32 %i.ou, 6
  %i.pc = and i8 %i.pa, 63
  %i.pd = zext nneg i8 %i.pc to i32
  %i.pe = or disjoint i32 %i.pb, %i.pd            ; 2 uses
  %i.pf = shl nuw nsw i32 %i.oo, 12
  %i.pg = or disjoint i32 %i.pe, %i.pf
  %i.ph = icmp samesign ugt i8 %i.ok, -17
  br i1 %i.ph, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i.us.peel.i", label %bb.cv

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i.us.peel.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.us.peel.i"
  %i.pi = getelementptr inbounds nuw i8, ptr %i.oi, i64 3
  %i.pj = add nuw nsw i64 %.sroa.4117.0.us322.i, 3
  %i.pk = icmp samesign ne i64 %i.pj, %.sroa.37.0.copyload.i
  call void @llvm.assume(i1 %i.pk), !noalias !340
  %i.pl = load i8, ptr %i.pi, align 1, !noalias !339, !noundef !4
  %i.pm = shl nuw nsw i32 %i.oo, 18
  %i.pn = and i32 %i.pm, 1835008
  %i.po = shl nuw nsw i32 %i.pe, 6
  %i.pp = and i8 %i.pl, 63
  %i.pq = zext nneg i8 %i.pp to i32
  %i.pr = or disjoint i32 %i.po, %i.pq
  %i.ps = or disjoint i32 %i.pr, %i.pn
  br label %bb.cv

bb.cv:                                            ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.us.peel.i", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.us.peel.i", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i.us.peel.i"
  %.sroa.4.0.i.ph.i.i.us.peel.i = phi i32 [ %i.pg, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.us.peel.i" ], [ %i.ps, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i.us.peel.i" ], [ %i.ov, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.us.peel.i" ] ; 4 uses
  %i.pt = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.us.peel.i, 1114112
  call void @llvm.assume(i1 %i.pt), !noalias !340
  %i.pu = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.us.peel.i, 128
  br i1 %i.pu, label %.thread, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.pv = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.us.peel.i, 2048
  br i1 %i.pv, label %.thread, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.pw = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.us.peel.i, 65536
  %..i.i.us.peel.i = select i1 %i.pw, i64 3, i64 4
  br label %.thread

.thread:                                          ; preds = %bb.cu, %bb.cx, %bb.cw, %bb.cv
  %.sroa.01.0.i.i.us.peel.i = phi i64 [ 2, %bb.cw ], [ %..i.i.us.peel.i, %bb.cx ], [ 1, %bb.cv ], [ 1, %bb.cu ]
  %i.px = add i64 %.sroa.01.0.i.i.us.peel.i, %.sroa.4117.0.us322.i ; 15 uses
  %i.py = icmp eq i64 %i.px, 0
  br i1 %i.py, label %bb.da, label %bb.cy

bb.cy:                                            ; preds = %.thread
  %.not.i.i.i.us.i = icmp ult i64 %i.px, %.sroa.37.0.copyload.i
  br i1 %.not.i.i.i.us.i, label %bb.cz, label %.split.i.i.i.us.i

.split.i.i.i.us.i:                                ; preds = %bb.cy
  %i.pz = icmp eq i64 %i.px, %.sroa.37.0.copyload.i
  br i1 %i.pz, label %bb.da, label %.split.us330.i

bb.cz:                                            ; preds = %bb.cy
  %i.qa = getelementptr inbounds nuw i8, ptr %.sroa.35124.0.copyload.i, i64 %i.px
  %i.qb = load i8, ptr %i.qa, align 1, !alias.scope !337, !noalias !338, !noundef !4
  %i.qc = icmp sgt i8 %i.qb, -65
  br i1 %i.qc, label %bb.da, label %.split.us330.i

bb.da:                                            ; preds = %bb.cz, %.split.i.i.i.us.i, %.thread
  %i.qd = icmp samesign eq i64 %i.px, %.sroa.37.0.copyload.i
  br i1 %i.qd, label %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h016e67ebd8b5e350E.exit.i", label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.qe = getelementptr inbounds nuw i8, ptr %.sroa.35124.0.copyload.i, i64 %i.px
  %i.qf = load i8, ptr %i.qe, align 1, !noalias !339, !noundef !4 ; 3 uses
  %i.qg = icmp sgt i8 %i.qf, -1
  br i1 %i.qg, label %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h016e67ebd8b5e350E.exit.i", label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.us.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.us.i": ; preds = %bb.db
  %i.qh = add nuw nsw i64 %i.px, 1
  %i.qi = icmp samesign ne i64 %i.qh, %.sroa.37.0.copyload.i
  call void @llvm.assume(i1 %i.qi), !noalias !340
  %i.qj = icmp samesign ugt i8 %i.qf, -33
  br i1 %i.qj, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.us.i", label %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h016e67ebd8b5e350E.exit.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.us.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.us.i"
  %i.qk = add nuw nsw i64 %i.px, 2
  %i.ql = icmp samesign ne i64 %i.qk, %.sroa.37.0.copyload.i
  call void @llvm.assume(i1 %i.ql), !noalias !340
  %i.qm = icmp samesign ugt i8 %i.qf, -17
  br i1 %i.qm, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i.us.i", label %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h016e67ebd8b5e350E.exit.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i.us.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.us.i"
  %i.qn = add nuw nsw i64 %i.px, 3
  %i.qo = icmp samesign ne i64 %i.qn, %.sroa.37.0.copyload.i
  call void @llvm.assume(i1 %i.qo), !noalias !340
  br label %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h016e67ebd8b5e350E.exit.i"

.split.us330.i:                                   ; preds = %bb.cm, %.split.i.i.i.us.i.peel, %bb.cc, %.split.i.i.i.us.peel.i.peel, %bb.cz, %.split.i.i.i.us.i, %bb.cs, %.split.i.i.i.us.peel.i
  %.sroa.4117.1.us.lcssa.i = phi i64 [ %i.px, %bb.cz ], [ %i.px, %.split.i.i.i.us.i ], [ %.sroa.4117.0.us322.i, %.split.i.i.i.us.peel.i ], [ %.sroa.4117.0.us322.i, %bb.cs ], [ %.sroa.4117.0.copyload.i, %.split.i.i.i.us.peel.i.peel ], [ %.sroa.4117.0.copyload.i, %bb.cc ], [ %i.mj, %.split.i.i.i.us.i.peel ], [ %i.mj, %bb.cm ]
  invoke void @_ZN4core3str16slice_error_fail17h9e3908d5d4865c14E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.35124.0.copyload.i, i64 noundef %.sroa.37.0.copyload.i, i64 noundef %.sroa.4117.1.us.lcssa.i, i64 noundef %.sroa.37.0.copyload.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #19
          to label %.noexc77.i unwind label %.loopexit.split-lp.i, !noalias !314

.noexc77.i:                                       ; preds = %.split.us330.i
  unreachable

.split.us.i:                                      ; preds = %.lr.ph
  %i.qp = add i64 %i.id, %.sroa.0.0.i.i92.us.i
  %umax.i96.i = call i64 @llvm.umax.i64(i64 %.sroa.37.0.copyload.i, i64 %i.qp)
  br label %.split310.us.invoke.i

.split310.us.invoke.i:                            ; preds = %.preheader.us.i.preheader.split, %bb.bq, %.lr.ph570, %.lr.ph577, %.split305.us.i, %.split.us.i
  %i.qq = phi i64 [ %umax.i96.i, %.split.us.i ], [ %i.js, %.lr.ph577 ], [ %umax.i.i, %.split305.us.i ], [ %i.ix, %bb.bq ], [ %i.iv, %.lr.ph570 ], [ %i.hx, %.preheader.us.i.preheader.split ]
  %i.qr = phi i64 [ %.sroa.37.0.copyload.i, %.split.us.i ], [ %.sroa.37.0.copyload.i, %.lr.ph577 ], [ %.sroa.37.0.copyload.i, %.split305.us.i ], [ %.sroa.37.0.copyload.i, %bb.bq ], [ %.sroa.40.0.copyload.i, %.lr.ph570 ], [ %.sroa.40.0.copyload.i, %.preheader.us.i.preheader.split ]
  %i.qs = phi ptr [ @3, %.split.us.i ], [ @2, %.lr.ph577 ], [ @3, %.split305.us.i ], [ @2, %bb.bq ], [ @1, %.lr.ph570 ], [ @1, %.preheader.us.i.preheader.split ]
  invoke void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %i.qq, i64 noundef %i.qr, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.qs) #19
          to label %.split310.us.cont.i unwind label %.loopexit.split-lp.i, !noalias !314

.split310.us.cont.i:                              ; preds = %.split310.us.invoke.i
  unreachable

.split305.us.i:                                   ; preds = %.lr.ph574
  %i.qt = add i64 %i.ji, %.sroa.4117.0.copyload.i
  %umax.i.i = call i64 @llvm.umax.i64(i64 %.sroa.37.0.copyload.i, i64 %i.qt)
  br label %.split310.us.invoke.i

.loopexit164.split.i.loopexit:                    ; preds = %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h016e67ebd8b5e350E.exit.i", %3
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit164.i

.loopexit164.split.i.loopexit.split-lp:           ; preds = %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h016e67ebd8b5e350E.exit.us324.i.peel", %bb.cq
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit164.i

.loopexit.split-lp.i:                             ; preds = %.split310.us.invoke.i, %.split.us330.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit164.i

"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h016e67ebd8b5e350E.exit.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.us.i", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.us.i", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i.us.i", %bb.db, %bb.da
  %.sroa.4117.1330.i = phi i64 [ %.sroa.37.0.copyload.i, %bb.da ], [ %i.px, %bb.db ], [ %i.px, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i.us.i" ], [ %i.px, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.us.i" ], [ %i.px, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.us.i" ] ; 2 uses
  %1 = getelementptr inbounds nuw i8, ptr %i.hl, i64 %.sroa.4117.0.us322.i
  %2 = getelementptr inbounds nuw i8, ptr %i.hl, i64 %.sroa.4117.1330.i
  invoke void @"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17ha4fa478cf81366bcE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cl, ptr noundef nonnull readonly %1, ptr noundef nonnull readonly %2)
          to label %3 unwind label %.loopexit164.split.i.loopexit, !noalias !328

.loopexit162.split.us.i:                          ; preds = %bb.ct, %bb.bu, %bb.bl, %.sink.split.i.us.i, %bb.bz, %.loopexit.i.peel, %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd10808bddb3d13e7E.exit.i.split.i"
  %.sroa.06.0.i220.i = phi i64 [ %.sroa.06.0.i.us.i, %.sink.split.i.us.i ], [ 0, %.loopexit.i.peel ], [ 0, %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd10808bddb3d13e7E.exit.i.split.i" ], [ %.sroa.06.0.i.us.i, %bb.bz ], [ %.sroa.06.0.i.us.i, %bb.bu ], [ %.sroa.06.0.i.us.i, %bb.bl ], [ %.sroa.37.0.copyload.i, %bb.ct ]
  %i.qu = getelementptr inbounds nuw i8, ptr %i.hl, i64 %.sroa.06.0.i220.i
  %i.qv = getelementptr inbounds nuw i8, ptr %i.hl, i64 %i.hm
  invoke void @"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17ha4fa478cf81366bcE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cl, ptr noundef nonnull readonly %i.qu, ptr noundef nonnull readonly %i.qv)
          to label %bb.dd unwind label %bb.bj, !noalias !328

3:                                                ; preds = %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h016e67ebd8b5e350E.exit.i"
  invoke void @"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17ha4fa478cf81366bcE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cl, ptr noundef nonnull @29, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @29, i64 7))
          to label %.preheader.i.us.i unwind label %.loopexit164.split.i.loopexit, !noalias !328, !llvm.loop !250

bb.dc:                                            ; preds = %.loopexit164.i
  %i.qw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #17, !noalias !328
  unreachable

.loopexit175.i:                                   ; preds = %bb.bh
  %lpad.loopexit177.i = landingpad { ptr, i32 }
          cleanup
  br label %.body63.i

.loopexit.split-lp176.i:                          ; preds = %bb.bi
  %lpad.loopexit.split-lp178.i = landingpad { ptr, i32 }
          cleanup
  br label %.body63.i

.body63.i:                                        ; preds = %bb.df, %.loopexit.split-lp176.i, %.loopexit175.i, %.loopexit164.i
  %eh.lpad-body64.i = phi { ptr, i32 } [ %.pn.i.i, %.loopexit164.i ], [ %i.ra, %bb.df ], [ %lpad.loopexit177.i, %.loopexit175.i ], [ %lpad.loopexit.split-lp178.i, %.loopexit.split-lp176.i ]
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd440d1522a579274E"(ptr noalias noundef align 8 dereferenceable(24) %i.dg) #16
          to label %.body67.i unwind label %bb.bd, !noalias !314

bb.dd:                                            ; preds = %.loopexit162.split.us.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.de, ptr noundef nonnull align 8 dereferenceable(24) %i.cl, i64 24, i1 false), !noalias !342
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cl), !noalias !327
  %i.qx = load i64, ptr %i.dz, align 8, !alias.scope !343, !noalias !344, !noundef !4 ; 3 uses
  %i.qy = load i64, ptr %i.dl, align 8, !range !9, !alias.scope !343, !noalias !344, !noundef !4
  %i.qz = icmp eq i64 %i.qx, %i.qy
  br i1 %i.qz, label %bb.de, label %bb.dh

bb.de:                                            ; preds = %bb.dd
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h35895b0db1271ff3E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dl)
          to label %bb.dh unwind label %bb.df, !noalias !344

bb.df:                                            ; preds = %bb.de
  %i.ra = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd440d1522a579274E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.de) #16
          to label %.body63.i unwind label %bb.dg, !noalias !314

bb.dg:                                            ; preds = %bb.df
  %i.rb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #17, !noalias !314
  unreachable

bb.dh:                                            ; preds = %bb.de, %bb.dd
  %i.rc = load ptr, ptr %i.dy, align 8, !alias.scope !343, !noalias !344, !nonnull !4, !noundef !4
  %i.rd = getelementptr inbounds nuw [24 x i8], ptr %i.rc, i64 %i.qx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.rd, ptr noundef nonnull align 8 dereferenceable(24) %i.de, i64 24, i1 false), !noalias !314
  %i.re = add i64 %i.qx, 1
  store i64 %i.re, ptr %i.dz, align 8, !alias.scope !343, !noalias !344
  call void @llvm.lifetime.end.p0(ptr nonnull %i.de), !noalias !314
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h77374583839addd9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dg)
          to label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hf1cb1ef03b2c1034E.exit.i.i" unwind label %bb.di, !noalias !314

bb.di:                                            ; preds = %bb.dh
  %i.rf = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0ee8f0e210b7ef47E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dg)
          to label %.body67.i unwind label %bb.dj, !noalias !314

bb.dj:                                            ; preds = %bb.di
  %i.rg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #17, !noalias !314
  unreachable

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hf1cb1ef03b2c1034E.exit.i.i": ; preds = %bb.dh
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0ee8f0e210b7ef47E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dg)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd440d1522a579274E.exit.i" unwind label %.loopexit170.i, !noalias !314

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd440d1522a579274E.exit.i": ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hf1cb1ef03b2c1034E.exit.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dg), !noalias !314
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h77374583839addd9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dh)
          to label %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h98a08149d7522013E.exit.i71.i" unwind label %bb.dk, !noalias !314

bb.dk:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd440d1522a579274E.exit.i"
  %i.rh = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0ee8f0e210b7ef47E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dh)
          to label %.body72.i unwind label %bb.dl, !noalias !314

bb.dl:                                            ; preds = %bb.dk
  %i.ri = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #17, !noalias !314
  unreachable

"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h98a08149d7522013E.exit.i71.i": ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd440d1522a579274E.exit.i"
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0ee8f0e210b7ef47E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dh)
          to label %"_ZN4core3ptr40drop_in_place$LT$camino..Utf8PathBuf$GT$17h4f097c106282b31fE.exit75.i" unwind label %.loopexit.split-lp166.i, !noalias !314

"_ZN4core3ptr40drop_in_place$LT$camino..Utf8PathBuf$GT$17h4f097c106282b31fE.exit75.i": ; preds = %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h98a08149d7522013E.exit.i71.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dh), !noalias !314
  call void @llvm.lifetime.end.p0(ptr nonnull %i.di), !noalias !314
  br label %bb.g

common.resume:                                    ; preds = %bb.jx, %bb.fs, %.body.thread.i.i, %bb.fx, %bb.hh, %bb.hm, %.thread.i.i, %.thread93.i.i, %bb.iq, %bb.ir, %bb.iw, %bb.iz, %bb.jc, %bb.ju, %bb.do, %"_ZN4core3ptr105drop_in_place$LT$std..collections..hash..map..HashMap$LT$$RF$str$C$alloc..vec..Vec$LT$$RF$str$GT$$GT$$GT$17hb1a9ae4dedb14d2eE.exit.i23", %bb.eo, %"_ZN4core3ptr105drop_in_place$LT$std..collections..hash..map..HashMap$LT$$RF$str$C$alloc..vec..Vec$LT$$RF$str$GT$$GT$$GT$17hb1a9ae4dedb14d2eE.exit72.i", %bb.c, %bb.bb, %bb.dm
  %common.resume.op = phi { ptr, i32 } [ %.pn.pn.pn.i.i, %.thread.i.i ], [ %.pn30.pn.pn.i, %bb.c ], [ %.pn43.i, %"_ZN4core3ptr105drop_in_place$LT$std..collections..hash..map..HashMap$LT$$RF$str$C$alloc..vec..Vec$LT$$RF$str$GT$$GT$$GT$17hb1a9ae4dedb14d2eE.exit72.i" ], [ %i.hd, %bb.bb ], [ %.pn30.pn.pn.pn146.i, %bb.dm ], [ %.pn45.i, %bb.eo ], [ %.pn49.i, %bb.do ], [ %.pn47.i, %"_ZN4core3ptr105drop_in_place$LT$std..collections..hash..map..HashMap$LT$$RF$str$C$alloc..vec..Vec$LT$$RF$str$GT$$GT$$GT$17hb1a9ae4dedb14d2eE.exit.i23" ], [ %i.aas, %bb.ju ], [ %i.xr, %bb.hh ], [ %.pn46.pn.pn.pn.i.i, %.body.thread.i.i ], [ %i.uu, %bb.fs ], [ %.pn.pn.i.i, %bb.fx ], [ %i.zv, %bb.iz ], [ %.pn.pn.pn.i.i.i, %.thread93.i.i ], [ %i.zu, %bb.iw ], [ %.pn52.i.i, %bb.ir ], [ %lpad.thr_comm.split-lp.i.i, %bb.iq ], [ %i.zx, %bb.jc ], [ %i.ym, %bb.hm ], [ %.pn14.i, %bb.jx ]
  resume { ptr, i32 } %common.resume.op

bb.dm:                                            ; preds = %bb.c, %.body56.thread149.i
  %.pn30.pn.pn.pn146.i = phi { ptr, i32 } [ %i.dx, %.body56.thread149.i ], [ %.pn30.pn.pn.i, %bb.c ]
  invoke fastcc void @"_ZN4core3ptr43drop_in_place$LT$ninja_gen..input..Glob$GT$17hc0712903157b3ff2E"(ptr noalias noundef align 8 dereferenceable(48) %i.dn) #16
          to label %common.resume unwind label %bb.bd

_ZN9configure3aqt11build_forms17hda932fd8c0c9422eE.exit: ; preds = %"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h191415ba13e9866fE.exit.i"
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0ee8f0e210b7ef47E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dm)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dm), !noalias !314
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dn), !noalias !314
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dk)
  %.not = icmp eq ptr %i.gz, null
  br i1 %.not, label %bb.dn, label %_ZN9configure3aqt23build_generated_sources17h4bba6898dc16cc3aE.exit.thread

bb.dn:                                            ; preds = %_ZN9configure3aqt11build_forms17hda932fd8c0c9422eE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ci), !noalias !345
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ch), !noalias !345
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cg), !noalias !345
  %i.rj = call { i64, i64 } @"_ZN3std6thread5local17LocalKey$LT$T$GT$4with17hd38dcd9586165e74E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @21), !noalias !345 ; 2 uses
  %i.rk = extractvalue { i64, i64 } %i.rj, 0
  %i.rl = extractvalue { i64, i64 } %i.rj, 1
  call void @"_ZN9hashbrown3map24HashMap$LT$K$C$V$C$S$GT$24with_capacity_and_hasher17hb4ef0338ad10a464E"(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.cg, i64 noundef 2, i64 noundef %i.rk, i64 noundef %i.rl), !noalias !345
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cf), !noalias !345
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ce), !noalias !345
  call void @_RNvCsiGVaDesi5rv_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18, !noalias !345
  %i.rm = call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCsiGVaDesi5rv_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef 8) #18, !noalias !345 ; 4 uses
  %i.rn = icmp eq ptr %i.rm, null
  br i1 %i.rn, label %.invoke.i28, label %bb.dq, !prof !10

bb.do:                                            ; preds = %bb.dx, %bb.dr, %bb.dp
  %.pn49.i = phi { ptr, i32 } [ %i.ro, %bb.dp ], [ %.pn.i22, %bb.dx ], [ %i.rp, %bb.dr ]
  invoke void @"_ZN79_$LT$hashbrown..raw..RawTable$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h24ffc248413dd906E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.cg)
          to label %common.resume unwind label %bb.fn

bb.dp:                                            ; preds = %bb.ed, %bb.eb, %.invoke.i28, %bb.du, %bb.ds
  %i.ro = landingpad { ptr, i32 }
          cleanup
  br label %bb.do

bb.dq:                                            ; preds = %bb.dn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cd), !noalias !345
  invoke void @"_ZN83_$LT$ninja_gen..input..BuildInput$u20$as$u20$core..convert..From$LT$$RF$str$GT$$GT$4from17h77da462ac4e392c6E"(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.cd, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @90, i64 noundef 24)
          to label %bb.ds unwind label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.rp = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.rm, i64 noundef 48, i64 noundef 8) #18
  br label %bb.do

bb.ds:                                            ; preds = %bb.dq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.rm, ptr noundef nonnull align 8 dereferenceable(48) %i.cd, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cd), !noalias !345
  %i.rq = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  store i64 1, ptr %i.rq, align 8, !noalias !345
  %.sroa.4.0..sroa_idx.i20 = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  store ptr %i.rm, ptr %.sroa.4.0..sroa_idx.i20, align 8, !noalias !345
  %.sroa.5.0..sroa_idx.i21 = getelementptr inbounds nuw i8, ptr %i.ce, i64 24
  store i64 1, ptr %.sroa.5.0..sroa_idx.i21, align 8, !noalias !345
  store i64 -9223372036854775805, ptr %i.ce, align 8, !noalias !345
  invoke void @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17h24957f40b8e85b8eE"(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.cf, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.cg, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @10, i64 noundef 6, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.ce)
          to label %bb.dt unwind label %bb.dp

bb.dt:                                            ; preds = %bb.ds
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ce), !noalias !345
  %i.rr = load i64, ptr %i.cf, align 8, !range !12, !alias.scope !346, !noalias !345, !noundef !4
  %i.rs = icmp eq i64 %i.rr, -9223372036854775803
  br i1 %i.rs, label %bb.dv, label %bb.du

bb.du:                                            ; preds = %bb.dt
  invoke fastcc void @"_ZN4core3ptr49drop_in_place$LT$ninja_gen..input..BuildInput$GT$17hd2e1daecda49ce53E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.cf)
          to label %bb.dv unwind label %bb.dp

bb.dv:                                            ; preds = %bb.du, %bb.dt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cf), !noalias !345
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cc), !noalias !345
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cb), !noalias !345
  call void @_RNvCsiGVaDesi5rv_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18
  %i.rt = call noundef align 8 dereferenceable_or_null(96) ptr @_RNvCsiGVaDesi5rv_7___rustc12___rust_alloc(i64 noundef 96, i64 noundef 8) #18 ; 5 uses
  %i.ru = icmp eq ptr %i.rt, null
  br i1 %i.ru, label %.invoke.i28, label %bb.dw, !prof !10

.invoke.i28:                                      ; preds = %bb.dv, %bb.dn
  %i.rv = phi i64 [ 48, %bb.dn ], [ 96, %bb.dv ]
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h0917805e100cbd4bE(i64 noundef 8, i64 noundef %i.rv) #19
          to label %.cont.i29 unwind label %bb.dp

.cont.i29:                                        ; preds = %.invoke.i28
  unreachable

bb.dw:                                            ; preds = %bb.dv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ca), !noalias !345
  invoke void @"_ZN83_$LT$ninja_gen..input..BuildInput$u20$as$u20$core..convert..From$LT$$RF$str$GT$$GT$4from17h77da462ac4e392c6E"(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.ca, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @91, i64 noundef 32)
          to label %bb.dz unwind label %bb.dy

bb.dx:                                            ; preds = %bb.ea, %bb.dy
  %.pn.i22 = phi { ptr, i32 } [ %i.rx, %bb.ea ], [ %i.rw, %bb.dy ]
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.rt, i64 noundef 96, i64 noundef 8) #18
  br label %bb.do
end_hunk_1
