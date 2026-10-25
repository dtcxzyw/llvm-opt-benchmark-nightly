Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/jiff-f40901a2f6e9bfc0.jiff.f9bb746de12701cf-cgu.0?download=true
inline.NumInlined: 4054
inline.NumDeleted: 1353
loop-unroll.NumCompletelyUnrolled: 58
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 73
begin_hunk_0_@_ZN4jiff3fmt7strtime5parse6Parser5parse17h6bc5192b3a5cd326E:bb.a
  %.sroa.04.0.i.i.11.3.i = or i8 %i.aez, %i.aew
  %i.afa = icmp eq i8 %.sroa.04.0.i.i.11.3.i, 101
  br i1 %i.afa, label %.preheader.i.i.11.4.i, label %"_ZN92_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$jiff..error..ErrorContext$LT$T$C$E$GT$$GT$7context17h3413f8e230dbeb3eE.exit610.thread"

.preheader.i.i.11.4.i:                            ; preds = %.preheader.i.i.11.3.i
  %i.afb = getelementptr inbounds nuw i8, ptr %i.sl, i64 4
  %i.afc = load i8, ptr %i.afb, align 1, !alias.scope !3745, !noalias !3733, !noundef !11 ; 2 uses
  %i.afd = add i8 %i.afc, -65
  %i.afe = icmp ult i8 %i.afd, 26
  %i.aff = select i1 %i.afe, i8 32, i8 0
  %.sroa.04.0.i.i.11.4.i = or i8 %i.aff, %i.afc
  %i.afg = icmp eq i8 %.sroa.04.0.i.i.11.4.i, 109
  br i1 %i.afg, label %.preheader.i.i.11.5.i, label %"_ZN92_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$jiff..error..ErrorContext$LT$T$C$E$GT$$GT$7context17h3413f8e230dbeb3eE.exit610.thread"

.preheader.i.i.11.5.i:                            ; preds = %.preheader.i.i.11.4.i
  %i.afh = getelementptr inbounds nuw i8, ptr %i.sl, i64 5
  %i.afi = load i8, ptr %i.afh, align 1, !alias.scope !3745, !noalias !3733, !noundef !11 ; 2 uses
  %i.afj = add i8 %i.afi, -65
  %i.afk = icmp ult i8 %i.afj, 26
  %i.afl = select i1 %i.afk, i8 32, i8 0
  %.sroa.04.0.i.i.11.5.i = or i8 %i.afl, %i.afi
  %i.afm = icmp eq i8 %.sroa.04.0.i.i.11.5.i, 98
  br i1 %i.afm, label %.preheader.i.i.11.6.i, label %"_ZN92_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$jiff..error..ErrorContext$LT$T$C$E$GT$$GT$7context17h3413f8e230dbeb3eE.exit610.thread"

.preheader.i.i.11.6.i:                            ; preds = %.preheader.i.i.11.5.i
  %i.afn = getelementptr inbounds nuw i8, ptr %i.sl, i64 6
  %i.afo = load i8, ptr %i.afn, align 1, !alias.scope !3745, !noalias !3733, !noundef !11 ; 2 uses
  %i.afp = add i8 %i.afo, -65
  %i.afq = icmp ult i8 %i.afp, 26
  %i.afr = select i1 %i.afq, i8 32, i8 0
  %.sroa.04.0.i.i.11.6.i = or i8 %i.afr, %i.afo
  %i.afs = icmp eq i8 %.sroa.04.0.i.i.11.6.i, 101
  br i1 %i.afs, label %.preheader.i.i.11.7.i, label %"_ZN92_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$jiff..error..ErrorContext$LT$T$C$E$GT$$GT$7context17h3413f8e230dbeb3eE.exit610.thread"

.preheader.i.i.11.7.i:                            ; preds = %.preheader.i.i.11.6.i
  %i.aft = getelementptr inbounds nuw i8, ptr %i.sl, i64 7
  %i.afu = load i8, ptr %i.aft, align 1, !alias.scope !3745, !noalias !3733, !noundef !11 ; 2 uses
  %i.afv = add i8 %i.afu, -65
  %i.afw = icmp ult i8 %i.afv, 26
  %i.afx = select i1 %i.afw, i8 32, i8 0
  %.sroa.04.0.i.i.11.7.i = or i8 %i.afx, %i.afu
  %i.afy = icmp eq i8 %.sroa.04.0.i.i.11.7.i, 114
  br i1 %i.afy, label %"_ZN92_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$jiff..error..ErrorContext$LT$T$C$E$GT$$GT$7context17h3413f8e230dbeb3eE.exit610", label %"_ZN92_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$jiff..error..ErrorContext$LT$T$C$E$GT$$GT$7context17h3413f8e230dbeb3eE.exit610.thread"

.preheader.i.i.i532:                              ; preds = %bb.al
  %i.afz = load i8, ptr %i.sl, align 1, !alias.scope !3746, !noalias !3733, !noundef !11 ; 11 uses
  %i.aga = add i8 %i.afz, -65                     ; 10 uses
  %i.agb = icmp ult i8 %i.aga, 26
  %i.agc = select i1 %i.agb, i8 32, i8 0
  %.sroa.04.0.i.i.i533 = or i8 %i.agc, %i.afz     ; 2 uses
  %i.agd = icmp eq i8 %.sroa.04.0.i.i.i533, 106
  br i1 %i.agd, label %.preheader.i.i.151.i, label %"_ZN4core5slice5ascii30_$LT$impl$u20$$u5b$u8$u5d$$GT$20eq_ignore_ascii_case17h445ed52236d98af3E.exit.backedge.i.i"

.preheader.i.i.151.i:                             ; preds = %.preheader.i.i.i532
  %i.age = getelementptr inbounds nuw i8, ptr %i.sl, i64 1
  %i.agf = load i8, ptr %i.age, align 1, !alias.scope !3746, !noalias !3733, !noundef !11 ; 2 uses
  %i.agg = add i8 %i.agf, -65
  %i.agh = icmp ult i8 %i.agg, 26
  %i.agi = select i1 %i.agh, i8 32, i8 0
  %.sroa.04.0.i.i.152.i = or i8 %i.agi, %i.agf
  %i.agj = icmp eq i8 %.sroa.04.0.i.i.152.i, 97
  br i1 %i.agj, label %.preheader.i.i.253.i, label %"_ZN4core5slice5ascii30_$LT$impl$u20$$u5b$u8$u5d$$GT$20eq_ignore_ascii_case17h445ed52236d98af3E.exit.backedge.i.i"

.preheader.i.i.253.i:                             ; preds = %.preheader.i.i.151.i
  %i.agk = getelementptr inbounds nuw i8, ptr %i.sl, i64 2
  %i.agl = load i8, ptr %i.agk, align 1, !alias.scope !3746, !noalias !3733, !noundef !11 ; 2 uses
  %i.agm = add i8 %i.agl, -65
  %i.agn = icmp ult i8 %i.agm, 26
  %i.ago = select i1 %i.agn, i8 32, i8 0
  %.sroa.04.0.i.i.254.i = or i8 %i.ago, %i.agl
  %i.agp = icmp eq i8 %.sroa.04.0.i.i.254.i, 110
  br i1 %i.agp, label %.preheader.i.i.355.i, label %"_ZN4core5slice5ascii30_$LT$impl$u20$$u5b$u8$u5d$$GT$20eq_ignore_ascii_case17h445ed52236d98af3E.exit.backedge.i.i"

.preheader.i.i.355.i:                             ; preds = %.preheader.i.i.253.i
  %i.agq = getelementptr inbounds nuw i8, ptr %i.sl, i64 3
  %i.agr = load i8, ptr %i.agq, align 1, !alias.scope !3746, !noalias !3733, !noundef !11 ; 2 uses
  %i.ags = add i8 %i.agr, -65
  %i.agt = icmp ult i8 %i.ags, 26
  %i.agu = select i1 %i.agt, i8 32, i8 0
  %.sroa.04.0.i.i.356.i = or i8 %i.agu, %i.agr
  %i.agv = icmp eq i8 %.sroa.04.0.i.i.356.i, 117
  br i1 %i.agv, label %.preheader.i.i.457.i, label %"_ZN4core5slice5ascii30_$LT$impl$u20$$u5b$u8$u5d$$GT$20eq_ignore_ascii_case17h445ed52236d98af3E.exit.backedge.i.i"

.preheader.i.i.457.i:                             ; preds = %.preheader.i.i.355.i
  %i.agw = getelementptr inbounds nuw i8, ptr %i.sl, i64 4
  %i.agx = load i8, ptr %i.agw, align 1, !alias.scope !3746, !noalias !3733, !noundef !11 ; 2 uses
  %i.agy = add i8 %i.agx, -65
  %i.agz = icmp ult i8 %i.agy, 26
  %i.aha = select i1 %i.agz, i8 32, i8 0
  %.sroa.04.0.i.i.458.i = or i8 %i.aha, %i.agx
  %i.ahb = icmp eq i8 %.sroa.04.0.i.i.458.i, 97
  br i1 %i.ahb, label %.preheader.i.i.559.i, label %"_ZN4core5slice5ascii30_$LT$impl$u20$$u5b$u8$u5d$$GT$20eq_ignore_ascii_case17h445ed52236d98af3E.exit.backedge.i.i"

.preheader.i.i.559.i:                             ; preds = %.preheader.i.i.457.i
  %i.ahc = getelementptr inbounds nuw i8, ptr %i.sl, i64 5
  %i.ahd = load i8, ptr %i.ahc, align 1, !alias.scope !3746, !noalias !3733, !noundef !11 ; 2 uses
  %i.ahe = add i8 %i.ahd, -65
  %i.ahf = icmp ult i8 %i.ahe, 26
  %i.ahg = select i1 %i.ahf, i8 32, i8 0
  %.sroa.04.0.i.i.560.i = or i8 %i.ahg, %i.ahd
  %i.ahh = icmp eq i8 %.sroa.04.0.i.i.560.i, 114
  br i1 %i.ahh, label %.preheader.i.i.661.i, label %"_ZN4core5slice5ascii30_$LT$impl$u20$$u5b$u8$u5d$$GT$20eq_ignore_ascii_case17h445ed52236d98af3E.exit.backedge.i.i"

.preheader.i.i.661.i:                             ; preds = %.preheader.i.i.559.i
  %i.ahi = getelementptr inbounds nuw i8, ptr %i.sl, i64 6
  %i.ahj = load i8, ptr %i.ahi, align 1, !alias.scope !3746, !noalias !3733, !noundef !11 ; 2 uses
  %i.ahk = add i8 %i.ahj, -65
  %i.ahl = icmp ult i8 %i.ahk, 26
  %i.ahm = select i1 %i.ahl, i8 32, i8 0
  %.sroa.04.0.i.i.662.i = or i8 %i.ahm, %i.ahj
  %i.ahn = icmp eq i8 %.sroa.04.0.i.i.662.i, 121
  br i1 %i.ahn, label %"_ZN92_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$jiff..error..ErrorContext$LT$T$C$E$GT$$GT$7context17h3413f8e230dbeb3eE.exit610", label %"_ZN4core5slice5ascii30_$LT$impl$u20$$u5b$u8$u5d$$GT$20eq_ignore_ascii_case17h445ed52236d98af3E.exit.backedge.i.i"

"_ZN92_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$jiff..error..ErrorContext$LT$T$C$E$GT$$GT$7context17h3413f8e230dbeb3eE.exit610.thread": ; preds = %.preheader.i.i.10.i, %.preheader.i.i.11.7.i, %.preheader.i.i.11.6.i, %.preheader.i.i.11.5.i, %.preheader.i.i.11.4.i, %.preheader.i.i.11.3.i, %.preheader.i.i.11.2.i, %.preheader.i.i.11.1.i, %"_ZN4core5slice5ascii30_$LT$impl$u20$$u5b$u8$u5d$$GT$20eq_ignore_ascii_case17h445ed52236d98af3E.exit.backedge.i.9.i", %"_ZN4core5slice5ascii30_$LT$impl$u20$$u5b$u8$u5d$$GT$20eq_ignore_ascii_case17h445ed52236d98af3E.exit.backedge.i.8.thread66.i", %"_ZN4core5slice5ascii30_$LT$impl$u20$$u5b$u8$u5d$$GT$20eq_ignore_ascii_case17h445ed52236d98af3E.exit.backedge.i.3.i596", %.preheader.i.i.10.7.i, %.preheader.i.i.10.6.i, %.preheader.i.i.10.5.i, %.preheader.i.i.10.4.i, %.preheader.i.i.10.3.i, %.preheader.i.i.10.2.i, %.preheader.i.i.10.1.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp), !noalias !3747
  %i.aho = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  store ptr @235, ptr %i.aho, align 8, !noalias !3747
  %i.ahp = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  store i64 12, ptr %i.ahp, align 8, !noalias !3747
  store i8 8, ptr %i.bp, align 8, !noalias !3747
  %i.ahq = call noundef ptr @"_ZN4jiff5error3fmt7strtime113_$LT$impl$u20$core..convert..From$LT$jiff..error..fmt..strtime..ParseError$GT$$u20$for$u20$jiff..error..Error$GT$4from17h1478f724f04103dbE"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.bp), !noalias !3748
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp), !noalias !3747
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bq), !noalias !3733
  store i8 35, ptr %i.bq, align 8, !noalias !3733
  %i.ahr = call fastcc noundef ptr @"_ZN92_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$jiff..error..ErrorContext$LT$T$C$E$GT$$GT$7context28_$u7b$$u7b$closure$u7d$$u7d$17hfad59cb7a9f0da4aE"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.bq, ptr noundef nonnull %i.ahq), !noalias !3749
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq), !noalias !3733
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo), !noalias !3750
  store i8 1, ptr %i.bo, align 8, !noalias !3750
  %.sroa.5.0..sroa_idx4.i607 = getelementptr inbounds nuw i8, ptr %i.bo, i64 1
  store i8 66, ptr %.sroa.5.0..sroa_idx4.i607, align 1
  %.sroa.61921.1..sroa.5.0..sroa_idx4.i607.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bo, i64 2
  store i8 0, ptr %.sroa.61921.1..sroa.5.0..sroa_idx4.i607.sroa_idx, align 2
  %i.ahs = call fastcc noundef ptr @"_ZN92_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$jiff..error..ErrorContext$LT$T$C$E$GT$$GT$7context28_$u7b$$u7b$closure$u7d$$u7d$17h2bfe5a8911315e0bE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.bo, ptr noundef nonnull %i.ahr), !noalias !3750
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo), !noalias !3750
  br label %_ZN4jiff3fmt7strtime5parse6Parser13parse_literal17hb325e140d66c33c2E.exit.thread

"_ZN92_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$jiff..error..ErrorContext$LT$T$C$E$GT$$GT$7context17h3413f8e230dbeb3eE.exit610": ; preds = %.preheader.i.i.661.i, %.preheader.i.i.11.7.i, %.preheader.i.i.10.7.i, %.preheader.i.i.9.6.i, %.preheader.i.i.8.8.i, %.preheader.i.i.7.5.i, %.preheader.i.i.6.3.i557, %.preheader.i.i.5.3.i563, %.preheader.i.i.4.2.i567, %.preheader.i.i.3.4.i575, %.preheader.i.i.2.4.i583, %.preheader.i.i.1.7.i
  %.sroa.8.022.i.lcssa.i550 = phi i8 [ 10, %.preheader.i.i.9.6.i ], [ 11, %.preheader.i.i.10.7.i ], [ 1, %.preheader.i.i.661.i ], [ 2, %.preheader.i.i.1.7.i ], [ 3, %.preheader.i.i.2.4.i583 ], [ 4, %.preheader.i.i.3.4.i575 ], [ 5, %.preheader.i.i.4.2.i567 ], [ 6, %.preheader.i.i.5.3.i563 ], [ 7, %.preheader.i.i.6.3.i557 ], [ 8, %.preheader.i.i.7.5.i ], [ 9, %.preheader.i.i.8.8.i ], [ 12, %.preheader.i.i.11.7.i ]
  %.lcssa.i551 = phi i64 [ 7, %.preheader.i.i.9.6.i ], [ 8, %.preheader.i.i.10.7.i ], [ 7, %.preheader.i.i.661.i ], [ 8, %.preheader.i.i.1.7.i ], [ 5, %.preheader.i.i.2.4.i583 ], [ 5, %.preheader.i.i.3.4.i575 ], [ 3, %.preheader.i.i.4.2.i567 ], [ 4, %.preheader.i.i.5.3.i563 ], [ 4, %.preheader.i.i.6.3.i557 ], [ 6, %.preheader.i.i.7.5.i ], [ 9, %.preheader.i.i.8.8.i ], [ 8, %.preheader.i.i.11.7.i ] ; 2 uses
  %i.aht = sub nuw i64 %i.sm, %.lcssa.i551
  %i.ahu = getelementptr inbounds nuw i8, ptr %i.sl, i64 %.lcssa.i551
  store ptr %i.ahu, ptr %i.cv, align 8, !alias.scope !3733
  store i64 %i.aht, ptr %i.cu, align 8, !alias.scope !3733
  %i.ahv = load ptr, ptr %i.cw, align 8, !alias.scope !3733, !nonnull !11, !align !12, !noundef !11 ; 2 uses
  %i.ahw = getelementptr inbounds nuw i8, ptr %i.ahv, i64 92
  store i8 1, ptr %i.ahw, align 4, !noalias !3733
  %i.ahx = getelementptr inbounds nuw i8, ptr %i.ahv, i64 93
  store i8 %.sroa.8.022.i.lcssa.i550, ptr %i.ahx, align 1, !noalias !3733
  %i.ahy = add i64 %i.fm, -1                      ; 2 uses
  %i.ahz = getelementptr inbounds nuw i8, ptr %i.fl, i64 1
  store ptr %i.ahz, ptr %0, align 8, !alias.scope !3751
  store i64 %i.ahy, ptr %i.cr, align 8, !alias.scope !3751
  br label %.backedge

bb.am:                                            ; preds = %_ZN4jiff3fmt7strtime5parse6Parser1f17h80f5c541f9bc256eE.exit487
  %i.aia = call fastcc { i64, ptr } @_ZN4jiff3fmt7strtime5parse6Parser23parse_month_name_abbrev17hee1b30f516bf0597E(ptr noalias noundef align 8 dereferenceable(40) %0) ; 2 uses
  %i.aib = extractvalue { i64, ptr } %i.aia, 0
  %i.aic = trunc nuw i64 %i.aib to i1
  br i1 %i.aic, label %"_ZN92_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$jiff..error..ErrorContext$LT$T$C$E$GT$$GT$7context17h3413f8e230dbeb3eE.exit624.thread", label %.backedgethread-pre-split

"_ZN92_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$jiff..error..ErrorContext$LT$T$C$E$GT$$GT$7context17h3413f8e230dbeb3eE.exit624.thread": ; preds = %bb.am
  %i.aid = extractvalue { i64, ptr } %i.aia, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn), !noalias !3752
  store i8 1, ptr %i.bn, align 8, !noalias !3752
  %.sroa.5.0..sroa_idx4.i621 = getelementptr inbounds nuw i8, ptr %i.bn, i64 1
  store i8 98, ptr %.sroa.5.0..sroa_idx4.i621, align 1
  %.sroa.61927.1..sroa.5.0..sroa_idx4.i621.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bn, i64 2
  store i8 0, ptr %.sroa.61927.1..sroa.5.0..sroa_idx4.i621.sroa_idx, align 2
  %i.aie = call fastcc noundef ptr @"_ZN92_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$jiff..error..ErrorContext$LT$T$C$E$GT$$GT$7context28_$u7b$$u7b$closure$u7d$$u7d$17h2bfe5a8911315e0bE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.bn, ptr noundef %i.aid), !noalias !3752
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn), !noalias !3752
  br label %_ZN4jiff3fmt7strtime5parse6Parser13parse_literal17hb325e140d66c33c2E.exit.thread

bb.an:                                            ; preds = %_ZN4jiff3fmt7strtime5parse6Parser1f17h80f5c541f9bc256eE.exit487
  call void @llvm.experimental.noalias.scope.decl(metadata !3753)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm)
  %.sroa.3.0.extract.shift.i = lshr i32 %.sroa.0.0.ph.i, 16
  %.sroa.3.0.extract.trunc.i = trunc nuw nsw i32 %.sroa.3.0.extract.shift.i to i8
  %i.aif = load ptr, ptr %i.cv, align 8, !alias.scope !3753, !nonnull !11, !align !13, !noundef !11 ; 5 uses
  %i.aig = load i64, ptr %i.cu, align 8, !alias.scope !3753, !noundef !11 ; 4 uses
  %i.aih = icmp eq i64 %i.aig, 0
  br i1 %i.aih, label %_ZN4jiff3fmt7strtime5parse19parse_optional_sign17hcc3eb4e7091cec06E.exit.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.aii = load i8, ptr %i.aif, align 1, !alias.scope !3754, !noalias !3753, !noundef !11
  switch i8 %i.aii, label %_ZN4jiff3fmt7strtime5parse19parse_optional_sign17hcc3eb4e7091cec06E.exit.i [
    i8 45, label %bb.ap
    i8 43, label %bb.aq
  ]

bb.ap:                                            ; preds = %bb.ao
  %i.aij = add i64 %i.aig, -1
  %i.aik = getelementptr inbounds nuw i8, ptr %i.aif, i64 1
  br label %_ZN4jiff3fmt7strtime5parse19parse_optional_sign17hcc3eb4e7091cec06E.exit.i

bb.aq:                                            ; preds = %bb.ao
  %i.ail = add i64 %i.aig, -1
  %i.aim = getelementptr inbounds nuw i8, ptr %i.aif, i64 1
  br label %_ZN4jiff3fmt7strtime5parse19parse_optional_sign17hcc3eb4e7091cec06E.exit.i

_ZN4jiff3fmt7strtime5parse19parse_optional_sign17hcc3eb4e7091cec06E.exit.i: ; preds = %bb.aq, %bb.ap, %bb.ao, %bb.an
  %.sink5.i.i = phi i64 [ 1, %bb.ao ], [ 1, %bb.aq ], [ -1, %bb.ap ], [ 1, %bb.an ]
  %.sink3.i.i = phi ptr [ %i.aif, %bb.ao ], [ %i.aim, %bb.aq ], [ %i.aik, %bb.ap ], [ %i.aif, %bb.an ] ; 3 uses
  %.sink.i.i = phi i64 [ %i.aig, %bb.ao ], [ %i.ail, %bb.aq ], [ %i.aij, %bb.ap ], [ 0, %bb.an ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3755)
  switch i8 %.sroa.3.0.extract.trunc.i, label %bb.ar [
    i8 0, label %bb.as
    i8 2, label %bb.as
    i8 5, label %bb.as
  ]

bb.ar:                                            ; preds = %_ZN4jiff3fmt7strtime5parse19parse_optional_sign17hcc3eb4e7091cec06E.exit.i
  %i.ain = trunc nuw i8 %i.ex to i1
  %narrow2433 = select i1 %i.ain, i8 %.sroa.518.0.copyload.i, i8 2
  %.sroa.025.1.i.i = zext i8 %narrow2433 to i64
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %_ZN4jiff3fmt7strtime5parse19parse_optional_sign17hcc3eb4e7091cec06E.exit.i, %_ZN4jiff3fmt7strtime5parse19parse_optional_sign17hcc3eb4e7091cec06E.exit.i, %_ZN4jiff3fmt7strtime5parse19parse_optional_sign17hcc3eb4e7091cec06E.exit.i
  %.sroa.025.0.i.i = phi i64 [ %.sroa.025.1.i.i, %bb.ar ], [ 0, %_ZN4jiff3fmt7strtime5parse19parse_optional_sign17hcc3eb4e7091cec06E.exit.i ], [ 0, %_ZN4jiff3fmt7strtime5parse19parse_optional_sign17hcc3eb4e7091cec06E.exit.i ], [ 0, %_ZN4jiff3fmt7strtime5parse19parse_optional_sign17hcc3eb4e7091cec06E.exit.i ] ; 2 uses
  %.sroa.0.0.i.i.i = call noundef i64 @llvm.umax.i64(i64 %.sroa.025.0.i.i, i64 range(i64 0, -1) 2) ; 2 uses
  %.not5966.i.i = icmp eq i64 %.sink.i.i, 0
  br i1 %.not5966.i.i, label %"_ZN4core6option15Option$LT$T$GT$6map_or17h872e7a2259b218b3E.exit.i.i", label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.as
  %scevgep.i.i = getelementptr i8, ptr %.sink3.i.i, i64 %.sink.i.i
  br label %.lr.ph.i.i625

.lr.ph.i.i625:                                    ; preds = %bb.aw, %.lr.ph.preheader.i.i
  %.sroa.0.068.i.i = phi ptr [ %i.aji, %bb.aw ], [ %.sink3.i.i, %.lr.ph.preheader.i.i ] ; 3 uses
  %.sroa.13.067.i.i = phi i64 [ %i.ajh, %bb.aw ], [ %.sink.i.i, %.lr.ph.preheader.i.i ] ; 2 uses
  %.val.i.i.i = load i8, ptr %.sroa.0.068.i.i, align 1, !alias.scope !3756, !noalias !3753, !noundef !11
  switch i8 %.val.i.i.i, label %"_ZN4core6option15Option$LT$T$GT$6map_or17h872e7a2259b218b3E.exit.i.i" [
    i8 9, label %bb.aw
    i8 10, label %bb.aw
    i8 12, label %bb.aw
    i8 13, label %bb.aw
    i8 32, label %bb.aw
  ]

"_ZN4core6option15Option$LT$T$GT$6map_or17h872e7a2259b218b3E.exit.i.i": ; preds = %bb.aw, %.lr.ph.i.i625, %bb.as
  %.sroa.13.0.lcssa.i.i = phi i64 [ 0, %bb.as ], [ 0, %bb.aw ], [ %.sroa.13.067.i.i, %.lr.ph.i.i625 ] ; 6 uses
  %.sroa.0.0.lcssa.i.i = phi ptr [ %.sink3.i.i, %bb.as ], [ %scevgep.i.i, %bb.aw ], [ %.sroa.0.068.i.i, %.lr.ph.i.i625 ] ; 4 uses
  %invariant.umin.i.i626 = call i64 @llvm.umin.i64(i64 %.sroa.13.0.lcssa.i.i, i64 %.sroa.025.0.i.i) ; 3 uses
  %or.cond6073.not.i.i = icmp eq i64 %invariant.umin.i.i626, 0
  br i1 %or.cond6073.not.i.i, label %._crit_edge.i.i627.thread, label %.lr.ph75.i.i

._crit_edge.i.i627:                               ; preds = %bb.at, %.lr.ph75.i.i
  %.sroa.032.0.lcssa.i.i = phi i64 [ %.sroa.032.074.i.i, %.lr.ph75.i.i ], [ %invariant.umin.i.i626, %bb.at ] ; 5 uses
  %invariant.umin79.i.i = call i64 @llvm.umin.i64(i64 %.sroa.13.0.lcssa.i.i, i64 %.sroa.0.0.i.i.i) ; 2 uses
  %or.cond80.i.i = icmp ult i64 %.sroa.032.0.lcssa.i.i, %invariant.umin79.i.i
  br i1 %or.cond80.i.i, label %.lr.ph84.i.i.preheader, label %._crit_edge85.i.i.thread

._crit_edge.i.i627.thread:                        ; preds = %"_ZN4core6option15Option$LT$T$GT$6map_or17h872e7a2259b218b3E.exit.i.i"
  %invariant.umin79.i.i2380 = call i64 @llvm.umin.i64(i64 %.sroa.13.0.lcssa.i.i, i64 %.sroa.0.0.i.i.i)
  %or.cond80.i.i2381.not = icmp eq i64 %.sroa.13.0.lcssa.i.i, 0
  br i1 %or.cond80.i.i2381.not, label %"_ZN4jiff3fmt7strtime5parse47_$LT$impl$u20$jiff..fmt..strtime..Extension$GT$12parse_number17hbd3ca6b9c61eeb01E.exit.thread.i", label %.lr.ph84.i.i.preheader

.lr.ph84.i.i.preheader:                           ; preds = %._crit_edge.i.i627, %._crit_edge.i.i627.thread
  %invariant.umin79.i.i2383.ph = phi i64 [ %invariant.umin79.i.i2380, %._crit_edge.i.i627.thread ], [ %invariant.umin79.i.i, %._crit_edge.i.i627 ] ; 2 uses
  %.sroa.032.182.i.i.ph = phi i64 [ 0, %._crit_edge.i.i627.thread ], [ %.sroa.032.0.lcssa.i.i, %._crit_edge.i.i627 ]
  br label %.lr.ph84.i.i

.lr.ph75.i.i:                                     ; preds = %"_ZN4core6option15Option$LT$T$GT$6map_or17h872e7a2259b218b3E.exit.i.i", %bb.at
  %.sroa.032.074.i.i = phi i64 [ %i.air, %bb.at ], [ 0, %"_ZN4core6option15Option$LT$T$GT$6map_or17h872e7a2259b218b3E.exit.i.i" ] ; 3 uses
  %i.aio = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i.i, i64 %.sroa.032.074.i.i
  %i.aip = load i8, ptr %i.aio, align 1, !alias.scope !3755, !noalias !3753, !noundef !11
  %i.aiq = icmp eq i8 %i.aip, 48
  br i1 %i.aiq, label %bb.at, label %._crit_edge.i.i627

bb.at:                                            ; preds = %.lr.ph75.i.i
  %i.air = add nuw nsw i64 %.sroa.032.074.i.i, 1  ; 2 uses
  %exitcond.not.i.i631 = icmp eq i64 %i.air, %invariant.umin.i.i626
  br i1 %exitcond.not.i.i631, label %._crit_edge.i.i627, label %.lr.ph75.i.i

._crit_edge85.i.i:                                ; preds = %.lr.ph84.i.i
  %i.ais = icmp eq i64 %.sroa.032.182.i.i, 0
  br i1 %i.ais, label %"_ZN4jiff3fmt7strtime5parse47_$LT$impl$u20$jiff..fmt..strtime..Extension$GT$12parse_number17hbd3ca6b9c61eeb01E.exit.thread.i", label %"_ZN4jiff3fmt7strtime5parse47_$LT$impl$u20$jiff..fmt..strtime..Extension$GT$12parse_number17hbd3ca6b9c61eeb01E.exit.i"

._crit_edge85.i.i.thread:                         ; preds = %._crit_edge.i.i627
  %i.ait = icmp eq i64 %.sroa.032.0.lcssa.i.i, 0
  br i1 %i.ait, label %"_ZN4jiff3fmt7strtime5parse47_$LT$impl$u20$jiff..fmt..strtime..Extension$GT$12parse_number17hbd3ca6b9c61eeb01E.exit.thread.i", label %"_ZN4jiff3fmt7strtime5parse47_$LT$impl$u20$jiff..fmt..strtime..Extension$GT$12parse_number17hbd3ca6b9c61eeb01E.exit.i.thread"

"_ZN4jiff3fmt7strtime5parse47_$LT$impl$u20$jiff..fmt..strtime..Extension$GT$12parse_number17hbd3ca6b9c61eeb01E.exit.i.thread": ; preds = %._crit_edge85.i.i.thread
  %i.aiu = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i.i, i64 %.sroa.032.0.lcssa.i.i
  %i.aiv = sub nuw i64 %.sroa.13.0.lcssa.i.i, %.sroa.032.0.lcssa.i.i
  store ptr %i.aiu, ptr %i.cv, align 8, !alias.scope !3753
  store i64 %i.aiv, ptr %i.cu, align 8, !alias.scope !3753
  br label %"_ZN92_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$jiff..error..ErrorContext$LT$T$C$E$GT$$GT$7context17h3413f8e230dbeb3eE.exit645"

.lr.ph84.i.i:                                     ; preds = %.lr.ph84.i.i.preheader, %.critedge.i.i
  %.sroa.032.182.i.i = phi i64 [ %i.aiz, %.critedge.i.i ], [ %.sroa.032.182.i.i.ph, %.lr.ph84.i.i.preheader ] ; 4 uses
  %.sroa.043.081.i.i = phi i64 [ %i.ajg, %.critedge.i.i ], [ 0, %.lr.ph84.i.i.preheader ] ; 2 uses
  %i.aiw = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i.i, i64 %.sroa.032.182.i.i
  %i.aix = load i8, ptr %i.aiw, align 1, !alias.scope !3755, !noalias !3753, !noundef !11
  %i.aiy = add i8 %i.aix, -48                     ; 2 uses
  %or.cond61.i.i = icmp ult i8 %i.aiy, 10
  br i1 %or.cond61.i.i, label %bb.au, label %._crit_edge85.i.i

bb.au:                                            ; preds = %.lr.ph84.i.i
  %i.aiz = add i64 %.sroa.032.182.i.i, 1          ; 2 uses
  %i.aja = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.043.081.i.i, i64 10) ; 2 uses
  %i.ajb = extractvalue { i64, i1 } %i.aja, 1
  br i1 %i.ajb, label %"_ZN4jiff3fmt7strtime5parse47_$LT$impl$u20$jiff..fmt..strtime..Extension$GT$12parse_number17hbd3ca6b9c61eeb01E.exit.thread.i", label %bb.av, !prof !23

bb.av:                                            ; preds = %bb.au
  %i.ajc = zext nneg i8 %i.aiy to i64
  %i.ajd = extractvalue { i64, i1 } %i.aja, 0
  %i.aje = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.ajd, i64 %i.ajc) ; 2 uses
  %i.ajf = extractvalue { i64, i1 } %i.aje, 1
  br i1 %i.ajf, label %"_ZN4jiff3fmt7strtime5parse47_$LT$impl$u20$jiff..fmt..strtime..Extension$GT$12parse_number17hbd3ca6b9c61eeb01E.exit.thread.i", label %.critedge.i.i, !prof !23

.critedge.i.i:                                    ; preds = %bb.av
  %i.ajg = extractvalue { i64, i1 } %i.aje, 0     ; 2 uses
  %exitcond91.not.i.i = icmp eq i64 %i.aiz, %invariant.umin79.i.i2383.ph
  br i1 %exitcond91.not.i.i, label %"_ZN4jiff3fmt7strtime5parse47_$LT$impl$u20$jiff..fmt..strtime..Extension$GT$12parse_number17hbd3ca6b9c61eeb01E.exit.i", label %.lr.ph84.i.i

bb.aw:                                            ; preds = %.lr.ph.i.i625, %.lr.ph.i.i625, %.lr.ph.i.i625, %.lr.ph.i.i625, %.lr.ph.i.i625
  %i.ajh = add i64 %.sroa.13.067.i.i, -1          ; 2 uses
  %i.aji = getelementptr inbounds nuw i8, ptr %.sroa.0.068.i.i, i64 1
  %.not59.i.i = icmp eq i64 %i.ajh, 0
  br i1 %.not59.i.i, label %"_ZN4core6option15Option$LT$T$GT$6map_or17h872e7a2259b218b3E.exit.i.i", label %.lr.ph.i.i625

"_ZN4jiff3fmt7strtime5parse47_$LT$impl$u20$jiff..fmt..strtime..Extension$GT$12parse_number17hbd3ca6b9c61eeb01E.exit.thread.i": ; preds = %._crit_edge.i.i627.thread, %._crit_edge85.i.i.thread, %._crit_edge85.i.i, %bb.av, %bb.au
  %.sink.i630 = phi i8 [ 2, %bb.av ], [ 2, %bb.au ], [ 0, %._crit_edge85.i.i ], [ 0, %._crit_edge85.i.i.thread ], [ 0, %._crit_edge.i.i627.thread ]
  %i.ajj = call noundef ptr @"_ZN4jiff5error4util108_$LT$impl$u20$core..convert..From$LT$jiff..error..util..ParseIntError$GT$$u20$for$u20$jiff..error..Error$GT$4from17h5532020adfe71edeE"(i8 noundef %.sink.i630, i8 undef), !noalias !3757
  store i8 20, ptr %i.bm, align 8, !noalias !3753
  %i.ajk = call fastcc noundef ptr @"_ZN92_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$jiff..error..ErrorContext$LT$T$C$E$GT$$GT$7context28_$u7b$$u7b$closure$u7d$$u7d$17hfa4df2193c3fd19cE"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.bm, ptr noundef nonnull %i.ajj), !noalias !3753
  br label %"_ZN92_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$jiff..error..ErrorContext$LT$T$C$E$GT$$GT$7context17h3413f8e230dbeb3eE.exit645.thread"

"_ZN4jiff3fmt7strtime5parse47_$LT$impl$u20$jiff..fmt..strtime..Extension$GT$12parse_number17hbd3ca6b9c61eeb01E.exit.i": ; preds = %.critedge.i.i, %._crit_edge85.i.i
  %.sroa.032.1.lcssa.i.i2194 = phi i64 [ %.sroa.032.182.i.i, %._crit_edge85.i.i ], [ %invariant.umin79.i.i2383.ph, %.critedge.i.i ] ; 2 uses
  %.sroa.043.0.lcssa.i.i2193 = phi i64 [ %.sroa.043.081.i.i, %._crit_edge85.i.i ], [ %i.ajg, %.critedge.i.i ] ; 2 uses
  store i8 20, ptr %i.bm, align 8, !noalias !3753
  %i.ajl = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i.i, i64 %.sroa.032.1.lcssa.i.i2194
  %i.ajm = sub nuw i64 %.sroa.13.0.lcssa.i.i, %.sroa.032.1.lcssa.i.i2194
  store ptr %i.ajl, ptr %i.cv, align 8, !alias.scope !3753
  store i64 %i.ajm, ptr %i.cu, align 8, !alias.scope !3753
  %or.cond.i.i628 = icmp ugt i64 %.sroa.043.0.lcssa.i.i2193, 99
  br i1 %or.cond.i.i628, label %bb.ax, label %"_ZN92_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$jiff..error..ErrorContext$LT$T$C$E$GT$$GT$7context17h3413f8e230dbeb3eE.exit645"

bb.ax:                                            ; preds = %"_ZN4jiff3fmt7strtime5parse47_$LT$impl$u20$jiff..fmt..strtime..Extension$GT$12parse_number17hbd3ca6b9c61eeb01E.exit.i"
  %i.ajn = call fastcc noundef ptr @"_ZN92_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$jiff..error..ErrorContext$LT$T$C$E$GT$$GT$7context28_$u7b$$u7b$closure$u7d$$u7d$17h1ed206274f86ddc7E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.bm, i8 noundef range(i8 -59, 100) 0), !noalias !3753
  br label %"_ZN92_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$jiff..error..ErrorContext$LT$T$C$E$GT$$GT$7context17h3413f8e230dbeb3eE.exit645.thread"

"_ZN92_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$jiff..error..ErrorContext$LT$T$C$E$GT$$GT$7context17h3413f8e230dbeb3eE.exit645.thread": ; preds = %bb.ax, %"_ZN4jiff3fmt7strtime5parse47_$LT$impl$u20$jiff..fmt..strtime..Extension$GT$12parse_number17hbd3ca6b9c61eeb01E.exit.thread.i"
  %.sroa.5.0.i.ph = phi ptr [ %i.ajn, %bb.ax ], [ %i.ajk, %"_ZN4jiff3fmt7strtime5parse47_$LT$impl$u20$jiff..fmt..strtime..Extension$GT$12parse_number17hbd3ca6b9c61eeb01E.exit.thread.i" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl), !noalias !3758
  store i8 1, ptr %i.bl, align 8, !noalias !3758
  %.sroa.5.0..sroa_idx4.i642 = getelementptr inbounds nuw i8, ptr %i.bl, i64 1
  store i8 67, ptr %.sroa.5.0..sroa_idx4.i642, align 1
  %.sroa.61933.1..sroa.5.0..sroa_idx4.i642.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bl, i64 2
  store i8 0, ptr %.sroa.61933.1..sroa.5.0..sroa_idx4.i642.sroa_idx, align 2
  %i.ajo = call fastcc noundef ptr @"_ZN92_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$jiff..error..ErrorContext$LT$T$C$E$GT$$GT$7context28_$u7b$$u7b$closure$u7d$$u7d$17h2bfe5a8911315e0bE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.bl, ptr noundef nonnull %.sroa.5.0.i.ph), !noalias !3758
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl), !noalias !3758
  br label %_ZN4jiff3fmt7strtime5parse6Parser13parse_literal17hb325e140d66c33c2E.exit.thread

"_ZN92_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$jiff..error..ErrorContext$LT$T$C$E$GT$$GT$7context17h3413f8e230dbeb3eE.exit645": ; preds = %"_ZN4jiff3fmt7strtime5parse47_$LT$impl$u20$jiff..fmt..strtime..Extension$GT$12parse_number17hbd3ca6b9c61eeb01E.exit.i.thread", %"_ZN4jiff3fmt7strtime5parse47_$LT$impl$u20$jiff..fmt..strtime..Extension$GT$12parse_number17hbd3ca6b9c61eeb01E.exit.i"
  %.sroa.043.0.lcssa.i.i21932198 = phi i64 [ 0, %"_ZN4jiff3fmt7strtime5parse47_$LT$impl$u20$jiff..fmt..strtime..Extension$GT$12parse_number17hbd3ca6b9c61eeb01E.exit.i.thread" ], [ %.sroa.043.0.lcssa.i.i2193, %"_ZN4jiff3fmt7strtime5parse47_$LT$impl$u20$jiff..fmt..strtime..Extension$GT$12parse_number17hbd3ca6b9c61eeb01E.exit.i" ]
  %i.ajp = mul nsw i64 %.sroa.043.0.lcssa.i.i21932198, %.sink5.i.i
  %i.ajq = trunc nsw i64 %i.ajp to i16
  %.sroa.5.0.extract.trunc.i.i = mul nsw i16 %i.ajq, 100
  %i.ajr = load ptr, ptr %i.cw, align 8, !alias.scope !3753, !nonnull !11, !align !12, !noundef !11 ; 2 uses
  %i.ajs = getelementptr inbounds nuw i8, ptr %i.ajr, i64 80
  store i16 1, ptr %i.ajs, align 8, !noalias !3753
  %i.ajt = getelementptr inbounds nuw i8, ptr %i.ajr, i64 82
  store i16 %.sroa.5.0.extract.trunc.i.i, ptr %i.ajt, align 2, !noalias !3753
  %i.aju = add i64 %i.fm, -1                      ; 2 uses
  %i.ajv = getelementptr inbounds nuw i8, ptr %i.fl, i64 1
  store ptr %i.ajv, ptr %0, align 8, !alias.scope !3759
  store i64 %i.aju, ptr %i.cr, align 8, !alias.scope !3759
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm)
  br label %.backedge

bb.ay:                                            ; preds = %_ZN4jiff3fmt7strtime5parse6Parser1f17h80f5c541f9bc256eE.exit487
  call void @llvm.experimental.noalias.scope.decl(metadata !3760)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk), !noalias !3760
  %i.ajw = load ptr, ptr %i.cv, align 8, !alias.scope !3760, !nonnull !11, !align !13, !noundef !11
  %i.ajx = load i64, ptr %i.cu, align 8, !alias.scope !3760, !noundef !11
  %i.ajy = load ptr, ptr %i.cw, align 8, !alias.scope !3760, !nonnull !11, !align !12, !noundef !11
  store ptr @230, ptr %i.bk, align 8, !noalias !3760
  store i64 8, ptr %i.dl, align 8, !noalias !3760
  store ptr %i.ajw, ptr %i.dm, align 8, !noalias !3760
  store i64 %i.ajx, ptr %i.dn, align 8, !noalias !3760
  store ptr %i.ajy, ptr %i.do, align 8, !noalias !3760
  %i.ajz = call { i64, ptr } @_ZN4jiff3fmt7strtime5parse6Parser5parse17h6bc5192b3a5cd326E(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.bk), !noalias !3760, !inline_history !3345 ; 2 uses
  %i.aka = extractvalue { i64, ptr } %i.ajz, 0
  %i.akb = trunc nuw i64 %i.aka to i1
  br i1 %i.akb, label %"_ZN92_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$jiff..error..ErrorContext$LT$T$C$E$GT$$GT$7context17h3413f8e230dbeb3eE.exit661.thread", label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.akc = load ptr, ptr %i.dm, align 8, !noalias !3760, !nonnull !11, !align !13, !noundef !11
  %i.akd = load i64, ptr %i.dn, align 8, !noalias !3760, !noundef !11
  store ptr %i.akc, ptr %i.cv, align 8, !alias.scope !3760
  store i64 %i.akd, ptr %i.cu, align 8, !alias.scope !3760
  call void @llvm.experimental.noalias.scope.decl(metadata !3761)
  %i.ake = load i64, ptr %i.cr, align 8, !alias.scope !3761, !noundef !11 ; 2 uses
  %i.akf = icmp eq i64 %i.ake, 0
  br i1 %i.akf, label %bb.ba, label %"_ZN92_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$jiff..error..ErrorContext$LT$T$C$E$GT$$GT$7context17h3413f8e230dbeb3eE.exit661", !prof !23

bb.ba:                                            ; preds = %bb.az
  call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 1, i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @236) #45, !noalias !3761
  unreachable

"_ZN92_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$jiff..error..ErrorContext$LT$T$C$E$GT$$GT$7context17h3413f8e230dbeb3eE.exit661.thread": ; preds = %bb.ay
  %i.akg = extractvalue { i64, ptr } %i.ajz, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk), !noalias !3760
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj), !noalias !3762
  store i8 1, ptr %i.bj, align 8, !noalias !3762
  %.sroa.5.0..sroa_idx4.i658 = getelementptr inbounds nuw i8, ptr %i.bj, i64 1
  store i8 68, ptr %.sroa.5.0..sroa_idx4.i658, align 1
  %.sroa.61939.1..sroa.5.0..sroa_idx4.i658.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bj, i64 2
  store i8 0, ptr %.sroa.61939.1..sroa.5.0..sroa_idx4.i658.sroa_idx, align 2
  %i.akh = call fastcc noundef ptr @"_ZN92_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$jiff..error..ErrorContext$LT$T$C$E$GT$$GT$7context28_$u7b$$u7b$closure$u7d$$u7d$17h2bfe5a8911315e0bE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.bj, ptr noundef %i.akg), !noalias !3762
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj), !noalias !3762
  br label %_ZN4jiff3fmt7strtime5parse6Parser13parse_literal17hb325e140d66c33c2E.exit.thread

"_ZN92_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$jiff..error..ErrorContext$LT$T$C$E$GT$$GT$7context17h3413f8e230dbeb3eE.exit661": ; preds = %bb.az
  %i.aki = load ptr, ptr %0, align 8, !alias.scope !3761, !nonnull !11, !align !13, !noundef !11
  %i.akj = add i64 %i.ake, -1                     ; 2 uses
  %i.akk = getelementptr inbounds nuw i8, ptr %i.aki, i64 1
  store ptr %i.akk, ptr %0, align 8, !alias.scope !3761
  store i64 %i.akj, ptr %i.cr, align 8, !alias.scope !3761
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk), !noalias !3760
  br label %.backedge

bb.bb:                                            ; preds = %_ZN4jiff3fmt7strtime5parse6Parser1f17h80f5c541f9bc256eE.exit487
  %i.akl = call fastcc { i64, ptr } @_ZN4jiff3fmt7strtime5parse6Parser9parse_day17h8d5481dc40d36b37E(ptr noalias noundef align 8 dereferenceable(40) %0, i32 %.sroa.4.4.insert.insert) ; 2 uses
  %i.akm = extractvalue { i64, ptr } %i.akl, 0
  %i.akn = trunc nuw i64 %i.akm to i1
  br i1 %i.akn, label %"_ZN92_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$jiff..error..ErrorContext$LT$T$C$E$GT$$GT$7context17h3413f8e230dbeb3eE.exit675.thread", label %.backedgethread-pre-split

"_ZN92_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$jiff..error..ErrorContext$LT$T$C$E$GT$$GT$7context17h3413f8e230dbeb3eE.exit675.thread": ; preds = %bb.bb
  %i.ako = extractvalue { i64, ptr } %i.akl, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi), !noalias !3763
  store i8 1, ptr %i.bi, align 8, !noalias !3763
  %.sroa.5.0..sroa_idx4.i672 = getelementptr inbounds nuw i8, ptr %i.bi, i64 1
  store i8 100, ptr %.sroa.5.0..sroa_idx4.i672, align 1
  %.sroa.61945.1..sroa.5.0..sroa_idx4.i672.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bi, i64 2
  store i8 0, ptr %.sroa.61945.1..sroa.5.0..sroa_idx4.i672.sroa_idx, align 2
  %i.akp = call fastcc noundef ptr @"_ZN92_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$jiff..error..ErrorContext$LT$T$C$E$GT$$GT$7context28_$u7b$$u7b$closure$u7d$$u7d$17h2bfe5a8911315e0bE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.bi, ptr noundef %i.ako), !noalias !3763
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi), !noalias !3763
  br label %_ZN4jiff3fmt7strtime5parse6Parser13parse_literal17hb325e140d66c33c2E.exit.thread

bb.bc:                                            ; preds = %_ZN4jiff3fmt7strtime5parse6Parser1f17h80f5c541f9bc256eE.exit487
  %i.akq = call fastcc { i64, ptr } @_ZN4jiff3fmt7strtime5parse6Parser9parse_day17h8d5481dc40d36b37E(ptr noalias noundef align 8 dereferenceable(40) %0, i32 %.sroa.4.4.insert.insert) ; 2 uses
  %i.akr = extractvalue { i64, ptr } %i.akq, 0
  %i.aks = trunc nuw i64 %i.akr to i1
  br i1 %i.aks, label %"_ZN92_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$jiff..error..ErrorContext$LT$T$C$E$GT$$GT$7context17h3413f8e230dbeb3eE.exit689.thread", label %.backedgethread-pre-split

"_ZN92_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$jiff..error..ErrorContext$LT$T$C$E$GT$$GT$7context17h3413f8e230dbeb3eE.exit689.thread": ; preds = %bb.bc
  %i.akt = extractvalue { i64, ptr } %i.akq, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh), !noalias !3764
  store i8 1, ptr %i.bh, align 8, !noalias !3764
  %.sroa.5.0..sroa_idx4.i686 = getelementptr inbounds nuw i8, ptr %i.bh, i64 1
  store i8 101, ptr %.sroa.5.0..sroa_idx4.i686, align 1
  %.sroa.61951.1..sroa.5.0..sroa_idx4.i686.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bh, i64 2
  store i8 0, ptr %.sroa.61951.1..sroa.5.0..sroa_idx4.i686.sroa_idx, align 2
  %i.aku = call fastcc noundef ptr @"_ZN92_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$jiff..error..ErrorContext$LT$T$C$E$GT$$GT$7context28_$u7b$$u7b$closure$u7d$$u7d$17h2bfe5a8911315e0bE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.bh, ptr noundef %i.akt), !noalias !3764
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !noalias !3764
  br label %_ZN4jiff3fmt7strtime5parse6Parser13parse_literal17hb325e140d66c33c2E.exit.thread

bb.bd:                                            ; preds = %_ZN4jiff3fmt7strtime5parse6Parser1f17h80f5c541f9bc256eE.exit487
  call void @llvm.experimental.noalias.scope.decl(metadata !3765)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg), !noalias !3765
  %i.akv = load ptr, ptr %i.cv, align 8, !alias.scope !3765, !nonnull !11, !align !13, !noundef !11
  %i.akw = load i64, ptr %i.cu, align 8, !alias.scope !3765, !noundef !11
  %i.akx = load ptr, ptr %i.cw, align 8, !alias.scope !3765, !nonnull !11, !align !12, !noundef !11
  store ptr @219, ptr %i.bg, align 8, !noalias !3765
  store i64 8, ptr %i.dh, align 8, !noalias !3765
  store ptr %i.akv, ptr %i.di, align 8, !noalias !3765
  store i64 %i.akw, ptr %i.dj, align 8, !noalias !3765
  store ptr %i.akx, ptr %i.dk, align 8, !noalias !3765
  %i.aky = call { i64, ptr } @_ZN4jiff3fmt7strtime5parse6Parser5parse17h6bc5192b3a5cd326E(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.bg), !noalias !3765, !inline_history !3356 ; 2 uses
  %i.akz = extractvalue { i64, ptr } %i.aky, 0
  %i.ala = trunc nuw i64 %i.akz to i1
  br i1 %i.ala, label %"_ZN92_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$jiff..error..ErrorContext$LT$T$C$E$GT$$GT$7context17h3413f8e230dbeb3eE.exit705.thread", label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.alb = load ptr, ptr %i.di, align 8, !noalias !3765, !nonnull !11, !align !13, !noundef !11
  %i.alc = load i64, ptr %i.dj, align 8, !noalias !3765, !noundef !11
  store ptr %i.alb, ptr %i.cv, align 8, !alias.scope !3765
  store i64 %i.alc, ptr %i.cu, align 8, !alias.scope !3765
  call void @llvm.experimental.noalias.scope.decl(metadata !3766)
  %i.ald = load i64, ptr %i.cr, align 8, !alias.scope !3766, !noundef !11 ; 2 uses
  %i.ale = icmp eq i64 %i.ald, 0
  br i1 %i.ale, label %bb.bf, label %"_ZN92_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$jiff..error..ErrorContext$LT$T$C$E$GT$$GT$7context17h3413f8e230dbeb3eE.exit705", !prof !23

bb.bf:                                            ; preds = %bb.be
  call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 1, i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @236) #45, !noalias !3766
  unreachable

"_ZN92_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$jiff..error..ErrorContext$LT$T$C$E$GT$$GT$7context17h3413f8e230dbeb3eE.exit705.thread": ; preds = %bb.bd
  %i.alf = extractvalue { i64, ptr } %i.aky, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg), !noalias !3765
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf), !noalias !3767
  store i8 1, ptr %i.bf, align 8, !noalias !3767
  %.sroa.5.0..sroa_idx4.i702 = getelementptr inbounds nuw i8, ptr %i.bf, i64 1
  store i8 70, ptr %.sroa.5.0..sroa_idx4.i702, align 1
  %.sroa.61957.1..sroa.5.0..sroa_idx4.i702.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bf, i64 2
  store i8 0, ptr %.sroa.61957.1..sroa.5.0..sroa_idx4.i702.sroa_idx, align 2
  %i.alg = call fastcc noundef ptr @"_ZN92_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$jiff..error..ErrorContext$LT$T$C$E$GT$$GT$7context28_$u7b$$u7b$closure$u7d$$u7d$17h2bfe5a8911315e0bE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.bf, ptr noundef %i.alf), !noalias !3767
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !3767
  br label %_ZN4jiff3fmt7strtime5parse6Parser13parse_literal17hb325e140d66c33c2E.exit.thread

"_ZN92_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$jiff..error..ErrorContext$LT$T$C$E$GT$$GT$7context17h3413f8e230dbeb3eE.exit705": ; preds = %bb.be
  %i.alh = load ptr, ptr %0, align 8, !alias.scope !3766, !nonnull !11, !align !13, !noundef !11
  %i.ali = add i64 %i.ald, -1                     ; 2 uses
  %i.alj = getelementptr inbounds nuw i8, ptr %i.alh, i64 1
  store ptr %i.alj, ptr %0, align 8, !alias.scope !3766
  store i64 %i.ali, ptr %i.cr, align 8, !alias.scope !3766
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg), !noalias !3765
  br label %.backedge

bb.bg:                                            ; preds = %_ZN4jiff3fmt7strtime5parse6Parser1f17h80f5c541f9bc256eE.exit487
  %i.alk = call fastcc { i64, ptr } @_ZN4jiff3fmt7strtime5parse6Parser16parse_fractional17h321ef2673952ce01E(ptr noalias noundef align 8 dereferenceable(40) %0) ; 2 uses
  %i.all = extractvalue { i64, ptr } %i.alk, 0
  %i.alm = trunc nuw i64 %i.all to i1
  br i1 %i.alm, label %"_ZN92_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$jiff..error..ErrorContext$LT$T$C$E$GT$$GT$7context17h3413f8e230dbeb3eE.exit719.thread", label %.backedgethread-pre-split

"_ZN92_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$jiff..error..ErrorContext$LT$T$C$E$GT$$GT$7context17h3413f8e230dbeb3eE.exit719.thread": ; preds = %bb.bg
  %i.aln = extractvalue { i64, ptr } %i.alk, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be), !noalias !3768
  store i8 1, ptr %i.be, align 8, !noalias !3768
  %.sroa.5.0..sroa_idx4.i716 = getelementptr inbounds nuw i8, ptr %i.be, i64 1
  store i8 102, ptr %.sroa.5.0..sroa_idx4.i716, align 1
  %.sroa.61963.1..sroa.5.0..sroa_idx4.i716.sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 2
  store i8 0, ptr %.sroa.61963.1..sroa.5.0..sroa_idx4.i716.sroa_idx, align 2
  %i.alo = call fastcc noundef ptr @"_ZN92_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$jiff..error..ErrorContext$LT$T$C$E$GT$$GT$7context28_$u7b$$u7b$closure$u7d$$u7d$17h2bfe5a8911315e0bE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.be, ptr noundef %i.aln), !noalias !3768
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !3768
  br label %_ZN4jiff3fmt7strtime5parse6Parser13parse_literal17hb325e140d66c33c2E.exit.thread

bb.bh:                                            ; preds = %_ZN4jiff3fmt7strtime5parse6Parser1f17h80f5c541f9bc256eE.exit487
  call void @llvm.experimental.noalias.scope.decl(metadata !3769)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd)
  %.sroa.3.0.extract.shift.i721 = lshr i32 %.sroa.0.0.ph.i, 16
  %.sroa.3.0.extract.trunc.i722 = trunc nuw nsw i32 %.sroa.3.0.extract.shift.i721 to i8
  %i.alp = load ptr, ptr %i.cv, align 8, !alias.scope !3769, !nonnull !11, !align !13, !noundef !11 ; 5 uses
  %i.alq = load i64, ptr %i.cu, align 8, !alias.scope !3769, !noundef !11 ; 4 uses
  %i.alr = icmp eq i64 %i.alq, 0
  br i1 %i.alr, label %_ZN4jiff3fmt7strtime5parse19parse_optional_sign17hcc3eb4e7091cec06E.exit.i723, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.als = load i8, ptr %i.alp, align 1, !alias.scope !3770, !noalias !3769, !noundef !11
  switch i8 %i.als, label %_ZN4jiff3fmt7strtime5parse19parse_optional_sign17hcc3eb4e7091cec06E.exit.i723 [
    i8 45, label %bb.bj
    i8 43, label %bb.bk
  ]

bb.bj:                                            ; preds = %bb.bi
  %i.alt = add i64 %i.alq, -1
  %i.alu = getelementptr inbounds nuw i8, ptr %i.alp, i64 1
  br label %_ZN4jiff3fmt7strtime5parse19parse_optional_sign17hcc3eb4e7091cec06E.exit.i723

bb.bk:                                            ; preds = %bb.bi
  %i.alv = add i64 %i.alq, -1
  %i.alw = getelementptr inbounds nuw i8, ptr %i.alp, i64 1
  br label %_ZN4jiff3fmt7strtime5parse19parse_optional_sign17hcc3eb4e7091cec06E.exit.i723

_ZN4jiff3fmt7strtime5parse19parse_optional_sign17hcc3eb4e7091cec06E.exit.i723: ; preds = %bb.bk, %bb.bj, %bb.bi, %bb.bh
  %.sink5.i.i724 = phi i64 [ 1, %bb.bi ], [ 1, %bb.bk ], [ -1, %bb.bj ], [ 1, %bb.bh ]
  %.sink3.i.i725 = phi ptr [ %i.alp, %bb.bi ], [ %i.alw, %bb.bk ], [ %i.alu, %bb.bj ], [ %i.alp, %bb.bh ] ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN4jiff6shared5posix6Parser18parse_posix_offset17hf5c340e1058fe1a5E:bb.a
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
  store ptr @427, ptr %i.b, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 2, ptr %i.bn, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.bo, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.a, ptr %i.bp, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 1, ptr %i.bq, align 8
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @428) #45
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
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.e, i64 noundef %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @435) #45
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
  %.sroa.10.0.insert.ext.i135 = shl i32 %.sroa.10.0.i.ph, 8
  %.sroa.10.0.insert.shift.i136 = and i32 %.sroa.10.0.insert.ext.i135, 16776960
  %.sroa.455.0.insert.shift = zext nneg i32 %.sroa.10.0.insert.shift.i136 to i64
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
end_hunk_1
