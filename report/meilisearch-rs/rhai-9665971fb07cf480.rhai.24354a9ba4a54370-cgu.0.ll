Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/rhai-9665971fb07cf480.rhai.24354a9ba4a54370-cgu.0?download=true
inline.NumInlined: 22837
inline.NumDeleted: 6491
loop-unroll.NumCompletelyUnrolled: 109
loop-unroll.NumRuntimeUnrolled: 148
loop-unroll.NumUnrolled: 257
begin_hunk_0_@"_ZN4rhai6parser38_$LT$impl$u20$rhai..engine..Engine$GT$13parse_primary17h6ac24a27b0335decE":bb.a
  %i.bfk = load i64, ptr %i.ct, align 8, !alias.scope !40432, !noalias !40433, !noundef !55 ; 4 uses
  %i.bfl = icmp ugt i64 %i.bfk, 5
  %.sroa.gep = getelementptr inbounds nuw i8, ptr %i.ct, i64 16 ; 5 uses
  %.sink.i.i.i = call i64 @llvm.umax.i64(i64 %i.bfk, i64 5) ; 2 uses
  %.sroa.gep.val = load i64, ptr %.sroa.gep, align 8
  %i.bfm = select i1 %i.bfl, i64 %.sroa.gep.val, i64 %i.bfk ; 3 uses
  %i.bfn = sub i64 %.sink.i.i.i, %i.bfm
  %.not.i.i3863 = icmp ult i64 %i.bfn, %i.bfh
  br i1 %.not.i.i3863, label %bb.xn, label %_ZN8smallvec10infallible17hd7e1cfe47d8fef1dE.exit.i

bb.xn:                                            ; preds = %bb.xm
  %i.bfo = add i64 %i.bfm, %i.bfh                 ; 3 uses
  %i.bfp = icmp ult i64 %i.bfo, %i.bfm
  br i1 %i.bfp, label %"_ZN8smallvec17SmallVec$LT$A$GT$11try_reserve17h9c30060d24313a6aE.exit.thread.i", label %bb.xo, !prof !66

bb.xo:                                            ; preds = %bb.xn
  %i.bfq = icmp ult i64 %i.bfo, 2
  %i.bfr = add i64 %i.bfo, -1
  %i.bfs = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bfr, i1 true)
  %i.bft = lshr i64 -1, %i.bfs
  %.sroa.09.0.i.i = select i1 %i.bfq, i64 0, i64 %i.bft ; 2 uses
  %i.bfu = icmp eq i64 %.sroa.09.0.i.i, -1
  br i1 %i.bfu, label %"_ZN8smallvec17SmallVec$LT$A$GT$11try_reserve17h9c30060d24313a6aE.exit.thread.i", label %"_ZN8smallvec17SmallVec$LT$A$GT$11try_reserve17h9c30060d24313a6aE.exit.i", !prof !66

"_ZN8smallvec17SmallVec$LT$A$GT$11try_reserve17h9c30060d24313a6aE.exit.i": ; preds = %bb.xo
  %i.bfv = add nuw i64 %.sroa.09.0.i.i, 1
  %i.bfw = invoke fastcc { i64, i64 } @"_ZN8smallvec17SmallVec$LT$A$GT$8try_grow17h2399773c242ef9f5E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.ct, i64 noundef %i.bfv)
          to label %.noexc3870 unwind label %bb.xl ; 2 uses

.noexc3870:                                       ; preds = %"_ZN8smallvec17SmallVec$LT$A$GT$11try_reserve17h9c30060d24313a6aE.exit.i"
  %i.bfx = extractvalue { i64, i64 } %i.bfw, 0    ; 2 uses
  switch i64 %i.bfx, label %bb.xp [
    i64 -9223372036854775807, label %"_ZN8smallvec17SmallVec$LT$A$GT$11try_reserve17h9c30060d24313a6aE.exit._ZN8smallvec10infallible17hd7e1cfe47d8fef1dE.exit_crit_edge.i"
    i64 0, label %"_ZN8smallvec17SmallVec$LT$A$GT$11try_reserve17h9c30060d24313a6aE.exit.thread.i"
  ], !prof !88

"_ZN8smallvec17SmallVec$LT$A$GT$11try_reserve17h9c30060d24313a6aE.exit._ZN8smallvec10infallible17hd7e1cfe47d8fef1dE.exit_crit_edge.i": ; preds = %.noexc3870
  %.pre.i3869 = load i64, ptr %i.ct, align 8, !alias.scope !40434, !noalias !40435 ; 2 uses
  %.pre62.i = call i64 @llvm.umax.i64(i64 %.pre.i3869, i64 5)
  br label %_ZN8smallvec10infallible17hd7e1cfe47d8fef1dE.exit.i

bb.xp:                                            ; preds = %.noexc3870
  %i.bfy = extractvalue { i64, i64 } %i.bfw, 1
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef range(i64 0, -9223372036854775806) %i.bfx, i64 noundef %i.bfy) #70
          to label %.noexc3871 unwind label %bb.xl

.noexc3871:                                       ; preds = %bb.xp
  unreachable

"_ZN8smallvec17SmallVec$LT$A$GT$11try_reserve17h9c30060d24313a6aE.exit.thread.i": ; preds = %.noexc3870, %bb.xo, %bb.xn
  invoke void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @157, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3260) #70
          to label %.noexc3872 unwind label %bb.xl

.noexc3872:                                       ; preds = %"_ZN8smallvec17SmallVec$LT$A$GT$11try_reserve17h9c30060d24313a6aE.exit.thread.i"
  unreachable

_ZN8smallvec10infallible17hd7e1cfe47d8fef1dE.exit.i: ; preds = %"_ZN8smallvec17SmallVec$LT$A$GT$11try_reserve17h9c30060d24313a6aE.exit._ZN8smallvec10infallible17hd7e1cfe47d8fef1dE.exit_crit_edge.i", %bb.xm
  %.sink.i.pre-phi.i = phi i64 [ %.pre62.i, %"_ZN8smallvec17SmallVec$LT$A$GT$11try_reserve17h9c30060d24313a6aE.exit._ZN8smallvec10infallible17hd7e1cfe47d8fef1dE.exit_crit_edge.i" ], [ %.sink.i.i.i, %bb.xm ] ; 3 uses
  %i.bfz = phi i64 [ %.pre.i3869, %"_ZN8smallvec17SmallVec$LT$A$GT$11try_reserve17h9c30060d24313a6aE.exit._ZN8smallvec10infallible17hd7e1cfe47d8fef1dE.exit_crit_edge.i" ], [ %i.bfk, %bb.xm ]
  %i.bga = icmp ugt i64 %i.bfz, 5                 ; 2 uses
  %i.bgb = getelementptr inbounds nuw i8, ptr %i.ct, i64 8 ; 5 uses
  %i.bgc = load ptr, ptr %i.bgb, align 8, !alias.scope !40434, !noalias !40435, !nonnull !55
  %.sink10.i.i3864 = select i1 %i.bga, ptr %i.bgc, ptr %i.bgb
  %.sink9.idx.i.i.sroa.sel3990 = select i1 %i.bga, ptr %.sroa.gep, ptr %i.ct ; 3 uses
  %i.bgd = load i64, ptr %.sink9.idx.i.i.sroa.sel3990, align 8, !alias.scope !40431, !noundef !55 ; 3 uses
  %i.bge = icmp ult i64 %i.bgd, %.sink.i.pre-phi.i
  br i1 %i.bge, label %.lr.ph.i3867, label %._crit_edge.i3865

._crit_edge.i3865:                                ; preds = %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17had0f783ac155c4a8E.exit.i", %_ZN8smallvec10infallible17hd7e1cfe47d8fef1dE.exit.i
  %.sroa.0.0.lcssa.i = phi ptr [ %i.bfi, %_ZN8smallvec10infallible17hd7e1cfe47d8fef1dE.exit.i ], [ %i.bhb, %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17had0f783ac155c4a8E.exit.i" ] ; 2 uses
  %storemerge.lcssa.i = phi i64 [ %i.bgd, %_ZN8smallvec10infallible17hd7e1cfe47d8fef1dE.exit.i ], [ %.sink.i.pre-phi.i, %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17had0f783ac155c4a8E.exit.i" ]
  store i64 %storemerge.lcssa.i, ptr %.sink9.idx.i.i.sroa.sel3990, align 8, !alias.scope !40431
  %i.bgf = icmp eq ptr %.sroa.0.0.lcssa.i, %i.bfj
  br i1 %i.bgf, label %"_ZN133_$LT$smallvec..SmallVec$LT$A$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$$LT$A$u20$as$u20$smallvec..Array$GT$..Item$GT$$GT$6extend17hba6bd009f961bb7dE.exit", label %.lr.ph56.i

.lr.ph.i3867:                                     ; preds = %_ZN8smallvec10infallible17hd7e1cfe47d8fef1dE.exit.i, %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17had0f783ac155c4a8E.exit.i"
  %storemerge52.i = phi i64 [ %i.bhd, %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17had0f783ac155c4a8E.exit.i" ], [ %i.bgd, %_ZN8smallvec10infallible17hd7e1cfe47d8fef1dE.exit.i ] ; 3 uses
  %.sroa.0.051.i = phi ptr [ %i.bhb, %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17had0f783ac155c4a8E.exit.i" ], [ %i.bfi, %_ZN8smallvec10infallible17hd7e1cfe47d8fef1dE.exit.i ] ; 3 uses
  %i.bgg = icmp eq ptr %.sroa.0.051.i, %i.bfj
  br i1 %i.bgg, label %bb.xy, label %bb.xq

bb.xq:                                            ; preds = %.lr.ph.i3867
  %.val.i.i3868 = load ptr, ptr %.sroa.0.051.i, align 8, !noalias !40436, !nonnull !55, !noundef !55 ; 2 uses
  %i.bgh = atomicrmw add ptr %.val.i.i3868, i64 1 monotonic, align 8, !noalias !40436
  %i.bgi = icmp slt i64 %i.bgh, 0
  br i1 %i.bgi, label %bb.xr, label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17had0f783ac155c4a8E.exit.i"

bb.xr:                                            ; preds = %bb.xq
  call void @llvm.trap()
  unreachable

.lr.ph56.i:                                       ; preds = %._crit_edge.i3865, %"_ZN8smallvec17SmallVec$LT$A$GT$4push17h23c7ebb6e95c58d1E.exit.i"
  %.sroa.033.054.i = phi ptr [ %i.bgj, %"_ZN8smallvec17SmallVec$LT$A$GT$4push17h23c7ebb6e95c58d1E.exit.i" ], [ %.sroa.0.0.lcssa.i, %._crit_edge.i3865 ] ; 2 uses
  %i.bgj = getelementptr inbounds nuw i8, ptr %.sroa.033.054.i, i64 16 ; 2 uses
  %.val.i16.i = load ptr, ptr %.sroa.033.054.i, align 8, !noalias !40437, !nonnull !55, !noundef !55 ; 4 uses
  %i.bgk = atomicrmw add ptr %.val.i16.i, i64 1 monotonic, align 8, !noalias !40437
  %i.bgl = icmp slt i64 %i.bgk, 0
  br i1 %i.bgl, label %bb.xs, label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17had0f783ac155c4a8E.exit18.i"

bb.xs:                                            ; preds = %.lr.ph56.i
  call void @llvm.trap()
  unreachable

"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17had0f783ac155c4a8E.exit18.i": ; preds = %.lr.ph56.i
  call void @llvm.experimental.noalias.scope.decl(metadata !40438)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !40431
  store ptr %.val.i16.i, ptr %i.p, align 8, !noalias !40439
  %i.bgm = load i64, ptr %i.ct, align 8, !alias.scope !40440, !noalias !40441, !noundef !55 ; 2 uses
  %i.bgn = icmp ugt i64 %i.bgm, 5                 ; 2 uses
  %i.bgo = load ptr, ptr %i.bgb, align 8, !alias.scope !40440, !noalias !40441, !nonnull !55
  %.sink10.i.i.i = select i1 %i.bgn, ptr %i.bgo, ptr %i.bgb
  %.sink9.idx.i.i19.i.sroa.sel = select i1 %i.bgn, ptr %.sroa.gep, ptr %i.ct ; 2 uses
  %.sink.i.i21.i = call i64 @llvm.umax.i64(i64 %i.bgm, i64 5)
  %i.bgp = load i64, ptr %.sink9.idx.i.i19.i.sroa.sel, align 8, !alias.scope !40439, !noundef !55 ; 2 uses
  %i.bgq = icmp eq i64 %i.bgp, %.sink.i.i21.i
  br i1 %i.bgq, label %bb.xv, label %"_ZN8smallvec17SmallVec$LT$A$GT$4push17h23c7ebb6e95c58d1E.exit.i", !prof !66

bb.xt:                                            ; preds = %bb.xv
  %i.bgr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bgs = atomicrmw sub ptr %.val.i16.i, i64 1 release, align 8, !noalias !40442
  %i.bgt = icmp eq i64 %i.bgs, 1
  br i1 %i.bgt, label %bb.xu, label %.body3873

bb.xu:                                            ; preds = %bb.xt
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h9676a7fc3180fc2bE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.p)
          to label %.body3873 unwind label %bb.xx, !noalias !40439

bb.xv:                                            ; preds = %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17had0f783ac155c4a8E.exit18.i"
  invoke fastcc void @"_ZN8smallvec17SmallVec$LT$A$GT$21reserve_one_unchecked17h38ba8ffbbb2a32d4E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.ct)
          to label %bb.xw unwind label %bb.xt

bb.xw:                                            ; preds = %bb.xv
  %i.bgu = load ptr, ptr %i.bgb, align 8, !alias.scope !40439, !nonnull !55, !noundef !55
  %.pre.i.i = load i64, ptr %.sroa.gep, align 8, !alias.scope !40439
  br label %"_ZN8smallvec17SmallVec$LT$A$GT$4push17h23c7ebb6e95c58d1E.exit.i"

bb.xx:                                            ; preds = %bb.xu
  %i.bgv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73, !noalias !40439
  unreachable

"_ZN8smallvec17SmallVec$LT$A$GT$4push17h23c7ebb6e95c58d1E.exit.i": ; preds = %bb.xw, %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17had0f783ac155c4a8E.exit18.i"
  %i.bgw = phi i64 [ %.pre.i.i, %bb.xw ], [ %i.bgp, %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17had0f783ac155c4a8E.exit18.i" ]
  %.sroa.01.0.i.i3866 = phi ptr [ %.sroa.gep, %bb.xw ], [ %.sink9.idx.i.i19.i.sroa.sel, %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17had0f783ac155c4a8E.exit18.i" ] ; 2 uses
  %.sroa.0.0.i22.i = phi ptr [ %i.bgu, %bb.xw ], [ %.sink10.i.i.i, %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17had0f783ac155c4a8E.exit18.i" ]
  %i.bgx = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i22.i, i64 %i.bgw
  store ptr %.val.i16.i, ptr %i.bgx, align 8
  %i.bgy = load i64, ptr %.sroa.01.0.i.i3866, align 8, !alias.scope !40439, !noundef !55
  %i.bgz = add i64 %i.bgy, 1
  store i64 %i.bgz, ptr %.sroa.01.0.i.i3866, align 8, !alias.scope !40439
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !40431
  %i.bha = icmp eq ptr %i.bgj, %i.bfj
  br i1 %i.bha, label %"_ZN133_$LT$smallvec..SmallVec$LT$A$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$$LT$A$u20$as$u20$smallvec..Array$GT$..Item$GT$$GT$6extend17hba6bd009f961bb7dE.exit", label %.lr.ph56.i

"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17had0f783ac155c4a8E.exit.i": ; preds = %bb.xq
  %i.bhb = getelementptr inbounds nuw i8, ptr %.sroa.0.051.i, i64 16 ; 2 uses
  %i.bhc = getelementptr inbounds nuw [8 x i8], ptr %.sink10.i.i3864, i64 %storemerge52.i
  store ptr %.val.i.i3868, ptr %i.bhc, align 8
  %i.bhd = add i64 %storemerge52.i, 1             ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bhd, %.sink.i.pre-phi.i
  br i1 %exitcond.not.i, label %._crit_edge.i3865, label %.lr.ph.i3867

bb.xy:                                            ; preds = %.lr.ph.i3867
  store i64 %storemerge52.i, ptr %.sink9.idx.i.i.sroa.sel3990, align 8, !alias.scope !40431
  br label %"_ZN133_$LT$smallvec..SmallVec$LT$A$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$$LT$A$u20$as$u20$smallvec..Array$GT$..Item$GT$$GT$6extend17hba6bd009f961bb7dE.exit"

.thread2183.loopexit:                             ; preds = %.lr.ph.i3897, %bb.yu
  %lpad.loopexit4039 = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr67drop_in_place$LT$rhai..types..immutable_string..ImmutableString$GT$17hc11d0e3fcce6a14cE.exit.thread"

.thread2183.loopexit.split-lp.loopexit:           ; preds = %bb.yj
  %lpad.loopexit4042 = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr67drop_in_place$LT$rhai..types..immutable_string..ImmutableString$GT$17hc11d0e3fcce6a14cE.exit.thread"

.thread2183.loopexit.split-lp.loopexit.split-lp:  ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8for_each17hdee6d6d8a95ab473E.exit", %bb.zg, %bb.yr
  %lpad.loopexit.split-lp4043 = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr67drop_in_place$LT$rhai..types..immutable_string..ImmutableString$GT$17hc11d0e3fcce6a14cE.exit.thread"

"_ZN133_$LT$smallvec..SmallVec$LT$A$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$$LT$A$u20$as$u20$smallvec..Array$GT$..Item$GT$$GT$6extend17hba6bd009f961bb7dE.exit": ; preds = %"_ZN8smallvec17SmallVec$LT$A$GT$4push17h23c7ebb6e95c58d1E.exit.i", %bb.xy, %._crit_edge.i3865
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.cn, ptr noundef nonnull align 8 dereferenceable(48) %i.ct, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ct), !noalias !40407
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cu), !noalias !40407
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cv), !noalias !40407
  store i64 %i.bes, ptr %i.cv, align 8, !noalias !40407
  %i.bhe = load i64, ptr %i.ed, align 8, !alias.scope !40443, !noalias !40444, !noundef !55 ; 2 uses
  %i.bhf = icmp ugt i64 %i.bhe, 3                 ; 2 uses
  %i.bhg = load ptr, ptr %i.bev, align 8, !alias.scope !40443, !noalias !40444, !nonnull !55
  %i.bhh = load i64, ptr %i.bew, align 8, !alias.scope !40443, !noalias !40444
  %.sink10.i.i = select i1 %i.bhf, i64 %i.bhh, i64 %i.bhe ; 5 uses
  %.sink9.idx.i.i.sroa.sel = select i1 %i.bhf, ptr %i.bew, ptr %i.ed
  store i64 0, ptr %.sink9.idx.i.i.sroa.sel, align 8, !alias.scope !40445, !noalias !40446
  %i.bhi = load i64, ptr %i.ed, align 8, !alias.scope !40447, !noalias !40448, !noundef !55
  %i.bhj = icmp ugt i64 %i.bhi, 3
  %.sink11.i26.i = select i1 %i.bhj, ptr %i.bhg, ptr %i.bev ; 8 uses
  %.sink11.i26.i7125 = ptrtoaddr ptr %.sink11.i26.i to i64
  %i.bhk = getelementptr inbounds nuw [8 x i8], ptr %.sink11.i26.i, i64 %.sink10.i.i ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !40449)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !40450
  store ptr %.sink11.i26.i, ptr %i.o, align 8, !alias.scope !40451, !noalias !40449
  %.sroa.44013.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %i.bhk, ptr %.sroa.44013.0..sroa_idx, align 8, !alias.scope !40451, !noalias !40449
  %.sroa.54014.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store ptr %i.ed, ptr %.sroa.54014.0..sroa_idx, align 8, !alias.scope !40451, !noalias !40449
  %.sroa.64015.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store i64 %.sink10.i.i, ptr %.sroa.64015.0..sroa_idx, align 8, !alias.scope !40451, !noalias !40449
  %.sroa.74016.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  store i64 0, ptr %.sroa.74016.0..sroa_idx, align 8, !alias.scope !40451, !noalias !40449
  %i.bhl = load i64, ptr %i.cn, align 8, !alias.scope !40452, !noalias !40453, !noundef !55 ; 4 uses
  %i.bhm = icmp ugt i64 %i.bhl, 5
  %.sroa.gep3994 = getelementptr inbounds nuw i8, ptr %i.cn, i64 16 ; 6 uses
  %.sink.i.i.i3877 = call i64 @llvm.umax.i64(i64 %i.bhl, i64 5) ; 2 uses
  %.sroa.gep3994.val = load i64, ptr %.sroa.gep3994, align 8
  %i.bhn = select i1 %i.bhm, i64 %.sroa.gep3994.val, i64 %i.bhl ; 3 uses
  %i.bho = sub i64 %.sink.i.i.i3877, %i.bhn
  %.not.i.i3878 = icmp ult i64 %i.bho, %.sink10.i.i
  br i1 %.not.i.i3878, label %bb.xz, label %.thread57.i

.thread51.i:                                      ; preds = %.thread54.i, %bb.yd, %bb.yb
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr111drop_in_place$LT$smallvec..Drain$LT$$u5b$rhai..types..immutable_string..ImmutableString$u3b$$u20$3$u5d$$GT$$GT$17hf8348405e591de03E"(ptr noalias noundef align 8 dereferenceable(40) %i.o) #72
          to label %"_ZN4core3ptr67drop_in_place$LT$rhai..types..immutable_string..ImmutableString$GT$17hc11d0e3fcce6a14cE.exit.thread" unwind label %bb.yn, !noalias !40450

bb.xz:                                            ; preds = %"_ZN133_$LT$smallvec..SmallVec$LT$A$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$$LT$A$u20$as$u20$smallvec..Array$GT$..Item$GT$$GT$6extend17hba6bd009f961bb7dE.exit"
  %i.bhp = add i64 %i.bhn, %.sink10.i.i           ; 3 uses
  %i.bhq = icmp ult i64 %i.bhp, %i.bhn
  br i1 %i.bhq, label %.thread54.i, label %bb.ya, !prof !66

bb.ya:                                            ; preds = %bb.xz
  %i.bhr = icmp ult i64 %i.bhp, 2
  %i.bhs = add i64 %i.bhp, -1
  %i.bht = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bhs, i1 true)
  %i.bhu = lshr i64 -1, %i.bht
  %.sroa.09.0.i.i3893 = select i1 %i.bhr, i64 0, i64 %i.bhu ; 2 uses
  %i.bhv = icmp eq i64 %.sroa.09.0.i.i3893, -1
  br i1 %i.bhv, label %.thread54.i, label %bb.yb, !prof !66

bb.yb:                                            ; preds = %bb.ya
  %i.bhw = add nuw i64 %.sroa.09.0.i.i3893, 1
  %i.bhx = invoke fastcc { i64, i64 } @"_ZN8smallvec17SmallVec$LT$A$GT$8try_grow17h2399773c242ef9f5E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.cn, i64 noundef %i.bhw)
          to label %bb.yc unwind label %.thread51.i, !noalias !40454 ; 2 uses

bb.yc:                                            ; preds = %bb.yb
  %i.bhy = extractvalue { i64, i64 } %i.bhx, 0    ; 2 uses
  switch i64 %i.bhy, label %bb.yd [
    i64 -9223372036854775807, label %..thread57_crit_edge.i
    i64 0, label %.thread54.i
  ], !prof !89

..thread57_crit_edge.i:                           ; preds = %bb.yc
  %.pre.i3894 = load i64, ptr %i.cn, align 8, !alias.scope !40455, !noalias !40456 ; 2 uses
  %.pre90.i = call i64 @llvm.umax.i64(i64 %.pre.i3894, i64 5)
  br label %.thread57.i

bb.yd:                                            ; preds = %bb.yc
  %i.bhz = extractvalue { i64, i64 } %i.bhx, 1
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef range(i64 0, -9223372036854775806) %i.bhy, i64 noundef %i.bhz) #70
          to label %.noexc15.i unwind label %.thread51.i, !noalias !40450

.noexc15.i:                                       ; preds = %bb.yd
  unreachable

.thread54.i:                                      ; preds = %bb.yc, %bb.ya, %bb.xz
  invoke void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @157, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3260) #70
          to label %.noexc16.i unwind label %.thread51.i, !noalias !40450

.noexc16.i:                                       ; preds = %.thread54.i
  unreachable

.thread57.i:                                      ; preds = %..thread57_crit_edge.i, %"_ZN133_$LT$smallvec..SmallVec$LT$A$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$$LT$A$u20$as$u20$smallvec..Array$GT$..Item$GT$$GT$6extend17hba6bd009f961bb7dE.exit"
  %.sink.i.pre-phi.i3879 = phi i64 [ %.pre90.i, %..thread57_crit_edge.i ], [ %.sink.i.i.i3877, %"_ZN133_$LT$smallvec..SmallVec$LT$A$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$$LT$A$u20$as$u20$smallvec..Array$GT$..Item$GT$$GT$6extend17hba6bd009f961bb7dE.exit" ] ; 4 uses
  %i.bia = phi i64 [ %.pre.i3894, %..thread57_crit_edge.i ], [ %i.bhl, %"_ZN133_$LT$smallvec..SmallVec$LT$A$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$$LT$A$u20$as$u20$smallvec..Array$GT$..Item$GT$$GT$6extend17hba6bd009f961bb7dE.exit" ]
  %i.bib = icmp ugt i64 %i.bia, 5                 ; 2 uses
  %i.bic = getelementptr inbounds nuw i8, ptr %i.cn, i64 8 ; 7 uses
  %i.bid = load ptr, ptr %i.bic, align 8, !alias.scope !40455, !noalias !40456, !nonnull !55
  %.sink10.i.i3880 = select i1 %i.bib, ptr %i.bid, ptr %i.bic ; 3 uses
  %.sink10.i.i38807124 = ptrtoaddr ptr %.sink10.i.i3880 to i64
  %.sink9.idx.i.i3881.sroa.sel = select i1 %i.bib, ptr %.sroa.gep3994, ptr %i.cn ; 3 uses
  %i.bie = load i64, ptr %.sink9.idx.i.i3881.sroa.sel, align 8, !alias.scope !40449, !noalias !40454, !noundef !55 ; 8 uses
  %i.bif = icmp ult i64 %i.bie, %.sink.i.pre-phi.i3879
  br i1 %i.bif, label %.lr.ph.i3891.preheader, label %._crit_edge.i3883

.lr.ph.i3891.preheader:                           ; preds = %.thread57.i
  %i.big = and i64 %.sink10.i.i, 2305843009213693951
  %i.bih = xor i64 %i.bie, -1
  %i.bii = add i64 %.sink.i.pre-phi.i3879, %i.bih
  %i.bij = call i64 @llvm.umin.i64(i64 %i.big, i64 %i.bii) ; 2 uses
  %i.bik = add nuw nsw i64 %i.bij, 1              ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.bij, 10
  br i1 %min.iters.check, label %.lr.ph.i3891.preheader7467, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i3891.preheader
  %i.bil = shl i64 %i.bie, 3
  %i.bim = add i64 %i.bil, %.sink10.i.i38807124
  %i.bin = sub i64 %.sink11.i26.i7125, %i.bim
  %diff.check = icmp ugt i64 %i.bin, -32
  br i1 %diff.check, label %.lr.ph.i3891.preheader7467, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.bio = and i64 %i.bik, 3                      ; 2 uses
  %i.bip = icmp eq i64 %i.bio, 0
  %i.biq = select i1 %i.bip, i64 4, i64 %i.bio
  %n.vec = sub nsw i64 %i.bik, %i.biq             ; 3 uses
  %i.bir = add i64 %i.bie, %n.vec
  %i.bis = shl i64 %n.vec, 3
  %i.bit = getelementptr i8, ptr %.sink11.i26.i, i64 %i.bis
  %i.biu = getelementptr [8 x i8], ptr %.sink10.i.i3880, i64 %i.bie
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.biv = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %.sink11.i26.i, i64 %i.biv ; 2 uses
  %i.biw = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <2 x ptr>, ptr %next.gep, align 8, !noalias !40457
  %wide.load7126 = load <2 x ptr>, ptr %i.biw, align 8, !noalias !40457
  %i.bix = getelementptr [8 x i8], ptr %i.biu, i64 %index ; 2 uses
  %i.biy = getelementptr inbounds nuw i8, ptr %i.bix, i64 16
  store <2 x ptr> %wide.load, ptr %i.bix, align 8, !noalias !40454
  store <2 x ptr> %wide.load7126, ptr %i.biy, align 8, !noalias !40454
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.biz = icmp eq i64 %index.next, %n.vec
  br i1 %i.biz, label %.lr.ph.i3891.preheader7467, label %vector.body, !llvm.loop !40016

.lr.ph.i3891.preheader7467:                       ; preds = %vector.body, %vector.memcheck, %.lr.ph.i3891.preheader
  %storemerge69.i.ph = phi i64 [ %i.bie, %vector.memcheck ], [ %i.bie, %.lr.ph.i3891.preheader ], [ %i.bir, %vector.body ]
  %.ph7468 = phi ptr [ %.sink11.i26.i, %vector.memcheck ], [ %.sink11.i26.i, %.lr.ph.i3891.preheader ], [ %i.bit, %vector.body ]
  br label %.lr.ph.i3891

.lr.ph.i3891:                                     ; preds = %.lr.ph.i3891.preheader7467, %bb.yo
  %storemerge69.i = phi i64 [ %i.bla, %bb.yo ], [ %storemerge69.i.ph, %.lr.ph.i3891.preheader7467 ] ; 3 uses
  %i.bja = phi ptr [ %i.bkx, %bb.yo ], [ %.ph7468, %.lr.ph.i3891.preheader7467 ] ; 3 uses
  %i.bjb = icmp eq ptr %i.bja, %i.bhk
  br i1 %i.bjb, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17h52688791bd686912E.exit.i.i28.i, label %bb.yo

._crit_edge.i3883:                                ; preds = %bb.yo, %.thread57.i
  %.lcssa67.i = phi ptr [ %.sink11.i26.i, %.thread57.i ], [ %i.bkx, %bb.yo ]
  %storemerge.lcssa.i3884 = phi i64 [ %i.bie, %.thread57.i ], [ %.sink.i.pre-phi.i3879, %bb.yo ]
  store ptr %.lcssa67.i, ptr %i.o, align 8, !noalias !40450
  store i64 %storemerge.lcssa.i3884, ptr %.sink9.idx.i.i3881.sroa.sel, align 8, !alias.scope !40449, !noalias !40454
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !40450
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.n, ptr noundef nonnull align 8 dereferenceable(40) %i.o, i64 40, i1 false), !noalias !40450
  %i.bjc = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.bjd = load ptr, ptr %i.bjc, align 8, !alias.scope !40458, !noalias !40450, !nonnull !55, !noundef !55 ; 4 uses
  %.promoted71.i = load ptr, ptr %i.n, align 8, !alias.scope !40458, !noalias !40450 ; 3 uses
  %i.bje = icmp eq ptr %.promoted71.i, %i.bjd
  br i1 %i.bje, label %._crit_edge76.i, label %.lr.ph75.i

.body.i3889:                                      ; preds = %bb.yf, %bb.ye
  invoke fastcc void @"_ZN4core3ptr111drop_in_place$LT$smallvec..Drain$LT$$u5b$rhai..types..immutable_string..ImmutableString$u3b$$u20$3$u5d$$GT$$GT$17hf8348405e591de03E"(ptr noalias noundef align 8 dereferenceable(40) %i.n) #72
          to label %"_ZN4core3ptr67drop_in_place$LT$rhai..types..immutable_string..ImmutableString$GT$17hc11d0e3fcce6a14cE.exit.thread" unwind label %bb.yn, !noalias !40450

.lr.ph75.i:                                       ; preds = %._crit_edge.i3883, %"_ZN8smallvec17SmallVec$LT$A$GT$4push17h23c7ebb6e95c58d1E.exit.i3886"
  %i.bjf = phi ptr [ %i.bjg, %"_ZN8smallvec17SmallVec$LT$A$GT$4push17h23c7ebb6e95c58d1E.exit.i3886" ], [ %.promoted71.i, %._crit_edge.i3883 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !40458)
  %i.bjg = getelementptr inbounds nuw i8, ptr %i.bjf, i64 8 ; 4 uses
  %i.bjh = load ptr, ptr %i.bjf, align 8, !noalias !40459, !nonnull !55, !noundef !55 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !40460)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !40450
  store ptr %i.bjh, ptr %i.m, align 8, !noalias !40461
  %i.bji = load i64, ptr %i.cn, align 8, !alias.scope !40462, !noalias !40463, !noundef !55 ; 2 uses
  %i.bjj = icmp ugt i64 %i.bji, 5                 ; 2 uses
  %i.bjk = load ptr, ptr %i.bic, align 8, !alias.scope !40462, !noalias !40463, !nonnull !55
  %.sink10.i.i.i3885 = select i1 %i.bjj, ptr %i.bjk, ptr %i.bic
  %.sink9.idx.i.i20.i.sroa.sel = select i1 %i.bjj, ptr %.sroa.gep3994, ptr %i.cn ; 2 uses
  %.sink.i.i22.i = call i64 @llvm.umax.i64(i64 %i.bji, i64 5)
  %i.bjl = load i64, ptr %.sink9.idx.i.i20.i.sroa.sel, align 8, !alias.scope !40464, !noalias !40454, !noundef !55 ; 2 uses
  %i.bjm = icmp eq i64 %i.bjl, %.sink.i.i22.i
  br i1 %i.bjm, label %bb.yg, label %"_ZN8smallvec17SmallVec$LT$A$GT$4push17h23c7ebb6e95c58d1E.exit.i3886", !prof !66

bb.ye:                                            ; preds = %bb.yg
  %i.bjn = landingpad { ptr, i32 }
          cleanup
  store ptr %i.bjg, ptr %i.n, align 8, !noalias !40450
  %i.bjo = atomicrmw sub ptr %i.bjh, i64 1 release, align 8, !noalias !40465
  %i.bjp = icmp eq i64 %i.bjo, 1
  br i1 %i.bjp, label %bb.yf, label %.body.i3889

bb.yf:                                            ; preds = %bb.ye
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h9676a7fc3180fc2bE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.m)
          to label %.body.i3889 unwind label %bb.yi, !noalias !40461

bb.yg:                                            ; preds = %.lr.ph75.i
  invoke fastcc void @"_ZN8smallvec17SmallVec$LT$A$GT$21reserve_one_unchecked17h38ba8ffbbb2a32d4E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.cn)
          to label %bb.yh unwind label %bb.ye, !noalias !40454

bb.yh:                                            ; preds = %bb.yg
  %i.bjq = load ptr, ptr %i.bic, align 8, !alias.scope !40464, !noalias !40454, !nonnull !55, !noundef !55
  %.pre.i.i3890 = load i64, ptr %.sroa.gep3994, align 8, !alias.scope !40464, !noalias !40454
  br label %"_ZN8smallvec17SmallVec$LT$A$GT$4push17h23c7ebb6e95c58d1E.exit.i3886"

bb.yi:                                            ; preds = %bb.yf
  %i.bjr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73, !noalias !40461
  unreachable

"_ZN8smallvec17SmallVec$LT$A$GT$4push17h23c7ebb6e95c58d1E.exit.i3886": ; preds = %bb.yh, %.lr.ph75.i
  %i.bjs = phi i64 [ %.pre.i.i3890, %bb.yh ], [ %i.bjl, %.lr.ph75.i ]
  %.sroa.01.0.i.i3887 = phi ptr [ %.sroa.gep3994, %bb.yh ], [ %.sink9.idx.i.i20.i.sroa.sel, %.lr.ph75.i ] ; 2 uses
  %.sroa.0.0.i23.i = phi ptr [ %i.bjq, %bb.yh ], [ %.sink10.i.i.i3885, %.lr.ph75.i ]
  %i.bjt = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i23.i, i64 %i.bjs
  store ptr %i.bjh, ptr %i.bjt, align 8, !noalias !40454
  %i.bju = load i64, ptr %.sroa.01.0.i.i3887, align 8, !alias.scope !40464, !noalias !40454, !noundef !55
  %i.bjv = add i64 %i.bju, 1
  store i64 %i.bjv, ptr %.sroa.01.0.i.i3887, align 8, !alias.scope !40464, !noalias !40454
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !40450
  %i.bjw = icmp eq ptr %i.bjg, %i.bjd
  br i1 %i.bjw, label %._crit_edge76.i, label %.lr.ph75.i

._crit_edge76.i:                                  ; preds = %"_ZN8smallvec17SmallVec$LT$A$GT$4push17h23c7ebb6e95c58d1E.exit.i3886", %._crit_edge.i3883
  %.lcssa72.i = phi ptr [ %.promoted71.i, %._crit_edge.i3883 ], [ %i.bjg, %"_ZN8smallvec17SmallVec$LT$A$GT$4push17h23c7ebb6e95c58d1E.exit.i3886" ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !40466)
  call void @llvm.experimental.noalias.scope.decl(metadata !40467)
  %i.bjx = icmp eq ptr %.lcssa72.i, %i.bjd
  br i1 %i.bjx, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17h52688791bd686912E.exit.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %._crit_edge76.i, %"_ZN4core3ops9try_trait26NeverShortCircuit$LT$T$GT$10wrap_mut_228_$u7b$$u7b$closure$u7d$$u7d$17hd1cbc9824346d639E.exit.i.i.i.i"
  %i.bjy = phi ptr [ %i.bjz, %"_ZN4core3ops9try_trait26NeverShortCircuit$LT$T$GT$10wrap_mut_228_$u7b$$u7b$closure$u7d$$u7d$17hd1cbc9824346d639E.exit.i.i.i.i" ], [ %.lcssa72.i, %._crit_edge76.i ] ; 2 uses
  %i.bjz = getelementptr inbounds nuw i8, ptr %i.bjy, i64 8 ; 2 uses
  %i.bka = load ptr, ptr %i.bjy, align 8, !noalias !40468, !nonnull !55, !noundef !55 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !40469
  store ptr %i.bka, ptr %i.l, align 8, !noalias !40469
  %i.bkb = atomicrmw sub ptr %i.bka, i64 1 release, align 8, !noalias !40470
  %i.bkc = icmp eq i64 %i.bkb, 1
  br i1 %i.bkc, label %bb.yj, label %"_ZN4core3ops9try_trait26NeverShortCircuit$LT$T$GT$10wrap_mut_228_$u7b$$u7b$closure$u7d$$u7d$17hd1cbc9824346d639E.exit.i.i.i.i"

bb.yj:                                            ; preds = %.lr.ph.i.i.i.i
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h9676a7fc3180fc2bE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.l)
          to label %"_ZN4core3ops9try_trait26NeverShortCircuit$LT$T$GT$10wrap_mut_228_$u7b$$u7b$closure$u7d$$u7d$17hd1cbc9824346d639E.exit.i.i.i.i" unwind label %.thread2183.loopexit.split-lp.loopexit

"_ZN4core3ops9try_trait26NeverShortCircuit$LT$T$GT$10wrap_mut_228_$u7b$$u7b$closure$u7d$$u7d$17hd1cbc9824346d639E.exit.i.i.i.i": ; preds = %bb.yj, %.lr.ph.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !40469
  %i.bkd = icmp eq ptr %i.bjz, %i.bjd
  br i1 %i.bkd, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17h52688791bd686912E.exit.i.i.i, label %.lr.ph.i.i.i.i

_ZN4core4iter6traits8iterator8Iterator8try_fold17h52688791bd686912E.exit.i.i.i: ; preds = %"_ZN4core3ops9try_trait26NeverShortCircuit$LT$T$GT$10wrap_mut_228_$u7b$$u7b$closure$u7d$$u7d$17hd1cbc9824346d639E.exit.i.i.i.i", %._crit_edge76.i
  %i.bke = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.bkf = load i64, ptr %i.bke, align 8, !alias.scope !40471, !noalias !40450, !noundef !55 ; 3 uses
  %.not.i.i.i3888 = icmp eq i64 %i.bkf, 0
  br i1 %.not.i.i.i3888, label %"_ZN4core3ptr111drop_in_place$LT$smallvec..Drain$LT$$u5b$rhai..types..immutable_string..ImmutableString$u3b$$u20$3$u5d$$GT$$GT$17hf8348405e591de03E.exit.i", label %bb.yk

bb.yk:                                            ; preds = %_ZN4core4iter6traits8iterator8Iterator8try_fold17h52688791bd686912E.exit.i.i.i
  %i.bkg = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.bkh = load ptr, ptr %i.bkg, align 8, !alias.scope !40471, !noalias !40450, !nonnull !55, !noundef !55 ; 5 uses
  %i.bki = load i64, ptr %i.bkh, align 8, !alias.scope !40472, !noalias !40473, !noundef !55 ; 3 uses
  %i.bkj = icmp ugt i64 %i.bki, 3                 ; 2 uses
  %i.bkk = getelementptr inbounds nuw i8, ptr %i.bkh, i64 16
  %i.bkl = load i64, ptr %i.bkk, align 8, !alias.scope !40472, !noalias !40473
  %.sink10.i.i.i.i = select i1 %i.bkj, i64 %i.bkl, i64 %i.bki ; 3 uses
  %i.bkm = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.bkn = load i64, ptr %i.bkm, align 8, !alias.scope !40471, !noalias !40450, !noundef !55 ; 2 uses
  %.not2.i.i.i = icmp eq i64 %i.bkn, %.sink10.i.i.i.i
  br i1 %.not2.i.i.i, label %bb.yl, label %bb.ym

bb.yl:                                            ; preds = %bb.ym, %bb.yk
  %i.bko = phi i64 [ %.pre.i.i.i, %bb.ym ], [ %i.bki, %bb.yk ]
  %i.bkp = add i64 %.sink10.i.i.i.i, %i.bkf
  %i.bkq = icmp ugt i64 %i.bko, 3
  %.sink9.idx.i.i.i.i = select i1 %i.bkq, i64 16, i64 0
  %.sink9.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bkh, i64 %.sink9.idx.i.i.i.i
  store i64 %i.bkp, ptr %.sink9.i.i.i.i, align 8, !noalias !40474
  br label %"_ZN4core3ptr111drop_in_place$LT$smallvec..Drain$LT$$u5b$rhai..types..immutable_string..ImmutableString$u3b$$u20$3$u5d$$GT$$GT$17hf8348405e591de03E.exit.i"

bb.ym:                                            ; preds = %bb.yk
  %i.bkr = getelementptr inbounds nuw i8, ptr %i.bkh, i64 8 ; 2 uses
  %i.bks = load ptr, ptr %i.bkr, align 8, !alias.scope !40472, !noalias !40473, !nonnull !55
  %.sink10.i5.i.i.i = select i1 %i.bkj, ptr %i.bks, ptr %i.bkr ; 2 uses
  %i.bkt = getelementptr inbounds nuw [8 x i8], ptr %.sink10.i5.i.i.i, i64 %i.bkn
  %i.bku = getelementptr inbounds nuw [8 x i8], ptr %.sink10.i5.i.i.i, i64 %.sink10.i.i.i.i
  %i.bkv = shl i64 %i.bkf, 3
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bku, ptr nonnull align 8 %i.bkt, i64 %i.bkv, i1 false), !noalias !40474
  %.pre.i.i.i = load i64, ptr %i.bkh, align 8, !alias.scope !40475, !noalias !40476
  br label %bb.yl

"_ZN4core3ptr111drop_in_place$LT$smallvec..Drain$LT$$u5b$rhai..types..immutable_string..ImmutableString$u3b$$u20$3$u5d$$GT$$GT$17hf8348405e591de03E.exit.i": ; preds = %bb.yl, %_ZN4core4iter6traits8iterator8Iterator8try_fold17h52688791bd686912E.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !40450
  br label %.noexc.i879

bb.yn:                                            ; preds = %.body.i3889, %.thread51.i
  %i.bkw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73, !noalias !40450
  unreachable

bb.yo:                                            ; preds = %.lr.ph.i3891
  %i.bkx = getelementptr inbounds nuw i8, ptr %i.bja, i64 8 ; 2 uses
  %i.bky = load ptr, ptr %i.bja, align 8, !noalias !40457, !nonnull !55, !noundef !55
  %i.bkz = getelementptr inbounds nuw [8 x i8], ptr %.sink10.i.i3880, i64 %storemerge69.i
  store ptr %i.bky, ptr %i.bkz, align 8, !noalias !40454
  %i.bla = add i64 %storemerge69.i, 1             ; 2 uses
  %exitcond.not.i3892 = icmp eq i64 %i.bla, %.sink.i.pre-phi.i3879
  br i1 %exitcond.not.i3892, label %._crit_edge.i3883, label %.lr.ph.i3891, !llvm.loop !40050
end_hunk_0
begin_hunk_1_@_ZN4rhai8packages10blob_basic14blob_functions6insert17h2d8de052fe2adbd7E:bb.a
  tail call void @llvm.assume(i1 %i.d)
  %i.e = icmp eq i64 %i.c, 0
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = load i64, ptr %0, align 8, !range !65, !alias.scope !42809, !noalias !42810, !noundef !55
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.c, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h40a5ef1b4ff18663E.exit"

bb.c:                                             ; preds = %bb.b
  tail call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17ha41f396e8ea6efa1E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1589)
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h40a5ef1b4ff18663E.exit"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h40a5ef1b4ff18663E.exit": ; preds = %bb.b, %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !42809, !noalias !42810, !nonnull !55, !noundef !55
  store i8 %i.a, ptr %i.i, align 1
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  %i.j = icmp slt i64 %1, 0
  br i1 %i.j, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not.i = icmp samesign ult i64 %1, %i.c
  br i1 %.not.i, label %_ZN4rhai4eval6target15calc_offset_len17h407217cb2a84fe50E.exit, label %_ZN4rhai4eval6target15calc_offset_len17h407217cb2a84fe50E.exit.thread

bb.f:                                             ; preds = %bb.d
  %i.k = sub i64 0, %1
  %i.l = tail call noundef range(i64 0, -1) i64 @llvm.usub.sat.i64(i64 range(i64 1, -9223372036854775808) %i.c, i64 range(i64 1, -9223372036854775807) %i.k)
  br label %_ZN4rhai4eval6target15calc_offset_len17h407217cb2a84fe50E.exit

_ZN4rhai4eval6target15calc_offset_len17h407217cb2a84fe50E.exit: ; preds = %bb.e, %bb.f
  %.sroa.0.0.i = phi i64 [ %i.l, %bb.f ], [ %1, %bb.e ] ; 3 uses
  %.not = icmp samesign ult i64 %.sroa.0.0.i, %i.c
  br i1 %.not, label %bb.h, label %_ZN4rhai4eval6target15calc_offset_len17h407217cb2a84fe50E.exit.thread

bb.g:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10insert_mut17hefe2345fab878115E.exit", %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h40a5ef1b4ff18663E.exit2", %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h40a5ef1b4ff18663E.exit"
  %.sink = phi i64 [ %i.t, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10insert_mut17hefe2345fab878115E.exit" ], [ %i.z, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h40a5ef1b4ff18663E.exit2" ], [ 1, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h40a5ef1b4ff18663E.exit" ]
  store i64 %.sink, ptr %i.b, align 8
  ret void

bb.h:                                             ; preds = %_ZN4rhai4eval6target15calc_offset_len17h407217cb2a84fe50E.exit
  %i.m = load i64, ptr %0, align 8, !range !65, !alias.scope !42811, !noundef !55
  %i.n = icmp eq i64 %i.c, %i.m
  br i1 %i.n, label %bb.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10insert_mut17hefe2345fab878115E.exit"

bb.i:                                             ; preds = %bb.h
  tail call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17ha41f396e8ea6efa1E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1590)
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10insert_mut17hefe2345fab878115E.exit"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10insert_mut17hefe2345fab878115E.exit": ; preds = %bb.i, %bb.h
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !42811, !nonnull !55, !noundef !55
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %.sroa.0.0.i ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  %i.s = sub nuw nsw i64 %i.c, %.sroa.0.0.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.r, ptr nonnull align 1 %i.q, i64 %i.s, i1 false)
  store i8 %i.a, ptr %i.q, align 1
  %i.t = add nuw i64 %i.c, 1
  br label %bb.g

_ZN4rhai4eval6target15calc_offset_len17h407217cb2a84fe50E.exit.thread: ; preds = %bb.e, %_ZN4rhai4eval6target15calc_offset_len17h407217cb2a84fe50E.exit
  %i.u = load i64, ptr %0, align 8, !range !65, !alias.scope !42812, !noalias !42813, !noundef !55
  %i.v = icmp eq i64 %i.c, %i.u
  br i1 %i.v, label %bb.j, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h40a5ef1b4ff18663E.exit2"

bb.j:                                             ; preds = %_ZN4rhai4eval6target15calc_offset_len17h407217cb2a84fe50E.exit.thread
  tail call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17ha41f396e8ea6efa1E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1591)
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h40a5ef1b4ff18663E.exit2"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h40a5ef1b4ff18663E.exit2": ; preds = %_ZN4rhai4eval6target15calc_offset_len17h407217cb2a84fe50E.exit.thread, %bb.j
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !alias.scope !42812, !noalias !42813, !nonnull !55, !noundef !55
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.c
  store i8 %i.a, ptr %i.y, align 1
  %i.z = add nuw i64 %i.c, 1
  br label %bb.g
}

; Function Attrs: nonlazybind uwtable
define noundef range(i64 0, 256) i64 @_ZN4rhai8packages10blob_basic14blob_functions6remove17h161c1d4d145be8fdE(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !55 ; 9 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp eq i64 %i.b, 0
  br i1 %i.d, label %_ZN4rhai4eval6target10calc_index17h1e2c1c05db118594E.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp slt i64 %1, 0
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = icmp samesign ult i64 %1, %i.b
  br i1 %i.f, label %bb.f, label %_ZN4rhai4eval6target10calc_index17h1e2c1c05db118594E.exit

bb.d:                                             ; preds = %bb.b
  %i.g = sub i64 0, %1
  %.not.i = icmp ult i64 %i.b, %i.g
  br i1 %.not.i, label %_ZN4rhai4eval6target10calc_index17h1e2c1c05db118594E.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = add nsw i64 %i.b, %1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  %.sroa.4.0.i.ph = phi i64 [ %1, %bb.c ], [ %i.h, %bb.e ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42817)
  %.not.i3 = icmp ult i64 %.sroa.4.0.i.ph, %i.b
  br i1 %.not.i3, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hff3d757ea35b0b8eE.exit", label %bb.g, !prof !74

bb.g:                                             ; preds = %bb.f
  tail call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove13assert_failed17headf60d52b65606fE"(i64 noundef %.sroa.4.0.i.ph, i64 noundef %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1592) #70, !noalias !42817
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hff3d757ea35b0b8eE.exit": ; preds = %bb.f
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !42817, !noalias !42818, !nonnull !55, !noundef !55
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.4.0.i.ph ; 3 uses
  %i.l = load i8, ptr %i.k, align 1, !noalias !42819, !noundef !55
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  %i.n = xor i64 %.sroa.4.0.i.ph, -1
  %i.o = add nsw i64 %i.b, %i.n
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.k, ptr nonnull align 1 %i.m, i64 %i.o, i1 false), !noalias !42819
  %i.p = add nsw i64 %i.b, -1
  store i64 %i.p, ptr %i.a, align 8, !alias.scope !42817, !noalias !42818
  %i.q = zext i8 %i.l to i64
  br label %_ZN4rhai4eval6target10calc_index17h1e2c1c05db118594E.exit

_ZN4rhai4eval6target10calc_index17h1e2c1c05db118594E.exit: ; preds = %bb.d, %bb.c, %bb.a, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hff3d757ea35b0b8eE.exit"
  %.sroa.0.0 = phi i64 [ %i.q, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hff3d757ea35b0b8eE.exit" ], [ 0, %bb.a ], [ 0, %bb.c ], [ 0, %bb.d ]
  ret i64 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define void @_ZN4rhai8packages10blob_basic14blob_functions6retain17h08055476cd6d67b6E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !55 ; 10 uses
  %i.e = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.e)
  %i.f = icmp eq i64 %i.d, 0
  %i.g = icmp slt i64 %3, 1
  %or.cond = or i1 %i.g, %i.f
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.i, align 8
  br label %bb.m

bb.c:                                             ; preds = %bb.a
  %i.j = icmp slt i64 %2, 0
  br i1 %i.j, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not.i = icmp samesign ult i64 %2, %i.d
  br i1 %.not.i, label %_ZN4rhai4eval6target15calc_offset_len17h407217cb2a84fe50E.exit, label %_ZN4rhai4eval6target15calc_offset_len17h407217cb2a84fe50E.exit.thread

bb.e:                                             ; preds = %bb.c
  %i.k = sub i64 0, %2
  %i.l = tail call noundef range(i64 0, -1) i64 @llvm.usub.sat.i64(i64 range(i64 1, -9223372036854775808) %i.d, i64 range(i64 1, -9223372036854775807) %i.k)
  br label %_ZN4rhai4eval6target15calc_offset_len17h407217cb2a84fe50E.exit

_ZN4rhai4eval6target15calc_offset_len17h407217cb2a84fe50E.exit: ; preds = %bb.e, %bb.d
  %.sroa.01.0.i = phi i64 [ %i.l, %bb.e ], [ %2, %bb.d ] ; 23 uses
  %i.m = sub nsw i64 %i.d, %.sroa.01.0.i          ; 12 uses
  %spec.select.i = tail call i64 @llvm.umin.i64(i64 %3, i64 %i.m) ; 6 uses
  %i.n = icmp eq i64 %spec.select.i, 0
  br i1 %i.n, label %_ZN4rhai4eval6target15calc_offset_len17h407217cb2a84fe50E.exit.thread, label %bb.f

_ZN4rhai4eval6target15calc_offset_len17h407217cb2a84fe50E.exit.thread: ; preds = %bb.d, %_ZN4rhai4eval6target15calc_offset_len17h407217cb2a84fe50E.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  store i64 0, ptr %1, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  store i64 0, ptr %i.c, align 8
  br label %bb.m

bb.f:                                             ; preds = %_ZN4rhai4eval6target15calc_offset_len17h407217cb2a84fe50E.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42891)
  %i.o = icmp samesign ugt i64 %.sroa.01.0.i, %i.d
  br i1 %i.o, label %bb.g, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$5drain17ha7f99af054d38dc8E.exit", !prof !66

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 0, i64 noundef %.sroa.01.0.i, i64 noundef range(i64 0, -9223372036854775808) %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2624) #70, !noalias !42892
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$5drain17ha7f99af054d38dc8E.exit": ; preds = %bb.f
  store i64 0, ptr %i.c, align 8, !alias.scope !42891, !noalias !42893
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !42891, !noalias !42893, !nonnull !55, !noundef !55 ; 11 uses
  %4 = ptrtoaddr ptr %i.q to i64
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.01.0.i ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42894)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42895)
  %i.s = icmp eq i64 %.sroa.01.0.i, 0
  br i1 %i.s, label %._crit_edge.i.i.i.i.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$5drain17ha7f99af054d38dc8E.exit"
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !42896
  %i.t = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %.sroa.01.0.i, i64 noundef range(i64 1, 9) 1) #71, !noalias !42896 ; 6 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.i, label %iter.check

iter.check:                                       ; preds = %bb.h
  %min.iters.check = icmp ult i64 %.sroa.01.0.i, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check43 = icmp ult i64 %.sroa.01.0.i, 32
  br i1 %min.iters.check43, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.v = and i64 %.sroa.01.0.i, 28
  %n.vec = and i64 %.sroa.01.0.i, -32             ; 5 uses
  %i.w = getelementptr i8, ptr %i.q, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.q, i64 %index ; 2 uses
  %i.x = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !noalias !42897
  %wide.load44 = load <16 x i8>, ptr %i.x, align 1, !noalias !42897
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 %index ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store <16 x i8> %wide.load, ptr %i.y, align 1, !noalias !42898
  store <16 x i8> %wide.load44, ptr %i.z, align 1, !noalias !42898
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !42857

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.sroa.01.0.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.i.i.i.i.i.i.i.i.thread, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.v, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.preheader, label %vec.epilog.ph, !prof !159

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec45 = and i64 %.sroa.01.0.i, -4            ; 4 uses
  %i.ab = getelementptr i8, ptr %i.q, i64 %n.vec45
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index46 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next49, %vec.epilog.vector.body ] ; 3 uses
  %next.gep47 = getelementptr i8, ptr %i.q, i64 %index46
  %wide.load48 = load <4 x i8>, ptr %next.gep47, align 1, !noalias !42897
  %i.ac = getelementptr inbounds nuw i8, ptr %i.t, i64 %index46
  store <4 x i8> %wide.load48, ptr %i.ac, align 1, !noalias !42898
  %index.next49 = add nuw i64 %index46, 4         ; 2 uses
  %i.ad = icmp eq i64 %index.next49, %n.vec45
  br i1 %i.ad, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !42858

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n50 = icmp eq i64 %.sroa.01.0.i, %n.vec45
  br i1 %cmp.n50, label %._crit_edge.i.i.i.i.i.i.i.i.thread, label %.lr.ph.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph84 = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec45, %vec.epilog.middle.block ]
  %.ph85 = phi ptr [ %i.q, %iter.check ], [ %i.w, %vec.epilog.iter.check ], [ %i.ab, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 %.sroa.01.0.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @414) #70
          to label %.noexc.i.i.i.i unwind label %bb.k, !noalias !42899

.noexc.i.i.i.i:                                   ; preds = %bb.i
  unreachable

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i
  %i.ae = phi i64 [ %i.aj, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.ph84, %.lr.ph.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %i.af = phi ptr [ %i.ag, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.ph85, %.lr.ph.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 1 ; 2 uses
  %i.ah = load i8, ptr %i.af, align 1, !noalias !42897, !noundef !55
  %i.ai = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.ae
  store i8 %i.ah, ptr %i.ai, align 1, !noalias !42898
  %i.aj = add nuw nsw i64 %i.ae, 1
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.ag, %i.r
  br i1 %.not.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.thread, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !42859

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$5drain17ha7f99af054d38dc8E.exit"
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.d, %.sroa.01.0.i
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4core4iter6traits8iterator8Iterator7collect17hd7fd7a46c6d2ef2eE.exit.thread, label %_ZN4core4iter6traits8iterator8Iterator7collect17hd7fd7a46c6d2ef2eE.exit

._crit_edge.i.i.i.i.i.i.i.i.thread:               ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %vec.epilog.middle.block, %middle.block
  %.not.i.i.i.i.i.i.i.i.i.i.i.i26 = icmp eq i64 %i.d, %.sroa.01.0.i
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i26, label %_ZN4core4iter6traits8iterator8Iterator7collect17hd7fd7a46c6d2ef2eE.exit.thread, label %bb.j

bb.j:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.thread
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.q, ptr nonnull align 1 %i.r, i64 %i.m, i1 false), !noalias !42900
  br label %_ZN4core4iter6traits8iterator8Iterator7collect17hd7fd7a46c6d2ef2eE.exit

common.resume:                                    ; preds = %.body, %bb.o, %bb.k, %bb.l
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.ak, %bb.l ], [ %i.ak, %bb.k ], [ %eh.lpad-body, %bb.o ]
  resume { ptr, i32 } %common.resume.op

bb.k:                                             ; preds = %bb.i
  %i.ak = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.d, %.sroa.01.0.i
  br i1 %.not.i.i.i.i.i.i.i, label %common.resume, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.q, ptr nonnull align 1 %i.r, i64 %i.m, i1 false), !noalias !42901
  store i64 %i.m, ptr %i.c, align 8, !noalias !42901
  br label %common.resume

_ZN4core4iter6traits8iterator8Iterator7collect17hd7fd7a46c6d2ef2eE.exit.thread: ; preds = %._crit_edge.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.thread
  %.val7.i.i.i.i.i.i.i.i30.ph = phi i64 [ %.sroa.01.0.i, %._crit_edge.i.i.i.i.i.i.i.i.thread ], [ 0, %._crit_edge.i.i.i.i.i.i.i.i ]
  %.sroa.10.0.i.i.i20.i.i28.ph = phi ptr [ %i.t, %._crit_edge.i.i.i.i.i.i.i.i.thread ], [ inttoptr (i64 1 to ptr), %._crit_edge.i.i.i.i.i.i.i.i ]
  store i64 %.sroa.01.0.i, ptr %i.b, align 8, !alias.scope !42902, !noalias !42903
  %.sroa.4.0..sroa_idx.i.i39 = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %.sroa.10.0.i.i.i20.i.i28.ph, ptr %.sroa.4.0..sroa_idx.i.i39, align 8, !alias.scope !42902, !noalias !42903
  %.sroa.5.0..sroa_idx13.i.i40 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %.val7.i.i.i.i.i.i.i.i30.ph, ptr %.sroa.5.0..sroa_idx13.i.i40, align 8, !alias.scope !42902, !noalias !42903
  invoke void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %spec.select.i, i64 noundef range(i64 0, -9223372036854775808) %i.m, i64 noundef range(i64 0, -9223372036854775808) %i.m, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2624) #70
          to label %.noexc unwind label %bb.n

_ZN4core4iter6traits8iterator8Iterator7collect17hd7fd7a46c6d2ef2eE.exit: ; preds = %bb.j, %._crit_edge.i.i.i.i.i.i.i.i
  %.sroa.10.0.i.i.i20.i.i2736 = phi ptr [ %i.t, %bb.j ], [ inttoptr (i64 1 to ptr), %._crit_edge.i.i.i.i.i.i.i.i ] ; 2 uses
  %.val7.i.i.i.i.i.i.i.i2934 = phi i64 [ %.sroa.01.0.i, %bb.j ], [ 0, %._crit_edge.i.i.i.i.i.i.i.i ] ; 4 uses
  store i64 %i.m, ptr %i.c, align 8, !noalias !42900
  store i64 %.sroa.01.0.i, ptr %i.b, align 8, !alias.scope !42902, !noalias !42903
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  store ptr %.sroa.10.0.i.i.i20.i.i2736, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !42902, !noalias !42903
  %.sroa.5.0..sroa_idx13.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  store i64 %.val7.i.i.i.i.i.i.i.i2934, ptr %.sroa.5.0..sroa_idx13.i.i, align 8, !alias.scope !42902, !noalias !42903
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42904)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42905)
  %i.al = icmp sgt i64 %i.m, -1
  tail call void @llvm.assume(i1 %i.al)
  store i64 %spec.select.i, ptr %i.c, align 8, !alias.scope !42905, !noalias !42904
  %i.am = getelementptr inbounds nuw i8, ptr %i.q, i64 %spec.select.i ; 7 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.m ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %i.m, ptr %i.ao, align 8, !alias.scope !42904, !noalias !42905
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 0, ptr %i.ap, align 8, !alias.scope !42904, !noalias !42905
  store ptr %i.am, ptr %i.a, align 8, !alias.scope !42904, !noalias !42905
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.an, ptr %i.aq, align 8, !alias.scope !42904, !noalias !42905
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %1, ptr %i.ar, align 8, !alias.scope !42904, !noalias !42905
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42906)
  %gepdiff = sub nuw nsw i64 %i.m, %spec.select.i ; 9 uses
  %i.as = sub nsw i64 %.sroa.01.0.i, %.val7.i.i.i.i.i.i.i.i2934
  %i.at = icmp ugt i64 %gepdiff, %i.as
  br i1 %i.at, label %bb.p, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6bb2605d69bea1efE.exit.i", !prof !66

.noexc:                                           ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17hd7fd7a46c6d2ef2eE.exit.thread
  unreachable

bb.m:                                             ; preds = %.loopexit, %_ZN4rhai4eval6target15calc_offset_len17h407217cb2a84fe50E.exit.thread, %bb.b
  ret void

bb.n:                                             ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17hd7fd7a46c6d2ef2eE.exit.thread
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.q, %bb.n
  %.sroa.4.0..sroa_idx.i.i41 = phi ptr [ %.sroa.4.0..sroa_idx.i.i39, %bb.n ], [ %.sroa.4.0..sroa_idx.i.i, %bb.q ]
  %.val.i = phi i64 [ %.sroa.01.0.i, %bb.n ], [ %.val.i.pre, %bb.q ] ; 2 uses
  %eh.lpad-body = phi { ptr, i32 } [ %i.au, %bb.n ], [ %i.bu, %bb.q ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42907)
  %i.av = icmp eq i64 %.val.i, 0
  br i1 %i.av, label %common.resume, label %bb.o

bb.o:                                             ; preds = %.body
  %.val1.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i41, align 8, !alias.scope !42907, !nonnull !55, !noundef !55
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !42907
  br label %common.resume

bb.p:                                             ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17hd7fd7a46c6d2ef2eE.exit
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h25b6962618db29e9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %.val7.i.i.i.i.i.i.i.i2934, i64 noundef %gepdiff, i64 noundef 1, i64 noundef 1)
          to label %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6bb2605d69bea1efE.exit_crit_edge.i" unwind label %bb.q, !noalias !42908

"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6bb2605d69bea1efE.exit_crit_edge.i": ; preds = %bb.p
  %.pre.i = load i64, ptr %.sroa.5.0..sroa_idx13.i.i, align 8, !alias.scope !42906, !noalias !42908
  %.pre = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !42906, !noalias !42908
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6bb2605d69bea1efE.exit.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6bb2605d69bea1efE.exit.i": ; preds = %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6bb2605d69bea1efE.exit_crit_edge.i", %_ZN4core4iter6traits8iterator8Iterator7collect17hd7fd7a46c6d2ef2eE.exit
  %i.aw = phi ptr [ %.pre, %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6bb2605d69bea1efE.exit_crit_edge.i" ], [ %.sroa.10.0.i.i.i20.i.i2736, %_ZN4core4iter6traits8iterator8Iterator7collect17hd7fd7a46c6d2ef2eE.exit ] ; 4 uses
  %i.ax = phi i64 [ %.pre.i, %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6bb2605d69bea1efE.exit_crit_edge.i" ], [ %.val7.i.i.i.i.i.i.i.i2934, %_ZN4core4iter6traits8iterator8Iterator7collect17hd7fd7a46c6d2ef2eE.exit ] ; 8 uses
  %5 = ptrtoaddr ptr %i.aw to i64
  %.not11.i.i.i.not = icmp ugt i64 %i.m, %3
  br i1 %.not11.i.i.i.not, label %iter.check68, label %.loopexit

iter.check68:                                     ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6bb2605d69bea1efE.exit.i"
  %min.iters.check53 = icmp samesign ult i64 %gepdiff, 8
  br i1 %min.iters.check53, label %.lr.ph.i.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check68
  %i.ay = add i64 %i.ax, %5
  %i.az = add i64 %spec.select.i, %4
  %i.ba = sub i64 %i.az, %i.ay
  %diff.check = icmp ugt i64 %i.ba, -32
  br i1 %diff.check, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check54

vector.main.loop.iter.check54:                    ; preds = %vector.memcheck
  %min.iters.check55 = icmp samesign ult i64 %gepdiff, 32
  br i1 %min.iters.check55, label %vec.epilog.ph72, label %vector.ph56

vector.ph56:                                      ; preds = %vector.main.loop.iter.check54
  %i.bb = and i64 %gepdiff, 24
  %n.vec57 = and i64 %gepdiff, 9223372036854775776 ; 5 uses
  %i.bc = add i64 %i.ax, %n.vec57                 ; 2 uses
  %i.bd = getelementptr i8, ptr %i.am, i64 %n.vec57
  %i.be = getelementptr i8, ptr %i.aw, i64 %i.ax
  br label %vector.body58

vector.body58:                                    ; preds = %vector.ph56, %vector.body58
  %index59 = phi i64 [ 0, %vector.ph56 ], [ %index.next63, %vector.body58 ] ; 3 uses
  %next.gep60 = getelementptr i8, ptr %i.am, i64 %index59 ; 2 uses
  %i.bf = getelementptr i8, ptr %next.gep60, i64 16
  %wide.load61 = load <16 x i8>, ptr %next.gep60, align 1, !noalias !42909
  %wide.load62 = load <16 x i8>, ptr %i.bf, align 1, !noalias !42909
  %i.bg = getelementptr i8, ptr %i.be, i64 %index59 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  store <16 x i8> %wide.load61, ptr %i.bg, align 1, !noalias !42910
  store <16 x i8> %wide.load62, ptr %i.bh, align 1, !noalias !42910
  %index.next63 = add nuw i64 %index59, 32        ; 2 uses
  %i.bi = icmp eq i64 %index.next63, %n.vec57
  br i1 %i.bi, label %middle.block64, label %vector.body58, !llvm.loop !42888

middle.block64:                                   ; preds = %vector.body58
  %cmp.n65 = icmp eq i64 %gepdiff, %n.vec57
  br i1 %cmp.n65, label %.loopexit, label %vec.epilog.iter.check70

vec.epilog.iter.check70:                          ; preds = %middle.block64
  %min.epilog.iters.check71 = icmp eq i64 %i.bb, 0
  br i1 %min.epilog.iters.check71, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph72, !prof !160

vec.epilog.ph72:                                  ; preds = %vector.main.loop.iter.check54, %vec.epilog.iter.check70
  %vec.epilog.resume.val66 = phi i64 [ %n.vec57, %vec.epilog.iter.check70 ], [ 0, %vector.main.loop.iter.check54 ]
  %n.vec73 = and i64 %gepdiff, 9223372036854775800 ; 4 uses
  %i.bj = add i64 %i.ax, %n.vec73                 ; 2 uses
  %i.bk = getelementptr i8, ptr %i.am, i64 %n.vec73
  %i.bl = getelementptr i8, ptr %i.aw, i64 %i.ax
  br label %vec.epilog.vector.body74

vec.epilog.vector.body74:                         ; preds = %vec.epilog.vector.body74, %vec.epilog.ph72
  %index75 = phi i64 [ %vec.epilog.resume.val66, %vec.epilog.ph72 ], [ %index.next78, %vec.epilog.vector.body74 ] ; 3 uses
  %next.gep76 = getelementptr i8, ptr %i.am, i64 %index75
  %wide.load77 = load <8 x i8>, ptr %next.gep76, align 1, !noalias !42909
  %i.bm = getelementptr i8, ptr %i.bl, i64 %index75
  store <8 x i8> %wide.load77, ptr %i.bm, align 1, !noalias !42910
  %index.next78 = add nuw i64 %index75, 8         ; 2 uses
  %i.bn = icmp eq i64 %index.next78, %n.vec73
  br i1 %i.bn, label %vec.epilog.middle.block79, label %vec.epilog.vector.body74, !llvm.loop !42889

vec.epilog.middle.block79:                        ; preds = %vec.epilog.vector.body74
  %cmp.n80 = icmp eq i64 %gepdiff, %n.vec73
  br i1 %cmp.n80, label %.loopexit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %iter.check68, %vector.memcheck, %vec.epilog.iter.check70, %vec.epilog.middle.block79
  %.ph = phi i64 [ %i.ax, %iter.check68 ], [ %i.ax, %vector.memcheck ], [ %i.bc, %vec.epilog.iter.check70 ], [ %i.bj, %vec.epilog.middle.block79 ]
  %.ph83 = phi ptr [ %i.am, %iter.check68 ], [ %i.am, %vector.memcheck ], [ %i.bd, %vec.epilog.iter.check70 ], [ %i.bk, %vec.epilog.middle.block79 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %i.bo = phi i64 [ %i.bt, %.lr.ph.i.i.i ], [ %.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %i.bp = phi ptr [ %i.bq, %.lr.ph.i.i.i ], [ %.ph83, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 1 ; 2 uses
  %i.br = load i8, ptr %i.bp, align 1, !noalias !42909, !noundef !55
  %i.bs = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.bo
  store i8 %i.br, ptr %i.bs, align 1, !noalias !42910
  %i.bt = add i64 %i.bo, 1                        ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bq, %i.an
  br i1 %.not.i.i.i, label %.loopexit, label %.lr.ph.i.i.i, !llvm.loop !42890

bb.q:                                             ; preds = %bb.p
  %i.bu = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr55drop_in_place$LT$alloc..vec..drain..Drain$LT$u8$GT$$GT$17h319bc13a4d27c875E"(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.a) #72, !noalias !42906
  %.val.i.pre = load i64, ptr %i.b, align 8, !range !65, !alias.scope !42907
  br label %.body

.loopexit:                                        ; preds = %.lr.ph.i.i.i, %middle.block64, %vec.epilog.middle.block79, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6bb2605d69bea1efE.exit.i"
  %.val7.i.i.i = phi i64 [ %i.ax, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6bb2605d69bea1efE.exit.i" ], [ %i.bj, %vec.epilog.middle.block79 ], [ %i.bc, %middle.block64 ], [ %i.bt, %.lr.ph.i.i.i ]
  store i64 %.val7.i.i.i, ptr %.sroa.5.0..sroa_idx13.i.i, align 8, !alias.scope !42906, !noalias !42911
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.m
}

; Function Attrs: nonlazybind uwtable
define void @_ZN4rhai8packages10blob_basic14blob_functions6splice17hf882de7b79a29b21E(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %3) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 16 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !55 ; 17 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp eq i64 %i.b, 0
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43048)
  %.val.i = load i64, ptr %0, align 8, !range !65, !alias.scope !43048, !noundef !55 ; 2 uses
  %i.e = icmp eq i64 %.val.i, 0
  br i1 %i.e, label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h6b92919e1aab96c5E.exit", label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i = load ptr, ptr %i.f, align 8, !alias.scope !43048, !nonnull !55, !noundef !55
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !43048
  br label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h6b92919e1aab96c5E.exit"

bb.d:                                             ; preds = %bb.a
  %i.g = icmp slt i64 %1, 0
  br i1 %i.g, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not.i = icmp samesign ult i64 %1, %i.b
  br i1 %.not.i, label %.split.i, label %.thread

bb.f:                                             ; preds = %bb.d
  %i.h = sub i64 0, %1
  %i.i = tail call noundef range(i64 0, -1) i64 @llvm.usub.sat.i64(i64 range(i64 1, -9223372036854775808) %i.b, i64 range(i64 1, -9223372036854775807) %i.h)
  br label %.split.i

.split.i:                                         ; preds = %bb.f, %bb.e
  %.promoted = phi i64 [ %i.i, %bb.f ], [ %1, %bb.e ] ; 16 uses
  %i.j = icmp slt i64 %2, 1
  %i.k = icmp eq i64 %i.b, %.promoted
  %or.cond = or i1 %i.j, %i.k
  br i1 %or.cond, label %.thread, label %bb.g

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h6b92919e1aab96c5E.exit": ; preds = %bb.c, %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  br label %"_ZN136_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$alloc..vec..into_iter..IntoIter$LT$T$GT$$GT$$GT$11spec_extend17h5525c597950470caE.exit"

"_ZN136_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$alloc..vec..into_iter..IntoIter$LT$T$GT$$GT$$GT$11spec_extend17h5525c597950470caE.exit": ; preds = %"_ZN4core3ptr55drop_in_place$LT$alloc..vec..drain..Drain$LT$u8$GT$$GT$17h319bc13a4d27c875E.exit.i", %bb.af, %bb.m, %bb.n, %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h6b92919e1aab96c5E.exit"
  ret void

bb.g:                                             ; preds = %.split.i
  %i.l = sub nsw i64 %i.b, %.promoted
  %spec.select.i = tail call i64 @llvm.umin.i64(i64 %2, i64 %i.l) ; 4 uses
  %i.m = add nuw i64 %spec.select.i, %.promoted   ; 11 uses
  %.sroa.031.0.copyload = load i64, ptr %3, align 8 ; 6 uses
  %.sroa.532.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.532.0.copyload = load ptr, ptr %.sroa.532.0..sroa_idx, align 8 ; 17 uses
  %.sroa.532.0.copyload129 = ptrtoaddr ptr %.sroa.532.0.copyload to i64 ; 7 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.7.0.copyload.fr = freeze i64 %.sroa.7.0.copyload ; 19 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43049)
  %i.n = icmp ugt i64 %i.m, %i.b
  br i1 %i.n, label %.invoke.i, label %.lr.ph.preheader.i.i.i, !prof !66

.invoke.i:                                        ; preds = %bb.g
  invoke void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 0, i64 noundef %i.m, i64 noundef %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @2624) #70
          to label %.cont.i unwind label %bb.h, !noalias !43050

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.h:                                             ; preds = %.invoke.i
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = icmp eq i64 %.sroa.031.0.copyload, 0
  br i1 %i.p, label %.body, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.532.0.copyload) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.532.0.copyload, i64 noundef %.sroa.031.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !43051
  br label %.body

.thread:                                          ; preds = %.split.i, %bb.e
  %.sroa.0.0.copyload = load i64, ptr %3, align 8 ; 4 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !nonnull !55, !noundef !55 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 5 uses
  %i.q = icmp sgt i64 %.sroa.5.0.copyload, -1
  tail call void @llvm.assume(i1 %i.q)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43052)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43053)
  %i.r = load i64, ptr %0, align 8, !range !65, !alias.scope !43054, !noalias !43055, !noundef !55
  %i.s = sub nsw i64 %i.r, %i.b
  %i.t = icmp ugt i64 %.sroa.5.0.copyload, %i.s
  br i1 %i.t, label %bb.l, label %bb.m, !prof !66

bb.j:                                             ; preds = %bb.l
  %i.u = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.v = icmp eq i64 %.sroa.0.0.copyload, 0
  br i1 %i.v, label %.body, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload, i64 noundef %.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !43056
  br label %.body

bb.l:                                             ; preds = %.thread
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h25b6962618db29e9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.b, i64 noundef %.sroa.5.0.copyload, i64 noundef 1, i64 noundef 1)
          to label %.noexc.i unwind label %bb.j, !noalias !43055

.noexc.i:                                         ; preds = %bb.l
  %.pre.i.i = load i64, ptr %i.a, align 8, !alias.scope !43057, !noalias !43055
  br label %bb.m

bb.m:                                             ; preds = %.noexc.i, %.thread
  %i.w = phi i64 [ %i.b, %.thread ], [ %.pre.i.i, %.noexc.i ] ; 3 uses
  %i.x = icmp sgt i64 %i.w, -1
  tail call void @llvm.assume(i1 %i.x)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !43057, !noalias !43055, !nonnull !55, !noundef !55
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.w
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aa, ptr nonnull readonly align 1 %.sroa.4.0.copyload, i64 %.sroa.5.0.copyload, i1 false), !noalias !43058
  %i.ab = add nuw i64 %i.w, %.sroa.5.0.copyload
  store i64 %i.ab, ptr %i.a, align 8, !alias.scope !43057, !noalias !43055
  %i.ac = icmp eq i64 %.sroa.0.0.copyload, 0
  br i1 %i.ac, label %"_ZN136_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$alloc..vec..into_iter..IntoIter$LT$T$GT$$GT$$GT$11spec_extend17h5525c597950470caE.exit", label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload, i64 noundef %.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !43059
  br label %"_ZN136_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$alloc..vec..into_iter..IntoIter$LT$T$GT$$GT$$GT$11spec_extend17h5525c597950470caE.exit"

.lr.ph.preheader.i.i.i:                           ; preds = %bb.g
  store i64 %.promoted, ptr %i.a, align 8, !alias.scope !43060, !noalias !43061
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !alias.scope !43060, !noalias !43061, !nonnull !55, !noundef !55 ; 5 uses
  %4 = ptrtoaddr ptr %i.ae to i64                 ; 2 uses
  %i.af = sub nuw nsw i64 %i.b, %i.m              ; 6 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.m
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.532.0.copyload) ]
  %i.ah = icmp sgt i64 %.sroa.7.0.copyload.fr, -1
  tail call void @llvm.assume(i1 %i.ah)
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.532.0.copyload, i64 %.sroa.7.0.copyload.fr ; 7 uses
  %i.aj = icmp eq i64 %i.b, %i.m                  ; 2 uses
  br i1 %i.aj, label %bb.o, label %"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3190358d40a833cfE.exit.i.i.i.preheader"

"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3190358d40a833cfE.exit.i.i.i.preheader": ; preds = %.lr.ph.preheader.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.promoted ; 4 uses
  %.not.not.i.i.i51 = icmp samesign eq i64 %.sroa.7.0.copyload.fr, 0
  br i1 %.not.not.i.i.i51, label %.loopexit.i, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3190358d40a833cfE.exit.i.i.i.preheader"
  %i.al = add nsw i64 %.sroa.7.0.copyload.fr, -1
  %i.am = add nsw i64 %spec.select.i, -1
  %i.an = tail call i64 @llvm.umin.i64(i64 %i.al, i64 %i.am)
  %i.ao = add i64 %i.an, 1                        ; 3 uses
  %min.iters.check = icmp ult i64 %i.ao, 9
  br i1 %min.iters.check, label %scalar.ph, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.ap = add i64 %.promoted, %4
  %i.aq = sub i64 %.sroa.532.0.copyload129, %i.ap
  %diff.check = icmp ugt i64 %i.aq, -4
  br i1 %diff.check, label %scalar.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.ar = and i64 %i.ao, 3                        ; 2 uses
  %i.as = icmp eq i64 %i.ar, 0
  %i.at = select i1 %i.as, i64 4, i64 %i.ar
  %n.vec = sub i64 %i.ao, %i.at                   ; 3 uses
  %i.au = getelementptr i8, ptr %i.ak, i64 %n.vec
  %i.av = getelementptr i8, ptr %.sroa.532.0.copyload, i64 %n.vec
  %i.aw = insertelement <2 x i64> <i64 poison, i64 0>, i64 %.promoted, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <2 x i64> [ %i.aw, %vector.ph ], [ %i.az, %vector.body ]
  %vec.phi130 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ba, %vector.body ]
  %next.gep = getelementptr i8, ptr %i.ak, i64 %index ; 2 uses
  %next.gep131 = getelementptr i8, ptr %.sroa.532.0.copyload, i64 %index ; 2 uses
  %i.ax = getelementptr i8, ptr %next.gep131, i64 2
  %wide.load = load <2 x i8>, ptr %next.gep131, align 1, !noalias !43062
  %wide.load132 = load <2 x i8>, ptr %i.ax, align 1, !noalias !43062
  %i.ay = getelementptr i8, ptr %next.gep, i64 2
  store <2 x i8> %wide.load, ptr %next.gep, align 1, !noalias !43063
  store <2 x i8> %wide.load132, ptr %i.ay, align 1, !noalias !43063
  %i.az = add <2 x i64> %vec.phi, splat (i64 1)   ; 2 uses
  %i.ba = add <2 x i64> %vec.phi130, splat (i64 1) ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bb = icmp eq i64 %index.next, %n.vec
  br i1 %i.bb, label %middle.block, label %vector.body, !llvm.loop !42942

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.ba, %i.az
  %i.bc = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx)
  br label %scalar.ph

scalar.ph:                                        ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %bc.merge.rdx = phi i64 [ %i.bc, %middle.block ], [ %.promoted, %.lr.ph.preheader ], [ %.promoted, %vector.memcheck ]
  %bc.resume.val = phi ptr [ %i.au, %middle.block ], [ %i.ak, %.lr.ph.preheader ], [ %i.ak, %vector.memcheck ] ; 2 uses
  %bc.resume.val133 = phi ptr [ %i.av, %middle.block ], [ %.sroa.532.0.copyload, %.lr.ph.preheader ], [ %.sroa.532.0.copyload, %vector.memcheck ] ; 2 uses
  %bc.resume.val133135 = ptrtoaddr ptr %bc.resume.val133 to i64 ; 4 uses
  br label %.lr.ph

bb.o:                                             ; preds = %.lr.ph.preheader.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43064)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43065)
  %i.bd = load i64, ptr %0, align 8, !range !65, !alias.scope !43066, !noalias !43067, !noundef !55
  %i.be = sub nsw i64 %i.bd, %.promoted
  %i.bf = icmp ugt i64 %.sroa.7.0.copyload.fr, %i.be
  br i1 %i.bf, label %bb.p, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6bb2605d69bea1efE.exit.i.i.i.i", !prof !66

bb.p:                                             ; preds = %bb.o
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h25b6962618db29e9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %.promoted, i64 noundef %.sroa.7.0.copyload.fr, i64 noundef 1, i64 noundef 1)
          to label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6bb2605d69bea1efE.exit.i.i.i.i.thread" unwind label %bb.x, !noalias !43068

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6bb2605d69bea1efE.exit.i.i.i.i.thread": ; preds = %bb.p
  %.pre.i.i.i.i = load i64, ptr %i.a, align 8, !alias.scope !43069, !noalias !43067
  %.pre75 = load ptr, ptr %i.ad, align 8, !alias.scope !43069, !noalias !43067
  br label %iter.check199

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6bb2605d69bea1efE.exit.i.i.i.i": ; preds = %bb.o
  %.not7.i.i.i.i.i.i.i.i = icmp samesign eq i64 %.sroa.7.0.copyload.fr, 0
  br i1 %.not7.i.i.i.i.i.i.i.i, label %"_ZN4core3ptr55drop_in_place$LT$alloc..vec..drain..Drain$LT$u8$GT$$GT$17h319bc13a4d27c875E.exit.i", label %iter.check199

iter.check199:                                    ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6bb2605d69bea1efE.exit.i.i.i.i.thread", %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6bb2605d69bea1efE.exit.i.i.i.i"
  %i.bg = phi i64 [ %.pre.i.i.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6bb2605d69bea1efE.exit.i.i.i.i.thread" ], [ %.promoted, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6bb2605d69bea1efE.exit.i.i.i.i" ] ; 7 uses
  %i.bh = phi ptr [ %.pre75, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6bb2605d69bea1efE.exit.i.i.i.i.thread" ], [ %i.ae, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6bb2605d69bea1efE.exit.i.i.i.i" ] ; 8 uses
  %min.iters.check183 = icmp samesign ult i64 %.sroa.7.0.copyload.fr, 8
  br i1 %min.iters.check183, label %.lr.ph.i.i.i.i.i.i.i.i.preheader, label %vector.memcheck180

vector.memcheck180:                               ; preds = %iter.check199
  %i.bi = ptrtoaddr ptr %i.bh to i64
  %i.bj = add i64 %i.bg, %i.bi
  %i.bk = sub i64 %.sroa.532.0.copyload129, %i.bj
  %diff.check181 = icmp ugt i64 %i.bk, -32
  br i1 %diff.check181, label %.lr.ph.i.i.i.i.i.i.i.i.preheader, label %vector.main.loop.iter.check184

vector.main.loop.iter.check184:                   ; preds = %vector.memcheck180
  %min.iters.check185 = icmp samesign ult i64 %.sroa.7.0.copyload.fr, 32
  br i1 %min.iters.check185, label %vec.epilog.ph203, label %vector.ph186

vector.ph186:                                     ; preds = %vector.main.loop.iter.check184
  %i.bl = and i64 %.sroa.7.0.copyload.fr, 24
  %n.vec187 = and i64 %.sroa.7.0.copyload.fr, 9223372036854775776 ; 5 uses
  %i.bm = add i64 %i.bg, %n.vec187                ; 2 uses
  %i.bn = getelementptr i8, ptr %.sroa.532.0.copyload, i64 %n.vec187
  %i.bo = getelementptr i8, ptr %i.bh, i64 %i.bg
  br label %vector.body188

vector.body188:                                   ; preds = %vector.ph186, %vector.body188
  %index189 = phi i64 [ 0, %vector.ph186 ], [ %index.next193, %vector.body188 ] ; 3 uses
  %next.gep190 = getelementptr i8, ptr %.sroa.532.0.copyload, i64 %index189 ; 2 uses
  %i.bp = getelementptr i8, ptr %next.gep190, i64 16
  %wide.load191 = load <16 x i8>, ptr %next.gep190, align 1, !noalias !43070
  %wide.load192 = load <16 x i8>, ptr %i.bp, align 1, !noalias !43070
  %i.bq = getelementptr i8, ptr %i.bo, i64 %index189 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  store <16 x i8> %wide.load191, ptr %i.bq, align 1, !noalias !43071
  store <16 x i8> %wide.load192, ptr %i.br, align 1, !noalias !43071
  %index.next193 = add nuw i64 %index189, 32      ; 2 uses
  %i.bs = icmp eq i64 %index.next193, %n.vec187
  br i1 %i.bs, label %middle.block194, label %vector.body188, !llvm.loop !42969

middle.block194:                                  ; preds = %vector.body188
  %cmp.n195 = icmp eq i64 %.sroa.7.0.copyload.fr, %n.vec187
  br i1 %cmp.n195, label %"_ZN4core3ptr55drop_in_place$LT$alloc..vec..drain..Drain$LT$u8$GT$$GT$17h319bc13a4d27c875E.exit.i", label %vec.epilog.iter.check201

vec.epilog.iter.check201:                         ; preds = %middle.block194
  %min.epilog.iters.check202 = icmp eq i64 %i.bl, 0
  br i1 %min.epilog.iters.check202, label %.lr.ph.i.i.i.i.i.i.i.i.preheader, label %vec.epilog.ph203, !prof !160

vec.epilog.ph203:                                 ; preds = %vector.main.loop.iter.check184, %vec.epilog.iter.check201
  %vec.epilog.resume.val196 = phi i64 [ %n.vec187, %vec.epilog.iter.check201 ], [ 0, %vector.main.loop.iter.check184 ]
  %n.vec204 = and i64 %.sroa.7.0.copyload.fr, 9223372036854775800 ; 4 uses
  %i.bt = add i64 %i.bg, %n.vec204                ; 2 uses
  %i.bu = getelementptr i8, ptr %.sroa.532.0.copyload, i64 %n.vec204
  %i.bv = getelementptr i8, ptr %i.bh, i64 %i.bg
  br label %vec.epilog.vector.body205

vec.epilog.vector.body205:                        ; preds = %vec.epilog.vector.body205, %vec.epilog.ph203
  %index206 = phi i64 [ %vec.epilog.resume.val196, %vec.epilog.ph203 ], [ %index.next209, %vec.epilog.vector.body205 ] ; 3 uses
  %next.gep207 = getelementptr i8, ptr %.sroa.532.0.copyload, i64 %index206
  %wide.load208 = load <8 x i8>, ptr %next.gep207, align 1, !noalias !43070
  %i.bw = getelementptr i8, ptr %i.bv, i64 %index206
  store <8 x i8> %wide.load208, ptr %i.bw, align 1, !noalias !43071
  %index.next209 = add nuw i64 %index206, 8       ; 2 uses
  %i.bx = icmp eq i64 %index.next209, %n.vec204
  br i1 %i.bx, label %vec.epilog.middle.block210, label %vec.epilog.vector.body205, !llvm.loop !42970

vec.epilog.middle.block210:                       ; preds = %vec.epilog.vector.body205
  %cmp.n211 = icmp eq i64 %.sroa.7.0.copyload.fr, %n.vec204
  br i1 %cmp.n211, label %"_ZN4core3ptr55drop_in_place$LT$alloc..vec..drain..Drain$LT$u8$GT$$GT$17h319bc13a4d27c875E.exit.i", label %.lr.ph.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %iter.check199, %vector.memcheck180, %vec.epilog.iter.check201, %vec.epilog.middle.block210
  %.ph = phi i64 [ %i.bg, %iter.check199 ], [ %i.bg, %vector.memcheck180 ], [ %i.bm, %vec.epilog.iter.check201 ], [ %i.bt, %vec.epilog.middle.block210 ] ; 2 uses
  %.ph216 = phi ptr [ %.sroa.532.0.copyload, %iter.check199 ], [ %.sroa.532.0.copyload, %vector.memcheck180 ], [ %i.bn, %vec.epilog.iter.check201 ], [ %i.bu, %vec.epilog.middle.block210 ] ; 3 uses
  %i.by = add i64 %.sroa.7.0.copyload.fr, %.sroa.532.0.copyload129 ; 2 uses
  %.ph216239 = ptrtoaddr ptr %.ph216 to i64       ; 2 uses
  %i.bz = sub i64 %i.by, %.ph216239
  %xtraiter240 = and i64 %i.bz, 3                 ; 2 uses
  %lcmp.mod241.not = icmp eq i64 %xtraiter240, 0
  br i1 %lcmp.mod241.not, label %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.prol:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.prol
  %i.ca = phi i64 [ %i.cf, %.lr.ph.i.i.i.i.i.i.i.i.prol ], [ %.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %i.cb = phi ptr [ %i.cd, %.lr.ph.i.i.i.i.i.i.i.i.prol ], [ %.ph216, %.lr.ph.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %prol.iter242 = phi i64 [ %prol.iter242.next, %.lr.ph.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.preheader ]
  %i.cc = load i8, ptr %i.cb, align 1, !noalias !43070, !noundef !55
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 1 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.ca
  store i8 %i.cc, ptr %i.ce, align 1, !noalias !43071
  %i.cf = add i64 %i.ca, 1                        ; 3 uses
  %prol.iter242.next = add i64 %prol.iter242, 1   ; 2 uses
  %prol.iter242.cmp.not = icmp eq i64 %prol.iter242.next, %xtraiter240
  br i1 %prol.iter242.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.prol, !llvm.loop !42971

.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %.lcssa.unr = phi i64 [ poison, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.cf, %.lr.ph.i.i.i.i.i.i.i.i.prol ]
  %.unr243 = phi i64 [ %.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.cf, %.lr.ph.i.i.i.i.i.i.i.i.prol ]
  %.unr244 = phi ptr [ %.ph216, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.cd, %.lr.ph.i.i.i.i.i.i.i.i.prol ]
  %i.cg = sub i64 %.ph216239, %i.by
  %i.ch = icmp ugt i64 %i.cg, -4
  br i1 %i.ch, label %"_ZN4core3ptr55drop_in_place$LT$alloc..vec..drain..Drain$LT$u8$GT$$GT$17h319bc13a4d27c875E.exit.i", label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i
  %i.ci = phi i64 [ %i.cz, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.unr243, %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %i.cj = phi ptr [ %i.cw, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.unr244, %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %i.ck = load i8, ptr %i.cj, align 1, !noalias !43070, !noundef !55
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 1
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.ci
  store i8 %i.ck, ptr %i.cm, align 1, !noalias !43071
  %i.cn = load i8, ptr %i.cl, align 1, !noalias !43070, !noundef !55
  %i.co = getelementptr inbounds nuw i8, ptr %i.cj, i64 2
  %i.cp = getelementptr i8, ptr %i.bh, i64 %i.ci
  %i.cq = getelementptr i8, ptr %i.cp, i64 1
  store i8 %i.cn, ptr %i.cq, align 1, !noalias !43071
  %i.cr = load i8, ptr %i.co, align 1, !noalias !43070, !noundef !55
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cj, i64 3
  %i.ct = getelementptr i8, ptr %i.bh, i64 %i.ci
  %i.cu = getelementptr i8, ptr %i.ct, i64 2
  store i8 %i.cr, ptr %i.cu, align 1, !noalias !43071
  %i.cv = load i8, ptr %i.cs, align 1, !noalias !43070, !noundef !55
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cj, i64 4 ; 2 uses
  %i.cx = getelementptr i8, ptr %i.bh, i64 %i.ci
  %i.cy = getelementptr i8, ptr %i.cx, i64 3
  store i8 %i.cv, ptr %i.cy, align 1, !noalias !43071
  %i.cz = add i64 %i.ci, 4                        ; 2 uses
  %.not.i.i.i.i.i.i.i.i.3 = icmp eq ptr %i.cw, %i.ai
  br i1 %.not.i.i.i.i.i.i.i.i.3, label %"_ZN4core3ptr55drop_in_place$LT$alloc..vec..drain..Drain$LT$u8$GT$$GT$17h319bc13a4d27c875E.exit.i", label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !42972

"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3190358d40a833cfE.exit.i.i.i": ; preds = %.lr.ph
  %.not.not.i.i.i = icmp eq ptr %i.dd, %i.ai
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.not.i.i.i, label %"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3190358d40a833cfE.exit.i.i.i..loopexit.i.loopexit40_crit_edge", label %.lr.ph, !llvm.loop !42973

.lr.ph:                                           ; preds = %scalar.ph, %"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3190358d40a833cfE.exit.i.i.i"
  %indvar = phi i64 [ 0, %scalar.ph ], [ %indvar.next, %"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3190358d40a833cfE.exit.i.i.i" ] ; 2 uses
  %i.da = phi i64 [ %bc.merge.rdx, %scalar.ph ], [ %i.df, %"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3190358d40a833cfE.exit.i.i.i" ]
  %.sroa.0.08.i.i.i52 = phi ptr [ %bc.resume.val, %scalar.ph ], [ %i.dc, %"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3190358d40a833cfE.exit.i.i.i" ] ; 2 uses
  %i.db = phi ptr [ %bc.resume.val133, %scalar.ph ], [ %i.dd, %"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3190358d40a833cfE.exit.i.i.i" ] ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i52, i64 1 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 1 ; 9 uses
  %i.de = load i8, ptr %i.db, align 1, !noalias !43062, !noundef !55
  store i8 %i.de, ptr %.sroa.0.08.i.i.i52, align 1, !noalias !43063
  %i.df = add i64 %i.da, 1                        ; 6 uses
  %i.dg = icmp eq ptr %i.dc, %i.ag
  br i1 %i.dg, label %.loopexit.i.i, label %"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3190358d40a833cfE.exit.i.i.i"

.loopexit.i.i:                                    ; preds = %.lr.ph
  store i64 %i.df, ptr %i.a, align 8, !noalias !43063
  %i.dh = ptrtoint ptr %i.ai to i64               ; 2 uses
  %i.di = ptrtoint ptr %i.dd to i64
  %i.dj = sub nuw i64 %i.dh, %i.di                ; 5 uses
  %.not.i.i = icmp eq ptr %i.ai, %i.dd
  br i1 %.not.i.i, label %.loopexit.i, label %bb.s

"_ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$4fill17hdaf06ff9bd37871eE.exit26.thread.loopexit.i.i": ; preds = %scalar.ph137
  store i64 %i.hg, ptr %i.a, align 8, !noalias !43072
  %.pre.i.i11 = ptrtoint ptr %i.he to i64
  %.pre22.i = sub nuw i64 %i.dh, %.pre.i.i11
  br label %"_ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$4fill17hdaf06ff9bd37871eE.exit26.thread.i.i"

"_ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$4fill17hdaf06ff9bd37871eE.exit26.thread.i.i": ; preds = %"_ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$9move_tail17h57ef1d815f8dc8a9E.exit.i.i", %"_ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$4fill17hdaf06ff9bd37871eE.exit26.thread.loopexit.i.i"
  %.pre-phi.i = phi i64 [ %i.dj, %"_ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$9move_tail17h57ef1d815f8dc8a9E.exit.i.i" ], [ %.pre22.i, %"_ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$4fill17hdaf06ff9bd37871eE.exit26.thread.loopexit.i.i" ] ; 5 uses
  %i.dk = phi i64 [ %.promoted59, %"_ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$9move_tail17h57ef1d815f8dc8a9E.exit.i.i" ], [ %i.hg, %"_ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$4fill17hdaf06ff9bd37871eE.exit26.thread.loopexit.i.i" ]
  %.val.i.i.i.i.i.i.i = phi ptr [ %i.dd, %"_ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$9move_tail17h57ef1d815f8dc8a9E.exit.i.i" ], [ %i.he, %"_ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$4fill17hdaf06ff9bd37871eE.exit26.thread.loopexit.i.i" ] ; 7 uses
  %.val.i.i.i.i.i.i.i156 = ptrtoaddr ptr %.val.i.i.i.i.i.i.i to i64 ; 2 uses
  %i.dl = icmp slt i64 %.pre-phi.i, 0
  br i1 %i.dl, label %bb.r, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i, !prof !43073

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i: ; preds = %"_ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$4fill17hdaf06ff9bd37871eE.exit26.thread.i.i"
  %i.dm = icmp eq ptr %i.ai, %.val.i.i.i.i.i.i.i
  br i1 %i.dm, label %.loopexit.i, label %bb.q

bb.q:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !43074
  %i.dn = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %.pre-phi.i, i64 noundef range(i64 1, 9) 1) #71, !noalias !43074 ; 13 uses
  %i.do = icmp eq ptr %i.dn, null
  br i1 %i.do, label %bb.r, label %iter.check

iter.check:                                       ; preds = %bb.q
  %5 = ptrtoaddr ptr %i.dn to i64
  %i.dp = add i64 %.sroa.7.0.copyload.fr, %.sroa.532.0.copyload129
  %i.dq = sub i64 %i.dp, %.val.i.i.i.i.i.i.i156   ; 7 uses
  %min.iters.check159 = icmp ult i64 %i.dq, 4
  %i.dr = sub i64 %.val.i.i.i.i.i.i.i156, %5
  %diff.check157 = icmp ugt i64 %i.dr, -32
  %or.cond214 = or i1 %min.iters.check159, %diff.check157
  br i1 %or.cond214, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check160 = icmp ult i64 %i.dq, 32
  br i1 %min.iters.check160, label %vec.epilog.ph, label %vector.ph161

vector.ph161:                                     ; preds = %vector.main.loop.iter.check
  %i.ds = and i64 %i.dq, 28
  %n.vec162 = and i64 %i.dq, -32                  ; 7 uses
  %i.dt = getelementptr i8, ptr %.val.i.i.i.i.i.i.i, i64 %n.vec162
  br label %vector.body163

vector.body163:                                   ; preds = %vector.ph161, %vector.body163
  %index164 = phi i64 [ 0, %vector.ph161 ], [ %index.next168, %vector.body163 ] ; 3 uses
  %next.gep165 = getelementptr i8, ptr %.val.i.i.i.i.i.i.i, i64 %index164 ; 2 uses
  %i.du = getelementptr i8, ptr %next.gep165, i64 16
  %wide.load166 = load <16 x i8>, ptr %next.gep165, align 1, !noalias !43075
  %wide.load167 = load <16 x i8>, ptr %i.du, align 1, !noalias !43075
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dn, i64 %index164 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  store <16 x i8> %wide.load166, ptr %i.dv, align 1, !noalias !43076
  store <16 x i8> %wide.load167, ptr %i.dw, align 1, !noalias !43076
  %index.next168 = add nuw i64 %index164, 32      ; 2 uses
  %i.dx = icmp eq i64 %index.next168, %n.vec162
  br i1 %i.dx, label %middle.block169, label %vector.body163, !llvm.loop !43016

middle.block169:                                  ; preds = %vector.body163
  %ind.escape = add i64 %n.vec162, -1
  %cmp.n = icmp eq i64 %i.dq, %n.vec162
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block169
  %min.epilog.iters.check = icmp eq i64 %i.ds, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader, label %vec.epilog.ph, !prof !159

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec162, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec171 = and i64 %i.dq, -4                   ; 6 uses
  %i.dy = getelementptr i8, ptr %.val.i.i.i.i.i.i.i, i64 %n.vec171
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index172 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next175, %vec.epilog.vector.body ] ; 3 uses
  %next.gep173 = getelementptr i8, ptr %.val.i.i.i.i.i.i.i, i64 %index172
  %wide.load174 = load <4 x i8>, ptr %next.gep173, align 1, !noalias !43075
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dn, i64 %index172
  store <4 x i8> %wide.load174, ptr %i.dz, align 1, !noalias !43076
  %index.next175 = add nuw i64 %index172, 4       ; 2 uses
  %i.ea = icmp eq i64 %index.next175, %n.vec171
  br i1 %i.ea, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !43017

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %ind.escape176 = add i64 %n.vec171, -1
  %cmp.n177 = icmp eq i64 %i.dq, %n.vec171
  br i1 %cmp.n177, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader:         ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph218 = phi i64 [ 0, %iter.check ], [ %n.vec162, %vec.epilog.iter.check ], [ %n.vec171, %vec.epilog.middle.block ] ; 2 uses
  %.ph219 = phi ptr [ %.val.i.i.i.i.i.i.i, %iter.check ], [ %i.dt, %vec.epilog.iter.check ], [ %i.dy, %vec.epilog.middle.block ] ; 3 uses
  %i.eb = add i64 %.sroa.7.0.copyload.fr, %.sroa.532.0.copyload129 ; 2 uses
  %.ph219237 = ptrtoaddr ptr %.ph219 to i64       ; 2 uses
  %i.ec = sub i64 %i.eb, %.ph219237
  %xtraiter = and i64 %i.ec, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol:              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol
  %i.ed = phi i64 [ %i.ei, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol ], [ %.ph218, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader ] ; 3 uses
  %i.ee = phi ptr [ %i.eg, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol ], [ %.ph219, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader ]
  %i.ef = load i8, ptr %i.ee, align 1, !noalias !43075, !noundef !55
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ee, i64 1 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.ed
  store i8 %i.ef, ptr %i.eh, align 1, !noalias !43076
  %i.ei = add nuw i64 %i.ed, 1                    ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !43018

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit:     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader
  %.lcssa221.unr = phi i64 [ poison, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.ed, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol ]
  %.lcssa220.unr = phi i64 [ poison, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.ei, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol ]
  %.unr = phi i64 [ %.ph218, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.ei, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol ]
  %.unr238 = phi ptr [ %.ph219, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.eg, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol ]
  %i.ej = sub i64 %.ph219237, %i.eb
  %i.ek = icmp ugt i64 %i.ej, -4
  br i1 %i.ek, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i

bb.r:                                             ; preds = %bb.q, %"_ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$4fill17hdaf06ff9bd37871eE.exit26.thread.i.i"
  %.sroa.4.0.ph.i.i.i.i.i.i.i = phi i64 [ 1, %bb.q ], [ 0, %"_ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$4fill17hdaf06ff9bd37871eE.exit26.thread.i.i" ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i, i64 %.pre-phi.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @414) #70
          to label %.noexc5.i unwind label %bb.x, !noalias !43068

.noexc5.i:                                        ; preds = %bb.r
  unreachable

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %i.el = phi i64 [ %i.fc, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %i.em = phi ptr [ %i.fa, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.unr238, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %i.en = load i8, ptr %i.em, align 1, !noalias !43075, !noundef !55
  %i.eo = getelementptr inbounds nuw i8, ptr %i.em, i64 1
  %i.ep = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.el
  store i8 %i.en, ptr %i.ep, align 1, !noalias !43076
  %i.eq = load i8, ptr %i.eo, align 1, !noalias !43075, !noundef !55
  %i.er = getelementptr inbounds nuw i8, ptr %i.em, i64 2
  %i.es = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.el
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 1
  store i8 %i.eq, ptr %i.et, align 1, !noalias !43076
  %i.eu = load i8, ptr %i.er, align 1, !noalias !43075, !noundef !55
  %i.ev = getelementptr inbounds nuw i8, ptr %i.em, i64 3
  %i.ew = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.el
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 2
  store i8 %i.eu, ptr %i.ex, align 1, !noalias !43076
  %i.ey = add nuw i64 %i.el, 3                    ; 2 uses
  %i.ez = load i8, ptr %i.ev, align 1, !noalias !43075, !noundef !55
  %i.fa = getelementptr inbounds nuw i8, ptr %i.em, i64 4 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.ey
  store i8 %i.ez, ptr %i.fb, align 1, !noalias !43076
  %i.fc = add nuw i64 %i.el, 4                    ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.3 = icmp eq ptr %i.fa, %i.ai
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.3, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !43019

bb.s:                                             ; preds = %.loopexit.i.i
  %i.fd = load i64, ptr %0, align 8, !range !65, !noalias !43077, !noundef !55
  %i.fe = sub nsw i64 %i.fd, %i.b
  %i.ff = icmp ugt i64 %i.dj, %i.fe
  br i1 %i.ff, label %bb.t, label %"_ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$9move_tail17h57ef1d815f8dc8a9E.exit.i.i", !prof !66

bb.t:                                             ; preds = %bb.s
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h25b6962618db29e9E"(ptr noalias noundef align 8 dereferenceable(16) %0, i64 noundef %i.b, i64 noundef %i.dj, i64 noundef 1, i64 noundef 1)
          to label %"._ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$9move_tail17h57ef1d815f8dc8a9E.exit.i.i_crit_edge" unwind label %bb.x, !noalias !43068

"._ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$9move_tail17h57ef1d815f8dc8a9E.exit.i.i_crit_edge": ; preds = %bb.t
  %.pre = load ptr, ptr %i.ad, align 8, !noalias !43077
  %.pre70 = load i64, ptr %i.a, align 8, !noalias !43072
  br label %"_ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$9move_tail17h57ef1d815f8dc8a9E.exit.i.i"

"_ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$9move_tail17h57ef1d815f8dc8a9E.exit.i.i": ; preds = %"._ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$9move_tail17h57ef1d815f8dc8a9E.exit.i.i_crit_edge", %bb.s
  %.promoted59 = phi i64 [ %.pre70, %"._ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$9move_tail17h57ef1d815f8dc8a9E.exit.i.i_crit_edge" ], [ %i.df, %bb.s ] ; 8 uses
  %i.fg = phi ptr [ %.pre, %"._ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$9move_tail17h57ef1d815f8dc8a9E.exit.i.i_crit_edge" ], [ %i.ae, %bb.s ] ; 5 uses
  %i.fh = ptrtoaddr ptr %i.fg to i64
  %i.fi = add i64 %i.dj, %i.m                     ; 8 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fg, i64 %i.m
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fg, i64 %i.fi ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.fk, ptr nonnull align 1 %i.fj, i64 %i.af, i1 false), !noalias !43077
  %i.fl = icmp samesign eq i64 %.promoted59, %i.fi
  br i1 %i.fl, label %"_ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$4fill17hdaf06ff9bd37871eE.exit26.thread.i.i", label %.lr.ph57

.lr.ph57:                                         ; preds = %"_ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$9move_tail17h57ef1d815f8dc8a9E.exit.i.i"
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fg, i64 %.promoted59 ; 4 uses
  %i.fn = add i64 %.sroa.7.0.copyload.fr, %.sroa.532.0.copyload129 ; 2 uses
  %i.fo = xor i64 %bc.resume.val133135, -1
  %i.fp = add i64 %i.fn, %i.fo
  %i.fq = freeze i64 %i.fp
  %i.fr = ptrtoaddr ptr %bc.resume.val to i64
  %i.fs = add i64 %.promoted, %4
  %i.ft = add i64 %i.fs, %spec.select.i
  %i.fu = xor i64 %i.fr, -1
  %i.fv = add i64 %i.ft, %i.fu
  %i.fw = tail call i64 @llvm.umin.i64(i64 %i.fq, i64 %i.fv) ; 2 uses
  %i.fx = add i64 %i.fn, -2
  %i.fy = add i64 %i.fw, %bc.resume.val133135
  %i.fz = sub i64 %i.fx, %i.fy
  %i.ga = freeze i64 %i.fz
  %i.gb = add i64 %.promoted, %.sroa.7.0.copyload.fr
  %i.gc = add i64 %i.gb, %.sroa.532.0.copyload129
  %i.gd = add i64 %i.gc, %spec.select.i
  %i.ge = add i64 %i.gd, -2
  %i.gf = add i64 %.promoted59, %bc.resume.val133135
  %i.gg = add i64 %i.gf, %i.fw
  %i.gh = sub i64 %i.ge, %i.gg
  %i.gi = tail call i64 @llvm.umin.i64(i64 %i.ga, i64 %i.gh)
  %i.gj = add i64 %i.gi, 1                        ; 3 uses
  %min.iters.check138 = icmp ult i64 %i.gj, 17
  br i1 %min.iters.check138, label %scalar.ph137.preheader, label %vector.memcheck134

vector.memcheck134:                               ; preds = %.lr.ph57
  %i.gk = add i64 %.promoted59, %i.fh
  %i.gl = xor i64 %bc.resume.val133135, -1
  %i.gm = sub i64 %i.gl, %indvar
  %i.gn = add i64 %i.gk, %i.gm
  %i.go = add i64 %i.gn, -1
  %diff.check136 = icmp ult i64 %i.go, 3
  br i1 %diff.check136, label %scalar.ph137.preheader, label %vector.ph139

vector.ph139:                                     ; preds = %vector.memcheck134
  %i.gp = and i64 %i.gj, 3                        ; 2 uses
  %i.gq = icmp eq i64 %i.gp, 0
  %i.gr = select i1 %i.gq, i64 4, i64 %i.gp
  %n.vec140 = sub i64 %i.gj, %i.gr                ; 3 uses
  %i.gs = getelementptr i8, ptr %i.fm, i64 %n.vec140
  %i.gt = getelementptr i8, ptr %i.dd, i64 %n.vec140
  %i.gu = insertelement <2 x i64> <i64 poison, i64 0>, i64 %.promoted59, i64 0
  br label %vector.body141

vector.body141:                                   ; preds = %vector.body141, %vector.ph139
  %index142 = phi i64 [ 0, %vector.ph139 ], [ %index.next149, %vector.body141 ] ; 3 uses
  %vec.phi143 = phi <2 x i64> [ %i.gu, %vector.ph139 ], [ %i.gx, %vector.body141 ]
  %vec.phi144 = phi <2 x i64> [ zeroinitializer, %vector.ph139 ], [ %i.gy, %vector.body141 ]
  %next.gep145 = getelementptr i8, ptr %i.fm, i64 %index142 ; 2 uses
  %next.gep146 = getelementptr i8, ptr %i.dd, i64 %index142 ; 2 uses
  %i.gv = getelementptr i8, ptr %next.gep146, i64 2
  %wide.load147 = load <2 x i8>, ptr %next.gep146, align 1, !noalias !43078
  %wide.load148 = load <2 x i8>, ptr %i.gv, align 1, !noalias !43078
  %i.gw = getelementptr i8, ptr %next.gep145, i64 2
  store <2 x i8> %wide.load147, ptr %next.gep145, align 1, !noalias !43072
  store <2 x i8> %wide.load148, ptr %i.gw, align 1, !noalias !43072
  %i.gx = add <2 x i64> %vec.phi143, splat (i64 1) ; 2 uses
  %i.gy = add <2 x i64> %vec.phi144, splat (i64 1) ; 2 uses
  %index.next149 = add nuw i64 %index142, 4       ; 2 uses
  %i.gz = icmp eq i64 %index.next149, %n.vec140
  br i1 %i.gz, label %middle.block150, label %vector.body141, !llvm.loop !43024

middle.block150:                                  ; preds = %vector.body141
  %bin.rdx151 = add <2 x i64> %i.gy, %i.gx
  %i.ha = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx151)
  br label %scalar.ph137.preheader

scalar.ph137.preheader:                           ; preds = %vector.memcheck134, %.lr.ph57, %middle.block150
  %.ph222 = phi i64 [ %.promoted59, %vector.memcheck134 ], [ %.promoted59, %.lr.ph57 ], [ %i.ha, %middle.block150 ]
  %.sroa.0.08.i23.i.i56.ph = phi ptr [ %i.fm, %vector.memcheck134 ], [ %i.fm, %.lr.ph57 ], [ %i.gs, %middle.block150 ]
  %.ph223 = phi ptr [ %i.dd, %vector.memcheck134 ], [ %i.dd, %.lr.ph57 ], [ %i.gt, %middle.block150 ]
  br label %scalar.ph137

"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3190358d40a833cfE.exit.i22.i.i": ; preds = %scalar.ph137
  %.not.not.i24.i.i = icmp eq ptr %i.he, %i.ai
  br i1 %.not.not.i24.i.i, label %.loopexit.i.loopexit, label %scalar.ph137, !llvm.loop !43025

scalar.ph137:                                     ; preds = %scalar.ph137.preheader, %"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3190358d40a833cfE.exit.i22.i.i"
  %i.hb = phi i64 [ %i.hg, %"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3190358d40a833cfE.exit.i22.i.i" ], [ %.ph222, %scalar.ph137.preheader ]
  %.sroa.0.08.i23.i.i56 = phi ptr [ %i.hd, %"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3190358d40a833cfE.exit.i22.i.i" ], [ %.sroa.0.08.i23.i.i56.ph, %scalar.ph137.preheader ] ; 2 uses
  %i.hc = phi ptr [ %i.he, %"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3190358d40a833cfE.exit.i22.i.i" ], [ %.ph223, %scalar.ph137.preheader ] ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i23.i.i56, i64 1 ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.hc, i64 1 ; 4 uses
  %i.hf = load i8, ptr %i.hc, align 1, !noalias !43078, !noundef !55
  store i8 %i.hf, ptr %.sroa.0.08.i23.i.i56, align 1, !noalias !43072
  %i.hg = add i64 %i.hb, 1                        ; 5 uses
  %i.hh = icmp eq ptr %i.hd, %i.fk
  br i1 %i.hh, label %"_ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$4fill17hdaf06ff9bd37871eE.exit26.thread.loopexit.i.i", label %"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3190358d40a833cfE.exit.i22.i.i"

"_ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$4fill17hdaf06ff9bd37871eE.exit35.thread44.i.i": ; preds = %bb.w, %bb.v
  %.pre.i = phi i64 [ %i.ho, %bb.v ], [ %i.hy, %bb.w ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.dn, i64 noundef %.pre-phi.i, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !43079
  br label %.loopexit.i

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, %vec.epilog.middle.block, %middle.block169
  %.lcssa116 = phi i64 [ %ind.escape176, %vec.epilog.middle.block ], [ %ind.escape, %middle.block169 ], [ %.lcssa221.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ], [ %i.ey, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.lcssa115 = phi i64 [ %n.vec171, %vec.epilog.middle.block ], [ %n.vec162, %middle.block169 ], [ %.lcssa220.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ], [ %i.fc, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ] ; 4 uses
  %i.hi = icmp sgt i64 %.lcssa115, -1
  tail call void @llvm.assume(i1 %i.hi)
  %i.hj = getelementptr inbounds nuw i8, ptr %i.dn, i64 %.lcssa115
  %i.hk = add i64 %i.dj, %i.b                     ; 2 uses
  %i.hl = load i64, ptr %0, align 8, !range !65, !noalias !43080, !noundef !55
  %i.hm = sub i64 %i.hl, %i.hk
  %.not53.i.i = icmp ult i64 %.lcssa116, %i.hm
  br i1 %.not53.i.i, label %bb.v, label %bb.u, !prof !74

bb.u:                                             ; preds = %.loopexit
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h25b6962618db29e9E"(ptr noalias noundef align 8 dereferenceable(16) %0, i64 noundef %i.hk, i64 noundef %.lcssa115, i64 noundef 1, i64 noundef 1)
          to label %._crit_edge unwind label %"_ZN4core3ptr62drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$u8$GT$$GT$17he9e72251f253d1fbE.exit.i.i", !noalias !43081

._crit_edge:                                      ; preds = %bb.u
  %.pre71 = load ptr, ptr %i.ad, align 8, !noalias !43080
  br label %bb.v

bb.v:                                             ; preds = %._crit_edge, %.loopexit
  %i.hn = phi ptr [ %.pre71, %._crit_edge ], [ %i.fg, %.loopexit ] ; 3 uses
  %i.ho = add i64 %.lcssa115, %i.fi               ; 4 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hn, i64 %i.fi
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hn, i64 %i.ho ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.hq, ptr nonnull align 1 %i.hp, i64 %i.af, i1 false), !noalias !43080
  %i.hr = load i64, ptr %i.a, align 8, !noalias !43082, !noundef !55 ; 2 uses
  %i.hs = icmp samesign eq i64 %i.hr, %i.ho
  br i1 %i.hs, label %"_ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$4fill17hdaf06ff9bd37871eE.exit35.thread44.i.i", label %.lr.ph127

.lr.ph127:                                        ; preds = %bb.v
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hn, i64 %i.hr
  br label %bb.w

bb.w:                                             ; preds = %bb.w, %.lr.ph127
  %.sroa.0.08.i32.i.i126 = phi ptr [ %i.ht, %.lr.ph127 ], [ %i.hv, %bb.w ] ; 2 uses
  %i.hu = phi ptr [ %i.dn, %.lr.ph127 ], [ %i.ia, %bb.w ] ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i32.i.i126, i64 1 ; 2 uses
  %i.hw = load i8, ptr %i.hu, align 1, !noalias !43083, !noundef !55
  store i8 %i.hw, ptr %.sroa.0.08.i32.i.i126, align 1, !noalias !43082
  %i.hx = load i64, ptr %i.a, align 8, !noalias !43082, !noundef !55
  %i.hy = add i64 %i.hx, 1                        ; 2 uses
  store i64 %i.hy, ptr %i.a, align 8, !noalias !43082
  %i.hz = icmp eq ptr %i.hv, %i.hq
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hu, i64 1 ; 2 uses
  %.not.not.i33.i.i = icmp eq ptr %i.ia, %i.hj
  %or.cond215 = select i1 %i.hz, i1 true, i1 %.not.not.i33.i.i
  br i1 %or.cond215, label %"_ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$4fill17hdaf06ff9bd37871eE.exit35.thread44.i.i", label %bb.w

"_ZN4core3ptr62drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$u8$GT$$GT$17he9e72251f253d1fbE.exit.i.i": ; preds = %bb.u
  %i.ib = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.dn, i64 noundef %.pre-phi.i, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !43084
  br label %bb.y

bb.x:                                             ; preds = %bb.t, %bb.r, %bb.p
  %.sroa.21.3 = phi i64 [ %i.b, %bb.p ], [ %i.fi, %bb.r ], [ %i.m, %bb.t ]
  %i.ic = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.y:                                             ; preds = %"_ZN4core3ptr62drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$u8$GT$$GT$17he9e72251f253d1fbE.exit.i.i", %bb.x
  %.sroa.21.1 = phi i64 [ %.sroa.21.3, %bb.x ], [ %i.fi, %"_ZN4core3ptr62drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$u8$GT$$GT$17he9e72251f253d1fbE.exit.i.i" ] ; 2 uses
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ic, %bb.x ], [ %i.ib, %"_ZN4core3ptr62drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$u8$GT$$GT$17he9e72251f253d1fbE.exit.i.i" ] ; 2 uses
  br i1 %i.aj, label %"_ZN4core3ptr55drop_in_place$LT$alloc..vec..drain..Drain$LT$u8$GT$$GT$17h319bc13a4d27c875E.exit", label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.id = load i64, ptr %i.a, align 8, !noalias !43085, !noundef !55 ; 4 uses
  %i.ie = icmp sgt i64 %i.id, -1
  tail call void @llvm.assume(i1 %i.ie)
  %.not3.i.i.i.i = icmp eq i64 %.sroa.21.1, %i.id
  br i1 %.not3.i.i.i.i, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.ab, %bb.z
  %i.if = add nuw i64 %i.id, %i.af
  store i64 %i.if, ptr %i.a, align 8, !noalias !43085
  br label %"_ZN4core3ptr55drop_in_place$LT$alloc..vec..drain..Drain$LT$u8$GT$$GT$17h319bc13a4d27c875E.exit"

bb.ab:                                            ; preds = %bb.z
  %i.ig = load ptr, ptr %i.ad, align 8, !noalias !43085, !nonnull !55, !noundef !55 ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 %.sroa.21.1
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ig, i64 %i.id
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ii, ptr nonnull align 1 %i.ih, i64 %i.af, i1 false), !noalias !43085
  br label %bb.aa

"_ZN4core3ptr55drop_in_place$LT$alloc..vec..drain..Drain$LT$u8$GT$$GT$17h319bc13a4d27c875E.exit": ; preds = %bb.y, %bb.aa
  %i.ij = icmp eq i64 %.sroa.031.0.copyload, 0
  br i1 %i.ij, label %.body, label %bb.ae

"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3190358d40a833cfE.exit.i.i.i..loopexit.i.loopexit40_crit_edge": ; preds = %"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3190358d40a833cfE.exit.i.i.i"
  store i64 %i.df, ptr %i.a, align 8, !noalias !43063
  br label %.loopexit.i

.loopexit.i.loopexit:                             ; preds = %"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3190358d40a833cfE.exit.i22.i.i"
  store i64 %i.hg, ptr %i.a, align 8, !noalias !43072
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.i.loopexit, %.loopexit.i.i, %"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3190358d40a833cfE.exit.i.i.i.preheader", %"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3190358d40a833cfE.exit.i.i.i..loopexit.i.loopexit40_crit_edge", %"_ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$4fill17hdaf06ff9bd37871eE.exit35.thread44.i.i", %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i
  %i.ik = phi i64 [ %i.m, %.loopexit.i.i ], [ %i.ho, %"_ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$4fill17hdaf06ff9bd37871eE.exit35.thread44.i.i" ], [ %i.fi, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i ], [ %i.m, %"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3190358d40a833cfE.exit.i.i.i.preheader" ], [ %i.m, %"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3190358d40a833cfE.exit.i.i.i..loopexit.i.loopexit40_crit_edge" ], [ %i.fi, %.loopexit.i.loopexit ] ; 2 uses
  %i.il = phi i64 [ %i.df, %.loopexit.i.i ], [ %.pre.i, %"_ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$4fill17hdaf06ff9bd37871eE.exit35.thread44.i.i" ], [ %i.dk, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i ], [ %.promoted, %"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3190358d40a833cfE.exit.i.i.i.preheader" ], [ %i.df, %"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3190358d40a833cfE.exit.i.i.i..loopexit.i.loopexit40_crit_edge" ], [ %i.hg, %.loopexit.i.loopexit ] ; 4 uses
  %i.im = icmp sgt i64 %i.il, -1
  tail call void @llvm.assume(i1 %i.im)
  %.not3.i.i.i.i.i = icmp eq i64 %i.ik, %i.il
  br i1 %.not3.i.i.i.i.i, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ad, %.loopexit.i
  %i.in = add nuw i64 %i.il, %i.af
  br label %"_ZN4core3ptr55drop_in_place$LT$alloc..vec..drain..Drain$LT$u8$GT$$GT$17h319bc13a4d27c875E.exit.i"

bb.ad:                                            ; preds = %.loopexit.i
  %i.io = load ptr, ptr %i.ad, align 8, !noalias !43086, !nonnull !55, !noundef !55 ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 %i.ik
  %i.iq = getelementptr inbounds nuw i8, ptr %i.io, i64 %i.il
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.iq, ptr nonnull align 1 %i.ip, i64 %i.af, i1 false), !noalias !43086
  br label %bb.ac

bb.ae:                                            ; preds = %"_ZN4core3ptr55drop_in_place$LT$alloc..vec..drain..Drain$LT$u8$GT$$GT$17h319bc13a4d27c875E.exit"
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.532.0.copyload, i64 noundef %.sroa.031.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !43087
  br label %.body

"_ZN4core3ptr55drop_in_place$LT$alloc..vec..drain..Drain$LT$u8$GT$$GT$17h319bc13a4d27c875E.exit.i": ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i, %middle.block194, %vec.epilog.middle.block210, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6bb2605d69bea1efE.exit.i.i.i.i", %bb.ac
end_hunk_1
begin_hunk_2_@_ZN4rhai8packages10blob_basic14blob_functions7reverse17h3772e9a615185d78E:bb.a
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !55, !noundef !55 ; 4 uses
  %i.g = lshr i64 %i.b, 1                         ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43107)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43108)
  %.not15.i.i = icmp eq i64 %i.g, 0
  br i1 %.not15.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h6fd01a3c9b8f2077E.exit", label %iter.check

iter.check:                                       ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.b ; 3 uses
  %min.iters.check = icmp samesign ult i64 %i.b, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check2 = icmp samesign ult i64 %i.b, 32
  br i1 %min.iters.check2, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.vec = and i64 %i.g, 4611686018427387888      ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.i = xor i64 %index, -1
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 %index ; 2 uses
  %i.k = getelementptr i8, ptr %i.h, i64 %i.i
  %wide.load = load <16 x i8>, ptr %i.j, align 1, !alias.scope !43109, !noalias !43108
  %i.l = getelementptr i8, ptr %i.k, i64 -15      ; 2 uses
  %wide.load3 = load <16 x i8>, ptr %i.l, align 1, !alias.scope !43110, !noalias !43107
  %reverse = shufflevector <16 x i8> %wide.load3, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <16 x i8> %reverse, ptr %i.j, align 1, !alias.scope !43109, !noalias !43108
  %reverse4 = shufflevector <16 x i8> %wide.load, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <16 x i8> %reverse4, ptr %i.l, align 1, !alias.scope !43110, !noalias !43107
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.m = icmp eq i64 %index.next, %n.vec
  br i1 %i.m, label %middle.block, label %vector.body, !llvm.loop !43104

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.g, %n.vec
  br i1 %cmp.n, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h6fd01a3c9b8f2077E.exit", label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %i.n = and i64 %i.b, 24
  %min.epilog.iters.check = icmp eq i64 %i.n, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !86

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec5 = and i64 %i.g, 4611686018427387900     ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index6 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next11, %vec.epilog.vector.body ] ; 3 uses
  %i.o = xor i64 %index6, -1
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 %index6 ; 2 uses
  %i.q = getelementptr i8, ptr %i.h, i64 %i.o
  %wide.load7 = load <4 x i8>, ptr %i.p, align 1, !alias.scope !43109, !noalias !43108
  %i.r = getelementptr i8, ptr %i.q, i64 -3       ; 2 uses
  %wide.load8 = load <4 x i8>, ptr %i.r, align 1, !alias.scope !43110, !noalias !43107
  %reverse9 = shufflevector <4 x i8> %wide.load8, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i8> %reverse9, ptr %i.p, align 1, !alias.scope !43109, !noalias !43108
  %reverse10 = shufflevector <4 x i8> %wide.load7, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i8> %reverse10, ptr %i.r, align 1, !alias.scope !43110, !noalias !43107
  %index.next11 = add nuw i64 %index6, 4          ; 2 uses
  %i.s = icmp eq i64 %index.next11, %n.vec5
  br i1 %i.s, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !43105

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n12 = icmp eq i64 %i.g, %n.vec5
  br i1 %cmp.n12, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h6fd01a3c9b8f2077E.exit", label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.0.014.i.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec5, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.sroa.0.014.i.i = phi i64 [ %i.y, %.lr.ph.i.i ], [ %.sroa.0.014.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %i.t = xor i64 %.sroa.0.014.i.i, -1
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 %.sroa.0.014.i.i ; 2 uses
  %i.v = getelementptr i8, ptr %i.h, i64 %i.t     ; 2 uses
  %i.w = load i8, ptr %i.u, align 1, !alias.scope !43109, !noalias !43108, !noundef !55
  %i.x = load i8, ptr %i.v, align 1, !alias.scope !43110, !noalias !43107
  store i8 %i.x, ptr %i.u, align 1, !alias.scope !43109, !noalias !43108
  store i8 %i.w, ptr %i.v, align 1, !alias.scope !43110, !noalias !43107
  %i.y = add nuw nsw i64 %.sroa.0.014.i.i, 1      ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.y, %i.g
  br i1 %exitcond.not.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h6fd01a3c9b8f2077E.exit", label %.lr.ph.i.i, !llvm.loop !43106

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h6fd01a3c9b8f2077E.exit": ; preds = %.lr.ph.i.i, %middle.block, %vec.epilog.middle.block, %bb.b, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_ZN4rhai8packages10blob_basic14blob_functions8contains17hafff859a8467496eE(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !55, !noundef !55 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !55 ; 4 uses
  %i.e = trunc i64 %1 to i8                       ; 2 uses
  %i.f = icmp ult i64 %i.d, 16
  br i1 %i.f, label %.preheader.i, label %bb.b

.preheader.i:                                     ; preds = %bb.a
  %.not.i = icmp eq i64 %i.d, 0
  br i1 %.not.i, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit, label %.lr.ph.i

bb.b:                                             ; preds = %bb.a
  %i.g = tail call { i64, i64 } @_ZN4core5slice6memchr14memchr_aligned17h7e0cc2bb9b2425e0E(i8 noundef %i.e, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.b, i64 noundef %i.d)
  %i.h = extractvalue { i64, i64 } %i.g, 0
  %i.i = icmp eq i64 %i.h, 1
  br label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  %.sroa.01.05.i = phi i64 [ %i.m, %.lr.ph.i ], [ 0, %.preheader.i ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 %.sroa.01.05.i
  %i.k = load i8, ptr %i.j, align 1, !alias.scope !43113, !noundef !55
  %i.l = icmp eq i8 %i.k, %i.e                    ; 2 uses
  %i.m = add nuw nsw i64 %.sroa.01.05.i, 1        ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.m, %i.d
  %or.cond = select i1 %i.l, i1 true, i1 %exitcond.not.i
  br i1 %or.cond, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit, label %.lr.ph.i

_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit: ; preds = %.lr.ph.i, %.preheader.i, %bb.b
  %.sroa.0.0.i = phi i1 [ %i.i, %bb.b ], [ false, %.preheader.i ], [ %i.l, %.lr.ph.i ]
  ret i1 %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define void @_ZN4rhai8packages10blob_basic14blob_functions8split_at17h38993f1eac418c7eE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1, i64 noundef %2) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [40 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.f = load i64, ptr %i.e, align 8, !noundef !55 ; 15 uses
  %i.g = icmp sgt i64 %i.f, -1
  tail call void @llvm.assume(i1 %i.g)
  %i.h = icmp eq i64 %i.f, 0
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.j, align 8
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.k = icmp slt i64 %2, 0
  br i1 %i.k, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not.i = icmp samesign ult i64 %2, %i.f
  br i1 %.not.i, label %_ZN4rhai4eval6target15calc_offset_len17h407217cb2a84fe50E.exit, label %_ZN4rhai4eval6target15calc_offset_len17h407217cb2a84fe50E.exit.thread

bb.e:                                             ; preds = %bb.c
  %i.l = sub i64 0, %2
  %i.m = tail call noundef range(i64 0, -1) i64 @llvm.usub.sat.i64(i64 range(i64 1, -9223372036854775808) %i.f, i64 range(i64 1, -9223372036854775807) %i.l)
  br label %_ZN4rhai4eval6target15calc_offset_len17h407217cb2a84fe50E.exit

_ZN4rhai4eval6target15calc_offset_len17h407217cb2a84fe50E.exit: ; preds = %bb.d, %bb.e
  %.sroa.01.0.i = phi i64 [ %i.m, %bb.e ], [ %2, %bb.d ] ; 6 uses
  %i.n = sub i64 %i.f, %.sroa.01.0.i              ; 13 uses
  %spec.select.i = tail call i64 @llvm.umin.i64(i64 %i.n, i64 9223372036854775807) ; 7 uses
  %.not = icmp samesign ult i64 %.sroa.01.0.i, %i.f
  br i1 %.not, label %bb.g, label %_ZN4rhai4eval6target15calc_offset_len17h407217cb2a84fe50E.exit.thread

bb.f:                                             ; preds = %bb.j, %.loopexit, %.loopexit39, %_ZN4rhai4eval6target15calc_offset_len17h407217cb2a84fe50E.exit.thread, %bb.b
  ret void

bb.g:                                             ; preds = %_ZN4rhai4eval6target15calc_offset_len17h407217cb2a84fe50E.exit
  %i.o = icmp eq i64 %.sroa.01.0.i, 0
  br i1 %i.o, label %bb.h, label %bb.m

_ZN4rhai4eval6target15calc_offset_len17h407217cb2a84fe50E.exit.thread: ; preds = %bb.d, %_ZN4rhai4eval6target15calc_offset_len17h407217cb2a84fe50E.exit
  store i64 0, ptr %0, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.q, align 8
  br label %bb.f

bb.h:                                             ; preds = %bb.g
  %i.r = icmp samesign ugt i64 %spec.select.i, %i.f
  br i1 %i.r, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 0, ptr %i.d, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 3 uses
  store i64 0, ptr %i.t, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43162)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43163)
  %i.u = sub nuw nsw i64 %i.f, %spec.select.i     ; 2 uses
  store i64 %i.u, ptr %i.e, align 8, !alias.scope !43163, !noalias !43162
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !43163, !noalias !43162, !nonnull !55, !noundef !55 ; 3 uses
  %i.x = ptrtoaddr ptr %i.w to i64                ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.u ; 7 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.f ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 %i.f, ptr %i.aa, align 8, !alias.scope !43162, !noalias !43163
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i64 0, ptr %i.ab, align 8, !alias.scope !43162, !noalias !43163
  store ptr %i.y, ptr %i.c, align 8, !alias.scope !43162, !noalias !43163
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.z, ptr %i.ac, align 8, !alias.scope !43162, !noalias !43163
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %1, ptr %i.ad, align 8, !alias.scope !43162, !noalias !43163
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43164)
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h25b6962618db29e9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef 0, i64 noundef %spec.select.i, i64 noundef 1, i64 noundef 1)
          to label %iter.check73 unwind label %.body, !noalias !43165

bb.j:                                             ; preds = %bb.h
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  store i64 0, ptr %1, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  store i64 0, ptr %i.e, align 8
  br label %bb.f

bb.k:                                             ; preds = %.body
  %.val1.i = load ptr, ptr %i.s, align 8, !alias.scope !43166, !nonnull !55, !noundef !55
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !43166
  br label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h6b92919e1aab96c5E.exit"

iter.check73:                                     ; preds = %bb.i
  %.pre.i = load i64, ptr %i.t, align 8, !alias.scope !43164, !noalias !43165 ; 7 uses
  %i.ae = load ptr, ptr %i.s, align 8, !alias.scope !43164, !noalias !43165, !nonnull !55, !noundef !55 ; 8 uses
  %min.iters.check58 = icmp ult i64 %i.n, 8
  br i1 %min.iters.check58, label %.lr.ph.i.i.i.preheader, label %vector.memcheck56

vector.memcheck56:                                ; preds = %iter.check73
  %i.af = ptrtoaddr ptr %i.ae to i64
  %i.ag = add i64 %.pre.i, %i.af
  %i.ah = add i64 %i.ag, %spec.select.i
  %i.ai = add i64 %i.f, %i.x
  %i.aj = sub i64 %i.ai, %i.ah
  %diff.check57 = icmp ugt i64 %i.aj, -32
  br i1 %diff.check57, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check59

vector.main.loop.iter.check59:                    ; preds = %vector.memcheck56
  %min.iters.check60 = icmp ult i64 %i.n, 32
  br i1 %min.iters.check60, label %vec.epilog.ph77, label %vector.ph61

vector.ph61:                                      ; preds = %vector.main.loop.iter.check59
  %i.ak = and i64 %spec.select.i, 24
  %n.vec62 = and i64 %spec.select.i, 9223372036854775776 ; 5 uses
  %i.al = add i64 %.pre.i, %n.vec62               ; 2 uses
  %i.am = getelementptr i8, ptr %i.y, i64 %n.vec62
  %i.an = getelementptr i8, ptr %i.ae, i64 %.pre.i
  br label %vector.body63

vector.body63:                                    ; preds = %vector.ph61, %vector.body63
  %index64 = phi i64 [ 0, %vector.ph61 ], [ %index.next68, %vector.body63 ] ; 3 uses
  %next.gep65 = getelementptr i8, ptr %i.y, i64 %index64 ; 2 uses
  %i.ao = getelementptr i8, ptr %next.gep65, i64 16
  %wide.load66 = load <16 x i8>, ptr %next.gep65, align 1, !noalias !43167
  %wide.load67 = load <16 x i8>, ptr %i.ao, align 1, !noalias !43167
  %i.ap = getelementptr i8, ptr %i.an, i64 %index64 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store <16 x i8> %wide.load66, ptr %i.ap, align 1, !noalias !43168
  store <16 x i8> %wide.load67, ptr %i.aq, align 1, !noalias !43168
  %index.next68 = add nuw i64 %index64, 32        ; 2 uses
  %i.ar = icmp eq i64 %index.next68, %n.vec62
  br i1 %i.ar, label %middle.block69, label %vector.body63, !llvm.loop !43134

middle.block69:                                   ; preds = %vector.body63
  %cmp.n70 = icmp eq i64 %i.n, %n.vec62
  br i1 %cmp.n70, label %.loopexit, label %vec.epilog.iter.check75

vec.epilog.iter.check75:                          ; preds = %middle.block69
  %min.epilog.iters.check76 = icmp eq i64 %i.ak, 0
  br i1 %min.epilog.iters.check76, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph77, !prof !160

vec.epilog.ph77:                                  ; preds = %vector.main.loop.iter.check59, %vec.epilog.iter.check75
  %vec.epilog.resume.val71 = phi i64 [ %n.vec62, %vec.epilog.iter.check75 ], [ 0, %vector.main.loop.iter.check59 ]
  %n.vec78 = and i64 %spec.select.i, 9223372036854775800 ; 4 uses
  %i.as = add i64 %.pre.i, %n.vec78               ; 2 uses
  %i.at = getelementptr i8, ptr %i.y, i64 %n.vec78
  %i.au = getelementptr i8, ptr %i.ae, i64 %.pre.i
  br label %vec.epilog.vector.body79

vec.epilog.vector.body79:                         ; preds = %vec.epilog.vector.body79, %vec.epilog.ph77
  %index80 = phi i64 [ %vec.epilog.resume.val71, %vec.epilog.ph77 ], [ %index.next83, %vec.epilog.vector.body79 ] ; 3 uses
  %next.gep81 = getelementptr i8, ptr %i.y, i64 %index80
  %wide.load82 = load <8 x i8>, ptr %next.gep81, align 1, !noalias !43167
  %i.av = getelementptr i8, ptr %i.au, i64 %index80
  store <8 x i8> %wide.load82, ptr %i.av, align 1, !noalias !43168
  %index.next83 = add nuw i64 %index80, 8         ; 2 uses
  %i.aw = icmp eq i64 %index.next83, %n.vec78
  br i1 %i.aw, label %vec.epilog.middle.block84, label %vec.epilog.vector.body79, !llvm.loop !43135

vec.epilog.middle.block84:                        ; preds = %vec.epilog.vector.body79
  %cmp.n85 = icmp eq i64 %i.n, %n.vec78
  br i1 %cmp.n85, label %.loopexit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %iter.check73, %vector.memcheck56, %vec.epilog.iter.check75, %vec.epilog.middle.block84
  %.ph = phi i64 [ %.pre.i, %iter.check73 ], [ %.pre.i, %vector.memcheck56 ], [ %i.al, %vec.epilog.iter.check75 ], [ %i.as, %vec.epilog.middle.block84 ] ; 2 uses
  %.ph88 = phi ptr [ %i.y, %iter.check73 ], [ %i.y, %vector.memcheck56 ], [ %i.am, %vec.epilog.iter.check75 ], [ %i.at, %vec.epilog.middle.block84 ] ; 3 uses
  %i.ax = add i64 %i.f, %i.x                      ; 2 uses
  %.ph8895 = ptrtoaddr ptr %.ph88 to i64          ; 2 uses
  %i.ay = sub i64 %i.ax, %.ph8895
  %xtraiter96 = and i64 %i.ay, 3                  ; 2 uses
  %lcmp.mod97.not = icmp eq i64 %xtraiter96, 0
  br i1 %lcmp.mod97.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %i.az = phi i64 [ %i.be, %.lr.ph.i.i.i.prol ], [ %.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %i.ba = phi ptr [ %i.bb, %.lr.ph.i.i.i.prol ], [ %.ph88, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %prol.iter98 = phi i64 [ %prol.iter98.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 1 ; 2 uses
  %i.bc = load i8, ptr %i.ba, align 1, !noalias !43167, !noundef !55
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.az
  store i8 %i.bc, ptr %i.bd, align 1, !noalias !43168
  %i.be = add i64 %i.az, 1                        ; 3 uses
  %prol.iter98.next = add i64 %prol.iter98, 1     ; 2 uses
  %prol.iter98.cmp.not = icmp eq i64 %prol.iter98.next, %xtraiter96
  br i1 %prol.iter98.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !43136

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.lcssa89.unr = phi i64 [ poison, %.lr.ph.i.i.i.preheader ], [ %i.be, %.lr.ph.i.i.i.prol ]
  %.unr99 = phi i64 [ %.ph, %.lr.ph.i.i.i.preheader ], [ %i.be, %.lr.ph.i.i.i.prol ]
  %.unr100 = phi ptr [ %.ph88, %.lr.ph.i.i.i.preheader ], [ %i.bb, %.lr.ph.i.i.i.prol ]
  %i.bf = sub i64 %.ph8895, %i.ax
  %i.bg = icmp ugt i64 %i.bf, -4
  br i1 %i.bg, label %.loopexit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %i.bh = phi i64 [ %i.by, %.lr.ph.i.i.i ], [ %.unr99, %.lr.ph.i.i.i.prol.loopexit ] ; 5 uses
  %i.bi = phi ptr [ %i.bu, %.lr.ph.i.i.i ], [ %.unr100, %.lr.ph.i.i.i.prol.loopexit ] ; 5 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 1
  %i.bk = load i8, ptr %i.bi, align 1, !noalias !43167, !noundef !55
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.bh
  store i8 %i.bk, ptr %i.bl, align 1, !noalias !43168
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 2
  %i.bn = load i8, ptr %i.bj, align 1, !noalias !43167, !noundef !55
  %i.bo = getelementptr i8, ptr %i.ae, i64 %i.bh
  %i.bp = getelementptr i8, ptr %i.bo, i64 1
  store i8 %i.bn, ptr %i.bp, align 1, !noalias !43168
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bi, i64 3
  %i.br = load i8, ptr %i.bm, align 1, !noalias !43167, !noundef !55
  %i.bs = getelementptr i8, ptr %i.ae, i64 %i.bh
  %i.bt = getelementptr i8, ptr %i.bs, i64 2
  store i8 %i.br, ptr %i.bt, align 1, !noalias !43168
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bi, i64 4 ; 2 uses
  %i.bv = load i8, ptr %i.bq, align 1, !noalias !43167, !noundef !55
  %i.bw = getelementptr i8, ptr %i.ae, i64 %i.bh
  %i.bx = getelementptr i8, ptr %i.bw, i64 3
  store i8 %i.bv, ptr %i.bx, align 1, !noalias !43168
  %i.by = add i64 %i.bh, 4                        ; 2 uses
  %.not.i.i.i.3 = icmp eq ptr %i.bu, %i.z
  br i1 %.not.i.i.i.3, label %.loopexit, label %.lr.ph.i.i.i, !llvm.loop !43137

.body:                                            ; preds = %bb.i
  %i.bz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call fastcc void @"_ZN4core3ptr55drop_in_place$LT$alloc..vec..drain..Drain$LT$u8$GT$$GT$17h319bc13a4d27c875E"(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.c) #72, !noalias !43164
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43166)
  %.val.i = load i64, ptr %i.d, align 8, !range !65, !alias.scope !43166, !noundef !55 ; 2 uses
  %i.ca = icmp eq i64 %.val.i, 0
  br i1 %i.ca, label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h6b92919e1aab96c5E.exit", label %bb.k

.loopexit:                                        ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %vec.epilog.middle.block84, %middle.block69
  %.lcssa = phi i64 [ %i.as, %vec.epilog.middle.block84 ], [ %i.al, %middle.block69 ], [ %.lcssa89.unr, %.lr.ph.i.i.i.prol.loopexit ], [ %i.by, %.lr.ph.i.i.i ]
  store i64 %.lcssa, ptr %i.t, align 8, !alias.scope !43164, !noalias !43169
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.f

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h6b92919e1aab96c5E.exit": ; preds = %bb.l, %.body30, %bb.k, %.body
  %.pn = phi { ptr, i32 } [ %i.bz, %bb.k ], [ %i.bz, %.body ], [ %i.cb, %.body30 ], [ %i.cb, %bb.l ]
  resume { ptr, i32 } %.pn

.body30:                                          ; preds = %bb.m
  %i.cb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call fastcc void @"_ZN4core3ptr55drop_in_place$LT$alloc..vec..drain..Drain$LT$u8$GT$$GT$17h319bc13a4d27c875E"(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.a) #72, !noalias !43170
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43171)
  %.val.i9 = load i64, ptr %i.b, align 8, !range !65, !alias.scope !43171, !noundef !55 ; 2 uses
  %i.cc = icmp eq i64 %.val.i9, 0
  br i1 %i.cc, label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h6b92919e1aab96c5E.exit", label %bb.l

bb.l:                                             ; preds = %.body30
  %.val1.i10 = load ptr, ptr %i.cd, align 8, !alias.scope !43171, !nonnull !55, !noundef !55
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i10, i64 noundef %.val.i9, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !43171
  br label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h6b92919e1aab96c5E.exit"

bb.m:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 0, ptr %i.b, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.cd, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  store i64 0, ptr %i.ce, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43172)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43173)
  store i64 %.sroa.01.0.i, ptr %i.e, align 8, !alias.scope !43173, !noalias !43172
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8, !alias.scope !43173, !noalias !43172, !nonnull !55, !noundef !55 ; 3 uses
  %i.ch = ptrtoaddr ptr %i.cg to i64              ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.sroa.01.0.i ; 7 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.f ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %i.f, ptr %i.ck, align 8, !alias.scope !43172, !noalias !43173
  %i.cl = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 0, ptr %i.cl, align 8, !alias.scope !43172, !noalias !43173
  store ptr %i.ci, ptr %i.a, align 8, !alias.scope !43172, !noalias !43173
  %i.cm = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.cj, ptr %i.cm, align 8, !alias.scope !43172, !noalias !43173
  %i.cn = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %1, ptr %i.cn, align 8, !alias.scope !43172, !noalias !43173
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43170)
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h25b6962618db29e9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef 0, i64 noundef %i.n, i64 noundef 1, i64 noundef 1)
          to label %iter.check unwind label %.body30, !noalias !43174

iter.check:                                       ; preds = %bb.m
  %.pre.i29 = load i64, ptr %i.ce, align 8, !alias.scope !43170, !noalias !43174 ; 7 uses
  %i.co = load ptr, ptr %i.cd, align 8, !alias.scope !43170, !noalias !43174, !nonnull !55, !noundef !55 ; 8 uses
  %min.iters.check = icmp ult i64 %i.n, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.i22.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.cp = ptrtoaddr ptr %i.co to i64
  %i.cq = add i64 %.pre.i29, %i.cp
  %i.cr = add i64 %.sroa.01.0.i, %i.ch
  %i.cs = sub i64 %i.cr, %i.cq
  %diff.check = icmp ugt i64 %i.cs, -32
  br i1 %diff.check, label %.lr.ph.i.i.i22.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check45 = icmp ult i64 %i.n, 32
  br i1 %min.iters.check45, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ct = and i64 %i.n, 24
  %n.vec = and i64 %i.n, -32                      ; 5 uses
  %i.cu = add i64 %.pre.i29, %n.vec               ; 2 uses
  %i.cv = getelementptr i8, ptr %i.ci, i64 %n.vec
  %i.cw = getelementptr i8, ptr %i.co, i64 %.pre.i29
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.ci, i64 %index ; 2 uses
  %i.cx = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !noalias !43175
  %wide.load46 = load <16 x i8>, ptr %i.cx, align 1, !noalias !43175
  %i.cy = getelementptr i8, ptr %i.cw, i64 %index ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  store <16 x i8> %wide.load, ptr %i.cy, align 1, !noalias !43176
  store <16 x i8> %wide.load46, ptr %i.cz, align 1, !noalias !43176
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.da = icmp eq i64 %index.next, %n.vec
  br i1 %i.da, label %middle.block, label %vector.body, !llvm.loop !43158

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.n, %n.vec
  br i1 %cmp.n, label %.loopexit39, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ct, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i22.preheader, label %vec.epilog.ph, !prof !160

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec48 = and i64 %i.n, -8                     ; 4 uses
  %i.db = add i64 %.pre.i29, %n.vec48             ; 2 uses
  %i.dc = getelementptr i8, ptr %i.ci, i64 %n.vec48
  %i.dd = getelementptr i8, ptr %i.co, i64 %.pre.i29
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index49 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next52, %vec.epilog.vector.body ] ; 3 uses
  %next.gep50 = getelementptr i8, ptr %i.ci, i64 %index49
  %wide.load51 = load <8 x i8>, ptr %next.gep50, align 1, !noalias !43175
  %i.de = getelementptr i8, ptr %i.dd, i64 %index49
  store <8 x i8> %wide.load51, ptr %i.de, align 1, !noalias !43176
  %index.next52 = add nuw i64 %index49, 8         ; 2 uses
  %i.df = icmp eq i64 %index.next52, %n.vec48
  br i1 %i.df, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !43159

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n53 = icmp eq i64 %i.n, %n.vec48
  br i1 %cmp.n53, label %.loopexit39, label %.lr.ph.i.i.i22.preheader

.lr.ph.i.i.i22.preheader:                         ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph90 = phi i64 [ %.pre.i29, %iter.check ], [ %.pre.i29, %vector.memcheck ], [ %i.cu, %vec.epilog.iter.check ], [ %i.db, %vec.epilog.middle.block ] ; 2 uses
  %.ph91 = phi ptr [ %i.ci, %iter.check ], [ %i.ci, %vector.memcheck ], [ %i.cv, %vec.epilog.iter.check ], [ %i.dc, %vec.epilog.middle.block ] ; 3 uses
  %i.dg = add i64 %i.f, %i.ch                     ; 2 uses
  %.ph9193 = ptrtoaddr ptr %.ph91 to i64          ; 2 uses
  %i.dh = sub i64 %i.dg, %.ph9193
  %xtraiter = and i64 %i.dh, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i22.prol.loopexit, label %.lr.ph.i.i.i22.prol

.lr.ph.i.i.i22.prol:                              ; preds = %.lr.ph.i.i.i22.preheader, %.lr.ph.i.i.i22.prol
  %i.di = phi i64 [ %i.dn, %.lr.ph.i.i.i22.prol ], [ %.ph90, %.lr.ph.i.i.i22.preheader ] ; 2 uses
  %i.dj = phi ptr [ %i.dk, %.lr.ph.i.i.i22.prol ], [ %.ph91, %.lr.ph.i.i.i22.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i22.prol ], [ 0, %.lr.ph.i.i.i22.preheader ]
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 1 ; 2 uses
  %i.dl = load i8, ptr %i.dj, align 1, !noalias !43175, !noundef !55
  %i.dm = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.di
  store i8 %i.dl, ptr %i.dm, align 1, !noalias !43176
  %i.dn = add i64 %i.di, 1                        ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i22.prol.loopexit, label %.lr.ph.i.i.i22.prol, !llvm.loop !43160

.lr.ph.i.i.i22.prol.loopexit:                     ; preds = %.lr.ph.i.i.i22.prol, %.lr.ph.i.i.i22.preheader
  %.lcssa92.unr = phi i64 [ poison, %.lr.ph.i.i.i22.preheader ], [ %i.dn, %.lr.ph.i.i.i22.prol ]
  %.unr = phi i64 [ %.ph90, %.lr.ph.i.i.i22.preheader ], [ %i.dn, %.lr.ph.i.i.i22.prol ]
  %.unr94 = phi ptr [ %.ph91, %.lr.ph.i.i.i22.preheader ], [ %i.dk, %.lr.ph.i.i.i22.prol ]
  %i.do = sub i64 %.ph9193, %i.dg
  %i.dp = icmp ugt i64 %i.do, -4
  br i1 %i.dp, label %.loopexit39, label %.lr.ph.i.i.i22

.lr.ph.i.i.i22:                                   ; preds = %.lr.ph.i.i.i22.prol.loopexit, %.lr.ph.i.i.i22
  %i.dq = phi i64 [ %i.eh, %.lr.ph.i.i.i22 ], [ %.unr, %.lr.ph.i.i.i22.prol.loopexit ] ; 5 uses
  %i.dr = phi ptr [ %i.ed, %.lr.ph.i.i.i22 ], [ %.unr94, %.lr.ph.i.i.i22.prol.loopexit ] ; 5 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 1
  %i.dt = load i8, ptr %i.dr, align 1, !noalias !43175, !noundef !55
  %i.du = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.dq
  store i8 %i.dt, ptr %i.du, align 1, !noalias !43176
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dr, i64 2
  %i.dw = load i8, ptr %i.ds, align 1, !noalias !43175, !noundef !55
  %i.dx = getelementptr i8, ptr %i.co, i64 %i.dq
  %i.dy = getelementptr i8, ptr %i.dx, i64 1
  store i8 %i.dw, ptr %i.dy, align 1, !noalias !43176
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dr, i64 3
  %i.ea = load i8, ptr %i.dv, align 1, !noalias !43175, !noundef !55
  %i.eb = getelementptr i8, ptr %i.co, i64 %i.dq
  %i.ec = getelementptr i8, ptr %i.eb, i64 2
  store i8 %i.ea, ptr %i.ec, align 1, !noalias !43176
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dr, i64 4 ; 2 uses
  %i.ee = load i8, ptr %i.dz, align 1, !noalias !43175, !noundef !55
  %i.ef = getelementptr i8, ptr %i.co, i64 %i.dq
  %i.eg = getelementptr i8, ptr %i.ef, i64 3
  store i8 %i.ee, ptr %i.eg, align 1, !noalias !43176
  %i.eh = add i64 %i.dq, 4                        ; 2 uses
  %.not.i.i.i23.3 = icmp eq ptr %i.ed, %i.cj
  br i1 %.not.i.i.i23.3, label %.loopexit39, label %.lr.ph.i.i.i22, !llvm.loop !43161

.loopexit39:                                      ; preds = %.lr.ph.i.i.i22.prol.loopexit, %.lr.ph.i.i.i22, %vec.epilog.middle.block, %middle.block
  %.lcssa44 = phi i64 [ %i.db, %vec.epilog.middle.block ], [ %i.cu, %middle.block ], [ %.lcssa92.unr, %.lr.ph.i.i.i22.prol.loopexit ], [ %i.eh, %.lr.ph.i.i.i22 ]
  store i64 %.lcssa44, ptr %i.ce, align 8, !alias.scope !43170, !noalias !43177
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.f
}

; Function Attrs: nonlazybind uwtable
define void @_ZN4rhai8packages10blob_basic14blob_functions8to_array17h551102819b8b8a31E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !55, !noundef !55 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !55 ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43206)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43207)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43208)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43209)
  %i.e = shl i64 %i.d, 4                          ; 4 uses
  %i.f = icmp ugt i64 %i.d, 1152921504606846975
  %i.g = icmp ugt i64 %i.e, 9223372036854775800
  %or.cond.i.i.i.i.i.i.i = or i1 %i.f, %i.g
  br i1 %or.cond.i.i.i.i.i.i.i, label %bb.c, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i, !prof !71

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i: ; preds = %bb.a
  %i.h = icmp eq i64 %i.e, 0
  br i1 %i.h, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h8fdd6f58a4dd472aE.exit.i.i.i.i.i.i", label %bb.b

bb.b:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !43210
  %i.i = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.e, i64 noundef range(i64 1, 9) 8) #71, !noalias !43210 ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.c, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h8fdd6f58a4dd472aE.exit.i.i.i.i.i.i"

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.4.0.ph.i.i.i.i.i = phi i64 [ 8, %bb.b ], [ 0, %bb.a ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i, i64 %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @414) #70, !noalias !43211
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h8fdd6f58a4dd472aE.exit.i.i.i.i.i.i": ; preds = %bb.b, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i
  %.sroa.10.0.i.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i ], [ %i.i, %bb.b ] ; 4 uses
  %.sroa.4.0.i.i.i.i.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i ], [ %i.d, %bb.b ] ; 2 uses
  %i.k = icmp samesign ule i64 %i.d, %.sroa.4.0.i.i.i.i.i
  tail call void @llvm.assume(i1 %i.k)
  %i.l = icmp samesign eq i64 %i.d, 0
  br i1 %i.l, label %_ZN4core4iter6traits8iterator8Iterator7collect17h875d5280e72deb76E.exit, label %.preheader.i.i.i.i.i.i.preheader

.preheader.i.i.i.i.i.i.preheader:                 ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h8fdd6f58a4dd472aE.exit.i.i.i.i.i.i"
  %xtraiter = and i64 %i.d, 1
  %i.m = icmp eq i64 %i.d, 1
  br i1 %i.m, label %.preheader.i.i.i.i.i.i.epil.preheader, label %.preheader.i.i.i.i.i.i.preheader.new

.preheader.i.i.i.i.i.i.preheader.new:             ; preds = %.preheader.i.i.i.i.i.i.preheader
  %unroll_iter = and i64 %i.d, 1152921504606846974
  br label %.preheader.i.i.i.i.i.i

.preheader.i.i.i.i.i.i:                           ; preds = %.preheader.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.preheader.new
  %i.n = phi i64 [ 0, %.preheader.i.i.i.i.i.i.preheader.new ], [ %i.v, %.preheader.i.i.i.i.i.i ] ; 4 uses
  %niter = phi i64 [ 0, %.preheader.i.i.i.i.i.i.preheader.new ], [ %niter.next.1, %.preheader.i.i.i.i.i.i ]
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.n
  %.val21.i.i.i.i.i.i.i.i.i = load i8, ptr %i.o, align 1, !noalias !43212, !noundef !55
  %i.p = zext i8 %.val21.i.i.i.i.i.i.i.i.i to i64
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %.sroa.10.0.i.i.i.i.i, i64 %i.n ; 4 uses
  store i8 4, ptr %i.q, align 8, !noalias !43213
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 1, !noalias !43213
  %.sroa.65.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  store i32 0, ptr %.sroa.65.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 4, !noalias !43213
  %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %i.p, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !43213
  %i.r = or disjoint i64 %i.n, 1                  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.r
  %.val21.i.i.i.i.i.i.i.i.i.1 = load i8, ptr %i.s, align 1, !noalias !43212, !noundef !55
  %i.t = zext i8 %.val21.i.i.i.i.i.i.i.i.i.1 to i64
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %.sroa.10.0.i.i.i.i.i, i64 %i.r ; 4 uses
  store i8 4, ptr %i.u, align 8, !noalias !43213
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %i.u, i64 1
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.1, align 1, !noalias !43213
  %.sroa.65.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  store i32 0, ptr %.sroa.65.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.1, align 4, !noalias !43213
  %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store i64 %i.t, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.1, align 8, !noalias !43213
  %i.v = add nuw nsw i64 %i.n, 2                  ; 2 uses
end_hunk_2
