Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/jiff-f40901a2f6e9bfc0.jiff.f9bb746de12701cf-cgu.0?download=true
inline.NumInlined: 4035
inline.NumDeleted: 1353
loop-unroll.NumCompletelyUnrolled: 58
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 60
begin_hunk_0_@_ZN4jiff2tz8timezone8TimeZone4tzif17h1cb580d69eb6aefdE:bb.a

bb.ao:                                            ; preds = %bb.an
  %.sroa.541.0.insert.ext.i.i134.i.i = zext i32 %i.fm to i64
  %.sroa.541.0.insert.shift.i.i135.i.i = shl nuw i64 %.sroa.541.0.insert.ext.i.i134.i.i, 32
  br label %"_ZN4jiff6shared4tzif371_$LT$impl$u20$jiff..shared..Tzif$LT$alloc..string..String$C$jiff..shared..util..array_str..ArrayStr$LT$30_usize$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifLocalTimeType$GT$$C$alloc..vec..Vec$LT$i64$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifDateTime$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifDateTime$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifTransitionInfo$GT$$GT$$GT$22parse_transition_types17h8607120ce87ee7b0E.exit.thread.i128.i.i"

bb.ap:                                            ; preds = %bb.an
  %i.fo = getelementptr inbounds nuw i8, ptr %.sroa.02.016.i.i131.i.i, i64 4
  %i.fp = load i8, ptr %i.fo, align 1, !alias.scope !1958, !noalias !1960, !noundef !11
  %i.fq = icmp eq i8 %i.fp, 1
  %i.fr = getelementptr inbounds nuw i8, ptr %.sroa.02.016.i.i131.i.i, i64 5
  %i.fs = load i8, ptr %i.fr, align 1, !alias.scope !1958, !noalias !1960, !noundef !11
  %.sroa.745.0.insert.shift.i.i136.i.i = select i1 %i.fq, i64 72057594037927936, i64 0
  %.sroa.543.0.insert.ext.i.i137.i.i = zext i8 %i.fs to i64 ; 2 uses
  %.sroa.543.0.insert.shift.i.i138.i.i = shl nuw nsw i64 %.sroa.543.0.insert.ext.i.i137.i.i, 40
  %.sroa.543.0.insert.insert.i.i139.i.i = or disjoint i64 %.sroa.543.0.insert.shift.i.i138.i.i, %.sroa.745.0.insert.shift.i.i136.i.i
  %.sroa.4.0.insert.shift.i.i140.i.i = shl nuw nsw i64 %.sroa.543.0.insert.ext.i.i137.i.i, 32
  %.sroa.4.0.insert.insert.i.i141.i.i = or disjoint i64 %.sroa.543.0.insert.insert.i.i139.i.i, %.sroa.4.0.insert.shift.i.i140.i.i
  %.sroa.042.0.insert.ext.i.i142.i.i = zext i32 %i.fm to i64
  %.sroa.042.0.insert.insert.i.i143.i.i = or disjoint i64 %.sroa.4.0.insert.insert.i.i141.i.i, %.sroa.042.0.insert.ext.i.i142.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1961)
  %i.ft = load i64, ptr %.sroa.527.0..sroa_idx.i.i.i, align 8, !alias.scope !1962, !noalias !1963, !noundef !11 ; 3 uses
  %i.fu = load i64, ptr %i.ep, align 8, !range !50, !alias.scope !1962, !noalias !1963, !noundef !11
  %i.fv = icmp eq i64 %i.ft, %i.fu
  br i1 %i.fv, label %bb.aq, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h1133d57676fb2447E.exit.i.i144.i.i"

bb.aq:                                            ; preds = %bb.ap
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h8d660a8cdebc49aaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ep, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @382)
          to label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h1133d57676fb2447E.exit.i.i144.i.i" unwind label %.loopexit.i147.i.i, !noalias !1953

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h1133d57676fb2447E.exit.i.i144.i.i": ; preds = %bb.aq, %bb.ap
  %i.fw = load ptr, ptr %.sroa.426.0..sroa_idx.i.i.i, align 8, !alias.scope !1962, !noalias !1963, !nonnull !11, !noundef !11
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %i.fw, i64 %i.ft
  store i64 %.sroa.042.0.insert.insert.i.i143.i.i, ptr %i.fx, align 4, !noalias !1964
  %i.fy = add i64 %i.ft, 1
  store i64 %i.fy, ptr %.sroa.527.0..sroa_idx.i.i.i, align 8, !alias.scope !1962, !noalias !1963
  %i.fz = icmp ult i64 %i.fl, 6
  br i1 %i.fz, label %"_ZN4jiff6shared4tzif371_$LT$impl$u20$jiff..shared..Tzif$LT$alloc..string..String$C$jiff..shared..util..array_str..ArrayStr$LT$30_usize$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifLocalTimeType$GT$$C$alloc..vec..Vec$LT$i64$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifDateTime$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifDateTime$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifTransitionInfo$GT$$GT$$GT$22parse_local_time_types17h0dbb56e14025bb4eE.exit.i145.i.i", label %bb.an

"_ZN4jiff6shared4tzif371_$LT$impl$u20$jiff..shared..Tzif$LT$alloc..string..String$C$jiff..shared..util..array_str..ArrayStr$LT$30_usize$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifLocalTimeType$GT$$C$alloc..vec..Vec$LT$i64$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifDateTime$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifDateTime$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifTransitionInfo$GT$$GT$$GT$22parse_local_time_types17h0dbb56e14025bb4eE.exit.i145.i.i": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h1133d57676fb2447E.exit.i.i144.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1951
  invoke fastcc void @"_ZN4jiff6shared4tzif371_$LT$impl$u20$jiff..shared..Tzif$LT$alloc..string..String$C$jiff..shared..util..array_str..ArrayStr$LT$30_usize$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifLocalTimeType$GT$$C$alloc..vec..Vec$LT$i64$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifDateTime$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifDateTime$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifTransitionInfo$GT$$GT$$GT$28parse_time_zone_designations17hc0ec050490102eadE"(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.e, ptr noalias noundef align 8 dereferenceable(264) %i.g, i64 %i.eh, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.fi, i64 noundef %i.fj)
          to label %bb.ar unwind label %.loopexit.split-lp.i119.i.i, !noalias !1953

bb.ar:                                            ; preds = %"_ZN4jiff6shared4tzif371_$LT$impl$u20$jiff..shared..Tzif$LT$alloc..string..String$C$jiff..shared..util..array_str..ArrayStr$LT$30_usize$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifLocalTimeType$GT$$C$alloc..vec..Vec$LT$i64$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifDateTime$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifDateTime$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifTransitionInfo$GT$$GT$$GT$22parse_local_time_types17h0dbb56e14025bb4eE.exit.i145.i.i"
  %i.ga = load ptr, ptr %i.e, align 8, !noalias !1951, !noundef !11 ; 2 uses
  %i.gb = icmp eq ptr %i.ga, null
  %i.gc = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.gd = load i8, ptr %i.gc, align 8, !range !39, !noalias !1951
  %i.ge = load i64, ptr %i.gc, align 8, !noalias !1951 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1951
  br i1 %i.gb, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %.sroa.762.8.insert.ext.i.i.i = zext nneg i8 %i.gd to i64
  %.sroa.4151.0.insert.ext.i.i.i = shl nuw nsw i64 %.sroa.762.8.insert.ext.i.i.i, 8
  %.sroa.0150.0.insert.insert.i.i.i = or disjoint i64 %.sroa.4151.0.insert.ext.i.i.i, 10
  br label %"_ZN4jiff6shared4tzif371_$LT$impl$u20$jiff..shared..Tzif$LT$alloc..string..String$C$jiff..shared..util..array_str..ArrayStr$LT$30_usize$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifLocalTimeType$GT$$C$alloc..vec..Vec$LT$i64$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifDateTime$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifDateTime$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifTransitionInfo$GT$$GT$$GT$22parse_transition_types17h8607120ce87ee7b0E.exit.thread.i128.i.i"

bb.at:                                            ; preds = %bb.ar
  %i.gf = mul nuw nsw i64 %i.eb, 12               ; 3 uses
  %i.gg = icmp ugt i64 %i.gf, %i.ge
  br i1 %i.gg, label %"_ZN4jiff6shared4tzif371_$LT$impl$u20$jiff..shared..Tzif$LT$alloc..string..String$C$jiff..shared..util..array_str..ArrayStr$LT$30_usize$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifLocalTimeType$GT$$C$alloc..vec..Vec$LT$i64$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifDateTime$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifDateTime$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifTransitionInfo$GT$$GT$$GT$22parse_transition_types17h8607120ce87ee7b0E.exit.thread.i128.i.i", label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12chunks_exact17h42243817928ef77fE.exit.i.i146.i.i"

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12chunks_exact17h42243817928ef77fE.exit.i.i146.i.i": ; preds = %bb.at
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ga, i64 %i.gf
  %i.gi = sub nuw i64 %i.ge, %i.gf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1951
  %.val190.i.i.i = load ptr, ptr %.sroa.426.0..sroa_idx.i.i.i, align 8, !noalias !1951
  %.val191.i.i.i = load i64, ptr %.sroa.527.0..sroa_idx.i.i.i, align 8, !noalias !1951
  invoke fastcc void @"_ZN4jiff6shared4tzif371_$LT$impl$u20$jiff..shared..Tzif$LT$alloc..string..String$C$jiff..shared..util..array_str..ArrayStr$LT$30_usize$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifLocalTimeType$GT$$C$alloc..vec..Vec$LT$i64$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifDateTime$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifDateTime$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifTransitionInfo$GT$$GT$$GT$16parse_indicators17h1d7fe1d93387a029E"(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.d, ptr %.val190.i.i.i, i64 %.val191.i.i.i, i64 %i.dx, i64 %i.dz, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.gh, i64 noundef %i.gi)
          to label %bb.au unwind label %.loopexit.split-lp.i119.i.i, !noalias !1953

bb.au:                                            ; preds = %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12chunks_exact17h42243817928ef77fE.exit.i.i146.i.i"
  %i.gj = load ptr, ptr %i.d, align 8, !noalias !1951, !noundef !11 ; 2 uses
  %i.gk = icmp eq ptr %i.gj, null
  %i.gl = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.gm = load i8, ptr %i.gl, align 8, !range !39, !noalias !1951
  %i.gn = load i64, ptr %i.gl, align 8, !noalias !1951
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1951
  br i1 %i.gk, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %.sroa.771.8.insert.ext.i.i.i = zext nneg i8 %i.gm to i64
  %.sroa.4160.0.insert.ext.i.i.i = shl nuw nsw i64 %.sroa.771.8.insert.ext.i.i.i, 8
  %.sroa.0159.0.insert.insert.i.i.i = or disjoint i64 %.sroa.4160.0.insert.ext.i.i.i, 7
  br label %"_ZN4jiff6shared4tzif371_$LT$impl$u20$jiff..shared..Tzif$LT$alloc..string..String$C$jiff..shared..util..array_str..ArrayStr$LT$30_usize$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifLocalTimeType$GT$$C$alloc..vec..Vec$LT$i64$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifDateTime$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifDateTime$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifTransitionInfo$GT$$GT$$GT$22parse_transition_types17h8607120ce87ee7b0E.exit.thread.i128.i.i"

bb.aw:                                            ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1951
  invoke fastcc void @"_ZN4jiff6shared4tzif371_$LT$impl$u20$jiff..shared..Tzif$LT$alloc..string..String$C$jiff..shared..util..array_str..ArrayStr$LT$30_usize$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifLocalTimeType$GT$$C$alloc..vec..Vec$LT$i64$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifDateTime$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifDateTime$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifTransitionInfo$GT$$GT$$GT$12parse_footer17h3a0a4efbd38399acE"(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.c, ptr noalias noundef align 8 dereferenceable(264) %i.g, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.gj, i64 noundef %i.gn)
          to label %bb.ax unwind label %.loopexit.split-lp.i119.i.i, !noalias !1953

bb.ax:                                            ; preds = %bb.aw
  %i.go = load ptr, ptr %i.c, align 8, !noalias !1951, !noundef !11 ; 2 uses
  %i.gp = icmp eq ptr %i.go, null
  %i.gq = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.0162.0.copyload.i.i.i = load i32, ptr %i.gq, align 8, !noalias !1951
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1951
  br i1 %i.gp, label %bb.ay, label %"_ZN4jiff6shared4tzif371_$LT$impl$u20$jiff..shared..Tzif$LT$alloc..string..String$C$jiff..shared..util..array_str..ArrayStr$LT$30_usize$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifLocalTimeType$GT$$C$alloc..vec..Vec$LT$i64$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifDateTime$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifDateTime$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifTransitionInfo$GT$$GT$$GT$7parse6417h7328e8a9c1d75a4cE.exit.i.i"

bb.ay:                                            ; preds = %bb.ax
  %.sroa.775.8.insert.ext.i.i.i = zext i32 %.sroa.0162.0.copyload.i.i.i to i64
  %.sroa.4169.0.insert.ext.i.i.i = shl nuw nsw i64 %.sroa.775.8.insert.ext.i.i.i, 8
  %.sroa.0168.0.insert.insert.i.i.i = or disjoint i64 %.sroa.4169.0.insert.ext.i.i.i, 2
  br label %"_ZN4jiff6shared4tzif371_$LT$impl$u20$jiff..shared..Tzif$LT$alloc..string..String$C$jiff..shared..util..array_str..ArrayStr$LT$30_usize$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifLocalTimeType$GT$$C$alloc..vec..Vec$LT$i64$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifDateTime$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifDateTime$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifTransitionInfo$GT$$GT$$GT$22parse_transition_types17h8607120ce87ee7b0E.exit.thread.i128.i.i"

"_ZN4jiff6shared4tzif371_$LT$impl$u20$jiff..shared..Tzif$LT$alloc..string..String$C$jiff..shared..util..array_str..ArrayStr$LT$30_usize$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifLocalTimeType$GT$$C$alloc..vec..Vec$LT$i64$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifDateTime$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifDateTime$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifTransitionInfo$GT$$GT$$GT$22parse_transition_types17h8607120ce87ee7b0E.exit.thread.i128.i.i": ; preds = %.lr.ph.i.i124.i.i, %bb.ay, %bb.av, %bb.at, %bb.as, %bb.ao, %"_ZN4jiff6shared4tzif371_$LT$impl$u20$jiff..shared..Tzif$LT$alloc..string..String$C$jiff..shared..util..array_str..ArrayStr$LT$30_usize$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifLocalTimeType$GT$$C$alloc..vec..Vec$LT$i64$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifDateTime$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifDateTime$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifTransitionInfo$GT$$GT$$GT$22parse_transition_types17h8607120ce87ee7b0E.exit.i130.i.i", %bb.ai, %bb.ah
  %.sroa.0168.0.insert.insert.sink.i.i.i = phi i64 [ %.sroa.0168.0.insert.insert.i.i.i, %bb.ay ], [ %.sroa.0159.0.insert.insert.i.i.i, %bb.av ], [ 521, %"_ZN4jiff6shared4tzif371_$LT$impl$u20$jiff..shared..Tzif$LT$alloc..string..String$C$jiff..shared..util..array_str..ArrayStr$LT$30_usize$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifLocalTimeType$GT$$C$alloc..vec..Vec$LT$i64$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifDateTime$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifDateTime$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifTransitionInfo$GT$$GT$$GT$22parse_transition_types17h8607120ce87ee7b0E.exit.i130.i.i" ], [ %.sroa.0150.0.insert.insert.i.i.i, %bb.as ], [ 265, %bb.at ], [ %.sroa.0135.0.copyload.i.i.i, %bb.ah ], [ 1547, %bb.ai ], [ %.sroa.541.0.insert.shift.i.i135.i.i, %bb.ao ], [ 2059, %.lr.ph.i.i124.i.i ]
  call fastcc void @"_ZN4core3ptr374drop_in_place$LT$jiff..shared..Tzif$LT$alloc..string..String$C$jiff..shared..util..array_str..ArrayStr$LT$30_usize$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifLocalTimeType$GT$$C$alloc..vec..Vec$LT$i64$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifDateTime$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifDateTime$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifTransitionInfo$GT$$GT$$GT$17h8d5a8e1a612c11b2E"(ptr noalias noundef align 8 dereferenceable(264) %i.g), !noalias !1953
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1951
  br label %"_ZN4jiff6shared4tzif371_$LT$impl$u20$jiff..shared..Tzif$LT$alloc..string..String$C$jiff..shared..util..array_str..ArrayStr$LT$30_usize$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifLocalTimeType$GT$$C$alloc..vec..Vec$LT$i64$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifDateTime$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifDateTime$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifTransitionInfo$GT$$GT$$GT$7parse6417h7328e8a9c1d75a4cE.exit.thread.i.i"

.critedge.i.i.i:                                  ; preds = %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %.critedge56.i.i.i.i, %.critedge53.i.i.i.i
  %.sroa.0216.0.ph.sink.i.i.i = phi i64 [ 9, %.critedge53.i.i.i.i ], [ 1541, %bb.ac ], [ %i.di, %.critedge56.i.i.i.i ], [ 1029, %bb.ab ], [ 2053, %bb.aa ], [ 2309, %bb.af ], [ 2565, %bb.ae ], [ 1285, %bb.ad ] ; 2 uses
  br i1 %i.o, label %"_ZN4jiff6shared4tzif371_$LT$impl$u20$jiff..shared..Tzif$LT$alloc..string..String$C$jiff..shared..util..array_str..ArrayStr$LT$30_usize$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifLocalTimeType$GT$$C$alloc..vec..Vec$LT$i64$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifDateTime$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifDateTime$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifTransitionInfo$GT$$GT$$GT$7parse6417h7328e8a9c1d75a4cE.exit.thread.i.i", label %bb.az

bb.az:                                            ; preds = %.critedge.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.s) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.s, i64 noundef %1, i64 noundef range(i64 1, -9223372036854775807) 1) #44, !noalias !1965
  br label %"_ZN4jiff6shared4tzif371_$LT$impl$u20$jiff..shared..Tzif$LT$alloc..string..String$C$jiff..shared..util..array_str..ArrayStr$LT$30_usize$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifLocalTimeType$GT$$C$alloc..vec..Vec$LT$i64$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifDateTime$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifDateTime$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifTransitionInfo$GT$$GT$$GT$7parse6417h7328e8a9c1d75a4cE.exit.thread.i.i"

bb.ba:                                            ; preds = %bb.x
  %.sroa.0232.0.copyload.i.i = load i64, ptr %i.k, align 8, !noalias !1966 ; 2 uses
  %.sroa.6.0.copyload.i.i = load i64, ptr %.sroa.0.sroa.0.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !1966 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(248) %.sroa.9.i.i, ptr noundef nonnull align 8 dereferenceable(248) %.sroa.0.sroa.0.sroa.5.0..sroa_idx.i.i.i, i64 248, i1 false), !noalias !1966
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !1928
  %i.gr = icmp eq i64 %.sroa.0232.0.copyload.i.i, -9223372036854775808
  br i1 %i.gr, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba, %.thread.i.i
  %.sroa.6.0269.i.i = phi i64 [ %.sroa.076.0.insert.insert.sink.i.i.i, %.thread.i.i ], [ %.sroa.6.0.copyload.i.i, %bb.ba ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i.i)
  br label %bb.cd

bb.bc:                                            ; preds = %bb.ba
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(248) %.sroa.7101.i.i, ptr noundef nonnull align 8 dereferenceable(248) %.sroa.9.i.i, i64 248, i1 false), !noalias !1967
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i.i)
  br label %bb.bd

bb.bd:                                            ; preds = %bb.ce, %bb.bc
  %.sroa.091.0.i.i = phi ptr [ %i.cs, %bb.bc ], [ %i.go, %bb.ce ] ; 2 uses
  %.sroa.096.0.i.i = phi i64 [ %.sroa.0232.0.copyload.i.i, %bb.bc ], [ %.sroa.0235.0.copyload.i.i, %bb.ce ]
  %.sroa.698.0.i.i = phi i64 [ %.sroa.6.0.copyload.i.i, %bb.bc ], [ %.sroa.7.0.copyload.i.i, %bb.ce ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !1967
  store i64 %.sroa.096.0.i.i, ptr %i.l, align 8, !noalias !1967
  %.sroa.698.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 5 uses
  store i64 %.sroa.698.0.i.i, ptr %.sroa.698.0..sroa_idx.i.i, align 8, !noalias !1967
  %.sroa.7101.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(248) %.sroa.7101.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(248) %.sroa.7101.i.i, i64 248, i1 false), !noalias !1967
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7101.i.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1968)
  %i.gs = getelementptr inbounds nuw i8, ptr %i.l, i64 256 ; 3 uses
  %i.gt = load i64, ptr %i.gs, align 8, !alias.scope !1968, !noalias !1967, !noundef !11 ; 4 uses
  %.not.i153.i.i = icmp eq i64 %i.gt, 0
  br i1 %.not.i153.i.i, label %.invoke477.i.i, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.gu = getelementptr inbounds nuw i8, ptr %i.l, i64 248 ; 4 uses
  %i.gv = load ptr, ptr %i.gu, align 8, !alias.scope !1968, !noalias !1967, !nonnull !11, !noundef !11 ; 2 uses
  store i8 0, ptr %i.gv, align 1, !noalias !1969
  %i.gw = getelementptr inbounds nuw i8, ptr %i.l, i64 208 ; 2 uses
  %i.gx = load i64, ptr %i.gw, align 8, !alias.scope !1968, !noalias !1967, !noundef !11 ; 7 uses
  %.not23.i.i.i = icmp eq i64 %i.gx, 0
  br i1 %.not23.i.i.i, label %.invoke477.i.i, label %.split.i.i.i

.split.i.i.i:                                     ; preds = %bb.be
  %i.gy = getelementptr inbounds nuw i8, ptr %i.l, i64 200 ; 3 uses
  %i.gz = load ptr, ptr %i.gy, align 8, !alias.scope !1968, !noalias !1967, !nonnull !11, !noundef !11 ; 4 uses
  store i64 -2814467188323254272, ptr %i.gz, align 8, !noalias !1969
  %i.ha = getelementptr inbounds nuw i8, ptr %i.l, i64 184 ; 3 uses
  %i.hb = load i64, ptr %i.ha, align 8, !noalias !1967, !noundef !11 ; 3 uses
  %i.hc = icmp ult i64 %i.hb, 1152921504606846976
  tail call void @llvm.assume(i1 %i.hc)
  %i.hd = icmp samesign ugt i64 %i.hb, 1
  br i1 %i.hd, label %.lr.ph.i.i.i, label %"_ZN4jiff6shared4tzif371_$LT$impl$u20$jiff..shared..Tzif$LT$alloc..string..String$C$jiff..shared..util..array_str..ArrayStr$LT$30_usize$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifLocalTimeType$GT$$C$alloc..vec..Vec$LT$i64$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifDateTime$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifDateTime$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifTransitionInfo$GT$$GT$$GT$34add_civil_datetimes_to_transitions17hee8d8e04512df4b2E.exit.thread.i.i"

.lr.ph.i.i.i:                                     ; preds = %.split.i.i.i
  %i.he = getelementptr inbounds nuw i8, ptr %i.l, i64 176 ; 2 uses
  %i.hf = load ptr, ptr %i.he, align 8, !alias.scope !1968, !noalias !1967, !nonnull !11, !noundef !11
  %i.hg = getelementptr inbounds nuw i8, ptr %i.l, i64 152 ; 2 uses
  %i.hh = load ptr, ptr %i.hg, align 8, !alias.scope !1968, !noalias !1967, !nonnull !11 ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.l, i64 160 ; 2 uses
  %i.hj = load i64, ptr %i.hi, align 8, !alias.scope !1968, !noalias !1967 ; 4 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.l, i64 232
  %i.hl = load i64, ptr %i.hk, align 8, !alias.scope !1968, !noalias !1967 ; 4 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.l, i64 224
  %i.hn = load ptr, ptr %i.hm, align 8, !alias.scope !1968, !noalias !1967, !nonnull !11 ; 2 uses
  %i.ho = add i64 %i.gt, 1
  br label %bb.bf

bb.bf:                                            ; preds = %bb.cb, %.lr.ph.i.i.i
  %i.hp = phi i64 [ 2, %.lr.ph.i.i.i ], [ %i.pb, %bb.cb ] ; 4 uses
  %.sroa.02.0152.i.i.i = phi i64 [ 1, %.lr.ph.i.i.i ], [ %i.hp, %bb.cb ] ; 15 uses
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %i.hf, i64 %.sroa.02.0152.i.i.i
  %i.hr = load i64, ptr %i.hq, align 8, !noalias !1969, !noundef !11 ; 3 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.hp, %i.ho
  br i1 %exitcond.not.i.i.i, label %.invoke477.i.i, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.hs = getelementptr [2 x i8], ptr %i.gv, i64 %.sroa.02.0152.i.i.i ; 5 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 1
  %i.hu = load i8, ptr %i.ht, align 1, !noalias !1969, !noundef !11
  %i.hv = zext i8 %i.hu to i64                    ; 3 uses
  %i.hw = icmp ugt i64 %i.hj, %i.hv
  br i1 %i.hw, label %bb.bh, label %.invoke477.i.i

bb.bh:                                            ; preds = %bb.bg
  %i.hx = getelementptr inbounds nuw [8 x i8], ptr %i.hh, i64 %i.hv
  %i.hy = load i32, ptr %i.hx, align 4, !noalias !1969, !noundef !11 ; 6 uses
  %i.hz = getelementptr i8, ptr %i.hs, i64 -1
  %i.ia = load i8, ptr %i.hz, align 1, !noalias !1969, !noundef !11
  %i.ib = zext i8 %i.ia to i64                    ; 3 uses
  %i.ic = icmp ugt i64 %i.hj, %i.ib
  br i1 %i.ic, label %bb.bi, label %.invoke477.i.i

bb.bi:                                            ; preds = %bb.bh
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %i.hh, i64 %i.ib
  %i.ie = load i32, ptr %i.id, align 4, !noalias !1969, !noundef !11 ; 5 uses
  %i.if = icmp eq i32 %i.ie, %i.hy
  br i1 %i.if, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.ig = icmp slt i32 %i.ie, %i.hy
  br i1 %i.ig, label %bb.bv, label %bb.bn

bb.bk:                                            ; preds = %bb.bi
  %i.ih = sext i32 %i.hy to i64
  %i.ii = add i64 %i.hr, 378683424000
  %i.ij = add i64 %i.ii, %i.ih                    ; 2 uses
  %i.ik = urem i64 %i.ij, 86400                   ; 2 uses
  %i.il = icmp eq i64 %i.ik, 0
  br i1 %i.il, label %bb.cc, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.im = trunc nuw nsw i64 %i.ik to i32          ; 2 uses
  %i.in = udiv i32 %i.im, 3600                    ; 2 uses
  %i.io = urem i32 %i.im, 3600                    ; 2 uses
  %i.ip = icmp eq i32 %i.io, 0
  br i1 %i.ip, label %bb.cc, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %.lhs.trunc.i.i.i.i.i = trunc nuw nsw i32 %i.io to i16 ; 2 uses
  %i.iq = udiv i16 %.lhs.trunc.i.i.i.i.i, 60
  %i.ir = shl nuw nsw i16 %i.iq, 8
  %.sroa.426.5.insert.shift.i.i.i.i.i = zext nneg i16 %i.ir to i32
  %i.is = urem i16 %.lhs.trunc.i.i.i.i.i, 60
  %.zext33.i.i.i.i.i = zext nneg i16 %i.is to i32
  %.sroa.426.6.insert.shift.i.i.i.i.i = shl nuw nsw i32 %.zext33.i.i.i.i.i, 16
  %i.it = or disjoint i32 %.sroa.426.6.insert.shift.i.i.i.i.i, %.sroa.426.5.insert.shift.i.i.i.i.i
  %.sroa.426.6.insert.insert.i.i.i.i.i = or disjoint i32 %i.it, %i.in
  br label %bb.cc

bb.bn:                                            ; preds = %bb.bj
  %i.iu = icmp sgt i32 %i.ie, %i.hy
  br i1 %i.iu, label %bb.bp, label %bb.bo, !prof !16

bb.bo:                                            ; preds = %bb.bn
  invoke void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @389, i64 noundef 38, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @390) #45
          to label %.noexc158.i.i unwind label %bb.cf, !noalias !1970

.noexc158.i.i:                                    ; preds = %bb.bo
  unreachable

bb.bp:                                            ; preds = %bb.bn
  store i8 2, ptr %i.hs, align 1, !noalias !1969
  %i.iv = sext i32 %i.hy to i64
  %i.iw = add i64 %i.hr, 378683424000             ; 2 uses
  %i.ix = add i64 %i.iw, %i.iv                    ; 2 uses
  %i.iy = urem i64 %i.ix, 86400                   ; 2 uses
  %i.iz = udiv i64 %i.ix, 86400
  %i.ja = icmp eq i64 %i.iy, 0
  br i1 %i.ja, label %"_ZN4jiff6shared4tzif371_$LT$impl$u20$jiff..shared..Tzif$LT$alloc..string..String$C$jiff..shared..util..array_str..ArrayStr$LT$30_usize$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifLocalTimeType$GT$$C$alloc..vec..Vec$LT$i64$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifDateTime$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifDateTime$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifTransitionInfo$GT$$GT$$GT$34add_civil_datetimes_to_transitions11to_datetime17h92f7d7b29c22103bE.exit44.i.i.i", label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.jb = trunc nuw nsw i64 %i.iy to i32          ; 2 uses
  %i.jc = udiv i32 %i.jb, 3600                    ; 2 uses
  %i.jd = urem i32 %i.jb, 3600                    ; 2 uses
  %i.je = icmp eq i32 %i.jd, 0
  br i1 %i.je, label %"_ZN4jiff6shared4tzif371_$LT$impl$u20$jiff..shared..Tzif$LT$alloc..string..String$C$jiff..shared..util..array_str..ArrayStr$LT$30_usize$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifLocalTimeType$GT$$C$alloc..vec..Vec$LT$i64$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifDateTime$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifDateTime$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifTransitionInfo$GT$$GT$$GT$34add_civil_datetimes_to_transitions11to_datetime17h92f7d7b29c22103bE.exit44.i.i.i", label %bb.br

bb.br:                                            ; preds = %bb.bq
  %.lhs.trunc.i.i24.i.i.i = trunc nuw nsw i32 %i.jd to i16 ; 2 uses
  %i.jf = udiv i16 %.lhs.trunc.i.i24.i.i.i, 60
  %i.jg = shl nuw nsw i16 %i.jf, 8
  %.sroa.426.5.insert.shift.i.i25.i.i.i = zext nneg i16 %i.jg to i32
  %i.jh = urem i16 %.lhs.trunc.i.i24.i.i.i, 60
  %.zext33.i.i26.i.i.i = zext nneg i16 %i.jh to i32
  %.sroa.426.6.insert.shift.i.i27.i.i.i = shl nuw nsw i32 %.zext33.i.i26.i.i.i, 16
  %i.ji = or disjoint i32 %.sroa.426.6.insert.shift.i.i27.i.i.i, %.sroa.426.5.insert.shift.i.i25.i.i.i
  %.sroa.426.6.insert.insert.i.i28.i.i.i = or disjoint i32 %i.ji, %i.jc
  br label %"_ZN4jiff6shared4tzif371_$LT$impl$u20$jiff..shared..Tzif$LT$alloc..string..String$C$jiff..shared..util..array_str..ArrayStr$LT$30_usize$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifLocalTimeType$GT$$C$alloc..vec..Vec$LT$i64$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifDateTime$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifDateTime$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifTransitionInfo$GT$$GT$$GT$34add_civil_datetimes_to_transitions11to_datetime17h92f7d7b29c22103bE.exit44.i.i.i"

"_ZN4jiff6shared4tzif371_$LT$impl$u20$jiff..shared..Tzif$LT$alloc..string..String$C$jiff..shared..util..array_str..ArrayStr$LT$30_usize$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifLocalTimeType$GT$$C$alloc..vec..Vec$LT$i64$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifDateTime$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifDateTime$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifTransitionInfo$GT$$GT$$GT$34add_civil_datetimes_to_transitions11to_datetime17h92f7d7b29c22103bE.exit44.i.i.i": ; preds = %bb.br, %bb.bq, %bb.bp
  %.sroa.426.0.i.i29.i.i.i = phi i32 [ 0, %bb.bp ], [ %i.jc, %bb.bq ], [ %.sroa.426.6.insert.insert.i.i28.i.i.i, %bb.br ] ; 2 uses
  %i.jj = icmp ult i64 %.sroa.02.0152.i.i.i, %i.gx
  br i1 %i.jj, label %bb.bs, label %.invoke477.i.i

bb.bs:                                            ; preds = %"_ZN4jiff6shared4tzif371_$LT$impl$u20$jiff..shared..Tzif$LT$alloc..string..String$C$jiff..shared..util..array_str..ArrayStr$LT$30_usize$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifLocalTimeType$GT$$C$alloc..vec..Vec$LT$i64$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifDateTime$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifDateTime$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifTransitionInfo$GT$$GT$$GT$34add_civil_datetimes_to_transitions11to_datetime17h92f7d7b29c22103bE.exit44.i.i.i"
  %.sroa.3.4.extract.trunc.i37.i.i.i = zext nneg i32 %.sroa.426.0.i.i29.i.i.i to i64
  %sext8.i42.i.i.i = shl i64 %.sroa.3.4.extract.trunc.i37.i.i.i, 56
  %i.jk = ashr exact i64 %sext8.i42.i.i.i, 32
  %i.jl = trunc i64 %i.iz to i32
  %i.jm = shl i32 %i.jl, 2
  %i.jn = add i32 %i.jm, 33266051                 ; 2 uses
  %i.jo = udiv i32 %i.jn, 146097
  %i.jp = mul nuw nsw i32 %i.jo, 100
  %i.jq = add nuw nsw i32 %i.jp, 32736
  %i.jr = urem i32 %i.jn, 146097
  %i.js = or i32 %i.jr, 3
  %i.jt = zext nneg i32 %i.js to i64
  %i.ju = mul nuw nsw i64 %i.jt, 2939745          ; 2 uses
  %i.jv = lshr i64 %i.ju, 32
  %i.jw = trunc nuw nsw i64 %i.jv to i32
  %i.jx = add nuw nsw i32 %i.jq, %i.jw
  %i.jy = trunc i64 %i.ju to i32                  ; 2 uses
  %i.jz = icmp ugt i32 %i.jy, -696719417          ; 2 uses
  %i.ka = zext i1 %i.jz to i32
  %i.kb = add nuw nsw i32 %i.jx, %i.ka
  %.sroa.7.8.extract.trunc.i32.i.i.i = zext nneg i32 %i.kb to i64
  %sext.i40.i.i.i = shl i64 %.sroa.7.8.extract.trunc.i32.i.i.i, 48
  %i.kc = udiv i32 %i.jy, 11758980
  %i.kd = mul nuw nsw i32 %i.kc, 2141
  %i.ke = add nuw nsw i32 %i.kd, 197913           ; 3 uses
  %i.kf = and i32 %i.ke, 4128768
  %i.kg = add nuw nsw i32 %i.kf, 15990784
  %.sroa.2.0.insert.ext.i.i.i31.i.i.i = select i1 %i.jz, i32 %i.kg, i32 %i.ke
  %.sroa.7.10.extract.shift.i33.i.i.i = lshr i32 %.sroa.2.0.insert.ext.i.i.i31.i.i.i, 16
  %.sroa.7.10.extract.trunc.i34.i.i.i = zext nneg i32 %.sroa.7.10.extract.shift.i33.i.i.i to i64
  %sext7.i41.i.i.i = shl i64 %.sroa.7.10.extract.trunc.i34.i.i.i, 56
  %i.kh = ashr exact i64 %sext7.i41.i.i.i, 16
  %i.ki = or i64 %sext.i40.i.i.i, %i.kh
  %.lhs.trunc.i.i.i30.i.i.i = trunc i32 %i.ke to i16
  %i.kj = udiv i16 %.lhs.trunc.i.i.i30.i.i.i, 2141
  %narrow.i35.i.i.i = add nuw nsw i16 %i.kj, 1
  %.sroa.7.11.extract.trunc.i36.i.i.i = zext nneg i16 %narrow.i35.i.i.i to i64
  %i.kk = shl nuw nsw i64 %.sroa.7.11.extract.trunc.i36.i.i.i, 32
  %i.kl = or disjoint i64 %i.ki, %i.kk
  %i.km = or i64 %i.jk, %i.kl
  %.sroa.3.5.extract.shift.i38.i.i.i = lshr i32 %.sroa.426.0.i.i29.i.i.i, 8 ; 2 uses
  %i.kn = and i32 %.sroa.3.5.extract.shift.i38.i.i.i, 65280
  %i.ko = zext nneg i32 %i.kn to i64
  %i.kp = or disjoint i64 %i.km, %i.ko
  %.sroa.3.5.extract.trunc.i39.i.i.i = zext nneg i32 %.sroa.3.5.extract.shift.i38.i.i.i to i64
  %sext9.i43.i.i.i = shl i64 %.sroa.3.5.extract.trunc.i39.i.i.i, 56
  %i.kq = ashr exact i64 %sext9.i43.i.i.i, 40
  %i.kr = or i64 %i.kp, %i.kq
  %i.ks = getelementptr inbounds nuw [8 x i8], ptr %i.gz, i64 %.sroa.02.0152.i.i.i
  store i64 %i.kr, ptr %i.ks, align 8, !noalias !1969
  %i.kt = sext i32 %i.ie to i64
  %i.ku = add i64 %i.iw, %i.kt                    ; 2 uses
  %i.kv = urem i64 %i.ku, 86400                   ; 2 uses
  %i.kw = icmp eq i64 %i.kv, 0
  br i1 %i.kw, label %"_ZN4jiff6shared4tzif371_$LT$impl$u20$jiff..shared..Tzif$LT$alloc..string..String$C$jiff..shared..util..array_str..ArrayStr$LT$30_usize$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifLocalTimeType$GT$$C$alloc..vec..Vec$LT$i64$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifDateTime$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifDateTime$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifTransitionInfo$GT$$GT$$GT$34add_civil_datetimes_to_transitions11to_datetime17h92f7d7b29c22103bE.exit65.i.i.i", label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.kx = trunc nuw nsw i64 %i.kv to i32          ; 2 uses
  %i.ky = udiv i32 %i.kx, 3600                    ; 2 uses
  %i.kz = urem i32 %i.kx, 3600                    ; 2 uses
  %i.la = icmp eq i32 %i.kz, 0
  br i1 %i.la, label %"_ZN4jiff6shared4tzif371_$LT$impl$u20$jiff..shared..Tzif$LT$alloc..string..String$C$jiff..shared..util..array_str..ArrayStr$LT$30_usize$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifLocalTimeType$GT$$C$alloc..vec..Vec$LT$i64$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifDateTime$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifDateTime$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifTransitionInfo$GT$$GT$$GT$34add_civil_datetimes_to_transitions11to_datetime17h92f7d7b29c22103bE.exit65.i.i.i", label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %.lhs.trunc.i.i45.i.i.i = trunc nuw nsw i32 %i.kz to i16 ; 2 uses
  %i.lb = udiv i16 %.lhs.trunc.i.i45.i.i.i, 60
  %i.lc = shl nuw nsw i16 %i.lb, 8
  %.sroa.426.5.insert.shift.i.i46.i.i.i = zext nneg i16 %i.lc to i32
  %i.ld = urem i16 %.lhs.trunc.i.i45.i.i.i, 60
  %.zext33.i.i47.i.i.i = zext nneg i16 %i.ld to i32
  %.sroa.426.6.insert.shift.i.i48.i.i.i = shl nuw nsw i32 %.zext33.i.i47.i.i.i, 16
  %i.le = or disjoint i32 %.sroa.426.6.insert.shift.i.i48.i.i.i, %.sroa.426.5.insert.shift.i.i46.i.i.i
  %.sroa.426.6.insert.insert.i.i49.i.i.i = or disjoint i32 %i.le, %i.ky
  br label %"_ZN4jiff6shared4tzif371_$LT$impl$u20$jiff..shared..Tzif$LT$alloc..string..String$C$jiff..shared..util..array_str..ArrayStr$LT$30_usize$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifLocalTimeType$GT$$C$alloc..vec..Vec$LT$i64$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifDateTime$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifDateTime$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifTransitionInfo$GT$$GT$$GT$34add_civil_datetimes_to_transitions11to_datetime17h92f7d7b29c22103bE.exit65.i.i.i"

"_ZN4jiff6shared4tzif371_$LT$impl$u20$jiff..shared..Tzif$LT$alloc..string..String$C$jiff..shared..util..array_str..ArrayStr$LT$30_usize$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifLocalTimeType$GT$$C$alloc..vec..Vec$LT$i64$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifDateTime$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifDateTime$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifTransitionInfo$GT$$GT$$GT$34add_civil_datetimes_to_transitions11to_datetime17h92f7d7b29c22103bE.exit65.i.i.i": ; preds = %bb.bu, %bb.bt, %bb.bs
  %.sroa.426.0.i.i50.i.i.i = phi i32 [ 0, %bb.bs ], [ %i.ky, %bb.bt ], [ %.sroa.426.6.insert.insert.i.i49.i.i.i, %bb.bu ]
  %i.lf = icmp ult i64 %.sroa.02.0152.i.i.i, %i.hl
  br i1 %i.lf, label %bb.cb, label %.invoke477.i.i

bb.bv:                                            ; preds = %bb.bj
  store i8 1, ptr %i.hs, align 1, !noalias !1969
  %i.lg = sext i32 %i.ie to i64
  %i.lh = add i64 %i.hr, 378683424000             ; 2 uses
  %i.li = add i64 %i.lh, %i.lg                    ; 2 uses
  %i.lj = urem i64 %i.li, 86400                   ; 2 uses
  %i.lk = udiv i64 %i.li, 86400
  %i.ll = icmp eq i64 %i.lj, 0
  br i1 %i.ll, label %"_ZN4jiff6shared4tzif371_$LT$impl$u20$jiff..shared..Tzif$LT$alloc..string..String$C$jiff..shared..util..array_str..ArrayStr$LT$30_usize$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifLocalTimeType$GT$$C$alloc..vec..Vec$LT$i64$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifDateTime$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifDateTime$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifTransitionInfo$GT$$GT$$GT$34add_civil_datetimes_to_transitions11to_datetime17h92f7d7b29c22103bE.exit86.i.i.i", label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.lm = trunc nuw nsw i64 %i.lj to i32          ; 2 uses
  %i.ln = udiv i32 %i.lm, 3600                    ; 2 uses
  %i.lo = urem i32 %i.lm, 3600                    ; 2 uses
  %i.lp = icmp eq i32 %i.lo, 0
  br i1 %i.lp, label %"_ZN4jiff6shared4tzif371_$LT$impl$u20$jiff..shared..Tzif$LT$alloc..string..String$C$jiff..shared..util..array_str..ArrayStr$LT$30_usize$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifLocalTimeType$GT$$C$alloc..vec..Vec$LT$i64$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifDateTime$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifDateTime$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifTransitionInfo$GT$$GT$$GT$34add_civil_datetimes_to_transitions11to_datetime17h92f7d7b29c22103bE.exit86.i.i.i", label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %.lhs.trunc.i.i66.i.i.i = trunc nuw nsw i32 %i.lo to i16 ; 2 uses
  %i.lq = udiv i16 %.lhs.trunc.i.i66.i.i.i, 60
  %i.lr = shl nuw nsw i16 %i.lq, 8
  %.sroa.426.5.insert.shift.i.i67.i.i.i = zext nneg i16 %i.lr to i32
end_hunk_0
begin_hunk_1_@_ZN4jiff6shared5posix6Parser12parse_prefix17hd108c302fd6074eaE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.2.i.i)
  br label %_ZN4jiff6shared5posix6Parser21parse_posix_time_zone17heed09917bcf4f089E.exit

_ZN4jiff6shared5posix6Parser21parse_posix_time_zone17heed09917bcf4f089E.exit.thread: ; preds = %bb.z, %bb.c, %bb.e, %bb.a
  %.sroa.9.0.ph = phi i32 [ 5, %bb.a ], [ %.sroa.9.2.insert.insert, %bb.e ], [ %.sroa.078.0.insert.insert.i, %bb.c ], [ %.sroa.12.0.ph.i, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.2.i)
  br label %bb.ab

_ZN4jiff6shared5posix6Parser21parse_posix_time_zone17heed09917bcf4f089E.exit: ; preds = %bb.f, %_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i, %bb.aa
  %.sroa.627.sroa.5.sroa.5.0.i = phi i8 [ undef, %bb.f ], [ %.sroa.086.0.extract.trunc.i.i.i, %bb.aa ], [ undef, %_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i ]
  %.sroa.627.sroa.5.sroa.6.0.i = phi i32 [ undef, %bb.f ], [ %.sroa.571.i.i.i.0..sroa.571.i.i.i.0..sroa.571.i.i.i.0..sroa.571.i.i.0..sroa.571.i.i.0..sroa.571.i.0..sroa.571.i.0..sroa.571.0..sroa.571.0..sroa.571.0..sroa.571.0..sroa.571.1..sroa.635.0.copyload.i.i.i, %bb.aa ], [ undef, %_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i ]
  %.sroa.627.sroa.5.sroa.8.0.i = phi i32 [ undef, %bb.f ], [ %.sroa.012.0.i.i, %bb.aa ], [ undef, %_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i ]
  %.sroa.627.sroa.5.sroa.9.0.i = phi i32 [ undef, %bb.f ], [ %.sroa.091.0.copyload.i.i, %bb.aa ], [ undef, %_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i ]
  %.sroa.627.sroa.0.0.i = phi i32 [ undef, %bb.f ], [ %.sroa.558.i.i.i.0..sroa.558.i.i.i.0..sroa.558.i.i.i.0..sroa.558.i.i.0..sroa.558.i.i.0..sroa.558.i.0..sroa.558.i.0..sroa.558.0..sroa.558.0..sroa.558.0..sroa.558.0..sroa.558.1..sroa.68.0.copyload.i.i.i, %bb.aa ], [ undef, %_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i ] ; 2 uses
  %.sroa.025.0.i = phi i8 [ 3, %bb.f ], [ %.sroa.083.0.extract.trunc.i.i.i, %bb.aa ], [ 3, %_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(27) %.sroa.28, ptr noundef nonnull align 1 dereferenceable(27) %.sroa.2.i, i64 27, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.2.i)
  %i.bs = icmp eq i8 %.sroa.025.0.i, 4
  br i1 %i.bs, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %_ZN4jiff6shared5posix6Parser21parse_posix_time_zone17heed09917bcf4f089E.exit.thread, %_ZN4jiff6shared5posix6Parser21parse_posix_time_zone17heed09917bcf4f089E.exit
  %.sroa.9.027 = phi i32 [ %.sroa.9.0.ph, %_ZN4jiff6shared5posix6Parser21parse_posix_time_zone17heed09917bcf4f089E.exit.thread ], [ %.sroa.627.sroa.0.0.i, %_ZN4jiff6shared5posix6Parser21parse_posix_time_zone17heed09917bcf4f089E.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.28)
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i32 %.sroa.9.027, ptr %i.bt, align 1
  store i8 4, ptr %0, align 8
  br label %bb.ae

bb.ac:                                            ; preds = %_ZN4jiff6shared5posix6Parser21parse_posix_time_zone17heed09917bcf4f089E.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(27) %.sroa.3.sroa.11, ptr noundef nonnull align 4 dereferenceable(27) %.sroa.28, i64 27, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.28)
  %i.bu = load i64, ptr %i.f, align 8, !noundef !11 ; 4 uses
  %i.bv = load i64, ptr %i.d, align 8, !noundef !11 ; 4 uses
  %i.bw = icmp ugt i64 %i.bv, %i.bu
  br i1 %i.bw, label %bb.ad, label %_ZN4jiff6shared5posix6Parser9remaining17h99c6783ee2b5811bE.exit, !prof !23

bb.ad:                                            ; preds = %bb.ac
  tail call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %i.bv, i64 noundef %i.bu, i64 noundef %i.bu, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @438) #45
  unreachable

_ZN4jiff6shared5posix6Parser9remaining17h99c6783ee2b5811bE.exit: ; preds = %bb.ac
  %i.bx = load ptr, ptr %1, align 8, !nonnull !11, !align !13, !noundef !11
  %i.by = sub nuw i64 %i.bu, %i.bv
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.bv
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.627.sroa.5.sroa.0.i, i64 3, i1 false)
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx, ptr noundef nonnull align 4 dereferenceable(3) %i.c, i64 3, i1 false)
  %.sroa.5.sroa.9.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(27) %.sroa.5.sroa.9.0..sroa.5.0..sroa_idx.sroa_idx, ptr noundef nonnull align 4 dereferenceable(27) %.sroa.627.sroa.5.sroa.10.i, i64 27, i1 false)
  %.sroa.5.sroa.13.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 60
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(27) %.sroa.5.sroa.13.0..sroa.5.0..sroa_idx.sroa_idx, ptr noundef nonnull align 1 dereferenceable(27) %.sroa.3.sroa.11, i64 27, i1 false)
  store i8 %.sroa.025.0.i, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i32 %.sroa.627.sroa.0.0.i, ptr %.sroa.4.0..sroa_idx, align 1
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sroa.627.sroa.5.sroa.5.0.i, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i32 %.sroa.627.sroa.5.sroa.6.0.i, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, align 1
  %.sroa.5.sroa.7.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.627.sroa.5.sroa.8.0.i, ptr %.sroa.5.sroa.7.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.8.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %.sroa.627.sroa.5.sroa.9.0.i, ptr %.sroa.5.sroa.8.0..sroa.5.0..sroa_idx.sroa_idx, align 4
  %.sroa.5.sroa.11.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 %.sroa.7115.0.extract.trunc.i, ptr %.sroa.5.sroa.11.0..sroa.5.0..sroa_idx.sroa_idx, align 4
  %.sroa.5.sroa.12.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %.sroa.068.0.copyload.i, ptr %.sroa.5.sroa.12.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.69.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.bz, ptr %.sroa.69.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %i.by, ptr %.sroa.7.0..sroa_idx, align 8
  br label %bb.ae

bb.ae:                                            ; preds = %_ZN4jiff6shared5posix6Parser9remaining17h99c6783ee2b5811bE.exit, %bb.ab
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i1, i8 } @_ZN4jiff6shared5posix6Parser12parse_second17he88d282efb96f9b0E(ptr nofree noundef nonnull align 8 captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !11 ; 5 uses
  %.promoted.i = load i64, ptr %i.a, align 8      ; 7 uses
  %i.d = tail call i64 @llvm.usub.sat.i64(i64 %i.c, i64 %.promoted.i)
  %i.e = icmp eq i64 %.promoted.i, %i.c
  br i1 %i.e, label %_ZN4jiff6shared5posix6Parser34parse_number_with_exactly_n_digits17h4811edfffdb31efdE.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %exitcond.not.i.not = icmp ugt i64 %i.c, %.promoted.i
  br i1 %exitcond.not.i.not, label %_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.lcssa30 = phi i64 [ %.promoted.i, %bb.b ], [ %i.j, %bb.d ]
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.lcssa30, i64 noundef %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @437) #45
  unreachable

_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i: ; preds = %bb.b
  %i.f = load ptr, ptr %0, align 8, !nonnull !11, !align !13, !noundef !11 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %.promoted.i
  %i.h = load i8, ptr %i.g, align 1, !noundef !11 ; 2 uses
  %i.i = add i8 %i.h, -58
  %or.cond.i = icmp ult i8 %i.i, -10
  br i1 %or.cond.i, label %_ZN4jiff6shared5posix6Parser34parse_number_with_exactly_n_digits17h4811edfffdb31efdE.exit.thread, label %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.i

_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.i: ; preds = %_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i
  %i.j = add nuw i64 %.promoted.i, 1              ; 4 uses
  store i64 %i.j, ptr %i.a, align 8
  %i.k = icmp eq i64 %i.j, %i.c
  br i1 %i.k, label %_ZN4jiff6shared5posix6Parser34parse_number_with_exactly_n_digits17h4811edfffdb31efdE.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.i
  %exitcond.not.i.1 = icmp eq i64 %i.d, 1
  br i1 %exitcond.not.i.1, label %bb.c, label %_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i.1

_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i.1: ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.j
  %i.m = load i8, ptr %i.l, align 1, !noundef !11 ; 2 uses
  %i.n = add i8 %i.m, -58
  %or.cond.i.1 = icmp ult i8 %i.n, -10
  br i1 %or.cond.i.1, label %_ZN4jiff6shared5posix6Parser34parse_number_with_exactly_n_digits17h4811edfffdb31efdE.exit.thread, label %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.i.1

_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.i.1: ; preds = %_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i.1
  %i.o = add nsw i8 %i.m, -48
  %i.p = mul i8 %i.h, 10
  %narrow = add nsw i8 %i.p, 32
  %i.q = zext nneg i8 %narrow to i32
  %i.r = zext nneg i8 %i.o to i32
  %i.s = add nuw nsw i32 %i.q, %i.r               ; 3 uses
  %i.t = add nuw i64 %.promoted.i, 2
  store i64 %i.t, ptr %i.a, align 8
  %i.u = icmp samesign ugt i32 %i.s, 127
  br i1 %i.u, label %_ZN4jiff6shared5posix6Parser34parse_number_with_exactly_n_digits17h4811edfffdb31efdE.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.i.1
  %i.v = trunc nuw nsw i32 %i.s to i8
  %or.cond1 = icmp samesign ugt i32 %i.s, 59      ; 2 uses
  %. = select i1 %or.cond1, i8 4, i8 %i.v
  br label %_ZN4jiff6shared5posix6Parser34parse_number_with_exactly_n_digits17h4811edfffdb31efdE.exit.thread

_ZN4jiff6shared5posix6Parser34parse_number_with_exactly_n_digits17h4811edfffdb31efdE.exit.thread: ; preds = %_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i, %bb.a, %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.i, %_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i.1, %bb.e, %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.i.1
  %.sroa.5.0 = phi i8 [ 4, %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.i.1 ], [ %., %bb.e ], [ 2, %_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i.1 ], [ 1, %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.i ], [ 1, %bb.a ], [ 2, %_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i ]
  %.sroa.0.0 = phi i1 [ true, %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.i.1 ], [ %or.cond1, %bb.e ], [ true, %_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i.1 ], [ true, %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.i ], [ true, %bb.a ], [ true, %_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i ]
  %i.w = insertvalue { i1, i8 } poison, i1 %.sroa.0.0, 0
  %i.x = insertvalue { i1, i8 } %i.w, i8 %.sroa.5.0, 1
  ret { i1, i8 } %i.x
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i1, i8 } @_ZN4jiff6shared5posix6Parser13parse_weekday17h851ee05aee9ec700E(ptr nofree noundef nonnull align 8 captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !11 ; 3 uses
  %.promoted.i = load i64, ptr %i.a, align 8      ; 5 uses
  %i.d = icmp eq i64 %.promoted.i, %i.c
  br i1 %i.d, label %_ZN4jiff6shared5posix6Parser34parse_number_with_exactly_n_digits17h4811edfffdb31efdE.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %exitcond.not.i.not = icmp ugt i64 %i.c, %.promoted.i
  br i1 %exitcond.not.i.not, label %_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.promoted.i, i64 noundef %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @437) #45
  unreachable

_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i: ; preds = %bb.b
  %i.e = load ptr, ptr %0, align 8, !nonnull !11, !align !13, !noundef !11
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %.promoted.i
  %i.g = load i8, ptr %i.f, align 1, !noundef !11 ; 2 uses
  %i.h = add i8 %i.g, -58
  %or.cond.i = icmp ult i8 %i.h, -10
  br i1 %or.cond.i, label %_ZN4jiff6shared5posix6Parser34parse_number_with_exactly_n_digits17h4811edfffdb31efdE.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i
  %i.i = add nsw i8 %i.g, -48                     ; 2 uses
  %i.j = add nuw i64 %.promoted.i, 1
  store i64 %i.j, ptr %i.a, align 8
  %or.cond1 = icmp ugt i8 %i.i, 6                 ; 2 uses
  %. = select i1 %or.cond1, i8 4, i8 %i.i
  br label %_ZN4jiff6shared5posix6Parser34parse_number_with_exactly_n_digits17h4811edfffdb31efdE.exit.thread

_ZN4jiff6shared5posix6Parser34parse_number_with_exactly_n_digits17h4811edfffdb31efdE.exit.thread: ; preds = %_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i, %bb.a, %bb.d
  %.sroa.5.0 = phi i8 [ %., %bb.d ], [ 1, %bb.a ], [ 2, %_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i ]
  %.sroa.0.0 = phi i1 [ %or.cond1, %bb.d ], [ true, %bb.a ], [ true, %_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i ]
  %i.k = insertvalue { i1, i8 } poison, i1 %.sroa.0.0, 0
  %i.l = insertvalue { i1, i8 } %i.k, i8 %.sroa.5.0, 1
  ret { i1, i8 } %i.l
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4jiff6shared5posix6Parser18parse_abbreviation17hf45f421b04ab9c85E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 1 captures(none) dereferenceable(32) %0, ptr nofree noundef nonnull align 8 captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [30 x i8], align 1                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [30 x i8], align 1                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  %i.h = load i64, ptr %i.g, align 8, !noundef !11 ; 9 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !noundef !11 ; 15 uses
  %i.k = icmp ult i64 %i.h, %i.j
  br i1 %i.k, label %_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.h, i64 noundef %i.j, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @437) #45
  unreachable

_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit: ; preds = %bb.a
  %i.l = load ptr, ptr %1, align 8, !nonnull !11, !align !13, !noundef !11 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.h ; 2 uses
  %i.n = load i8, ptr %i.m, align 1, !noundef !11
  %i.o = icmp eq i8 %i.n, 60
  br i1 %i.o, label %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit, label %_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i

_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit: ; preds = %_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit
  %i.p = add nuw i64 %i.h, 1                      ; 7 uses
  store i64 %i.p, ptr %i.g, align 8
  %.not = icmp eq i64 %i.p, %i.j
  br i1 %.not, label %bb.k, label %bb.l

_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i: ; preds = %_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit, %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.i.1
  %2 = phi i64 [ %i.ab, %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.i.1 ], [ %i.h, %_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit ] ; 4 uses
  %.sroa.06.0.i = phi i64 [ %3, %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.i.1 ], [ 0, %_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 %2
  %i.r = load i8, ptr %i.q, align 1, !noalias !11635, !noundef !11
  %i.s = and i8 %i.r, -33
  %i.t = add i8 %i.s, -65
  %or.cond10.i = icmp ult i8 %i.t, 26
  br i1 %or.cond10.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i
  %exitcond29.i = icmp eq i64 %.sroa.06.0.i, 30
  br i1 %exitcond29.i, label %.loopexit35, label %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.i

bb.d:                                             ; preds = %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.i.1, %_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i.1, %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.i, %_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i
  %i.u = phi i64 [ %2, %_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i ], [ %i.j, %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.i ], [ %i.w, %_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i.1 ], [ %i.j, %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.i.1 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !11635
  %i.v = icmp ult i64 %i.u, %i.h
  %.not.i = icmp ugt i64 %i.u, %i.j
  %or.cond11.i = or i1 %i.v, %.not.i
  br i1 %or.cond11.i, label %bb.f, label %bb.e, !prof !57

_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.i: ; preds = %bb.c
  %i.w = add nuw i64 %2, 1                        ; 4 uses
  store i64 %i.w, ptr %i.g, align 8, !noalias !11635
  %.not17.i = icmp eq i64 %i.w, %i.j
  br i1 %.not17.i, label %bb.d, label %_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i.1

_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i.1: ; preds = %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.i
  %3 = add nuw nsw i64 %.sroa.06.0.i, 2
  %i.x = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !noalias !11635, !noundef !11
  %i.z = and i8 %i.y, -33
  %i.aa = add i8 %i.z, -65
  %or.cond10.i.1 = icmp ult i8 %i.aa, 26
  br i1 %or.cond10.i.1, label %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.i.1, label %bb.d

_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.i.1: ; preds = %_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i.1
  %i.ab = add nuw i64 %2, 2                       ; 3 uses
  store i64 %i.ab, ptr %i.g, align 8, !noalias !11635
  %.not17.i.1 = icmp eq i64 %i.ab, %i.j
  br i1 %.not17.i.1, label %bb.d, label %_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i

bb.e:                                             ; preds = %bb.d
  %i.ac = sub nuw i64 %i.u, %i.h
  call void @_ZN4core3str8converts9from_utf817h61448895180b8340E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.m, i64 noundef %i.ac), !noalias !11635
  %i.ad = load i64, ptr %i.d, align 8, !range !53, !noalias !11635, !noundef !11
  %i.ae = trunc nuw i64 %i.ad to i1
  br i1 %i.ae, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.d
  tail call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %i.h, i64 noundef %i.u, i64 noundef %i.j, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @434) #45, !noalias !11635
  unreachable

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !11635
  br label %.loopexit35

bb.h:                                             ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !noalias !11635, !nonnull !11, !align !13, !noundef !11
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.ai = load i64, ptr %i.ah, align 8, !noalias !11635, !noundef !11 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !11635
  %i.aj = icmp ult i64 %i.ai, 3
  br i1 %i.aj, label %.loopexit35, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ak = icmp ugt i64 %i.ai, 30
  br i1 %i.ak, label %bb.j, label %bb.z

bb.j:                                             ; preds = %bb.i
  call void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @433) #45, !noalias !11635
  unreachable

bb.k:                                             ; preds = %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.al, align 1
  br label %bb.x

bb.l:                                             ; preds = %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit
  %i.am = tail call i64 @llvm.usub.sat.i64(i64 %i.j, i64 %i.p)
  br label %bb.m

bb.m:                                             ; preds = %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.i5, %bb.l
  %i.an = phi i64 [ %i.p, %bb.l ], [ %i.ay, %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.i5 ] ; 4 uses
  %.sroa.08.0.i = phi i64 [ 0, %bb.l ], [ %i.ao, %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.i5 ] ; 3 uses
  %i.ao = add nuw nsw i64 %.sroa.08.0.i, 1
  %exitcond.not.i2 = icmp eq i64 %.sroa.08.0.i, %i.am
  br i1 %exitcond.not.i2, label %bb.n, label %_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i3

bb.n:                                             ; preds = %bb.m
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.an, i64 noundef %i.j, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @437) #45, !noalias !11636
  unreachable

_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i3: ; preds = %bb.m
  %i.ap = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.an
  %i.aq = load i8, ptr %i.ap, align 1, !noalias !11636, !noundef !11 ; 6 uses
  %i.ar = add nsw i8 %i.aq, -48
  %.sroa.05.0.i = icmp ult i8 %i.ar, 10
  %i.as = icmp samesign ugt i8 %i.aq, 64
  %i.at = icmp samesign ult i8 %i.aq, 91
  %.sroa.06.0.i4 = select i1 %i.as, i1 %i.at, i1 %.sroa.05.0.i
  %i.au = icmp ugt i8 %i.aq, 96
  %i.av = icmp ult i8 %i.aq, 123
  %.sroa.06.0.fr.i = freeze i1 %.sroa.06.0.i4
  %.sroa.07.0.i = select i1 %i.au, i1 %i.av, i1 %.sroa.06.0.fr.i
  br i1 %.sroa.07.0.i, label %bb.o, label %switch.early.test.i

switch.early.test.i:                              ; preds = %_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i3
  switch i8 %i.aq, label %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.thread.i [
    i8 45, label %bb.o
    i8 43, label %bb.o
  ]

bb.o:                                             ; preds = %switch.early.test.i, %switch.early.test.i, %_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i3
  %exitcond41.i = icmp eq i64 %.sroa.08.0.i, 30
  br i1 %exitcond41.i, label %.loopexit, label %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.i5

_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.thread.i: ; preds = %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.i5, %switch.early.test.i
  %i.aw = phi i64 [ %i.an, %switch.early.test.i ], [ %i.j, %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.i5 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !11636
  %i.ax = icmp ule i64 %i.aw, %i.h
  %.not.i6 = icmp ugt i64 %i.aw, %i.j
  %or.cond.i = or i1 %i.ax, %.not.i6
  br i1 %or.cond.i, label %bb.q, label %bb.p, !prof !57

_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.i5: ; preds = %bb.o
  %i.ay = add nuw i64 %i.an, 1                    ; 3 uses
  store i64 %i.ay, ptr %i.g, align 8, !noalias !11636
  %.not26.i = icmp eq i64 %i.ay, %i.j
  br i1 %.not26.i, label %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.thread.i, label %bb.m

bb.p:                                             ; preds = %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.thread.i
  %i.az = sub nuw i64 %i.aw, %i.p
  %i.ba = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.p
  call void @_ZN4core3str8converts9from_utf817h61448895180b8340E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ba, i64 noundef %i.az), !noalias !11636
  %i.bb = load i64, ptr %i.b, align 8, !range !53, !noalias !11636, !noundef !11
  %i.bc = trunc nuw i64 %i.bb to i1
  br i1 %i.bc, label %bb.r, label %bb.s

bb.q:                                             ; preds = %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.thread.i
  tail call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %i.p, i64 noundef %i.aw, i64 noundef %i.j, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @432) #45, !noalias !11636
  unreachable

bb.r:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !11636
  br label %.loopexit

bb.s:                                             ; preds = %bb.p
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !noalias !11636, !nonnull !11, !align !13, !noundef !11
  %i.bf = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.bg = load i64, ptr %i.bf, align 8, !noalias !11636, !noundef !11 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !11636
  %i.bh = load i64, ptr %i.g, align 8, !noalias !11636, !noundef !11 ; 5 uses
  %i.bi = load i64, ptr %i.i, align 8, !noalias !11636, !noundef !11 ; 3 uses
  %i.bj = icmp eq i64 %i.bh, %i.bi
  br i1 %i.bj, label %.loopexit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bk = icmp ult i64 %i.bh, %i.bi
  br i1 %i.bk, label %_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit15.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.bh, i64 noundef %i.bi, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @437) #45, !noalias !11636
  unreachable

_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit15.i: ; preds = %bb.t
  %i.bl = load ptr, ptr %1, align 8, !noalias !11636, !nonnull !11, !align !13, !noundef !11
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bh
  %i.bn = load i8, ptr %i.bm, align 1, !noalias !11636, !noundef !11
  %i.bo = icmp eq i8 %i.bn, 62
  br i1 %i.bo, label %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit17.i, label %.loopexit

_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit17.i: ; preds = %_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit15.i
  %i.bp = add nuw i64 %i.bh, 1
  store i64 %i.bp, ptr %i.g, align 8, !noalias !11636
  %i.bq = icmp ult i64 %i.bg, 3
  br i1 %i.bq, label %.loopexit, label %bb.v

bb.v:                                             ; preds = %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit17.i
  %i.br = icmp ugt i64 %i.bg, 30
  br i1 %i.br, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  call void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @431) #45, !noalias !11636
  unreachable

bb.x:                                             ; preds = %.loopexit35, %bb.z, %.loopexit, %bb.y, %bb.k
  %.sink61.sink = phi i64 [ 2, %bb.k ], [ 2, %.loopexit ], [ 31, %bb.y ], [ 31, %bb.z ], [ 2, %.loopexit35 ]
  %.sink.sink = phi i8 [ 4, %bb.k ], [ %.sink52.i.ph, %.loopexit ], [ %i.bv, %bb.y ], [ %i.ca, %bb.z ], [ %.sink38.i.ph, %.loopexit35 ]
  %storemerge1.sink = phi i8 [ 1, %bb.k ], [ 1, %.loopexit ], [ 0, %bb.y ], [ 0, %bb.z ], [ 1, %.loopexit35 ]
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 %.sink61.sink
  store i8 %.sink.sink, ptr %.sroa.5.0..sroa_idx, align 1
  store i8 %storemerge1.sink, ptr %0, align 1
  ret void

.loopexit:                                        ; preds = %bb.o, %_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit15.i, %bb.s, %bb.r, %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit17.i
  %.sink52.i.ph = phi i8 [ 2, %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit17.i ], [ 0, %bb.r ], [ 5, %_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit15.i ], [ 3, %bb.s ], [ 1, %bb.o ]
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.bs, align 1
  br label %bb.x

bb.y:                                             ; preds = %bb.v
  %i.bt = sub nuw nsw i64 30, %i.bg
  %i.bu = getelementptr i8, ptr %i.a, i64 %i.bg
  call void @llvm.memset.p0.i64(ptr align 1 %i.bu, i8 0, i64 %i.bt, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull readonly align 1 dereferenceable(1) %i.be, i64 range(i64 3, 0) %i.bg, i1 false)
  %i.bv = trunc nuw nsw i64 %i.bg to i8
  %.sroa.4.1.copyload13 = load i8, ptr %i.a, align 1
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.4.1.copyload13, ptr %i.bw, align 1
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(29) %.sroa.425.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(29) %i.f, i64 29, i1 false)
  br label %bb.x

.loopexit35:                                      ; preds = %bb.c, %bb.g, %bb.h
  %.sink38.i.ph = phi i8 [ 2, %bb.h ], [ 0, %bb.g ], [ 1, %bb.c ]
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.bx, align 1
  br label %bb.x

bb.z:                                             ; preds = %bb.i
  %i.by = sub nuw nsw i64 30, %i.ai
  %i.bz = getelementptr i8, ptr %i.c, i64 %i.ai
  call void @llvm.memset.p0.i64(ptr align 1 %i.bz, i8 0, i64 %i.by, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.c, ptr noundef nonnull readonly align 1 dereferenceable(1) %i.ag, i64 range(i64 3, 0) %i.ai, i1 false)
  %i.ca = trunc nuw nsw i64 %i.ai to i8
  %.sroa.420.1.copyload21 = load i8, ptr %i.c, align 1
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.420.1.copyload21, ptr %i.cb, align 1
  %.sroa.427.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(29) %.sroa.427.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(29) %i.e, i64 29, i1 false)
  br label %bb.x
}

; Function Attrs: nonlazybind uwtable
define internal fastcc range(i64 0, -4294967295) i64 @_ZN4jiff6shared5posix6Parser18parse_posix_offset17hf5c340e1058fe1a5E(ptr nofree noundef nonnull align 8 captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 7 uses
end_hunk_1
begin_hunk_2_@_ZN4jiff6shared5posix6Parser18parse_posix_offset17hf5c340e1058fe1a5E:bb.a
bb.d:                                             ; preds = %bb.a, %_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i, %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit5.i, %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.i
  %.promoted.i.i.ph = phi i64 [ %i.m, %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.i ], [ %i.n, %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit5.i ], [ %i.e, %_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i ], [ %i.e, %bb.a ] ; 7 uses
  %.sroa.0.1.i.ph.neg = phi i32 [ 1, %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.i ], [ -1, %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit5.i ], [ -1, %_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i ], [ -1, %bb.a ]
  %i.o = tail call i64 @llvm.usub.sat.i64(i64 %i.g, i64 %.promoted.i.i.ph)
  %i.p = icmp eq i64 %.promoted.i.i.ph, %i.g
  br i1 %i.p, label %_ZN4jiff6shared5posix6Parser16parse_hour_posix17hc1cc1e87f8852be1E.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %exitcond.not.i.not.i = icmp ugt i64 %i.g, %.promoted.i.i.ph
  br i1 %exitcond.not.i.not.i, label %_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e
  %.lcssa34.i = phi i64 [ %.promoted.i.i.ph, %bb.e ], [ %i.u, %bb.g ]
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.lcssa34.i, i64 noundef %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @437) #45
  unreachable

_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i.i: ; preds = %bb.e
  %i.q = load ptr, ptr %0, align 8, !nonnull !11, !align !13, !noundef !11 ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %.promoted.i.i.ph
  %i.s = load i8, ptr %i.r, align 1, !noundef !11
  %i.t = add i8 %i.s, -48                         ; 4 uses
  %or.cond.i.i = icmp ult i8 %i.t, 10
  br i1 %or.cond.i.i, label %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.i.i, label %_ZN4jiff6shared5posix6Parser16parse_hour_posix17hc1cc1e87f8852be1E.exit.thread

_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.i.i: ; preds = %_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i.i
  %i.u = add nuw i64 %.promoted.i.i.ph, 1         ; 5 uses
  store i64 %i.u, ptr %i.d, align 8
  %i.v = icmp eq i64 %i.u, %i.g
  br i1 %i.v, label %.critedge, label %bb.g

bb.g:                                             ; preds = %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.i.i
  %exitcond.not.i.1.i = icmp eq i64 %i.o, 1
  br i1 %exitcond.not.i.1.i, label %bb.f, label %_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i.1.i

_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i.1.i: ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.u
  %i.x = load i8, ptr %i.w, align 1, !noundef !11
  %i.y = add i8 %i.x, -48                         ; 2 uses
  %or.cond.i.1.i = icmp ult i8 %i.y, 10
  br i1 %or.cond.i.1.i, label %_ZN4jiff6shared5posix6Parser16parse_hour_posix17hc1cc1e87f8852be1E.exit, label %_ZN4jiff6shared5posix6Parser16parse_hour_posix17hc1cc1e87f8852be1E.exit.thread75

_ZN4jiff6shared5posix6Parser16parse_hour_posix17hc1cc1e87f8852be1E.exit: ; preds = %_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i.1.i
  %i.z = mul nuw nsw i8 %i.t, 10
  %i.aa = add nuw nsw i8 %i.y, %i.z               ; 2 uses
  %i.ab = add nuw i64 %.promoted.i.i.ph, 2        ; 2 uses
  store i64 %i.ab, ptr %i.d, align 8
  %or.cond1.i = icmp samesign ugt i8 %i.aa, 24
  br i1 %or.cond1.i, label %_ZN4jiff6shared5posix6Parser16parse_hour_posix17hc1cc1e87f8852be1E.exit.thread, label %_ZN4jiff6shared5posix6Parser16parse_hour_posix17hc1cc1e87f8852be1E.exit.thread75

_ZN4jiff6shared5posix6Parser16parse_hour_posix17hc1cc1e87f8852be1E.exit.thread75: ; preds = %_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i.1.i, %_ZN4jiff6shared5posix6Parser16parse_hour_posix17hc1cc1e87f8852be1E.exit
  %i.ac = phi i64 [ %i.ab, %_ZN4jiff6shared5posix6Parser16parse_hour_posix17hc1cc1e87f8852be1E.exit ], [ %i.u, %_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i.1.i ] ; 5 uses
  %..i79 = phi i8 [ %i.aa, %_ZN4jiff6shared5posix6Parser16parse_hour_posix17hc1cc1e87f8852be1E.exit ], [ %i.t, %_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i.1.i ] ; 5 uses
  %i.ad = icmp ult i64 %i.ac, %i.g
  br i1 %i.ad, label %bb.h, label %.critedge

bb.h:                                             ; preds = %_ZN4jiff6shared5posix6Parser16parse_hour_posix17hc1cc1e87f8852be1E.exit.thread75
  %i.ae = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.ac
  %i.af = load i8, ptr %i.ae, align 1, !noundef !11
  %i.ag = icmp eq i8 %i.af, 58
  br i1 %i.ag, label %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit, label %.critedge

_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit: ; preds = %bb.h
  %i.ah = add nuw i64 %i.ac, 1                    ; 6 uses
  store i64 %i.ah, ptr %i.d, align 8
  %.not = icmp eq i64 %i.ah, %i.g
  br i1 %.not, label %_ZN4jiff6shared5posix6Parser16parse_hour_posix17hc1cc1e87f8852be1E.exit.thread, label %bb.i

.critedge:                                        ; preds = %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.i.i, %bb.l, %_ZN4jiff6shared5posix6Parser16parse_hour_posix17hc1cc1e87f8852be1E.exit.thread75, %bb.m, %bb.h, %bb.p
  %..i79104 = phi i8 [ %..i79, %bb.p ], [ %..i79, %bb.h ], [ %..i79, %bb.m ], [ %..i79, %_ZN4jiff6shared5posix6Parser16parse_hour_posix17hc1cc1e87f8852be1E.exit.thread75 ], [ %..i79, %bb.l ], [ %i.t, %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.i.i ]
  %.sroa.025.0 = phi i32 [ %i.bm, %bb.p ], [ 0, %bb.h ], [ 0, %bb.m ], [ 0, %_ZN4jiff6shared5posix6Parser16parse_hour_posix17hc1cc1e87f8852be1E.exit.thread75 ], [ 0, %bb.l ], [ 0, %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.i.i ]
  %.sroa.024.0 = phi i32 [ %i.bc, %bb.p ], [ 0, %bb.h ], [ %i.bc, %bb.m ], [ 0, %_ZN4jiff6shared5posix6Parser16parse_hour_posix17hc1cc1e87f8852be1E.exit.thread75 ], [ %i.bc, %bb.l ], [ 0, %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.ai = zext nneg i8 %..i79104 to i32
  %i.aj = mul nuw nsw i32 %i.ai, 3600
  %i.ak = mul nuw nsw i32 %.sroa.024.0, 60
  %i.al = add nuw nsw i32 %.sroa.025.0, %i.aj
  %i.am = add nuw nsw i32 %i.al, %i.ak
  %i.an = mul nsw i32 %i.am, %.sroa.0.1.i.ph.neg  ; 3 uses
  store i32 %i.an, ptr %i.c, align 4
  %i.ao = add nsw i32 %i.an, 89999
  %or.cond7 = icmp ult i32 %i.ao, 179999
  br i1 %or.cond7, label %bb.r, label %bb.q, !prof !20

bb.i:                                             ; preds = %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit
  %i.ap = tail call i64 @llvm.usub.sat.i64(i64 %i.g, i64 %i.ah)
  %exitcond.not.i.not.i59 = icmp ugt i64 %i.g, %i.ah
  br i1 %exitcond.not.i.not.i59, label %_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i.i60, label %bb.j

bb.j:                                             ; preds = %bb.k, %bb.i
  %.lcssa30.i = phi i64 [ %i.ah, %bb.i ], [ %i.at, %bb.k ]
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.lcssa30.i, i64 noundef %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @437) #45
  unreachable

_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i.i60: ; preds = %bb.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.ah
  %i.ar = load i8, ptr %i.aq, align 1, !noundef !11 ; 2 uses
  %i.as = add i8 %i.ar, -58
  %or.cond.i.i61 = icmp ult i8 %i.as, -10
  br i1 %or.cond.i.i61, label %_ZN4jiff6shared5posix6Parser16parse_hour_posix17hc1cc1e87f8852be1E.exit.thread, label %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.i.i62

_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.i.i62: ; preds = %_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i.i60
  %i.at = add nuw i64 %i.ac, 2                    ; 4 uses
  store i64 %i.at, ptr %i.d, align 8
  %i.au = icmp eq i64 %i.at, %i.g
  br i1 %i.au, label %_ZN4jiff6shared5posix6Parser16parse_hour_posix17hc1cc1e87f8852be1E.exit.thread, label %bb.k

bb.k:                                             ; preds = %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.i.i62
  %exitcond.not.i.1.i63 = icmp eq i64 %i.ap, 1
  br i1 %exitcond.not.i.1.i63, label %bb.j, label %_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i.1.i64

_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i.1.i64: ; preds = %bb.k
  %i.av = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.at
  %i.aw = load i8, ptr %i.av, align 1, !noundef !11 ; 2 uses
  %i.ax = add i8 %i.aw, -58
  %or.cond.i.1.i65 = icmp ult i8 %i.ax, -10
  br i1 %or.cond.i.1.i65, label %_ZN4jiff6shared5posix6Parser16parse_hour_posix17hc1cc1e87f8852be1E.exit.thread, label %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.i.1.i66

_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.i.1.i66: ; preds = %_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i.1.i64
  %i.ay = add nsw i8 %i.aw, -48
  %i.az = mul i8 %i.ar, 10
  %narrow.i = add nsw i8 %i.az, 32
  %i.ba = zext nneg i8 %narrow.i to i32
  %i.bb = zext nneg i8 %i.ay to i32
  %i.bc = add nuw nsw i32 %i.bb, %i.ba            ; 4 uses
  %i.bd = add nuw i64 %i.ac, 3                    ; 3 uses
  store i64 %i.bd, ptr %i.d, align 8
  %or.cond1.i67 = icmp samesign ugt i32 %i.bc, 59
  br i1 %or.cond1.i67, label %_ZN4jiff6shared5posix6Parser16parse_hour_posix17hc1cc1e87f8852be1E.exit.thread, label %bb.l

bb.l:                                             ; preds = %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.i.1.i66
  %i.be = icmp ult i64 %i.bd, %i.g
  br i1 %i.be, label %bb.m, label %.critedge

bb.m:                                             ; preds = %bb.l
  %i.bf = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.bd
  %i.bg = load i8, ptr %i.bf, align 1, !noundef !11
  %i.bh = icmp eq i8 %i.bg, 58
  br i1 %i.bh, label %bb.n, label %.critedge

bb.n:                                             ; preds = %bb.m
  %i.bi = tail call fastcc noundef zeroext i1 @_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE(ptr noundef nonnull align 8 %0)
  br i1 %i.bi, label %bb.o, label %_ZN4jiff6shared5posix6Parser16parse_hour_posix17hc1cc1e87f8852be1E.exit.thread

bb.o:                                             ; preds = %bb.n
  %i.bj = tail call fastcc { i1, i8 } @_ZN4jiff6shared5posix6Parser12parse_second17he88d282efb96f9b0E(ptr noundef nonnull align 8 %0) ; 2 uses
  %i.bk = extractvalue { i1, i8 } %i.bj, 0
  %i.bl = extractvalue { i1, i8 } %i.bj, 1        ; 2 uses
  br i1 %i.bk, label %_ZN4jiff6shared5posix6Parser16parse_hour_posix17hc1cc1e87f8852be1E.exit.thread.sink.split, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bm = zext nneg i8 %i.bl to i32
  br label %.critedge

bb.q:                                             ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8
  %.sroa.450.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h1d34aa19ad65fef9E", ptr %.sroa.450.0..sroa_idx, align 8
  store ptr @429, ptr %i.b, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 2, ptr %i.bn, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.bo, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.a, ptr %i.bp, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 1, ptr %i.bq, align 8
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @430) #45
  unreachable

bb.r:                                             ; preds = %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.br = zext i32 %i.an to i64
  %i.bs = shl nuw i64 %i.br, 32
  br label %_ZN4jiff6shared5posix6Parser16parse_hour_posix17hc1cc1e87f8852be1E.exit.thread

_ZN4jiff6shared5posix6Parser16parse_hour_posix17hc1cc1e87f8852be1E.exit.thread: ; preds = %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit, %bb.n, %bb.d, %_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i.i, %_ZN4jiff6shared5posix6Parser16parse_hour_posix17hc1cc1e87f8852be1E.exit, %_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i.i60, %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.i.i62, %_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i.1.i64, %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.i.1.i66, %_ZN4jiff6shared5posix6Parser16parse_hour_posix17hc1cc1e87f8852be1E.exit.thread.sink.split, %bb.r
  %.sroa.14.0.insert.insert = phi i64 [ %i.bs, %bb.r ], [ 131841, %_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i.1.i64 ], [ 513, %bb.n ], [ 1, %bb.d ], [ 66305, %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.i.i62 ], [ 257, %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit ], [ 262145, %_ZN4jiff6shared5posix6Parser16parse_hour_posix17hc1cc1e87f8852be1E.exit ], [ 1, %_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i.i ], [ 262913, %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.i.1.i66 ], [ 131841, %_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i.i60 ], [ %i.bw, %_ZN4jiff6shared5posix6Parser16parse_hour_posix17hc1cc1e87f8852be1E.exit.thread.sink.split ]
  ret i64 %.sroa.14.0.insert.insert

_ZN4jiff6shared5posix6Parser16parse_hour_posix17hc1cc1e87f8852be1E.exit.thread.sink.split: ; preds = %bb.o, %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit5.i, %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.i
  %.sroa.14.2.ph = phi i8 [ 0, %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.i ], [ 1, %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit5.i ], [ %i.bl, %bb.o ]
  %.sroa.8.2.ph = phi i64 [ 1024, %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.i ], [ 1024, %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit5.i ], [ 1280, %bb.o ]
  %i.bt = zext i8 %.sroa.14.2.ph to i64
  %i.bu = shl nuw nsw i64 %i.bt, 16
  %i.bv = or disjoint i64 %i.bu, %.sroa.8.2.ph
  %i.bw = or disjoint i64 %i.bv, 1
  br label %_ZN4jiff6shared5posix6Parser16parse_hour_posix17hc1cc1e87f8852be1E.exit.thread
}

; Function Attrs: nonlazybind uwtable
define internal fastcc i64 @_ZN4jiff6shared5posix6Parser20parse_posix_datetime17he6e20cbb25596406E(ptr nofree noundef nonnull align 8 captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  %i.c = alloca [4 x i8], align 4                 ; 4 uses
  %.sroa.524.i = alloca [3 x i8], align 2         ; 5 uses
  %.sroa.5.i = alloca [3 x i8], align 2           ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 25 uses
  %i.e = load i64, ptr %i.d, align 8, !noundef !11 ; 13 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !noundef !11 ; 13 uses
  %i.h = icmp ult i64 %i.e, %i.g
  br i1 %i.h, label %_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.e, i64 noundef %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @437) #45
  unreachable

_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i: ; preds = %bb.a
  %i.i = load ptr, ptr %0, align 8, !nonnull !11, !align !13, !noundef !11 ; 11 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.e
  %i.k = load i8, ptr %i.j, align 1, !noundef !11 ; 2 uses
  switch i8 %i.k, label %bb.c [
    i8 74, label %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.i
    i8 77, label %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit66.i
  ]

bb.c:                                             ; preds = %_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i
  %i.l = add i8 %i.k, -48                         ; 2 uses
  %or.cond.i = icmp ult i8 %i.l, 10
  br i1 %or.cond.i, label %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.i.i73.i, label %bb.m

_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.i: ; preds = %_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i
  %i.m = add nuw i64 %i.e, 1                      ; 3 uses
  store i64 %i.m, ptr %i.d, align 8
  %.not94.i = icmp eq i64 %i.m, %i.g
  br i1 %.not94.i, label %bb.m, label %_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i.i.i

_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit66.i: ; preds = %_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i
  %i.n = add nuw i64 %i.e, 1                      ; 3 uses
  store i64 %i.n, ptr %i.d, align 8
  %.not.i = icmp eq i64 %i.n, %i.g
  br i1 %.not.i, label %bb.m, label %_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i.i.i.i

_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i.i.i: ; preds = %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.m
  %i.p = load i8, ptr %i.o, align 1, !noundef !11
  %i.q = add i8 %i.p, -48                         ; 2 uses
  %or.cond.i.i.i = icmp ult i8 %i.q, 10
  br i1 %or.cond.i.i.i, label %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.i.i.i, label %_ZN4jiff6shared5posix6Parser30parse_posix_julian_day_no_leap17h0a9aa93a5b989972E.exit.thread.i

_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.i.i.i: ; preds = %_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i.i.i
  %i.r = zext nneg i8 %i.q to i32                 ; 3 uses
  %i.s = add nuw i64 %i.e, 2                      ; 3 uses
  store i64 %i.s, ptr %i.d, align 8
  %i.t = icmp eq i64 %i.s, %i.g
  br i1 %i.t, label %_ZN4jiff6shared5posix6Parser30parse_posix_julian_day_no_leap17h0a9aa93a5b989972E.exit.i, label %_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i.1.i.i

_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i.1.i.i: ; preds = %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.s
  %i.v = load i8, ptr %i.u, align 1, !noundef !11
  %i.w = add i8 %i.v, -48                         ; 2 uses
  %or.cond.i.1.i.i = icmp ult i8 %i.w, 10
  br i1 %or.cond.i.1.i.i, label %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.i.1.i.i, label %_ZN4jiff6shared5posix6Parser30parse_posix_julian_day_no_leap17h0a9aa93a5b989972E.exit.i

_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.i.1.i.i: ; preds = %_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i.1.i.i
  %i.x = mul nuw nsw i32 %i.r, 10
  %i.y = zext nneg i8 %i.w to i32
  %i.z = add nuw nsw i32 %i.x, %i.y               ; 3 uses
  %i.aa = add nuw i64 %i.e, 3                     ; 3 uses
  store i64 %i.aa, ptr %i.d, align 8
  %i.ab = icmp eq i64 %i.aa, %i.g
  br i1 %i.ab, label %_ZN4jiff6shared5posix6Parser30parse_posix_julian_day_no_leap17h0a9aa93a5b989972E.exit.i, label %_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i.2.i.i

_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i.2.i.i: ; preds = %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.i.1.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.aa
  %i.ad = load i8, ptr %i.ac, align 1, !noundef !11
  %i.ae = add i8 %i.ad, -48                       ; 2 uses
  %or.cond.i.2.i.i = icmp ult i8 %i.ae, 10
  br i1 %or.cond.i.2.i.i, label %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.i.2.i.i, label %_ZN4jiff6shared5posix6Parser30parse_posix_julian_day_no_leap17h0a9aa93a5b989972E.exit.i

_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.i.2.i.i: ; preds = %_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i.2.i.i
  %i.af = mul nuw nsw i32 %i.z, 10
  %i.ag = zext nneg i8 %i.ae to i32
  %i.ah = add nuw nsw i32 %i.af, %i.ag
  %i.ai = add nuw i64 %i.e, 4
  store i64 %i.ai, ptr %i.d, align 8
  br label %_ZN4jiff6shared5posix6Parser30parse_posix_julian_day_no_leap17h0a9aa93a5b989972E.exit.i

_ZN4jiff6shared5posix6Parser30parse_posix_julian_day_no_leap17h0a9aa93a5b989972E.exit.i: ; preds = %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.i.2.i.i, %_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i.2.i.i, %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.i.1.i.i, %_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i.1.i.i, %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.i.i.i
  %.sroa.02.026.i.i.i = phi i32 [ %i.ah, %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.i.2.i.i ], [ %i.z, %_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i.2.i.i ], [ %i.z, %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.i.1.i.i ], [ %i.r, %_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i.1.i.i ], [ %i.r, %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.i.i.i ] ; 2 uses
  %i.aj = trunc nuw nsw i32 %.sroa.02.026.i.i.i to i16
  %i.ak = add nsw i16 %i.aj, -1
  %or.cond1.i.i = icmp ult i16 %i.ak, 365
  %i.al = shl nuw nsw i32 %.sroa.02.026.i.i.i, 16
  %spec.select.i.i = select i1 %or.cond1.i.i, i32 %i.al, i32 1025 ; 4 uses
  %i.am = trunc i32 %spec.select.i.i to i1
  br i1 %i.am, label %_ZN4jiff6shared5posix6Parser30parse_posix_julian_day_no_leap17h0a9aa93a5b989972E.exit.thread.i, label %bb.d

_ZN4jiff6shared5posix6Parser30parse_posix_julian_day_no_leap17h0a9aa93a5b989972E.exit.thread.i: ; preds = %_ZN4jiff6shared5posix6Parser30parse_posix_julian_day_no_leap17h0a9aa93a5b989972E.exit.i, %_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i.i.i
  %.sroa.5.0.insert.insert.i91.i = phi i32 [ %spec.select.i.i, %_ZN4jiff6shared5posix6Parser30parse_posix_julian_day_no_leap17h0a9aa93a5b989972E.exit.i ], [ 1, %_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i.i.i ]
  %.sroa.447.0.insert.shift.i = and i32 %.sroa.5.0.insert.insert.i91.i, 65280
  %.sroa.046.0.insert.insert.i = or disjoint i32 %.sroa.447.0.insert.shift.i, 10
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  br label %bb.m

bb.d:                                             ; preds = %_ZN4jiff6shared5posix6Parser30parse_posix_julian_day_no_leap17h0a9aa93a5b989972E.exit.i
  %.sroa.557.0.extract.shift.i = lshr i32 %spec.select.i.i, 16
  %.sroa.557.0.extract.trunc.i = trunc nuw nsw i32 %.sroa.557.0.extract.shift.i to i16
  %.sroa.5.i.1.i.1.i.1..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.5.i, i64 1
  store i16 %.sroa.557.0.extract.trunc.i, ptr %.sroa.5.i.1.i.1.i.1..sroa_idx, align 1
  %.sroa.5.i.0..sroa.5.i.0..sroa.5.i.0..sroa.5.0..sroa.5.0..sroa.5.0..sroa.5.1..sroa.10.0.copyload.i = load i16, ptr %.sroa.5.i, align 2
  %i.an = and i32 %spec.select.i.i, 2130706432
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  br label %bb.n

_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i.i.i.i: ; preds = %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit66.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.n
  %i.ap = load i8, ptr %i.ao, align 1, !noundef !11
  %i.aq = add i8 %i.ap, -48                       ; 4 uses
  %or.cond.i.i.i.i = icmp ult i8 %i.aq, 10
  br i1 %or.cond.i.i.i.i, label %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.i.i.i.i, label %bb.m

_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.i.i.i.i: ; preds = %_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i.i.i.i
  %i.ar = add nuw i64 %i.e, 2                     ; 4 uses
  store i64 %i.ar, ptr %i.d, align 8
  %i.as = icmp eq i64 %i.ar, %i.g
  br i1 %i.as, label %_ZN4jiff6shared5posix6Parser11parse_month17he6c7a5dcb767eb68E.exit.i.i, label %_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i.1.i.i.i

_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i.1.i.i.i: ; preds = %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.i.i.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.ar
  %i.au = load i8, ptr %i.at, align 1, !noundef !11
  %i.av = add i8 %i.au, -48                       ; 2 uses
  %or.cond.i.1.i.i.i = icmp ult i8 %i.av, 10
  br i1 %or.cond.i.1.i.i.i, label %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.i.1.i.i.i, label %_ZN4jiff6shared5posix6Parser11parse_month17he6c7a5dcb767eb68E.exit.i.i

_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.i.1.i.i.i: ; preds = %_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i.1.i.i.i
  %i.aw = mul nuw nsw i8 %i.aq, 10
  %i.ax = add nuw nsw i8 %i.av, %i.aw
  %i.ay = add nuw i64 %i.e, 3                     ; 2 uses
  store i64 %i.ay, ptr %i.d, align 8
  br label %_ZN4jiff6shared5posix6Parser11parse_month17he6c7a5dcb767eb68E.exit.i.i

_ZN4jiff6shared5posix6Parser11parse_month17he6c7a5dcb767eb68E.exit.i.i: ; preds = %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.i.1.i.i.i, %_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i.1.i.i.i, %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.i.i.i.i
  %i.az = phi i64 [ %i.ay, %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.i.1.i.i.i ], [ %i.g, %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.i.i.i.i ], [ %i.ar, %_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i.1.i.i.i ] ; 4 uses
  %.sroa.02.026.i.i.i.i = phi i8 [ %i.ax, %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.i.1.i.i.i ], [ %i.aq, %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.i.i.i.i ], [ %i.aq, %_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i.1.i.i.i ] ; 2 uses
  %i.ba = add nsw i8 %.sroa.02.026.i.i.i.i, -13
  %or.cond1.i.i.i = icmp ult i8 %i.ba, -12
  br i1 %or.cond1.i.i.i, label %bb.m, label %bb.e

bb.e:                                             ; preds = %_ZN4jiff6shared5posix6Parser11parse_month17he6c7a5dcb767eb68E.exit.i.i
  %i.bb = icmp ult i64 %i.az, %i.g
  br i1 %i.bb, label %bb.f, label %bb.m

bb.f:                                             ; preds = %bb.e
  %i.bc = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.az
  %i.bd = load i8, ptr %i.bc, align 1, !noundef !11
  %.not.i.i = icmp eq i8 %i.bd, 46
  br i1 %.not.i.i, label %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.i.i, label %bb.m

_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.i.i: ; preds = %bb.f
  %i.be = add nuw i64 %i.az, 1                    ; 3 uses
  store i64 %i.be, ptr %i.d, align 8
  %.not48.i.i = icmp eq i64 %i.be, %i.g
  br i1 %.not48.i.i, label %bb.m, label %_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i.i36.i.i

_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i.i36.i.i: ; preds = %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.be
  %i.bg = load i8, ptr %i.bf, align 1, !noundef !11 ; 3 uses
  %i.bh = add i8 %i.bg, -58
  %or.cond.i.i37.i.i = icmp ult i8 %i.bh, -10
  br i1 %or.cond.i.i37.i.i, label %bb.m, label %_ZN4jiff6shared5posix6Parser10parse_week17hbe6f7f50f4ae6464E.exit.i.i

_ZN4jiff6shared5posix6Parser10parse_week17hbe6f7f50f4ae6464E.exit.i.i: ; preds = %_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i.i36.i.i
  %i.bi = add nsw i8 %i.bg, -48
  %i.bj = add nuw i64 %i.az, 2                    ; 3 uses
  store i64 %i.bj, ptr %i.d, align 8
  %i.bk = add nsw i8 %i.bg, -54
  %or.cond1.i38.i.i = icmp ult i8 %i.bk, -5
  br i1 %or.cond1.i38.i.i, label %bb.m, label %bb.g

bb.g:                                             ; preds = %_ZN4jiff6shared5posix6Parser10parse_week17hbe6f7f50f4ae6464E.exit.i.i
  %i.bl = icmp ult i64 %i.bj, %i.g
  br i1 %i.bl, label %bb.h, label %bb.m

bb.h:                                             ; preds = %bb.g
  %i.bm = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.bj
  %i.bn = load i8, ptr %i.bm, align 1, !noundef !11
  %.not49.i.i = icmp eq i8 %i.bn, 46
  br i1 %.not49.i.i, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.bo = tail call fastcc noundef zeroext i1 @_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE(ptr noundef nonnull align 8 %0)
  br i1 %i.bo, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.bp = tail call fastcc { i1, i8 } @_ZN4jiff6shared5posix6Parser13parse_weekday17h851ee05aee9ec700E(ptr noundef nonnull align 8 %0) ; 2 uses
  %i.bq = extractvalue { i1, i8 } %i.bp, 0
  %i.br = extractvalue { i1, i8 } %i.bp, 1        ; 3 uses
  br i1 %i.bq, label %bb.k, label %_ZN4jiff6shared5posix6Parser22parse_weekday_of_month17he33117e46243b5ebE.exit.i

bb.k:                                             ; preds = %bb.j
  %i.bs = icmp ult i8 %i.br, 5
  tail call void @llvm.assume(i1 %i.bs)
  %i.bt = zext nneg i8 %i.br to i32
  %i.bu = shl nuw nsw i32 %i.bt, 8
  %i.bv = or disjoint i32 %i.bu, 6
  br label %bb.m

_ZN4jiff6shared5posix6Parser22parse_weekday_of_month17he33117e46243b5ebE.exit.i: ; preds = %bb.j
  %i.bw = zext i8 %i.br to i32
  %i.bx = shl nuw i32 %i.bw, 24
  %i.by = zext nneg i8 %.sroa.02.026.i.i.i.i to i16
  %i.bz = zext nneg i8 %i.bi to i16
  %.sroa.442.2.insert.ext.i = shl nuw nsw i16 %i.bz, 8
  %.sroa.442.2.insert.insert.i = or disjoint i16 %.sroa.442.2.insert.ext.i, %i.by
  br label %bb.n

_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.i.i73.i: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.524.i)
  %i.ca = zext nneg i8 %i.l to i32                ; 3 uses
  %i.cb = add nuw i64 %i.e, 1                     ; 3 uses
  store i64 %i.cb, ptr %i.d, align 8
  %i.cc = icmp eq i64 %i.cb, %i.g
  br i1 %i.cc, label %_ZN4jiff6shared5posix6Parser32parse_posix_julian_day_with_leap17hb476387712a927f4E.exit.i, label %_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i.1.i75.i

_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i.1.i75.i: ; preds = %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.i.i73.i
  %i.cd = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.cb
  %i.ce = load i8, ptr %i.cd, align 1, !noundef !11
  %i.cf = add i8 %i.ce, -48                       ; 2 uses
  %or.cond.i.1.i76.i = icmp ult i8 %i.cf, 10
  br i1 %or.cond.i.1.i76.i, label %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.i.1.i81.i, label %_ZN4jiff6shared5posix6Parser32parse_posix_julian_day_with_leap17hb476387712a927f4E.exit.i

_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.i.1.i81.i: ; preds = %_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i.1.i75.i
  %i.cg = mul nuw nsw i32 %i.ca, 10
  %i.ch = zext nneg i8 %i.cf to i32
  %i.ci = add nuw nsw i32 %i.cg, %i.ch            ; 3 uses
  %i.cj = add nuw i64 %i.e, 2                     ; 3 uses
  store i64 %i.cj, ptr %i.d, align 8
  %i.ck = icmp eq i64 %i.cj, %i.g
  br i1 %i.ck, label %_ZN4jiff6shared5posix6Parser32parse_posix_julian_day_with_leap17hb476387712a927f4E.exit.i, label %_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i.2.i83.i

_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i.2.i83.i: ; preds = %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.i.1.i81.i
  %i.cl = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.cj
  %i.cm = load i8, ptr %i.cl, align 1, !noundef !11
  %i.cn = add i8 %i.cm, -48                       ; 2 uses
  %or.cond.i.2.i84.i = icmp ult i8 %i.cn, 10
  br i1 %or.cond.i.2.i84.i, label %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.i.2.i85.i, label %_ZN4jiff6shared5posix6Parser32parse_posix_julian_day_with_leap17hb476387712a927f4E.exit.i

_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.i.2.i85.i: ; preds = %_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i.2.i83.i
  %i.co = mul nuw nsw i32 %i.ci, 10
  %i.cp = zext nneg i8 %i.cn to i32
  %i.cq = add nuw nsw i32 %i.co, %i.cp
  %i.cr = add nuw i64 %i.e, 3
  store i64 %i.cr, ptr %i.d, align 8
  br label %_ZN4jiff6shared5posix6Parser32parse_posix_julian_day_with_leap17hb476387712a927f4E.exit.i

_ZN4jiff6shared5posix6Parser32parse_posix_julian_day_with_leap17hb476387712a927f4E.exit.i: ; preds = %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.i.2.i85.i, %_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i.2.i83.i, %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.i.1.i81.i, %_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i.1.i75.i, %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.i.i73.i
  %.sroa.02.026.i.i78.i = phi i32 [ %i.cq, %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.i.2.i85.i ], [ %i.ci, %_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i.2.i83.i ], [ %i.ci, %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.i.1.i81.i ], [ %i.ca, %_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i.1.i75.i ], [ %i.ca, %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.i.i73.i ] ; 2 uses
  %or.cond1.i79.i = icmp samesign ult i32 %.sroa.02.026.i.i78.i, 366
  %i.cs = shl nuw nsw i32 %.sroa.02.026.i.i78.i, 16
  %spec.select.i80.i = select i1 %or.cond1.i79.i, i32 %i.cs, i32 1025 ; 4 uses
  %i.ct = trunc i32 %spec.select.i80.i to i1
  br i1 %i.ct, label %_ZN4jiff6shared5posix6Parser32parse_posix_julian_day_with_leap17hb476387712a927f4E.exit.thread.i, label %bb.l

_ZN4jiff6shared5posix6Parser32parse_posix_julian_day_with_leap17hb476387712a927f4E.exit.thread.i: ; preds = %_ZN4jiff6shared5posix6Parser32parse_posix_julian_day_with_leap17hb476387712a927f4E.exit.i
  %.sroa.048.0.insert.insert.i = or i32 %spec.select.i80.i, 9
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.524.i)
  br label %bb.m

bb.l:                                             ; preds = %_ZN4jiff6shared5posix6Parser32parse_posix_julian_day_with_leap17hb476387712a927f4E.exit.i
  %.sroa.564.0.extract.shift.i = lshr i32 %spec.select.i80.i, 16
  %.sroa.564.0.extract.trunc.i = trunc nuw nsw i32 %.sroa.564.0.extract.shift.i to i16
  %.sroa.524.i.1.i.1.i.1..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.524.i, i64 1
  store i16 %.sroa.564.0.extract.trunc.i, ptr %.sroa.524.i.1.i.1.i.1..sroa_idx, align 1
  %.sroa.524.i.0..sroa.524.i.0..sroa.524.i.0..sroa.524.0..sroa.524.0..sroa.524.0..sroa.524.1..sroa.10.0.copyload6.i = load i16, ptr %.sroa.524.i, align 2
  %i.cu = and i32 %spec.select.i80.i, 2130706432
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.524.i)
  br label %bb.n

bb.m:                                             ; preds = %_ZN4jiff6shared5posix6Parser32parse_posix_julian_day_with_leap17hb476387712a927f4E.exit.thread.i, %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit66.i, %_ZN4jiff6shared5posix6Parser30parse_posix_julian_day_no_leap17h0a9aa93a5b989972E.exit.thread.i, %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.i, %bb.c, %bb.k, %bb.i, %bb.h, %bb.g, %_ZN4jiff6shared5posix6Parser10parse_week17hbe6f7f50f4ae6464E.exit.i.i, %_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i.i36.i.i, %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.i.i, %bb.f, %bb.e, %_ZN4jiff6shared5posix6Parser11parse_month17he6c7a5dcb767eb68E.exit.i.i, %_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i.i.i.i
  %.sroa.10.0.i.ph = phi i32 [ 4, %_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i.i.i.i ], [ 1028, %_ZN4jiff6shared5posix6Parser11parse_month17he6c7a5dcb767eb68E.exit.i.i ], [ 1, %bb.e ], [ 1, %bb.f ], [ 3, %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.i.i ], [ 517, %_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i.i36.i.i ], [ 1029, %_ZN4jiff6shared5posix6Parser10parse_week17hbe6f7f50f4ae6464E.exit.i.i ], [ 2, %bb.g ], [ 2, %bb.h ], [ 0, %bb.i ], [ %i.bv, %bb.k ], [ 11, %bb.c ], [ 7, %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.i ], [ %.sroa.046.0.insert.insert.i, %_ZN4jiff6shared5posix6Parser30parse_posix_julian_day_no_leap17h0a9aa93a5b989972E.exit.thread.i ], [ 8, %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit66.i ], [ %.sroa.048.0.insert.insert.i, %_ZN4jiff6shared5posix6Parser32parse_posix_julian_day_with_leap17hb476387712a927f4E.exit.thread.i ]
  %.sroa.10.0.insert.ext.i139 = shl i32 %.sroa.10.0.i.ph, 8
  %.sroa.10.0.insert.shift.i140 = and i32 %.sroa.10.0.insert.ext.i139, 16776960
  %.sroa.455.0.insert.shift = zext nneg i32 %.sroa.10.0.insert.shift.i140 to i64
  br label %bb.ak

bb.n:                                             ; preds = %bb.l, %_ZN4jiff6shared5posix6Parser22parse_weekday_of_month17he33117e46243b5ebE.exit.i, %bb.d
  %.sroa.16.0.i = phi i32 [ %i.bx, %_ZN4jiff6shared5posix6Parser22parse_weekday_of_month17he33117e46243b5ebE.exit.i ], [ %i.cu, %bb.l ], [ %i.an, %bb.d ]
  %.sroa.10.0.i = phi i16 [ %.sroa.442.2.insert.insert.i, %_ZN4jiff6shared5posix6Parser22parse_weekday_of_month17he33117e46243b5ebE.exit.i ], [ %.sroa.524.i.0..sroa.524.i.0..sroa.524.i.0..sroa.524.0..sroa.524.0..sroa.524.0..sroa.524.1..sroa.10.0.copyload6.i, %bb.l ], [ %.sroa.5.i.0..sroa.5.i.0..sroa.5.i.0..sroa.5.0..sroa.5.0..sroa.5.0..sroa.5.1..sroa.10.0.copyload.i, %bb.d ]
  %.sroa.0.0.i = phi i32 [ 2, %_ZN4jiff6shared5posix6Parser22parse_weekday_of_month17he33117e46243b5ebE.exit.i ], [ 1, %bb.l ], [ 0, %bb.d ]
  %.sroa.10.0.insert.ext.i = zext i16 %.sroa.10.0.i to i32
  %.sroa.10.0.insert.shift.i = shl nuw nsw i32 %.sroa.10.0.insert.ext.i, 8
  %.sroa.10.0.insert.insert.i = or disjoint i32 %.sroa.10.0.insert.shift.i, %.sroa.16.0.i ; 3 uses
  %.sroa.0.0.insert.insert.i = or disjoint i32 %.sroa.10.0.insert.insert.i, %.sroa.0.0.i ; 2 uses
  %i.cv = load i64, ptr %i.f, align 8, !noundef !11 ; 23 uses
  %i.cw = load i64, ptr %i.d, align 8, !noundef !11 ; 7 uses
  %i.cx = icmp ult i64 %i.cw, %i.cv
  br i1 %i.cx, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.cy = load ptr, ptr %0, align 8, !nonnull !11, !align !13, !noundef !11 ; 11 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.cw
  %i.da = load i8, ptr %i.cz, align 1, !noundef !11
  %.not = icmp eq i8 %i.da, 47
  br i1 %.not, label %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit, label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %.sroa.033.1.extract.shift = lshr exact i32 %.sroa.10.0.insert.insert.i, 8
  %.sroa.033.1.extract.trunc = zext nneg i32 %.sroa.033.1.extract.shift to i64
  br label %bb.ak

_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit: ; preds = %bb.o
  %i.db = add nuw i64 %i.cw, 1                    ; 10 uses
  store i64 %i.db, ptr %i.d, align 8
  %.not94 = icmp eq i64 %i.db, %i.cv
  br i1 %.not94, label %bb.ak, label %bb.q

bb.q:                                             ; preds = %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dd = load i8, ptr %i.dc, align 8, !range !21, !noundef !11
  %i.de = trunc nuw i8 %i.dd to i1
  br i1 %i.de, label %bb.u, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.df = tail call i64 @llvm.usub.sat.i64(i64 %i.cv, i64 %i.db)
  %exitcond.not.i.not.i.i68 = icmp ugt i64 %i.cv, %i.db
  br i1 %exitcond.not.i.not.i.i68, label %_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i.i.i70, label %bb.s

bb.s:                                             ; preds = %bb.t, %bb.r
  %.lcssa34.i.i69 = phi i64 [ %i.db, %bb.r ], [ %i.dj, %bb.t ]
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.lcssa34.i.i69, i64 noundef %i.cv, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @437) #45
  unreachable

_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i.i.i70: ; preds = %bb.r
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.db
  %i.dh = load i8, ptr %i.dg, align 1, !noundef !11
  %i.di = add i8 %i.dh, -48                       ; 4 uses
  %or.cond.i.i.i71 = icmp ult i8 %i.di, 10
  br i1 %or.cond.i.i.i71, label %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.i.i.i73, label %bb.ak

_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.i.i.i73: ; preds = %_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i.i.i70
  %i.dj = add nuw i64 %i.cw, 2                    ; 5 uses
  store i64 %i.dj, ptr %i.d, align 8
  %i.dk = icmp eq i64 %i.dj, %i.cv
  br i1 %i.dk, label %_ZN4jiff6shared5posix6Parser16parse_hour_posix17hc1cc1e87f8852be1E.exit.thread100.i, label %bb.t

bb.t:                                             ; preds = %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.i.i.i73
  %exitcond.not.i.1.i.i74 = icmp eq i64 %i.df, 1
  br i1 %exitcond.not.i.1.i.i74, label %bb.s, label %_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i.1.i.i75

_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i.1.i.i75: ; preds = %bb.t
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.dj
  %i.dm = load i8, ptr %i.dl, align 1, !noundef !11
  %i.dn = add i8 %i.dm, -48                       ; 2 uses
  %or.cond.i.1.i.i76 = icmp ult i8 %i.dn, 10
  br i1 %or.cond.i.1.i.i76, label %_ZN4jiff6shared5posix6Parser16parse_hour_posix17hc1cc1e87f8852be1E.exit.i, label %_ZN4jiff6shared5posix6Parser16parse_hour_posix17hc1cc1e87f8852be1E.exit.thread100.i

_ZN4jiff6shared5posix6Parser16parse_hour_posix17hc1cc1e87f8852be1E.exit.i: ; preds = %_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i.1.i.i75
  %i.do = mul nuw nsw i8 %i.di, 10
  %i.dp = add nuw nsw i8 %i.dn, %i.do             ; 2 uses
  %i.dq = add nuw i64 %i.cw, 3                    ; 2 uses
  store i64 %i.dq, ptr %i.d, align 8
  %or.cond1.i.i79 = icmp samesign ugt i8 %i.dp, 24
  br i1 %or.cond1.i.i79, label %bb.ak, label %_ZN4jiff6shared5posix6Parser16parse_hour_posix17hc1cc1e87f8852be1E.exit.thread100.i

bb.u:                                             ; preds = %bb.q
  %i.dr = icmp ult i64 %i.db, %i.cv
  br i1 %i.dr, label %_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.db, i64 noundef %i.cv, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @437) #45
  unreachable

_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i.i: ; preds = %bb.u
  %i.ds = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.db
  %i.dt = load i8, ptr %i.ds, align 1, !noundef !11
  switch i8 %i.dt, label %bb.x [
    i8 45, label %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.i.i93
    i8 43, label %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit5.i.i
  ]

_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.i.i93: ; preds = %_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i.i
  %i.du = add nuw i64 %i.cw, 2                    ; 3 uses
  store i64 %i.du, ptr %i.d, align 8
  %.not6.i.i = icmp eq i64 %i.du, %i.cv
  br i1 %.not6.i.i, label %bb.ak, label %bb.x

_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit5.i.i: ; preds = %_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i.i
  %i.dv = add nuw i64 %i.cw, 2                    ; 3 uses
  store i64 %i.dv, ptr %i.d, align 8
  %.not.i.i80 = icmp eq i64 %i.dv, %i.cv
  br i1 %.not.i.i80, label %bb.ak, label %bb.x

_ZN4jiff6shared5posix6Parser16parse_hour_posix17hc1cc1e87f8852be1E.exit.thread100.i: ; preds = %_ZN4jiff6shared5posix6Parser16parse_hour_posix17hc1cc1e87f8852be1E.exit.i, %_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i.1.i.i75, %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.i.i.i73
  %i.dw = phi i64 [ %i.dq, %_ZN4jiff6shared5posix6Parser16parse_hour_posix17hc1cc1e87f8852be1E.exit.i ], [ %i.cv, %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.i.i.i73 ], [ %i.dj, %_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i.1.i.i75 ]
  %..i104.i = phi i8 [ %i.dp, %_ZN4jiff6shared5posix6Parser16parse_hour_posix17hc1cc1e87f8852be1E.exit.i ], [ %i.di, %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.i.i.i73 ], [ %i.di, %_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i.1.i.i75 ]
  %i.dx = zext nneg i8 %..i104.i to i32
  br label %bb.w

bb.w:                                             ; preds = %_ZN4jiff6shared5posix6Parser21parse_hour_ianav3plus17h582678356e8dfeebE.exit.i, %_ZN4jiff6shared5posix6Parser16parse_hour_posix17hc1cc1e87f8852be1E.exit.thread100.i
  %i.dy = phi i64 [ %i.dw, %_ZN4jiff6shared5posix6Parser16parse_hour_posix17hc1cc1e87f8852be1E.exit.thread100.i ], [ %i.ex, %_ZN4jiff6shared5posix6Parser21parse_hour_ianav3plus17h582678356e8dfeebE.exit.i ] ; 5 uses
  %.sroa.057.0.i = phi i32 [ 1, %_ZN4jiff6shared5posix6Parser16parse_hour_posix17hc1cc1e87f8852be1E.exit.thread100.i ], [ %.sroa.0.1.i.ph.i, %_ZN4jiff6shared5posix6Parser21parse_hour_ianav3plus17h582678356e8dfeebE.exit.i ]
  %.sroa.058.0.i = phi i32 [ %i.dx, %_ZN4jiff6shared5posix6Parser16parse_hour_posix17hc1cc1e87f8852be1E.exit.thread100.i ], [ %.sroa.563.0.extract.shift.i, %_ZN4jiff6shared5posix6Parser21parse_hour_ianav3plus17h582678356e8dfeebE.exit.i ]
  %i.dz = icmp ult i64 %i.dy, %i.cv
  br i1 %i.dz, label %bb.ac, label %.critedge.i

bb.x:                                             ; preds = %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit5.i.i, %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.i.i93, %_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i.i
  %.promoted.i.i68.ph.i = phi i64 [ %i.du, %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.i.i93 ], [ %i.dv, %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit5.i.i ], [ %i.db, %_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i.i ] ; 8 uses
  %.sroa.0.1.i.ph.i = phi i32 [ -1, %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.i.i93 ], [ 1, %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit5.i.i ], [ 1, %_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i.i ]
  %i.ea = tail call i64 @llvm.usub.sat.i64(i64 %i.cv, i64 %.promoted.i.i68.ph.i) ; 2 uses
  %i.eb = icmp eq i64 %.promoted.i.i68.ph.i, %i.cv
  br i1 %i.eb, label %.sink.split, label %bb.y

bb.y:                                             ; preds = %bb.x
  %exitcond.not.i.not.i69.i = icmp ugt i64 %i.cv, %.promoted.i.i68.ph.i
  br i1 %exitcond.not.i.not.i69.i, label %_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i.i71.i, label %bb.z

bb.z:                                             ; preds = %bb.ab, %bb.aa, %bb.y
  %.lcssa34.i70.i = phi i64 [ %.promoted.i.i68.ph.i, %bb.y ], [ %i.eg, %bb.aa ], [ %i.eo, %bb.ab ]
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.lcssa34.i70.i, i64 noundef %i.cv, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @437) #45
  unreachable

_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i.i71.i: ; preds = %bb.y
  %i.ec = getelementptr inbounds nuw i8, ptr %i.cy, i64 %.promoted.i.i68.ph.i
  %i.ed = load i8, ptr %i.ec, align 1, !noundef !11
  %i.ee = add i8 %i.ed, -48                       ; 2 uses
  %or.cond.i.i72.i = icmp ult i8 %i.ee, 10
  br i1 %or.cond.i.i72.i, label %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.i.i73.i81, label %.sink.split

_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.i.i73.i81: ; preds = %_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i.i71.i
  %i.ef = zext nneg i8 %i.ee to i32               ; 3 uses
  %i.eg = add nuw i64 %.promoted.i.i68.ph.i, 1    ; 5 uses
  store i64 %i.eg, ptr %i.d, align 8
  %i.eh = icmp eq i64 %i.eg, %i.cv
  br i1 %i.eh, label %_ZN4jiff6shared5posix6Parser21parse_hour_ianav3plus17h582678356e8dfeebE.exit.i, label %bb.aa

bb.aa:                                            ; preds = %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.i.i73.i81
  %exitcond.not.i.1.i74.i82 = icmp eq i64 %i.ea, 1
  br i1 %exitcond.not.i.1.i74.i82, label %bb.z, label %_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i.1.i75.i83

_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i.1.i75.i83: ; preds = %bb.aa
  %i.ei = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.eg
  %i.ej = load i8, ptr %i.ei, align 1, !noundef !11
  %i.ek = add i8 %i.ej, -48                       ; 2 uses
  %or.cond.i.1.i76.i84 = icmp ult i8 %i.ek, 10
  br i1 %or.cond.i.1.i76.i84, label %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.i.1.i81.i88, label %_ZN4jiff6shared5posix6Parser21parse_hour_ianav3plus17h582678356e8dfeebE.exit.i

_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.i.1.i81.i88: ; preds = %_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i.1.i75.i83
  %i.el = mul nuw nsw i32 %i.ef, 10
  %i.em = zext nneg i8 %i.ek to i32
  %i.en = add nuw nsw i32 %i.el, %i.em            ; 3 uses
  %i.eo = add nuw i64 %.promoted.i.i68.ph.i, 2    ; 5 uses
  store i64 %i.eo, ptr %i.d, align 8
  %i.ep = icmp eq i64 %i.eo, %i.cv
  br i1 %i.ep, label %_ZN4jiff6shared5posix6Parser21parse_hour_ianav3plus17h582678356e8dfeebE.exit.i, label %bb.ab

bb.ab:                                            ; preds = %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.i.1.i81.i88
  %exitcond.not.i.2.i.i89 = icmp eq i64 %i.ea, 2
  br i1 %exitcond.not.i.2.i.i89, label %bb.z, label %_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i.2.i.i90

_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i.2.i.i90: ; preds = %bb.ab
  %i.eq = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.eo
  %i.er = load i8, ptr %i.eq, align 1, !noundef !11
  %i.es = add i8 %i.er, -48                       ; 2 uses
  %or.cond.i.2.i.i91 = icmp ult i8 %i.es, 10
  br i1 %or.cond.i.2.i.i91, label %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.i.2.i.i92, label %_ZN4jiff6shared5posix6Parser21parse_hour_ianav3plus17h582678356e8dfeebE.exit.i

_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.i.2.i.i92: ; preds = %_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i.2.i.i90
  %i.et = mul nuw nsw i32 %i.en, 10
  %i.eu = zext nneg i8 %i.es to i32
  %i.ev = add nuw nsw i32 %i.et, %i.eu
  %i.ew = add nuw i64 %.promoted.i.i68.ph.i, 3    ; 2 uses
  store i64 %i.ew, ptr %i.d, align 8
  br label %_ZN4jiff6shared5posix6Parser21parse_hour_ianav3plus17h582678356e8dfeebE.exit.i

_ZN4jiff6shared5posix6Parser21parse_hour_ianav3plus17h582678356e8dfeebE.exit.i: ; preds = %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.i.2.i.i92, %_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i.2.i.i90, %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.i.1.i81.i88, %_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i.1.i75.i83, %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.i.i73.i81
  %i.ex = phi i64 [ %i.ew, %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.i.2.i.i92 ], [ %i.eo, %_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i.2.i.i90 ], [ %i.cv, %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.i.1.i81.i88 ], [ %i.eg, %_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i.1.i75.i83 ], [ %i.cv, %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.i.i73.i81 ]
  %.sroa.02.026.i.i78.i85 = phi i32 [ %i.ev, %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.i.2.i.i92 ], [ %i.en, %_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i.2.i.i90 ], [ %i.en, %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.i.1.i81.i88 ], [ %i.ef, %_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i.1.i75.i83 ], [ %i.ef, %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.i.i73.i81 ] ; 2 uses
  %or.cond1.i79.i86 = icmp samesign ult i32 %.sroa.02.026.i.i78.i85, 168
  %i.ey = shl nuw nsw i32 %.sroa.02.026.i.i78.i85, 16
  %spec.select.i80.i87 = select i1 %or.cond1.i79.i86, i32 %i.ey, i32 1025 ; 3 uses
  %.sroa.462.0.extract.shift.i = lshr i32 %spec.select.i80.i87, 8
  %.sroa.462.0.extract.trunc.i = trunc i32 %.sroa.462.0.extract.shift.i to i8
  %.sroa.563.0.extract.shift.i = lshr i32 %spec.select.i80.i87, 16
  %i.ez = trunc i32 %spec.select.i80.i87 to i1
  br i1 %i.ez, label %.sink.split, label %bb.w

bb.ac:                                            ; preds = %bb.w
  %i.fa = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.dy
  %i.fb = load i8, ptr %i.fa, align 1, !noundef !11
  %i.fc = icmp eq i8 %i.fb, 58
  br i1 %i.fc, label %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.i77, label %.critedge.i

_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.i77: ; preds = %bb.ac
  %i.fd = add nuw i64 %i.dy, 1                    ; 3 uses
  store i64 %i.fd, ptr %i.d, align 8
  %.not.i78 = icmp eq i64 %i.fd, %i.cv
  br i1 %.not.i78, label %bb.ak, label %_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i.i85.i

.critedge.i:                                      ; preds = %bb.ah, %bb.ae, %bb.ad, %bb.ac, %bb.w
  %.sroa.030.0.i = phi i32 [ %i.gg, %bb.ah ], [ 0, %bb.ac ], [ 0, %bb.ae ], [ 0, %bb.w ], [ 0, %bb.ad ]
  %.sroa.029.0.i = phi i32 [ %i.fw, %bb.ah ], [ 0, %bb.ac ], [ %i.fw, %bb.ae ], [ 0, %bb.w ], [ %i.fw, %bb.ad ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.fe = mul nuw nsw i32 %.sroa.058.0.i, 3600
  %i.ff = mul nuw nsw i32 %.sroa.029.0.i, 60
  %i.fg = add nuw nsw i32 %.sroa.030.0.i, %i.fe
  %i.fh = add nuw nsw i32 %i.fg, %i.ff
  %i.fi = mul nsw i32 %i.fh, %.sroa.057.0.i       ; 3 uses
  store i32 %i.fi, ptr %i.c, align 4
  %i.fj = add nsw i32 %i.fi, 604799
  %or.cond7.i = icmp ult i32 %i.fj, 1209599
  br i1 %or.cond7.i, label %bb.aj, label %bb.ai, !prof !20

_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i.i85.i: ; preds = %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.i77
  %i.fk = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.fd
  %i.fl = load i8, ptr %i.fk, align 1, !noundef !11 ; 2 uses
  %i.fm = add i8 %i.fl, -58
  %or.cond.i.i86.i = icmp ult i8 %i.fm, -10
  br i1 %or.cond.i.i86.i, label %bb.ak, label %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.i.i87.i

_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.i.i87.i: ; preds = %_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i.i85.i
  %i.fn = add nuw i64 %i.dy, 2                    ; 3 uses
  store i64 %i.fn, ptr %i.d, align 8
  %i.fo = icmp eq i64 %i.fn, %i.cv
  br i1 %i.fo, label %bb.ak, label %_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i.1.i89.i

_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i.1.i89.i: ; preds = %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.i.i87.i
  %i.fp = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.fn
  %i.fq = load i8, ptr %i.fp, align 1, !noundef !11 ; 2 uses
  %i.fr = add i8 %i.fq, -58
  %or.cond.i.1.i90.i = icmp ult i8 %i.fr, -10
  br i1 %or.cond.i.1.i90.i, label %bb.ak, label %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.i.1.i91.i

_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.i.1.i91.i: ; preds = %_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i.1.i89.i
  %i.fs = add nsw i8 %i.fq, -48
  %i.ft = mul i8 %i.fl, 10
  %narrow.i.i = add nsw i8 %i.ft, 32
  %i.fu = zext nneg i8 %narrow.i.i to i32
  %i.fv = zext nneg i8 %i.fs to i32
  %i.fw = add nuw nsw i32 %i.fv, %i.fu            ; 4 uses
  %i.fx = add nuw i64 %i.dy, 3                    ; 3 uses
  store i64 %i.fx, ptr %i.d, align 8
  %or.cond1.i92.i = icmp samesign ugt i32 %i.fw, 59
  br i1 %or.cond1.i92.i, label %bb.ak, label %bb.ad

bb.ad:                                            ; preds = %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.i.1.i91.i
  %i.fy = icmp ult i64 %i.fx, %i.cv
  br i1 %i.fy, label %bb.ae, label %.critedge.i

bb.ae:                                            ; preds = %bb.ad
  %i.fz = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.fx
  %i.ga = load i8, ptr %i.fz, align 1, !noundef !11
  %i.gb = icmp eq i8 %i.ga, 58
  br i1 %i.gb, label %bb.af, label %.critedge.i

bb.af:                                            ; preds = %bb.ae
  %i.gc = tail call fastcc noundef zeroext i1 @_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE(ptr noundef nonnull align 8 %0)
  br i1 %i.gc, label %bb.ag, label %bb.ak

bb.ag:                                            ; preds = %bb.af
  %i.gd = tail call fastcc { i1, i8 } @_ZN4jiff6shared5posix6Parser12parse_second17he88d282efb96f9b0E(ptr noundef nonnull align 8 %0) ; 2 uses
  %i.ge = extractvalue { i1, i8 } %i.gd, 0
  %i.gf = extractvalue { i1, i8 } %i.gd, 1        ; 2 uses
  br i1 %i.ge, label %.sink.split, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.gg = zext nneg i8 %i.gf to i32
  br label %.critedge.i

bb.ai:                                            ; preds = %.critedge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8
  %.sroa.456.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h1d34aa19ad65fef9E", ptr %.sroa.456.0..sroa_idx.i, align 8
  store ptr @426, ptr %i.b, align 8
  %i.gh = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 2, ptr %i.gh, align 8
  %i.gi = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.gi, align 8
  %i.gj = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.a, ptr %i.gj, align 8
  %i.gk = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 1, ptr %i.gk, align 8
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @427) #45
  unreachable

.sink.split:                                      ; preds = %bb.ag, %bb.x, %_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i.i71.i, %_ZN4jiff6shared5posix6Parser21parse_hour_ianav3plus17h582678356e8dfeebE.exit.i
  %.sink150 = phi i8 [ 0, %_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i.i71.i ], [ %.sroa.462.0.extract.trunc.i, %_ZN4jiff6shared5posix6Parser21parse_hour_ianav3plus17h582678356e8dfeebE.exit.i ], [ 0, %bb.x ], [ %i.gf, %bb.ag ] ; 2 uses
  %.sroa.9.2.i.ph.ph = phi i64 [ 0, %_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i.i71.i ], [ 0, %_ZN4jiff6shared5posix6Parser21parse_hour_ianav3plus17h582678356e8dfeebE.exit.i ], [ 0, %bb.x ], [ 1536, %bb.ag ]
  %i.gl = icmp ult i8 %.sink150, 5
  tail call void @llvm.assume(i1 %i.gl)
  %i.gm = zext nneg i8 %.sink150 to i64
  %i.gn = shl nuw nsw i64 %i.gm, 16
  %i.go = or disjoint i64 %i.gn, %.sroa.9.2.i.ph.ph
  %i.gp = or disjoint i64 %i.go, 2
  br label %bb.ak

bb.aj:                                            ; preds = %.critedge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.gq = zext i32 %i.fi to i64
  %i.gr = shl nuw i64 %i.gq, 32
  %.sroa.046.1.extract.shift = lshr exact i32 %.sroa.10.0.insert.insert.i, 8
  %.sroa.046.1.extract.trunc = zext nneg i32 %.sroa.046.1.extract.shift to i64
  br label %bb.ak

bb.ak:                                            ; preds = %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit5.i.i, %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.i.i87.i, %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.i.1.i91.i, %_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i.i85.i, %_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i.i.i70, %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.i.i93, %_ZN4jiff6shared5posix6Parser16parse_hour_posix17hc1cc1e87f8852be1E.exit.i, %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.i77, %bb.af, %_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i.1.i89.i, %.sink.split, %bb.m, %bb.p, %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit, %bb.aj
  %.sroa.6.sroa.0.1 = phi i64 [ %.sroa.046.1.extract.trunc, %bb.aj ], [ %.sroa.455.0.insert.shift, %bb.m ], [ %.sroa.033.1.extract.trunc, %bb.p ], [ 1, %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit ], [ 66818, %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit5.i.i ], [ 66562, %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.i.i87.i ], [ 263170, %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.i.1.i91.i ], [ 132098, %_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i.i85.i ], [ 258, %_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i.i.i70 ], [ 1282, %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.i.i93 ], [ 770, %bb.af ], [ 132098, %_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i.1.i89.i ], [ 262402, %_ZN4jiff6shared5posix6Parser16parse_hour_posix17hc1cc1e87f8852be1E.exit.i ], [ 514, %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.i77 ], [ %i.gp, %.sink.split ]
  %.sroa.9.1 = phi i64 [ %i.gr, %bb.aj ], [ 30923764531200, %bb.m ], [ 30923764531200, %bb.p ], [ 30923764531200, %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit ], [ 30923764531200, %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit5.i.i ], [ 30923764531200, %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.i.i87.i ], [ 30923764531200, %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.i.1.i91.i ], [ 30923764531200, %_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i.i85.i ], [ 30923764531200, %_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i.i.i70 ], [ 30923764531200, %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.i.i93 ], [ 30923764531200, %bb.af ], [ 30923764531200, %_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i.1.i89.i ], [ 30923764531200, %_ZN4jiff6shared5posix6Parser16parse_hour_posix17hc1cc1e87f8852be1E.exit.i ], [ 30923764531200, %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.i77 ], [ 30923764531200, %.sink.split ]
  %.sroa.0.1.shrunk = phi i32 [ %.sroa.0.0.insert.insert.i, %bb.aj ], [ 3, %bb.m ], [ %.sroa.0.0.insert.insert.i, %bb.p ], [ 3, %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit ], [ 3, %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit5.i.i ], [ 3, %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.i.i87.i ], [ 3, %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.i.1.i91.i ], [ 3, %_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i.i85.i ], [ 3, %_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i.i.i70 ], [ 3, %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.i.i93 ], [ 3, %bb.af ], [ 3, %_ZN4jiff6shared5posix6Parser4byte17hf1ea23c9fb732a42E.exit.i.1.i89.i ], [ 3, %_ZN4jiff6shared5posix6Parser16parse_hour_posix17hc1cc1e87f8852be1E.exit.i ], [ 3, %_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE.exit.i77 ], [ 3, %.sink.split ]
  %.sroa.6.0.insert.ext = shl nuw nsw i64 %.sroa.6.sroa.0.1, 8
  %.sroa.6.0.insert.shift = and i64 %.sroa.6.0.insert.ext, 4294967040
  %.sroa.6.0.insert.insert = or disjoint i64 %.sroa.6.0.insert.shift, %.sroa.9.1
  %i.gs = and i32 %.sroa.0.1.shrunk, 255
  %.sroa.0.0.insert.ext = zext nneg i32 %i.gs to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.6.0.insert.insert, %.sroa.0.0.insert.ext
  ret i64 %.sroa.0.0.insert.insert
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_ZN4jiff6shared5posix6Parser4bump17h547dcb04cfe27edeE(ptr nofree noundef nonnull align 8 captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !11 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !noundef !11 ; 2 uses
  %i.e = icmp eq i64 %i.b, %i.d
  br i1 %i.e, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq i64 %i.b, -1
  br i1 %i.f, label %bb.d, label %bb.c, !prof !23

bb.c:                                             ; preds = %bb.b
  %i.g = add nuw i64 %i.b, 1                      ; 2 uses
  store i64 %i.g, ptr %i.a, align 8
  %i.h = icmp ne i64 %i.g, %i.d
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @435, i64 noundef 25, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @436) #45
  unreachable

bb.e:                                             ; preds = %bb.a, %bb.c
  %.sroa.0.0 = phi i1 [ %i.h, %bb.c ], [ false, %bb.a ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN4jiff6shared5posix71_$LT$impl$u20$core..fmt..Display$u20$for$u20$jiff..shared..PosixDay$GT$3fmt17h3065ba61be6dccd8E"(ptr noalias noundef readonly align 2 captures(none) dereferenceable(4) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 5 uses
  %i.b = alloca [1 x i8], align 1                 ; 5 uses
  %i.c = alloca [1 x i8], align 1                 ; 5 uses
  %i.d = alloca [2 x i8], align 2                 ; 4 uses
  %i.e = alloca [2 x i8], align 2                 ; 5 uses
  %i.f = load i8, ptr %0, align 2, !range !22, !noundef !11
  switch i8 %i.f, label %default.unreachable1 [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.h = load i16, ptr %i.g, align 2, !noundef !11
  store i16 %i.h, ptr %i.e, align 2
  %i.i = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @439, i64 noundef 1)
  br i1 %i.i, label %bb.e, label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.k = load i16, ptr %i.j, align 2, !noundef !11
  store i16 %i.k, ptr %i.d, align 2
  %i.l = call noundef zeroext i1 @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i16$GT$3fmt17h5e7056a81f88a921E"(ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(2) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.n = load i8, ptr %i.m, align 1, !noundef !11
  store i8 %i.n, ptr %i.c, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.p = load i8, ptr %i.o, align 2, !noundef !11
  store i8 %i.p, ptr %i.b, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.r = load i8, ptr %i.q, align 1, !noundef !11
  store i8 %i.r, ptr %i.a, align 1
  %i.s = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @440, i64 noundef 1)
  br i1 %i.s, label %bb.n, label %bb.h

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  %i.t = call noundef zeroext i1 @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i16$GT$3fmt17h5e7056a81f88a921E"(ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(2) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.g

bb.g:                                             ; preds = %bb.n, %bb.m, %bb.f, %bb.e, %bb.c
  %.sroa.0.0.shrunk = phi i1 [ true, %bb.e ], [ %i.t, %bb.f ], [ %i.l, %bb.c ], [ true, %bb.n ], [ false, %bb.m ]
  ret i1 %.sroa.0.0.shrunk

bb.h:                                             ; preds = %bb.d
  %i.u = call noundef zeroext i1 @"_ZN4core3fmt3num3imp51_$LT$impl$u20$core..fmt..Display$u20$for$u20$i8$GT$3fmt17he2687835eaec75b0E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(1) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br i1 %i.u, label %bb.n, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @235, i64 noundef 1)
  br i1 %i.v, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.w = call noundef zeroext i1 @"_ZN4core3fmt3num3imp51_$LT$impl$u20$core..fmt..Display$u20$for$u20$i8$GT$3fmt17he2687835eaec75b0E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(1) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br i1 %i.w, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.x = call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @235, i64 noundef 1)
  br i1 %i.x, label %bb.n, label %bb.l
end_hunk_2
