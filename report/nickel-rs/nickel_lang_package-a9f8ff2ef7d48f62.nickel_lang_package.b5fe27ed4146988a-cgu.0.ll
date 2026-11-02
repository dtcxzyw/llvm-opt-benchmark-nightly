Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nickel-rs/original/nickel_lang_package-a9f8ff2ef7d48f62.nickel_lang_package.b5fe27ed4146988a-cgu.0?download=true
inline.NumInlined: 25765
inline.NumDeleted: 11076
loop-unroll.NumCompletelyUnrolled: 62
loop-unroll.NumRuntimeUnrolled: 162
loop-unroll.NumUnrolled: 230
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@"_ZN12gix_features8parallel11in_parallel22in_parallel_with_slice28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h52003f5fb60f7a90E":bb.a
  %.not5.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.xp, null
  br i1 %.not5.i.i.i.i.i.i.i.i.i, label %.loopexit8.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.noexc12.i.i.i, %.noexc13.i.i.i
  %i.xq = phi ptr [ %i.xw, %.noexc13.i.i.i ], [ %i.xp, %.noexc12.i.i.i ]
  %.sroa.23.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.23.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !9773
  %i.xr = getelementptr inbounds nuw i8, ptr %i.xq, i64 96
  %i.xs = getelementptr inbounds nuw [72 x i8], ptr %i.xr, i64 %.sroa.23.0.copyload.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.xt = getelementptr i8, ptr %i.xs, i64 48
  %.val.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.xt, align 8, !alias.scope !9774, !noalias !9775 ; 2 uses
  %i.xu = icmp eq i64 %.val.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.xu, label %"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17h8ca7f9be5105ad95E.exit.i.i.i.i.i.i.i.i.i", label %bb.in

bb.in:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.xv = getelementptr i8, ptr %i.xs, i64 56
  %.val1.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.xv, align 8, !noalias !9775, !nonnull !41, !noundef !41
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #67, !noalias !9776
  br label %"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17h8ca7f9be5105ad95E.exit.i.i.i.i.i.i.i.i.i"

"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17h8ca7f9be5105ad95E.exit.i.i.i.i.i.i.i.i.i": ; preds = %bb.in, %.lr.ph.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !9773
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !9773
  invoke fastcc void @"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17h8c66f42439123c60E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.k, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.l)
          to label %.noexc13.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i5.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !9760

.noexc13.i.i.i:                                   ; preds = %"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17h8ca7f9be5105ad95E.exit.i.i.i.i.i.i.i.i.i"
  %i.xw = load ptr, ptr %i.k, align 8, !noalias !9773, !noundef !41 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.xw, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %.loopexit8.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.loopexit.split-lp.i.i.i:                         ; preds = %.loopexit.split-lp.loopexit.split-lp.i5.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, %.body.i.i.i
  %.pn.i.i.i = phi { ptr, i32 } [ %eh.lpad-body.i.i.i, %.body.i.i.i ], [ %lpad.loopexit.split-lp2206, %.loopexit.split-lp.loopexit.split-lp.i5.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %.val7.i.i.i = load i64, ptr %i.ev, align 8, !noalias !9638 ; 2 uses
  %i.xx = icmp eq i64 %.val7.i.i.i, 0
  br i1 %i.xx, label %"_ZN4core3ptr217drop_in_place$LT$lock_api..mutex..Mutex$LT$parking_lot..raw_mutex..RawMutex$C$alloc..vec..Vec$LT$$LP$u16$C$gix_pack..cache..delta..traverse..resolve..root..Node$LT$gix_pack..index..write..TreeEntry$GT$$RP$$GT$$GT$$GT$17h111369cc99884624E.exit.i.i.i", label %bb.io

bb.io:                                            ; preds = %.loopexit.split-lp.i.i.i
  %.val8.i.i.i = load ptr, ptr %i.fv, align 8, !noalias !9638, !nonnull !41, !noundef !41
  %i.xy = mul nuw i64 %.val7.i.i.i, 24
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8.i.i.i, i64 noundef %i.xy, i64 noundef range(i64 1, -9223372036854775807) 8) #67, !noalias !9760
  br label %"_ZN4core3ptr217drop_in_place$LT$lock_api..mutex..Mutex$LT$parking_lot..raw_mutex..RawMutex$C$alloc..vec..Vec$LT$$LP$u16$C$gix_pack..cache..delta..traverse..resolve..root..Node$LT$gix_pack..index..write..TreeEntry$GT$$RP$$GT$$GT$$GT$17h111369cc99884624E.exit.i.i.i"

.loopexit.split-lp.loopexit.split-lp.i5.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp: ; preds = %"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17h8ca7f9be5105ad95E.exit.i.i.i.i.i.i.i.i.i", %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hcf7cef33a6293819E.exit.i.i.i.i.i.i.i"
  %lpad.loopexit.split-lp2206 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i.i

.loopexit8.i.i.i:                                 ; preds = %.noexc13.i.i.i, %.noexc12.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !9773
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !9770
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !9638
  %.val.i.i.i = load i64, ptr %i.ev, align 8, !noalias !9638 ; 2 uses
  %i.xz = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.xz, label %"_ZN4core3ptr217drop_in_place$LT$lock_api..mutex..Mutex$LT$parking_lot..raw_mutex..RawMutex$C$alloc..vec..Vec$LT$$LP$u16$C$gix_pack..cache..delta..traverse..resolve..root..Node$LT$gix_pack..index..write..TreeEntry$GT$$RP$$GT$$GT$$GT$17h111369cc99884624E.exit14.i.i.i", label %bb.ip

bb.ip:                                            ; preds = %.loopexit8.i.i.i
  %.val6.i.i.i = load ptr, ptr %i.fv, align 8, !noalias !9638, !nonnull !41, !noundef !41
  %i.ya = mul nuw i64 %.val.i.i.i, 24
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val6.i.i.i, i64 noundef %i.ya, i64 noundef range(i64 1, -9223372036854775807) 8) #67, !noalias !9760
  br label %"_ZN4core3ptr217drop_in_place$LT$lock_api..mutex..Mutex$LT$parking_lot..raw_mutex..RawMutex$C$alloc..vec..Vec$LT$$LP$u16$C$gix_pack..cache..delta..traverse..resolve..root..Node$LT$gix_pack..index..write..TreeEntry$GT$$RP$$GT$$GT$$GT$17h111369cc99884624E.exit14.i.i.i"

"_ZN4core3ptr217drop_in_place$LT$lock_api..mutex..Mutex$LT$parking_lot..raw_mutex..RawMutex$C$alloc..vec..Vec$LT$$LP$u16$C$gix_pack..cache..delta..traverse..resolve..root..Node$LT$gix_pack..index..write..TreeEntry$GT$$RP$$GT$$GT$$GT$17h111369cc99884624E.exit14.i.i.i": ; preds = %bb.ip, %.loopexit8.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !9638
  call void @llvm.experimental.noalias.scope.decl(metadata !9777)
  call void @llvm.experimental.noalias.scope.decl(metadata !9778)
  %i.yb = load ptr, ptr %i.ar, align 8, !alias.scope !9779, !noalias !9638, !nonnull !41, !noundef !41
  %i.yc = atomicrmw add ptr %i.yb, i64 -1 release, align 8, !noalias !9780
  %i.yd = icmp eq i64 %i.yc, 1
  br i1 %i.yd, label %bb.iq, label %"_ZN4core3ptr76drop_in_place$LT$alloc..sync..Arc$LT$core..sync..atomic..AtomicUsize$GT$$GT$17h82e0eaf58739c02dE.exit.i.i.i"

bb.iq:                                            ; preds = %"_ZN4core3ptr217drop_in_place$LT$lock_api..mutex..Mutex$LT$parking_lot..raw_mutex..RawMutex$C$alloc..vec..Vec$LT$$LP$u16$C$gix_pack..cache..delta..traverse..resolve..root..Node$LT$gix_pack..index..write..TreeEntry$GT$$RP$$GT$$GT$$GT$17h111369cc99884624E.exit14.i.i.i"
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h3c1038b7ecf8e9ceE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ar)
          to label %"_ZN4core3ptr76drop_in_place$LT$alloc..sync..Arc$LT$core..sync..atomic..AtomicUsize$GT$$GT$17h82e0eaf58739c02dE.exit.i.i.i" unwind label %bb.is, !noalias !9760

"_ZN4core3ptr76drop_in_place$LT$alloc..sync..Arc$LT$core..sync..atomic..AtomicUsize$GT$$GT$17h82e0eaf58739c02dE.exit20.i.i.i": ; preds = %bb.iv, %"_ZN4core3ptr217drop_in_place$LT$lock_api..mutex..Mutex$LT$parking_lot..raw_mutex..RawMutex$C$alloc..vec..Vec$LT$$LP$u16$C$gix_pack..cache..delta..traverse..resolve..root..Node$LT$gix_pack..index..write..TreeEntry$GT$$RP$$GT$$GT$$GT$17h111369cc99884624E.exit.i.i.i", %bb.is
  %.pn4.i.i.i = phi { ptr, i32 } [ %i.yh, %bb.is ], [ %.pn.i.i.i, %bb.iv ], [ %.pn.i.i.i, %"_ZN4core3ptr217drop_in_place$LT$lock_api..mutex..Mutex$LT$parking_lot..raw_mutex..RawMutex$C$alloc..vec..Vec$LT$$LP$u16$C$gix_pack..cache..delta..traverse..resolve..root..Node$LT$gix_pack..index..write..TreeEntry$GT$$RP$$GT$$GT$$GT$17h111369cc99884624E.exit.i.i.i" ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9781)
  call void @llvm.experimental.noalias.scope.decl(metadata !9782)
  %i.ye = load ptr, ptr %i.as, align 8, !alias.scope !9783, !noalias !9638, !nonnull !41, !noundef !41
  %i.yf = atomicrmw add ptr %i.ye, i64 -1 release, align 8, !noalias !9784
  %i.yg = icmp eq i64 %i.yf, 1
  br i1 %i.yg, label %bb.ir, label %.critedge173.i.i.i

bb.ir:                                            ; preds = %"_ZN4core3ptr76drop_in_place$LT$alloc..sync..Arc$LT$core..sync..atomic..AtomicUsize$GT$$GT$17h82e0eaf58739c02dE.exit20.i.i.i"
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h3c1038b7ecf8e9ceE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.as)
          to label %.critedge173.i.i.i unwind label %bb.iu, !noalias !9760

bb.is:                                            ; preds = %bb.iq
  %i.yh = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr76drop_in_place$LT$alloc..sync..Arc$LT$core..sync..atomic..AtomicUsize$GT$$GT$17h82e0eaf58739c02dE.exit20.i.i.i"

"_ZN4core3ptr76drop_in_place$LT$alloc..sync..Arc$LT$core..sync..atomic..AtomicUsize$GT$$GT$17h82e0eaf58739c02dE.exit.i.i.i": ; preds = %bb.iq, %"_ZN4core3ptr217drop_in_place$LT$lock_api..mutex..Mutex$LT$parking_lot..raw_mutex..RawMutex$C$alloc..vec..Vec$LT$$LP$u16$C$gix_pack..cache..delta..traverse..resolve..root..Node$LT$gix_pack..index..write..TreeEntry$GT$$RP$$GT$$GT$$GT$17h111369cc99884624E.exit14.i.i.i"
  call void @llvm.experimental.noalias.scope.decl(metadata !9785)
  call void @llvm.experimental.noalias.scope.decl(metadata !9786)
  %i.yi = load ptr, ptr %i.as, align 8, !alias.scope !9787, !noalias !9638, !nonnull !41, !noundef !41
  %i.yj = atomicrmw add ptr %i.yi, i64 -1 release, align 8, !noalias !9788
  %i.yk = icmp eq i64 %i.yj, 1
  br i1 %i.yk, label %bb.it, label %_ZN8gix_pack5cache5delta8traverse7resolve9deltas_mt17hdf539e2735ddb55cE.exit.i.i

bb.it:                                            ; preds = %"_ZN4core3ptr76drop_in_place$LT$alloc..sync..Arc$LT$core..sync..atomic..AtomicUsize$GT$$GT$17h82e0eaf58739c02dE.exit.i.i.i"
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h3c1038b7ecf8e9ceE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.as)
          to label %_ZN8gix_pack5cache5delta8traverse7resolve9deltas_mt17hdf539e2735ddb55cE.exit.i.i unwind label %bb.cf, !noalias !9609

bb.iu:                                            ; preds = %bb.iv, %bb.ir, %.body.i.i.i
  %i.yl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #74, !noalias !9760
  unreachable

"_ZN4core3ptr217drop_in_place$LT$lock_api..mutex..Mutex$LT$parking_lot..raw_mutex..RawMutex$C$alloc..vec..Vec$LT$$LP$u16$C$gix_pack..cache..delta..traverse..resolve..root..Node$LT$gix_pack..index..write..TreeEntry$GT$$RP$$GT$$GT$$GT$17h111369cc99884624E.exit.i.i.i": ; preds = %bb.io, %.loopexit.split-lp.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !9789)
  call void @llvm.experimental.noalias.scope.decl(metadata !9790)
  %i.ym = load ptr, ptr %i.ar, align 8, !alias.scope !9791, !noalias !9638, !nonnull !41, !noundef !41
  %i.yn = atomicrmw add ptr %i.ym, i64 -1 release, align 8, !noalias !9792
  %i.yo = icmp eq i64 %i.yn, 1
  br i1 %i.yo, label %bb.iv, label %"_ZN4core3ptr76drop_in_place$LT$alloc..sync..Arc$LT$core..sync..atomic..AtomicUsize$GT$$GT$17h82e0eaf58739c02dE.exit20.i.i.i"

bb.iv:                                            ; preds = %"_ZN4core3ptr217drop_in_place$LT$lock_api..mutex..Mutex$LT$parking_lot..raw_mutex..RawMutex$C$alloc..vec..Vec$LT$$LP$u16$C$gix_pack..cache..delta..traverse..resolve..root..Node$LT$gix_pack..index..write..TreeEntry$GT$$RP$$GT$$GT$$GT$17h111369cc99884624E.exit.i.i.i"
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h3c1038b7ecf8e9ceE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ar)
          to label %"_ZN4core3ptr76drop_in_place$LT$alloc..sync..Arc$LT$core..sync..atomic..AtomicUsize$GT$$GT$17h82e0eaf58739c02dE.exit20.i.i.i" unwind label %bb.iu, !noalias !9760

_ZN8gix_pack5cache5delta8traverse7resolve9deltas_mt17hdf539e2735ddb55cE.exit.i.i: ; preds = %bb.it, %"_ZN4core3ptr76drop_in_place$LT$alloc..sync..Arc$LT$core..sync..atomic..AtomicUsize$GT$$GT$17h82e0eaf58739c02dE.exit.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !9611
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !9611
  br label %bb.iw

bb.iw:                                            ; preds = %.loopexit243.i, %bb.iy, %_ZN8gix_pack5cache5delta8traverse7resolve9deltas_mt17hdf539e2735ddb55cE.exit.i.i, %bb.bn
  %.sroa.19.3.i = phi i64 [ undef, %bb.bn ], [ %.sroa.79.i.sroa.4.1.i.i.i172.i, %_ZN8gix_pack5cache5delta8traverse7resolve9deltas_mt17hdf539e2735ddb55cE.exit.i.i ], [ %.sroa.20156.4.ph.i, %bb.iy ], [ undef, %.loopexit243.i ] ; 3 uses
  %.sroa.17.4.i = phi ptr [ @2591, %bb.bn ], [ %i.wq, %_ZN8gix_pack5cache5delta8traverse7resolve9deltas_mt17hdf539e2735ddb55cE.exit.i.i ], [ %i.yr, %bb.iy ], [ @2591, %.loopexit243.i ] ; 3 uses
  %.sroa.15107.4.i = phi ptr [ %i.jj, %bb.bn ], [ %i.wr, %_ZN8gix_pack5cache5delta8traverse7resolve9deltas_mt17hdf539e2735ddb55cE.exit.i.i ], [ %.sroa.16154.4.ph.i, %bb.iy ], [ %.sroa.15107.3.i, %.loopexit243.i ] ; 3 uses
  %.sroa.14.4.i = phi i8 [ undef, %bb.bn ], [ %.sroa.14.0.copyload99.i, %_ZN8gix_pack5cache5delta8traverse7resolve9deltas_mt17hdf539e2735ddb55cE.exit.i.i ], [ %.sroa.13152.4.ph.i, %bb.iy ], [ %i.aax, %.loopexit243.i ] ; 3 uses
  %.sroa.0.4.i = phi i8 [ 5, %bb.bn ], [ %i.wx, %_ZN8gix_pack5cache5delta8traverse7resolve9deltas_mt17hdf539e2735ddb55cE.exit.i.i ], [ %.sroa.9151.1.ph.i, %bb.iy ], [ %.sroa.0.3.i, %.loopexit243.i ] ; 3 uses
  %.sroa.79.i.sroa.4.1.i.i.i171.i = phi i64 [ %.sroa.79.i.sroa.4.1.i.i.i168.i, %bb.bn ], [ %.sroa.79.i.sroa.4.1.i.i.i172.i, %_ZN8gix_pack5cache5delta8traverse7resolve9deltas_mt17hdf539e2735ddb55cE.exit.i.i ], [ %.sroa.79.i.sroa.4.1.i.i.i168.i, %bb.iy ], [ %.sroa.79.i.sroa.4.1.i.i.i168.i, %.loopexit243.i ] ; 3 uses
  %.sroa.086.4.i.i.i = phi i1 [ true, %bb.bn ], [ false, %_ZN8gix_pack5cache5delta8traverse7resolve9deltas_mt17hdf539e2735ddb55cE.exit.i.i ], [ true, %bb.iy ], [ true, %.loopexit243.i ]
  %i.yp = icmp eq i64 %.sroa.0289.0.i.i.i, 0
  br i1 %i.yp, label %bb.bg, label %bb.ix

bb.ix:                                            ; preds = %bb.iw
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6291.0.i.i.i, i64 noundef %.sroa.0289.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #67, !noalias !9793
  br label %bb.bg

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h6821d8d6aa614832E.exit194.i.i.i": ; preds = %bb.cb, %.thread324.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk), !noalias !9612
  %.pr.i.i.i = load i64, ptr %i.ei, align 8, !noalias !9612 ; 2 uses
  %i.yq = icmp eq i64 %.pr.i.i.i, 0
  br i1 %i.yq, label %.thread.i.i.i, label %bb.ap

bb.iy:                                            ; preds = %bb.bx, %bb.bs
  %.sroa.20156.4.ph.i = phi i64 [ %.sroa.20156.3.i, %bb.bx ], [ %.sroa.20156.1.i, %bb.bs ]
  %.sroa.18155.4.ph.i = phi i64 [ %.sroa.18155.3.i, %bb.bx ], [ %.sroa.18155.1.i, %bb.bs ]
  %.sroa.16154.4.ph.i = phi ptr [ %.sroa.16154.3.i, %bb.bx ], [ %i.kq, %bb.bs ]
  %.sroa.13152.4.ph.i = phi i8 [ %.sroa.13152.3.i, %bb.bx ], [ %.sroa.13152.1.i, %bb.bs ]
  %.sroa.9151.1.ph.i = phi i8 [ %.sroa.9151.0.i, %bb.bx ], [ 3, %bb.bs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.443.i.sroa.0.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.443.i.sroa.7.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.15.i, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.15153.i, i64 6, i1 false), !noalias !9620
  %i.yr = inttoptr i64 %.sroa.18155.4.ph.i to ptr
  br label %bb.iw

bb.iz:                                            ; preds = %.noexc62.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !9629
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh), !noalias !9612
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.8150.1..sroa.2138.0..sroa_idx.i.i.sroa_idx.i, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.443.i.sroa.0.i, i64 6, i1 false), !noalias !9626
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.15153.i, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.443.i.sroa.7.i, i64 6, i1 false), !noalias !9630
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !9629
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.443.i.sroa.0.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.443.i.sroa.7.i)
  store i8 %i.kp, ptr %.sroa.2138.0..sroa_idx.i.i.i, align 1, !noalias !9612
  store i8 %.sroa.443.i.sroa.5.0.copyload.i, ptr %.sroa.9151.1..sroa.2138.0..sroa_idx.i.i.sroa_idx.i, align 8, !noalias !9612
  store i8 %.sroa.443.i.sroa.6.0.copyload.i, ptr %.sroa.13152.1..sroa.2138.0..sroa_idx.i.i.sroa_idx.i, align 1, !noalias !9612
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.15153.1..sroa.2138.0..sroa_idx.i.i.sroa_idx.i, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.15153.i, i64 6, i1 false), !noalias !9612
  store ptr %.sroa.443.i.sroa.8.0.copyload.i, ptr %.sroa.16154.1..sroa.2138.0..sroa_idx.i.i.sroa_idx.i, align 8, !noalias !9612
  store i64 %.sroa.778.0.copyload.i.i, ptr %.sroa.18155.1..sroa.2138.0..sroa_idx.i.i.sroa_idx.i, align 8, !noalias !9612
  store i64 %.sroa.879.0.copyload.i.i, ptr %.sroa.20156.1..sroa.2138.0..sroa_idx.i.i.sroa_idx.i, align 8, !noalias !9612
  store i8 %i.kn, ptr %i.bh, align 8, !noalias !9612
  %i.ys = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !9615, !nonnull !41, !noundef !41 ; 4 uses
  %i.yt = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !9615, !noundef !41 ; 8 uses
  %i.yu = getelementptr inbounds nuw i8, ptr %i.ys, i64 %i.yt ; 2 uses
  %i.yv = icmp samesign eq i64 %i.yt, 0
  br i1 %i.yv, label %.thread335.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.iz, %.lr.ph.i.i.i.i
  %.sroa.0.011.i.i.i.i = phi i32 [ %i.zf, %.lr.ph.i.i.i.i ], [ 0, %bb.iz ] ; 2 uses
  %.sroa.02.010.i.i.i.i = phi i64 [ %i.zd, %.lr.ph.i.i.i.i ], [ 0, %bb.iz ]
  %.sroa.04.09.i.i.i.i = phi i64 [ %i.yw, %.lr.ph.i.i.i.i ], [ 0, %bb.iz ] ; 2 uses
  %.sroa.07.08.i.i.i.i = phi ptr [ %i.zg, %.lr.ph.i.i.i.i ], [ %i.ys, %bb.iz ] ; 2 uses
  %i.yw = add nuw i64 %.sroa.04.09.i.i.i.i, 1     ; 5 uses
  %i.yx = load i8, ptr %.sroa.07.08.i.i.i.i, align 1, !alias.scope !9794, !noalias !9614, !noundef !41 ; 2 uses
  %i.yy = and i8 %i.yx, 127
  %i.yz = zext nneg i8 %i.yy to i64
  %i.za = and i32 %.sroa.0.011.i.i.i.i, 63
  %i.zb = zext nneg i32 %i.za to i64
  %i.zc = shl i64 %i.yz, %i.zb
  %i.zd = or i64 %i.zc, %.sroa.02.010.i.i.i.i     ; 3 uses
  %i.ze = icmp sgt i8 %i.yx, -1
  %i.zf = add nuw nsw i32 %.sroa.0.011.i.i.i.i, 7
  %i.zg = getelementptr inbounds nuw i8, ptr %.sroa.07.08.i.i.i.i, i64 1 ; 2 uses
  %i.zh = icmp eq ptr %i.zg, %i.yu
  %or.cond.i.i.i.i = select i1 %i.ze, i1 true, i1 %i.zh
  br i1 %or.cond.i.i.i.i, label %bb.ja, label %.lr.ph.i.i.i.i

bb.ja:                                            ; preds = %.lr.ph.i.i.i.i
  store i64 %.sroa.7294.0.i.i.i, ptr %i.bg, align 8, !noalias !9612
  store i64 %i.zd, ptr %i.bf, align 8, !noalias !9612
  %i.zi = icmp eq i64 %.sroa.7294.0.i.i.i, %i.zd
  br i1 %i.zi, label %bb.jc, label %bb.jb, !prof !48

.thread335.i.i.i:                                 ; preds = %bb.iz
  store i64 %.sroa.7294.0.i.i.i, ptr %i.bg, align 8, !noalias !9612
  store i64 0, ptr %i.bf, align 8, !noalias !9612
  br i1 %i.jy, label %.thread519.i.i.i, label %bb.jb, !prof !48

bb.jb:                                            ; preds = %.thread335.i.i.i, %bb.ja
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be), !noalias !9612
  store ptr @2594, ptr %i.be, align 8, !noalias !9612
  %.sroa.444.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store i64 1, ptr %.sroa.444.0..sroa_idx.i.i.i, align 8, !noalias !9612
  %.sroa.545.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.545.0..sroa_idx.i.i.i, align 8, !noalias !9612
  %.sroa.646.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.646.0..sroa_idx.i.i.i, i8 0, i64 16, i1 false), !noalias !9612
  invoke void @_ZN4core9panicking13assert_failed17he513e705e2b74251E(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bf, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.be, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2595) #73
          to label %bb.bk unwind label %.loopexit.split-lp378.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !9614

bb.jc:                                            ; preds = %bb.ja
  %.not372.i.i.i = icmp ult i64 %.sroa.04.09.i.i.i.i, %i.yt
  br i1 %.not372.i.i.i, label %.thread339.i.i.i, label %.invoke2189, !prof !99

.thread339.i.i.i:                                 ; preds = %bb.jc
  %i.zj = icmp eq i64 %i.yt, %i.yw
  br i1 %i.zj, label %.thread519.i.i.i, label %.lr.ph.i208.preheader.i.i.i

.lr.ph.i208.preheader.i.i.i:                      ; preds = %.thread339.i.i.i
  %i.zk = getelementptr inbounds nuw i8, ptr %i.ys, i64 %i.yw
  br label %.lr.ph.i208.i.i.i

.thread519.i.i.i:                                 ; preds = %.thread339.i.i.i, %.thread335.i.i.i
  store i64 0, ptr %.sroa.8.0..sroa_idx, align 8, !alias.scope !9795
  br label %bb.jh

.lr.ph.i208.i.i.i:                                ; preds = %.lr.ph.i208.i.i.i, %.lr.ph.i208.preheader.i.i.i
  %.sroa.0.011.i209.i.i.i = phi i32 [ %i.zu, %.lr.ph.i208.i.i.i ], [ 0, %.lr.ph.i208.preheader.i.i.i ] ; 2 uses
  %.sroa.02.010.i210.i.i.i = phi i64 [ %i.zs, %.lr.ph.i208.i.i.i ], [ 0, %.lr.ph.i208.preheader.i.i.i ]
  %.sroa.04.09.i211.i.i.i = phi i64 [ %i.zl, %.lr.ph.i208.i.i.i ], [ 0, %.lr.ph.i208.preheader.i.i.i ]
  %.sroa.07.08.i212.i.i.i = phi ptr [ %i.zv, %.lr.ph.i208.i.i.i ], [ %i.zk, %.lr.ph.i208.preheader.i.i.i ] ; 2 uses
  %i.zl = add nuw i64 %.sroa.04.09.i211.i.i.i, 1  ; 2 uses
  %i.zm = load i8, ptr %.sroa.07.08.i212.i.i.i, align 1, !alias.scope !9796, !noalias !9614, !noundef !41 ; 2 uses
  %i.zn = and i8 %i.zm, 127
  %i.zo = zext nneg i8 %i.zn to i64
  %i.zp = and i32 %.sroa.0.011.i209.i.i.i, 63
  %i.zq = zext nneg i32 %i.zp to i64
  %i.zr = shl i64 %i.zo, %i.zq
  %i.zs = or i64 %i.zr, %.sroa.02.010.i210.i.i.i  ; 4 uses
  %i.zt = icmp sgt i8 %i.zm, -1
  %i.zu = add nuw nsw i32 %.sroa.0.011.i209.i.i.i, 7
  %i.zv = getelementptr inbounds nuw i8, ptr %.sroa.07.08.i212.i.i.i, i64 1 ; 2 uses
  %i.zw = icmp eq ptr %i.zv, %i.yu
  %or.cond.i213.i.i.i = select i1 %i.zt, i1 true, i1 %i.zw
  br i1 %or.cond.i213.i.i.i, label %bb.jd, label %.lr.ph.i208.i.i.i

bb.jd:                                            ; preds = %.lr.ph.i208.i.i.i
  %i.zx = add i64 %i.zl, %i.yw                    ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9797)
  %i.zy = load i64, ptr %.sroa.8.0..sroa_idx, align 8, !alias.scope !9795, !noundef !41 ; 6 uses
  %i.zz = icmp sgt i64 %i.zy, -1
  call void @llvm.assume(i1 %i.zz)
  %i.aaa = icmp ugt i64 %i.zs, %i.zy
  br i1 %i.aaa, label %bb.je, label %bb.jg

bb.je:                                            ; preds = %bb.jd
  %i.aab = sub nuw i64 %i.zs, %i.zy               ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9798)
  %i.aac = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !range !43, !alias.scope !9799, !noundef !41
  %i.aad = sub nsw i64 %i.aac, %i.zy
  %i.aae = icmp ugt i64 %i.aab, %i.aad
  br i1 %i.aae, label %bb.jf, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hf41cf182ecbbe496E.exit.i.i.i.i.i", !prof !44

bb.jf:                                            ; preds = %bb.je
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17he4e09bb53e25f47cE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx, i64 noundef %i.zy, i64 noundef %i.aab, i64 noundef 1, i64 noundef 1)
          to label %.noexc217.i.i.i unwind label %.loopexit.split-lp378.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !9614

.noexc217.i.i.i:                                  ; preds = %bb.jf
  %.pre.i.i.i.i.i = load i64, ptr %.sroa.8.0..sroa_idx, align 8, !alias.scope !9800
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hf41cf182ecbbe496E.exit.i.i.i.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hf41cf182ecbbe496E.exit.i.i.i.i.i": ; preds = %.noexc217.i.i.i, %bb.je
  %i.aaf = phi i64 [ %i.zy, %bb.je ], [ %.pre.i.i.i.i.i, %.noexc217.i.i.i ] ; 4 uses
  %i.aag = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !alias.scope !9800, !nonnull !41, !noundef !41 ; 2 uses
  %i.aah = icmp sgt i64 %i.aaf, -1
  call void @llvm.assume(i1 %i.aah)
  %i.aai = getelementptr i8, ptr %i.aag, i64 %i.aaf ; 2 uses
  %i.aaj = icmp ugt i64 %i.aab, 1
  br i1 %i.aaj, label %._crit_edge.thread.i.i.i.i.i, label %._crit_edge.i.i.i.i.i

._crit_edge.thread.i.i.i.i.i:                     ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hf41cf182ecbbe496E.exit.i.i.i.i.i"
  %i.aak = add i64 %i.aab, -1                     ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 1 %i.aai, i8 0, i64 %i.aak, i1 false), !noalias !9801
  %i.aal = add i64 %i.aaf, %i.aak                 ; 2 uses
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.aag, i64 %i.aal
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %._crit_edge.thread.i.i.i.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hf41cf182ecbbe496E.exit.i.i.i.i.i"
  %.sroa.0.0.lcssa16.i.i.i.i.i = phi ptr [ %scevgep.i.i.i.i.i, %._crit_edge.thread.i.i.i.i.i ], [ %i.aai, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hf41cf182ecbbe496E.exit.i.i.i.i.i" ]
  %storemerge.lcssa15.i.i.i.i.i = phi i64 [ %i.aal, %._crit_edge.thread.i.i.i.i.i ], [ %i.aaf, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hf41cf182ecbbe496E.exit.i.i.i.i.i" ]
  store i8 0, ptr %.sroa.0.0.lcssa16.i.i.i.i.i, align 1, !noalias !9801
  %i.aam = add i64 %storemerge.lcssa15.i.i.i.i.i, 1
  %.pre.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !9615
  br label %bb.jg

bb.jg:                                            ; preds = %._crit_edge.i.i.i.i.i, %bb.jd
  %i.aan = phi i64 [ %i.yt, %bb.jd ], [ %.pre.i.i.i, %._crit_edge.i.i.i.i.i ] ; 3 uses
  %i.aao = phi i64 [ %i.zs, %bb.jd ], [ %i.aam, %._crit_edge.i.i.i.i.i ] ; 2 uses
  store i64 %i.aao, ptr %.sroa.8.0..sroa_idx, align 8, !alias.scope !9795
  %i.aap = icmp ugt i64 %i.zx, %i.aan
  br i1 %i.aap, label %.invoke2189, label %._crit_edge.i.i, !prof !100

._crit_edge.i.i:                                  ; preds = %bb.jg
  %.pre.i.i = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !9615
  br label %bb.jh

bb.jh:                                            ; preds = %._crit_edge.i.i, %.thread519.i.i.i
  %i.aaq = phi ptr [ %i.ys, %.thread519.i.i.i ], [ %.pre.i.i, %._crit_edge.i.i ]
  %i.aar = phi i64 [ 0, %.thread519.i.i.i ], [ %i.aao, %._crit_edge.i.i ]
  %i.aas = phi i64 [ %i.yt, %.thread519.i.i.i ], [ %i.zx, %._crit_edge.i.i ] ; 2 uses
  %i.aat = phi i64 [ %i.yt, %.thread519.i.i.i ], [ %i.aan, %._crit_edge.i.i ]
  %i.aau = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !alias.scope !9615, !nonnull !41, !noundef !41
  %i.aav = sub nuw i64 %i.aat, %i.aas
  %i.aaw = getelementptr inbounds nuw i8, ptr %i.aaq, i64 %i.aas
  %i.aax = invoke noundef i8 @_ZN8gix_pack4data5delta5apply17h4e78199f7a12413eE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.6291.0.i.i.i, i64 noundef %.sroa.7294.0.i.i.i, ptr noalias noundef nonnull align 1 %i.aau, i64 noundef %i.aar, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.aaw, i64 noundef %i.aav)
          to label %bb.ji unwind label %.loopexit.split-lp378.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !9614 ; 2 uses

.invoke2189:                                      ; preds = %bb.jg, %bb.jc, %.noexc61.i
  %i.aay = phi i64 [ %i.yw, %bb.jc ], [ %i.kr, %.noexc61.i ], [ %i.zx, %bb.jg ]
  %i.aaz = phi i64 [ %i.yt, %bb.jc ], [ %.sroa.3.0.i.i.i.i, %.noexc61.i ], [ %i.aan, %bb.jg ] ; 2 uses
  %i.aba = phi ptr [ @2598, %bb.jc ], [ @2599, %.noexc61.i ], [ @2597, %bb.jg ]
  invoke void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %i.aay, i64 noundef %i.aaz, i64 noundef %i.aaz, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aba) #73
          to label %.cont2190 unwind label %.loopexit.split-lp378.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !9614

.cont2190:                                        ; preds = %.invoke2189
  unreachable

bb.ji:                                            ; preds = %bb.jh
  %.not158.i.i.i = icmp eq i8 %i.aax, 3
  br i1 %.not158.i.i.i, label %bb.jj, label %.loopexit243.i

bb.jj:                                            ; preds = %bb.ji
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bh, ptr noundef nonnull align 8 dereferenceable(24) %i.bk, i64 24, i1 false), !noalias !9612
  %i.abb = getelementptr inbounds nuw i8, ptr %i.kf, i64 16
  %i.abc = load i64, ptr %i.abb, align 8, !noalias !9614, !noundef !41
  %.not160.i.i.i = icmp eq i64 %i.abc, 0
  br i1 %.not160.i.i.i, label %bb.jk, label %bb.jl

bb.jk:                                            ; preds = %bb.jj
  %i.abd = getelementptr inbounds nuw i8, ptr %i.kf, i64 40
  %i.abe = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !alias.scope !9615, !nonnull !41, !noundef !41
  %i.abf = load i64, ptr %.sroa.8.0..sroa_idx, align 8, !alias.scope !9615, !noundef !41
  invoke void @_ZN8gix_pack5index5write11modify_base17h9e95f32015cc5396E(ptr noalias noundef nonnull sret([21 x i8]) align 1 captures(address) dereferenceable(21) %i.ax, ptr noalias noundef nonnull align 4 dereferenceable(24) %i.abd, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.bh, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.abe, i64 noundef %i.abf)
          to label %"_ZN8gix_pack5index5write39_$LT$impl$u20$gix_pack..index..File$GT$25write_data_iter_to_stream28_$u7b$$u7b$closure$u7d$$u7d$17h99baaf61f2501337E.exit219.i.i.i" unwind label %.loopexit.split-lp378.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !9614

bb.jl:                                            ; preds = %bb.jj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd), !noalias !9612
  %i.abg = load i64, ptr %i.kg, align 8, !noalias !9614, !noundef !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc), !noalias !9612
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bc, ptr noundef nonnull align 8 dereferenceable(40) %i.bh, i64 40, i1 false), !noalias !9612
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.en, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx, i64 24, i1 false), !noalias !9802
  store i64 0, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !9615
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.7.0..sroa_idx, align 8, !alias.scope !9615
  store i64 0, ptr %.sroa.8.0..sroa_idx, align 8, !alias.scope !9615
  store i64 %i.kj, ptr %i.em, align 8, !noalias !9612
  invoke fastcc void @"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$6insert17hb9221b1bd280e2bbE"(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.bd, ptr noalias noundef align 8 dereferenceable(24) %i.bb, i64 noundef %i.abg, ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.bc)
          to label %bb.jq unwind label %.loopexit.split-lp378.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !9614

"_ZN8gix_pack5index5write39_$LT$impl$u20$gix_pack..index..File$GT$25write_data_iter_to_stream28_$u7b$$u7b$closure$u7d$$u7d$17h99baaf61f2501337E.exit219.i.i.i": ; preds = %bb.jk
  %i.abh = load i8, ptr %i.ax, align 1, !range !47, !noalias !9612, !noundef !41
  %i.abi = trunc nuw i8 %i.abh to i1
  br i1 %i.abi, label %bb.jm, label %bb.jo

bb.jm:                                            ; preds = %"_ZN8gix_pack5index5write39_$LT$impl$u20$gix_pack..index..File$GT$25write_data_iter_to_stream28_$u7b$$u7b$closure$u7d$$u7d$17h99baaf61f2501337E.exit219.i.i.i"
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #67, !noalias !9614
  %i.abj = call noundef dereferenceable_or_null(20) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 20, i64 noundef range(i64 1, -9223372036854775807) 1) #67, !noalias !9614 ; 3 uses
  %i.abk = icmp eq ptr %i.abj, null
  br i1 %i.abk, label %.invoke, label %bb.jn, !prof !49

.invoke:                                          ; preds = %bb.jm, %bb.bm
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 1, i64 noundef 20) #73
          to label %.cont unwind label %.loopexit.split-lp378.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !9614

.cont:                                            ; preds = %.invoke
  unreachable

bb.jn:                                            ; preds = %bb.jm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %i.abj, ptr noundef nonnull align 1 dereferenceable(20) %i.eu, i64 20, i1 false), !noalias !9614
  br label %.loopexit243.i

bb.jo:                                            ; preds = %"_ZN8gix_pack5index5write39_$LT$impl$u20$gix_pack..index..File$GT$25write_data_iter_to_stream28_$u7b$$u7b$closure$u7d$$u7d$17h99baaf61f2501337E.exit219.i.i.i"
  %i.abl = load ptr, ptr %i.bo, align 8, !noalias !9612, !nonnull !41, !noundef !41
  %i.abm = getelementptr inbounds nuw i8, ptr %i.abl, i64 16
  %i.abn = atomicrmw add ptr %i.abm, i64 1 monotonic, align 8, !noalias !9614 ; 0 uses
  %i.abo = load ptr, ptr %i.bn, align 8, !noalias !9612, !nonnull !41, !noundef !41
  %i.abp = getelementptr inbounds nuw i8, ptr %i.abo, i64 16
  %i.abq = atomicrmw add ptr %i.abp, i64 %.sroa.7294.0.i.i.i monotonic, align 8, !noalias !9614 ; 0 uses
  br label %bb.jp

bb.jp:                                            ; preds = %bb.jt, %bb.jo
  %i.abr = phi ptr [ %i.abw, %bb.jt ], [ %i.ka, %bb.jo ]
  %i.abs = phi i64 [ %i.aby, %bb.jt ], [ %i.kb, %bb.jo ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !noalias !9612
  %i.abt = icmp eq ptr %.sroa.0139.1442.i.i.i, %i.jw ; 2 uses
  %.sroa.0139.1.idx.i.i.i = select i1 %i.abt, i64 0, i64 4
  %.sroa.0139.1.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0139.1442.i.i.i, i64 %.sroa.0139.1.idx.i.i.i
  br i1 %i.abt, label %.thread320.i.i.i, label %bb.bp

.loopexit243.i:                                   ; preds = %bb.ji, %bb.jn
  %.sroa.15107.3.i = phi ptr [ %i.abj, %bb.jn ], [ undef, %bb.ji ]
  %.sroa.0.3.i = phi i8 [ 5, %bb.jn ], [ 9, %bb.ji ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !noalias !9612
  br label %bb.iw

bb.jq:                                            ; preds = %bb.jl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !9612
  %.val183.i.i.i = load i64, ptr %i.eo, align 8, !range !64, !noalias !9612, !noundef !41 ; 2 uses
  %switch.i.i.i = icmp sgt i64 %.val183.i.i.i, 0
  br i1 %switch.i.i.i, label %bb.jr, label %"_ZN4core3ptr112drop_in_place$LT$core..option..Option$LT$$LP$gix_pack..data..Entry$C$u64$C$alloc..vec..Vec$LT$u8$GT$$RP$$GT$$GT$17h53f7a5006e4cf8e6E.exit.i.i.i"

bb.jr:                                            ; preds = %bb.jq
  %.val184.i.i.i = load ptr, ptr %i.ep, align 8, !noalias !9612, !nonnull !41, !noundef !41
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val184.i.i.i, i64 noundef %.val183.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #67, !noalias !9803
  br label %"_ZN4core3ptr112drop_in_place$LT$core..option..Option$LT$$LP$gix_pack..data..Entry$C$u64$C$alloc..vec..Vec$LT$u8$GT$$RP$$GT$$GT$17h53f7a5006e4cf8e6E.exit.i.i.i"

"_ZN4core3ptr112drop_in_place$LT$core..option..Option$LT$$LP$gix_pack..data..Entry$C$u64$C$alloc..vec..Vec$LT$u8$GT$$RP$$GT$$GT$17h53f7a5006e4cf8e6E.exit.i.i.i": ; preds = %bb.jr, %bb.jq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !noalias !9612
  %i.abu = load i64, ptr %i.ba, align 8, !range !43, !noalias !9612, !noundef !41
  %i.abv = icmp eq i64 %i.kb, %i.abu
  br i1 %i.abv, label %bb.js, label %bb.jt

bb.js:                                            ; preds = %"_ZN4core3ptr112drop_in_place$LT$core..option..Option$LT$$LP$gix_pack..data..Entry$C$u64$C$alloc..vec..Vec$LT$u8$GT$$RP$$GT$$GT$17h53f7a5006e4cf8e6E.exit.i.i.i"
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h74d004bef66c2479E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ba, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @2596)
          to label %._crit_edge.i.i.i unwind label %.loopexit.split-lp378.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !9614

._crit_edge.i.i.i:                                ; preds = %bb.js
  %.pre493.i.i.i = load ptr, ptr %i.eh, align 8, !noalias !9612
  br label %bb.jt

bb.jt:                                            ; preds = %._crit_edge.i.i.i, %"_ZN4core3ptr112drop_in_place$LT$core..option..Option$LT$$LP$gix_pack..data..Entry$C$u64$C$alloc..vec..Vec$LT$u8$GT$$RP$$GT$$GT$17h53f7a5006e4cf8e6E.exit.i.i.i"
  %i.abw = phi ptr [ %.pre493.i.i.i, %._crit_edge.i.i.i ], [ %i.ka, %"_ZN4core3ptr112drop_in_place$LT$core..option..Option$LT$$LP$gix_pack..data..Entry$C$u64$C$alloc..vec..Vec$LT$u8$GT$$RP$$GT$$GT$17h53f7a5006e4cf8e6E.exit.i.i.i" ] ; 2 uses
  %i.abx = getelementptr inbounds nuw [24 x i8], ptr %i.abw, i64 %i.kb ; 3 uses
  store i16 %i.jz, ptr %i.abx, align 8, !noalias !9804
  %.sroa.4278.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.abx, i64 8
  store ptr %i.kf, ptr %.sroa.4278.0..sroa_idx.i.i.i, align 8, !noalias !9804
  %.sroa.5279.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.abx, i64 16
  store ptr %.sroa.6106.0.copyload.i.i.i, ptr %.sroa.5279.0..sroa_idx.i.i.i, align 8, !noalias !9804
  %i.aby = add i64 %i.kb, 1                       ; 2 uses
  store i64 %i.aby, ptr %i.ei, align 8, !noalias !9612
  br label %bb.jp

end_hunk_0
begin_hunk_1_@"_ZN12gix_features8parallel11in_parallel22in_parallel_with_slice28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17hd6064f9972f10755E":bb.a
  %.not5.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.xp, null
  br i1 %.not5.i.i.i.i.i.i.i.i.i, label %.loopexit8.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.noexc12.i.i.i, %.noexc13.i.i.i
  %i.xq = phi ptr [ %i.xw, %.noexc13.i.i.i ], [ %i.xp, %.noexc12.i.i.i ]
  %.sroa.23.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.23.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !10541
  %i.xr = getelementptr inbounds nuw i8, ptr %i.xq, i64 96
  %i.xs = getelementptr inbounds nuw [72 x i8], ptr %i.xr, i64 %.sroa.23.0.copyload.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.xt = getelementptr i8, ptr %i.xs, i64 48
  %.val.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.xt, align 8, !alias.scope !10542, !noalias !10543 ; 2 uses
  %i.xu = icmp eq i64 %.val.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.xu, label %"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17h8ca7f9be5105ad95E.exit.i.i.i.i.i.i.i.i.i", label %bb.in

bb.in:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.xv = getelementptr i8, ptr %i.xs, i64 56
  %.val1.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.xv, align 8, !noalias !10543, !nonnull !41, !noundef !41
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #67, !noalias !10544
  br label %"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17h8ca7f9be5105ad95E.exit.i.i.i.i.i.i.i.i.i"

"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17h8ca7f9be5105ad95E.exit.i.i.i.i.i.i.i.i.i": ; preds = %bb.in, %.lr.ph.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !10541
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !10541
  invoke fastcc void @"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17h8c66f42439123c60E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.k, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.l)
          to label %.noexc13.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i5.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !10528

.noexc13.i.i.i:                                   ; preds = %"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17h8ca7f9be5105ad95E.exit.i.i.i.i.i.i.i.i.i"
  %i.xw = load ptr, ptr %i.k, align 8, !noalias !10541, !noundef !41 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.xw, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %.loopexit8.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.loopexit.split-lp.i.i.i:                         ; preds = %.loopexit.split-lp.loopexit.split-lp.i5.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, %.body.i.i.i
  %.pn.i.i.i = phi { ptr, i32 } [ %eh.lpad-body.i.i.i, %.body.i.i.i ], [ %lpad.loopexit.split-lp2206, %.loopexit.split-lp.loopexit.split-lp.i5.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %.val7.i.i.i = load i64, ptr %i.ev, align 8, !noalias !10406 ; 2 uses
  %i.xx = icmp eq i64 %.val7.i.i.i, 0
  br i1 %i.xx, label %"_ZN4core3ptr217drop_in_place$LT$lock_api..mutex..Mutex$LT$parking_lot..raw_mutex..RawMutex$C$alloc..vec..Vec$LT$$LP$u16$C$gix_pack..cache..delta..traverse..resolve..root..Node$LT$gix_pack..index..write..TreeEntry$GT$$RP$$GT$$GT$$GT$17h111369cc99884624E.exit.i.i.i", label %bb.io

bb.io:                                            ; preds = %.loopexit.split-lp.i.i.i
  %.val8.i.i.i = load ptr, ptr %i.fv, align 8, !noalias !10406, !nonnull !41, !noundef !41
  %i.xy = mul nuw i64 %.val7.i.i.i, 24
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8.i.i.i, i64 noundef %i.xy, i64 noundef range(i64 1, -9223372036854775807) 8) #67, !noalias !10528
  br label %"_ZN4core3ptr217drop_in_place$LT$lock_api..mutex..Mutex$LT$parking_lot..raw_mutex..RawMutex$C$alloc..vec..Vec$LT$$LP$u16$C$gix_pack..cache..delta..traverse..resolve..root..Node$LT$gix_pack..index..write..TreeEntry$GT$$RP$$GT$$GT$$GT$17h111369cc99884624E.exit.i.i.i"

.loopexit.split-lp.loopexit.split-lp.i5.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp: ; preds = %"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17h8ca7f9be5105ad95E.exit.i.i.i.i.i.i.i.i.i", %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hcf7cef33a6293819E.exit.i.i.i.i.i.i.i"
  %lpad.loopexit.split-lp2206 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i.i

.loopexit8.i.i.i:                                 ; preds = %.noexc13.i.i.i, %.noexc12.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !10541
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !10538
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !10406
  %.val.i6.i.i = load i64, ptr %i.ev, align 8, !noalias !10406 ; 2 uses
  %i.xz = icmp eq i64 %.val.i6.i.i, 0
  br i1 %i.xz, label %"_ZN4core3ptr217drop_in_place$LT$lock_api..mutex..Mutex$LT$parking_lot..raw_mutex..RawMutex$C$alloc..vec..Vec$LT$$LP$u16$C$gix_pack..cache..delta..traverse..resolve..root..Node$LT$gix_pack..index..write..TreeEntry$GT$$RP$$GT$$GT$$GT$17h111369cc99884624E.exit14.i.i.i", label %bb.ip

bb.ip:                                            ; preds = %.loopexit8.i.i.i
  %.val6.i.i.i = load ptr, ptr %i.fv, align 8, !noalias !10406, !nonnull !41, !noundef !41
  %i.ya = mul nuw i64 %.val.i6.i.i, 24
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val6.i.i.i, i64 noundef %i.ya, i64 noundef range(i64 1, -9223372036854775807) 8) #67, !noalias !10528
  br label %"_ZN4core3ptr217drop_in_place$LT$lock_api..mutex..Mutex$LT$parking_lot..raw_mutex..RawMutex$C$alloc..vec..Vec$LT$$LP$u16$C$gix_pack..cache..delta..traverse..resolve..root..Node$LT$gix_pack..index..write..TreeEntry$GT$$RP$$GT$$GT$$GT$17h111369cc99884624E.exit14.i.i.i"

"_ZN4core3ptr217drop_in_place$LT$lock_api..mutex..Mutex$LT$parking_lot..raw_mutex..RawMutex$C$alloc..vec..Vec$LT$$LP$u16$C$gix_pack..cache..delta..traverse..resolve..root..Node$LT$gix_pack..index..write..TreeEntry$GT$$RP$$GT$$GT$$GT$17h111369cc99884624E.exit14.i.i.i": ; preds = %bb.ip, %.loopexit8.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !10406
  call void @llvm.experimental.noalias.scope.decl(metadata !10545)
  call void @llvm.experimental.noalias.scope.decl(metadata !10546)
  %i.yb = load ptr, ptr %i.ar, align 8, !alias.scope !10547, !noalias !10406, !nonnull !41, !noundef !41
  %i.yc = atomicrmw add ptr %i.yb, i64 -1 release, align 8, !noalias !10548
  %i.yd = icmp eq i64 %i.yc, 1
  br i1 %i.yd, label %bb.iq, label %"_ZN4core3ptr76drop_in_place$LT$alloc..sync..Arc$LT$core..sync..atomic..AtomicUsize$GT$$GT$17h82e0eaf58739c02dE.exit.i.i.i"

bb.iq:                                            ; preds = %"_ZN4core3ptr217drop_in_place$LT$lock_api..mutex..Mutex$LT$parking_lot..raw_mutex..RawMutex$C$alloc..vec..Vec$LT$$LP$u16$C$gix_pack..cache..delta..traverse..resolve..root..Node$LT$gix_pack..index..write..TreeEntry$GT$$RP$$GT$$GT$$GT$17h111369cc99884624E.exit14.i.i.i"
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h3c1038b7ecf8e9ceE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ar)
          to label %"_ZN4core3ptr76drop_in_place$LT$alloc..sync..Arc$LT$core..sync..atomic..AtomicUsize$GT$$GT$17h82e0eaf58739c02dE.exit.i.i.i" unwind label %bb.is, !noalias !10528

"_ZN4core3ptr76drop_in_place$LT$alloc..sync..Arc$LT$core..sync..atomic..AtomicUsize$GT$$GT$17h82e0eaf58739c02dE.exit20.i.i.i": ; preds = %bb.iv, %"_ZN4core3ptr217drop_in_place$LT$lock_api..mutex..Mutex$LT$parking_lot..raw_mutex..RawMutex$C$alloc..vec..Vec$LT$$LP$u16$C$gix_pack..cache..delta..traverse..resolve..root..Node$LT$gix_pack..index..write..TreeEntry$GT$$RP$$GT$$GT$$GT$17h111369cc99884624E.exit.i.i.i", %bb.is
  %.pn4.i.i.i = phi { ptr, i32 } [ %i.yh, %bb.is ], [ %.pn.i.i.i, %bb.iv ], [ %.pn.i.i.i, %"_ZN4core3ptr217drop_in_place$LT$lock_api..mutex..Mutex$LT$parking_lot..raw_mutex..RawMutex$C$alloc..vec..Vec$LT$$LP$u16$C$gix_pack..cache..delta..traverse..resolve..root..Node$LT$gix_pack..index..write..TreeEntry$GT$$RP$$GT$$GT$$GT$17h111369cc99884624E.exit.i.i.i" ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10549)
  call void @llvm.experimental.noalias.scope.decl(metadata !10550)
  %i.ye = load ptr, ptr %i.as, align 8, !alias.scope !10551, !noalias !10406, !nonnull !41, !noundef !41
  %i.yf = atomicrmw add ptr %i.ye, i64 -1 release, align 8, !noalias !10552
  %i.yg = icmp eq i64 %i.yf, 1
  br i1 %i.yg, label %bb.ir, label %.critedge173.i.i.i

bb.ir:                                            ; preds = %"_ZN4core3ptr76drop_in_place$LT$alloc..sync..Arc$LT$core..sync..atomic..AtomicUsize$GT$$GT$17h82e0eaf58739c02dE.exit20.i.i.i"
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h3c1038b7ecf8e9ceE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.as)
          to label %.critedge173.i.i.i unwind label %bb.iu, !noalias !10528

bb.is:                                            ; preds = %bb.iq
  %i.yh = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr76drop_in_place$LT$alloc..sync..Arc$LT$core..sync..atomic..AtomicUsize$GT$$GT$17h82e0eaf58739c02dE.exit20.i.i.i"

"_ZN4core3ptr76drop_in_place$LT$alloc..sync..Arc$LT$core..sync..atomic..AtomicUsize$GT$$GT$17h82e0eaf58739c02dE.exit.i.i.i": ; preds = %bb.iq, %"_ZN4core3ptr217drop_in_place$LT$lock_api..mutex..Mutex$LT$parking_lot..raw_mutex..RawMutex$C$alloc..vec..Vec$LT$$LP$u16$C$gix_pack..cache..delta..traverse..resolve..root..Node$LT$gix_pack..index..write..TreeEntry$GT$$RP$$GT$$GT$$GT$17h111369cc99884624E.exit14.i.i.i"
  call void @llvm.experimental.noalias.scope.decl(metadata !10553)
  call void @llvm.experimental.noalias.scope.decl(metadata !10554)
  %i.yi = load ptr, ptr %i.as, align 8, !alias.scope !10555, !noalias !10406, !nonnull !41, !noundef !41
  %i.yj = atomicrmw add ptr %i.yi, i64 -1 release, align 8, !noalias !10556
  %i.yk = icmp eq i64 %i.yj, 1
  br i1 %i.yk, label %bb.it, label %_ZN8gix_pack5cache5delta8traverse7resolve9deltas_mt17hfdec0f40ce38e4d1E.exit.i.i

bb.it:                                            ; preds = %"_ZN4core3ptr76drop_in_place$LT$alloc..sync..Arc$LT$core..sync..atomic..AtomicUsize$GT$$GT$17h82e0eaf58739c02dE.exit.i.i.i"
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h3c1038b7ecf8e9ceE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.as)
          to label %_ZN8gix_pack5cache5delta8traverse7resolve9deltas_mt17hfdec0f40ce38e4d1E.exit.i.i unwind label %bb.cf, !noalias !10377

bb.iu:                                            ; preds = %bb.iv, %bb.ir, %.body.i.i.i
  %i.yl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #74, !noalias !10528
  unreachable

"_ZN4core3ptr217drop_in_place$LT$lock_api..mutex..Mutex$LT$parking_lot..raw_mutex..RawMutex$C$alloc..vec..Vec$LT$$LP$u16$C$gix_pack..cache..delta..traverse..resolve..root..Node$LT$gix_pack..index..write..TreeEntry$GT$$RP$$GT$$GT$$GT$17h111369cc99884624E.exit.i.i.i": ; preds = %bb.io, %.loopexit.split-lp.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !10557)
  call void @llvm.experimental.noalias.scope.decl(metadata !10558)
  %i.ym = load ptr, ptr %i.ar, align 8, !alias.scope !10559, !noalias !10406, !nonnull !41, !noundef !41
  %i.yn = atomicrmw add ptr %i.ym, i64 -1 release, align 8, !noalias !10560
  %i.yo = icmp eq i64 %i.yn, 1
  br i1 %i.yo, label %bb.iv, label %"_ZN4core3ptr76drop_in_place$LT$alloc..sync..Arc$LT$core..sync..atomic..AtomicUsize$GT$$GT$17h82e0eaf58739c02dE.exit20.i.i.i"

bb.iv:                                            ; preds = %"_ZN4core3ptr217drop_in_place$LT$lock_api..mutex..Mutex$LT$parking_lot..raw_mutex..RawMutex$C$alloc..vec..Vec$LT$$LP$u16$C$gix_pack..cache..delta..traverse..resolve..root..Node$LT$gix_pack..index..write..TreeEntry$GT$$RP$$GT$$GT$$GT$17h111369cc99884624E.exit.i.i.i"
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h3c1038b7ecf8e9ceE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ar)
          to label %"_ZN4core3ptr76drop_in_place$LT$alloc..sync..Arc$LT$core..sync..atomic..AtomicUsize$GT$$GT$17h82e0eaf58739c02dE.exit20.i.i.i" unwind label %bb.iu, !noalias !10528

_ZN8gix_pack5cache5delta8traverse7resolve9deltas_mt17hfdec0f40ce38e4d1E.exit.i.i: ; preds = %bb.it, %"_ZN4core3ptr76drop_in_place$LT$alloc..sync..Arc$LT$core..sync..atomic..AtomicUsize$GT$$GT$17h82e0eaf58739c02dE.exit.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !10379
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !10379
  br label %bb.iw

bb.iw:                                            ; preds = %.loopexit242.i, %bb.iy, %_ZN8gix_pack5cache5delta8traverse7resolve9deltas_mt17hfdec0f40ce38e4d1E.exit.i.i, %bb.bn
  %.sroa.19.3.i = phi i64 [ undef, %bb.bn ], [ %.sroa.79.i.sroa.4.1.i.i.i171.i, %_ZN8gix_pack5cache5delta8traverse7resolve9deltas_mt17hfdec0f40ce38e4d1E.exit.i.i ], [ %.sroa.20155.4.ph.i, %bb.iy ], [ undef, %.loopexit242.i ] ; 3 uses
  %.sroa.17.4.i = phi ptr [ @2591, %bb.bn ], [ %i.wq, %_ZN8gix_pack5cache5delta8traverse7resolve9deltas_mt17hfdec0f40ce38e4d1E.exit.i.i ], [ %i.yr, %bb.iy ], [ @2591, %.loopexit242.i ] ; 3 uses
  %.sroa.15106.4.i = phi ptr [ %i.jj, %bb.bn ], [ %i.wr, %_ZN8gix_pack5cache5delta8traverse7resolve9deltas_mt17hfdec0f40ce38e4d1E.exit.i.i ], [ %.sroa.16153.4.ph.i, %bb.iy ], [ %.sroa.15106.3.i, %.loopexit242.i ] ; 3 uses
  %.sroa.14.4.i = phi i8 [ undef, %bb.bn ], [ %.sroa.14.0.copyload98.i, %_ZN8gix_pack5cache5delta8traverse7resolve9deltas_mt17hfdec0f40ce38e4d1E.exit.i.i ], [ %.sroa.13151.4.ph.i, %bb.iy ], [ %i.aax, %.loopexit242.i ] ; 3 uses
  %.sroa.0.4.i = phi i8 [ 5, %bb.bn ], [ %i.wx, %_ZN8gix_pack5cache5delta8traverse7resolve9deltas_mt17hfdec0f40ce38e4d1E.exit.i.i ], [ %.sroa.9150.1.ph.i, %bb.iy ], [ %.sroa.0.3.i, %.loopexit242.i ] ; 3 uses
  %.sroa.79.i.sroa.4.1.i.i.i170.i = phi i64 [ %.sroa.79.i.sroa.4.1.i.i.i167.i, %bb.bn ], [ %.sroa.79.i.sroa.4.1.i.i.i171.i, %_ZN8gix_pack5cache5delta8traverse7resolve9deltas_mt17hfdec0f40ce38e4d1E.exit.i.i ], [ %.sroa.79.i.sroa.4.1.i.i.i167.i, %bb.iy ], [ %.sroa.79.i.sroa.4.1.i.i.i167.i, %.loopexit242.i ] ; 3 uses
  %.sroa.086.4.i.i.i = phi i1 [ true, %bb.bn ], [ false, %_ZN8gix_pack5cache5delta8traverse7resolve9deltas_mt17hfdec0f40ce38e4d1E.exit.i.i ], [ true, %bb.iy ], [ true, %.loopexit242.i ]
  %i.yp = icmp eq i64 %.sroa.0289.0.i.i.i, 0
  br i1 %i.yp, label %bb.bg, label %bb.ix

bb.ix:                                            ; preds = %bb.iw
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6291.0.i.i.i, i64 noundef %.sroa.0289.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #67, !noalias !10561
  br label %bb.bg

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h6821d8d6aa614832E.exit194.i.i.i": ; preds = %bb.cb, %.thread324.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk), !noalias !10380
  %.pr.i.i.i = load i64, ptr %i.ei, align 8, !noalias !10380 ; 2 uses
  %i.yq = icmp eq i64 %.pr.i.i.i, 0
  br i1 %i.yq, label %.thread.i.i.i, label %bb.ap

bb.iy:                                            ; preds = %bb.bx, %bb.bs
  %.sroa.20155.4.ph.i = phi i64 [ %.sroa.20155.3.i, %bb.bx ], [ %.sroa.20155.1.i, %bb.bs ]
  %.sroa.18154.4.ph.i = phi i64 [ %.sroa.18154.3.i, %bb.bx ], [ %.sroa.18154.1.i, %bb.bs ]
  %.sroa.16153.4.ph.i = phi ptr [ %.sroa.16153.3.i, %bb.bx ], [ %i.kq, %bb.bs ]
  %.sroa.13151.4.ph.i = phi i8 [ %.sroa.13151.3.i, %bb.bx ], [ %.sroa.13151.1.i, %bb.bs ]
  %.sroa.9150.1.ph.i = phi i8 [ %.sroa.9150.0.i, %bb.bx ], [ 3, %bb.bs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.443.i.sroa.0.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.443.i.sroa.7.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.15.i, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.15152.i, i64 6, i1 false), !noalias !10388
  %i.yr = inttoptr i64 %.sroa.18154.4.ph.i to ptr
  br label %bb.iw

bb.iz:                                            ; preds = %.noexc61.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !10397
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh), !noalias !10380
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.8149.1..sroa.2138.0..sroa_idx.i.i.sroa_idx.i, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.443.i.sroa.0.i, i64 6, i1 false), !noalias !10394
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.15152.i, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.443.i.sroa.7.i, i64 6, i1 false), !noalias !10398
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !10397
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.443.i.sroa.0.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.443.i.sroa.7.i)
  store i8 %i.kp, ptr %.sroa.2138.0..sroa_idx.i.i.i, align 1, !noalias !10380
  store i8 %.sroa.443.i.sroa.5.0.copyload.i, ptr %.sroa.9150.1..sroa.2138.0..sroa_idx.i.i.sroa_idx.i, align 8, !noalias !10380
  store i8 %.sroa.443.i.sroa.6.0.copyload.i, ptr %.sroa.13151.1..sroa.2138.0..sroa_idx.i.i.sroa_idx.i, align 1, !noalias !10380
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.15152.1..sroa.2138.0..sroa_idx.i.i.sroa_idx.i, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.15152.i, i64 6, i1 false), !noalias !10380
  store ptr %.sroa.443.i.sroa.8.0.copyload.i, ptr %.sroa.16153.1..sroa.2138.0..sroa_idx.i.i.sroa_idx.i, align 8, !noalias !10380
  store i64 %.sroa.778.0.copyload.i.i, ptr %.sroa.18154.1..sroa.2138.0..sroa_idx.i.i.sroa_idx.i, align 8, !noalias !10380
  store i64 %.sroa.879.0.copyload.i.i, ptr %.sroa.20155.1..sroa.2138.0..sroa_idx.i.i.sroa_idx.i, align 8, !noalias !10380
  store i8 %i.kn, ptr %i.bh, align 8, !noalias !10380
  %i.ys = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !10383, !nonnull !41, !noundef !41 ; 4 uses
  %i.yt = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !10383, !noundef !41 ; 8 uses
  %i.yu = getelementptr inbounds nuw i8, ptr %i.ys, i64 %i.yt ; 2 uses
  %i.yv = icmp samesign eq i64 %i.yt, 0
  br i1 %i.yv, label %.thread335.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.iz, %.lr.ph.i.i.i.i
  %.sroa.0.011.i.i.i.i = phi i32 [ %i.zf, %.lr.ph.i.i.i.i ], [ 0, %bb.iz ] ; 2 uses
  %.sroa.02.010.i.i.i.i = phi i64 [ %i.zd, %.lr.ph.i.i.i.i ], [ 0, %bb.iz ]
  %.sroa.04.09.i.i.i.i = phi i64 [ %i.yw, %.lr.ph.i.i.i.i ], [ 0, %bb.iz ] ; 2 uses
  %.sroa.07.08.i.i.i.i = phi ptr [ %i.zg, %.lr.ph.i.i.i.i ], [ %i.ys, %bb.iz ] ; 2 uses
  %i.yw = add nuw i64 %.sroa.04.09.i.i.i.i, 1     ; 5 uses
  %i.yx = load i8, ptr %.sroa.07.08.i.i.i.i, align 1, !alias.scope !10562, !noalias !10382, !noundef !41 ; 2 uses
  %i.yy = and i8 %i.yx, 127
  %i.yz = zext nneg i8 %i.yy to i64
  %i.za = and i32 %.sroa.0.011.i.i.i.i, 63
  %i.zb = zext nneg i32 %i.za to i64
  %i.zc = shl i64 %i.yz, %i.zb
  %i.zd = or i64 %i.zc, %.sroa.02.010.i.i.i.i     ; 3 uses
  %i.ze = icmp sgt i8 %i.yx, -1
  %i.zf = add nuw nsw i32 %.sroa.0.011.i.i.i.i, 7
  %i.zg = getelementptr inbounds nuw i8, ptr %.sroa.07.08.i.i.i.i, i64 1 ; 2 uses
  %i.zh = icmp eq ptr %i.zg, %i.yu
  %or.cond.i.i.i.i = select i1 %i.ze, i1 true, i1 %i.zh
  br i1 %or.cond.i.i.i.i, label %bb.ja, label %.lr.ph.i.i.i.i

bb.ja:                                            ; preds = %.lr.ph.i.i.i.i
  store i64 %.sroa.7294.0.i.i.i, ptr %i.bg, align 8, !noalias !10380
  store i64 %i.zd, ptr %i.bf, align 8, !noalias !10380
  %i.zi = icmp eq i64 %.sroa.7294.0.i.i.i, %i.zd
  br i1 %i.zi, label %bb.jc, label %bb.jb, !prof !48

.thread335.i.i.i:                                 ; preds = %bb.iz
  store i64 %.sroa.7294.0.i.i.i, ptr %i.bg, align 8, !noalias !10380
  store i64 0, ptr %i.bf, align 8, !noalias !10380
  br i1 %i.jy, label %.thread519.i.i.i, label %bb.jb, !prof !48

bb.jb:                                            ; preds = %.thread335.i.i.i, %bb.ja
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be), !noalias !10380
  store ptr @2594, ptr %i.be, align 8, !noalias !10380
  %.sroa.444.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store i64 1, ptr %.sroa.444.0..sroa_idx.i.i.i, align 8, !noalias !10380
  %.sroa.545.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.545.0..sroa_idx.i.i.i, align 8, !noalias !10380
  %.sroa.646.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.646.0..sroa_idx.i.i.i, i8 0, i64 16, i1 false), !noalias !10380
  invoke void @_ZN4core9panicking13assert_failed17he513e705e2b74251E(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bf, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.be, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2595) #73
          to label %bb.bk unwind label %.loopexit.split-lp378.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !10382

bb.jc:                                            ; preds = %bb.ja
  %.not372.i.i.i = icmp ult i64 %.sroa.04.09.i.i.i.i, %i.yt
  br i1 %.not372.i.i.i, label %.thread339.i.i.i, label %.invoke2189, !prof !99

.thread339.i.i.i:                                 ; preds = %bb.jc
  %i.zj = icmp eq i64 %i.yt, %i.yw
  br i1 %i.zj, label %.thread519.i.i.i, label %.lr.ph.i208.preheader.i.i.i

.lr.ph.i208.preheader.i.i.i:                      ; preds = %.thread339.i.i.i
  %i.zk = getelementptr inbounds nuw i8, ptr %i.ys, i64 %i.yw
  br label %.lr.ph.i208.i.i.i

.thread519.i.i.i:                                 ; preds = %.thread339.i.i.i, %.thread335.i.i.i
  store i64 0, ptr %.sroa.8.0..sroa_idx, align 8, !alias.scope !10563
  br label %bb.jh

.lr.ph.i208.i.i.i:                                ; preds = %.lr.ph.i208.i.i.i, %.lr.ph.i208.preheader.i.i.i
  %.sroa.0.011.i209.i.i.i = phi i32 [ %i.zu, %.lr.ph.i208.i.i.i ], [ 0, %.lr.ph.i208.preheader.i.i.i ] ; 2 uses
  %.sroa.02.010.i210.i.i.i = phi i64 [ %i.zs, %.lr.ph.i208.i.i.i ], [ 0, %.lr.ph.i208.preheader.i.i.i ]
  %.sroa.04.09.i211.i.i.i = phi i64 [ %i.zl, %.lr.ph.i208.i.i.i ], [ 0, %.lr.ph.i208.preheader.i.i.i ]
  %.sroa.07.08.i212.i.i.i = phi ptr [ %i.zv, %.lr.ph.i208.i.i.i ], [ %i.zk, %.lr.ph.i208.preheader.i.i.i ] ; 2 uses
  %i.zl = add nuw i64 %.sroa.04.09.i211.i.i.i, 1  ; 2 uses
  %i.zm = load i8, ptr %.sroa.07.08.i212.i.i.i, align 1, !alias.scope !10564, !noalias !10382, !noundef !41 ; 2 uses
  %i.zn = and i8 %i.zm, 127
  %i.zo = zext nneg i8 %i.zn to i64
  %i.zp = and i32 %.sroa.0.011.i209.i.i.i, 63
  %i.zq = zext nneg i32 %i.zp to i64
  %i.zr = shl i64 %i.zo, %i.zq
  %i.zs = or i64 %i.zr, %.sroa.02.010.i210.i.i.i  ; 4 uses
  %i.zt = icmp sgt i8 %i.zm, -1
  %i.zu = add nuw nsw i32 %.sroa.0.011.i209.i.i.i, 7
  %i.zv = getelementptr inbounds nuw i8, ptr %.sroa.07.08.i212.i.i.i, i64 1 ; 2 uses
  %i.zw = icmp eq ptr %i.zv, %i.yu
  %or.cond.i213.i.i.i = select i1 %i.zt, i1 true, i1 %i.zw
  br i1 %or.cond.i213.i.i.i, label %bb.jd, label %.lr.ph.i208.i.i.i

bb.jd:                                            ; preds = %.lr.ph.i208.i.i.i
  %i.zx = add i64 %i.zl, %i.yw                    ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10565)
  %i.zy = load i64, ptr %.sroa.8.0..sroa_idx, align 8, !alias.scope !10563, !noundef !41 ; 6 uses
  %i.zz = icmp sgt i64 %i.zy, -1
  call void @llvm.assume(i1 %i.zz)
  %i.aaa = icmp ugt i64 %i.zs, %i.zy
  br i1 %i.aaa, label %bb.je, label %bb.jg

bb.je:                                            ; preds = %bb.jd
  %i.aab = sub nuw i64 %i.zs, %i.zy               ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10566)
  %i.aac = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !range !43, !alias.scope !10567, !noundef !41
  %i.aad = sub nsw i64 %i.aac, %i.zy
  %i.aae = icmp ugt i64 %i.aab, %i.aad
  br i1 %i.aae, label %bb.jf, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hf41cf182ecbbe496E.exit.i.i.i.i.i", !prof !44

bb.jf:                                            ; preds = %bb.je
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17he4e09bb53e25f47cE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx, i64 noundef %i.zy, i64 noundef %i.aab, i64 noundef 1, i64 noundef 1)
          to label %.noexc217.i.i.i unwind label %.loopexit.split-lp378.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !10382

.noexc217.i.i.i:                                  ; preds = %bb.jf
  %.pre.i.i.i.i.i = load i64, ptr %.sroa.8.0..sroa_idx, align 8, !alias.scope !10568
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hf41cf182ecbbe496E.exit.i.i.i.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hf41cf182ecbbe496E.exit.i.i.i.i.i": ; preds = %.noexc217.i.i.i, %bb.je
  %i.aaf = phi i64 [ %i.zy, %bb.je ], [ %.pre.i.i.i.i.i, %.noexc217.i.i.i ] ; 4 uses
  %i.aag = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !alias.scope !10568, !nonnull !41, !noundef !41 ; 2 uses
  %i.aah = icmp sgt i64 %i.aaf, -1
  call void @llvm.assume(i1 %i.aah)
  %i.aai = getelementptr i8, ptr %i.aag, i64 %i.aaf ; 2 uses
  %i.aaj = icmp ugt i64 %i.aab, 1
  br i1 %i.aaj, label %._crit_edge.thread.i.i.i.i.i, label %._crit_edge.i.i.i.i.i

._crit_edge.thread.i.i.i.i.i:                     ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hf41cf182ecbbe496E.exit.i.i.i.i.i"
  %i.aak = add i64 %i.aab, -1                     ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 1 %i.aai, i8 0, i64 %i.aak, i1 false), !noalias !10569
  %i.aal = add i64 %i.aaf, %i.aak                 ; 2 uses
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.aag, i64 %i.aal
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %._crit_edge.thread.i.i.i.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hf41cf182ecbbe496E.exit.i.i.i.i.i"
  %.sroa.0.0.lcssa16.i.i.i.i.i = phi ptr [ %scevgep.i.i.i.i.i, %._crit_edge.thread.i.i.i.i.i ], [ %i.aai, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hf41cf182ecbbe496E.exit.i.i.i.i.i" ]
  %storemerge.lcssa15.i.i.i.i.i = phi i64 [ %i.aal, %._crit_edge.thread.i.i.i.i.i ], [ %i.aaf, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hf41cf182ecbbe496E.exit.i.i.i.i.i" ]
  store i8 0, ptr %.sroa.0.0.lcssa16.i.i.i.i.i, align 1, !noalias !10569
  %i.aam = add i64 %storemerge.lcssa15.i.i.i.i.i, 1
  %.pre.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !10383
  br label %bb.jg

bb.jg:                                            ; preds = %._crit_edge.i.i.i.i.i, %bb.jd
  %i.aan = phi i64 [ %i.yt, %bb.jd ], [ %.pre.i.i.i, %._crit_edge.i.i.i.i.i ] ; 3 uses
  %i.aao = phi i64 [ %i.zs, %bb.jd ], [ %i.aam, %._crit_edge.i.i.i.i.i ] ; 2 uses
  store i64 %i.aao, ptr %.sroa.8.0..sroa_idx, align 8, !alias.scope !10563
  %i.aap = icmp ugt i64 %i.zx, %i.aan
  br i1 %i.aap, label %.invoke2189, label %._crit_edge.i.i, !prof !100

._crit_edge.i.i:                                  ; preds = %bb.jg
  %.pre.i.i = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !10383
  br label %bb.jh

bb.jh:                                            ; preds = %._crit_edge.i.i, %.thread519.i.i.i
  %i.aaq = phi ptr [ %i.ys, %.thread519.i.i.i ], [ %.pre.i.i, %._crit_edge.i.i ]
  %i.aar = phi i64 [ 0, %.thread519.i.i.i ], [ %i.aao, %._crit_edge.i.i ]
  %i.aas = phi i64 [ %i.yt, %.thread519.i.i.i ], [ %i.zx, %._crit_edge.i.i ] ; 2 uses
  %i.aat = phi i64 [ %i.yt, %.thread519.i.i.i ], [ %i.aan, %._crit_edge.i.i ]
  %i.aau = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !alias.scope !10383, !nonnull !41, !noundef !41
  %i.aav = sub nuw i64 %i.aat, %i.aas
  %i.aaw = getelementptr inbounds nuw i8, ptr %i.aaq, i64 %i.aas
  %i.aax = invoke noundef i8 @_ZN8gix_pack4data5delta5apply17h4e78199f7a12413eE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.6291.0.i.i.i, i64 noundef %.sroa.7294.0.i.i.i, ptr noalias noundef nonnull align 1 %i.aau, i64 noundef %i.aar, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.aaw, i64 noundef %i.aav)
          to label %bb.ji unwind label %.loopexit.split-lp378.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !10382 ; 2 uses

.invoke2189:                                      ; preds = %bb.jg, %bb.jc, %.noexc60.i
  %i.aay = phi i64 [ %i.yw, %bb.jc ], [ %i.kr, %.noexc60.i ], [ %i.zx, %bb.jg ]
  %i.aaz = phi i64 [ %i.yt, %bb.jc ], [ %.sroa.3.0.i.i.i.i, %.noexc60.i ], [ %i.aan, %bb.jg ] ; 2 uses
  %i.aba = phi ptr [ @2598, %bb.jc ], [ @2599, %.noexc60.i ], [ @2597, %bb.jg ]
  invoke void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %i.aay, i64 noundef %i.aaz, i64 noundef %i.aaz, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aba) #73
          to label %.cont2190 unwind label %.loopexit.split-lp378.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !10382

.cont2190:                                        ; preds = %.invoke2189
  unreachable

bb.ji:                                            ; preds = %bb.jh
  %.not158.i.i.i = icmp eq i8 %i.aax, 3
  br i1 %.not158.i.i.i, label %bb.jj, label %.loopexit242.i

bb.jj:                                            ; preds = %bb.ji
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bh, ptr noundef nonnull align 8 dereferenceable(24) %i.bk, i64 24, i1 false), !noalias !10380
  %i.abb = getelementptr inbounds nuw i8, ptr %i.kf, i64 16
  %i.abc = load i64, ptr %i.abb, align 8, !noalias !10382, !noundef !41
  %.not160.i.i.i = icmp eq i64 %i.abc, 0
  br i1 %.not160.i.i.i, label %bb.jk, label %bb.jl

bb.jk:                                            ; preds = %bb.jj
  %i.abd = getelementptr inbounds nuw i8, ptr %i.kf, i64 40
  %i.abe = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !alias.scope !10383, !nonnull !41, !noundef !41
  %i.abf = load i64, ptr %.sroa.8.0..sroa_idx, align 8, !alias.scope !10383, !noundef !41
  invoke void @_ZN8gix_pack5index5write11modify_base17h9e95f32015cc5396E(ptr noalias noundef nonnull sret([21 x i8]) align 1 captures(address) dereferenceable(21) %i.ax, ptr noalias noundef nonnull align 4 dereferenceable(24) %i.abd, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.bh, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.abe, i64 noundef %i.abf)
          to label %"_ZN8gix_pack5index5write39_$LT$impl$u20$gix_pack..index..File$GT$25write_data_iter_to_stream28_$u7b$$u7b$closure$u7d$$u7d$17h5cda044c328b1ba8E.exit219.i.i.i" unwind label %.loopexit.split-lp378.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !10382

bb.jl:                                            ; preds = %bb.jj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd), !noalias !10380
  %i.abg = load i64, ptr %i.kg, align 8, !noalias !10382, !noundef !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc), !noalias !10380
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bc, ptr noundef nonnull align 8 dereferenceable(40) %i.bh, i64 40, i1 false), !noalias !10380
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.en, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx, i64 24, i1 false), !noalias !10570
  store i64 0, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !10383
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.7.0..sroa_idx, align 8, !alias.scope !10383
  store i64 0, ptr %.sroa.8.0..sroa_idx, align 8, !alias.scope !10383
  store i64 %i.kj, ptr %i.em, align 8, !noalias !10380
  invoke fastcc void @"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$6insert17hb9221b1bd280e2bbE"(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.bd, ptr noalias noundef align 8 dereferenceable(24) %i.bb, i64 noundef %i.abg, ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.bc)
          to label %bb.jq unwind label %.loopexit.split-lp378.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !10382

"_ZN8gix_pack5index5write39_$LT$impl$u20$gix_pack..index..File$GT$25write_data_iter_to_stream28_$u7b$$u7b$closure$u7d$$u7d$17h5cda044c328b1ba8E.exit219.i.i.i": ; preds = %bb.jk
  %i.abh = load i8, ptr %i.ax, align 1, !range !47, !noalias !10380, !noundef !41
  %i.abi = trunc nuw i8 %i.abh to i1
  br i1 %i.abi, label %bb.jm, label %bb.jo

bb.jm:                                            ; preds = %"_ZN8gix_pack5index5write39_$LT$impl$u20$gix_pack..index..File$GT$25write_data_iter_to_stream28_$u7b$$u7b$closure$u7d$$u7d$17h5cda044c328b1ba8E.exit219.i.i.i"
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #67, !noalias !10382
  %i.abj = call noundef dereferenceable_or_null(20) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 20, i64 noundef range(i64 1, -9223372036854775807) 1) #67, !noalias !10382 ; 3 uses
  %i.abk = icmp eq ptr %i.abj, null
  br i1 %i.abk, label %.invoke, label %bb.jn, !prof !49

.invoke:                                          ; preds = %bb.jm, %bb.bm
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 1, i64 noundef 20) #73
          to label %.cont unwind label %.loopexit.split-lp378.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !10382

.cont:                                            ; preds = %.invoke
  unreachable

bb.jn:                                            ; preds = %bb.jm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %i.abj, ptr noundef nonnull align 1 dereferenceable(20) %i.eu, i64 20, i1 false), !noalias !10382
  br label %.loopexit242.i

bb.jo:                                            ; preds = %"_ZN8gix_pack5index5write39_$LT$impl$u20$gix_pack..index..File$GT$25write_data_iter_to_stream28_$u7b$$u7b$closure$u7d$$u7d$17h5cda044c328b1ba8E.exit219.i.i.i"
  %i.abl = load ptr, ptr %i.bo, align 8, !noalias !10380, !nonnull !41, !noundef !41
  %i.abm = getelementptr inbounds nuw i8, ptr %i.abl, i64 16
  %i.abn = atomicrmw add ptr %i.abm, i64 1 monotonic, align 8, !noalias !10382 ; 0 uses
  %i.abo = load ptr, ptr %i.bn, align 8, !noalias !10380, !nonnull !41, !noundef !41
  %i.abp = getelementptr inbounds nuw i8, ptr %i.abo, i64 16
  %i.abq = atomicrmw add ptr %i.abp, i64 %.sroa.7294.0.i.i.i monotonic, align 8, !noalias !10382 ; 0 uses
  br label %bb.jp

bb.jp:                                            ; preds = %bb.jt, %bb.jo
  %i.abr = phi ptr [ %i.abw, %bb.jt ], [ %i.ka, %bb.jo ]
  %i.abs = phi i64 [ %i.aby, %bb.jt ], [ %i.kb, %bb.jo ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !noalias !10380
  %i.abt = icmp eq ptr %.sroa.0139.1442.i.i.i, %i.jw ; 2 uses
  %.sroa.0139.1.idx.i.i.i = select i1 %i.abt, i64 0, i64 4
  %.sroa.0139.1.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0139.1442.i.i.i, i64 %.sroa.0139.1.idx.i.i.i
  br i1 %i.abt, label %.thread320.i.i.i, label %bb.bp

.loopexit242.i:                                   ; preds = %bb.ji, %bb.jn
  %.sroa.15106.3.i = phi ptr [ %i.abj, %bb.jn ], [ undef, %bb.ji ]
  %.sroa.0.3.i = phi i8 [ 5, %bb.jn ], [ 9, %bb.ji ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !noalias !10380
  br label %bb.iw

bb.jq:                                            ; preds = %bb.jl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !10380
  %.val184.i.i.i = load i64, ptr %i.eo, align 8, !range !64, !noalias !10380, !noundef !41 ; 2 uses
  %switch.i.i.i = icmp sgt i64 %.val184.i.i.i, 0
  br i1 %switch.i.i.i, label %bb.jr, label %"_ZN4core3ptr112drop_in_place$LT$core..option..Option$LT$$LP$gix_pack..data..Entry$C$u64$C$alloc..vec..Vec$LT$u8$GT$$RP$$GT$$GT$17h53f7a5006e4cf8e6E.exit.i.i.i"

bb.jr:                                            ; preds = %bb.jq
  %.val185.i.i.i = load ptr, ptr %i.ep, align 8, !noalias !10380, !nonnull !41, !noundef !41
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val185.i.i.i, i64 noundef %.val184.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #67, !noalias !10571
  br label %"_ZN4core3ptr112drop_in_place$LT$core..option..Option$LT$$LP$gix_pack..data..Entry$C$u64$C$alloc..vec..Vec$LT$u8$GT$$RP$$GT$$GT$17h53f7a5006e4cf8e6E.exit.i.i.i"

"_ZN4core3ptr112drop_in_place$LT$core..option..Option$LT$$LP$gix_pack..data..Entry$C$u64$C$alloc..vec..Vec$LT$u8$GT$$RP$$GT$$GT$17h53f7a5006e4cf8e6E.exit.i.i.i": ; preds = %bb.jr, %bb.jq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !noalias !10380
  %i.abu = load i64, ptr %i.ba, align 8, !range !43, !noalias !10380, !noundef !41
  %i.abv = icmp eq i64 %i.kb, %i.abu
  br i1 %i.abv, label %bb.js, label %bb.jt

bb.js:                                            ; preds = %"_ZN4core3ptr112drop_in_place$LT$core..option..Option$LT$$LP$gix_pack..data..Entry$C$u64$C$alloc..vec..Vec$LT$u8$GT$$RP$$GT$$GT$17h53f7a5006e4cf8e6E.exit.i.i.i"
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h74d004bef66c2479E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ba, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @2596)
          to label %._crit_edge.i.i.i unwind label %.loopexit.split-lp378.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !10382

._crit_edge.i.i.i:                                ; preds = %bb.js
  %.pre493.i.i.i = load ptr, ptr %i.eh, align 8, !noalias !10380
  br label %bb.jt

bb.jt:                                            ; preds = %._crit_edge.i.i.i, %"_ZN4core3ptr112drop_in_place$LT$core..option..Option$LT$$LP$gix_pack..data..Entry$C$u64$C$alloc..vec..Vec$LT$u8$GT$$RP$$GT$$GT$17h53f7a5006e4cf8e6E.exit.i.i.i"
  %i.abw = phi ptr [ %.pre493.i.i.i, %._crit_edge.i.i.i ], [ %i.ka, %"_ZN4core3ptr112drop_in_place$LT$core..option..Option$LT$$LP$gix_pack..data..Entry$C$u64$C$alloc..vec..Vec$LT$u8$GT$$RP$$GT$$GT$17h53f7a5006e4cf8e6E.exit.i.i.i" ] ; 2 uses
  %i.abx = getelementptr inbounds nuw [24 x i8], ptr %i.abw, i64 %i.kb ; 3 uses
  store i16 %i.jz, ptr %i.abx, align 8, !noalias !10572
  %.sroa.4278.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.abx, i64 8
  store ptr %i.kf, ptr %.sroa.4278.0..sroa_idx.i.i.i, align 8, !noalias !10572
  %.sroa.5279.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.abx, i64 16
  store ptr %.sroa.6106.0.copyload.i.i.i, ptr %.sroa.5279.0..sroa_idx.i.i.i, align 8, !noalias !10572
  %i.aby = add i64 %i.kb, 1                       ; 2 uses
  store i64 %i.aby, ptr %i.ei, align 8, !noalias !10380
  br label %bb.jp

end_hunk_1
begin_hunk_2_@_ZN3std3sys9backtrace28__rust_begin_short_backtrace17ha48248ed44717187E:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.695.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(39) %.sroa.695.i, i64 39, i1 false), !noalias !44341
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.695.i)
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.565.0.copyload.i, i64 40
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6241.0.i) ]
  invoke void @_ZN8gix_pack5index5write11modify_base17h9e95f32015cc5396E(ptr noalias noundef nonnull sret([21 x i8]) align 1 captures(address) dereferenceable(21) %i.c, ptr noalias noundef nonnull align 4 dereferenceable(24) %i.cg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.n, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.6241.0.i, i64 noundef %.sroa.7244.0.i)
          to label %"_ZN8gix_pack5index5write39_$LT$impl$u20$gix_pack..index..File$GT$25write_data_iter_to_stream28_$u7b$$u7b$closure$u7d$$u7d$17h99baaf61f2501337E.exit.i" unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !44339

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h6821d8d6aa614832E.exit163.i": ; preds = %bb.x, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !44341
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.695.i)
  br label %bb.z

bb.z:                                             ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h6821d8d6aa614832E.exit206.i", %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h6821d8d6aa614832E.exit163.i", %bb.p
  %.val1.i211.i = phi ptr [ %.val1.i211459.i, %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h6821d8d6aa614832E.exit206.i" ], [ %.val1.i155.i, %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h6821d8d6aa614832E.exit163.i" ], [ %.val1.i155.i, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !44341
  invoke void @"_ZN72_$LT$gix_features..zlib..Decompress$u20$as$u20$core..ops..drop..Drop$GT$4drop17h08252a01564bc750E"(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.p)
          to label %"_ZN4core3ptr48drop_in_place$LT$gix_features..zlib..Inflate$GT$17h25dce0b86e338063E.exit166.i" unwind label %bb.c, !noalias !44339

bb.aa:                                            ; preds = %bb.br, %bb.bk, %bb.ab, %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h6821d8d6aa614832E.exit160.i"
  %i.ch = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #74, !noalias !44339
  unreachable

_ZN12gix_features9threading5_impl4lock17he5d80b467e48f0dbE.exit.i: ; preds = %bb.s, %bb.r
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.565.0.copyload.i, i64 24
  %i.ck = load i64, ptr %i.cj, align 8, !noalias !44339, !noundef !41
  invoke fastcc void @"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$6remove17hb46c160b546a0aafE"(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.l, ptr noalias noundef align 8 dereferenceable(24) %i.ci, i64 %i.ck)
          to label %bb.ac unwind label %.loopexit.split-lp288.i.loopexit.split-lp.loopexit.split-lp, !noalias !44339

.loopexit.split-lp288.i.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZN12gix_features9threading5_impl4lock17he5d80b467e48f0dbE.exit.i, %bb.af
  %lpad.loopexit.split-lp444 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cl = cmpxchg ptr %i.bw, i8 1, i8 0 release monotonic, align 1, !noalias !44339
  %i.cm = extractvalue { i8, i1 } %i.cl, 1
  br i1 %i.cm, label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h6821d8d6aa614832E.exit160.i", label %bb.ab, !prof !48

bb.ab:                                            ; preds = %.loopexit.split-lp288.i.loopexit.split-lp.loopexit.split-lp
  invoke void @_ZN11parking_lot9raw_mutex8RawMutex11unlock_slow17he7727c2338b37bf4E(ptr noundef nonnull align 1 %i.bw, i1 noundef zeroext false)
          to label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h6821d8d6aa614832E.exit160.i" unwind label %bb.aa, !noalias !44339

bb.ac:                                            ; preds = %_ZN12gix_features9threading5_impl4lock17he5d80b467e48f0dbE.exit.i
  %i.cn = load i64, ptr %i.ah, align 8, !range !64, !noalias !44341, !noundef !41 ; 3 uses
  %.not112.i = icmp eq i64 %i.cn, -9223372036854775808
  br i1 %.not112.i, label %bb.af, label %bb.ad, !prof !44

bb.ad:                                            ; preds = %bb.ac
  %.sroa.093.0.copyload94.i = load i8, ptr %i.l, align 8, !noalias !44341 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.695.i, ptr noundef nonnull align 1 dereferenceable(39) %.sroa.695.0..sroa_idx96.i, i64 39, i1 false), !noalias !44341
  %.sroa.6241.0.copyload243.i = load ptr, ptr %.sroa.6241.0..sroa_idx242.i, align 8, !noalias !44341 ; 2 uses
  %.sroa.7244.0.copyload246.i = load i64, ptr %.sroa.7244.0..sroa_idx245.i, align 8, !noalias !44341 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !44341
  %i.co = cmpxchg ptr %i.bw, i8 1, i8 0 release monotonic, align 1, !noalias !44339
  %i.cp = extractvalue { i8, i1 } %i.co, 1
  br i1 %i.cp, label %"_ZN4core3ptr208drop_in_place$LT$lock_api..mutex..MutexGuard$LT$parking_lot..raw_mutex..RawMutex$C$alloc..collections..btree..map..BTreeMap$LT$u64$C$$LP$gix_pack..data..Entry$C$u64$C$alloc..vec..Vec$LT$u8$GT$$RP$$GT$$GT$$GT$17h1d2ba275afcacf16E.exit169.i", label %bb.ae, !prof !48

bb.ae:                                            ; preds = %bb.ad
  invoke void @_ZN11parking_lot9raw_mutex8RawMutex11unlock_slow17he7727c2338b37bf4E(ptr noundef nonnull align 1 %i.bw, i1 noundef zeroext false)
          to label %"_ZN4core3ptr208drop_in_place$LT$lock_api..mutex..MutexGuard$LT$parking_lot..raw_mutex..RawMutex$C$alloc..collections..btree..map..BTreeMap$LT$u64$C$$LP$gix_pack..data..Entry$C$u64$C$alloc..vec..Vec$LT$u8$GT$$RP$$GT$$GT$$GT$17h1d2ba275afcacf16E.exit169.i" unwind label %.loopexit.split-lp283.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !44339

bb.af:                                            ; preds = %bb.ac
  invoke void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2587, i64 noundef 44, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2605) #73
          to label %bb.ag unwind label %.loopexit.split-lp288.i.loopexit.split-lp.loopexit.split-lp, !noalias !44339

bb.ag:                                            ; preds = %bb.as, %bb.af
  unreachable

"_ZN4core3ptr208drop_in_place$LT$lock_api..mutex..MutexGuard$LT$parking_lot..raw_mutex..RawMutex$C$alloc..collections..btree..map..BTreeMap$LT$u64$C$$LP$gix_pack..data..Entry$C$u64$C$alloc..vec..Vec$LT$u8$GT$$RP$$GT$$GT$$GT$17h1d2ba275afcacf16E.exit194.i": ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.br, %bb.bq, %bb.bk, %bb.bj
  %.pn.i = phi { ptr, i32 } [ %i.hz, %bb.bq ], [ %i.hl, %bb.bj ], [ %i.hl, %bb.bk ], [ %i.hz, %bb.br ], [ %lpad.loopexit.split-lp447, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.cq = icmp eq i64 %.sroa.0239.0.i, 0
  br i1 %i.cq, label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h6821d8d6aa614832E.exit160.i", label %bb.ah

bb.ah:                                            ; preds = %"_ZN4core3ptr208drop_in_place$LT$lock_api..mutex..MutexGuard$LT$parking_lot..raw_mutex..RawMutex$C$alloc..collections..btree..map..BTreeMap$LT$u64$C$$LP$gix_pack..data..Entry$C$u64$C$alloc..vec..Vec$LT$u8$GT$$RP$$GT$$GT$$GT$17h1d2ba275afcacf16E.exit194.i"
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6241.0.i, i64 noundef %.sroa.0239.0.i, i64 noundef range(i64 1, -9223372036854775807) 1) #67, !noalias !44354
  br label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h6821d8d6aa614832E.exit160.i"

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.am, %bb.aw, %bb.ay, %bb.bc, %bb.be, %bb.bn, %bb.bo, %bb.bt, %"_ZN4core3ptr208drop_in_place$LT$lock_api..mutex..MutexGuard$LT$parking_lot..raw_mutex..RawMutex$C$alloc..collections..btree..map..BTreeMap$LT$u64$C$$LP$gix_pack..data..Entry$C$u64$C$alloc..vec..Vec$LT$u8$GT$$RP$$GT$$GT$$GT$17h1d2ba275afcacf16E.exit169.i", %.invoke436, %.invoke, %bb.as
  %lpad.loopexit.split-lp447 = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr208drop_in_place$LT$lock_api..mutex..MutexGuard$LT$parking_lot..raw_mutex..RawMutex$C$alloc..collections..btree..map..BTreeMap$LT$u64$C$$LP$gix_pack..data..Entry$C$u64$C$alloc..vec..Vec$LT$u8$GT$$RP$$GT$$GT$$GT$17h1d2ba275afcacf16E.exit194.i"

"_ZN8gix_pack5index5write39_$LT$impl$u20$gix_pack..index..File$GT$25write_data_iter_to_stream28_$u7b$$u7b$closure$u7d$$u7d$17h99baaf61f2501337E.exit.i": ; preds = %"_ZN4core3ptr208drop_in_place$LT$lock_api..mutex..MutexGuard$LT$parking_lot..raw_mutex..RawMutex$C$alloc..collections..btree..map..BTreeMap$LT$u64$C$$LP$gix_pack..data..Entry$C$u64$C$alloc..vec..Vec$LT$u8$GT$$RP$$GT$$GT$$GT$17h1d2ba275afcacf16E.exit169.i"
  %i.cr = load i8, ptr %i.c, align 1, !range !47, !noalias !44341, !noundef !41
  %i.cs = trunc nuw i8 %i.cr to i1
  br i1 %i.cs, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %"_ZN8gix_pack5index5write39_$LT$impl$u20$gix_pack..index..File$GT$25write_data_iter_to_stream28_$u7b$$u7b$closure$u7d$$u7d$17h99baaf61f2501337E.exit.i"
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #67, !noalias !44339
  %i.ct = call noundef dereferenceable_or_null(20) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 20, i64 noundef range(i64 1, -9223372036854775807) 1) #67, !noalias !44339 ; 3 uses
  %i.cu = icmp eq ptr %i.ct, null
  br i1 %i.cu, label %.invoke, label %bb.aj, !prof !49

bb.aj:                                            ; preds = %bb.ai
  %i.cv = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %i.ct, ptr noundef nonnull align 1 dereferenceable(20) %i.cv, i64 20, i1 false), !noalias !44339
  store i8 5, ptr %0, align 8, !alias.scope !44339
  %.sroa.472.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ct, ptr %.sroa.472.0..sroa_idx.i, align 8, !alias.scope !44339
  %.sroa.573.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @2591, ptr %.sroa.573.0..sroa_idx.i, align 8, !alias.scope !44339
  br label %bb.bu

bb.ak:                                            ; preds = %"_ZN8gix_pack5index5write39_$LT$impl$u20$gix_pack..index..File$GT$25write_data_iter_to_stream28_$u7b$$u7b$closure$u7d$$u7d$17h99baaf61f2501337E.exit.i"
  %i.cw = load ptr, ptr %i.ak, align 8, !alias.scope !44340, !nonnull !41, !align !42, !noundef !41
  %i.cx = load ptr, ptr %i.cw, align 8, !noalias !44339, !nonnull !41, !noundef !41
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %i.cz = atomicrmw add ptr %i.cy, i64 1 monotonic, align 8, !noalias !44339 ; 0 uses
  %i.da = load ptr, ptr %i.al, align 8, !alias.scope !44340, !nonnull !41, !align !42, !noundef !41
  %i.db = load ptr, ptr %i.da, align 8, !noalias !44339, !nonnull !41, !noundef !41
  %i.dc = icmp sgt i64 %.sroa.7244.0.i, -1
  call void @llvm.assume(i1 %i.dc)
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  %i.de = atomicrmw add ptr %i.dd, i64 %.sroa.7244.0.i monotonic, align 8, !noalias !44339 ; 0 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.565.0.copyload.i, i64 8
  %i.dg = load ptr, ptr %i.df, align 8, !noalias !44339, !nonnull !41, !noundef !41 ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.565.0.copyload.i, i64 16
  %i.di = load i64, ptr %i.dh, align 8, !noalias !44339, !noundef !41 ; 2 uses
  %.idx.i = shl nuw nsw i64 %i.di, 2
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dg, i64 %.idx.i
  %i.dk = icmp eq i64 %i.di, 0
  br i1 %i.dk, label %.thread260.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ak
  %.sroa.099.1377.i = getelementptr inbounds nuw i8, ptr %i.dg, i64 4
  %i.dl = icmp eq i64 %.sroa.7244.0.i, 0
  %i.dm = add i16 %.sroa.063.0.copyload.i, 1
  br label %bb.al

bb.al:                                            ; preds = %"_ZN4core3ptr222drop_in_place$LT$lock_api..mutex..MutexGuard$LT$parking_lot..raw_mutex..RawMutex$C$alloc..vec..Vec$LT$$LP$u16$C$gix_pack..cache..delta..traverse..resolve..root..Node$LT$gix_pack..index..write..TreeEntry$GT$$RP$$GT$$GT$$GT$17hd2480af7898f02a7E.exit203.i", %.lr.ph.i
  %i.dn = phi ptr [ %i.aq, %.lr.ph.i ], [ %i.hg, %"_ZN4core3ptr222drop_in_place$LT$lock_api..mutex..MutexGuard$LT$parking_lot..raw_mutex..RawMutex$C$alloc..vec..Vec$LT$$LP$u16$C$gix_pack..cache..delta..traverse..resolve..root..Node$LT$gix_pack..index..write..TreeEntry$GT$$RP$$GT$$GT$$GT$17hd2480af7898f02a7E.exit203.i" ] ; 2 uses
  %i.do = phi ptr [ %.val1.i155.i, %.lr.ph.i ], [ %i.hg, %"_ZN4core3ptr222drop_in_place$LT$lock_api..mutex..MutexGuard$LT$parking_lot..raw_mutex..RawMutex$C$alloc..vec..Vec$LT$$LP$u16$C$gix_pack..cache..delta..traverse..resolve..root..Node$LT$gix_pack..index..write..TreeEntry$GT$$RP$$GT$$GT$$GT$17hd2480af7898f02a7E.exit203.i" ] ; 3 uses
  %i.dp = phi i64 [ %i.ar, %.lr.ph.i ], [ %i.hh, %"_ZN4core3ptr222drop_in_place$LT$lock_api..mutex..MutexGuard$LT$parking_lot..raw_mutex..RawMutex$C$alloc..vec..Vec$LT$$LP$u16$C$gix_pack..cache..delta..traverse..resolve..root..Node$LT$gix_pack..index..write..TreeEntry$GT$$RP$$GT$$GT$$GT$17hd2480af7898f02a7E.exit203.i" ] ; 8 uses
  %.sroa.099.1379.i = phi ptr [ %.sroa.099.1377.i, %.lr.ph.i ], [ %.sroa.099.1.i, %"_ZN4core3ptr222drop_in_place$LT$lock_api..mutex..MutexGuard$LT$parking_lot..raw_mutex..RawMutex$C$alloc..vec..Vec$LT$$LP$u16$C$gix_pack..cache..delta..traverse..resolve..root..Node$LT$gix_pack..index..write..TreeEntry$GT$$RP$$GT$$GT$$GT$17hd2480af7898f02a7E.exit203.i" ] ; 3 uses
  %.sroa.099.0378.i = phi ptr [ %i.dg, %.lr.ph.i ], [ %.sroa.099.1379.i, %"_ZN4core3ptr222drop_in_place$LT$lock_api..mutex..MutexGuard$LT$parking_lot..raw_mutex..RawMutex$C$alloc..vec..Vec$LT$$LP$u16$C$gix_pack..cache..delta..traverse..resolve..root..Node$LT$gix_pack..index..write..TreeEntry$GT$$RP$$GT$$GT$$GT$17hd2480af7898f02a7E.exit203.i" ]
  %i.dq = load i32, ptr %.sroa.099.0378.i, align 4, !noalias !44339, !noundef !41
  %i.dr = zext i32 %i.dq to i64
  %i.ds = load ptr, ptr %.sroa.666.0.copyload.i, align 8, !noalias !44339, !noundef !41 ; 2 uses
  %i.dt = getelementptr inbounds nuw [64 x i8], ptr %i.ds, i64 %i.dr ; 5 uses
  %.not116.i = icmp eq ptr %i.ds, null
  br i1 %.not116.i, label %.thread260.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 24 ; 2 uses
  %i.dv = load i64, ptr %i.du, align 8, !noalias !44339, !noundef !41
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dt, i64 32
  %i.dx = load i64, ptr %i.dw, align 8, !noalias !44339, !noundef !41
  invoke fastcc void @"_ZN8gix_pack5cache5delta8traverse7resolve9deltas_mt28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h788bb0b6557cd9bcE"(ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.b, ptr noalias noundef align 8 dereferenceable(32) %i.o, i64 noundef %i.dv, i64 noundef %i.dx, ptr noalias noundef align 8 dereferenceable(24) %i.q)
          to label %bb.ao unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !44339

.thread260.i:                                     ; preds = %"_ZN4core3ptr222drop_in_place$LT$lock_api..mutex..MutexGuard$LT$parking_lot..raw_mutex..RawMutex$C$alloc..vec..Vec$LT$$LP$u16$C$gix_pack..cache..delta..traverse..resolve..root..Node$LT$gix_pack..index..write..TreeEntry$GT$$RP$$GT$$GT$$GT$17hd2480af7898f02a7E.exit203.i", %bb.al, %bb.ak
  %i.dy = phi ptr [ %i.aq, %bb.ak ], [ %i.hg, %"_ZN4core3ptr222drop_in_place$LT$lock_api..mutex..MutexGuard$LT$parking_lot..raw_mutex..RawMutex$C$alloc..vec..Vec$LT$$LP$u16$C$gix_pack..cache..delta..traverse..resolve..root..Node$LT$gix_pack..index..write..TreeEntry$GT$$RP$$GT$$GT$$GT$17hd2480af7898f02a7E.exit203.i" ], [ %i.dn, %bb.al ]
  %i.dz = phi ptr [ %.val1.i155.i, %bb.ak ], [ %i.hg, %"_ZN4core3ptr222drop_in_place$LT$lock_api..mutex..MutexGuard$LT$parking_lot..raw_mutex..RawMutex$C$alloc..vec..Vec$LT$$LP$u16$C$gix_pack..cache..delta..traverse..resolve..root..Node$LT$gix_pack..index..write..TreeEntry$GT$$RP$$GT$$GT$$GT$17hd2480af7898f02a7E.exit203.i" ], [ %i.do, %bb.al ]
  %i.ea = phi i64 [ %i.ar, %bb.ak ], [ %i.hh, %"_ZN4core3ptr222drop_in_place$LT$lock_api..mutex..MutexGuard$LT$parking_lot..raw_mutex..RawMutex$C$alloc..vec..Vec$LT$$LP$u16$C$gix_pack..cache..delta..traverse..resolve..root..Node$LT$gix_pack..index..write..TreeEntry$GT$$RP$$GT$$GT$$GT$17hd2480af7898f02a7E.exit203.i" ], [ %i.dp, %bb.al ]
  %i.eb = icmp eq i64 %.sroa.0239.0.i, 0
  br i1 %i.eb, label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h6821d8d6aa614832E.exit176.i", label %bb.an

bb.an:                                            ; preds = %.thread260.i
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6241.0.i, i64 noundef %.sroa.0239.0.i, i64 noundef range(i64 1, -9223372036854775807) 1) #67, !noalias !44355
  br label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h6821d8d6aa614832E.exit176.i"

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h6821d8d6aa614832E.exit176.i": ; preds = %bb.an, %.thread260.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !44341
  br label %bb.e

bb.ao:                                            ; preds = %bb.am
  %i.ec = load i8, ptr %i.b, align 8, !range !97, !noalias !44341, !noundef !41 ; 2 uses
  %i.ed = icmp eq i8 %i.ec, 6
  br i1 %i.ed, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.ee = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.ee, i64 32, i1 false), !noalias !44340
  br label %bb.bu

bb.aq:                                            ; preds = %bb.ao
  %.sroa.579.0.copyload.i = load i64, ptr %.sroa.579.0..sroa_idx.i, align 8, !noalias !44341
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !44341
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.298.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(39) %.sroa.478.0..sroa_idx.i, i64 39, i1 false), !noalias !44341
  store i8 %i.ec, ptr %i.k, align 8, !noalias !44341
  %i.ef = load ptr, ptr %i.u, align 8, !noalias !44341, !nonnull !41, !noundef !41 ; 4 uses
  %i.eg = load i64, ptr %i.v, align 8, !noalias !44341, !noundef !41 ; 8 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ef, i64 %i.eg ; 2 uses
  %i.ei = icmp samesign eq i64 %i.eg, 0
  br i1 %i.ei, label %.thread267.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.aq, %.lr.ph.i.i
  %.sroa.0.011.i.i = phi i32 [ %i.es, %.lr.ph.i.i ], [ 0, %bb.aq ] ; 2 uses
  %.sroa.02.010.i.i = phi i64 [ %i.eq, %.lr.ph.i.i ], [ 0, %bb.aq ]
  %.sroa.04.09.i.i = phi i64 [ %i.ej, %.lr.ph.i.i ], [ 0, %bb.aq ] ; 2 uses
  %.sroa.07.08.i.i = phi ptr [ %i.et, %.lr.ph.i.i ], [ %i.ef, %bb.aq ] ; 2 uses
  %i.ej = add nuw i64 %.sroa.04.09.i.i, 1         ; 5 uses
  %i.ek = load i8, ptr %.sroa.07.08.i.i, align 1, !alias.scope !44356, !noalias !44339, !noundef !41 ; 2 uses
  %i.el = and i8 %i.ek, 127
  %i.em = zext nneg i8 %i.el to i64
  %i.en = and i32 %.sroa.0.011.i.i, 63
  %i.eo = zext nneg i32 %i.en to i64
  %i.ep = shl i64 %i.em, %i.eo
  %i.eq = or i64 %i.ep, %.sroa.02.010.i.i         ; 3 uses
  %i.er = icmp sgt i8 %i.ek, -1
  %i.es = add nuw nsw i32 %.sroa.0.011.i.i, 7
  %i.et = getelementptr inbounds nuw i8, ptr %.sroa.07.08.i.i, i64 1 ; 2 uses
  %i.eu = icmp eq ptr %i.et, %i.eh
  %or.cond.i.i = select i1 %i.er, i1 true, i1 %i.eu
  br i1 %or.cond.i.i, label %bb.ar, label %.lr.ph.i.i

bb.ar:                                            ; preds = %.lr.ph.i.i
  store i64 %.sroa.7244.0.i, ptr %i.j, align 8, !noalias !44341
  store i64 %i.eq, ptr %i.i, align 8, !noalias !44341
  %i.ev = icmp eq i64 %.sroa.7244.0.i, %i.eq
  br i1 %i.ev, label %bb.at, label %bb.as, !prof !48

.thread267.i:                                     ; preds = %bb.aq
  store i64 %.sroa.7244.0.i, ptr %i.j, align 8, !noalias !44341
  store i64 0, ptr %i.i, align 8, !noalias !44341
  br i1 %i.dl, label %.thread476.i, label %bb.as, !prof !48

bb.as:                                            ; preds = %.thread267.i, %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !44341
  store ptr @2594, ptr %i.h, align 8, !noalias !44341
  %.sroa.440.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 1, ptr %.sroa.440.0..sroa_idx.i, align 8, !noalias !44341
  %.sroa.541.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.541.0..sroa_idx.i, align 8, !noalias !44341
  %.sroa.642.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.642.0..sroa_idx.i, i8 0, i64 16, i1 false), !noalias !44341
  invoke void @_ZN4core9panicking13assert_failed17he513e705e2b74251E(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.h, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2606) #73
          to label %bb.ag unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !44339

bb.at:                                            ; preds = %bb.ar
  %.not281.i = icmp ult i64 %.sroa.04.09.i.i, %i.eg
  br i1 %.not281.i, label %.thread271.i, label %.invoke436, !prof !99

.thread271.i:                                     ; preds = %bb.at
  %i.ew = icmp eq i64 %i.eg, %i.ej
  br i1 %i.ew, label %.thread476.i, label %.lr.ph.i177.preheader.i

.lr.ph.i177.preheader.i:                          ; preds = %.thread271.i
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ef, i64 %i.ej
  br label %.lr.ph.i177.i

.thread476.i:                                     ; preds = %.thread271.i, %.thread267.i
  %i.ey = icmp sgt i64 %i.dp, -1
  call void @llvm.assume(i1 %i.ey)
  store i64 0, ptr %i.t, align 8, !alias.scope !44357, !noalias !44341
  br label %bb.ay

.lr.ph.i177.i:                                    ; preds = %.lr.ph.i177.i, %.lr.ph.i177.preheader.i
  %.sroa.0.011.i178.i = phi i32 [ %i.fi, %.lr.ph.i177.i ], [ 0, %.lr.ph.i177.preheader.i ] ; 2 uses
  %.sroa.02.010.i179.i = phi i64 [ %i.fg, %.lr.ph.i177.i ], [ 0, %.lr.ph.i177.preheader.i ]
  %.sroa.04.09.i180.i = phi i64 [ %i.ez, %.lr.ph.i177.i ], [ 0, %.lr.ph.i177.preheader.i ]
  %.sroa.07.08.i181.i = phi ptr [ %i.fj, %.lr.ph.i177.i ], [ %i.ex, %.lr.ph.i177.preheader.i ] ; 2 uses
  %i.ez = add nuw i64 %.sroa.04.09.i180.i, 1      ; 2 uses
  %i.fa = load i8, ptr %.sroa.07.08.i181.i, align 1, !alias.scope !44358, !noalias !44339, !noundef !41 ; 2 uses
  %i.fb = and i8 %i.fa, 127
  %i.fc = zext nneg i8 %i.fb to i64
  %i.fd = and i32 %.sroa.0.011.i178.i, 63
  %i.fe = zext nneg i32 %i.fd to i64
  %i.ff = shl i64 %i.fc, %i.fe
  %i.fg = or i64 %i.ff, %.sroa.02.010.i179.i      ; 4 uses
  %i.fh = icmp sgt i8 %i.fa, -1
  %i.fi = add nuw nsw i32 %.sroa.0.011.i178.i, 7
  %i.fj = getelementptr inbounds nuw i8, ptr %.sroa.07.08.i181.i, i64 1 ; 2 uses
  %i.fk = icmp eq ptr %i.fj, %i.eh
  %or.cond.i182.i = select i1 %i.fh, i1 true, i1 %i.fk
  br i1 %or.cond.i182.i, label %bb.au, label %.lr.ph.i177.i

bb.au:                                            ; preds = %.lr.ph.i177.i
  %i.fl = add i64 %i.ez, %i.ej                    ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !44357)
  %i.fm = icmp sgt i64 %i.dp, -1
  call void @llvm.assume(i1 %i.fm)
  %i.fn = icmp ugt i64 %i.fg, %i.dp
  br i1 %i.fn, label %bb.av, label %bb.ax

bb.av:                                            ; preds = %bb.au
  %i.fo = sub nuw i64 %i.fg, %i.dp                ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !44359)
  %i.fp = load i64, ptr %i.r, align 8, !range !43, !alias.scope !44360, !noalias !44341, !noundef !41
  %i.fq = sub nsw i64 %i.fp, %i.dp
  %i.fr = icmp ugt i64 %i.fo, %i.fq
  br i1 %i.fr, label %bb.aw, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hf41cf182ecbbe496E.exit.i.i.i", !prof !44

bb.aw:                                            ; preds = %bb.av
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17he4e09bb53e25f47cE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.r, i64 noundef %i.dp, i64 noundef %i.fo, i64 noundef 1, i64 noundef 1)
          to label %.noexc186.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !44339

.noexc186.i:                                      ; preds = %bb.aw
  %.pre.i.i.i = load i64, ptr %i.t, align 8, !alias.scope !44361, !noalias !44341
  %.pre.i = load ptr, ptr %i.s, align 8, !alias.scope !44361, !noalias !44341
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hf41cf182ecbbe496E.exit.i.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hf41cf182ecbbe496E.exit.i.i.i": ; preds = %.noexc186.i, %bb.av
  %i.fs = phi ptr [ %i.do, %bb.av ], [ %.pre.i, %.noexc186.i ] ; 2 uses
  %i.ft = phi i64 [ %i.dp, %bb.av ], [ %.pre.i.i.i, %.noexc186.i ] ; 4 uses
  %i.fu = icmp sgt i64 %i.ft, -1
  call void @llvm.assume(i1 %i.fu)
  %i.fv = getelementptr i8, ptr %i.fs, i64 %i.ft  ; 2 uses
  %i.fw = icmp ugt i64 %i.fo, 1
  br i1 %i.fw, label %._crit_edge.thread.i.i.i, label %._crit_edge.i.i.i

._crit_edge.thread.i.i.i:                         ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hf41cf182ecbbe496E.exit.i.i.i"
  %i.fx = add i64 %i.fo, -1                       ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 1 %i.fv, i8 0, i64 %i.fx, i1 false), !noalias !44362
  %i.fy = add i64 %i.ft, %i.fx                    ; 2 uses
  %scevgep.i.i.i = getelementptr i8, ptr %i.fs, i64 %i.fy
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.thread.i.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hf41cf182ecbbe496E.exit.i.i.i"
  %.sroa.0.0.lcssa16.i.i.i = phi ptr [ %scevgep.i.i.i, %._crit_edge.thread.i.i.i ], [ %i.fv, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hf41cf182ecbbe496E.exit.i.i.i" ]
  %storemerge.lcssa15.i.i.i = phi i64 [ %i.fy, %._crit_edge.thread.i.i.i ], [ %i.ft, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hf41cf182ecbbe496E.exit.i.i.i" ]
  store i8 0, ptr %.sroa.0.0.lcssa16.i.i.i, align 1, !noalias !44362
  %i.fz = add i64 %storemerge.lcssa15.i.i.i, 1
  %.pre457.i = load i64, ptr %i.v, align 8, !noalias !44341
  br label %bb.ax

bb.ax:                                            ; preds = %._crit_edge.i.i.i, %bb.au
  %i.ga = phi i64 [ %i.eg, %bb.au ], [ %.pre457.i, %._crit_edge.i.i.i ] ; 3 uses
  %storemerge.i.i = phi i64 [ %i.fg, %bb.au ], [ %i.fz, %._crit_edge.i.i.i ] ; 2 uses
  store i64 %storemerge.i.i, ptr %i.t, align 8, !alias.scope !44357, !noalias !44341
  %i.gb = icmp ugt i64 %i.fl, %i.ga
  br i1 %i.gb, label %.invoke436, label %._crit_edge, !prof !100

._crit_edge:                                      ; preds = %bb.ax
  %.pre = load ptr, ptr %i.u, align 8, !noalias !44341
  %.pre215 = load ptr, ptr %i.s, align 8, !noalias !44341
  br label %bb.ay

bb.ay:                                            ; preds = %._crit_edge, %.thread476.i
  %i.gc = phi ptr [ %i.dn, %.thread476.i ], [ %.pre215, %._crit_edge ] ; 4 uses
  %i.gd = phi ptr [ %i.ef, %.thread476.i ], [ %.pre, %._crit_edge ]
  %storemerge.i478.i = phi i64 [ 0, %.thread476.i ], [ %storemerge.i.i, %._crit_edge ] ; 3 uses
  %i.ge = phi i64 [ %i.eg, %.thread476.i ], [ %i.fl, %._crit_edge ] ; 2 uses
  %i.gf = phi i64 [ %i.eg, %.thread476.i ], [ %i.ga, %._crit_edge ]
  %i.gg = sub nuw i64 %i.gf, %i.ge
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gd, i64 %i.ge
  %i.gi = invoke noundef i8 @_ZN8gix_pack4data5delta5apply17h4e78199f7a12413eE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.6241.0.i, i64 noundef %.sroa.7244.0.i, ptr noalias noundef nonnull align 1 %i.gc, i64 noundef %storemerge.i478.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.gh, i64 noundef %i.gg)
          to label %bb.az unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !44339 ; 2 uses

.invoke436:                                       ; preds = %bb.ax, %bb.at
  %i.gj = phi i64 [ %i.ej, %bb.at ], [ %i.fl, %bb.ax ]
  %i.gk = phi i64 [ %i.eg, %bb.at ], [ %i.ga, %bb.ax ] ; 2 uses
  %i.gl = phi ptr [ @2609, %bb.at ], [ @2608, %bb.ax ]
  invoke void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %i.gj, i64 noundef %i.gk, i64 noundef %i.gk, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.gl) #73
          to label %.cont437 unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !44339

.cont437:                                         ; preds = %.invoke436
  unreachable

bb.az:                                            ; preds = %bb.ay
  %.not117.i = icmp eq i8 %i.gi, 3
  br i1 %.not117.i, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  store i8 9, ptr %0, align 8, !alias.scope !44339
  %.sroa.481.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.gi, ptr %.sroa.481.0..sroa_idx.i, align 1, !alias.scope !44339
  br label %bb.bi

bb.bb:                                            ; preds = %bb.az
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false), !noalias !44341
  %i.gm = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  %i.gn = load i64, ptr %i.gm, align 8, !noalias !44339, !noundef !41
  %.not119.i = icmp eq i64 %i.gn, 0
  br i1 %.not119.i, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.go = getelementptr inbounds nuw i8, ptr %i.dt, i64 40
  invoke void @_ZN8gix_pack5index5write11modify_base17h9e95f32015cc5396E(ptr noalias noundef nonnull sret([21 x i8]) align 1 captures(address) dereferenceable(21) %i.a, ptr noalias noundef nonnull align 4 dereferenceable(24) %i.go, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.k, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.gc, i64 noundef %storemerge.i478.i)
          to label %"_ZN8gix_pack5index5write39_$LT$impl$u20$gix_pack..index..File$GT$25write_data_iter_to_stream28_$u7b$$u7b$closure$u7d$$u7d$17h99baaf61f2501337E.exit188.i" unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !44339

bb.bd:                                            ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !44341
  %i.gp = load ptr, ptr %i.ag, align 8, !alias.scope !44340, !nonnull !41, !align !42, !noundef !41 ; 7 uses
  %i.gq = cmpxchg weak ptr %i.gp, i8 0, i8 1 acquire monotonic, align 1, !noalias !44339
  %i.gr = extractvalue { i8, i1 } %i.gq, 1
  br i1 %i.gr, label %_ZN12gix_features9threading5_impl4lock17he5d80b467e48f0dbE.exit190.i, label %bb.be, !prof !48

bb.be:                                            ; preds = %bb.bd
  %i.gs = invoke noundef zeroext i1 @_ZN11parking_lot9raw_mutex8RawMutex9lock_slow17haf6e586ab908a0ddE(ptr noundef nonnull align 8 %i.gp, i64 undef, i32 noundef 1000000000)
          to label %_ZN12gix_features9threading5_impl4lock17he5d80b467e48f0dbE.exit190.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !44339 ; 0 uses

"_ZN8gix_pack5index5write39_$LT$impl$u20$gix_pack..index..File$GT$25write_data_iter_to_stream28_$u7b$$u7b$closure$u7d$$u7d$17h99baaf61f2501337E.exit188.i": ; preds = %bb.bc
  %i.gt = load i8, ptr %i.a, align 1, !range !47, !noalias !44341, !noundef !41
  %i.gu = trunc nuw i8 %i.gt to i1
  br i1 %i.gu, label %bb.bf, label %bb.bh

bb.bf:                                            ; preds = %"_ZN8gix_pack5index5write39_$LT$impl$u20$gix_pack..index..File$GT$25write_data_iter_to_stream28_$u7b$$u7b$closure$u7d$$u7d$17h99baaf61f2501337E.exit188.i"
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #67, !noalias !44339
  %i.gv = call noundef dereferenceable_or_null(20) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 20, i64 noundef range(i64 1, -9223372036854775807) 1) #67, !noalias !44339 ; 3 uses
  %i.gw = icmp eq ptr %i.gv, null
  br i1 %i.gw, label %.invoke, label %bb.bg, !prof !49

.invoke:                                          ; preds = %bb.bf, %bb.ai
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 1, i64 noundef 20) #73
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !44339

.cont:                                            ; preds = %.invoke
  unreachable

bb.bg:                                            ; preds = %bb.bf
  %i.gx = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %i.gv, ptr noundef nonnull align 1 dereferenceable(20) %i.gx, i64 20, i1 false), !noalias !44339
  store i8 5, ptr %0, align 8, !alias.scope !44339
  %.sroa.488.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.gv, ptr %.sroa.488.0..sroa_idx.i, align 8, !alias.scope !44339
  %.sroa.589.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @2591, ptr %.sroa.589.0..sroa_idx.i, align 8, !alias.scope !44339
  br label %bb.bi

bb.bh:                                            ; preds = %"_ZN8gix_pack5index5write39_$LT$impl$u20$gix_pack..index..File$GT$25write_data_iter_to_stream28_$u7b$$u7b$closure$u7d$$u7d$17h99baaf61f2501337E.exit188.i"
  %i.gy = load ptr, ptr %i.ak, align 8, !alias.scope !44340, !nonnull !41, !align !42, !noundef !41
  %i.gz = load ptr, ptr %i.gy, align 8, !noalias !44339, !nonnull !41, !noundef !41
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 16
  %i.hb = atomicrmw add ptr %i.ha, i64 1 monotonic, align 8, !noalias !44339 ; 0 uses
  %i.hc = load ptr, ptr %i.al, align 8, !alias.scope !44340, !nonnull !41, !align !42, !noundef !41
  %i.hd = load ptr, ptr %i.hc, align 8, !noalias !44339, !nonnull !41, !noundef !41
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 16
  %i.hf = atomicrmw add ptr %i.he, i64 %.sroa.7244.0.i monotonic, align 8, !noalias !44339 ; 0 uses
  br label %"_ZN4core3ptr222drop_in_place$LT$lock_api..mutex..MutexGuard$LT$parking_lot..raw_mutex..RawMutex$C$alloc..vec..Vec$LT$$LP$u16$C$gix_pack..cache..delta..traverse..resolve..root..Node$LT$gix_pack..index..write..TreeEntry$GT$$RP$$GT$$GT$$GT$17hd2480af7898f02a7E.exit203.i"

"_ZN4core3ptr222drop_in_place$LT$lock_api..mutex..MutexGuard$LT$parking_lot..raw_mutex..RawMutex$C$alloc..vec..Vec$LT$$LP$u16$C$gix_pack..cache..delta..traverse..resolve..root..Node$LT$gix_pack..index..write..TreeEntry$GT$$RP$$GT$$GT$$GT$17hd2480af7898f02a7E.exit203.i": ; preds = %bb.bt, %bb.bs, %bb.bh
  %i.hg = phi ptr [ inttoptr (i64 1 to ptr), %bb.bt ], [ inttoptr (i64 1 to ptr), %bb.bs ], [ %i.gc, %bb.bh ] ; 4 uses
  %i.hh = phi i64 [ 0, %bb.bt ], [ 0, %bb.bs ], [ %storemerge.i478.i, %bb.bh ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !44341
  %i.hi = icmp eq ptr %.sroa.099.1379.i, %i.dj    ; 2 uses
  %.sroa.099.1.idx.i = select i1 %i.hi, i64 0, i64 4
  %.sroa.099.1.i = getelementptr inbounds nuw i8, ptr %.sroa.099.1379.i, i64 %.sroa.099.1.idx.i
  br i1 %i.hi, label %.thread260.i, label %bb.al

bb.bi:                                            ; preds = %bb.bg, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !44341
  br label %bb.bu

_ZN12gix_features9threading5_impl4lock17he5d80b467e48f0dbE.exit190.i: ; preds = %bb.be, %bb.bd
  %i.hj = getelementptr inbounds nuw i8, ptr %i.gp, i64 8
  %i.hk = load i64, ptr %i.du, align 8, !noalias !44339, !noundef !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !44341
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.f, ptr noundef nonnull align 8 dereferenceable(40) %i.k, i64 40, i1 false), !noalias !44341
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.an, ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 24, i1 false), !noalias !44341
  store i64 0, ptr %i.r, align 8, !noalias !44341
  store ptr inttoptr (i64 1 to ptr), ptr %i.s, align 8, !noalias !44341
  store i64 0, ptr %i.t, align 8, !noalias !44341
  store i64 %.sroa.579.0.copyload.i, ptr %i.am, align 8, !noalias !44341
  invoke fastcc void @"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$6insert17hb9221b1bd280e2bbE"(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.g, ptr noalias noundef align 8 dereferenceable(24) %i.hj, i64 noundef %i.hk, ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.f)
          to label %bb.bl unwind label %bb.bj, !noalias !44339

bb.bj:                                            ; preds = %_ZN12gix_features9threading5_impl4lock17he5d80b467e48f0dbE.exit190.i
  %i.hl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hm = cmpxchg ptr %i.gp, i8 1, i8 0 release monotonic, align 1, !noalias !44339
  %i.hn = extractvalue { i8, i1 } %i.hm, 1
  br i1 %i.hn, label %"_ZN4core3ptr208drop_in_place$LT$lock_api..mutex..MutexGuard$LT$parking_lot..raw_mutex..RawMutex$C$alloc..collections..btree..map..BTreeMap$LT$u64$C$$LP$gix_pack..data..Entry$C$u64$C$alloc..vec..Vec$LT$u8$GT$$RP$$GT$$GT$$GT$17h1d2ba275afcacf16E.exit194.i", label %bb.bk, !prof !48

bb.bk:                                            ; preds = %bb.bj
  invoke void @_ZN11parking_lot9raw_mutex8RawMutex11unlock_slow17he7727c2338b37bf4E(ptr noundef nonnull align 1 %i.gp, i1 noundef zeroext false)
          to label %"_ZN4core3ptr208drop_in_place$LT$lock_api..mutex..MutexGuard$LT$parking_lot..raw_mutex..RawMutex$C$alloc..collections..btree..map..BTreeMap$LT$u64$C$$LP$gix_pack..data..Entry$C$u64$C$alloc..vec..Vec$LT$u8$GT$$RP$$GT$$GT$$GT$17h1d2ba275afcacf16E.exit194.i" unwind label %bb.aa, !noalias !44339

bb.bl:                                            ; preds = %_ZN12gix_features9threading5_impl4lock17he5d80b467e48f0dbE.exit190.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !44341
  %.val140.i = load i64, ptr %i.ao, align 8, !range !64, !noalias !44341, !noundef !41 ; 2 uses
  %switch.i = icmp sgt i64 %.val140.i, 0
end_hunk_2
begin_hunk_3_@_ZN3std3sys9backtrace28__rust_begin_short_backtrace17hec69e5014cdb67c6E:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.695.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(39) %.sroa.695.i, i64 39, i1 false), !noalias !44418
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.695.i)
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.565.0.copyload.i, i64 40
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6241.0.i) ]
  invoke void @_ZN8gix_pack5index5write11modify_base17h9e95f32015cc5396E(ptr noalias noundef nonnull sret([21 x i8]) align 1 captures(address) dereferenceable(21) %i.c, ptr noalias noundef nonnull align 4 dereferenceable(24) %i.cg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.n, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.6241.0.i, i64 noundef %.sroa.7244.0.i)
          to label %"_ZN8gix_pack5index5write39_$LT$impl$u20$gix_pack..index..File$GT$25write_data_iter_to_stream28_$u7b$$u7b$closure$u7d$$u7d$17h5cda044c328b1ba8E.exit.i" unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !44416

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h6821d8d6aa614832E.exit163.i": ; preds = %bb.x, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !44418
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.695.i)
  br label %bb.z

bb.z:                                             ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h6821d8d6aa614832E.exit206.i", %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h6821d8d6aa614832E.exit163.i", %bb.p
  %.val1.i211.i = phi ptr [ %.val1.i211459.i, %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h6821d8d6aa614832E.exit206.i" ], [ %.val1.i155.i, %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h6821d8d6aa614832E.exit163.i" ], [ %.val1.i155.i, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !44418
  invoke void @"_ZN72_$LT$gix_features..zlib..Decompress$u20$as$u20$core..ops..drop..Drop$GT$4drop17h08252a01564bc750E"(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.p)
          to label %"_ZN4core3ptr48drop_in_place$LT$gix_features..zlib..Inflate$GT$17h25dce0b86e338063E.exit166.i" unwind label %bb.c, !noalias !44416

bb.aa:                                            ; preds = %bb.br, %bb.bk, %bb.ab, %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h6821d8d6aa614832E.exit160.i"
  %i.ch = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #74, !noalias !44416
  unreachable

_ZN12gix_features9threading5_impl4lock17he5d80b467e48f0dbE.exit.i: ; preds = %bb.s, %bb.r
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.565.0.copyload.i, i64 24
  %i.ck = load i64, ptr %i.cj, align 8, !noalias !44416, !noundef !41
  invoke fastcc void @"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$6remove17hb46c160b546a0aafE"(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.l, ptr noalias noundef align 8 dereferenceable(24) %i.ci, i64 %i.ck)
          to label %bb.ac unwind label %.loopexit.split-lp288.i.loopexit.split-lp.loopexit.split-lp, !noalias !44416

.loopexit.split-lp288.i.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZN12gix_features9threading5_impl4lock17he5d80b467e48f0dbE.exit.i, %bb.af
  %lpad.loopexit.split-lp444 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cl = cmpxchg ptr %i.bw, i8 1, i8 0 release monotonic, align 1, !noalias !44416
  %i.cm = extractvalue { i8, i1 } %i.cl, 1
  br i1 %i.cm, label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h6821d8d6aa614832E.exit160.i", label %bb.ab, !prof !48

bb.ab:                                            ; preds = %.loopexit.split-lp288.i.loopexit.split-lp.loopexit.split-lp
  invoke void @_ZN11parking_lot9raw_mutex8RawMutex11unlock_slow17he7727c2338b37bf4E(ptr noundef nonnull align 1 %i.bw, i1 noundef zeroext false)
          to label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h6821d8d6aa614832E.exit160.i" unwind label %bb.aa, !noalias !44416

bb.ac:                                            ; preds = %_ZN12gix_features9threading5_impl4lock17he5d80b467e48f0dbE.exit.i
  %i.cn = load i64, ptr %i.ah, align 8, !range !64, !noalias !44418, !noundef !41 ; 3 uses
  %.not112.i = icmp eq i64 %i.cn, -9223372036854775808
  br i1 %.not112.i, label %bb.af, label %bb.ad, !prof !44

bb.ad:                                            ; preds = %bb.ac
  %.sroa.093.0.copyload94.i = load i8, ptr %i.l, align 8, !noalias !44418 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.695.i, ptr noundef nonnull align 1 dereferenceable(39) %.sroa.695.0..sroa_idx96.i, i64 39, i1 false), !noalias !44418
  %.sroa.6241.0.copyload243.i = load ptr, ptr %.sroa.6241.0..sroa_idx242.i, align 8, !noalias !44418 ; 2 uses
  %.sroa.7244.0.copyload246.i = load i64, ptr %.sroa.7244.0..sroa_idx245.i, align 8, !noalias !44418 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !44418
  %i.co = cmpxchg ptr %i.bw, i8 1, i8 0 release monotonic, align 1, !noalias !44416
  %i.cp = extractvalue { i8, i1 } %i.co, 1
  br i1 %i.cp, label %"_ZN4core3ptr208drop_in_place$LT$lock_api..mutex..MutexGuard$LT$parking_lot..raw_mutex..RawMutex$C$alloc..collections..btree..map..BTreeMap$LT$u64$C$$LP$gix_pack..data..Entry$C$u64$C$alloc..vec..Vec$LT$u8$GT$$RP$$GT$$GT$$GT$17h1d2ba275afcacf16E.exit169.i", label %bb.ae, !prof !48

bb.ae:                                            ; preds = %bb.ad
  invoke void @_ZN11parking_lot9raw_mutex8RawMutex11unlock_slow17he7727c2338b37bf4E(ptr noundef nonnull align 1 %i.bw, i1 noundef zeroext false)
          to label %"_ZN4core3ptr208drop_in_place$LT$lock_api..mutex..MutexGuard$LT$parking_lot..raw_mutex..RawMutex$C$alloc..collections..btree..map..BTreeMap$LT$u64$C$$LP$gix_pack..data..Entry$C$u64$C$alloc..vec..Vec$LT$u8$GT$$RP$$GT$$GT$$GT$17h1d2ba275afcacf16E.exit169.i" unwind label %.loopexit.split-lp283.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !44416

bb.af:                                            ; preds = %bb.ac
  invoke void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2587, i64 noundef 44, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2605) #73
          to label %bb.ag unwind label %.loopexit.split-lp288.i.loopexit.split-lp.loopexit.split-lp, !noalias !44416

bb.ag:                                            ; preds = %bb.as, %bb.af
  unreachable

"_ZN4core3ptr208drop_in_place$LT$lock_api..mutex..MutexGuard$LT$parking_lot..raw_mutex..RawMutex$C$alloc..collections..btree..map..BTreeMap$LT$u64$C$$LP$gix_pack..data..Entry$C$u64$C$alloc..vec..Vec$LT$u8$GT$$RP$$GT$$GT$$GT$17h1d2ba275afcacf16E.exit194.i": ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.br, %bb.bq, %bb.bk, %bb.bj
  %.pn.i = phi { ptr, i32 } [ %i.hz, %bb.bq ], [ %i.hl, %bb.bj ], [ %i.hl, %bb.bk ], [ %i.hz, %bb.br ], [ %lpad.loopexit.split-lp447, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.cq = icmp eq i64 %.sroa.0239.0.i, 0
  br i1 %i.cq, label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h6821d8d6aa614832E.exit160.i", label %bb.ah

bb.ah:                                            ; preds = %"_ZN4core3ptr208drop_in_place$LT$lock_api..mutex..MutexGuard$LT$parking_lot..raw_mutex..RawMutex$C$alloc..collections..btree..map..BTreeMap$LT$u64$C$$LP$gix_pack..data..Entry$C$u64$C$alloc..vec..Vec$LT$u8$GT$$RP$$GT$$GT$$GT$17h1d2ba275afcacf16E.exit194.i"
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6241.0.i, i64 noundef %.sroa.0239.0.i, i64 noundef range(i64 1, -9223372036854775807) 1) #67, !noalias !44431
  br label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h6821d8d6aa614832E.exit160.i"

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.am, %bb.aw, %bb.ay, %bb.bc, %bb.be, %bb.bn, %bb.bo, %bb.bt, %"_ZN4core3ptr208drop_in_place$LT$lock_api..mutex..MutexGuard$LT$parking_lot..raw_mutex..RawMutex$C$alloc..collections..btree..map..BTreeMap$LT$u64$C$$LP$gix_pack..data..Entry$C$u64$C$alloc..vec..Vec$LT$u8$GT$$RP$$GT$$GT$$GT$17h1d2ba275afcacf16E.exit169.i", %.invoke436, %.invoke, %bb.as
  %lpad.loopexit.split-lp447 = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr208drop_in_place$LT$lock_api..mutex..MutexGuard$LT$parking_lot..raw_mutex..RawMutex$C$alloc..collections..btree..map..BTreeMap$LT$u64$C$$LP$gix_pack..data..Entry$C$u64$C$alloc..vec..Vec$LT$u8$GT$$RP$$GT$$GT$$GT$17h1d2ba275afcacf16E.exit194.i"

"_ZN8gix_pack5index5write39_$LT$impl$u20$gix_pack..index..File$GT$25write_data_iter_to_stream28_$u7b$$u7b$closure$u7d$$u7d$17h5cda044c328b1ba8E.exit.i": ; preds = %"_ZN4core3ptr208drop_in_place$LT$lock_api..mutex..MutexGuard$LT$parking_lot..raw_mutex..RawMutex$C$alloc..collections..btree..map..BTreeMap$LT$u64$C$$LP$gix_pack..data..Entry$C$u64$C$alloc..vec..Vec$LT$u8$GT$$RP$$GT$$GT$$GT$17h1d2ba275afcacf16E.exit169.i"
  %i.cr = load i8, ptr %i.c, align 1, !range !47, !noalias !44418, !noundef !41
  %i.cs = trunc nuw i8 %i.cr to i1
  br i1 %i.cs, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %"_ZN8gix_pack5index5write39_$LT$impl$u20$gix_pack..index..File$GT$25write_data_iter_to_stream28_$u7b$$u7b$closure$u7d$$u7d$17h5cda044c328b1ba8E.exit.i"
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #67, !noalias !44416
  %i.ct = call noundef dereferenceable_or_null(20) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 20, i64 noundef range(i64 1, -9223372036854775807) 1) #67, !noalias !44416 ; 3 uses
  %i.cu = icmp eq ptr %i.ct, null
  br i1 %i.cu, label %.invoke, label %bb.aj, !prof !49

bb.aj:                                            ; preds = %bb.ai
  %i.cv = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %i.ct, ptr noundef nonnull align 1 dereferenceable(20) %i.cv, i64 20, i1 false), !noalias !44416
  store i8 5, ptr %0, align 8, !alias.scope !44416
  %.sroa.472.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ct, ptr %.sroa.472.0..sroa_idx.i, align 8, !alias.scope !44416
  %.sroa.573.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @2591, ptr %.sroa.573.0..sroa_idx.i, align 8, !alias.scope !44416
  br label %bb.bu

bb.ak:                                            ; preds = %"_ZN8gix_pack5index5write39_$LT$impl$u20$gix_pack..index..File$GT$25write_data_iter_to_stream28_$u7b$$u7b$closure$u7d$$u7d$17h5cda044c328b1ba8E.exit.i"
  %i.cw = load ptr, ptr %i.ak, align 8, !alias.scope !44417, !nonnull !41, !align !42, !noundef !41
  %i.cx = load ptr, ptr %i.cw, align 8, !noalias !44416, !nonnull !41, !noundef !41
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %i.cz = atomicrmw add ptr %i.cy, i64 1 monotonic, align 8, !noalias !44416 ; 0 uses
  %i.da = load ptr, ptr %i.al, align 8, !alias.scope !44417, !nonnull !41, !align !42, !noundef !41
  %i.db = load ptr, ptr %i.da, align 8, !noalias !44416, !nonnull !41, !noundef !41
  %i.dc = icmp sgt i64 %.sroa.7244.0.i, -1
  call void @llvm.assume(i1 %i.dc)
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  %i.de = atomicrmw add ptr %i.dd, i64 %.sroa.7244.0.i monotonic, align 8, !noalias !44416 ; 0 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.565.0.copyload.i, i64 8
  %i.dg = load ptr, ptr %i.df, align 8, !noalias !44416, !nonnull !41, !noundef !41 ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.565.0.copyload.i, i64 16
  %i.di = load i64, ptr %i.dh, align 8, !noalias !44416, !noundef !41 ; 2 uses
  %.idx.i = shl nuw nsw i64 %i.di, 2
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dg, i64 %.idx.i
  %i.dk = icmp eq i64 %i.di, 0
  br i1 %i.dk, label %.thread260.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ak
  %.sroa.099.1377.i = getelementptr inbounds nuw i8, ptr %i.dg, i64 4
  %i.dl = icmp eq i64 %.sroa.7244.0.i, 0
  %i.dm = add i16 %.sroa.063.0.copyload.i, 1
  br label %bb.al

bb.al:                                            ; preds = %"_ZN4core3ptr222drop_in_place$LT$lock_api..mutex..MutexGuard$LT$parking_lot..raw_mutex..RawMutex$C$alloc..vec..Vec$LT$$LP$u16$C$gix_pack..cache..delta..traverse..resolve..root..Node$LT$gix_pack..index..write..TreeEntry$GT$$RP$$GT$$GT$$GT$17hd2480af7898f02a7E.exit203.i", %.lr.ph.i
  %i.dn = phi ptr [ %i.aq, %.lr.ph.i ], [ %i.hg, %"_ZN4core3ptr222drop_in_place$LT$lock_api..mutex..MutexGuard$LT$parking_lot..raw_mutex..RawMutex$C$alloc..vec..Vec$LT$$LP$u16$C$gix_pack..cache..delta..traverse..resolve..root..Node$LT$gix_pack..index..write..TreeEntry$GT$$RP$$GT$$GT$$GT$17hd2480af7898f02a7E.exit203.i" ] ; 2 uses
  %i.do = phi ptr [ %.val1.i155.i, %.lr.ph.i ], [ %i.hg, %"_ZN4core3ptr222drop_in_place$LT$lock_api..mutex..MutexGuard$LT$parking_lot..raw_mutex..RawMutex$C$alloc..vec..Vec$LT$$LP$u16$C$gix_pack..cache..delta..traverse..resolve..root..Node$LT$gix_pack..index..write..TreeEntry$GT$$RP$$GT$$GT$$GT$17hd2480af7898f02a7E.exit203.i" ] ; 3 uses
  %i.dp = phi i64 [ %i.ar, %.lr.ph.i ], [ %i.hh, %"_ZN4core3ptr222drop_in_place$LT$lock_api..mutex..MutexGuard$LT$parking_lot..raw_mutex..RawMutex$C$alloc..vec..Vec$LT$$LP$u16$C$gix_pack..cache..delta..traverse..resolve..root..Node$LT$gix_pack..index..write..TreeEntry$GT$$RP$$GT$$GT$$GT$17hd2480af7898f02a7E.exit203.i" ] ; 8 uses
  %.sroa.099.1379.i = phi ptr [ %.sroa.099.1377.i, %.lr.ph.i ], [ %.sroa.099.1.i, %"_ZN4core3ptr222drop_in_place$LT$lock_api..mutex..MutexGuard$LT$parking_lot..raw_mutex..RawMutex$C$alloc..vec..Vec$LT$$LP$u16$C$gix_pack..cache..delta..traverse..resolve..root..Node$LT$gix_pack..index..write..TreeEntry$GT$$RP$$GT$$GT$$GT$17hd2480af7898f02a7E.exit203.i" ] ; 3 uses
  %.sroa.099.0378.i = phi ptr [ %i.dg, %.lr.ph.i ], [ %.sroa.099.1379.i, %"_ZN4core3ptr222drop_in_place$LT$lock_api..mutex..MutexGuard$LT$parking_lot..raw_mutex..RawMutex$C$alloc..vec..Vec$LT$$LP$u16$C$gix_pack..cache..delta..traverse..resolve..root..Node$LT$gix_pack..index..write..TreeEntry$GT$$RP$$GT$$GT$$GT$17hd2480af7898f02a7E.exit203.i" ]
  %i.dq = load i32, ptr %.sroa.099.0378.i, align 4, !noalias !44416, !noundef !41
  %i.dr = zext i32 %i.dq to i64
  %i.ds = load ptr, ptr %.sroa.666.0.copyload.i, align 8, !noalias !44416, !noundef !41 ; 2 uses
  %i.dt = getelementptr inbounds nuw [64 x i8], ptr %i.ds, i64 %i.dr ; 5 uses
  %.not116.i = icmp eq ptr %i.ds, null
  br i1 %.not116.i, label %.thread260.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 24 ; 2 uses
  %i.dv = load i64, ptr %i.du, align 8, !noalias !44416, !noundef !41
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dt, i64 32
  %i.dx = load i64, ptr %i.dw, align 8, !noalias !44416, !noundef !41
  invoke fastcc void @"_ZN8gix_pack5cache5delta8traverse7resolve9deltas_mt28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h4951c178e292f169E"(ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.b, ptr noalias noundef align 8 dereferenceable(32) %i.o, i64 noundef %i.dv, i64 noundef %i.dx, ptr noalias noundef align 8 dereferenceable(24) %i.q)
          to label %bb.ao unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !44416

.thread260.i:                                     ; preds = %"_ZN4core3ptr222drop_in_place$LT$lock_api..mutex..MutexGuard$LT$parking_lot..raw_mutex..RawMutex$C$alloc..vec..Vec$LT$$LP$u16$C$gix_pack..cache..delta..traverse..resolve..root..Node$LT$gix_pack..index..write..TreeEntry$GT$$RP$$GT$$GT$$GT$17hd2480af7898f02a7E.exit203.i", %bb.al, %bb.ak
  %i.dy = phi ptr [ %i.aq, %bb.ak ], [ %i.hg, %"_ZN4core3ptr222drop_in_place$LT$lock_api..mutex..MutexGuard$LT$parking_lot..raw_mutex..RawMutex$C$alloc..vec..Vec$LT$$LP$u16$C$gix_pack..cache..delta..traverse..resolve..root..Node$LT$gix_pack..index..write..TreeEntry$GT$$RP$$GT$$GT$$GT$17hd2480af7898f02a7E.exit203.i" ], [ %i.dn, %bb.al ]
  %i.dz = phi ptr [ %.val1.i155.i, %bb.ak ], [ %i.hg, %"_ZN4core3ptr222drop_in_place$LT$lock_api..mutex..MutexGuard$LT$parking_lot..raw_mutex..RawMutex$C$alloc..vec..Vec$LT$$LP$u16$C$gix_pack..cache..delta..traverse..resolve..root..Node$LT$gix_pack..index..write..TreeEntry$GT$$RP$$GT$$GT$$GT$17hd2480af7898f02a7E.exit203.i" ], [ %i.do, %bb.al ]
  %i.ea = phi i64 [ %i.ar, %bb.ak ], [ %i.hh, %"_ZN4core3ptr222drop_in_place$LT$lock_api..mutex..MutexGuard$LT$parking_lot..raw_mutex..RawMutex$C$alloc..vec..Vec$LT$$LP$u16$C$gix_pack..cache..delta..traverse..resolve..root..Node$LT$gix_pack..index..write..TreeEntry$GT$$RP$$GT$$GT$$GT$17hd2480af7898f02a7E.exit203.i" ], [ %i.dp, %bb.al ]
  %i.eb = icmp eq i64 %.sroa.0239.0.i, 0
  br i1 %i.eb, label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h6821d8d6aa614832E.exit176.i", label %bb.an

bb.an:                                            ; preds = %.thread260.i
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6241.0.i, i64 noundef %.sroa.0239.0.i, i64 noundef range(i64 1, -9223372036854775807) 1) #67, !noalias !44432
  br label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h6821d8d6aa614832E.exit176.i"

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h6821d8d6aa614832E.exit176.i": ; preds = %bb.an, %.thread260.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !44418
  br label %bb.e

bb.ao:                                            ; preds = %bb.am
  %i.ec = load i8, ptr %i.b, align 8, !range !97, !noalias !44418, !noundef !41 ; 2 uses
  %i.ed = icmp eq i8 %i.ec, 6
  br i1 %i.ed, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.ee = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.ee, i64 32, i1 false), !noalias !44417
  br label %bb.bu

bb.aq:                                            ; preds = %bb.ao
  %.sroa.579.0.copyload.i = load i64, ptr %.sroa.579.0..sroa_idx.i, align 8, !noalias !44418
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !44418
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.298.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(39) %.sroa.478.0..sroa_idx.i, i64 39, i1 false), !noalias !44418
  store i8 %i.ec, ptr %i.k, align 8, !noalias !44418
  %i.ef = load ptr, ptr %i.u, align 8, !noalias !44418, !nonnull !41, !noundef !41 ; 4 uses
  %i.eg = load i64, ptr %i.v, align 8, !noalias !44418, !noundef !41 ; 8 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ef, i64 %i.eg ; 2 uses
  %i.ei = icmp samesign eq i64 %i.eg, 0
  br i1 %i.ei, label %.thread267.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.aq, %.lr.ph.i.i
  %.sroa.0.011.i.i = phi i32 [ %i.es, %.lr.ph.i.i ], [ 0, %bb.aq ] ; 2 uses
  %.sroa.02.010.i.i = phi i64 [ %i.eq, %.lr.ph.i.i ], [ 0, %bb.aq ]
  %.sroa.04.09.i.i = phi i64 [ %i.ej, %.lr.ph.i.i ], [ 0, %bb.aq ] ; 2 uses
  %.sroa.07.08.i.i = phi ptr [ %i.et, %.lr.ph.i.i ], [ %i.ef, %bb.aq ] ; 2 uses
  %i.ej = add nuw i64 %.sroa.04.09.i.i, 1         ; 5 uses
  %i.ek = load i8, ptr %.sroa.07.08.i.i, align 1, !alias.scope !44433, !noalias !44416, !noundef !41 ; 2 uses
  %i.el = and i8 %i.ek, 127
  %i.em = zext nneg i8 %i.el to i64
  %i.en = and i32 %.sroa.0.011.i.i, 63
  %i.eo = zext nneg i32 %i.en to i64
  %i.ep = shl i64 %i.em, %i.eo
  %i.eq = or i64 %i.ep, %.sroa.02.010.i.i         ; 3 uses
  %i.er = icmp sgt i8 %i.ek, -1
  %i.es = add nuw nsw i32 %.sroa.0.011.i.i, 7
  %i.et = getelementptr inbounds nuw i8, ptr %.sroa.07.08.i.i, i64 1 ; 2 uses
  %i.eu = icmp eq ptr %i.et, %i.eh
  %or.cond.i.i = select i1 %i.er, i1 true, i1 %i.eu
  br i1 %or.cond.i.i, label %bb.ar, label %.lr.ph.i.i

bb.ar:                                            ; preds = %.lr.ph.i.i
  store i64 %.sroa.7244.0.i, ptr %i.j, align 8, !noalias !44418
  store i64 %i.eq, ptr %i.i, align 8, !noalias !44418
  %i.ev = icmp eq i64 %.sroa.7244.0.i, %i.eq
  br i1 %i.ev, label %bb.at, label %bb.as, !prof !48

.thread267.i:                                     ; preds = %bb.aq
  store i64 %.sroa.7244.0.i, ptr %i.j, align 8, !noalias !44418
  store i64 0, ptr %i.i, align 8, !noalias !44418
  br i1 %i.dl, label %.thread476.i, label %bb.as, !prof !48

bb.as:                                            ; preds = %.thread267.i, %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !44418
  store ptr @2594, ptr %i.h, align 8, !noalias !44418
  %.sroa.440.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 1, ptr %.sroa.440.0..sroa_idx.i, align 8, !noalias !44418
  %.sroa.541.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.541.0..sroa_idx.i, align 8, !noalias !44418
  %.sroa.642.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.642.0..sroa_idx.i, i8 0, i64 16, i1 false), !noalias !44418
  invoke void @_ZN4core9panicking13assert_failed17he513e705e2b74251E(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.h, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2606) #73
          to label %bb.ag unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !44416

bb.at:                                            ; preds = %bb.ar
  %.not281.i = icmp ult i64 %.sroa.04.09.i.i, %i.eg
  br i1 %.not281.i, label %.thread271.i, label %.invoke436, !prof !99

.thread271.i:                                     ; preds = %bb.at
  %i.ew = icmp eq i64 %i.eg, %i.ej
  br i1 %i.ew, label %.thread476.i, label %.lr.ph.i177.preheader.i

.lr.ph.i177.preheader.i:                          ; preds = %.thread271.i
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ef, i64 %i.ej
  br label %.lr.ph.i177.i

.thread476.i:                                     ; preds = %.thread271.i, %.thread267.i
  %i.ey = icmp sgt i64 %i.dp, -1
  call void @llvm.assume(i1 %i.ey)
  store i64 0, ptr %i.t, align 8, !alias.scope !44434, !noalias !44418
  br label %bb.ay

.lr.ph.i177.i:                                    ; preds = %.lr.ph.i177.i, %.lr.ph.i177.preheader.i
  %.sroa.0.011.i178.i = phi i32 [ %i.fi, %.lr.ph.i177.i ], [ 0, %.lr.ph.i177.preheader.i ] ; 2 uses
  %.sroa.02.010.i179.i = phi i64 [ %i.fg, %.lr.ph.i177.i ], [ 0, %.lr.ph.i177.preheader.i ]
  %.sroa.04.09.i180.i = phi i64 [ %i.ez, %.lr.ph.i177.i ], [ 0, %.lr.ph.i177.preheader.i ]
  %.sroa.07.08.i181.i = phi ptr [ %i.fj, %.lr.ph.i177.i ], [ %i.ex, %.lr.ph.i177.preheader.i ] ; 2 uses
  %i.ez = add nuw i64 %.sroa.04.09.i180.i, 1      ; 2 uses
  %i.fa = load i8, ptr %.sroa.07.08.i181.i, align 1, !alias.scope !44435, !noalias !44416, !noundef !41 ; 2 uses
  %i.fb = and i8 %i.fa, 127
  %i.fc = zext nneg i8 %i.fb to i64
  %i.fd = and i32 %.sroa.0.011.i178.i, 63
  %i.fe = zext nneg i32 %i.fd to i64
  %i.ff = shl i64 %i.fc, %i.fe
  %i.fg = or i64 %i.ff, %.sroa.02.010.i179.i      ; 4 uses
  %i.fh = icmp sgt i8 %i.fa, -1
  %i.fi = add nuw nsw i32 %.sroa.0.011.i178.i, 7
  %i.fj = getelementptr inbounds nuw i8, ptr %.sroa.07.08.i181.i, i64 1 ; 2 uses
  %i.fk = icmp eq ptr %i.fj, %i.eh
  %or.cond.i182.i = select i1 %i.fh, i1 true, i1 %i.fk
  br i1 %or.cond.i182.i, label %bb.au, label %.lr.ph.i177.i

bb.au:                                            ; preds = %.lr.ph.i177.i
  %i.fl = add i64 %i.ez, %i.ej                    ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !44434)
  %i.fm = icmp sgt i64 %i.dp, -1
  call void @llvm.assume(i1 %i.fm)
  %i.fn = icmp ugt i64 %i.fg, %i.dp
  br i1 %i.fn, label %bb.av, label %bb.ax

bb.av:                                            ; preds = %bb.au
  %i.fo = sub nuw i64 %i.fg, %i.dp                ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !44436)
  %i.fp = load i64, ptr %i.r, align 8, !range !43, !alias.scope !44437, !noalias !44418, !noundef !41
  %i.fq = sub nsw i64 %i.fp, %i.dp
  %i.fr = icmp ugt i64 %i.fo, %i.fq
  br i1 %i.fr, label %bb.aw, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hf41cf182ecbbe496E.exit.i.i.i", !prof !44

bb.aw:                                            ; preds = %bb.av
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17he4e09bb53e25f47cE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.r, i64 noundef %i.dp, i64 noundef %i.fo, i64 noundef 1, i64 noundef 1)
          to label %.noexc186.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !44416

.noexc186.i:                                      ; preds = %bb.aw
  %.pre.i.i.i = load i64, ptr %i.t, align 8, !alias.scope !44438, !noalias !44418
  %.pre.i = load ptr, ptr %i.s, align 8, !alias.scope !44438, !noalias !44418
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hf41cf182ecbbe496E.exit.i.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hf41cf182ecbbe496E.exit.i.i.i": ; preds = %.noexc186.i, %bb.av
  %i.fs = phi ptr [ %i.do, %bb.av ], [ %.pre.i, %.noexc186.i ] ; 2 uses
  %i.ft = phi i64 [ %i.dp, %bb.av ], [ %.pre.i.i.i, %.noexc186.i ] ; 4 uses
  %i.fu = icmp sgt i64 %i.ft, -1
  call void @llvm.assume(i1 %i.fu)
  %i.fv = getelementptr i8, ptr %i.fs, i64 %i.ft  ; 2 uses
  %i.fw = icmp ugt i64 %i.fo, 1
  br i1 %i.fw, label %._crit_edge.thread.i.i.i, label %._crit_edge.i.i.i

._crit_edge.thread.i.i.i:                         ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hf41cf182ecbbe496E.exit.i.i.i"
  %i.fx = add i64 %i.fo, -1                       ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 1 %i.fv, i8 0, i64 %i.fx, i1 false), !noalias !44439
  %i.fy = add i64 %i.ft, %i.fx                    ; 2 uses
  %scevgep.i.i.i = getelementptr i8, ptr %i.fs, i64 %i.fy
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.thread.i.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hf41cf182ecbbe496E.exit.i.i.i"
  %.sroa.0.0.lcssa16.i.i.i = phi ptr [ %scevgep.i.i.i, %._crit_edge.thread.i.i.i ], [ %i.fv, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hf41cf182ecbbe496E.exit.i.i.i" ]
  %storemerge.lcssa15.i.i.i = phi i64 [ %i.fy, %._crit_edge.thread.i.i.i ], [ %i.ft, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hf41cf182ecbbe496E.exit.i.i.i" ]
  store i8 0, ptr %.sroa.0.0.lcssa16.i.i.i, align 1, !noalias !44439
  %i.fz = add i64 %storemerge.lcssa15.i.i.i, 1
  %.pre457.i = load i64, ptr %i.v, align 8, !noalias !44418
  br label %bb.ax

bb.ax:                                            ; preds = %._crit_edge.i.i.i, %bb.au
  %i.ga = phi i64 [ %i.eg, %bb.au ], [ %.pre457.i, %._crit_edge.i.i.i ] ; 3 uses
  %storemerge.i.i = phi i64 [ %i.fg, %bb.au ], [ %i.fz, %._crit_edge.i.i.i ] ; 2 uses
  store i64 %storemerge.i.i, ptr %i.t, align 8, !alias.scope !44434, !noalias !44418
  %i.gb = icmp ugt i64 %i.fl, %i.ga
  br i1 %i.gb, label %.invoke436, label %._crit_edge, !prof !100

._crit_edge:                                      ; preds = %bb.ax
  %.pre = load ptr, ptr %i.u, align 8, !noalias !44418
  %.pre215 = load ptr, ptr %i.s, align 8, !noalias !44418
  br label %bb.ay

bb.ay:                                            ; preds = %._crit_edge, %.thread476.i
  %i.gc = phi ptr [ %i.dn, %.thread476.i ], [ %.pre215, %._crit_edge ] ; 4 uses
  %i.gd = phi ptr [ %i.ef, %.thread476.i ], [ %.pre, %._crit_edge ]
  %storemerge.i478.i = phi i64 [ 0, %.thread476.i ], [ %storemerge.i.i, %._crit_edge ] ; 3 uses
  %i.ge = phi i64 [ %i.eg, %.thread476.i ], [ %i.fl, %._crit_edge ] ; 2 uses
  %i.gf = phi i64 [ %i.eg, %.thread476.i ], [ %i.ga, %._crit_edge ]
  %i.gg = sub nuw i64 %i.gf, %i.ge
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gd, i64 %i.ge
  %i.gi = invoke noundef i8 @_ZN8gix_pack4data5delta5apply17h4e78199f7a12413eE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.6241.0.i, i64 noundef %.sroa.7244.0.i, ptr noalias noundef nonnull align 1 %i.gc, i64 noundef %storemerge.i478.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.gh, i64 noundef %i.gg)
          to label %bb.az unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !44416 ; 2 uses

.invoke436:                                       ; preds = %bb.ax, %bb.at
  %i.gj = phi i64 [ %i.ej, %bb.at ], [ %i.fl, %bb.ax ]
  %i.gk = phi i64 [ %i.eg, %bb.at ], [ %i.ga, %bb.ax ] ; 2 uses
  %i.gl = phi ptr [ @2609, %bb.at ], [ @2608, %bb.ax ]
  invoke void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %i.gj, i64 noundef %i.gk, i64 noundef %i.gk, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.gl) #73
          to label %.cont437 unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !44416

.cont437:                                         ; preds = %.invoke436
  unreachable

bb.az:                                            ; preds = %bb.ay
  %.not117.i = icmp eq i8 %i.gi, 3
  br i1 %.not117.i, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  store i8 9, ptr %0, align 8, !alias.scope !44416
  %.sroa.481.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.gi, ptr %.sroa.481.0..sroa_idx.i, align 1, !alias.scope !44416
  br label %bb.bi

bb.bb:                                            ; preds = %bb.az
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false), !noalias !44418
  %i.gm = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  %i.gn = load i64, ptr %i.gm, align 8, !noalias !44416, !noundef !41
  %.not119.i = icmp eq i64 %i.gn, 0
  br i1 %.not119.i, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.go = getelementptr inbounds nuw i8, ptr %i.dt, i64 40
  invoke void @_ZN8gix_pack5index5write11modify_base17h9e95f32015cc5396E(ptr noalias noundef nonnull sret([21 x i8]) align 1 captures(address) dereferenceable(21) %i.a, ptr noalias noundef nonnull align 4 dereferenceable(24) %i.go, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.k, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.gc, i64 noundef %storemerge.i478.i)
          to label %"_ZN8gix_pack5index5write39_$LT$impl$u20$gix_pack..index..File$GT$25write_data_iter_to_stream28_$u7b$$u7b$closure$u7d$$u7d$17h5cda044c328b1ba8E.exit188.i" unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !44416

bb.bd:                                            ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !44418
  %i.gp = load ptr, ptr %i.ag, align 8, !alias.scope !44417, !nonnull !41, !align !42, !noundef !41 ; 7 uses
  %i.gq = cmpxchg weak ptr %i.gp, i8 0, i8 1 acquire monotonic, align 1, !noalias !44416
  %i.gr = extractvalue { i8, i1 } %i.gq, 1
  br i1 %i.gr, label %_ZN12gix_features9threading5_impl4lock17he5d80b467e48f0dbE.exit190.i, label %bb.be, !prof !48

bb.be:                                            ; preds = %bb.bd
  %i.gs = invoke noundef zeroext i1 @_ZN11parking_lot9raw_mutex8RawMutex9lock_slow17haf6e586ab908a0ddE(ptr noundef nonnull align 8 %i.gp, i64 undef, i32 noundef 1000000000)
          to label %_ZN12gix_features9threading5_impl4lock17he5d80b467e48f0dbE.exit190.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !44416 ; 0 uses

"_ZN8gix_pack5index5write39_$LT$impl$u20$gix_pack..index..File$GT$25write_data_iter_to_stream28_$u7b$$u7b$closure$u7d$$u7d$17h5cda044c328b1ba8E.exit188.i": ; preds = %bb.bc
  %i.gt = load i8, ptr %i.a, align 1, !range !47, !noalias !44418, !noundef !41
  %i.gu = trunc nuw i8 %i.gt to i1
  br i1 %i.gu, label %bb.bf, label %bb.bh

bb.bf:                                            ; preds = %"_ZN8gix_pack5index5write39_$LT$impl$u20$gix_pack..index..File$GT$25write_data_iter_to_stream28_$u7b$$u7b$closure$u7d$$u7d$17h5cda044c328b1ba8E.exit188.i"
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #67, !noalias !44416
  %i.gv = call noundef dereferenceable_or_null(20) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 20, i64 noundef range(i64 1, -9223372036854775807) 1) #67, !noalias !44416 ; 3 uses
  %i.gw = icmp eq ptr %i.gv, null
  br i1 %i.gw, label %.invoke, label %bb.bg, !prof !49

.invoke:                                          ; preds = %bb.bf, %bb.ai
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 1, i64 noundef 20) #73
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !44416

.cont:                                            ; preds = %.invoke
  unreachable

bb.bg:                                            ; preds = %bb.bf
  %i.gx = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %i.gv, ptr noundef nonnull align 1 dereferenceable(20) %i.gx, i64 20, i1 false), !noalias !44416
  store i8 5, ptr %0, align 8, !alias.scope !44416
  %.sroa.488.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.gv, ptr %.sroa.488.0..sroa_idx.i, align 8, !alias.scope !44416
  %.sroa.589.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @2591, ptr %.sroa.589.0..sroa_idx.i, align 8, !alias.scope !44416
  br label %bb.bi

bb.bh:                                            ; preds = %"_ZN8gix_pack5index5write39_$LT$impl$u20$gix_pack..index..File$GT$25write_data_iter_to_stream28_$u7b$$u7b$closure$u7d$$u7d$17h5cda044c328b1ba8E.exit188.i"
  %i.gy = load ptr, ptr %i.ak, align 8, !alias.scope !44417, !nonnull !41, !align !42, !noundef !41
  %i.gz = load ptr, ptr %i.gy, align 8, !noalias !44416, !nonnull !41, !noundef !41
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 16
  %i.hb = atomicrmw add ptr %i.ha, i64 1 monotonic, align 8, !noalias !44416 ; 0 uses
  %i.hc = load ptr, ptr %i.al, align 8, !alias.scope !44417, !nonnull !41, !align !42, !noundef !41
  %i.hd = load ptr, ptr %i.hc, align 8, !noalias !44416, !nonnull !41, !noundef !41
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 16
  %i.hf = atomicrmw add ptr %i.he, i64 %.sroa.7244.0.i monotonic, align 8, !noalias !44416 ; 0 uses
  br label %"_ZN4core3ptr222drop_in_place$LT$lock_api..mutex..MutexGuard$LT$parking_lot..raw_mutex..RawMutex$C$alloc..vec..Vec$LT$$LP$u16$C$gix_pack..cache..delta..traverse..resolve..root..Node$LT$gix_pack..index..write..TreeEntry$GT$$RP$$GT$$GT$$GT$17hd2480af7898f02a7E.exit203.i"

"_ZN4core3ptr222drop_in_place$LT$lock_api..mutex..MutexGuard$LT$parking_lot..raw_mutex..RawMutex$C$alloc..vec..Vec$LT$$LP$u16$C$gix_pack..cache..delta..traverse..resolve..root..Node$LT$gix_pack..index..write..TreeEntry$GT$$RP$$GT$$GT$$GT$17hd2480af7898f02a7E.exit203.i": ; preds = %bb.bt, %bb.bs, %bb.bh
  %i.hg = phi ptr [ inttoptr (i64 1 to ptr), %bb.bt ], [ inttoptr (i64 1 to ptr), %bb.bs ], [ %i.gc, %bb.bh ] ; 4 uses
  %i.hh = phi i64 [ 0, %bb.bt ], [ 0, %bb.bs ], [ %storemerge.i478.i, %bb.bh ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !44418
  %i.hi = icmp eq ptr %.sroa.099.1379.i, %i.dj    ; 2 uses
  %.sroa.099.1.idx.i = select i1 %i.hi, i64 0, i64 4
  %.sroa.099.1.i = getelementptr inbounds nuw i8, ptr %.sroa.099.1379.i, i64 %.sroa.099.1.idx.i
  br i1 %i.hi, label %.thread260.i, label %bb.al

bb.bi:                                            ; preds = %bb.bg, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !44418
  br label %bb.bu

_ZN12gix_features9threading5_impl4lock17he5d80b467e48f0dbE.exit190.i: ; preds = %bb.be, %bb.bd
  %i.hj = getelementptr inbounds nuw i8, ptr %i.gp, i64 8
  %i.hk = load i64, ptr %i.du, align 8, !noalias !44416, !noundef !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !44418
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.f, ptr noundef nonnull align 8 dereferenceable(40) %i.k, i64 40, i1 false), !noalias !44418
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.an, ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 24, i1 false), !noalias !44418
  store i64 0, ptr %i.r, align 8, !noalias !44418
  store ptr inttoptr (i64 1 to ptr), ptr %i.s, align 8, !noalias !44418
  store i64 0, ptr %i.t, align 8, !noalias !44418
  store i64 %.sroa.579.0.copyload.i, ptr %i.am, align 8, !noalias !44418
  invoke fastcc void @"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$6insert17hb9221b1bd280e2bbE"(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.g, ptr noalias noundef align 8 dereferenceable(24) %i.hj, i64 noundef %i.hk, ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.f)
          to label %bb.bl unwind label %bb.bj, !noalias !44416

bb.bj:                                            ; preds = %_ZN12gix_features9threading5_impl4lock17he5d80b467e48f0dbE.exit190.i
  %i.hl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hm = cmpxchg ptr %i.gp, i8 1, i8 0 release monotonic, align 1, !noalias !44416
  %i.hn = extractvalue { i8, i1 } %i.hm, 1
  br i1 %i.hn, label %"_ZN4core3ptr208drop_in_place$LT$lock_api..mutex..MutexGuard$LT$parking_lot..raw_mutex..RawMutex$C$alloc..collections..btree..map..BTreeMap$LT$u64$C$$LP$gix_pack..data..Entry$C$u64$C$alloc..vec..Vec$LT$u8$GT$$RP$$GT$$GT$$GT$17h1d2ba275afcacf16E.exit194.i", label %bb.bk, !prof !48

bb.bk:                                            ; preds = %bb.bj
  invoke void @_ZN11parking_lot9raw_mutex8RawMutex11unlock_slow17he7727c2338b37bf4E(ptr noundef nonnull align 1 %i.gp, i1 noundef zeroext false)
          to label %"_ZN4core3ptr208drop_in_place$LT$lock_api..mutex..MutexGuard$LT$parking_lot..raw_mutex..RawMutex$C$alloc..collections..btree..map..BTreeMap$LT$u64$C$$LP$gix_pack..data..Entry$C$u64$C$alloc..vec..Vec$LT$u8$GT$$RP$$GT$$GT$$GT$17h1d2ba275afcacf16E.exit194.i" unwind label %bb.aa, !noalias !44416

bb.bl:                                            ; preds = %_ZN12gix_features9threading5_impl4lock17he5d80b467e48f0dbE.exit190.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !44418
  %.val140.i = load i64, ptr %i.ao, align 8, !range !64, !noalias !44418, !noundef !41 ; 2 uses
  %switch.i = icmp sgt i64 %.val140.i, 0
end_hunk_3
